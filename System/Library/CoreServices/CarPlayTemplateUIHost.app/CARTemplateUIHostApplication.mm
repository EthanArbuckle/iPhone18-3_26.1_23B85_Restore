@interface CARTemplateUIHostApplication
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (CARTemplateUIHostApplication)init;
- (UIWindow)activeWindow;
- (UIWindowScene)activeBannerScene;
- (id)_environmentForIdentifierCreateIfNecessary:(id)necessary;
- (id)_keyWindowForScreen:(id)screen;
- (id)appBundleIDForScene:(id)scene;
- (void)_invalidateEnvironmentForIdentifierIfNecessary:(id)necessary;
- (void)_sceneDidDidEnterBackground:(id)background;
- (void)_sceneDidDisconnect:(id)disconnect;
- (void)_sceneWillEnterForeground:(id)foreground;
- (void)_updateRunningAssertionIfNecessary;
- (void)didConnectScene:(id)scene options:(id)options;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)sceneManager:(id)manager didAddScene:(id)scene;
- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context;
@end

@implementation CARTemplateUIHostApplication

- (UIWindow)activeWindow
{
  WeakRetained = objc_loadWeakRetained(&self->_activeWindow);

  return WeakRetained;
}

- (UIWindowScene)activeBannerScene
{
  WeakRetained = objc_loadWeakRetained(&self->_activeBannerScene);

  return WeakRetained;
}

- (CARTemplateUIHostApplication)init
{
  v11.receiver = self;
  v11.super_class = CARTemplateUIHostApplication;
  v2 = [(CARTemplateUIHostApplication *)&v11 init];
  if (v2)
  {
    v3 = +[FBSceneManager sharedInstance];
    manager = v2->_manager;
    v2->_manager = v3;

    [(FBSceneManager *)v2->_manager setDelegate:v2];
    v5 = objc_opt_new();
    identifierToEnvironmentMap = v2->_identifierToEnvironmentMap;
    v2->_identifierToEnvironmentMap = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_sceneWillEnterForeground:" name:UISceneWillEnterForegroundNotification object:0];
    [v7 addObserver:v2 selector:"_sceneDidDidEnterBackground:" name:UISceneDidEnterBackgroundNotification object:0];
    [v7 addObserver:v2 selector:"_sceneDidDisconnect:" name:UISceneDidDisconnectNotification object:0];
    initAndWaitUntilSessionUpdated = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = initAndWaitUntilSessionUpdated;
  }

  return v2;
}

- (void)sceneManager:(id)manager didAddScene:(id)scene
{
  sceneCopy = scene;
  managerCopy = manager;
  [sceneCopy addObserver:self];
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:sceneCopy];
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [identifierToEnvironmentMap objectForKeyedSubscript:v10];
  [v9 sceneManager:managerCopy didAddScene:sceneCopy];

  [(CARTemplateUIHostApplication *)self _updateRunningAssertionIfNecessary];
}

- (void)_invalidateEnvironmentForIdentifierIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v5 = [identifierToEnvironmentMap objectForKeyedSubscript:necessaryCopy];

  if ([v5 canBeInvalidated])
  {
    [v5 invalidate];
    identifierToEnvironmentMap2 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    [identifierToEnvironmentMap2 removeObjectForKey:necessaryCopy];
  }
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  v7 = sub_100001280(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    settingsDiff = [settingsCopy settingsDiff];
    v9 = 138412546;
    v10 = sceneCopy;
    v11 = 2112;
    v12 = settingsDiff;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "scene: (%@) didUpdateSettings: (%@)", &v9, 0x16u);
  }
}

- (void)sceneWillDeactivate:(id)deactivate withContext:(id)context
{
  contextCopy = context;
  deactivateCopy = deactivate;
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:deactivateCopy];
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [identifierToEnvironmentMap objectForKeyedSubscript:v10];
  [v9 sceneWillDeactivate:deactivateCopy withContext:contextCopy];
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  contextCopy = context;
  invalidateCopy = invalidate;
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:invalidateCopy];
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [identifierToEnvironmentMap objectForKeyedSubscript:v10];
  [v9 sceneDidInvalidate:invalidateCopy withContext:contextCopy];

  [invalidateCopy removeObserver:self];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "didFinishLaunching", v6, 2u);
  }

  return 1;
}

