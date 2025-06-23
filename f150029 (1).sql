prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.6'
,p_default_workspace_id=>19904788591421959993
,p_default_application_id=>150029
,p_default_id_offset=>0
,p_default_owner=>'WKSP_DEROSPACE'
);
end;
/
 
prompt APPLICATION 150029 - API TEST
--
-- Application Export:
--   Application:     150029
--   Name:            API TEST
--   Date and Time:   10:06 Monday June 23, 2025
--   Exported By:     DEROADEGBITE@GMAIL.COM
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                      6
--       Items:                    4
--       Processes:                4
--       Regions:                  8
--       Buttons:                  3
--       Dynamic Actions:          2
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:              4
--       Security:
--         Authentication:         1
--         Authorization:          1
--       User Interface:
--         Themes:                 1
--         Templates:
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         24.2.6
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_DEROSPACE')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'API TEST')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'API-TEST')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'ADF0644660A8F89046DCDC022CF90C2E4792E22C67C475B5226D658D6B9294E7'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'24.2'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix => nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(57431472018223081963)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'API TEST'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_exact_substitutions_only=>'Y'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_auto_time_zone=>'N'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'API TEST'
,p_file_prefix => nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>6
,p_version_scn=>15634328746270
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
);
end;
/
prompt --application/user_interfaces
begin
wwv_flow_imp_shared.create_user_interface(
 p_id=>wwv_flow_imp.id(150029)
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(57431472855372081964)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2467739217141810545
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(57431474031066081968)
,p_nav_bar_list_template_id=>2847543055748234966
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --workspace/remote_servers/jsonplaceholder_typicode_com
begin
wwv_imp_workspace.create_remote_server(
 p_id=>wwv_flow_imp.id(57432256503848108763)
,p_name=>'jsonplaceholder-typicode-com'
,p_static_id=>'jsonplaceholder_typicode_com'
,p_base_url=>nvl(wwv_flow_application_install.get_remote_server_base_url('jsonplaceholder_typicode_com'),'https://jsonplaceholder.typicode.com/')
,p_https_host=>nvl(wwv_flow_application_install.get_remote_server_https_host('jsonplaceholder_typicode_com'),'')
,p_server_type=>'WEB_SERVICE'
,p_ords_timezone=>nvl(wwv_flow_application_install.get_remote_server_ords_tz('jsonplaceholder_typicode_com'),'')
,p_remote_sql_default_schema=>nvl(wwv_flow_application_install.get_remote_server_default_db('jsonplaceholder_typicode_com'),'')
,p_mysql_sql_modes=>nvl(wwv_flow_application_install.get_remote_server_sql_mode('jsonplaceholder_typicode_com'),'')
,p_prompt_on_install=>false
,p_ai_is_builder_service=>false
,p_ai_model_name=>nvl(wwv_flow_application_install.get_remote_server_ai_model('jsonplaceholder_typicode_com'),'')
,p_ai_http_headers=>nvl(wwv_flow_application_install.get_remote_server_ai_headers('jsonplaceholder_typicode_com'),'')
,p_ai_attributes=>nvl(wwv_flow_application_install.get_remote_server_ai_attrs('jsonplaceholder_typicode_com'),'')
);
end;
/
prompt --application/shared_components/data_profiles/json_holder
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'json holder'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432257095556108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432257313053108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432257617243108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'EMAIL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'email'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432257998711108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'PHONE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'phone'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432258225199108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_GEO_LAT'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'address.geo.lat'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432258586283108764)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_GEO_LNG'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'address.geo.lng'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432258810910108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_CITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.city'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432259135712108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_SUITE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.suite'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432259497988108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_STREET'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.street'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432259737078108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'ADDRESS_ZIPCODE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.zipcode'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432260042880108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'COMPANY_BS'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.bs'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432260313408108765)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'COMPANY_NAME'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432260618024108766)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'COMPANY_CATCHPHRASE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.catchPhrase'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432260956820108766)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'WEBSITE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'website'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57432261275666108766)
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_name=>'USERNAME'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'username'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/data_profiles/json
begin
wwv_flow_imp_shared.create_data_profile(
 p_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'json'
,p_format=>'JSON'
,p_has_header_row=>false
,p_use_raw_json_selectors=>false
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474667638634102368)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ID'
,p_sequence=>1
,p_is_primary_key=>true
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'id'
,p_remote_data_type=>'number'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474667960211102368)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'NAME'
,p_sequence=>2
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474668234392102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'EMAIL'
,p_sequence=>3
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'email'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474668515078102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'PHONE'
,p_sequence=>4
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'phone'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474668867722102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_GEO_LAT'
,p_sequence=>5
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'address.geo.lat'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474669146909102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_GEO_LNG'
,p_sequence=>6
,p_column_type=>'DATA'
,p_data_type=>'NUMBER'
,p_has_time_zone=>false
,p_selector=>'address.geo.lng'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474669414191102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_CITY'
,p_sequence=>7
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.city'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474669790558102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_SUITE'
,p_sequence=>8
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.suite'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474670084982102369)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_STREET'
,p_sequence=>9
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.street'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474670381146102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'ADDRESS_ZIPCODE'
,p_sequence=>10
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'address.zipcode'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474670697163102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'COMPANY_BS'
,p_sequence=>11
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.bs'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474670922832102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'COMPANY_NAME'
,p_sequence=>12
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.name'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474671232593102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'COMPANY_CATCHPHRASE'
,p_sequence=>13
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'company.catchPhrase'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474671585687102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'WEBSITE'
,p_sequence=>14
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'website'
,p_remote_data_type=>'string'
);
wwv_flow_imp_shared.create_data_profile_col(
 p_id=>wwv_flow_imp.id(57474671887829102370)
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_name=>'USERNAME'
,p_sequence=>15
,p_column_type=>'DATA'
,p_data_type=>'VARCHAR2'
,p_max_length=>4000
,p_has_time_zone=>false
,p_selector=>'username'
,p_remote_data_type=>'string'
);
end;
/
prompt --application/shared_components/web_sources/json_holder
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(57432261524595108766)
,p_name=>'json holder'
,p_static_id=>'json_holder'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(57432256803469108763)
,p_remote_server_id=>wwv_flow_imp.id(57432256503848108763)
,p_url_path_prefix=>'/users'
,p_sync_table_name=>'API_DERO_RESULTS'
,p_sync_type=>'APPEND'
,p_sync_max_http_requests=>1000
,p_version_scn=>15633756365476
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(57432261707499108767)
,p_web_src_module_id=>wwv_flow_imp.id(57432261524595108766)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/web_sources/json
begin
wwv_flow_imp_shared.create_web_source_module(
 p_id=>wwv_flow_imp.id(57474672107022102371)
,p_name=>'json'
,p_static_id=>'json'
,p_web_source_type=>'NATIVE_HTTP'
,p_data_profile_id=>wwv_flow_imp.id(57474667485886102368)
,p_remote_server_id=>wwv_flow_imp.id(57432256503848108763)
,p_url_path_prefix=>'users'
,p_sync_table_name=>'DERO_JSON'
,p_sync_type=>'APPEND'
,p_sync_max_http_requests=>1000
,p_version_scn=>15633757956429
);
wwv_flow_imp_shared.create_web_source_operation(
 p_id=>wwv_flow_imp.id(57474672332763102372)
,p_web_src_module_id=>wwv_flow_imp.id(57474672107022102371)
,p_operation=>'GET'
,p_database_operation=>'FETCH_COLLECTION'
,p_url_pattern=>'.'
,p_force_error_for_http_404=>false
,p_allow_fetch_all_rows=>false
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(57431472855372081964)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>15634328738243
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57431484830797081981)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(58005267108294494203)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'JSON HOLDER'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(58006229583156569935)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'GET RATE'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'4'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(58007235849809639717)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'GET ALL RATES'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'6'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(57431474031066081968)
,p_name=>'Navigation Bar'
,p_list_status=>'PUBLIC'
,p_version_scn=>15633724935658
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57431486348019081984)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57431486896175081984)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(57431486348019081984)
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(57431487209990081984)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(57431486348019081984)
,p_list_item_current_type=>'TARGET_PAGE'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000000017352474200AECE1CE90000024F494441545847ED96CB4F13411CC7BFB30BDBD06DBB8522B5B4A5A201130C181F0D62221794A011BC193D7AF5E4C5C48B270F';
wwv_flow_imp.g_varchar2_table(2) := '9AF80F78F3E8C183072C01D244A321883C62201A45E5D1074BB0ADEDF6A54BA6AB8C7A68A2C96EC38698EC5E269399CCF7B3DFDFFCBEBBA4E75954C31E3EC402B01CB01CF8AF1D1072399620AA24D59C2435E78090CF632074002004D1D5156CBB5C3541';
wwv_flow_imp.g_varchar2_table(3) := 'D404502995D0BFAF055EA793896EFE847999FA02AEA1C1308471004D0391657478BD5562CB5B5B80CF673E002D14F0A0B70FC79A3C5562F3E914AECFBD066FB71B8230EC4063BE80C8858BF84629EECCBE6262B7C3A760E3389C1F8F407138CC05E8176C';
wwv_flow_imp.g_varchar2_table(4) := 'B8D7DB87F56201A36B2B4CEC52FB2104ED226ECE4C634AFD6E2EC06577236E741F652263893838004381209BDF5F7C8327B9ACB90023A213B78E9FF8ABC8DD85798C16F3E6015045419720E0E1B9212692F96D77936063F36B93E378B7AD82379009BA2F';
wwv_flow_imp.g_varchar2_table(5) := 'E14EEF872537528A824783BF0016326910807584A669B83A398166C985B95C169CCE6ED00DD0522EE34CFB41AC66D218098630D8EAAF029848261089C710F278F0FCF327A445515729740374508A1E7F00958A86A9F71FF07878184BD9AFCC812EC98D2B';
wwv_flow_imp.g_varchar2_table(6) := '634F71BAF330388E603191C0C73A7E77013A2945B73FC00E9D595FC3803F80B0773F03989665BCD8DC40B82DC4D69792092CF326001CF1F9311B8F21060D75C522CEFA5AB1F34B1D953740451121427032D086B77272F7015CA934349E87E21041EAEBD9';
wwv_flow_imp.g_varchar2_table(7) := '9B56CA6536FEF90869AA0A57B104422994E6EAA8FE573D74DF015D05AD61930560396039B0E70EFC004D93103061020E2F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57431475200592081970)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B8000000017352474200AECE1CE90000131549444154785EED9D7B5454479EC7BF759BE62920223EE20BC54754A0313C7CC4196968881A5F498C93E78C39D9CD649FB3E7';
wwv_flow_imp.g_varchar2_table(2) := 'ECCE66377BE66CB2BBE7647276332773CE9CC9CE6C762789662631C6E82651030D8D6EE213451A50F1111E11150141A01BE8EE7B6BB72EE22AA1E9DBF7DEA6BB49D539FE63D7AFEA77BFF5A1AAEEADAA5F11F0C415D0A000D160CB4DB902E00071083429';
wwv_flow_imp.g_varchar2_table(3) := 'C001D2241F37E60071063429C001D2241F37E60071063429C001D2241F37E60071063429C001D2241F37E60071063429C001D2241F37E60071063429C001D2241F370E498016EDDB176F4848881322A5383A4026180D34CE43699C0012FD5D683209B43F';
wwv_flow_imp.g_varchar2_table(4) := '8210875B240E12457B2597E010BBBB1DF59B37F784DAF30717204A494645C92202C37250B21C84E601C804600C35A142C41F37003B088E83E2048578BC26BFB81E84D060F937A6002D3BBC3F45F444AF84202D07058325174062B01E7E9CD47B0BC04980';
wwv_flow_imp.g_varchar2_table(5) := '1E07118E8BFDEEAFEAD6AEBD3956CF367600B1DEC666DD2408E46F29C5AAB17AC0EF563DF42B02F2F3EAFCC2CFC7AA570A3840D9959546576FE77602F237A058F8DD6AD0A03D6D3D807F35C64F7CEF544E0E1BF60296020A90A9AC6C0615E83E00D9017B';
wwv_flow_imp.g_varchar2_table(6) := '025EF0680A541A0CAEF555DF5FDF1628990206D032AB7589684009801981729E97AB4881CB840A9BAB0B0AEA14E5F63353400032D94A575390CFF804D9CFD6085CF65B944A9B6B0A8A0FE95D85EE00C93D4F044E8222566F6779791A1420701249C8D3BB';
wwv_flow_imp.g_varchar2_table(7) := '27D215A0EC4F3F8D75C5C79C24144B343C2A370D9C0275C6DEBEBC531B373AF5AA425780326DD67700FC482FE778390151E05DBBD9B25DAF92750328C356B69D80FE4E2FC77839815380823C57632E647FEC9A932E00AD3C7224C631E06C0190A4D9235E';
wwv_flow_imp.g_varchar2_table(8) := '40E01520B869ECE99BA5C750A60B40265BD98B14F4ADC03F39AF412F0508C89F549B0BFF5D6B79DA01A2946456949D03B048AB33DC7E4C153867CF2F5CAA75C94333409936EB5A0007C6F4D179657A29B0CE6EB61CD452981E0031071ED2E204B70D9A02';
wwv_flow_imp.g_varchar2_table(9) := '5FD8CD16D601A84E9A004AB5D9A213A8E80081A0DA036E183C0528A4B8E8D8094757ADEA53EB842680B26CA5F912884D6DE5DC2EF80A08A0E633E6A20AB59E6802C8642BFD3B0AF29ADACAB95DF01520A07F5F6D2EFAB95A4F34019469B3EE05B0596DE5';
wwv_flow_imp.g_varchar2_table(10) := 'DC2E2414D867375BB6A8F5443D4083AFEF6C9F49B2DACAB95D4828D06A375BA6A9F54435404B6CB6691110AFA9AD98DB858E022E1193CF5B2C1D6A3C520D90A9BC7C292552AD9A4AB94D682940A890AE769B876A80B22AACB912C589D092827BA3460181';
wwv_flow_imp.g_varchar2_table(11) := '20EF4CBEE5A41A5BD500659497AC214450FDFAA7C6596E1318052895F2D5EE56540D105FC2084C6306A5542A58EC0505656AEA560D90A9BCF4514AC8C76A2AE53621A780EA3531D50065D8AC4F136067C849C11DF25B0142E963D505457BFC3604D4071A';
wwv_flow_imp.g_varchar2_table(12) := 'FF2EEC4074770CBED91A93C7F7A72E0A3C5363B6BC3FA600996CD66728B0434DA5E160E3BA761D624FB7ECAA213E0191D3557F6B0BF9C7E500E9DC44AEAB5721F6F6627AF264B9E46B1DED30C4C72372FA749D6B0A8DE238403AB6C3C09516484E079213';
wwv_flow_imp.g_varchar2_table(13) := '935094912E976CADAD457B57270C7171889C31FE0EDA72807402C875FD3AC4EE6E244E9880874C59883418E4925DA2882FEC76DCEAE98621210191D3C6D770C601D201204F6727DC6D6D48889B80629309D11111F794DAEFF6E0E0992AF4F639619C3205';
wwv_flow_imp.g_varchar2_table(14) := '111327EA506B6814C101D2D80E6CBEC3E63DB1D13158B76C19628C23074873BADD38585505677F1F2267CE8421767C9CDEE6006900888A22FA1B1A412411EB73F3901413336A691D4E270E9EAA04040151A9A920B787390D2E04DD9403A4A1098626CD19';
wwv_flow_imp.g_varchar2_table(15) := 'F3D2609A3953514955DF34A3AEA1018609131079DF7D8A6C423913074865EB786EDD82BBB5559E343F9CF5000441D9877949A2F8BCEA346E397AE5577BF68A1FCE8903A4A2F586862E814A589793EB73E81A5E45A7D389FD95270183015173E78208E17B';
wwv_flow_imp.g_varchar2_table(16) := '308503A40220F78D1BF0747521332D0D9933940D5DC3ABA9BE7205355F5F464452128C29292ABC080D130E909FED200D0C60A0A909D191917870693A0C545D986511C0FFD4D5C1E576217ADE3C9061AFFE7EBA15B4EC1C203FA577B5B4407438FCB41A3D';
wwv_flow_imp.g_varchar2_table(17) := '7B38AF977180FC4081BA5CE86F6CC482A9535194B6C00F4BEF594B2E5DC4A51BAD61DB0B7180FCC06068EEF36AD143D8347B8E1F96DEB3EE6B6EC42BA52588484E0ECBAD1F1C20A518508ABE4B971121101C7E763B6274FA08E8143D58B3E35D8884C8BD';
wwv_flow_imp.g_varchar2_table(18) := '50B8250E90C2161BFAEE53BC78095E5FB55AA195B26C3FFDF230ACF5E7E50F8BEC036338250E90C2D61A9A3CBFF9F046AC99E67D6F8FC3E3C1CE8BF5B8787B47E2C2E4643CBD6011E24679CB2ABF76157FBDFFB3B05CADE7002901481EBE2E213E2A1A87';
wwv_flow_imp.g_varchar2_table(19) := '9F7ED6ABC5C59E6EFCD981CFD1D673EFD55C29F1F1786BDD06A48DF2D579F5CEF7E0F4B8119D96A6C4A390C9C30152D014432BEE8F672DC3CBD9EC96A96F27914AD8F6D97FA3B9A303DB1EC8C692C99321518AF31D1DD875FA14E626A7E00F1B36C04046';
wwv_flow_imp.g_varchar2_table(20) := 'FEEAFC4F9527F049F51944CD9E0D213A7CEEC6E3002900C87DA30D9EAE4EFCD7235BB16CD2A4112D8EB7B7E1C57D9FA078E9527C7F4EEA3D790E3735A2A4AE0E6F6F7914D9B7B7BA0E2FE464473B5ED8BB07C6C99311E1A50E05AE8E79160E9002C907AE';
wwv_flow_imp.g_varchar2_table(21) := '5C81E474A2EAF917BCE6DE79E902DE3854811FAE588985C300A06E377E565A8297CC857862DEC843D4802862C53BFF19769BF039400A00EABF7C1913A3A251FEE4D35E731FB8F20D5EFEE200B6E6E4206BCAD47BF29D696DC5EE5395787DED7A148FB276';
wwv_flow_imp.g_varchar2_table(22) := 'F6BD9D3BE08084E839FA7C6352F0689AB370807C48483D1EF47FFDB5FCF579D706EFF1B05AFA9CD8F0FB9D983F652AB6E7E4DC53EA3B9595B8D47603079F7A16534799DF3CB26F0F1A3B3A10337F3E40946D0FD14C80C60238403E0494FAFB31D0DC8C95';
wwv_flow_imp.g_varchar2_table(23) := '73D3F0EB82C25173FFFA6C2DFEE3E811244F9880B953A782528AC61B37D0D1DB8B3F5DB51A7FBC78F47B647E5C568A138D0D61B5ACC101F20190E874C275E50A366564E2D5BC15A3E666C0BC77F1027E75E44B7844B6DE0E180D06FCC583ABF1CCFC8520';
wwv_flow_imp.g_varchar2_table(24) := '3E7A957F387A04FBCFD6226ACE1C0851511AFB86B131E700F902A8A707AE6BD7F0DCF215F8CB7476ABB8B274811DE32104B3626311290C1EF1F1957E517D063B2A4F84D5A67B0E908F561D5AC278C95C8027E6CDF7C580A6DF775CBA805F1CAA08ABADAE';
wwv_flow_imp.g_varchar2_table(25) := '1C208500FD34DF8CA774DAC2E1ADCAF72F5DC4BF1DB2C9870FD921C470481C208543D8F6BCE5F8498629A06DFAA6FD0CDE3D7982F740BE540EA7E81C6CF7215B48DDB03403FFBC62A5AF47D3F4FBD0243A9C0E1EF21E48E16BFC8AB9F3F05681451320BE';
wwv_flow_imp.g_varchar2_table(26) := '8C875EE3F95B980FA5C2A907626F60624F0FD2A64CC1EE8DAA83B2FB6247FE5DFE90D8CEC2C1844F4C21DE038DD2B443F0B02C893131A878CAFB568EE1C59C686781F881BCC9CA8FECACDAF12EFA5C03B25DB840C401F202D050A0A8D953A74192445C69';
wwv_flow_imp.g_varchar2_table(27) := '6BC3C1A77F38EA52C4DD45ADFDE843088460FFD66D8A7A9F6B7D7D58FFFB1D989992024130A0B9F57A5804A6E2000D6F5E4AE5681B6CF23C2325056B162DC6E5F6361C3F7F0EFE6CA62FDEF581BC9CF5C5E34F2802E8E3C606FC4B592956DCBF18F326A7';
wwv_flow_imp.g_varchar2_table(28) := 'E050FD39B4B4B50D9EA167D1CD42746D8C0334AC79EF84A8FBBF46342F5E2CF7224E970B7B8E1DC5DA254BF1DACA071501E12F4043FBA2B7AE5C8568A351DE8C663B7716D7D89C288403317080EEC2C173F326DCEDED989A94840276EAF4AE33EB9F569D';
wwv_flow_imp.g_varchar2_table(29) := '86E4F6E0F053CF28EA0DFC0188C1B27AC7BB888989C1FAACAC3B1E79240965B5B568EBEA0CD98D661CA0DBCD251F596E6E466C54143664E7DC095137D49AA79B9B71B6B101EF6FDD862589BE238CF90390BDF3267EB46737D2E7A5216B58981897C783CF';
wwv_flow_imp.g_varchar2_table(30) := '4E55CABD20DB2744222315F58063958903C494A614FD4D4D60274F8BB39661CA08CB08377A7B5172FA14FEFCC1EFE1F9FB17FB6C1F7F00FAEDB93ABC75E42B3C949D8394B8B86F957DB5AB0BE5F66A90A82844CF9EADA807F4E9A04E19384080BC5D956D';
wwv_flow_imp.g_varchar2_table(31) := '5B4D4E98887559232F57B0AD1ABB8E1EC57D0989F864CB233EB7662805886DC6DFF8F16EB43B1CF8C1AA555E9B950DA1B77A7A10356B16041F91D074624351311C2000432BEE8B67A7223BD5FB76D2AAA626D43535E2B5B5EBB1D6475817A5007DF64D33';
wwv_flow_imp.g_varchar2_table(32) := '7E567210E973E7216BD62CAF8D76B2B101F5CDCD21B7D0CA0102E489339B40AFC93461D6281154FB45119F1C3B869989137DF6424A0062BDDAC37B76A3BDB7178F2C5FFEAD79D7DD343577DEC4E19A9A903B43CF0162B19C5B5B21DEBA85F539B998E423';
wwv_flow_imp.g_varchar2_table(33) := '7A6A4D4B0BAA2F5FC2EBEB1E46F17DDE03872B01E840CB3778F9E0012C9BBF004B7DC44BBC793BAA190B11CC4205874AE200F909107BB5DE7BFC1866264DC2471B36799DD0FA0288F53E5BF6EE419BC3812DB9B9F77C3218098E21800C8989889C7AEFA9';
wwv_flow_imp.g_varchar2_table(34) := '8F60C2C401F21320D658E7AF5F47E5857ABCB17E030AA68F1C69D5174025575BF0D281CF9177FF622C54D0A37080EEFA3309B5D5787F8630F6182CD2EADE93C7111F15850FB73C86C411828B8F0650B7DB8D47F77C843E8F882D39B98A22BC7280C61140';
wwv_flow_imp.g_varchar2_table(35) := '6E5184B5A6161DDD5DC84B9D8BDFB07D42C3D6AABC01C486AE17CAACA86C6AC0E4C489284C4F974F6EF84A7C0E344E00EAF37860ADA9912F4F013B6D2189239EF9F206D05B676BF1DBA347EED826C627C0929181181F41363940E300A0AEBE3E94D7D4C8';
wwv_flow_imp.g_varchar2_table(36) := 'F75DB04DEF2C3CEF405333E071E3ED471EC30393FEFF76C29100627B845800064418113567B67C410BBBE187DDB3516432C943A2B7C487B03007E8467737CA6B6BE1F1B811913C19C6E4C1281D432757D986B30F1EDD8A69D183F76514EFFA837C2B68C9';
wwv_flow_imp.g_varchar2_table(37) := 'B6C1ED1CECE8F3937B3E464F7FDF3D0707DD1D37E1E9688731C288029369C4A50C66CF7BA03006887DC4FBB2B656DE6231D2F50443104C8C8DC5E6A5E9883346E2772C123D80E77272E170BBB0B7AE16B79CCE1157D5D99659B6FB911D447C303D1DB393';
wwv_flow_imp.g_varchar2_table(38) := 'BE1D42860314A6009DBD7615A72F5E94E72C5133EEF3BA0EC52ED9F5DC0E6BE76D181A2D12ABD4D7878196ABF29C2A67E142DC3F2C8C1E1FC2C210A0930D0DA8FFA61984CD5966CEF0B995824A12E8C080BCBACF7A1496E4DD848220DBFABA1383ED0660';
wwv_flow_imp.g_varchar2_table(39) := '8BBA2C22C8A259B3913B77EE1DD5780F144600F57B3C387AE1025ADADB2044452392C1A3E055FBEE9E87858461C9DFD0BD0C1E57CB554803FDF2FEE8950B16222A2282CF81EE1637543F240E1F7AE43B4ED9B2818AFDC86A01927D603DD8F5D63B5787DF';
wwv_flow_imp.g_varchar2_table(40) := 'ED175F0B03106A00B157694FF7E03DEF2C040B311AE57DC882866B2959547B96B42C7CB2D032526F2F24979B5125971791981852778C05672DACBCF4514AC8C7DE269BFCFFC3470142E963D505457BD478AC3A065BA6CDBA16C0013595729B9053609DDD';
wwv_flow_imp.g_varchar2_table(41) := '6C39A8C62BD500659497AC2144A8505329B7092D052895F26B0A8A0FA9F14A35405915D65C89E2849A4AB94D68292010E49DC9B70C7E35F533A906C8545EBE9412A9D6CFFA78F61054805021BDBAA0A04E8D6BAA01CAB05AE711032EABA994DB84960254';
wwv_flow_imp.g_varchar2_table(42) := '445A8DC532F8D1CBCFA41AA02536DBB40888839F6A790A6B053C304C3F6B365F57F310AA01CAAEAC34BA7BBAD88797F0B955448D42E3DFA6DF183F31E1544E0EFB50E577520D10AB29D3565601D0357ED7CA0D42480172C86E2ECC57EB9046804A5F01C8';
wwv_flow_imp.g_varchar2_table(43) := '3FAAAD9CDB858202F455BBB9E815B59E680228CB569A2F81D8D456CEED82AF80006A3E632E52FD3D4F1340A9365B7402C44E3E0F0A3E082A3DE8EF8621A9D16CEE57690F4D000DCE83AC1F00F8815A07B85D5015F8D06EB6280BBFE6C54D1D002A5D0190';
wwv_flow_imp.g_varchar2_table(44) := 'A341958157AE5201BAD26E2E3AA6D25836D30CD0602F547A0C20CBB538C26DC75A017ADC6E2E1AFDEA22052EE90490957583EC08034FE1A3C09376B3854D3F34255D00CAB7D9226E426C0030539337DC78AC14689904436A85D9ECD15AA12E00312732CA';
wwv_flow_imp.g_varchar2_table(45) := '4B371342F66A7588DB8F8102846CB2E7177EAA474DBA01343817B2BE09E0277A38C6CB089802BFB49B2D7FA557E9BA02C4D6C75C3D5D5F1120572F077939FA2940818AC8F889C56AD7BD46F2445780580559365BAA04B10A80EF38BAFA69C34BF2AD40AB';
wwv_flow_imp.g_varchar2_table(46) := '24C2546BB1B4FACEAA3C87EE00B1AA4D874A975189B04DDAA9CA5DE13903A840934885CD750505D57AD71110809893F75BADC99106B0D7C4C05ED0A5B722E3AD3C82729707DBCE5B2C1D8178B48001C49C7D7CD72E437D4AD2AF00F262209CE765FA54E0';
wwv_flow_imp.g_varchar2_table(47) := '8D456D375FFA68DBB6C1FBCB0390020AD090BF265BD98B94D05F8222B462FC0740D01029B28F00CF559B2D1F06DA9F3101489E179595CD00A1CF53823F02E03D1A77A09F787C977F05206F13096F571716B68CC5A38E1940430FC386B50B539237514A7F';
wwv_flow_imp.g_varchar2_table(48) := 'CC6238E9B51E37166285681D6C78DA2F50FA9B05ED9D0703395C8DF4FC630ED0DD4E64979626BA04C14404BA0C00FBF70000760B4A44883656B0DD624B0FE74050054AAA2815AB5C91B1A7EB57AFEE0996634105C8DB432FDAB72FDE90901027444A7174';
wwv_flow_imp.g_varchar2_table(49) := '804C301A689C87D23801E43BB1815F02ED8F20C4E116898344D15EC92538C4EE6E47FDE6CD4103C55B5B852440C1FA6BE2F5FAAF0007C87FCDB8C55D0A7080380E9A14E00069928F1B738038039A14E00069928F1B738038039A14E00069928F1B738038';
wwv_flow_imp.g_varchar2_table(50) := '039A14E00069928F1B738038039A14E00069928F1B738038039A14E00069928F1BFF2F3A936F09A60D7AE60000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57431475505549081971)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C07000000017352474200AECE1CE90000170549444154785EED5D697054D795FEBAA556B78436104242126847028CC466309B010106636C33984526988AE3C4A9CC543933';
wwv_flow_imp.g_varchar2_table(2) := '93C9243393546A5293CA3289A752495C99891D3BC60B9B4D818DC118B3196C2C0382C8480849680161B422B4F6DE937B5FABF524D4EAF7FA3D093DDEB97F10DDF7DCE53BE7EB77DFBDE79E63C83B7ED4032A84804E1130100174AA799A364780084086A0';
wwv_flow_imp.g_varchar2_table(3) := '6B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E';
wwv_flow_imp.g_varchar2_table(4) := '084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA';
wwv_flow_imp.g_varchar2_table(5) := '563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E084036A06B048800BA563F4D9E08708F6CC0';
wwv_flow_imp.g_varchar2_table(6) := 'E374C27EEB16EF3D2C311186D0D07B34127D774B04B807FAF7381CB05DBF0E46025698F19B274D82C164BA07A3D17797448011D6BFC76E178CDFE5EAD7B3212444204158D8088F48DFDD11014650FF6EAB15B61BF5805B30FEC8F008FE6F674FB7300A23';
wwv_flow_imp.g_varchar2_table(7) := '23410A8C66F3088E4ADF5D11014648FFEE9E1EC1F83D6EDEE398F008ACCECFE77F7F78E912BAC424484986D16219A191E9BB1B22C008E8DFDDDD0DDB8D1BBE9ED82FFF23F9F988F02E77BAED761CB974A9EF496030C2CC48101E3E02A3D37717448061D6';
wwv_flow_imp.g_varchar2_table(8) := '3F7BE1B5D6D6F9963DD163C6E091BC7C5806BCF05A1D0E1CBE78B1DF72C8923A995E8C87593F44806104D8E376C356530B8FD3C17B89B058B076D6ECBB8CBF7708EC4970A8B8183D362BFF88BD109B274F86C1681CC651EABB6922C070E9DFE381ADBE1E';
wwv_flow_imp.g_varchar2_table(9) := '6CF9C34A68A8098FCD9983A8002FB86DDDDDF8B0B8180E97B0456A8C8880392565B846A9FB768900C36402EC90CBD5DE2E18B1D18855F933111F1525A9B7C6CE4E1CBD580CB75B78610E8D1D0BD3847849B254491E024400797849AAED6C6B83A3B1D157';
wwv_flow_imp.g_varchar2_table(10) := 'F7E119333079EC3849B2BD95EA5A5B71EACB129F8C292101A13131B2DAA0CA8111200204C648560DB7CD065B6DAD4F66565636A62725C96AA3B772497D3D2E55550AFF3518F8FB009D110405A55F2122809A787A3CB0B2975E879DB79A1C1F8FE553A729';
wwv_flow_imp.g_varchar2_table(11) := 'EAE14459296E3435091C080B8325359593818A3A081001D4C191B7E2686C82B3ED36FF3BC26CC6BAB90F222C2444510F36970B07CF9F43B755D8190A1D370EA6F1E315B549C27D08100154B28681875DAB67CD96FCD21B68088DEDED3872B1D8578D2F85';
wwv_flow_imp.g_varchar2_table(12) := 'E8A438106C92BE2702488269E84AC27E7F8DCFBB73464626F255DEBA2CAEADC5E5DA1A6129640A83258D96422AA80E44001550146F79B293DE75B3E7C0A8F23ADDEDF1E0C0B973BE93E2D0D85898264C5061F4FA6E8208A050FF03777D56CF9E83F8C848';
wwv_flow_imp.g_varchar2_table(13) := '85AD0E2EDED0D1818F8A2FF42D85525369574821D24400850032DF7EE6E9C94A4652121666652B6C7168F1331515A8FEEA26AF1432660CC2929387B5BFFBBD712280020DBB3A3B61BF2918237375583F6F1E2CC37CB5B1C7E9C4FEA22238BDFE45EC120D';
wwv_flow_imp.g_varchar2_table(14) := '798D06AF442240B0D8B13DFFDA5AB01B5EACCCCBC9C5948484605B932577A5A101E7CAAF7019A3D90273EA6459F254B90F01224090D6E06CBB0347634390D2EA8A854D9C8810897E46EAF6ACFDD68800C1E890FDFA5FBB76D7BDDE609A5243C6106A8225';
wwv_flow_imp.g_varchar2_table(15) := '235D8DA674D706112008958FA65FFFDEE1D353200845B23395BCE3473DC189EA57CA5A5DE3F3F7F9F99AB558937C6FFCF50FDDB88E7FFFF090F02E101ECEA34A5091870011401E5E707577C3EEBDDF1B1311818F0BB722C4706F6E6CB93C6EACDCF916D8';
wwv_flow_imp.g_varchar2_table(16) := '251A56CC742E20539BF404900D98BDBE1EAEAE2E2EF7FC8285F8CEB40764B7A1A6C01F2E97E0E5B39FF12643A2A37994392AD211A0278074ACC02FB857570B4B0E83011F6DDB8E7161F736864F83D58AB56FED007395606ED2968C0CB0205B54A4214004';
wwv_flow_imp.g_varchar2_table(17) := '908613AFE5686A82F3B6E0EEFCC8D469F8E5C2C532A487AFEAF73E39896357CB7907CC559AB94C5391860011401A4EBC16DFFAF4C6F37CE5EF9EC2EC717132A487AF6A517313BEBD7F9FF064A283315940130124C225767A8B8F8CC2912D4F4B94EC5FAD';
wwv_flow_imp.g_varchar2_table(18) := 'D16AC58E2B65A86C6D417983709096939080ECB8F1D896938B0941FAF917BCFD266E770BEF2696CC4C5A0649D40E114022508E9656385B9A79EDA7F267E147731F9428D957EDE4ADAFF0A3A347D169139CE70696487338FE6BE54A2C4D9C28BBED9F149D';
wwv_flow_imp.g_varchar2_table(19) := 'C58192BF7239BA402F1D3E228044AC6C75D7E1B60A86FBE2638F63B94C237DB3B202BF3E795C526FFFBAAC004F676649AADB5BE9C8CD7AFCE0D041FEDF90C848840579115F56A7F7416522800425B250E6D6AA2AC1B8FE16E3E7CCF6676196B1D352D9D1';
wwv_flow_imp.g_varchar2_table(20) := '8EC277F6C0E50D899E9338118BB332911E1DCDDBAC6E6FC7E9CA2A94DFFA4AF8050F09C1EE4D5B903646FABD822EA7134BFEF267F0534D8311E1599974795E826E890012406201AE7AB3B9CC4F4FC71F0B56499012AAB0C3AA4DEF1D4075931027685E46';
wwv_flow_imp.g_varchar2_table(21) := '069EC89D3AA8FCFEB2327C517D8D7F979B38116FAC7D4CD621DB731F1DC685BA3A2E1F969282900821FC3A15FF081001245887BDA101AE3B7778CD7F59BA1C5F9371E9E5426B0B9EDBF70E97656BFC1FAE58CE7EA207EFD5E3C12F8E1DF7BD23BCFED426';
wwv_flow_imp.g_varchar2_table(22) := 'CC881D2B61844295D7AE5EC16F3F39C5FF0E8D8B83296E74EC52499EC03DA848049000BA78FDBFE3A94D78408651BE7FBD0E3F3E7298F7F2607A3A9E0C1027687FE9657C51235C7E97EB6754DCDA8A6FECDBCB65E93D408262C9194E1A483D1515003B69';
wwv_flow_imp.g_varchar2_table(23) := 'FDDB01D8A75F7F0EE132D6FFAF5F2DC7FF7C7292CBAE98361DCBD3D286ECF4444D358E9696F23ADF5BBA0CDBB2A6481B24807687034B5F7F95D7E79123D287EE4B72C3F771457A020450AED8FD21213A1A873715CA3287530DB7F0DDF70F04F504F8DDE3';
wwv_flow_imp.g_varchar2_table(24) := '4F62F10479B7CC56EE7C132D5E5FA5F0EC6C7A110EA02D22400080C4F77E17A467E2A58215B208C07C75D6BCF93A9789B284E3070543BF03FCFCD8317479F3031CD9B61DF16679A992BEFDF14728AA11FC95288056605511010260243E007B66EE3CFC73';
wwv_flow_imp.g_varchar2_table(25) := 'FECCC0A80EA8F1C2C963F8A4520872FB607A069E9CEA6F17A8145F789DED166566E1F7CB0A64F7F5ABE2F378FBC2792EC73C4399872815FF081001025887FDAB5B70750871FE7FB2F211AC4F95BFAE664F81F5BB77C2EA0D9ADBEF1CC003D474747082F4';
wwv_flow_imp.g_varchar2_table(26) := '9E03584C61D8BFB93028B788BDD5D7F0B36347F97843C78E85299EF20A0CA56222400002B0CC8E6EAF8FCD4B4FACC782F8E0A2B1EDBC56855F1EFF58D28FF1BF15ACC4E6F40C4975075612BF73D0FD80C0101201021140E402F1970D1B912733D185B879';
wwv_flow_imp.g_varchar2_table(27) := '49BE40AB56616942F0975AC4E70EB4154A04088C40801A3CF68FCDC66BEDDDFC343215861F61DEA06F965F41794B13AEDC6A8029C488CCF878E48E9F80AD5372825AF688A750DE7E07857B76F18FE89E7060F5D313201001AE55FBB23C1EFADA3348B48C';
wwv_flow_imp.g_varchar2_table(28) := 'EEDCBD37BABBF1F8DB6FF05919CC6621A10615BF0810010218474F65952FC7EFA9EDCF226A407EDFD1665BB7ED7614EC784D20406828BF2249C53F0244804004B87AD557E3C237BE0583CA61CFD5364EBBDB85F9AFBE2234CBBC42B3E5B955AB3D9ED1DE';
wwv_flow_imp.g_varchar2_table(29) := '1E11201001446E1045CF7E13A6519EB4DAE17663DEAB2F7B0960003F0DA6424BA0606DA0A7A212F008F97A4F6CFF3A624C61C1363522726D763B967B9740308608F702A8100182B5017611865D8861E583ADCF6062F8E87E09AEEFE9C6BAB7BC2FC1F40E';
wwv_flow_imp.g_varchar2_table(30) := '1050EDB4040A0091380CE2EECD85C88E1ADDAE05E5EDED28DCB353780560695503789F06B490FBBC0211208082C519605EDBB011F90A0EC246C296C40761C6880898554ED637127318C93E880001D06619609847282BBF59BB0E051383CBFA3E524AED77';
wwv_flow_imp.g_varchar2_table(31) := '393E2A0A2C6A3415FF081001023D0144BE40FFB46429B64FC919D5F6F4E7F22BF8DD69E15A24E5100BAC2A22C0101889EF02B36A1B67CEC27FCC911F0F28B01AD4ABF1D32F3EC7BEBF5EF23518121383B0114ADDA4DE2C46AE2522801FACC5B97F7BABC8';
wwv_flow_imp.g_varchar2_table(32) := '8D0831726AECEBE9F98F8FF8EE14F77E4A24A025902C5B1CF8CBDF2B9C14138B831B37CB6ACB5FE5269B15DF3F2104CAFAEF65CB65DFFCF2D7EE9A3DBBD0D02E44B010174AAC3D3862F4041880CB40E34F4B4C44CDAD5BBE5AC5CF3DAF0A01C491E2E486';
wwv_flow_imp.g_varchar2_table(33) := '5A196A00B35EF93FDFD7A98989A8158D9D487037724400112603973DE91359E2EB2C1CF9F24B34DD6EE535776EDA829CE818C524F85359295EFAF4346FE7EF172EC6B702844B91D2E1E53B6DD8B67737AF3A61DC38AC9AFE003EADACF425D6669FD32599';
wwv_flow_imp.g_varchar2_table(34) := 'FE481201BC780C34FE8CA4646EFCAC145FAFC365EF5DDDEF2F5B8EAD99CAFD6B8683003B2ACAF1E2292104CB03E91998E9CD19C64870ED66BD4FF344823E121001001EF690853FEC2DD9932661BEE84A627D5B1B8E7B7756964FC9C18B4B964AF9411EB2';
wwv_flow_imp.g_varchar2_table(35) := 'CE7010E0BB278FE3546505EF7745FE4C4C8CE97B521109E81D60500406AEF97327A762EE00F70187CB855D6784E54A84D98233DBB68F3A02783C1E2C7AE375F4D86D3CF0E296C54B103AC073B5A8BA1A57AF0BB14359A177029D27C963E98E58DAA3DE32';
wwv_flow_imp.g_varchar2_table(36) := '3D350DB3FCDCA07AFF6231DABC4F09357C82D47E02887D80E2A263F1E8CCFC41497AAEA60657EA6A7DDFB1A8112C7A845E8B6E97402CD323CBF8D85BA6A5A561F664FFD707C5EF012F2C7918CF4EC95564336A13E04F57CAF0D2994FF898F23232913784';
wwv_flow_imp.g_varchar2_table(37) := '0FD0F9DA5A94D50AF14759D17324697D12C0E311F27D79DD9CD96ECFA20017476EF7F4E0E01745DC60B21312B07BDD93A38A008FBFBB1737BC3B55EB1F5A80C8B0A1EF2D9CA9A8F0ED0EB1AC92FCEAE428BFEDA608703FC2BA248038DA5B4C54341E9F35';
wwv_flow_imp.g_varchar2_table(38) := '4B12B607CE9F43BB37EEE67B4F6F438A82F8FB6A3E012A3ADAB179B7E0021D1B1D8D753325CEE7C279B47B1DFDF49A5D52970410677B5C96978F94D858490428A9AFC7A52A21C4A1D224D96A12409C2C7B565636A64B4C8F5477BB15A74A4AF87CF47A81';
wwv_flow_imp.g_varchar2_table(39) := '5E770470F7F480F9F8B312613663C3FC8724193FABD461B361FFE76779FDF12C53E4E6C2A02FC9AB4500968166CDEE5D68EEECE0E3DAF0D002440458FE8827FC6ED1E7E8B65AF947E6D45418CDF736F1B76465A8545177041027BB9E3A390D73D2E4C5CD';
wwv_flow_imp.g_varchar2_table(40) := 'F9E0E245B47A7D6D7EF5E8635895941C942AD422C087F537F0C3C31F08A48C89C59AFCC1777FFC0D9225E328F7EE0AB104DB6C29A4A7A23B02886F78AD993D07E323A527A2638651D1D884CFAF08092CF25326E1B5D58F06652F6A1160EBC1F750E64DAE';
wwv_flow_imp.g_varchar2_table(41) := 'B770DA7464C834E0868E0E7C547C81CF418F37C8744700F11DDFC2410E8B0259B3DBEDC1BEA2CFF981132B3B371522278810E46A10A0A4ED36B6BFB34758CE592C583F771E8C463FF9C7FC4CCCE67462CFA767F8B77ABC43AC3B0288D31D6D7B38389786';
wwv_flow_imp.g_varchar2_table(42) := 'CB376FA2D8EB72B076DA03F8D98285817873D7F76A10E0879F9EC68765C2D368EE94293CB3A4DCE272BBF1F669E1FC408F6154F4470051A4B760096077B9F0EED9B370BA9C083118B0AF702B26458C91657B4A0950DDD989A776BDC5F3028799C2B061FE';
wwv_flow_imp.g_varchar2_table(43) := 'FCBB5C1FA40EE80DAF031DAB1F3E457A4E32A9ED8FE67A448020B5535C5787CBDE54440F6765E3B74B59EA23E9452901C437BF666464225F41F407228074BD69BE668F0A4F000682CDE5C2FEA222D8BD595F5E5EBF0173E2A4EFA02821C0D9A6267CE7C0';
wwv_flow_imp.g_varchar2_table(44) := '3EAE0B53A889FFFAB3ECF2C1162240B0C869504E2D02B0A95F6D684051F9158E02738FD8F5D81392CF05822680C7838DEFED479537F3FC43B953913521B8AC35BDEA230268D090831DB29A046063109F0BFCE7AAD5786208873AF1988325C0BEDA1AFCF4';
wwv_flow_imp.g_varchar2_table(45) := 'E811DE941CB787A1F02202046B4D1A94539B00CD5D5D387CFE1C4722DA128EFD9BB62056C2496C300468B1D9B061EF6EB45B7B787F8FCE998BB831F25EBE075319114083861CEC90D526001B87D8B3725146167EBF3C707AD36008207EF1155FD90C160B';
wwv_flow_imp.g_varchar2_table(46) := '5A02E9F042CC7010A0B8B6169745FEF53F5EB10A1BD2D287B44BB904D875AD0ABF1065991CEAF28E5C42D013402E621AAEAF2601D8A9F06755FDA32E3068CCA126BCB3790B92C323FC22258700755D5DD8B86727D8D54C7161F718166466C93EFD1D3828';
wwv_flow_imp.g_varchar2_table(47) := '2280860D5AEED0D52200DB063D59568AC656215C0A2FC6105F3E31B62BB4E3D17530FBD99E944A801E970B5BDFDF8F9AE6E6BBFA601FB0F0274BA74EF3DB8F147C88005250BA4FEAA841804EBB1D472F5D42674FB70F15167E907952DA585A55A7937FBE';
wwv_flow_imp.g_varchar2_table(48) := '222717BF5EFCF0A0C8492280C783174E1DE759E459613EFBCC65D9D1DC0CD79DBEE86F91E11158999F1FF016983F151201EE13E396320DA50468EAE8C0F12FBFF41D80B13E4D1326F0080BACB8AD56E1BE8187392900FFB06809BE993BF5AEA14921C01F';
wwv_flow_imp.g_varchar2_table(49) := '4B2FE37F3F131CD558314F9E0CA3C5C2FF76B6B5C1D1D8E8FB8EB94314E4E5617C10BB4244002996739FD4514280DAE6669C292B85DB6BDC2C0B6358D2441E865C5CC4C6C97C33FFF0C47A2C88EF7F581588002CABFC3F1E7CCFD7EC60D11BF8C5FE9B5F';
wwv_flow_imp.g_varchar2_table(50) := 'F97298190D062C9A361DA97171B2B44504900597B62B074B804B376EA0E45A956FF26C3912969CECF7069538B106136211E556A74C469CF7C6953F02B0BDFE43D76BF19B93277C7D85444622CCCF3547B7CDC6A35BF42EBB98505E6626F29253242B8A08';
wwv_flow_imp.g_varchar2_table(51) := '20192AED57944B00B6D373BAA21C750D0D7DC66F36C39C9CCCD7E4FE8AC7ED86AD86BD0F381481660835C1929E3664C40666FC3646029B70478115393B444400452AD296B01C02589D4E9C2C2D4553DBEDBE5FE33163845F630921449861B2258ADB7B72';
wwv_flow_imp.g_varchar2_table(52) := '2B17296378384F713414D17C6D7A3CB0D5DF84BBBBCBF7517CEC582C9B3E3DE00E111140AE66345C5F2A013AAC561C2D29419768A7874550636B71B98545A0737777832D57C44B95C1DA61C6CE2EA6B3EB89C1446C733436C129222CDB215A316306A2BC';
wwv_flow_imp.g_varchar2_table(53) := '2FCF83F5490490AB510DD7974200764FF64449091CBDCB178341D8E911059B550A81A3A505CE9616DE4C685C1C4C325F5C87EADF79E70E1CA2251B73992E983103F15151838A1101946A5343F28108C02E989F17DD19E03B3DC949085110046B30788693';
wwv_flow_imp.g_varchar2_table(54) := '00AC3F577737ECF5377D3B44ECB3B95372909B9878D77088001A3260A5431D8C002CEC61E39D3B28BB7EBDDFE1167B0135A724F3CBE26A97E126001BAFB04374B3DF8B7854C418E44C9A8484E8688CF566BD2702A8ADDD51DC9E9800430D93BF80262581';
wwv_flow_imp.g_varchar2_table(55) := 'C5CD1C8E32120460E366F14F1909A4BE88D39DE0E1D0F6286AB3A7A2B2DFB260E0D0D8AFBE297E3C42FCAC97D59A8AB3B595BB34B0321271397928F8E69621E7CE967BE1D942561CBD14DD5D8A67EE03ECA4565C8C660BD82FBE31221CECD069244AEF01';
wwv_flow_imp.g_varchar2_table(56) := '16EB6BA8033535C7E27138F8DCDD363B3C76FB5D67147A4C98A13B02A86950D496F6112002685F87340305081001148047A2DA478008A07D1DD20C1420400450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD400102440005E0';
wwv_flow_imp.g_varchar2_table(57) := '91A8F6112002685F87340305081001148047A2DA478008A07D1DD20C1420400450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD400102440005E091A8F6112002685F87340305081001148047A2DA478008A07D1DD20C142040';
wwv_flow_imp.g_varchar2_table(58) := '0450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD400102440005E091A8F6112002685F87340305081001148047A2DA478008A07D1DD20C1420400450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD';
wwv_flow_imp.g_varchar2_table(59) := '400102440005E091A8F6112002685F87340305081001148047A2DA478008A07D1DD20C1420400450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD400102440005E091A8F6112002685F87340305081001148047A2DA478008A0';
wwv_flow_imp.g_varchar2_table(60) := '7D1DD20C1420400450001E896A1F012280F67548335080001140017824AA7D048800DAD721CD400102FF0F82C3EA48E6976A090000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57431475891118081972)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A866000000017352474200AECE1CE90000200049444154785EED9D097414D799EFFF55AD6E6D20B10809C48ED8C4A205810D06030D12183006DB80B7D8C7F64C669CCCCB4C';
wwv_flow_imp.g_varchar2_table(2) := '923773E225EF984C32719C993799396F26CB2471E23D26B63118B349A2C5661623905A208CD917B1884D80D0D6DD755F6E75ABD592B57475776DDD5F9DC3314675EFF77DBF7BEBAFAABB7C57005D448008C42C01216623A7C089001100090075022210C3';
wwv_flow_imp.g_varchar2_table(3) := '04480062B8F12974224002407D8008C430011280186E7C0A9D089000501F2002314C800420861B9F4227022400D40788400C13200188E1C6A7D089000900F5012210C304480062B8F12974224002407D8008C430011280186E7C0A9D089000501F200231';
wwv_flow_imp.g_varchar2_table(4) := '4C800420861B9F4227022400D40788400C13200188E1C6A7D089000900F5012210C304480062B8F12974224002407D8008C430011280186E7C0A9D089000501F2002314C800420861B9F4227022400D40788400C132001E8D0F8A3376E8CEF959898D802';
wwv_flow_imp.g_varchar2_table(5) := '2488A268158138FE4770B9AC2EFE774188638240DC0CF8D0088C318931B7157033ABD525016EF98F24B96C40537D6363E389C58B9B0DE8BA6E2EC564479E545A9A6511A45C49147205865C00C321201D0C99BAB50419D68E80808B60A805709609A81425';
wwv_flow_imp.g_varchar2_table(6) := '56294942455561E129ED9C3086A59810803CC7D63C26884B195008860200C9C6C04F5E188CC05D4038C0209548CCF2E99179F32A0DE65FC4DD894A0198B0668DCD92965628803D08813D086068C4C95185B140E03480F560D2A7EE6B753BAB57AD6A89B6';
wwv_flow_imp.g_varchar2_table(7) := 'A0A34A00263A1CA32DCCF33C043C036070B43516C5A32B811A0878D3C32C7F3862B79FD0D593081A37BD004C70387A59997B151384E700CC8A201BAA8A087445602783F08607E287D5767BBD9931995A0072CB4A1F668CFD18C044333702F96E5A02E502';
wwv_flow_imp.g_varchar2_table(8) := '63AF54CE2BDA62D6084C2900798EE2B91284D7004C372B78F23BAA08EC15C15EAAB01795992D2A5309007FDD8F83E7B7001E371B68F237FA0930E01D0F2CDF32D367816904605269E97DA285BD0D8651D1DF952842131338C998F858D5BC79E56688C114';
wwv_flow_imp.g_varchar2_table(9) := '0290B3ADF81988C26FC160330354F231C609086881C4BEE99C57F496D149185B00181372B697FE040C2F1B1D24F947043A121020FCA4D23EFFFF18998C6105802FE6894BEFFF3E187BC4C800C93722D02D01016FB96B6F7CD3A88B880C2900731D8EB81B';
wwv_flow_imp.g_varchar2_table(10) := 'F0AC05C057F1D14504CC4D4060EBFBB1B847CBEC76B7D10231A400E46C2B7E0F82F084D160913F442054027C86A0CA5EF874A8E5D52A673801C87594FC8C013F502B60AA9708E84540005EAFB417BEA897FDCEEC1A4A00721CA5DF05D82F8C04887C2102';
wwv_flow_imp.g_varchar2_table(11) := '9125207CCF699FFF1F91AD33F4DA0C230079DBB6CE9420EE800031F470A82411303C018F0036B7D25EB4CB089E1A4200E411FF01FDAA016419010AF94004D42420809D705DBD39D1083303861000FAEE57B3BB51DD46246094F100DD0520C7B1651260A9';
wwv_flow_imp.g_varchar2_table(12) := '0060316243914F444025021E26B2FCAA3945552AD51F54B5061080924F002C0BCA5BBA8908441781754E7BE1723D43D25500E40D3E22DBAD2700B24D04F4242080DDAFE780A0AE02905B56B29B31DCA76703906D22A02F0161BBD33E7FAE5E3EE8260093';
wwv_flow_imp.g_varchar2_table(13) := '1D25CB05802FF7A58B08C43A81454E7BE1663D20E82600398ED23280CDD12368B249048C4540BFB7005D0420BFB474B847643CE5B22EF68DD5F8E40D110083E8C972CE59C89F094D2F5D1EC01C47F16A407855D348C91811303401F623A7BD68B5D62E6A';
wwv_flow_imp.g_varchar2_table(14) := '2F003CC947592957BAE15A074BF6888081099C76CE9D9F0541605AFAA8B900E4388AA703C21E2D83245B44C01C04D80CA7BD68AF96BE6A2E00B4EC57CBE6255BE622A0FD67801E0250C1209FC84B17112002ED08B07D4E7B91A6675D682A00F95BB7667A';
wwv_flow_imp.g_varchar2_table(15) := 'ACE2051AFDA77E4F043A25C0AC6ED6B7BCA8E896567C341580C98ED26705B03F68151CD921022624F084D35EF827ADFCD658004A7E2D007FAB5570648708988D00037E53652F7C412BBF3515801C47F15E40B857ABE0C80E11301F016DC701B41380D5AB';
wwv_flow_imp.g_varchar2_table(16) := 'C59C39B3F851CA89E66B14F298086844404083B36C576FAC5E2D6961513301C8736CCD93201ED22228B24104CC4C80C1935D655FF8A51631682600B98ED21718D8AFB4088A6C10019313D06C2050330198ECA0014093774A725F23025AE60BD44C00721C';
wwv_flow_imp.g_varchar2_table(17) := '257CBFF3428D189219226066029AA50AD34C00721D25B402D0CC5D927CD78C80005456DA0BF3B430A89900E4384A2E03C8D02228B241044C4EE08AD35E38508B18B41100EF14603380382D82221B44C0E4045CCEEDBB12B4980AD44400C6ED5AD73BDE95';
wwv_flow_imp.g_varchar2_table(18) := '7CDBE48D42EE1301CD0858EB1B93CB972E6D50DBA0260290E770F491E0B9A97630543F11881602222C7D2BECF63AB5E3D1440072766F49478BE58ADAC150FD44206A08D83C19CE990B6BD58E47130128D8B16390CBD37251ED60A87E22102D04AC165B66';
wwv_flow_imp.g_varchar2_table(19) := 'F9ECD997D48E47130198B465CB50D16639A77630543F11881602528B67D8E1850BCFAB1D8F260290E7D834428255F394C76AC3A3FA89805A0444B84656D8179D51ABFED67A35118049A5A559A2C84EA81D0CD54F04A285802409A30FCF9F7F52ED78B411';
wwv_flow_imp.g_varchar2_table(20) := '80EDDBB345C955AD763054BF32024CF2EE381544515941BA5B7502421CC655DE5FF895DA86341280E26C51124800D46E4D05F57BEEDC41CB65EFC48C6D60062CBD7B2B284DB7AA4D4072B309878B8A8EAA6D8704406DC206ACDFFBF05F0698EF0C0A4180';
wwv_flow_imp.g_varchar2_table(21) := '6DD020587AF532A0B7B1E91209406CB6BBEA51CB0FFFA54E6697B8080C1C486F02AAB7407006480082E344772920E0B97DDBFB9BDF77F54A4C92FF56DFD8B6E2541681941405B5D2AD6A10200150836A0CD7E9BE750BAE2B6D8B31931393B030D77B3ECB';
wwv_flow_imp.g_varchar2_table(22) := 'D6CA4A120183F50D120083358899DD71D7DD82ABB6EDE1E7BFF917E4E622C96693C36A686941B1D3893B0D77FD615A333210979A6AE6B04DED3B0980A99BCF38CE7BEEDE454B4D8DDFA194E4642CC8C94582D5DACEC946B71B5B2B2ADA89806DF0605892';
wwv_flow_imp.g_varchar2_table(23) := '938D134C0C79420210438DAD56A85273339ACF9D079877BE5F7EF873F39010D7795A062E0225CE4ADCAAE7D9DBE50502881F3614627CBC5A2E52BD5D102001A0AE111601E676A3F9EC59308F47AE272921118BA64C4162170F7FAB312E029BCA0FA0A199';
wwv_flow_imp.g_varchar2_table(24) := 'E76F0184B838C40F1B26FF972EED08900068C73AFA2C318626FEF0B7B4C8B1592C7158525080948484A062AD6B68C0A64387E0F1B8BD22101F8F8461C3004193652341F918ED379100447B0BAB151F6368AEB908C937A0C71FD9F979F918A8706AAFA6AE';
wwv_flow_imp.g_varchar2_table(25) := '0E65CE4AF8960AC963017C4C802E6D08900068C339EAACB86AAFC25DD7967CE99EF1D9189B9E1E529CC7AE5CC117C7DA0EA889EBD70FD6B4B490EAA242CA08900028E3457703F03434A0E5C2053F8BACCCC198317A74586C761F3F8ED397DA72B9C40F19';
wwv_flow_imp.g_varchar2_table(26) := '0231C9BB80882EF5089000A8C7362A6BE6837DCD67CEF807FD7A272563C99429880B73A79F5B92B0A1BCDCBF50481E141C31827610AADC8B480054061C6DD5375FA8F17FF78BA2882553A72135C841BF9E58DCE4838207CB21F9B60FF39D837CF3105DEA';
wwv_flow_imp.g_varchar2_table(27) := '112001508F6DD4D5DC71A5DFB4F1E3312E3DB267B0741C0F90770FD21662D5FA1209806A68A3AB62E672A1E9CC59FF629FC1FD07C03E71822A413A8E56A3E6EA556FDDA205092386D3FA0055480324002A818DB66AF94A3FA9A9510E2BCE1287E5F7DEDB';
wwv_flow_imp.g_varchar2_table(28) := 'E54ABF70636F72B9F0C9FEFD70FBD607F0C1403E284857E4099000449E69D4D5D8716FBF1AAFFE1DA17DED5380F60BA8D2AF480054C11A4595F2D57EA7CF80B95D72507D5252F0605EBEEA0132C6B0E1D041FF7E01C16643C28811AADB8D35032400B1D6';
wwv_flow_imp.g_varchar2_table(29) := 'E20AE375D7D5C155DB7670CCA269F7A07F62A2C25A42BBFD5A7D3D361F2CF717A62422A171ECAE140940E499464F8DFCB7FFA953FE39FF482CF8510A27708190106745C2C811B4574029C46EEE27018820CC68ABCA75FD06DCD7AFF9C3EACBE7E5ADDEE4';
wwv_flow_imp.g_varchar2_table(30) := '1E5A5DCD6E17EA6EB71DF86C4D4F475C9F3E5A998F7A3B240051DFC4A105C857FC359D3AED9FF60BAD96C897122C16248C1A456F0111424B02102190D1568DEBDA35B86FDC306458D6010310D7B7AF217D339B532400666B318DFC6D3A79D2FFED3F2B6B';
wwv_flow_imp.g_varchar2_table(31) := '347232066A64B9733395972F63F729EFA96FF258C0A891BAFA132DC64900A2A525231847605A6FBECF7FF353CF203D42EBFD4375F34A531316BDFB963F6F00E5110C9564FB72240091E11855B5349F3D07A9B9498EC93E662CFE7DF65C43C4F70FDB1DD8';
wwv_flow_imp.g_varchar2_table(32) := '71E2B8EC8B98948CF821943824DC8621010897609495979A9AD07CEE9C3FAA5F2F7B18F7A60D3044947BAED6E2DBEB3FF1FB92307224840E59870DE1A8899C200130516369E16ACBA5CBF0DCF14EBB0DE9DB0F9F3EFCA87146DC19C3E28FFE8C4BB7EA64';
wwv_flow_imp.g_varchar2_table(33) := 'FFE2FAF48535DD18E2A445DBA8618304400DAA26AD931FE3DD74C23BD0C6AF17EDF3F1D8A82C4345F3DEC9E3F8D73287D727D182C4D1C6F2CF50B082708604200848B1724BE0A69F44AB0DA54F3D8D448B25ECF04FD5DF91EB18D52BFCA3C1EFBADD287C';
wwv_flow_imp.g_varchar2_table(34) := 'EF6DF01D83FCB20D19020BA50E0BB98D48004246177D05035FFF174D98849FCEB82FE4203F3875121F5439719AAF240C381E7C545A1A1E9B9C83552343FFCDFD4FBB77A2E44BEF91F6F419107213C9054900C2E31755A51B4F9C0424EF011FFFB2701116';
wwv_flow_imp.g_varchar2_table(35) := '0F19AA38BE268F07AFEEDB83AD47ABBB2DBB207B22FEF9DEE9880FE10D63FDB9B378B5788B5CBF60B579F707D0151201128090B0455F21A9B111CDE7CFFB03733CFD2CFAF80EF55412ED37366EC09180ECBEDD959D9439186F2F5AA2A47AF9DEEBCDCD28';
wwv_flow_imp.g_varchar2_table(36) := '7CE74D7F399A0D508CD05F800420747651553270E9EFA44183F1F662E50FE6AFAA0FE37FF67CEEE73279F010CCC81A8561BD7AC9FF76AEBE1E7B4E9E42554D5B4AF16FDD370B7F93AD3CB5D8631BD6E3AB2B97E57A698350E85D91042074765155523EE2';
wwv_flow_imp.g_varchar2_table(37) := 'CB774EDF0BF7CDC4DF664F5414DFB1DBB7F0E4876B20F9BEF7ED63C7617E176705949E380EC7575FC9F5F3CCC27F5AB10A637AA728B2F7DF47AAF0BBBD7BBC75D0A22045EC026F260108195DF4149477FE9D3CE90FE8ED475762521F659B6D56EFDF8B75';
wwv_flow_imp.g_varchar2_table(38) := '554EB98E51FD07E0F97BEFE916D01B7BF7E1D40DEF56E34773F3F1C3A9D314013D74E3069E5FFBA1BF4CE2D8B18ACAD3CD5E022400D413DA9DF4230A020E3CF7D710141ED019F8EDBF624A01F20676BF79A8E2F2657CE8CBF6933B6428FEB87091A29670';
wwv_flow_imp.g_varchar2_table(39) := '4912A6FFF1F7FE378EF8E1C3E978714504490042C0159D45DC376FC2E54BC33D2623036B1E5CA638D0196FBF89A616EF51DF7F377B3606F530E77FA9FE0EFE7BC70EF9FEE4F804ECFAC6338A6D3EBCEE639CB9E67D8BA0F30314E3A33780D090455FA996';
wwv_flow_imp.g_varchar2_table(40) := 'CB97C17700F26BD18489F8E98C998A835CB6F6239CBB715D2EF7ED59F723B38753822FDEB98D5FEEDC29DF3FBC5F1A3E79F811C5367FF0F92EFF74231D28AA181F094068C8A2AF54E000E0FF9A793FFE6A7CB6E220031FC6C2EC09983BB2FBFDFA8E5327';
wwv_flow_imp.g_varchar2_table(41) := '51FAA5F744E007264CC46B2188CE6F8F56E3979FEF92EBA063C5153719094068C8A2AF54E3F1E3FED57ABF58B21473072A3F8FEF8D635FE2FFEDF2BED2275AADF8EE1C3B926DD64E61DD6D69C12FB697F997F37EEFFE397866EC38C5601D972EE2FB1B37';
wwv_flow_imp.g_varchar2_table(42) := 'C8E5284988627C2400A1218BAE525273339ACF9EF507B5FE89A7303429597190D79A9BB0FCCF6B70D797476048FF7E783A7FEAD744803FFC6F1D2C478D2FDD584A4222D6AD7C2CA44547E7EEDEC5B23FBDEBF73571CC18E3EC5C544C509F02340BA00F77';
wwv_flow_imp.g_varchar2_table(43) := 'C358F5DCBD8B969A1ABF3F879EFF66C80FD1D69A0BF8C1E68DED629B3A623806F54E95FFADE6D62D1C3CD72636FCDFFEF3C187303BC47463CD1E8F3C13D07AD14C80F26E4502A09C59549508DC019860B561CF33CF8615DFBF551CC2BBE55F0455C7F3F7';
wwv_flow_imp.g_varchar2_table(44) := '4CC77726E704756F5737E5FFFE7FDA0460E850881A1D5A1296D3062A4C0260A0C6D0C315F7AD5B705DB9229BCE4849C1E6958F87EDC6FE6B57F14A6909AEF9B60177AC303D25053FB6CFC73D11C834B460CDFBB87AC7BBDDD89699098B6FD971D841C448';
wwv_flow_imp.g_varchar2_table(45) := '05240031D2D05D851978F457567A3A3E5CBA3C2244EEB85CD87BB516A76FD5E1C48DEBB088168CEAD31723535331233D03C9717111B1D36E2DC0C081B0F430FD1811A3515409094014356628A1049EFE53306C387E57B430946A742BF3DC964DA8B8E0DD';
wwv_flow_imp.g_varchar2_table(46) := 'C5489B8294370309807266515522701720DFC0F3EFF7CF31557C7FBF7D1B76FAD298C5F54F83B57F3F53F9AFB7B324007AB780CEF6F9C9BFFC33805FCBFE3220B7FA9EE93A7BA4CCFC0FF77E8ECF8E1C960BF1D382F8A94174054F8004207856517967A0';
wwv_flow_imp.g_varchar2_table(47) := '002C9F9C83574D2600AFEEDF8BF5BE5D88FCD050FE194057F00448008267159577F24D407C3310BF16644FC0EBF7CD32559CFFB86B074A8F799714D31B80F2A6230150CE2CAA4A048E01CC1899855FCE9B6FAAF85ED8568C7DA74F7B05A07F7F58FBF737';
wwv_flow_imp.g_varchar2_table(48) := '95FF7A3B4B02A0770BE86C9F9F00CC45805FA1ECCBD7D97D3CBDF1331CBEE45DC948A7062B6F0D1200E5CCA2AA44E042A0D1E919F8F352E5B900F404423901C2A34F02101E3FD3970EDC0B3028B50F36AE5865AA98DAAD04A4434214B71D09806264D155';
wwv_flow_imp.g_varchar2_table(49) := '20F030508B28CAE9C0CC72F104A4F7FCF1F7F04892EC326D0652DE722400CA99455589964B97C03704B55E1B9F7C1A834CB2A1E67CC35D3CF47EDB76604BEFDE726A30BA82274002103CABE8BA9331C80F7F7D7DBBB88C741C784FC077D55EC1773E5DD7';
wwv_flow_imp.g_varchar2_table(50) := 'EE36BE1948160185494D7BB215AD3F270188D696ED21AE8EBFF95B6F7F695E21568D1C15512ABB6BBDBB0D67A66744B4DE76270507D44C6F02C1632601089E55D4DCD9F1E1B758E2E0F1B8E5F89E2A98867FCCCB8F58AC9B6ACEE3E5CD9BE4FA5E5FB404';
wwv_flow_imp.g_varchar2_table(51) := '0B320747ACEE9F1D2CC70787CAE5FA026390FF9F3E0782E24C021014A6E8B9A9E5E2C576AFFDC3070EC280D4541CF0ADA69B326C187E5FF440C4027EEDE001AC397450AEEFB1FC02BC38A52062753FB379A3FF98B169E3C7A3B6EE16CE5EBEE4AF9F44A0';
wwv_flow_imp.g_varchar2_table(52) := '67D424003D338A8E3BF8373F7FF8EFDEF5C733342303B3C78E435D63233E3BE0CDE21367B160CF33CF214E142312F74FCBBFC09F2B0EC975ADCA9B82970AA646A4DE16C983FBDEFC837F06E0C1A9D3909A98881D5F1DC3795F8213F94D2039594E144263';
wwv_flow_imp.g_varchar2_table(53) := '029D6327018848773478255D3CFCF78F19075114C08FF3FB60CFE770BB5D72206F3DBA1293151E0DD61501B504E0D08DEB787EED473ED18AC3E333BD67194812C3F6A3475173FD6ADB9B008940971D9404C0E0CF6ED8EE75F2F00FEE3F0073B2B3E587BF';
wwv_flow_imp.g_varchar2_table(54) := 'F572F087E66AADFCBFDF9F3D074F8F519EA6BB335FD51280C034E443D2D33137E02C031281E07B0D0940F0AC4C7967C76FFE41690360E70F7F8769B223172FE2D089E3728C914C0CD24E00F2A7E0A52991F904F84ED936EC3A7942F6B760CC58647798FF';
wwv_flow_imp.g_varchar2_table(55) := 'E78B84B6551FC5E5C037013E45C83F07E8F213200188E2CEE0AABD0A779D77AB2FBF06F64F931F7EBEE2AFE3C5136B6EF10DD6F54D4AC6B6279E8A081935DE00186398F5EEDB68F09D41F040C154A4257FFD2C03BE42B0B4FA086A7D6710F08068CB70FB';
wwv_flow_imp.g_varchar2_table(56) := '662501884837375E25819B7CB87703FAF6C5FC8993BA1DDCFBE0F3CFE1F28D03BCB3621526A6F6093B3035DE002A6FDEC0B31F7B8F064FB0D9B062FA8C2EFD747311387218577D390FF88D364A1E4A6F0061F76C0357C0DC6E34F13DF27C740F40AFA464';
wwv_flow_imp.g_varchar2_table(57) := '2C9E3205B61E46F6F79D3A89E3172EC865BE51300DFF3B02EB01D47803F8D74307F1DEC103B29FE3860DC3B411DD9F43D8EC7663D3A143A86F6CF0B69A202261E4080811CA4C6CE0AED0A36BF406D02322F3DD1078DA6F9C250E4B0A0AD03B21A1C740AE';
wwv_flow_imp.g_varchar2_table(58) := 'DCBE8D62DF945D5AAFDE285EF578D8D367117F03600C73DF7F07B71A1BE57816E64FC180DEBD7B8CED565313369697FB173C59525361CB88ECCAC41E9D30E00D2400066C94705C622D2D683A73C65F45FEE83198A860E0EBA37DFBD0E8FBB6FEDDF24750';
wwv_flow_imp.g_varchar2_table(59) := 'D03F2D1C7710E937802FAE5FC3DF7CF2B1EC53A22D1E8F4E0F3E8969554D0D2A7D03877C5D40C2F0E1106CB6B0E2337B611200B3B76007FF0307FE921212B06CEAB44E07FDBA0ABBFCCC191CF59DDFB7322F1F2F174C0B8B50A405E02707BEC04795DE85';
wwv_flow_imp.g_varchar2_table(60) := '4513878F40FEF0E141FBC7C703D6EDDF8FC69666B90C0D0802240041771F73DCD874F62C58B3B783E78CCA42CE90218A1CBF76F72E36977BBFAF93E21350FCC49348B2847E8A4F2405A0C1E346D1FBEFF947FF174F9D867E49498AE2AB387F0E877D3904';
wwv_flow_imp.g_varchar2_table(61) := 'C5F804C40F1FA6A87CB4DD4C0210452DCA3C1E349D3CE98F68E194020C08E1ACBC0D15875077FBB65CCF3FCDB5E3C9AC3121538AA400BC73E22BFCDFED65B22FA9BD7B6369FE14C57ED5DEBE8DADBE710E5E3861F46808115AF6ACD81903142001304023';
wwv_flow_imp.g_varchar2_table(62) := '44CA054F43035A7CA3F8BCCE2767CD6EB7DA2F583B67AE5FC72EDF611B0353789AB0951042DC5F1F2901F030094B3E5C033E50C9AFD9932661583FE519805B24096B76EDF4A3881F3204A2C2B78860399AE13E120033B452903E061EF51D6FB3616537F3';
wwv_flow_imp.g_varchar2_table(63) := 'E3DD55C997D27E72603F1A9A9AE4DB7EBE68098A42DCC61B2901D85273012F6EDE28FBD32B31491EDB085193F0FEEEDDFED980583F51980420C887CB0CB7052EFE49ED9D82A5F9A1EFEBFFF2F2651CF8EA981C76F6A04CBCB7F8C19010446A1AF0F10D9F';
wwv_flow_imp.g_varchar2_table(64) := 'E2D815EF56DF7BC68DC7D830A6F0D6971FC06DDFAEC8585F1444021052B736662177DD2DB87CD977D25252F1405E5EC88EF211F38FF7ED438BAB45AEE3BF962E0B29A34F24DE00CA2E5FC2F73EFB54F6C366B561C5BDD343FAB46985B1A9A212D76F7BCF';
wwv_flow_imp.g_varchar2_table(65) := '43B46664202E3535644E662F480260F6160CF03F9202C0AB755EB800E729EFA022FFDE5EBBFC91AF6D22EA095FB802C085E8A18F3FC4A55BDE0736376B34260F0E2FAB1009405BAB9100F4D4834DF4F3480B001F30FB24E02DE0E5798558A9305F60B802';
wwv_flow_imp.g_varchar2_table(66) := 'F0FEC9E3F87999436E05BEEE7FD9B47B60B558C26A1512001280B03A90510B475A00789C5FD5D662FF9747E590531212B1E9B12790A4600D7D380270C7E5C2031FBCEF9FF79F9E3D01A32370FC3709000980519FE1B0FC524300F8D6DBF5E5E5B8D3E04D';
wwv_flow_imp.g_varchar2_table(67) := '25B6222F1FAF28581D188E00FC68FF5E7CE23BFA3B35B917961644269F2009000940580F9A510BAB21003CD64BB76FA33460F1CC6F973F82A941EE11085500F65EBB8A6FAD5BEB47BD604A01D24358D4D4595B9100900018F5190ECB2FB504803BE5385A';
wwv_flow_imp.g_varchar2_table(68) := '8D9AABDE3C7BE9292958FBF08AA03E05421100FEEABFFCA335B8E19BAA1B9A9E8139E3C787C526B03009000940C43A93912A0A5C0710EE3460C7B8CEDCB8815D87ABFCFFFCD0E41CFCE89E9E77E285B20EE0953D9F6363F561BFADFB274EC2F0FECA57FD';
wwv_flow_imp.g_varchar2_table(69) := '75D53624002400467A6E23E68B5A6F00E7EB6E62E7E1C3907C8770B63AFCCB879663C680F46EFD57FA06B0E3CA65FCC386F5EDEAB48816CC9A3411432394A99804800420620F9D912A524300AA6A2EA2F2A4375968C72B3529091F3CBC0219DD241B5122';
wwv_flow_imp.g_varchar2_table(70) := '00171B1BF0D8471FA1BED99BECA3E3A534B701BD01F4DC3B691D40CF8C4C734724058067D5DD73E2044E5FBAE88F9FA7D0E2076FF2A3C578DA317E8DCD1888B7162D417C1773F3C10A40A3C7832737ACC3996BD7E47A3BB3C5FF7D54E6604CCFCA52BC20';
wwv_flow_imp.g_varchar2_table(71) := '29B011E90D80DE004CF3502B71345202D0ECF160FBD1EA76D97479E61CBE738E3F985263239ACF9FF7BB56347E3C7E3E7376A7AE0625008CE1EF7738B0F38437CD37BFE2870E859898280B4DF3850BE0998E5AAFF47EFD30377B026C212E082201200150';
wwv_flow_imp.g_varchar2_table(72) := 'F25C99E6DE480C02D6B7B4A0A4B2B22D81260031891FAF35A8DDBE79D7F5EB705FBFEE67F37733EFC75F071CCED1FA836006017F73F4087EFDF96E7F5D71FDD360EDDFCFFFFF4C92D072F11224DF5A04FE8394E45E983779327A8590D28B048004C0340F';
wwv_flow_imp.g_varchar2_table(73) := 'B51247C315007E3680E3F061FF06206EDB929222A7D1EEEC6ABE50D3EEA1FC51D1423C34AC7D8AAE400158993F052F773818E4E333A7F1E3D2627FF55C6CE28774BED63F30D9292FC0370671114853B83E8004800440C973659A7BC31180B3D7AF6377F5';
wwv_flow_imp.g_varchar2_table(74) := '11F06FFFD6CB9A9686B87E6DBF893B82E0BF999BCF9E03F3ED18E43FCF1B321453320723C1B75CB8ECF42954FBC611260CCAC45CDF5E8246B70BE53517E1AC69FB9410AC3639455777197ADC376EC0E51B27E0F6F8094733274C54344D48024002609A87';
wwv_flow_imp.g_varchar2_table(75) := '5A89A3A10A40E0AEBF567B7CB08F1FAFDDD3253537CB5988783AB2702EC16291BFFB83C9D21B98F8A4D5A6925D8224002400E1F455C396553A08C833FFEC3A7E0CE7028ED3866841FCE04C79002ED88B0FD4C9DFE84D9D4FDFF5540F4FCE691B9CA9E8A0';
wwv_flow_imp.g_varchar2_table(76) := '0E7920B2E62220B509CFC84199989135BAC75C01240024003DF54953FE5CC91B4093DB8DEDD5D5B81A7076A0106795BFBF83F92DDC19204F7D3DA4A626392B31DF44C42F3E7ADF3A65C867105AEBE6390685F878880909B028FC866FB5CDEBE6E310CC77';
wwv_flow_imp.g_varchar2_table(77) := '9C19FF777E041A9F2188EF66C72209000980291FF09E9C0EF60DE04E53134AAAAA70B7F5A82C3EEF1E1FEF9DE60B716AAD2BDF5AAE5C81E7D62DF9C76A9CC6234F13D6D4F853A1733B3C6760616E6E973304240024003D3D4BA6FC79306F00176EDEC4EE';
wwv_flow_imp.g_varchar2_table(78) := 'A347FD8780CA0F66329FE6CB0CFB18B0CEA0050A405C9F3EB0A677BF743824F08CC99F0381D3847C866066763606F7F9FA01A72400240021F533A317EA4A001ADD6EDC6D6EC697176B70E69237B166EBA5DA43E933A089007462AB35BE118306617CE660';
wwv_flow_imp.g_varchar2_table(79) := 'F96D20C16A95FF79E3A10ADCB8E37D2BA19C806CC2E1A2226FC617152F41C5BAFD554FDA5E9C2D4A42B516B68C6823F0132018FFAC0306C8C763A979A9FD09D0D1F78ED3843DC546024002D0531F31CDCF3B9B1EEBCC79FEBD6F4B4F5734D21F2A84C0B3';
wwv_flow_imp.g_varchar2_table(80) := '0AB53A8B8FCF1070E1095C3EDC95FFC14E77861ABFD1CBD16620A3B79002FFF88058D399B3EDA6C6028BF3E9364B6A0AF86BBF5697D4D020AFE5E757EBFA7EAD6CBB6FDE84E7F61D48BED38E3BDA95D71E8C1811F1814FADE28B841D1280485034521D8C';
wwv_flow_imp.g_varchar2_table(81) := 'C99B75FC179F6EB35A15CDB1473A1C799110F743C733F8B83832970B0858E918CB4782B5B671540940EECE92B1CC0DEF713674110122D023014912461F9E3FBFED44D91E4B847683368380A5A559A2C8DAF69486E62B952202314340846B64857DD119B5';
wwv_flow_imp.g_varchar2_table(82) := '03D64400F21C9B4648B09E563B18AA9F08440B01A9C533ECF0C2856D3BB2540A4C130198B465CB50D16639A7520C542D11883A02568B2DB37CF6ECF68B43548852130128D8B16390CBD3D296C34A8540A84A221055046C9E0CE7CC85B56AC7A48900E439';
wwv_flow_imp.g_varchar2_table(83) := '1C7D24786EAA1D0CD54F04A28580084BDF0ABBDD7BF2AA8A97260230E1C8115B5CEDA56615E3A0AA8940541170A7CE8A7A980000067F494441540F8AAF9E38B12DE1A24AD1692200DCF71C4749135F73A2521C542D11882602CD4E7B618216016929007C';
wwv_flow_imp.g_varchar2_table(84) := '4AA37D623A2D22241B44C07C04CE3AED8523B4705B430128DE0B08F76A1114D92002E626206C77DAE7CFD522060D05A0E41300CBB4088A6C10019313F8C0692F7C5C8B183413805C47C9CF18F0032D82221B44C0CC0404E0F54A7BE18B5AC4A09900E438';
wwv_flow_imp.g_varchar2_table(85) := '4AB8A2BDAF4550648308989CC0134E7BE19FB48841330198ECD8325E8045F50C275A40231B44404D020C9EEC2AFBC22FD5B4D15AB7660280D5ABC59CD9B35C10206A1118D92002A62420A0C159B6AB3756AF96B4F05F3B01F0AE05E0AA364E8BC0C80611';
wwv_flow_imp.g_varchar2_table(86) := '302701B6CF692F9AAE95EF5A0B00FFAE794CABE0C80E11301B0106FCA6CA5EF882567E6B2A00B98ED21718D8AFB40A8EEC1001B31110207CABD23EFFD75AF9ADA900E4381C43000FDF16ACA95DAD60921D22102601667149430E2D58A0D9CE59CD1FC45C';
wwv_flow_imp.g_varchar2_table(87) := '4749050372C30445C58940D4111080CA4A7B619E9681E92100B42048CB16265BA621A0E502A056289A0B409EA378AE04C1619A56214789806604D80CA7BD68AF66E6F4F8162F3870C0EABA53779C76066AD9CC64CBF004049CEBC72C596576BB5B4B5F35';
wwv_flow_imp.g_varchar2_table(88) := '7F03E0C1E5388A5703C2AB5A064AB68880B109B01F39ED45ABB5F6511701C82F2D1DEE1119CF12AC8B7DAD21933D22D00301B7DBCDB2AA8B8A344F9CABDB0398E328D90C6021750D224004B0CE692F5CAE0707DD04800603F5686EB26944022298BDC25E';
wwv_flow_imp.g_varchar2_table(89) := '54A6876FBA0980772C80DE02F46874B26928025B9CF6C207F4F248570198B86D5BAE45902AF40A9EEC1201BD093091E554CD29AAD2CB0F5D05C0F71640A9C2F46A7DB2AB3701DDBEFD5B03D75D00263A1CA32DF01C02D04BEFD620FB44404302772549C8';
wwv_flow_imp.g_varchar2_table(90) := 'D5E204E0EE62D25D00BC6F01A5DF05D82F34844FA68880AE04B4DEF5D755B0861080956BD6588E0DE8C7474167E9DA2A649C08684280ED76DA8B0CD1D70D21009C397D0A68D2F3C888FE040CF1EA6F983180C0F6C8D956FC2820ACA1BC81FAF752F24005';
wwv_flow_imp.g_varchar2_table(91) := '020C92200A2B2AE7CE5FAB42ED21556998378056EF731DC52F3208AF85140D1522028626207CCF699FFF1F4672D17002C0E1E46E2B7E8309C273460245BE10813009FCA7D35EF8DD30EB887871430A00DF32ECBE53F719038A221E315548043426F0970C';
wwv_flow_imp.g_varchar2_table(92) := '586BABB6EF5AA155AA6F25E11952007800059F7E9AE4EA9DF436187B444940742F1130188175D6FAC627CB972E6D30985FB23B861500D93BC684DCB26DFFCCC07E684478E41311E89600C36B4EFBFC572008CCA8A48C2D003E6A39DB8A9F8120BC01C062';
wwv_flow_imp.g_varchar2_table(93) := '5490E41711F01310D0C2189EAFB217BE6B742AA610000E3167DBB67B21486FD2C94246EF5231EF5F9504E9F9C3F60507CC40C23402C0618E70381252E07E11105E0660350360F2316608B818C3CF6C297D7E5C3E75AACB2C519B4A005AA1E696948C6516';
wwv_flow_imp.g_varchar2_table(94) := 'FC1B80A566014D7E462D01FE7DFF910796978ED8ED27CC16A52905A01572DEB6AD332541781D10669A0D3CF96B7E020C281345F6FDCA39457C37AB292F530B402BF11C47F174307C1B82B00A40BC295B829C360B816601F85060D2AF2AE62DD86D16A7BB';
wwv_flow_imp.g_varchar2_table(95) := 'F2332A04A035B8028723CD05E95980F1D355B3CCDE38E4BF81080838C524FCC62658DE28B7DBAF19C8B3B05C892A01082491BBAD7821138587C0E47182A16151A2C2B14AE03C98B04112D9DAC3730B8BA31142D40A406063F1DC83A2E0592A084211180A';
wwv_flow_imp.g_varchar2_table(96) := '0024476363524C6113B80B01E502502230E9D30AFB82A8CF57191302D0B15B4C2E2919258A2C4F12855C81C927150F878074306486DD85A802E3131070F12F6346B500CE320195A2C42A3D4CACD43B3D971EE0625200BA033D7AE3C6F85E8989892D4082';
wwv_flow_imp.g_varchar2_table(97) := '288A561188E37F0497CBEAE27F1784382608C44D8FDEDA834D81312631E6B6026E66B5BA24C02DFF9124970D68AA6F6C6C3CB17871B3015DD7CD25EAC8BAA127C344407F022400FAB70179400474234002A01B7A324C04F4274002A07F1B900744403702';
wwv_flow_imp.g_varchar2_table(98) := '2400BAA127C344407F022400FAB70179400474234002A01B7A324C04F4274002A07F1B9007444037022400BAA127C344407F022400FAB70179400474234002A01B7A324C04F4274002A07F1B9007444037022400BAA127C344407F022400FAB701794004';
wwv_flow_imp.g_varchar2_table(99) := '74234002A01B7A324C04F4274002A07F1B9007444037022400BAA127C344407F022400FAB70179400474234002A01B7A324C04F4274002A07F1B9007444037022400BAA127C344407F022400FAB70179400474234002A01B7A324C04F4274002A07F1B90';
wwv_flow_imp.g_varchar2_table(100) := '07444037022400BAA127C344407F02FF1F3B1E54F1B49EC79F0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57431476181032081973)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA000000017352474200AECE1CE90000200049444154785EEDDD779814D7812EFCB7F3E4C8E448660843100224A240129250966539ACD77EEC7596EDB5BDBBDFAE37DE6F';
wwv_flow_imp.g_varchar2_table(2) := '1DD6799D76AFED5DADFDEDB5656523A1044802012223449819E20C4CCE3974FEEE6984564253D5D53D5DA9EBADE7F1E33F547DC2EFD4D06F579D3AC756FBDACE307850800214A00005286029011B0380A5C69B9DA500052840010A440418007821508002';
wwv_flow_imp.g_varchar2_table(3) := '14A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC32052840010A50';
wwv_flow_imp.g_varchar2_table(4) := '800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA600052840010A3000F01AA000052840010A58508001C08283CE';
wwv_flow_imp.g_varchar2_table(5) := '2E53800214A000051800780D50800214A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080';
wwv_flow_imp.g_varchar2_table(6) := '050518002C38E8EC32052840010A50800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA600052840010A3000F01A';
wwv_flow_imp.g_varchar2_table(7) := 'A000052840010A58508001C08283CE2E53800214A000051800780D50800214A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A5080';
wwv_flow_imp.g_varchar2_table(8) := '0214A0000300AF010A50800214A080050518002C38E8EC32052840010A50800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A0000380';
wwv_flow_imp.g_varchar2_table(9) := '05079D5DA600052840010A3000F01AA000052840010A58508001C08283CE2E53800214A000051800780D50800214A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A00005';
wwv_flow_imp.g_varchar2_table(10) := '2840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC32052840010A50800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A5080021460';
wwv_flow_imp.g_varchar2_table(11) := '00E03540010A50800214B0A000038005079D5DA600052840010A3000F01AA000052840010A58508001C08283CE2E53800214A000051800780D50800214A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB';
wwv_flow_imp.g_varchar2_table(12) := '14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC32052840010A50800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A00005286041';
wwv_flow_imp.g_varchar2_table(13) := '0106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA600052840010A3000F01AA000052840010A58508001C08283CE2E53800214A000051800780D50800214A000052C28C00060C14167972940010A5080020C00BC0628';
wwv_flow_imp.g_varchar2_table(14) := '40010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC32052840010A50800180D700052840010A50C082020C00161C7476990214A000';
wwv_flow_imp.g_varchar2_table(15) := '0528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA600052840010A3000F01AA000052840010A58508001C08283CE2E53800214A000051800780D50800214A000052C28C00060C1';
wwv_flow_imp.g_varchar2_table(16) := '4167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC32052840010A50800180D700052840010A';
wwv_flow_imp.g_varchar2_table(17) := '50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA600052840010A3000F01AA000052840010A58508001C08283CE2E53800214A000051800';
wwv_flow_imp.g_varchar2_table(18) := '780D50800214A000052C28C00060C14167972940010A5080020C00BC062840010A50800216146000B0E0A0B3CB14A0000528400106005E0314A000052840010B0A30005870D0D9650A50800214A0000300AF010A50800214A080050518002C38E8EC3205';
wwv_flow_imp.g_varchar2_table(19) := '2840010A50800180D700052840010A50C082020C00161C7476990214A0000528C000C06B800214A000052860410106000B0E3ABB4C010A508002146000E03540010A50800214B0A000038005079D5DA6C03B02E13060B311840214B0A000038005079D5D';
wwv_flow_imp.g_varchar2_table(20) := 'B6B840380C7F5F3F42E36340280C4766061C9999B0399D168761F729602D0106006B8D377B6B718190D70B5F6B1BC201FF7B246C4E17DC65A5B07B3C161762F729601D010600EB8C357B6A7181E0F030FCDD3DEFFBF2BFCA627338E02A2C8CDC0DE04101';
wwv_flow_imp.g_varchar2_table(21) := '0A24BF000340F28F317B480104C7C6E06B6B074241590DF1182012023232A846010A24B9000340920F30BB4781C0E020FC5DDD4038A40CC36683BBA8088EAC2C65E7F32C0A50C094020C00A61C36369A02CA04020303F0F7F446FDE5FFBED26C76B8F2F3';
wwv_flow_imp.g_varchar2_table(22) := 'E0CCCB535611CFA200054C27C00060BA21638329A040201C46E4CBBFBB5BC1C9D2A738F3A74582000F0A5020F9041800926F4CD9230A446EF90706FA1322E1CCC989CC0BE041010A2497000340728D277B637501F18E7F4F0F02FD89F9F2BFCAE9C8CE8E';
wwv_flow_imp.g_varchar2_table(23) := 'CC0BE041010A248F000340F28C257B4281C82D7FA55FFEE92E17260004FDEF5D13408AD1999B0B574101952940812411600048928164372C2E100EC3D7D585E0E0A0228882BC7CAC993E03A376A0BEA909CD0AE70A300428E2E549143085000380298689';
wwv_flow_imp.g_varchar2_table(24) := '8DA4808C80B8EDDFDB8B405F9F22A6A29C5CACAEA9419ACB15397FDCEBC5DEF3E7D0D9DBABE8F3E2CD00D7B4698ACEE54914A080710518008C3B366C1905A20BC4F8CBBF347F1AD6D7D4C061B7BFA7EC602884DD0DF568EBE9895E2700677E3E5CF9F98A';
wwv_flow_imp.g_varchar2_table(25) := 'CEE54914A080310518008C392E6C1505A20B882FFFCE4E048786A29F0BA0ACA000EB66CF814362D39F71BF1F472F5E44536787A2F2C44241EEE26245E7F2240A50C078020C00C61B13B68802D105629CED1FF9F29F33170E8743B6EC09BF1FFBCF9F476B';
wwv_flow_imp.g_varchar2_table(26) := '7757F436883B019C18A8C8892751C088020C00461C15B6890251046299ED5F595484D5B36647FDF2BF5A652814C6DE330DB8AC340470B1205EAF1430A500038029878D8DB6B2C095B5FDBB8070382A43456111D6CC56FEE57FB540AFDF8F638D8DB8D0D1';
wwv_flow_imp.g_varchar2_table(27) := '1EB50E8865830BA6412C18C4830214308F00038079C68A2DA5C0955DFD5A5B957DF9171462DDBC79B0D96C71C97983411C38D380662513036D3678CACA604F4B8BAB2E7E880214D05E8001407B73D64881B80482A3A3F07776221C0844FDFCF4D232AC9A';
wwv_flow_imp.g_varchar2_table(28) := '3E5DF16D7FA902C3E130DE387F1E8DED6D51EBB4391C70979430044495E20914308600038031C681ADA080AC40D8E783B7A515E140F455FBCA0B0BB156CCF68F32E14F29B92F10C091C6465C541002EC9E14B84B8A6173BB9516CFF32840019D04180074';
wwv_flow_imp.g_varchar2_table(29) := '8267B514502A207EF17B2F372BFAF22FCECFC7C69A05B0DBE3BBED2FD5A68960087BEB4EA3A33FFA6243368F079E8A0AD8AE596B40697F791E0528A08D00038036CEAC85027109844321F8DADA101A1B8BFAF9ECCC4CDCBA60213C2AFDFA9EF0F9F1E2C9';
wwv_flow_imp.g_varchar2_table(30) := '13181D1D89DA164766E6953502E29C7F10B5029E40010A4C59800160CA842C8002EA09F8DA3B101C8EBED04FAAD3895B962C4596CA93F0BA8687B1B7BE0E6313621B21F9432C172C960DE641010A18538001C098E3C25651008181812BAFFB45393C4E27';
wwv_flow_imp.g_varchar2_table(31) := '56CF5F80528D5EC3BB343080374E9D4230148CD634B88A8AE0CCCE8E7A1E4FA00005B4176000D0DE9C355220AA40706404BE8E4E20CA97ACDD66C30D35F3315DE3CD79CE7775E1C09933403824DF17F17A606525EC1E4FD43EF3040A50405B0106006DBD';
wwv_flow_imp.g_varchar2_table(32) := '591B05A20A4426FD35B720ECF7453D77E59CB998ADD37AFCC75B5A70EAE285A86D8CBC1950560A9BC41E04510BE00914A0802A020C00AAB0B2500AC4271099F4D7D28AD0C478D402E65454E2FAEAE9FACDB30B8771A0F122CEB7B4446DAB233D1DEED252';
wwv_flow_imp.g_varchar2_table(33) := '4E0A8C2AC51328A09D00038076D6AC8902F202316CF023DEF5179BFBD8757ED54EEC1BB0E74C3D9ABBBBA38EAE937B064435E20914D0528001404B6DD645011901A593FE0AB3B2B166E142A419E4967A3018C4CE53A7D03D3810757CDD65651077037850';
wwv_flow_imp.g_varchar2_table(34) := '8002FA0B3000E83F066C010510F27A23CFFDA34DFA4B4B4BC32D8B6A9169B04975233E1F769D3C8181D151D9D1B4B9DC709796705220AF790A18408001C00083C026585B404CFAF3B5B621E4957FB7DEE974E2D6DAC5C8CBC8302498582360F7A953F046';
wwv_flow_imp.g_varchar2_table(35) := '99BC28360CF294971BB20F6C1405AC24C00060A5D1665F0D2920DEF517B7FFE50EB1B0EFEA850B519D976FC83E5C6D54736F2F769F3E15B58D9C0F10958827504075010600D589590105A405028383F07775477D9F7E614515165757C5BDB5AF56632076';
wwv_flow_imp.g_varchar2_table(36) := '0F3C70E1022EB4B5CA5769B345960A164B06F3A00005F4116000D0C79DB5520061BF1FDECB97110ECAAFA8979D9985DB6A6BE14AD0EE7E6AD3FB0341BCF8D6710C45D93340CC07F05494737D00B50784E5534042800180970605741050BAC98FCBE1C4E6';
wwv_flow_imp.g_varchar2_table(37) := 'A54B91A3F21AFF8926E81E19C12B274E201065FB624746C695F501785080029A0B3000684ECE0A2900F87B7A10E893DF5A573CF75F36771E6A8A8A4C4976B1AB136F3434446DBBBBA4848F02A22AF1040A245E800120F1A62C9102B202C1B131F85A5B81';
wwv_flow_imp.g_varchar2_table(38) := '7058F6BC59A5A558356BB66935C57C80D7CF34A039CA8646368703EEF272BE1A68DA9166C3CD2AC00060D69163BB4D291059E75F3CF70F0464DB9F9991893BC4737F832CF6132FB63710C4F613C7313832225B84D82FC05355196F35FC1C052810870003';
wwv_flow_imp.g_varchar2_table(39) := '401C68FC0805E2151033FE0303FDB21F77D9EDD8585B8B82ACE4D846B7756000FBEAEAE08B321FC0555808A7465B1AC73B7EFC1C0592498001209946937D31B440648BDFF6F6A8B7FE17CD9885C5E56586EE4BAC8DAB6F6DC5D10BE7E53FC6AD836365E5';
wwv_flow_imp.g_varchar2_table(40) := 'F91498920003C094F8F8610A2814088731D17429EA16BF650585583B6F1E9C36310530790EF1D6C3AEBA3AB4F6F5CA764AEC13E02A29814DE74D8E92479E3DA180B4000300AF0E0AA82D2076F9EB16B7FEE557FB4BF1A4E0E6DA5AE4A4A6AADD225DCA1F';
wwv_flow_imp.g_varchar2_table(41) := 'F3F9F0CA5BC731382EBFD5B1333F1FAE7C63AF78A80B202BA54082051800120CCAE22870AD407078F8CAAD7F9943FCDE5FBFA816E5B9B9490DD8D4D78BFD7575088642323F4B6C48A9AA82CDED4E6A0B768E027A0B3000E83D02AC3FA905946EF433ABB4';
wwv_flow_imp.g_varchar2_table(42) := '0CAB66CE0492ECD6FFB5831B0A8571A0F1022E8AD720650E7B5A3A3C65A549EF91D4173F3B6778010600C30F111B68660125B3FEB3525371D392A5C874B9CCDC55C56D1FF6FAB0EDC8610483F2AF428AB5011C265B015131024FA480010418000C30086C';
wwv_flow_imp.g_varchar2_table(43) := '42720A84BCDEC83BFFD116FC59515383390585C98920D1ABFA8E761C3D7B56B6CF368F27B26DB05828880705289078010680C49BB2440A44BEF4C5737FF1EA9FDC515850804D73E7C161B159EF6211C4EDA74FA23BCA72C88EACACC8AE813C284081C40B';
wwv_flow_imp.g_varchar2_table(44) := '300024DE942552004A26FE892FFDCDD72D475E92CEFA8F7619B40D0F63CF8913F0477914E0A9AAE232C1D130F9DF2910870003401C68FC08056405C261782F3723E49D903D6D4659056E9C39C3D298C79A9B51D77851D6C09129EE02147142A0A5AF1476';
wwv_flow_imp.g_varchar2_table(45) := '5E0D010600355459A6A50594ECF497919E894DB58B2C33F14FEA82F0068378F6C86178BD5ED96B863B065AFA4F8A9D57498001402558166B4D81B0DF1F59F10F6199F7DC01ACAD5D8C2AAE7B1FB948CE7777E3407D9DEC056373BA9032BD9A7701ACF967';
wwv_flow_imp.g_varchar2_table(46) := 'C55EAB24C000A0122C8BB5A04064C5BF9EA89BFD141714E2A6B9732D37F14FEA8A106B03BC7CA601BDDD5DB2178D337F1A5CF97916BCB0D8650AA823C000A08E2B4BB5A040686C0CDED636F95FFF361BEE58B112791E8F0585A4BBDC393A825DC7DF929F';
wwv_flow_imp.g_varchar2_table(47) := '1068B3237556F22F96C40B83025A0930006825CD7A925EC0DBD2021102E48ED9955558595D9DF4163177301CC6F1B6369C8AB26320F7098859961FA080A40003002F0E0A244020343E0E1100E416FDC9C9C8C4869A1A6458F4B53F59E67018235E2F76BE';
wwv_flow_imp.g_varchar2_table(48) := 'F5164664DE9EB0399D709795F1B5C0045CB32C82020C00BC0628900081C86B7F13F2BBDC2D28AFC0E28A4AD8ECC9B5D56F02F8224588B900272F5FC2E9D61684650A75E6E4C2555890A86A590E052C2BC00060D9A167C71325A064D19FAB7539EC0EA478';
wwv_flow_imp.g_varchar2_table(49) := '3C101140EE4B2E516D334D39E110267C7E0443C1E84D1686D55510770378508002F10B3000C46FC74F522072CBDFDBDA1AF5D93FA9122BE0C8CE86BBB090AF05269695A5594C8001C06203CEEE2656203834045F6767D40D7F125B2B4B13DB267B2A2B39';
wwv_flow_imp.g_varchar2_table(50) := '1780970205A620C00030053C7E9402134D4D08FB7C84D041207217A0A848879A592505924380012039C691BDD04140ECF4E76B6BD3A166561911B03BE0292D813D2D8D2014A0401C020C0071A0F12314088742F0B5B4469DF94F2975051C999910FB04F0';
wwv_flow_imp.g_varchar2_table(51) := 'A000056217600088DD8C9FA00022CFFE3B3A28A1B780CD1ED923806F04E83D10ACDF8C020C00661C35B6595F0185DBFD66A4A621934BFEC63D56618431E6F562685C7E7D05EE111037313F68710106008B5F00EC7EEC02C1B131F8A2ACF97F7FED12FCDD';
wwv_flow_imp.g_varchar2_table(52) := 'F2EBC564751E710BD8E00B05F1DD4307F1F4E95392A5889D023D15E5B0B95C71D7C40F52C08A020C00561C75F6794A02BED65604474725CBC874BBF1A32D7761795EFE94EAE187AF089C191AC4A79EDD8A51992582791780570B056217600088DD8C9FB0';
wwv_flow_imp.g_varchar2_table(53) := 'B08078E54FBCFA27775C5F3D1D3FBF6923DC768785A512D7756F3088BFDEBB07BBCE9F95BD0B20E602F0964BE2DC5952F20B300024FF18B3870914F0F7F420D0D72759A2DBE1C03FDEB21977949527B05616F55A471BBEF6FC3659085761119C39D9C4A2';
wwv_flow_imp.g_varchar2_table(54) := '0005140A30002884E269140879BDF0B5B4201C945EAFBE3A3717BFDE7237A671F25F422F9801BF0F9F7EF1059CEFEE92BE0BE07623A5AA8A7701122ACFC292598001209947977D4BA840A0BF1FFEEE6EE92F20009FBB71353E53B320A1F5B23020140EE3';
wwv_flow_imp.g_varchar2_table(55) := '91B30DF8C5DE3DB21C91E58153524846010A281060005080C453282004BCCDCD08C9BC925694958D9FDE763BE66466114C0581AE89097CE899A7D03F263D01D3999707D7B4692AD4CE2229907C020C00C937A6EC910A02E2F6BFF77233100E49967EE7A2';
wwv_flow_imp.g_varchar2_table(56) := '5AFCF38A552AD4CE2285402014C2B78E1CC21F4F9E90BE0BE3F1C0535ACA570279C950408100038002249E4201B1E35F70705012C269B7E3C777DE8D350585C45251E0447F1F3EFEF493D235D86C910D821C59BC0BA3E230B0E8241160004892816437D4';
wwv_flow_imp.g_varchar2_table(57) := '130807029868BA0484A427FF2D2A2BC7CF37DD822C2E46A3DE4000180B04F0B95777E06473B3643D8EF474B8CBCA546D070BA7403208300024C328B20FAA0A048787E16B6F97ADE3EF6EBE150F5455ABDA0E160E201CC68B6D2DF8C64B2FCADC05E0FE00';
wwv_flow_imp.g_varchar2_table(58) := 'BC5628A0448001408912CFB1B480F8F2172140EAA8CE9F869F6DBE0DE5A9DC96568B0B65C0E7C3034F3D813E99C980AE8202387373B5680EEBA080690518004C3B746CB8160262D6BF0800E23180D4F1C915ABF0A545B55A348775446E0284F1D39327F0';
wwv_flow_imp.g_varchar2_table(59) := '9BC307253D6C62326045056C763BCD284001090106005E1A149011F0F7F621D0DB2379C6B4F40CFCF8B6DBB13087BF36B5BC909AC746F1C0938FC3EFF74B56EBA9AA829D0B3269392CACCB64020C00261B3036575B01EFA5CB08C96C4273C7FC85F8D60D';
wwv_flow_imp.g_varchar2_table(60) := '376ADB28D6165918E8EB7B7663D739E9FD01B841102F140AC80B3000F00AA180844064F67F636364E299D4F1DDDBEEC0AD265CF73F180EC31F0AC16E039C363BEC26DCB778777B1BFEFC05E9FD01ECA9A991B701F818807FE214985C8001805706052404';
wwv_flow_imp.g_varchar2_table(61) := '028383F077764AFA54E7E4E027B76F41655ABAA10D7BBC5E9C1B19C61B1D1DB834D007BFCF0FAFCF8780DF1FC9366EB186BEC71DF9FFB9F9D3503B6D1A666764A2C0E0B7CFFBBD5E6C79EC518CFB7D93FADB1C0EB84A4AE048E3E44C435FA06C9C6E020C';
wwv_flow_imp.g_varchar2_table(62) := '00BAD1B362430B84C3F0B6B622343626D9CCDBE7CCC3B7D7AE336437C444B9A6B151BCD8D488FD972FA3B1BB0BA332CFCBDFDD097137607E4929D65557636345256666641AB28F6265C0FF67EF1EBC7AEE8C64FB9C39B970151618B2FD6C1405F4166000';
wwv_flow_imp.g_varchar2_table(63) := 'D07B0458BF2105C27EFF95C57F6496FEFD9B9B36E283336619AEFDCD6363D876F1029E3CF116FAC6A5038C9286976666E1DE858B70E7F41928494D55F2114DCF79AAF122BEF9EA4EC93A6DE2EE4635D767D074505899690418004C33546CA89602818141';
wwv_flow_imp.g_varchar2_table(64) := 'F8BBA46FFF3B9C2EFC7FF7DE87F9D9395A364BB62E31316E7F67077EB0F77534C92C5B1C4F83AB7372F1672B56604B45553C1F57ED33E26D807B1EFD1D246769D86C910060E30A8DAA8D010B36AF00038079C78E2D575120DAE23FABAAAAF19DF51B90E3';
wwv_flow_imp.g_varchar2_table(65) := '72ABD80AE5458F070378ECEC59FC7CFF3E88097E6A1CA94E273EB362153E3A771E5C0679BF5E3C06B8FF9927D13C3020D9655761119C39D96A90B04C0A985A8001C0D4C3C7C6AB212066FF7B9B5B1096985C26EA7CF8C6D5F854CD0235AA8FB9CC21BF1F';
wwv_flow_imp.g_varchar2_table(66) := 'FFFEE631FCE1E45B317F369E0F3CB46831BE7CDD75487338E3F978623F2316053A711CFF75E4B064B98ECC4CB88B8B0113BEE990582C964681F70A3000F08AA0C03502C1A121F83ABB649FFF3F72EFFD589AAFFFBEF3E3C1207E76EC281E3D715CD371FC';
wwv_flow_imp.g_varchar2_table(67) := 'F0E225F8ABE52B34AD53AAB2E3BD3DF8E4D667222B044E7AD81D48A9AC80980FC0830214F81F0106005E0D14B84620DAEDFFB90545F8D12DB7A054E7B5FFC517DE63E7CEE2BB7B766B3E86E24D812FDDB8069F9857A379DDD756287608BCEDC9C7303C3A';
wwv_flow_imp.g_varchar2_table(68) := '2AD9167769291C1919BAB7950DA080910418008C341A6C8B2104262E36221C905E62F6FEDA25F8FBE5D7EB7E4BF94877373EBF6D2BC473702547714616165694637A7E1EA6A5A422FDED5FC4A33E1F7A26C6D1D8D38B53CD2DE81895DEF8E8DDF5883901';
wwv_flow_imp.g_varchar2_table(69) := 'DFBFED0EAC2E2A5652BD6AE78820F417FBF6E0D5330D9275F07540D5F859B0890518004C3C786C7AE20594ACFEF7CDCDB7634B7945E22B8FA1C4AE89097CF9A5177046669F82ABC515676561D3BC79A899A6EC7DF8FAEE2EEC6C3883CEE1A1A82D9A9337';
wwv_flow_imp.g_varchar2_table(70) := '0DFF79D75DC870BAA29EABE609DB2E5FC6DFEF7849B20AB12AA0D81C88070528F03F020C00BC1A28F02E81E0C8087C6D6D922605E9E9F8E55DF7607ABABEB793FF70EE2CBEF7FA2EE9D7DFDEEEC18AEAE9B87BFEFC38C6388C674FD7E3D0A5C6A89FFDDA';
wwv_flow_imp.g_varchar2_table(71) := '9A75F8D8DC7951CF53F384AE8971DCF1E8EF1094B81B62733AE1292FE73C00350781659B4E8001C07443C606AB29E0EFEA4240E695B2753366E2BBEB3620C5E150B319B265B78D8FE18BCF3F17F55DFF0DF36A70F38C19536AE7CE8B17B1ABA15EB68C82';
wwv_flow_imp.g_varchar2_table(72) := 'B434FCEEFE0FA0C09332A5BAA6F261F118E043DB9EC559A9B51B6C36B80A0BE1CCE6EB805371E667934B800120B9C693BD99828058FDCFDBD686B0D72B59CA57D6ACC527E6EA3BF1EDF10BE7F09D5DAFC9F674C58C99B87B5E627E953FDBD08043172FC8';
wwv_flow_imp.g_varchar2_table(73) := 'D6F7851B57E3D33ABF16F98BD327F11F07F64BB633F23A6049C914AE107E9402C925C000905CE3C9DE4C41203836065F6B9BF4EB7F76071E7BE0039893A5DFAFC841BF1F5F7B65278EB5364BF6B43837070FDFB07A0A12EFFFE8CFF6ED45A7CCEA82730A';
wwv_flow_imp.g_varchar2_table(74) := '8BF0D85DF724B4CE580B3B3538804F3CFDA4CC63001752A657EB3E7933D67EF17C0AA825C000A0962CCB359D80B8F52F1E01481DF34BCAF0E38D9B5098A2DFADEE1303FDF8FA0BDBD0333E2ED9CE8FAE5A859ABCFC84FAD7F7F6E277070F489699E672E1';
wwv_flow_imp.g_varchar2_table(75) := 'FFDCFF20A6EBF8AA9D580AF9E63FFC1EFD63D2AF03A6CC9801311F80070528003000F02AA0C0DB02D19EFF3FB87829BEBA741952757CFEFFFBF3E7F0FDDDD2B7FF4BB2B2F0C5356B5519D35FECD983768937031C763BC4E3918FCD9EAB4ADD8A0A0D87F1';
wwv_flow_imp.g_varchar2_table(76) := 'B99DDB71F0F225C9D33D9595B0EB18E014F583275140230106008DA0598DF105BC2D2DB2DBFF7E75ED7AFCE91C1DBFE000FCC38137F0DCE953929837D72CC006719B5B856357632376D6D749967CFBFC05F876821F3DC4DA8D9F1C7F13BF3D7A58F2ED08';
wwv_flow_imp.g_varchar2_table(77) := '5751112702C68ACAF393568001206987961D8B49201C8E6CFF2BB7FEFFBF6EB90BEB8BF59D44F657AFEFC68E736724BBF6E9B56B5195991553D7959E7C696808BFDEBB47F2F4C5E515F8CDE6DB9516A7CA79CF5F6AC2FF7A7527FC12AF033A7373E12A50';
wwv_flow_imp.g_varchar2_table(78) := 'B61E822A0D64A11430900003808106834DD14F203431015F6B2BC2C1A064231E7BF0439893A5CE97ABD29E3FBC633BF65D6E923CFD1B9B37ABB649CF682080EF6C7F59B2EEAAFC69F8E3BDF72BED8A2AE7350D0FE143CF3C0DAFC4464EF6B474B88B8B38';
wwv_flow_imp.g_varchar2_table(79) := '0F40157D166A36010600B38D18DBAB8A40640260773720B1A14CAACB85271E7C08653AAEFF2F96FCFDCC8BDBF0664787A4C137EFD8A28ACFD542FFEE85E725CB2FCCC8C4F30F3E04A78E5B058F0702D8F4D8A3189F987C92A4CDE982BBB484F30054BD4A';
wwv_flow_imp.g_varchar2_table(80) := '58B859041800CC32526CA7AA02BEF60E046596BE5D5E5181EF6DD8845C1D779413B3DC3FFDC2361CEB68376400C84F4BC7CE0F7D44D7D7ECC48240F73FFF2C9A3A3B258DC4D6C00E9DEFE4A87A31B3700A281460005008C5D39258403CFFBF7C597601A0';
wwv_flow_imp.g_varchar2_table(81) := '3F59761DBE58BB44D71500C5083CBC733BF65D927E04F037B7DC8A74973AEBF28FFAFDF8CE8EED867E04201AF795BDAFE375B98D81F2F3E1CA4FEC6B9249FCD7C1AE25B1000340120F2EBBA64C201C0A41EC008890F4F3FFBFB969233E386396B202553C';
wwv_flow_imp.g_varchar2_table(82) := 'EBAFF6ECC68EB332930057AF41954ACBDD360D0CE03FDED827D9BBC51595F8CDADB7A9D87B6545FF5BDD29FC7AFF1B9227734540658E3C2BF9051800927F8CD9C32802911D002F5E943ECB66C7AFEEBE07D72BDC4D4F4DF07F38B81FCF9D3A295985BAAF';
wwv_flow_imp.g_varchar2_table(83) := '015EC4CE7AE97D016E9A3B0F3F5AB34ECDEE2B2A7B7B5B2BFE61FB4BF04A4CE8B4A7A4C253C99D011561F2A4A4161E62ACA90000200049444154600048EAE165E7940884C6C7E16D965E5A1776079EF9E087509D9EAEA43855CFF9CF33F5F8B9CCAB7825';
wwv_flow_imp.g_varchar2_table(84) := '3939F8E28D895D06F86A877EB16F2FDA659603FEDC8D6BF0D99A78761E4C2C59F3D8281E7AE2718C07FC93166C73B991525DA5EB5C85C4F698A551203E010680F8DCF8A92412080E0FC3D72E3DB1AE382B07BFBDFB6E14EAB8DBDD55EE03BD3D7878EB33';
wwv_flow_imp.g_varchar2_table(85) := '084ABCAD20CEFB931B6EC0BCDCBC848E507D5F2F7E77407A29608FC3815FDDF7006AB373125A6F3C85F94341DCFA87DF634062B9E4C8D6C05555B0E9B8A2633CFDE267289068010680448BB23CD30904FAFBAFBC022871AC9D3E03DF5CBB1E592A4DAE8B';
wwv_flow_imp.g_varchar2_table(86) := '05ACC7EBC5D75ED98193ED6D921F2BCECEC6C3ABD7C4526CD4737FB6770F3A878624CF9B3EAD004FDF7DAF417E5587F1C167B7E25CB7C4BE0E76073C15E5B07B3C51FBCD132890CC020C00C93CBAEC9B22017F57370203FD92E77EFCBAE5F8F325CB1495';
wwv_flow_imp.g_varchar2_table(87) := 'A5C549FFD550879FEEDB2B5B5522B703DE5A5F8FC38DD273246C003EB57215BEB8B0568BEE2BAAE32FF7ECC64EA9C992367B6431203119900705AC2CC00060E5D167DF2302BEB6360447462435FE71D32DB8B77ABA61B49A4647F1C56D5BD126D366D1D8';
wwv_flow_imp.g_varchar2_table(88) := '0DF36A70F38C19536AF78E0B17B1FB8CF4C43F51787E6A2A1E7BE083C837D02FEA5FD6D7E17FEFDF37F9C24E365BE43540675E621F934C099A1FA6800E020C003AA0B34AE30884BC5EF83B3A11F24E4836EAB7E2D97682B7D79DAAC07FD6D7E1E76FC8DF';
wwv_flow_imp.g_varchar2_table(89) := '051075ACA89E8EBBE7C733312F8CADA7EB705866CD0151BEF8F5FF8995ABF06503FDFA17EDDAD5D98E6FBCFC32C6259604160B01B98B8A0CF2C862AA57033F4F81F8041800E273E3A7924420383616090061A919E376079EFFD08751A2E312C09351774C';
wwv_flow_imp.g_varchar2_table(90) := '4CE0F32F6C43537F5FD49128CECAC6A605F351A37062A098F0B7B3AE4EF699FFD54A2B7372F1E8BDF7A9B6FF40D4CE499CD0363E860FFFF1690C8D8D4D7A863D3515EEB232D8745CB638DEBEF173144894000340A224598E2905226F0088B5F52566D567';
wwv_flow_imp.g_varchar2_table(91) := '6765E3C9BBEFC13403BC01702DF0134D8DF8F62B3B14BB97E64FC3FCE2624CCFCDC5B49414A44796350E63D4E747F7F8049A06FA50D7D181B6DE5E4565A6389DF89B8D9B70774595A2F3B53C49EC9B70DB538FA35762E2A27815504C04146F04F0A08055';
wwv_flow_imp.g_varchar2_table(92) := '051800AC3AF2EC774420B2095097C46C710095C52578E4E65B0DF57CFBEAD0892D6F7F7AF22DFC9F2387351F4DBBCD860F5DB71C7F59BBC4B0B7D1B73CF334DAFA7A26B7B13B226B013000687EE9B04203093000186830D814ED05FCBDBD08C8FCE2ADA9';
wwv_flow_imp.g_varchar2_table(93) := 'ACC2CFD7DF843C1D3701925311ABDDFDF0E8613C71F284A6781B66CDC60FD66D80C326660118F3B86FDB56E94D816C36A488B5000C3AAEC61465AB924D800120D94694FD894940FCFA177701A48ED573E6E19BAB5621C7256E971BF3F08582F87FF7BF81';
wwv_flow_imp.g_varchar2_table(94) := 'E71BE467EB27A2F5E297FF0DD5D3F1C3F537412CFE63E4E34F5E7A11A75BA55778148B01712D00238F20DBA6B6000380DAC22CDFD002E2F97F5066819B07972EC3C38B161B6211A06877027E75FA247E7BF40882A1902AE6692E173EB274193EBFB01622';
wwv_flow_imp.g_varchar2_table(95) := '0818FDF8EC2B3B70A8A951B2999ECA4AD853528CDE0DB68F02AA093000A846CB82CD20106D0D808F5EBF125F5D546BE85BDDEF767EF652137EFAC65EF44ACC7E8F674CC4577D6966163EBBEA06DC5569BC097F527DFADADED7F19ACCB6C0EEF27238D2D2';
wwv_flow_imp.g_varchar2_table(96) := 'E221E167289014020C0049318CEC44BC02621320B11990D4F1B9D56BF0D979F1BC471F6F8BA6FEB9A6D111FCAEBE0EDBEA4E63C23FF986384A6BC94E49C1E69AF9F8ECC245C8739B6BE9DCBF3F7400DB64E646B84B4AB81AA0D20B81E725A5000340520E';
wwv_flow_imp.g_varchar2_table(97) := '2B3BA55460E2D22584BD5EC9D3FF62C3467C74E62CA5C519EABCB3C34378F44C03769F3F0FAFCF1BD91E37DAE30187DD0EB7DD8E6999999145841E98351B3559D986EA97D2C67CF3E8613C75FC4DC9D35D854570E698B36F4A0D781E05E4041800787D58';
wwv_flow_imp.g_varchar2_table(98) := '5A60A2B1096189D5E204CC3FDDB219F798E8B6F7A483190EE3D4E000F6B7B5A1BEAB0B43DE098CFABC181C1B83DBEE40BA5813C0E341A62705F30B0BB1A1BC023393609DFC7F3D7902BF3D24BD83A16BDA342E076CE9BF7E769E0180D780A505269A9A10';
wwv_flow_imp.g_varchar2_table(99) := 'F6F9240DBE7FC79DB8B9A4D4D24666EDFC2367EA217631943A9CF9F9913D017850C0AA020C00561D79F63B22102D00FCE4CEBBB1AEA8985A261478ECE279FC62DF5E0C4B043C676E2E5C050526EC199B4C81C408300024C691A59851201C46640E80CC1D';
wwv_flow_imp.g_varchar2_table(100) := '80FFB8EF015C67B08D80CC48AD479B5F68BE8CEFED7E0D8312733C9C3939701516EAD134D6490143083000186218D8085D04440068BA243B07E0D1071FC23C934E82D3C5D440959EEAEFC3975ED8868189C9777A7464675FD9119007052C2AC00060D181';
wwv_flow_imp.g_varchar2_table(101) := '67B7C53E38D103C01F3FF45154A5A793CB8402E70607F1D96D5BD12F150032B3E02EE1E31D130E2D9B9C200106800441B218130A44090062019C173EFA3114A7A49AB0736C72DBD828FEF48F4FA357629D07474606DCA59CE0C92BC5BA020C00D61D7BF6';
wwv_flow_imp.g_varchar2_table(102) := '3C4A0010CBDDBEF0918FA188CBC59AF25AE9F77AF1D0D34FA05B625544477A3ADC6565A6EC1B1B4D8144083000244291659853204A00703B9DD8FAD0877907C09CA38BB1801F0F3EFD24DA868727ED813D2D1D9E720600930E2F9B9D000106800420B208';
wwv_flow_imp.g_varchar2_table(103) := '930A4409002E87035B1FFA084A52F908C08C233CEAF7E383CF44090065A58009363632A33FDB6C7C010600E38F115BA8964094D700C52380E73FF227BC03A096BFCAE5F67A27F0E1679E42F7E828EF00A86CCDE2CD29C00060CE7163AB1324106D21A017';
wwv_flow_imp.g_varchar2_table(104) := '39093041D2DA17D33C3A824FFCF119F44D4CBED913E700683F26ACD158020C00C61A0FB64663816801E0990F7D04D5E9191AB78AD52542E0FCD0203EF39CCC6B807C0B2011CC2CC3C4020C00261E3C367DEA02D17603FCDD073E88F9D93953AF8825682E';
wwv_flow_imp.g_varchar2_table(105) := 'B0BFAB13DFD8F1B2F442409999105B02F3A08055051800AC3AF2EC7744205A00F8D5BDF7E3FAFC69D432A1C073972FE187AFEF925C0AD89195057731170232E1D0B2C9091260004810248B31A780F7D26584BC932F152B7AF4E33BEFC6066E0664CAC1FD';
wwv_flow_imp.g_varchar2_table(106) := 'C385F3F8EEAE5725DBCEA5804D39AC6C74020518001288C9A2CC27E0BDDC8C90C42431D19B6F6EBE1D5BCA2BCCD731B618BFAEAFC3BFBDB15752829B01F122B1BA000380D5AF008BF7DFDBD28290C44A7182E66F37DD820F544FB7B89239BBFFA313C7F1';
wwv_flow_imp.g_varchar2_table(107) := 'DF870F31009873F8D86A0D04180034406615C615F0B5B62228F19EB868F5D736DC848FCD9C6DDC0EB0659202DF3E76044FBC794C3A00E4E7C3959F4F410A58568001C0B243CF8E0B015F7B0782C34392189FB9710D3E5F339F582614F8BB83FBF1FCA993';
wwv_flow_imp.g_varchar2_table(108) := '922D771514C0999B6BC29EB1C914488C000340621C598A4905FC5D5D080C0C48B6FE23CB57E02F172F3169EFACDDEC3FDFB31BBBCF9E910E0045457066675B1B89BDB7B4000380A5879F9DF7F7F621D0DB230971D7E225F8FAE2A5C876B9886532814FBF';
wwv_flow_imp.g_varchar2_table(109) := 'B21D479A9A245B2DB602165B02F3A08055051800AC3AF2EC7744203038087F67A7A4C6CAD9B3F12F37AC468ECB4D3193093CF4E2369C6D6B936CB5A7A202766EF464B25165731329C00090484D96653A81E0F0307CEDED92ED2E9A5680476FDF825C3703';
wwv_flow_imp.g_varchar2_table(110) := '80A906371CC61D7F7C1AED7DBDD201A0AA0A768FC754DD6263299048010680446AB22CD309885700C5AB8052873B3D1DCFDDFB000A53524CD7372B3778C8EFC7DD4F3F81C19191C9196C36A45455C1C66067E5CBC4F27D6700B0FC25606D8090D70BB118';
wwv_flow_imp.g_varchar2_table(111) := '10C2A149216C2E379EB9FF03A8E2B362535D280D4383F8F4B66731323EF94E80B03B90525D059BD369AA7EB1B11448A400034022355996E904027D7DF0F7484F02141DFAD99D77630D970336D5D83ED7D28CEFBCF62AC67D5EC976F33540530D291BAB82';
wwv_flow_imp.g_varchar2_table(112) := '0003800AA82CD21C02A18909F8DADA110EF8651BFCD7376DC443336699A3536C6544E0A775A7F05F070E48DED911E7D89C2EB88A8BE0484BA31A052C29C00060C96167A7836363F0B5B6C97E415C55FAF8F52BF1D9050B91EA7010CE24025FDFBF0FAFD6';
wwv_flow_imp.g_varchar2_table(113) := '9D8EDE5ABB039ED212D81902A25BF18CA413600048BA216587A209044746E0EFEA8EFACBFF6A39EB67CFC1FFBA6135D70288066BA0FFFED1975E405DABF4E4CE7737D5E670C0555C0C477ABA817AC0A650407D010600F58D5983810422B7FD5B5B110E06';
wwv_flow_imp.g_varchar2_table(114) := '15B72A2F3B077FB8EB1E14F09531C5667A9E180A8771D3E38F6248EA0D80491A272603BA8B8B792740CF8163DD9A0B3000684ECE0AF512109BFEF83B3A62FAF2176D75A6A460EB030FA2342555AFA6B3DE1804FA7C5EDCF5F86318F34EC4F0293129C00E';
wwv_flow_imp.g_varchar2_table(115) := '775929E704C4A6C6B34D2CC00060E2C163D3950B88F7FD7D1D9D8A6FFBBFE716B1D389A73EF010A627D92DE270388C3000BBCDA61CD204679E1D1EC2279E7E12E38140CCAD8D4C0C2C2AE4E38098E5F801330A30009871D4D8E69804E2B9EDFF9E0AEC0E';
wwv_flow_imp.g_varchar2_table(116) := 'FC68CB9DB8A9B028A67A8D7AF2E1BE5EFCB6BE0E673B3A600F8731ABB8189F5EB8088B73926367BC675B9BF1ED1DDBE18DE131CF7B029FC301B14F00970936EA15CC76254A80012051922CC7900291DBFE9D5D71FDF27FA743363BFE7AD3263C5435DD90';
wwv_flow_imp.g_varchar2_table(117) := '7D8CA551877A7BF0F9E7B62274CD97638627153FD9B205CB72F36229CE90E7FEA8EE347E7F703F82A1C9177752D468BB0801257C1CA0088B2799558001C0AC23C776471550FA9E7FD4826C367CF4FA95F8CA828570D9ED514F37F2099FDDFD1A0E9D3F37';
wwv_flow_imp.g_varchar2_table(118) := '6913EF5C548B7FBA7E051C3673F7F1CB07F663CFE993531E063E0E9832210B30B8000380C10788CD8B4F20343E0EAF78CF3F147DB6BF433C03773A11F44B2F0874E39CB9F8D6AA1B4CBD2BA0981DBFE1C9C7303C343429EAC2D2327C6FC34694987C87BC';
wwv_flow_imp.g_varchar2_table(119) := 'FBB7BF84C6E6CB92174E86C783119F0F088B1910510EB14E40191F074463E27F37A700038039C78DAD961188DCF617EFF9FB7D519D525352B1B2BA1A5D3E1FEA1B2F424C8C9BEC70A7A5E3E97BEF479989BF1C7DA120363EF13846478627ED63664A2A1E';
wwv_flow_imp.g_varchar2_table(120) := 'B9FB1ECCCACC8AEA66D41306FD3E6C79F68F181D1898B489369B0D2B66CC84CFE3C1B9C6468C8C8F45ED4A649D80123E0E880AC5134C27C00060BA216383E50462B9ED9FEA7263D582F928CBCCC280CF873D274F62706C74F2E26D76FCF4AEBBB1B6A0D0';
wwv_flow_imp.g_varchar2_table(121) := 'B40330110CE296A79EC0C8F0E47700525C6EFCE6DEFB30372BDBB47DDCD5D589BFDCB11D8189C937014A4FCBC01D8B16C2E576A36370106F9C69C084577ABF80AB10625328774931ECDC15D2B4D7061BFE7E0106005E1549232096F7F5B7B72B7ACFDFE3';
wwv_flow_imp.g_varchar2_table(122) := 'F160C3C2452878FBD5BE60388CFD67CEA0A9AB53D2E3E10D37E15333679BD6CB0A01E03B278EE3F123472497782E2D2AC24DFF776547DBDB7339FA4646B0E3E409F8651EFFBC1302C4DB0165650C01A6FD0B60C3AF156000E035911402912F7F31DB5FC1';
wwv_flow_imp.g_varchar2_table(123) := '6DFFB49454AC9F5F83FC8CCCF7F4FD6C5B9BE4043971E2C645B5F8C7A5D721CBE532A5991502C083DB5FC27999E7FF8B66CFC6E292D2F78C5FFBE0200E9E39831189BB06EF3E397227A0A8902B069AF22F808D6600E035907402B1BCE79FEEF660CDC285';
wwv_flow_imp.g_varchar2_table(124) := '28C8C8789F43CFD0105E3AFEA6A44F666E1E7E7FFB16949B741E40B20780D14000B73CF538C66596005EBF74192A32DF1BFCC480B70D0D617F5D9DECF6C1EFDC0970BA222B06DAB93474D2FD5B62B50EF10E80D5463CC9FA1BCB7BFE52BFFCAF92F87C3E';
wwv_flow_imp.g_varchar2_table(125) := '3C7DEC28026286F824873D2515BFBC630B969BF45DF9640F0087FAFBF08567FF88A0C40A80599E146C58B64CF20E4EEFE8285E3D75125E257302B8585092FD4B62CDEE30005873DC93A2D7E255BFC8F2BE4A6EFB7B3CD8B860217226F9E57F1523140AE1';
wwv_flow_imp.g_varchar2_table(126) := 'E5FA3AF4F6F64EEA2366837F75DD067C6CC64C53FA2575000887F16FE7CFE1D77B764BBEDE57953F0D37D4D4C029B39643CFF030F637346050C9DB016E37DC857C1C60CA3F06363A22C000C00BC19402E2B6BFB7A555D17BFE6295BBD50B17BC33E14FAE';
wwv_flow_imp.g_varchar2_table(127) := 'C3872F5FC699A646C953EEA85D8CBF5D7A1DD29C4ED3B925730010AF6F7E72EF1E1C3FDB20392E4B67CCC082F28AA8E3D6353C8C7D75751855B099900885EEF2723E0E88AACA138C28C00060C451619B64056279CF3F23350D6BE7CF47BEC28D7C5A0607';
wwv_flow_imp.g_varchar2_table(128) := 'B1E7C45B106F054C7614E4E5E337B7DF61CA9D019339008C0703B8E58FE2FDFFBEC9AF1D9B1D37D7D6A2385BD92B8E036363D879E204267C0A5E11E456C2FC17CBA4020C00261D38AB363B96F7FCC584BF4DB5B5C84A4B53CCE50D04B1EDF0418C4BBC16';
wwv_flow_imp.g_varchar2_table(129) := '2696877DE4DEFBB0243B477199463931990340C3D0103EFACC530805265FCDD1E9F6E09EEBAE436A0C6F708849A16F9C3D83A131058B0589B7038A8BB88190512E76B6439100038022269E6404815866FB67A7895FFE0B9013C397FFD53E8A3701C43FFE';
wwv_flow_imp.g_varchar2_table(130) := '931E361BFE6EF36D78A02CFAAD642398BDBB0D491B00C261FC7753237EF4EA4E49F2BC9C1C6C5E548BC8B2CF311CE271C0FEFA7A0C2B78451062D9E00A3E0E888197A7EA2CC000A0F300B07A6502619F0FBEF60E84143C97CD4C4FC7BA7935C85578DBFF';
wwv_flow_imp.g_varchar2_table(131) := 'DA161CBC7001E75A5B241B76FFF52BF0F7B54B9435DC4067256B00107B1C7CF9E07EEC3B7D4A527B7E553596565621C6EFFF487962B1A05D757518531002EC9E94C88A8136B7DB4023CFA65040E2F74CED6B3B15EC88413E0AE828100EC3DBD20231EB3F';
wwv_flow_imp.g_varchar2_table(132) := 'DA919192824D8B9720730AEF689FEFEAC281330D92B3C9E7574DC70FD7AC45B1C996854DD600209EFFDFBEED590CF6F44C7A79D86D36AC5BB010E579F16F752C42C0BE330D181C95582AFA5D353B3232E02E29415C6923DA05CEFF4E81040AF00E400231';
wwv_flow_imp.g_varchar2_table(133) := '59940A02E1307C9D9D084ADD927F5795D9E91991097F39535CA8A77B6404AF9C3C8980C4EB850E4F0A7E71C716ACCCCB57A1C3EA1599AC01E0D8403F3EBDED39C9BB436EA70BF75CB71C1ECFD47E95778F8EE24043BDB2109099159913C010A0DEF5CC92';
wwv_flow_imp.g_varchar2_table(134) := 'A72EC00030754396A0A280BFB7170189F7F2DF5D6D765A3AD6CE9B27FB9EBFD2668E0783D8DB508F4E997A3FBE7A0DFE7CDE7CA5451AE2BCA40C00E130FEE5F4493C76E890E4FAFFD9D9D9B87351ED3BEBFF4F65307A4746B0BBBE1E630AD609701516C2';
wwv_flow_imp.g_varchar2_table(135) := '9963BEC9A253F1E167CD25C00060AEF1B2546B83C3C3F0B5B747ED73564A0A362F590A4F829EBB8A37004F345FC64999F50016CE98811FDCB806459E94A8ED33CA09C918004458BBFBF967D1D3DD2DC93C77FA745C5F5199B06110AF08BE7EF22486A2CD';
wwv_flow_imp.g_varchar2_table(136) := '47B1D9E02E2E866392A58713D618164481290830004C018F1F554F404CFA9BB87459F257DDD59AD353D3B069FE7C64C539E14FAA07FD232378FED851C90EBA52D3F0B3DB6E37D56380640C0047C5EDFFADCF202CB1FCAFD3E1C0DAC54B5026B302643C57';
wwv_flow_imp.g_varchar2_table(137) := 'B1D2B703C46BA39ECA0AD84CB870543C2EFC8CB9041800CC355ED668AD78EEDFD585E0E0A06C7F5D763B6E5CB01015B9B9097711CB026F7DF34D8C8E8E4C5EB6DD813F5D7503BE5A639EC700C91600C4EA7FFF525F87C7F7EF931CFF82EC6C6C5A542BBB';
wwv_flow_imp.g_varchar2_table(138) := 'FC6FBC174F6B6F6FE4ED807038245B84B80320EE04703E40BCD2FC9C5A020C006AC9B2DCB805C44A7FBEB6F6A8BFFE6FAC59801905D3E2AE27DA078F3537A3AEF1A2E4690BAB67E007ABD7A0C8246F03245B0010B7FFEFDFFE223ADADA24C768C98C9958';
wwv_flow_imp.g_varchar2_table(139) := '585E1E6DA8E3FEEFE73B3A714066F9E1AB057B2A2AB84850DCCAFCA05A020C006AC9B2DCB805BC972E477DDF7F61553516C7F95EB7D286F58F8FE3A56347110C0627FD88DB93829FDCB105AB4CF23640B2058023FD7DF8ECF3DB24AF15B14EFF1D4B96C6';
wwv_flow_imp.g_varchar2_table(140) := 'BD1E84A2EB241CC6A18B17715666DD08510E5F0D54A4C99334166000D0189CD5C90B2899F8573AAD001BE6D5C06E8F6D55B778ECB71D3B8A0199FDE5FF64CD5A7C7D6E4D3C456BFE99640A0062F19FEFD59DC26307F64B3A16E4E6E1E6050BE090D9FD2F';
wwv_flow_imp.g_varchar2_table(141) := '1183100885B0B7BE0E2D51DE56711515C1A9702F8244B48B6550209A0003403421FE77CD04C2A110BC4D97109658CF5D3424DDEDC6C6254B91ADD16DF7132DCD387151FA31C0A299B3F0DD5537A024255533A7782B4AA6002016FFF9E0F697D02273FBFF';
wwv_flow_imp.g_varchar2_table(142) := 'FAB9F330B7A8285EAE983E373A3181678F8ABB4501C9CF89898029D3A7732E404CB23C594D010600357559764C0281FE7EF8655EE712855D3763266A547CA67B6D83BBC47BDFA74EC2EBF34DDA97B48C0CFCCBA65BB0765A414C7DD5E3E4640A00E2F6FF';
wwv_flow_imp.g_varchar2_table(143) := '679E7F0E61EFE4BBF5B91C0EDCB5FC7AA44D6145C858C7E8784B0B4E5DBC20FB31AE0D10AB2ACF57538001404D5D96AD5820E4F5C2D7DA2AF93A972828233515B72D598614975371B9533D31140A63F79906B476774D5E94CD8EFBAEBF1EFFB068F154AB';
wwv_flow_imp.g_varchar2_table(144) := '52FDF3C91200C4EDFFEFD79DC21F0E1E949C283A2D370FB72D5CA8E9AF6D7F2088AD470ECB6E212CEE02782A2BF95AA0EA573B2B5022C000A04489E7A82EE0EFE941A04F622FF7B76B17BBFB554D536FD6BF54271BBABA70A4A15ED26041F595BD018CBE';
wwv_flow_imp.g_varchar2_table(145) := '2850B20480D140000FBDFC025A3B3A24C764E99C3958505CA2FA757B6D050DED6D3872EE9C6CBDCEFC6970E5C7BF2F81E69D6285492BC00090B4436BAE8E4D3435412CFE2375E46566E3F6C58959CE3556999189096C3D741052BB66A5A5A5E1DBB76CC6';
wwv_flow_imp.g_varchar2_table(146) := '7A833F064896007058CCFE178BFF48BC9D91E649C14D4B972237412B43C672BD08E3DDA74EA17B7040F263F6B43478347C8C154BFB79AEB5041800AC35DE86ECAD58C56D4266A29DD8CD6DE58285983985DDDCA6D271B1E0CC8ED3A7D0257587C266C3E6';
wwv_flow_imp.g_varchar2_table(147) := 'A5CBF0AD25CB62DE6F7E2AED8AF5B3FE50081B9F7C1C23C343937E34C5E5C66FEEBD0F73B3B2632D5AB3F3451FBE75EA04B61E3E245967755131D6CC9DAB599BAEADE8427737F6D7D749D66F73B9E1292F83CDE5D2AD8DAC980242800180D781EE02C191';
wwv_flow_imp.g_varchar2_table(148) := '11F8646673E7A5A561E3D265487138746BEB85AE2EEC97790C50949F8F7FDD742BE61978DD77EFFFDDE4E8E6A79E30750068191FC3FDDB9E855F6677C83535F3515DA0DFA44C9FDF8FADC78EC22B314111363BDC4585706465E9763DB3620A3000F01AD0';
wwv_flow_imp.g_varchar2_table(149) := '5F201C86BFBB0781817EC9B6CC292DC78A5933756DAB2F10C0B391095ED28F293EB57E031E9E3547D776CA559E0C8F007E79EE2CFEF79EDD80D8B16992C3E549C196254B90A1E1ECFF6B9B21EE18EDBD700197DA5A2587C321B60B2E2936ECB5C2865943';
wwv_flow_imp.g_varchar2_table(150) := '807700AC31CE86EDA5B8FDEF6B6D935DF94FED257F95E2ECAAAF478BD4DB0000665554E2971B36224F8767CF4AFA60F60030E4F7E313DB5F426387F40E91334BCBB06AE64CD86CEA2F122567DED8DF8F374E9E909C372236094A995EADE95B0A4AAE119E';
wwv_flow_imp.g_varchar2_table(151) := '632D0106006B8DB7E17A1B1A1F87B7A545F2179DDDE9C296A54B919DAAFF423B977B7BB1AFEE348252BF3EDD1E7C75FD7A7CB8B2DA70CEA241660F00CFB6B7E29F5E7E4972F29FE8A3988B516080C730E3E231C0A14308482D0C64B32165C60C88E58A79';
wwv_flow_imp.g_varchar2_table(152) := '50402F010600BDE4596F4420DAD2BF0579F9B8A9A6066E03FC43291E03ECA9AB43BBCCE38AC5B366E1576BD7C36D37DE3FEC660E00C3013FBEB27F1FDE3C7B56F22F675A46166E5BBAC430BFAAB7BD790C03C3C392EDF55455C1AEE3A30AFE1344010600';
wwv_flow_imp.g_varchar2_table(153) := '5E03BA0A040606E0EF92586407406D753516565442BC096084A3A9A7077BEB4E4B36252D2505DFBCF536DC54506884E6BEA70D660E00AF7675E22F5E7C417299E8C89B2273E662A6464BFF2A19DC7D0D0D68ECEA943CD55D5E0E475A9A92A2780E055411';
wwv_flow_imp.g_varchar2_table(154) := '6000508595852A15F0F7F62220B1898AF8CA5F57331F153ACEE8BEB61FC14010CF1C3A880999FD0AD62D5E8C9F5CB7C230BF44AFF6C1AC0140ACFBFFF76F1EC32B6F1D97BCAC0AB2B3B169D1623835D8204AE9B5FDD6A54B3879A9493A009494C06180C7';
wwv_flow_imp.g_varchar2_table(155) := '154AFBC3F3924F800120F9C6D4543D12BFFEC55D80C90EF1AB6EE3C24528CECD35549FEA5A5B71ECC279C9366567E7E28737DF8CEB728CD56EB30680E38303F8D4F3CF41CC17913A6E982B7EFD1B6B56FDE9D616BC79417A6F005761119C39C65D73C150';
wwv_flow_imp.g_varchar2_table(156) := '7F746C8C2A020C00AAB0B250A502BEF6F6C83C80C90E87CD865B172F41BEC1DE97F6070278EECD3731363E26D9CDFB56AC34DCFE00660D003F387D0ABF3B784072DDFF8CD434DCB67831520CF6F6C5B98E0E1C3C7B46F21A71E6E5C1A5C3D2D64AFF3679';
wwv_flow_imp.g_varchar2_table(157) := '5EF20B300024FF181BBA876203A0E0E8A86400D8B2EC3A64A5A71BAE0FC72E5F425D93F4EDDDE2E262FC62C326CC3050DBCD18009AC646F1851DDBD1DED32D790D2C9B351BF34B4B0D778D88B7465E3F7D4AB25D62212077B1B1EE5A180E910D52558001';
wwv_flow_imp.g_varchar2_table(158) := '40555E161E4DC0DBDC2C796BD761173BEDAD408A01674AF78F8FE3B5B7DEC2986FF2ED68C5AE6F7FB6662DBE3073763402CDFEBB1903C0238D17F1B357774A1AB99D4EDCBB6225C4FF1BED681B1CC4FE86068C7B27266D9A3D2D1DEEE222EE0C68B481B3';
wwv_flow_imp.g_varchar2_table(159) := '507B18002C34D886EB6A380C6F730B4213933FDB75890020FE7137D8ADDDAB8EA79A2FE37863A3246B7559397E7FCBAD487518E3CBC96C01A0657C1C5FDBF73ACE5DBA24693CBBB41C2B755E2552AA715DC3C33874E13C0624962DB6A7A6C25558C85701';
wwv_flow_imp.g_varchar2_table(160) := '0DF70F93751AC400609DB1365E4FA30400B7D385FB962F87CBA001C0EBF7E3A903FB21F6A79FECB03B9CF8DCFAF5F8F4747D9731BEDA36B30580FF6ABC809FEEDA05848293FAA6BA3DD8585B8B5C83BE4A27EE121D3C770E3D12EB46D83C1EB88B8A604F';
wwv_flow_imp.g_varchar2_table(161) := '4931DEDF265B64090106004B0CB3413B69F2002054F79D3D8346997DE9CB4ACAF0EF37DD848A54FDDFF7365300B8383A8A3F7F6D279A3BA5DFA39F2596FD9D35CBA01737E00D04F0DAE93AF40C4AEC736177C053560A7127800705F4106000D0439D755E';
wwv_flow_imp.g_varchar2_table(162) := '11488200D03F3282178F1F4748E257AAD8F9EDA195ABF0D70B16EA3EEA660A003F69A8C36FDE784372E6BFC0BC79C952141BEC0D91770F722014C22BA74EA37BA06FF2B1B7D9E0292B83DDA0773074BF60D900D50518005427660592024910004488D95E';
wwv_flow_imp.g_varchar2_table(163) := '771A5D128B1989BE6767E7E0DF37DF869A4C7DB77F354B0038313488AFEFDC8E9E7EE91D222B0A8BB066CE1C8889A2463D18008C3A326CD7550106005E0BFA0924430000D0343080BD27DE9276B4D970DBD2A5F8CED2E5FA599B6433206F30886F9E3A81';
wwv_flow_imp.g_varchar2_table(164) := '6D470ECB5ADDB274198A0CBE8A1E0380AE973B2B5720C000A00089A7A82490240140FC43FF7A5D1DDAFA7A25A19C2929F8F73BEEC4F2DC3C9530A3176B863B00FB7B7BF095975F867F7CF2B521442F0BB273706BED6218647B0849780680E8D724CFD057';
wwv_flow_imp.g_varchar2_table(165) := '8001405F7F6BD79E2401400C62DBD0105E3BFEA6E4FEEFE29CEB6BE6E35737AED16DCC8D1E004602017CE3F041EC91D96CC98CBB63AE00001AB549444154E57062DDA2452831F0B3FFAB03CC00A0DBA5CE8A150A30002884E2692A0824510010AF02EE3F';
wwv_flow_imp.g_varchar2_table(166) := '7F0E8DEDED92500E4F0ABE7BEB666C2A2C5201337A91460F002F7776E06FB7BF8CA0C4E24AA287732A2BB1A2AADA701B2D4DA6CF0010FD9AE419FA0A3000E8EB6FEDDA93280088811C9998C00BC78FC327F3053677FA743C7AD3CDB0E970FFDAC801A0D7';
wwv_flow_imp.g_varchar2_table(167) := 'E7C31776BF86B397A517FD4975B9B169C912E498E4B53906006BFFF36686DE330098619492B58D491600C430BDD9D686D3E7CF498F98CD8E6FDCBA190F9657683EAA460E004FB734E35B3B5E4628149274B97EF61CCC2D29D1DC2DDE0A1900E295E3E7B4';
wwv_flow_imp.g_varchar2_table(168) := '126000D04A9AF5BC5F200903C04420801D6F9DC0E0E8E43B1C0A84C2A2223C73DB16A469BC7EBD51038058F2F7F3BB5E454B5BABE45F494E5636B62C5E62F8897FEFEE000300FFD133BA000380D1472899DB978401400C57F3C000769F3C1159E848EAF8';
wwv_flow_imp.g_varchar2_table(169) := 'DC868DF8EC4C6D57B1336A00F8F7B367F01FFBF64A2EA624DEF55FB3A81615D9D9A6FA6B600030D57059B2B10C00961C7683743A490380F8DEDF77FE1C9ADADB24A153B3B2F1872D77A152C355E08C18004E0E0DE24B2FBD80C161E93B2615A5A5582FC2';
wwv_flow_imp.g_varchar2_table(170) := '920EF326A6F297C20030153D7E560B0106002D9459C7E402491A004467872726F0DCD1A308050392A3BF64D66C3CB26E836613028D160086037E7C79DF5E1C97993321B6F9DDBCEC3A649B70C31C0600FEC36774010600A38F5032B72F89038018B64397';
wwv_flow_imp.g_varchar2_table(171) := '2FE36C93F476C1E217ED5737DE8C3FAD9EAEC9281B2D005CB9F5BF4776E2DF9259B3B0B0B44C139F4457C200906851969768010680448BB23CE502491E00460301BCFAD65B181C1D917E14909985DFDCBE05733458D6D64801E0487F1FFE62E70E0C0E0D';
wwv_flow_imp.g_varchar2_table(172) := '4ADB6464E0CEC54BE07138945F53063A9301C04083C1A64C2AC000C00B433F81240F0002F67C4F370ED4D7CB4E085C32672E7EB97A0DDC7675BFE88C1200C68301FCD96BAFA1EE92F4DD111B80550B1662667EBE7ED7E7146B66009822203FAEBA000380';
wwv_flow_imp.g_varchar2_table(173) := 'EAC4AC4052C00201C0170C62DFF9F368EDEC90BE10EC0E7C69DD7A7C52E5B7028C12007ED2508FDFEEDB23BB6C72597131D6CF9A03BB5D4401731E0C00E61C372BB59A01C04AA36DB4BE5A200008F2731D1D3878F68CACBEC3E5C27FDE731F1667E7A836';
wwv_flow_imp.g_varchar2_table(174) := '4A46080007FB7AF1973B7760787848B69FD7CD99879A627D964C4ED4003000244A92E5A825C000A0962CCB8D2E609100D0D8D9897D671AA27AD44E9F815FACDB800C951608D23B008C0502F8F8AB3B70BEB939AAC58AD97330C744ABFE4DD6210680A8C3';
wwv_flow_imp.g_varchar2_table(175) := 'CC1374166000D079002C5D7D92078070288C13979B70EAF265D9DBDDEF5C03363B1E5EBB0E9F9A355B9577DEF50E00DF3F75128F1E3A8870587AB9DFAB16769B0D351595585C5965DAC7000C0096FED7CD149D670030C5302569239338000483411CBE78';
wwv_flow_imp.g_varchar2_table(176) := '0117DADB957DF9BF3DC48E9414FC7ACB5D589A939BF041D733001CE9EBC3575E780E635EAFE27E89A7FF734BCAB068C67453BE09C000A078A879A24E020C003AC1B35A4466C67B9B5B109A189F94C3ED74E1BEE5CBE172BB4DC5E5F7FBB1A7A11E6DFDFD';
wwv_flow_imp.g_varchar2_table(177) := '71B57BE9F4E9F8F1DA0DC876B9E2FABCD487F40A00E2D6FF075F7A1EAD9D9D71F5A72C370F37CE9D0B8FC9AE030680B8869B1FD250800140436C56758D40120680DE9111ECAFABC7C0C4D89486FB5337DC882FD62C48E82A817A048070388C6F1F3F8627';
wwv_flow_imp.g_varchar2_table(178) := '8F1D9D92474E7A06D6CC9D8B9C8C8C2995A3E5871900B4D4665DF1083000C4A3C6CF244620C90240CFD010F6D4D763D43B31751FBB03DFBC7533B694954FBDACB74BD023003C76A909DFDFF51A8201FF94FB91E649C10D73E7A22447BD3725A6DCC87715';
wwv_flow_imp.g_varchar2_table(179) := 'C00090484D96A5860003801AAA2C539940120580A6CE2EEC3F77064199FDEC95A1FCCF59D96969F8DEE6DBB1222F318BE1681D00DE1AE8C7179EDF863189473CB17A88F31D0E0756CF998BCA8282783EAEE967180034E5666571083000C481C68F244820';
wwv_flow_imp.g_varchar2_table(180) := '090280B8C57DB2B515A71B2F2228B3FDEFBBC51CD9D9B0395D087B27101C915E26587C666671097EB06123AAD3D3A78CAE6500E8F57AF1D1979E47674F8F6CBB6D0E071C39B908FB7C0846591BE09D826C362CAE9E8E056565B0DBED537651AB000600B5';
wwv_flow_imp.g_varchar2_table(181) := '64596EA20418001225C9726217307900F0074338D1781167DADB1052F2E56FB3C1999B0BD7B46911AB702000EFA54B080783B27637CF5F80BF5D7E3D725C539B0CA955001093FE1E7E7D17DE6CBC28FFE5EF74C22DBEC43D9EC884507F5F1F02BDBD8AAF';
wwv_flow_imp.g_varchar2_table(182) := 'A39AF2F2C86B824E95D64D50DC1089131900A62AC8CFAB2DC000A0B630CB971630710018F77A71F8FC795CEE95FF85FB3FBF5AED701717C171CDA63FC1E161F83A3A01B977E36D367C7CC54A7C71FE42B8A6F08B578B0020EE827CF7ADE378E2E8E1A857';
wwv_flow_imp.g_varchar2_table(183) := 'BEBBB4148E6B26F529F27857C9E57979914702467C53840120EA25C01374166000D079002C5DBD4903C0D0D81876373460706458D1F089DBFD2EF1E59F9636E9F9FE9E1E04FAFAE4CBB2D9F0CF9B6FC39D65158AEA9CEC24D50340388C672E5FC23FBFB2';
wwv_flow_imp.g_varchar2_table(184) := '03E2D188DC11B91322F11C3F383A0A5F5BBB7C287A57E1F9195958356736720DF686000340DC972A3FA89100038046D0AC6612011306808EC141EC397D0ADE4040D190DADC6E784A4B21FE5FF2100EAD6D088D8DCA96999D9E8EEFDEB2192BF3AF3C4288';
wwv_flow_imp.g_varchar2_table(185) := 'F5503B001CEDEBC317B73D0BAFDF27DB34BB27059ECA0AD9D50EC59C0061128E52D6D58AB25352B16CEE5C946567C7CAA2DAF90C00AAD1B2E004093000240892C5C42160B200D0DCD585BD6795CFF4B7A7A5C35D5A029B82DBF691F900CD2D51BFF0AAA7';
wwv_flow_imp.g_varchar2_table(186) := '15E08737DF8219E9B1BF0FAF6600E8F14EE0C3CF6E45CFD0A0EC852026FD459EFBA7A444BD608489BFAB2BEA44C9AB05B91D0EAC9A3B0F956FCFB1885A81CA273000A80CCCE2A72CC0003065421610B780590240388C53CDCD78ABA951F1B2BEE2D9B65B';
wwv_flow_imp.g_varchar2_table(187) := '6C666353BE9DADD2E7DF6B67CFC13FADBA117931AE8CA756001809F8F1E5DDBBF16693FCA43F719D88DBFEE2F6BFD2231C0AC1DFD9A5F80D01A1BD64D66C2C282D555A856AE73100A846CB821324C000902048161387800902802F18C4A9C646D4B5B52A';
wwv_flow_imp.g_varchar2_table(188) := 'EEA098E5EFCCCB537CFEBB4F147301C49C8068C747965F8F2F2FAC8D698D7C6F30889B9F7A022312AFDBA5B8DCF8CDBDF7616E96F2DBE8A2CC1F9F388EC714ACF4275E7F7417C5B7C56FA0BFFF8A8B82B72D4408985D5A8AEBA6CF88AC1BA0D7C100A097';
wwv_flow_imp.g_varchar2_table(189) := '3CEB552AC000A0548AE7255EC0E001C0EBF7E3D0B9B3B8A4E00B59E088DBDBCEFC6970E628FF027D1FAAC2F900E2CEC29FAD5C854FCEAB41AAC3A9686CFCA110363EF138464686263D5F0480DFDE773FE66466292A4FBCEEF7C8D9063C72607FD4497FF6';
wwv_flow_imp.g_varchar2_table(190) := 'D45478CACB63BA23726D23C41D12F14820DA6B93573F575D5884953366E8F686000380A2CB8827E928C000A023BEE5AB367000181C1FC7EB75A731382A3F31EFEA188A2F7F5771311C0958B0477CC145D6075030D170E3BC1A7C79C93254A6A545DD3740';
wwv_flow_imp.g_varchar2_table(191) := '7C21AD7BF477189758992FD5E5C27FDFFF01CCCCC894BD34C59A0762A19F6F1D3988DD67CE44BD8C6D2E373C65512642462DE5CA09A1B131F83ABBA2CE95B85A5C6E4626D6CE9F8F2C05730E143641F1690C008AA978A24E020C003AC1B35AE3EE06D8DE';
wwv_flow_imp.g_varchar2_table(192) := 'DF8F23E7CE6150E112B6E2D7ADBBB818B604EEDE27BEE8C42C78D9F501DEBE88B253D3F0C0A245989B9B87AA8C4C14A4A6BC6F5542715B5CCC19B8EE378F48DE461793E8FEFB9EFB50929101315FE0DD87B87B30E0F5E2F2C8084E7777E185FA7AF429F1';
wwv_flow_imp.g_varchar2_table(193) := 'B1D9E01193FE245E818CEBEF204A70BCB6CC0C4F2A56CF9D83028DF7106000886B74F9210D05180034C46655D70818ED0E40388CE6BE5E1C3A7B0EE30A5F3F736466C155300D361556A30B0C0EC21FE716BA934D3D947F33FFBD6373EDE763F9ECBB4B9A';
wwv_flow_imp.g_varchar2_table(194) := 'CA7C08B9BF97C8E4C08E0EC56F08B81CCEC88241E5D3F2A7F4182296BF61068058B478AE1E020C007AA8B3CE2B02460A00E130EA5A5B70EC62F499EC57872F32A9ADB050D52F145F5B9BE22F39A35D5662D5C3C89B102A1E624E40606040510D62D780C5';
wwv_flow_imp.g_varchar2_table(195) := '33675D79432086B73314153EC9490C00F1CAF1735A0930006825CD7ADE2F609000100A0471E0E2055CEC6857364A365BE496FFB5CBFA2AFB706C6789F900E22E40B44D83622B55FDB3236B201417A97267E4DAD6FB7BC51E02D1DF9C109FB3DB6C985D54';
wwv_flow_imp.g_varchar2_table(196) := '8CA5B366C1A9607D86A94831004C458F9FD5428001400B65D631B980010240C0EFC71BE7CEE2B2C299FEB04DBEA6BF9A431CF6FB2313DFA2AD14A8661B6229DB9E927A650124151E8B48B5C3DFDB1BD34642330B0AB16CF66C78546C2303402C570DCFD5';
wwv_flow_imp.g_varchar2_table(197) := '438001400F75D6794540E700302CD6F4AFABC340942578DF192EBB23329B5D4CFAD3FC0887E16B6F37FC9D80C89C88A24245AB1F26DA30343E0E5F7B07C201BFA2A2F33232B07EFE02A4ABF486000380A261E0493A0A3000E8886FF9AA750C001D03FD38';
wwv_flow_imp.g_varchar2_table(198) := '74E62C86BC138A8641ACE52F9E6747B6AED5EB088723CFBBC52D6F84E4B710D6BA899135107273AFACF2A7C1F375A9FE85BC5EF8BB7B14DF2D49F378B076FE02145CB34B6322FC180012A1C832D414600050539765CB0BE81400DA7A7AB0FFDC598CFB95';
wwv_flow_imp.g_varchar2_table(199) := 'FD5214EFF6BB4A94ADE9AFC5908B5704235F720AC38BDA6D1277445CF9F9897DD56F0A8D16EB27882D96953E324971B9227B0888AD851379300024529365A921C000A0862ACB5426A0430068686DC5B18B172016B3517288257DC5979B9EBF6AE57EED86';
wwv_flow_imp.g_varchar2_table(200) := '262610F67A217EF98A1DF4C4EB714A96CB55D2F7F79D63B345563BB4B93DB0BB5DB0793C70A4A6CAEF7418574509F850388CC8BC8068DB2CBFABAA153367634E696CFB37C8B594012001E3C8225415600050959785CB0A681800C43FC6479B1A71A1B555';
wwv_flow_imp.g_varchar2_table(201) := 'D997BFCD1E59CFDF95A7EF2D6D455750381C591E37B2446E28F4BE102076230C87C391F903C1A121D980E0CCC98178BDF16A59EFD42FBEFCC5AD7D1100DEFE9F1143D17BBCC42393C121F8BBBB1487A2F99595A82DAF80330193031900145DBD3C494701';
wwv_flow_imp.g_varchar2_table(202) := '06001DF12D5FB5460160C2EFC7E1B3677149E1AB62B03BE02E2C80234BD99AF86619C7C896C32D2D913B05931E363B52A6576B3A7B5F0B3BA5BB2C5E6DCBACA2222C9B390BEE29860006002D4697754C458001602A7AFCECD404340800A36363D87BE60C';
wwv_flow_imp.g_varchar2_table(203) := 'BA2576C0BBB60362DD7AF10A9BAE93FDA6A62AF969F178C0D7D28A90D412BE363B3C951549D977F188C4D7DAA6F80D8182CC2CACABA941EA14DE10600050E94266B1091360004818250B8A5940CD00100EA36B6810BB1B1AE0F57A15354DAC572FB6AB4D';
wwv_flow_imp.g_varchar2_table(204) := 'E49AFE8A2AD6EA24E1DDD202F1BA9CD41D004F4539EC53F8D2D3AA2BF1D423EE7C78DBDB237326941CD96969583E63264AE29C1CC800A04499E7E829C000A0A7BED5EB562900048341347574449EF9FBAED9D4468A5CCCF477979525F788583C0088C18D';
wwv_flow_imp.g_varchar2_table(205) := '7A17E49A2B20C5E9C482CA2ACC292D8523C69503190092FBCF29197AC700900CA368D63E440B000E27EE5FB952F1842CF18F7BDFD0308E345E547CCB5FD08977D75D0505665554DE6E06808855647965B19190C2AD9EC5678AB2B3B1ACAA1A7959598A17';
wwv_flow_imp.g_varchar2_table(206) := '39F2070278E5741D7A06FB25EEB8A8B053A2F2AB816752000C00BC08F413881200EC76073E280240946D76C3A13006468671BAAD154D5D5D31F5477CF14716AFB1C2C100F09E518EEC21205E130C87148DBED83BA0BAB00835A5A5C84E4F8FFA6AE8C8C4';
wwv_flow_imp.g_varchar2_table(207) := '047635D46340BC7931D9A1C656C98A7AC29328704580018057827E02D1F675B7D9B0BAA6063959D910DBD386C4AB68E2FFFDFEC8737D31C16F746C1C236363E81C1DC67820A0B82F629D7A575111C4AD7FCB1C0C00EF1B6A7117402C1F1CCBCA8A196E37';
wwv_flow_imp.g_varchar2_table(208) := '7253D3909B9E818CF434785252E0118B21391C1051C201C063B3E36C7717EA9A1AE1975A708A01C0327F7A46ED2803805147C60AED8A1600C4EE6D763BEC6E0F6C0EB199AB789D3B8CA0CF7FE53D7585BFDCAEA5B47B52E02A2CD0674D7F3DC795016052';
wwv_flow_imp.g_varchar2_table(209) := 'FDC81E025D5D8A2707BEAF109B3DB23642E44E955D445400C110FC62B2A1DC35CA00A0E75F03EBE61D005E03BA0A280800896E9F1E3BD525BA0F7197C700204927DE10107702345D5E990120EE4B991F4C8C00EF0024C691A5C423A0650030D3CA7EF158';
wwv_flow_imp.g_varchar2_table(210) := '2AF90C0380BCD2D5E583FB07E2BEBBA46418DE39870120262E9E9C78010680C49BB244A502E20BE972B3EABFBA223BF915161A66B31AA53C093F2F4A0010B7B1DDE5E549B910502C9662E5407F4F2FC27E89151363294CE6DC88775959D2AEBB90202616';
wwv_flow_imp.g_varchar2_table(211) := 'A3A20003808AB82C3A8A80DA01C066BBF28A9F4137F3D1E3FAF036374B2E042436F7F1949626EF424831808B392601F196C0A0B81BA06CE3A8188A8F9C2A7651741717D33B56389E9F300106808451B2A07804C473D7A0C2657A95962F66F83BB273E0CC';
wwv_flow_imp.g_varchar2_table(212) := 'CD51FCCEB6D2B2CD7E9EAFAD2DB229D06487D8FB40AC8468F84D7E341C04B17F82785550DC15884C3C4DE041EF0462B2A8B8041800E262E387122520BE8C22AF61C539A3FF9D768857045DAEC86B7DE21FD6645CCB3F11E6918D71DADBDF5F5412EF0390';
wwv_flow_imp.g_varchar2_table(213) := '0837F1A640606808A1D1D1B7DF4099FA5D018F78DC92969688E6B10C0AC425C00010171B3F944881C836B5C32388EC6D1FF0472F5ABC7665B7C3E676C1EE761B7B5FFAE8BDD1FC0C1102C4FBEFE1B75FA7B4A778E0CCCEE697919291105B2FFBFD088E8D';
wwv_flow_imp.g_varchar2_table(214) := '47E6AE88B707C2FEC0DB7707A285025B64A745E12D42AAA5D6A05062CB7334176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648';
wwv_flow_imp.g_varchar2_table(215) := '010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82F';
wwv_flow_imp.g_varchar2_table(216) := 'C000A0FF18B00514A00005284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A';
wwv_flow_imp.g_varchar2_table(217) := '50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A50407301';
wwv_flow_imp.g_varchar2_table(218) := '0600CDC95921052840010A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214';
wwv_flow_imp.g_varchar2_table(219) := 'A0000528A0BF000380FE63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F8001';
wwv_flow_imp.g_varchar2_table(220) := '40FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A000';
wwv_flow_imp.g_varchar2_table(221) := '05284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C00';
wwv_flow_imp.g_varchar2_table(222) := '9A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC9592105284001';
wwv_flow_imp.g_varchar2_table(223) := '0A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE';
wwv_flow_imp.g_varchar2_table(224) := '63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A50';
wwv_flow_imp.g_varchar2_table(225) := '80029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427';
wwv_flow_imp.g_varchar2_table(226) := '678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A0';
wwv_flow_imp.g_varchar2_table(227) := '80FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC780';
wwv_flow_imp.g_varchar2_table(228) := '2DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A00005';
wwv_flow_imp.g_varchar2_table(229) := '34176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A';
wwv_flow_imp.g_varchar2_table(230) := '2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC7802DA000052840010A682EC000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427678514A00005284001FD';
wwv_flow_imp.g_varchar2_table(231) := '051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A0000534176000D09C9C1552800214A00005F4176000D07F0CD8020A50800214A080E6020C009A93B3420A50800214A080FE020C00FA8F015B40';
wwv_flow_imp.g_varchar2_table(232) := '010A50800214D05C80014073725648010A50800214D05F800140FF31600B2840010A5080029A0B3000684ECE0A2940010A508002FA0B3000E83F066C01052840010A504073010600CDC95921052840010A50407F010600FDC7802DA000052840010A682E';
wwv_flow_imp.g_varchar2_table(233) := 'C000A039392BA400052840010AE82FC000A0FF18B00514A00005284001CD0518003427678514A00005284001FD051800F41F03B6800214A0000528A0B9000380E6E4AC900214A0000528A0BF000380FE63C01650800214A000053417F8FF011F37B7F0E2';
wwv_flow_imp.g_varchar2_table(234) := 'ECCC870000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(57431476401615081973)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431467555019081960)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>15633724934922
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431467840665081960)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>15633724934932
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431468160861081960)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>15633724934943
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431468492439081960)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER',
  'show_coordinates', 'N')).to_clob
