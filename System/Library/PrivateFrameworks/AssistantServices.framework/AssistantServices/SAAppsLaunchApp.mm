@interface SAAppsLaunchApp
- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion;
@end

@implementation SAAppsLaunchApp

- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  serviceWithDefaultShellEndpoint = [off_10058BBA0() serviceWithDefaultShellEndpoint];
  if (serviceWithDefaultShellEndpoint)
  {
    _turnId = [requestCopy _turnId];
    if (_turnId)
    {
      v10 = objc_alloc_init(SISchemaUEIUUFRReady);
      v11 = +[AFAnalytics sharedAnalytics];
      [v11 logInstrumentation:v10 machAbsoluteTime:mach_absolute_time() turnIdentifier:_turnId];

      v12 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        v20 = "[SAAppsLaunchApp(ADSiriAppLaunchRequestHandler) _ad_handleAppLaunchCommandWithRequest:completion:]";
        v21 = 2112;
        v22 = _turnId;
        _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "%s Logging UUFR ready for app launch with turnid: %@", buf, 0x16u);
      }
    }

    else
    {
      v13 = AFSiriLogContextDaemon;
      if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v20 = "[SAAppsLaunchApp(ADSiriAppLaunchRequestHandler) _ad_handleAppLaunchCommandWithRequest:completion:]";
        _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s Failed to find turnId for app launch UUFR", buf, 0xCu);
      }
    }

    launchId = [(SAAppsLaunchApp *)self launchId];
    v15 = [off_10058BBA8() optionsWithDictionary:&__NSDictionary0__struct];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10014A4F4;
    v16[3] = &unk_100513088;
    v18 = completionCopy;
    v17 = requestCopy;
    [serviceWithDefaultShellEndpoint openApplication:launchId withOptions:v15 completion:v16];

    goto LABEL_11;
  }

  if (completionCopy)
  {
    _turnId = [AFError errorWithCode:13];
    (*(completionCopy + 2))(completionCopy, 0, 0, _turnId);
LABEL_11:
  }
}

@end