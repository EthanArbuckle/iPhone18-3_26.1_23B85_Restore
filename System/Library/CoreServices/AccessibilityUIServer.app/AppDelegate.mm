@interface AppDelegate
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (BOOL)destroyScene:(id)scene;
- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options;
- (void)requestSceneForSceneClientIdentifier:(id)identifier scenePreferredLevel:(double)level spatialConfiguration:(id)configuration;
@end

@implementation AppDelegate

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v5 = [AXUIServiceManager sharedServiceManager:application];
  [v5 _applicationDidFinishLaunching];

  v6 = +[AXUIServiceManager sharedServiceManager];
  [v6 setDelegate:self];

  return 1;
}

- (id)application:(id)application configurationForConnectingSceneSession:(id)session options:(id)options
{
  sessionCopy = session;
  optionsCopy = options;
  role = [sessionCopy role];
  v9 = [role isEqualToString:@"SBSUIWindowSceneSessionRoleRemoteAlert"];

  if (v9)
  {
    configuration = [sessionCopy configuration];
  }

  else
  {
    userActivities = [optionsCopy userActivities];
    anyObject = [userActivities anyObject];

    activityType = [anyObject activityType];
    if ([activityType length])
    {
      activityType2 = [anyObject activityType];
    }

    else
    {
      activityType2 = @"Default Configuration";
    }

    role2 = [sessionCopy role];
    v16 = [role2 isEqualToString:@"ActivitySceneSessionRoleSystemAperture"];

    if (v16)
    {

      activityType2 = @"SessionPlatterConfiguration";
    }

    v17 = AXLogUI();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v23 = 138412290;
      v24 = activityType2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Creating configurationName: %@", &v23, 0xCu);
    }

    v18 = [UISceneConfiguration alloc];
    role3 = [sessionCopy role];
    configuration = [v18 initWithName:activityType2 sessionRole:role3];

    role4 = [sessionCopy role];
    v21 = [role4 isEqualToString:@"ActivitySceneSessionRoleSystemAperture"];

    if ((v21 & 1) == 0)
    {
      [configuration setDelegateClass:objc_opt_class()];
    }
  }

  return configuration;
}

- (void)requestSceneForSceneClientIdentifier:(id)identifier scenePreferredLevel:(double)level spatialConfiguration:(id)configuration
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  v10 = AXLogUI();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [NSNumber numberWithDouble:level];
    *buf = 138412546;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "requestSceneForSceneClientIdentifier: %@, scenePreferredLevel: %@", buf, 0x16u);
  }

  if ([identifierCopy isEqualToString:@"kAXUIServerActiveWindowSceneClientIdentifier"])
  {
    v12 = objc_opt_new();
    uiSceneSessionRole = [v12 uiSceneSessionRole];
    v14 = [UISceneSessionActivationRequest requestWithRole:uiSceneSessionRole];

    v15 = [[NSUserActivity alloc] initWithActivityType:identifierCopy];
    v33 = @"AXUIServerPreferredLevelKey";
    v34 = &off_100010D40;
    v16 = [NSDictionary dictionaryWithObjects:&v34 forKeys:&v33 count:1];
    [v15 setUserInfo:v16];

    [v14 setUserActivity:v15];
    v17 = +[UIApplication sharedApplication];
    [v17 activateSceneSessionForRequest:v14 errorHandler:&stru_1000107B8];
  }

  else if (([identifierCopy isEqualToString:@"kAXVOTMainSceneClientIdentifier"] & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"kAXVOTScreenCurtainSceneClientIdentifier") & 1) != 0 || (objc_msgSend(identifierCopy, "isEqualToString:", @"kAXZoomSceneClientIdentifier") & 1) != 0 || objc_msgSend(identifierCopy, "isEqualToString:", @"kAXTrackpadSceneClientIdentifier"))
  {
    v18 = [[NSUserActivity alloc] initWithActivityType:identifierCopy];
    v31 = @"AXUIServerPreferredLevelKey";
    v19 = [NSNumber numberWithDouble:level];
    v32 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v32 forKeys:&v31 count:1];
    [v18 setUserInfo:v20];

    v21 = +[UIApplication sharedApplication];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100002B2C;
    v27[3] = &unk_100010808;
    v27[4] = self;
    v28 = identifierCopy;
    levelCopy = level;
    v29 = configurationCopy;
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
    v24 = identifierCopy;
    levelCopy2 = level;
    v25 = configurationCopy;
    [v22 requestSceneSessionActivation:0 userActivity:0 options:0 errorHandler:v23];
  }
}

- (BOOL)destroyScene:(id)scene
{
  sceneCopy = scene;
  v4 = +[UIApplication sharedApplication];
  supportsMultipleScenes = [v4 supportsMultipleScenes];

  v6 = AXLogUI();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (supportsMultipleScenes)
  {
    if (v7)
    {
      v11 = 138412290;
      v12 = sceneCopy;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requestSceneSessionDestruction for scene: %@", &v11, 0xCu);
    }

    if (!sceneCopy)
    {
      v8 = AXLogUI();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        sub_100007CA4(v8);
      }
    }

    v6 = +[UIApplication sharedApplication];
    session = [sceneCopy session];
    [v6 requestSceneSessionDestruction:session options:0 errorHandler:&stru_100010828];
  }

  else if (v7)
  {
    v11 = 138412290;
    v12 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Multiple scenes is not supported, Can't destroy scene: %@", &v11, 0xCu);
  }

  return supportsMultipleScenes;
}

@end