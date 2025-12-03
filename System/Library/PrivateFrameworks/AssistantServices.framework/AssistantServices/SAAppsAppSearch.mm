@interface SAAppsAppSearch
- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion;
@end

@implementation SAAppsAppSearch

- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  requestCopy = request;
  v8 = objc_alloc_init(NSMutableArray);
  applicationName = [(SAAppsAppSearch *)self applicationName];
  v15 = applicationName;
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
    v22 = applicationName;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s Found %tu apps matching name %@: %@", buf, 0x2Au);
  }

  v13 = objc_alloc_init(SAAppsAppSearchResponse);
  [v13 setFoundApps:v10];
  v14 = [requestCopy createResponseWithReplyCommand:v13];

  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, v14, 0, 0);
  }
}

@end