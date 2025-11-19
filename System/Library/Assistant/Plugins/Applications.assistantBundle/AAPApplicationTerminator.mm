@interface AAPApplicationTerminator
- (void)terminateAllAppsExcludingBundleIdentifiers:(id)a3 completion:(id)a4;
@end

@implementation AAPApplicationTerminator

- (void)terminateAllAppsExcludingBundleIdentifiers:(id)a3 completion:(id)a4
{
  v5 = objc_alloc_init(NSMutableSet);
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_36B0;
  v28 = &unk_20818;
  v29 = v5;
  AFApplicationWorkspaceEnumerateInstalledUserVisibleApplications();
  v6 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v21 objects:v35 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        *buf = 0;
        v12 = [RBSProcessHandle handleForPredicate:[RBSProcessPredicate predicateMatchingBundleIdentifier:v11] error:buf];
        if (!*buf && [objc_msgSend(v12 "currentState")])
        {
          [v6 addObject:v11];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v21 objects:v35 count:16];
    }

    while (v8);
  }

  if ([v6 count])
  {
    v20 = 0;
    if ([objc_msgSend([RBSTerminateRequest alloc] initWithPredicate:+[RBSProcessPredicate predicateMatchingBundleIdentifiers:](RBSProcessPredicate context:{"predicateMatchingBundleIdentifiers:", v6), objc_msgSend([RBSTerminateContext alloc], "initWithExplanation:", @"Siri asked to terminate all applications", "execute:", &v20}])
    {
      v13 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        *&buf[4] = "[AAPApplicationTerminator terminateAllAppsExcludingBundleIdentifiers:completion:]";
        _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: Terminated all running apps successfully", buf, 0xCu);
      }

      if (a4)
      {
        v14 = 0;
LABEL_26:
        (*(a4 + 2))(a4, v14);
      }
    }

    else
    {
      v16 = [NSMutableDictionary alloc];
      v33 = NSLocalizedDescriptionKey;
      v34 = @"Failed to terminate one or more of the running apps";
      v17 = [v16 initWithDictionary:{+[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v34, &v33, 1)}];
      v18 = v17;
      if (v20)
      {
        [v17 setObject:v20 forKey:NSUnderlyingErrorKey];
      }

      v14 = [NSError errorWithDomain:@"com.apple.assistant.appsync.apptermination" code:2 userInfo:v18];
      v19 = AFSiriLogContextPlugin;
      if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        *&buf[4] = "[AAPApplicationTerminator terminateAllAppsExcludingBundleIdentifiers:completion:]";
        v31 = 2112;
        v32 = v14;
        _os_log_impl(&dword_0, v19, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: %@", buf, 0x16u);
      }

      if (a4)
      {
        goto LABEL_26;
      }
    }
  }

  else
  {
    v15 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      *&buf[4] = "[AAPApplicationTerminator terminateAllAppsExcludingBundleIdentifiers:completion:]";
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: No running apps to terminate", buf, 0xCu);
    }

    if (a4)
    {
      (*(a4 + 2))(a4, 0);
    }
  }
}

@end