- (void)didConnectScene:(id)scene options:(id)options
{
  sceneCopy = scene;
  optionsCopy = options;
  v8 = sub_100001280(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didConnectScene: %@", buf, 0xCu);
  }

  objc_opt_class();
  _FBSScene = [sceneCopy _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = settings;
  }

  else
  {
    v11 = 0;
  }

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = sceneCopy;
      proxiedApplicationBundleIdentifier = [v11 proxiedApplicationBundleIdentifier];
      v14 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:proxiedApplicationBundleIdentifier];
      [v14 instrumentClusterWindowSceneConnected:v12 options:optionsCopy];
    }
  }

  objc_opt_class();
  _FBSScene2 = [sceneCopy _FBSScene];
  settings2 = [_FBSScene2 settings];
  if (settings2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = settings2;
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = sceneCopy;
      proxiedApplicationBundleIdentifier2 = [v17 proxiedApplicationBundleIdentifier];
      if ([v17 widgetStyle] == 1 || objc_msgSend(v17, "widgetStyle") == 2)
      {
        v20 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:proxiedApplicationBundleIdentifier2];
        [v20 dashboardGuidanceWindowSceneConnected:v18 options:optionsCopy];
      }

      else
      {
        if ([v17 widgetStyle] != 3)
        {
          goto LABEL_20;
        }

        v20 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:proxiedApplicationBundleIdentifier2];
        [v20 dashboardMapWindowSceneConnected:v18 options:optionsCopy];
      }

LABEL_20:
    }
  }

  objc_opt_class();
  _FBSScene3 = [sceneCopy _FBSScene];
  settings3 = [_FBSScene3 settings];
  if (settings3 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = settings3;
  }

  else
  {
    v23 = 0;
  }

  if (v23)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = sceneCopy;
      proxiedApplicationBundleIdentifier3 = [v23 proxiedApplicationBundleIdentifier];
      [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
      v34 = v11;
      v27 = v26 = optionsCopy;
      label = [v27 label];
      v29 = [NSString stringWithFormat:@"You are using: %@", proxiedApplicationBundleIdentifier3];
      [label setText:v29];

      instrumentClusterViewController = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
      label2 = [instrumentClusterViewController label];
      [label2 sizeToFit];

      optionsCopy = v26;
      v11 = v34;

      v32 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:proxiedApplicationBundleIdentifier3];
      v33 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:proxiedApplicationBundleIdentifier3];
      [v33 applicationWindowSceneConnected:v24 options:optionsCopy];

      [v32 prepare];
    }
  }
}

- (id)_environmentForIdentifierCreateIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v6 = [identifierToEnvironmentMap objectForKey:necessaryCopy];

  if (!v6)
  {
    v6 = [[CARTemplateUIAppEnvironment alloc] initWithBundleIdentifier:necessaryCopy];
    identifierToEnvironmentMap2 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    [identifierToEnvironmentMap2 setObject:v6 forKeyedSubscript:necessaryCopy];
  }

  return v6;
}

- (id)appBundleIDForScene:(id)scene
{
  clientProcess = [scene clientProcess];
  bundleIdentifier = [clientProcess bundleIdentifier];

  return bundleIdentifier;
}

