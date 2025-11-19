@interface AAPCommandLaunch
- (id)_siriDismissalOpenApplicationOptions;
- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4 executionInfo:(id)a5;
@end

@implementation AAPCommandLaunch

- (void)performWithCompletion:(id)a3 serviceHelper:(id)a4 executionInfo:(id)a5
{
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v24 = sub_1FFC;
  v25 = &unk_20748;
  v26 = self;
  v27 = a3;
  v7 = [(AAPCommandLaunch *)self launchId:a3];
  v8 = [a5 turnId];
  v9 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    v29 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v30 = 2112;
    v31 = a5;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: ExecutionInfo: %@", buf, 0x16u);
  }

  if (!v7)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F514();
    }

    goto LABEL_17;
  }

  v10 = [(AAPCommandLaunch *)self executionEnvironment];
  if ([v10 isEqualToString:SAAppsLaunchAppSTARK_EXECUTION_ENVValue])
  {
    v11 = +[FBSOpenApplicationService dashboardService];
    v12 = [FBSOpenApplicationOptions optionsWithDictionary:&__NSDictionary0__struct];
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyUnlockDevice];
    [v13 setObject:&__kCFBooleanTrue forKey:FBSOpenApplicationOptionKeyPromptUnlockDevice];
    [v13 addEntriesFromDictionary:{-[AAPCommandLaunch _siriDismissalOpenApplicationOptions](self, "_siriDismissalOpenApplicationOptions")}];
    v11 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
    v12 = +[FBSOpenApplicationOptions optionsWithDictionary:](FBSOpenApplicationOptions, "optionsWithDictionary:", [v13 copy]);
  }

  v14 = AFSiriLogContextPlugin;
  if (!v11)
  {
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F460();
    }

LABEL_17:
    v17 = objc_alloc_init(SACommandFailed);
    v24(v23, [v17 dictionary]);

    return;
  }

  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v15 = objc_opt_class();
    *buf = 136315906;
    v29 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v30 = 2114;
    v31 = v15;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = v7;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> processing command for app (%@)", buf, 0x2Au);
  }

  if (v8)
  {
    v16 = objc_alloc_init(SISchemaUEIUUFRReady);
    [+[AFAnalytics sharedAnalytics](AFAnalytics "sharedAnalytics")];

    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_F358();
    }
  }

  else
  {
    v18 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_ERROR))
    {
      sub_F3DC(v18);
    }
  }

  v19 = v11;
  v20 = AFSiriLogContextPlugin;
  if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_INFO))
  {
    v21 = objc_opt_class();
    *buf = 136315906;
    v29 = "[AAPCommandLaunch performWithCompletion:serviceHelper:executionInfo:]";
    v30 = 2114;
    v31 = v21;
    v32 = 2048;
    v33 = self;
    v34 = 2112;
    v35 = v12;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%s com.apple.siri.applications: <%{public}@:%p> launchOptions (%@)", buf, 0x2Au);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_2178;
  v22[3] = &unk_20770;
  v22[4] = self;
  v22[5] = v7;
  v22[6] = v11;
  v22[7] = v23;
  [(FBSOpenApplicationService *)v11 openApplication:v7 withOptions:v12 completion:v22];
}

- (id)_siriDismissalOpenApplicationOptions
{
  v3 = objc_opt_new();
  if (AFIsPersistentSiriAvailable())
  {
    v4 = AFSiriLogContextPlugin;
    if (os_log_type_enabled(AFSiriLogContextPlugin, OS_LOG_TYPE_DEBUG))
    {
      sub_F6AC(v4);
    }

    [(AAPCommandLaunch *)self setDoNotDismissSiri:1];
  }

  v5 = [NSNumber numberWithBool:[(AAPCommandLaunch *)self doNotDismissSiri]];
  [v3 setObject:v5 forKey:SBSOpenApplicationOptionKeyDoNotDismissSiri];
  return v3;
}

@end