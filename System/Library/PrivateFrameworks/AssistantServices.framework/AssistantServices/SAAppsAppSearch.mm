@interface SAAppsAppSearch
- (void)_ad_handleAppLaunchCommandWithRequest:(id)a3 completion:(id)a4;
@end

@implementation SAAppsAppSearch

- (void)_ad_handleAppLaunchCommandWithRequest:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSMutableArray);
  v9 = [(SAAppsAppSearch *)self applicationName];
  v15 = v9;
  v10 = v8;
  v16 = v10;
  AFApplicationWorkspaceEnumerateInstalledUserVisibleApplications();
  v11 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    *buf = 136315906;
    v18 = "[SAAppsAppSearch(ADSiriAppLaunchRequestHandler) _ad_handleAppLaunchCommandWithRequest:completion:]";
    v19 = 2048;
    v20 = [v10 count];
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Found %tu apps matching name %@: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SAAppsAppSearchResponse);
  [v13 setFoundApps:v10];
  v14 = [v7 createResponseWithReplyCommand:v13];

  if (v6)
  {
    (*(v6 + 2))(v6, v14, 0, 0);
  }
}

@end