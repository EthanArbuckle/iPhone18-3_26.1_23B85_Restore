@interface SAAppsGetRestrictedApps
- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion;
@end

@implementation SAAppsGetRestrictedApps

- (void)_ad_handleAppLaunchCommandWithRequest:(id)request completion:(id)completion
{
  requestCopy = request;
  completionCopy = completion;
  v28 = objc_alloc_init(NSMutableDictionary);
  serviceWithDefaultShellEndpoint = [off_10058BBA0() serviceWithDefaultShellEndpoint];
  if (!serviceWithDefaultShellEndpoint)
  {
    v10 = [AFError errorWithCode:13];
    if (v10)
    {
      goto LABEL_25;
    }

LABEL_18:
    v20 = objc_alloc_init(SAAppsGetRestrictedAppsResponse);
    [v20 setAppToItsRestrictionsMap:v28];
    v21 = [requestCopy createResponseWithReplyCommand:v20];

    if (!completionCopy)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  appIds = [(SAAppsGetRestrictedApps *)self appIds];
  v10 = [appIds countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v10)
  {
    v26 = completionCopy;
    v11 = *v31;
    v12 = SAAppsAppRestrictionReasonRESTRICTEDValue;
    v27 = SAAppsAppRestrictionReasonNOT_FOUNDValue;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v31 != v11)
        {
          objc_enumerationMutation(appIds);
        }

        v14 = *(*(&v30 + 1) + 8 * i);
        v29 = 0;
        if ([serviceWithDefaultShellEndpoint canOpenApplication:v14 reason:&v29])
        {
          v15 = AFSiriLogContextDaemon;
          if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            v36 = "[SAAppsGetRestrictedApps(ADSiriAppLaunchRequestHandler) _ad_handleAppLaunchCommandWithRequest:completion:]";
            v37 = 2112;
            v38 = v14;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s app (%@) can be launched - filtering", buf, 0x16u);
          }
        }

        else
        {
          v16 = v29;
          if (v29 == 8)
          {
            v22 = AFSiriLogContextDaemon;
            if (os_log_type_enabled(AFSiriLogContextDaemon, OS_LOG_TYPE_INFO))
            {
              v23 = v22;
              v24 = FBSOpenApplicationErrorCodeToString();
              *buf = 136315650;
              v36 = "[SAAppsGetRestrictedApps(ADSiriAppLaunchRequestHandler) _ad_handleAppLaunchCommandWithRequest:completion:]";
              v37 = 2112;
              v38 = v14;
              v39 = 2112;
              v40 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "%s app (%@) can not be launched due to '%@' - bailing", buf, 0x20u);

              v25 = v29;
            }

            else
            {
              v25 = 8;
            }

            completionCopy = v26;
            v10 = [NSError errorWithDomain:@"com.apple.siri.bksopenapplication.ErrorDomain" code:v25 userInfo:0];
            goto LABEL_24;
          }

          v17 = v12;
          if (v16 == 4)
          {
            v18 = v27;

            v17 = v18;
          }

          v34 = v17;
          v19 = [NSArray arrayWithObjects:&v34 count:1];
          [v28 setObject:v19 forKey:v14];
        }
      }

      v10 = [appIds countByEnumeratingWithState:&v30 objects:v41 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    completionCopy = v26;
  }

LABEL_24:

  if (!v10)
  {
    goto LABEL_18;
  }

LABEL_25:
  v21 = 0;
  if (completionCopy)
  {
LABEL_26:
    completionCopy[2](completionCopy, v21, 0, v10);
  }

LABEL_27:
}

@end