- (void)_sceneWillEnterForeground:(id)foreground
{
  object = [foreground object];
  objc_opt_class();
  _FBSScene = [object _FBSScene];
  settings = [_FBSScene settings];
  if (settings && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = settings;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  _FBSScene2 = [object _FBSScene];
  settings2 = [_FBSScene2 settings];
  if (settings2 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = settings2;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    proxiedApplicationBundleIdentifier = [v7 proxiedApplicationBundleIdentifier];
    if (proxiedApplicationBundleIdentifier)
    {
      instrumentClusterViewController = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];

      if (instrumentClusterViewController)
      {
        instrumentClusterViewController2 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
        label = [instrumentClusterViewController2 label];
        v15 = [NSString stringWithFormat:@"You are using: %@", proxiedApplicationBundleIdentifier];
        [label setText:v15];

        instrumentClusterViewController3 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
        label2 = [instrumentClusterViewController3 label];
        [label2 sizeToFit];

        sessionStatus = [(CARTemplateUIHostApplication *)self sessionStatus];
        currentSession = [sessionStatus currentSession];
        v20 = [NSURL URLWithString:@"maps:"];
        v29 = v20;
        v21 = [NSArray arrayWithObjects:&v29 count:1];
        [currentSession suggestUI:v21];
      }

      v22 = sub_100001280(7uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = proxiedApplicationBundleIdentifier;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Scene entering foreground for client: %@", buf, 0xCu);
      }

      identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
      v24 = [identifierToEnvironmentMap objectForKeyedSubscript:proxiedApplicationBundleIdentifier];

      applicationWindow = [v24 applicationWindow];
      [(CARTemplateUIHostApplication *)self setActiveWindow:applicationWindow];
    }

LABEL_22:

    goto LABEL_23;
  }

  v26 = sub_100001280(7uLL);
  proxiedApplicationBundleIdentifier = v26;
  if (!v10)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      sub_10000E208();
    }

    goto LABEL_22;
  }

  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = object;
    _os_log_impl(&_mh_execute_header, proxiedApplicationBundleIdentifier, OS_LOG_TYPE_DEFAULT, "Banner scene entering foreground: %@", buf, 0xCu);
  }

  [(CARTemplateUIHostApplication *)self setActiveBannerScene:object];
LABEL_23:
}

- (void)_sceneDidDidEnterBackground:(id)background
{
  backgroundCopy = background;
  objc_opt_class();
  object = [backgroundCopy object];
  if (object && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x3032000000;
    v21 = sub_100002500;
    v22 = sub_100002510;
    v23 = 0;
    v16[0] = 0;
    v16[1] = v16;
    v16[2] = 0x3032000000;
    v16[3] = sub_100002500;
    v16[4] = sub_100002510;
    v17 = 0;
    identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002518;
    v12[3] = &unk_10001C3E8;
    v13 = v6;
    v14 = &v18;
    v15 = v16;
    [identifierToEnvironmentMap enumerateKeysAndObjectsUsingBlock:v12];

    v8 = v19[5];
    if (v8)
    {
      applicationWindow = [v8 applicationWindow];
      activeWindow = [(CARTemplateUIHostApplication *)self activeWindow];

      if (applicationWindow == activeWindow)
      {
        [(CARTemplateUIHostApplication *)self setActiveWindow:0];
      }
    }

    else
    {
      v11 = sub_100001280(7uLL);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10000E270();
      }
    }

    _Block_object_dispose(v16, 8);
    _Block_object_dispose(&v18, 8);
  }
}

- (void)_sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  object = [disconnectCopy object];
  objc_opt_class();
  v6 = object;
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_100002500;
  v36 = sub_100002510;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = sub_100002500;
  v30 = sub_100002510;
  v31 = 0;
  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002A30;
  v22[3] = &unk_10001C3E8;
  v9 = v7;
  v23 = v9;
  v24 = &v32;
  v25 = &v26;
  [identifierToEnvironmentMap enumerateKeysAndObjectsUsingBlock:v22];

  v10 = sub_100001280(7uLL);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v27[5];
    v12 = v33[5];
    *buf = 138412546;
    v39 = v11;
    v40 = 2112;
    v41 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Scene did disconnect for identifier: %@, env: %@", buf, 0x16u);
  }

  if (v33[5])
  {
    v13 = sub_100001280(7uLL);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v33[5];
      *buf = 138543618;
      v39 = v14;
      v40 = 2114;
      v41 = v9;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Environment %{public}@ will invalidate windowScene: %{public}@", buf, 0x16u);
    }

    [v33[5] invalidateWindowScene:v9];
    [(CARTemplateUIHostApplication *)self _invalidateEnvironmentForIdentifierIfNecessary:v27[5]];
    goto LABEL_20;
  }

  activeBannerScene = [(CARTemplateUIHostApplication *)self activeBannerScene];
  v16 = activeBannerScene;
  if (v6 != activeBannerScene)
  {

LABEL_17:
    v21 = sub_100001280(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Other scene disconnected: %@", buf, 0xCu);
    }

    goto LABEL_20;
  }

  _FBSScene = [v6 _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_17;
  }

  v20 = sub_100001280(7uLL);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Banner scene disconnected: %@", buf, 0xCu);
  }

  [(CARTemplateUIHostApplication *)self setActiveBannerScene:0];
