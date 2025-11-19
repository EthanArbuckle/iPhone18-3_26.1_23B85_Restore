@interface AppDelegate
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (BOOL)destroyScene:(id)a3;
- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5;
- (void)requestSceneForSceneClientIdentifier:(id)a3 scenePreferredLevel:(double)a4 spatialConfiguration:(id)a5;
@end

@implementation AppDelegate

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v5 = [AXUIServiceManager sharedServiceManager:a3];
  [v5 _applicationDidFinishLaunching];

  v6 = +[AXUIServiceManager sharedServiceManager];
  [v6 setDelegate:self];

  return 1;
}

- (id)application:(id)a3 configurationForConnectingSceneSession:(id)a4 options:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = [v6 role];
  v9 = [v8 isEqualToString:@"SBSUIWindowSceneSessionRoleRemoteAlert"];

  if (v9)
  {
    v10 = [v6 configuration];
  }

  else
  {
    v11 = [v7 userActivities];
    v12 = [v11 anyObject];

    v13 = [v12 activityType];
    if ([v13 length])
    {
      v14 = [v12 activityType];
    }

    else
    {
      v14 = @"Default Configuration";
    }

    v15 = [v6 role];
    v16 = [v15 isEqualToString:@"ActivitySceneSessionRoleSystemAperture"];

    if (v16)
    {

      v14 = @"SessionPlatterConfiguration";
    }

    v17 = AXLogUI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Creating configurationName: %@", &v23, 0xCu);
    }

    v18 = [UISceneConfiguration alloc];
    v19 = [v6 role];
    v10 = [v18 initWithName:v14 sessionRole:v19];

    v20 = [v6 role];
    v21 = [v20 isEqualToString:@"ActivitySceneSessionRoleSystemAperture"];

    if ((v21 & 1) == 0)
    {
      [v10 setDelegateClass:objc_opt_class()];
    }
  }

  return v10;
}

- (void)requestSceneForSceneClientIdentifier:(id)a3 scenePreferredLevel:(double)a4 spatialConfiguration:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = AXLogUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithDouble:a4];
    *buf = 138412546;
    v36 = v8;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "requestSceneForSceneClientIdentifier: %@, scenePreferredLevel: %@", buf, 0x16u);
  }

  if ([v8 isEqualToString:@"kAXUIServerActiveWindowSceneClientIdentifier"])
  {
    v12 = objc_opt_new();
    v13 = [v12 uiSceneSessionRole];
    v14 = [UISceneSessionActivationRequest requestWithRole:v13];

    v15 = [[NSUserActivity alloc] initWithActivityType:v8];
    v33 = @"AXUIServerPreferredLevelKey";
    v34 = &off_100010D40;
    v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v15 setUserInfo:v16];

    [v14 setUserActivity:v15];
    v17 = +[UIApplication sharedApplication];
    [v17 activateSceneSessionForRequest:v14 errorHandler:&stru_1000107B8];
  }

  else if (([v8 isEqualToString:@"kAXVOTMainSceneClientIdentifier"] & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"kAXVOTScreenCurtainSceneClientIdentifier") & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"kAXZoomSceneClientIdentifier") & 1) != 0 || objc_msgSend(v8, "isEqualToString:", @"kAXTrackpadSceneClientIdentifier"))
  {
    v18 = [[NSUserActivity alloc] initWithActivityType:v8];
    v31 = @"AXUIServerPreferredLevelKey";
    v19 = [NSNumber numberWithDouble:a4];
    v32 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v18 setUserInfo:v20];

    v21 = +[UIApplication sharedApplication];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100002B2C;
    v27[3] = &unk_100010808;
    v27[4] = self;
    v28 = v8;
    v30 = a4;
    v29 = v9;
    [v21 requestSceneSessionActivation:0 userActivity:v18 options:0 errorHandler:v27];
  }

  else
  {
    v22 = +[UIApplication sharedApplication];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100002CD8;
    v23[3] = &unk_100010808;
    v23[4] = self;
    v24 = v8;
    v26 = a4;
    v25 = v9;
    [v22 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:v23];
  }
}

- (BOOL)destroyScene:(id)a3
{
  v3 = a3;
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 supportsMultipleScenes];

  v6 = AXLogUI();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requestSceneSessionDestruction for scene: %@", &v11, 0xCu);
    }

    if (!v3)
    {
      v8 = AXLogUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100007CA4(v8);
      }
    }

    v6 = +[UIApplication sharedApplication];
    v9 = [v3 session];
    [v6 requestSceneSessionDestruction:v9 options:0 errorHandler:&stru_100010828];
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Multiple scenes is not supported, Can't destroy scene: %@", &v11, 0xCu);
  }

  return v5;
}

@end