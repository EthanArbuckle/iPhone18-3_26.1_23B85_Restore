@interface BuddySceneDelegate
- (void)scene:(id)scene openURLContexts:(id)contexts;
- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillResignActive:(id)active;
@end

@implementation BuddySceneDelegate

- (void)scene:(id)scene willConnectToSession:(id)session options:(id)options
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  v41 = 0;
  objc_storeStrong(&v41, session);
  v40 = 0;
  objc_storeStrong(&v40, options);
  v39 = _BYLoggingFacility();
  v38 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    v7 = location[0];
    v8 = v41;
    v9 = v40;
    uRLContexts = [v40 URLContexts];
    sub_1001321D4(buf, v7, v8, v9, uRLContexts);
    _os_log_impl(&_mh_execute_header, v39, v38, "scene: %@ willConnectToSession: %@ options: %@ URL contexts %@", buf, 0x2Au);
  }

  objc_storeStrong(&v39, 0);
  v33 = 0;
  v34 = &v33;
  v35 = 0x20000000;
  v36 = 32;
  v37 = 0;
  v27 = _NSConcreteStackBlock;
  v28 = -1073741824;
  v29 = 0;
  v30 = sub_100132204;
  v31 = &unk_10032D480;
  v32 = &v33;
  [BuddyApplicationAndSceneSharedStorage ensureSetupControllerWithFactoryBlock:&v27];
  v25 = 0u;
  v24 = 0u;
  v23 = 0u;
  v22 = 0u;
  uRLContexts2 = [v40 URLContexts];
  v12 = [uRLContexts2 countByEnumeratingWithState:&v22 objects:v44 count:16];
  if (v12)
  {
    v13 = *v23;
    do
    {
      for (i = 0; i < v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(uRLContexts2);
        }

        v26 = *(*(&v22 + 1) + 8 * i);
        v15 = [v26 URL];
        absoluteString = [v15 absoluteString];
        v17 = [absoluteString isEqualToString:BYSetupAssistantLaunchMigrationSourceUIURL];

        if (v17)
        {
          v18 = +[BuddyApplicationAndSceneSharedStorage setupController];
          [(SetupController *)v18 setLaunchedForMigration:1];
        }
      }

      v12 = [uRLContexts2 countByEnumeratingWithState:&v22 objects:v44 count:16];
    }

    while (v12);
  }

  v21 = (*(v34 + 24) ^ 1) & 1;
  if (v21)
  {
    oslog = _BYLoggingFacility();
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      sub_1000B25DC(v43, "[BuddySceneDelegate scene:willConnectToSession:options:]");
      _os_log_error_impl(&_mh_execute_header, oslog, OS_LOG_TYPE_ERROR, "%s was called multiple times!", v43, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  v19 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v19 runWithScene:location[0]];

  _Block_object_dispose(&v33, 8);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(location, 0);
}

- (void)scene:(id)scene openURLContexts:(id)contexts
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scene);
  v22 = 0;
  objc_storeStrong(&v22, contexts);
  v5 = +[BuddyApplicationAndSceneSharedStorage setupController];
  launchedForMigration = [(SetupController *)v5 launchedForMigration];

  v21 = launchedForMigration & 1;
  memset(__b, 0, sizeof(__b));
  v7 = v22;
  v8 = [v7 countByEnumeratingWithState:__b objects:v24 count:16];
  if (v8)
  {
    v9 = *__b[2];
    do
    {
      for (i = 0; i < v8; ++i)
      {
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(v7);
        }

        v20 = *(__b[1] + 8 * i);
        v11 = [v20 URL];
        absoluteString = [v11 absoluteString];
        v13 = 0;
        if ([absoluteString isEqualToString:BYSetupAssistantLaunchMigrationSourceUIURL])
        {
          v13 = v21 ^ 1;
        }

        if (v13)
        {
          oslog = _BYLoggingFacility();
          v17 = 17;
          if (os_log_type_enabled(oslog, OS_LOG_TYPE_FAULT))
          {
            v14 = oslog;
            v15 = v17;
            sub_10006AA68(v16);
            _os_log_fault_impl(&_mh_execute_header, v14, v15, "Attempted to launch Setup for source migration after it's already running", v16, 2u);
          }

          objc_storeStrong(&oslog, 0);
        }
      }

      v8 = [v7 countByEnumeratingWithState:__b objects:v24 count:16];
    }

    while (v8);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
}

- (void)sceneWillResignActive:(id)active
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  v3 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v3 willResignActive];

  objc_storeStrong(location, 0);
}

- (void)sceneDidBecomeActive:(id)active
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, active);
  v3 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v3 didBecomeActive];

  objc_storeStrong(location, 0);
}

- (void)sceneDidEnterBackground:(id)background
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, background);
  v3 = +[BuddyApplicationAndSceneSharedStorage setupController];
  [(SetupController *)v3 didEnterBackground];

  objc_storeStrong(location, 0);
}

@end