LABEL_20:
  [(CARTemplateUIHostApplication *)self _updateRunningAssertionIfNecessary];

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);
}

- (id)_keyWindowForScreen:(id)screen
{
  activeWindow = [(CARTemplateUIHostApplication *)self activeWindow];
  windowScene = [activeWindow windowScene];
  if (windowScene)
  {
    v6 = windowScene;
    activeWindow2 = [(CARTemplateUIHostApplication *)self activeWindow];
    windowScene2 = [activeWindow2 windowScene];
    activationState = [windowScene2 activationState];

    if (!activationState)
    {
      activeWindow3 = [(CARTemplateUIHostApplication *)self activeWindow];
      goto LABEL_8;
    }
  }

  else
  {
  }

  activeBannerScene = [(CARTemplateUIHostApplication *)self activeBannerScene];

  if (activeBannerScene)
  {
    activeBannerScene2 = [(CARTemplateUIHostApplication *)self activeBannerScene];
    windows = [activeBannerScene2 windows];
    activeWindow3 = [windows firstObject];
  }

  else
  {
    activeWindow3 = 0;
  }

LABEL_8:

  return activeWindow3;
}

- (void)_updateRunningAssertionIfNecessary
{
  v3 = sub_100001280(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating running assertion", buf, 2u);
  }

  identifierToEnvironmentMap = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v5 = [identifierToEnvironmentMap count];

  runningAssertion = [(CARTemplateUIHostApplication *)self runningAssertion];
  v7 = runningAssertion;
  if (v5)
  {

    if (v7)
    {
      return;
    }

    v8 = sub_100001280(7uLL);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Acquiring running assertion", buf, 2u);
    }

    v9 = [RBSRunningReasonAttribute withReason:10005];
    v27[0] = v9;
    v10 = +[RBSCPUAccessGrant grantWithUserInteractivity];
    v27[1] = v10;
    v11 = +[RBSJetsamPriorityGrant grantWithForegroundPriority];
    v27[2] = v11;
    v12 = [RBSResistTerminationGrant grantWithResistance:40];
    v27[3] = v12;
    v13 = [NSArray arrayWithObjects:v27 count:4];

    v14 = [RBSAssertion alloc];
    v15 = +[RBSTarget currentProcess];
    v16 = [v14 initWithExplanation:@"CarPlayTemplateUIHost" target:v15 attributes:v13];
    [(CARTemplateUIHostApplication *)self setRunningAssertion:v16];

    runningAssertion2 = [(CARTemplateUIHostApplication *)self runningAssertion];
    v25 = 0;
    [runningAssertion2 acquireWithError:&v25];
    v18 = v25;

    v19 = sub_100001280(7uLL);
    v20 = v19;
    if (v18)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10000E2D8();
      }

      [(CARTemplateUIHostApplication *)self setRunningAssertion:0];
    }

    else
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Successfully acquired running assertion", buf, 2u);
      }
    }
  }

  else
  {

    if (!v7)
    {
      return;
    }

    v21 = sub_100001280(7uLL);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Invalidating running assertion", buf, 2u);
    }

    runningAssertion3 = [(CARTemplateUIHostApplication *)self runningAssertion];
    v24 = 0;
    [runningAssertion3 invalidateWithError:&v24];
    v13 = v24;

    [(CARTemplateUIHostApplication *)self setRunningAssertion:0];
    v23 = sub_100001280(7uLL);
    v18 = v23;
    if (v13)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        sub_10000E340();
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "Successfully invalidated running assertion", buf, 2u);
    }
  }
}

@end