,p_version_scn=>15633724934956
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431468723525081961)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>15633724934961
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431469063422081961)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>15633724934969
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431469329996081961)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>15633724934972
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431469638079081961)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>15633724934972
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431469999418081961)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attribute_01=>'RELAX_HOUSE_NUMBER'
,p_version_scn=>15633724934975
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431470297683081961)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>15633724934978
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431470504873081962)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>15633724934985
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431470868003081962)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>15633724934992
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431471195777081962)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>15633724934995
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(57431471406585081962)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>15633724934995
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(57431477755986081974)
,p_name=>'Administration Rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attribute_01=>'return true;'
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>15633724935320
,p_caching=>'BY_USER_BY_PAGE_VIEW'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(57431478016463081975)
,p_group_name=>'Administration'
);
end;
/
prompt --application/comments
begin
null;
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(57431472399877081963)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(57431472567973081963)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58005268066775494205)
,p_short_name=>'JOSN HOLDER'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58006230407538569936)
,p_short_name=>'GET RATE'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(58007236809536639718)
,p_short_name=>'GET ALL RATES'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/templates/popuplov
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(57431473291426081964)
,p_theme_id=>42
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'24.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_reference_id=>4072363937200175119
,p_is_locked=>false
,p_current_theme_style_id=>2721322117358710262
,p_default_page_template=>4072355960268175073
,p_default_dialog_template=>2100407606326202693
,p_error_template=>2101157952850466385
,p_printer_friendly_template=>4072355960268175073
,p_login_template=>2101157952850466385
,p_default_button_template=>4072362960822175091
,p_default_region_template=>4072358936313175081
,p_default_chart_template=>4072358936313175081
,p_default_form_template=>4072358936313175081
,p_default_reportr_template=>4072358936313175081
,p_default_tabform_template=>4072358936313175081
,p_default_wizard_template=>4072358936313175081
,p_default_menur_template=>2531463326621247859
,p_default_listr_template=>4072358936313175081
,p_default_irr_template=>2100526641005906379
,p_default_report_template=>2538654340625403440
,p_default_label_template=>1609121967514267634
,p_default_menu_template=>4072363345357175094
,p_default_calendar_template=>4072363550766175095
,p_default_list_template=>4072361143931175087
,p_default_nav_list_template=>2526754704087354841
,p_default_top_nav_list_temp=>2526754704087354841
,p_default_side_nav_list_temp=>2467739217141810545
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2126429139436695430
,p_default_dialogr_template=>4501440665235496320
,p_default_option_label=>1609121967514267634
,p_default_required_label=>1609122147107268652
,p_default_navbar_list_template=>2847543055748234966
,p_file_prefix => nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/24.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(57431471718849081963)
,p_build_option_name=>'Commented Out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>15633724934995
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(57431472018223081963)
,p_name=>'Oracle APEX Accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>15633724935006
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_step_title=>'Global Page'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_page_component_map=>'14'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'API TEST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57431485749220081982)
,p_plug_name=>'API TEST'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2674017834225413037
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'JSON HOLDER'
,p_alias=>'JOSN-HOLDER'
,p_step_title=>'JOSN HOLDER'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58005267582823494204)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(57431472399877081963)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(58005268253814494205)
,p_name=>'JOSN HOLDER'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DERO_PARSED_USERS'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005268968455494448)
,p_query_column_id=>1
,p_column_alias=>'USER_ID'
,p_column_display_sequence=>0
,p_column_heading=>'User ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005269305636494448)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>2
,p_column_heading=>'Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005269727343494448)
,p_query_column_id=>3
,p_column_alias=>'USERNAME'
,p_column_display_sequence=>3
,p_column_heading=>'Username'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005270124173494449)
,p_query_column_id=>4
,p_column_alias=>'EMAIL'
,p_column_display_sequence=>4
,p_column_heading=>'Email'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005270573327494449)
,p_query_column_id=>5
,p_column_alias=>'ADDRESS_STREET'
,p_column_display_sequence=>5
,p_column_heading=>'Address Street'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005270979084494449)
,p_query_column_id=>6
,p_column_alias=>'ADDRESS_SUITE'
,p_column_display_sequence=>6
,p_column_heading=>'Address Suite'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005271305466494449)
,p_query_column_id=>7
,p_column_alias=>'ADDRESS_CITY'
,p_column_display_sequence=>7
,p_column_heading=>'Address City'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005271774929494450)
,p_query_column_id=>8
,p_column_alias=>'ADDRESS_ZIPCODE'
,p_column_display_sequence=>8
,p_column_heading=>'Address Zipcode'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005272102445494450)
,p_query_column_id=>9
,p_column_alias=>'ADDRESS_GEO_LAT'
,p_column_display_sequence=>9
,p_column_heading=>'Address Geo Lat'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005272550454494451)
,p_query_column_id=>10
,p_column_alias=>'ADDRESS_GEO_LON'
,p_column_display_sequence=>10
,p_column_heading=>'Address Geo Lon'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005272951300494451)
,p_query_column_id=>11
,p_column_alias=>'PHONE'
,p_column_display_sequence=>11
,p_column_heading=>'Phone'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005273381233494451)
,p_query_column_id=>12
,p_column_alias=>'WEBSITE'
,p_column_display_sequence=>12
,p_column_heading=>'Website'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005273776321494451)
,p_query_column_id=>13
,p_column_alias=>'COMPANY_NAME'
,p_column_display_sequence=>13
,p_column_heading=>'Company Name'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005274112530494452)
,p_query_column_id=>14
,p_column_alias=>'COMPANY_CATCHPHRASE'
,p_column_display_sequence=>14
,p_column_heading=>'Company Catchphrase'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005274508979494452)
,p_query_column_id=>15
,p_column_alias=>'COMPANY_BS'
,p_column_display_sequence=>15
,p_column_heading=>'Company Bs'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58005274911012494452)
,p_query_column_id=>16
,p_column_alias=>'FETCHED_ON'
,p_column_display_sequence=>16
,p_column_heading=>'Fetched On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(45560603610338548750)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(58005268253814494205)
,p_button_name=>'GET_USERS'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Get Users'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58005903988395499501)
,p_name=>'GET'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(45560603610338548750)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58005904052156499502)
,p_event_id=>wwv_flow_imp.id(58005903988395499501)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DERO_REST_JSONPLACEHOLDER_PKG.fetch_and_process_users;'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58005904172085499503)
,p_event_id=>wwv_flow_imp.id(58005903988395499501)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58005268253814494205)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'GET RATE'
,p_alias=>'GET-RATE'
,p_step_title=>'GET RATE'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58006229947439569935)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(57431472399877081963)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(58006230651306569937)
,p_name=>'GET RATE'
,p_template=>4072358936313175081
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DERO_PARSED_RATES'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006231721944570168)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>0
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006232179421570169)
,p_query_column_id=>2
,p_column_alias=>'BASE_CURRENCY'
,p_column_display_sequence=>2
,p_column_heading=>'Base Currency'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006232503930570169)
,p_query_column_id=>3
,p_column_alias=>'CONVERSION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Conversion Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006232920516570169)
,p_query_column_id=>4
,p_column_alias=>'USD_RATE'
,p_column_display_sequence=>4
,p_column_heading=>'Usd Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006233373317570170)
,p_query_column_id=>5
,p_column_alias=>'EUR_RATE'
,p_column_display_sequence=>5
,p_column_heading=>'Eur Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006233796502570170)
,p_query_column_id=>6
,p_column_alias=>'GBP_RATE'
,p_column_display_sequence=>6
,p_column_heading=>'Gbp Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006234131768570170)
,p_query_column_id=>7
,p_column_alias=>'JPY_RATE'
,p_column_display_sequence=>7
,p_column_heading=>'Jpy Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006234509947570170)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATED_UNIX'
,p_column_display_sequence=>8
,p_column_heading=>'Last Updated Unix'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58006234974237570171)
,p_query_column_id=>9
,p_column_alias=>'FETCHED_ON'
,p_column_display_sequence=>9
,p_column_heading=>'Fetched On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(58005904336941499505)
,p_button_sequence=>30
,p_button_name=>'CHECK'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Check'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'N'
,p_grid_new_column=>'N'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(58005904256647499504)
,p_name=>'P_CURRENCY'
,p_item_sequence=>10
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(58005904460017499506)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(58005904336941499505)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58005904664514499508)
,p_event_id=>wwv_flow_imp.id(58005904460017499506)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'rate_api_pkg.get_exchange_rates(:P_CURRENCY);'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(58005904558483499507)
,p_event_id=>wwv_flow_imp.id(58005904460017499506)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(58006230651306569937)
,p_attribute_01=>'N'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'GET ALL RATES'
,p_alias=>'GET-ALL-RATES'
,p_step_title=>'GET ALL RATES'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(58007236376630639717)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(57431472399877081963)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(58007237078291639719)
,p_name=>'GET ALL RATES'
,p_template=>4072358936313175081
,p_display_sequence=>10
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--staticRowColors:t-Report--rowHighlight:t-Report--inline:t-Report--hideNoPagination'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'DERO_PARSED_RATES'
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2538654340625403440
,p_query_num_rows=>50
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'no data found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_query_row_count_max=>500
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_prn_output=>'N'
,p_prn_format=>'PDF'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007238503275639966)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>0
,p_column_heading=>'ID'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_hidden_column=>'Y'
,p_include_in_export=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007238986423639967)
,p_query_column_id=>2
,p_column_alias=>'BASE_CURRENCY'
,p_column_display_sequence=>2
,p_column_heading=>'Base Currency'
,p_heading_alignment=>'LEFT'
,p_default_sort_column_sequence=>1
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007239337235639967)
,p_query_column_id=>3
,p_column_alias=>'CONVERSION_DATE'
,p_column_display_sequence=>3
,p_column_heading=>'Conversion Date'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007239733997639967)
,p_query_column_id=>4
,p_column_alias=>'USD_RATE'
,p_column_display_sequence=>4
,p_column_heading=>'Usd Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007240139797639967)
,p_query_column_id=>5
,p_column_alias=>'EUR_RATE'
,p_column_display_sequence=>5
,p_column_heading=>'Eur Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007240527684639968)
,p_query_column_id=>6
,p_column_alias=>'GBP_RATE'
,p_column_display_sequence=>6
,p_column_heading=>'Gbp Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007240978470639968)
,p_query_column_id=>7
,p_column_alias=>'JPY_RATE'
,p_column_display_sequence=>7
,p_column_heading=>'Jpy Rate'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007241308477639968)
,p_query_column_id=>8
,p_column_alias=>'LAST_UPDATED_UNIX'
,p_column_display_sequence=>8
,p_column_heading=>'Last Updated Unix'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(58007241775519639968)
,p_query_column_id=>9
,p_column_alias=>'FETCHED_ON'
,p_column_display_sequence=>9
,p_column_heading=>'Fetched On'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_include_in_export=>'Y'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'API TEST - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2101157952850466385
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(57431478639834081976)
,p_plug_name=>'API TEST'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2674157997338192145
,p_plug_display_sequence=>10
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(57431480348052081978)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(57431478639834081976)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57431479168400081977)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(57431478639834081976)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57431479522984081977)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(57431478639834081976)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2040785906935475274
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(57431479962837081978)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(57431478639834081976)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2040785906935475274
,p_item_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', '',
  'unchecked_value', '',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57431482628296081980)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'SEND_LOGIN_USERNAME_COOKIE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57431482628296081980
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(57431483110448081980)
,p_page_process_id=>wwv_flow_imp.id(57431482628296081980)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(57431483674491081980)
,p_page_process_id=>wwv_flow_imp.id(57431482628296081980)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57431480695841081978)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_attribute_01=>'PLSQL_PACKAGE'
,p_attribute_03=>'APEX_AUTHENTICATION'
,p_attribute_04=>'LOGIN'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57431480695841081978
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(57431481136019081979)
,p_page_process_id=>wwv_flow_imp.id(57431480695841081978)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(57431481625825081979)
,p_page_process_id=>wwv_flow_imp.id(57431480695841081978)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(57431482170538081979)
,p_page_process_id=>wwv_flow_imp.id(57431480695841081978)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57431484569782081981)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>57431484569782081981
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(57431484195740081981)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>57431484195740081981
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
