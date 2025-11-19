@interface CARTemplateUIHostApplication
- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4;
- (CARTemplateUIHostApplication)init;
- (UIWindow)activeWindow;
- (UIWindowScene)activeBannerScene;
- (id)_environmentForIdentifierCreateIfNecessary:(id)a3;
- (id)_keyWindowForScreen:(id)a3;
- (id)appBundleIDForScene:(id)a3;
- (void)_invalidateEnvironmentForIdentifierIfNecessary:(id)a3;
- (void)_sceneDidDidEnterBackground:(id)a3;
- (void)_sceneDidDisconnect:(id)a3;
- (void)_sceneWillEnterForeground:(id)a3;
- (void)_updateRunningAssertionIfNecessary;
- (void)didConnectScene:(id)a3 options:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)sceneManager:(id)a3 didAddScene:(id)a4;
- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4;
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
    v8 = [[CARSessionStatus alloc] initAndWaitUntilSessionUpdated];
    sessionStatus = v2->_sessionStatus;
    v2->_sessionStatus = v8;
  }

  return v2;
}

- (void)sceneManager:(id)a3 didAddScene:(id)a4
{
  v6 = a4;
  v7 = a3;
  [v6 addObserver:self];
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:v6];
  v8 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [v8 objectForKeyedSubscript:v10];
  [v9 sceneManager:v7 didAddScene:v6];

  [(CARTemplateUIHostApplication *)self _updateRunningAssertionIfNecessary];
}

- (void)_invalidateEnvironmentForIdentifierIfNecessary:(id)a3
{
  v7 = a3;
  v4 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v5 = [v4 objectForKeyedSubscript:v7];

  if ([v5 canBeInvalidated])
  {
    [v5 invalidate];
    v6 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    [v6 removeObjectForKey:v7];
  }
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100001280(7uLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v6 settingsDiff];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "scene: (%@) didUpdateSettings: (%@)", &v9, 0x16u);
  }
}

- (void)sceneWillDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:v7];
  v8 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [v8 objectForKeyedSubscript:v10];
  [v9 sceneWillDeactivate:v7 withContext:v6];
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v10 = [(CARTemplateUIHostApplication *)self appBundleIDForScene:v7];
  v8 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v9 = [v8 objectForKeyedSubscript:v10];
  [v9 sceneDidInvalidate:v7 withContext:v6];

  [v7 removeObserver:self];
}

- (BOOL)application:(id)a3 didFinishLaunchingWithOptions:(id)a4
{
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "didFinishLaunching", v6, 2u);
  }

  return 1;
}

- (void)didConnectScene:(id)a3 options:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100001280(7uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v36 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didConnectScene: %@", buf, 0xCu);
  }

  objc_opt_class();
  v9 = [v6 _FBSScene];
  v10 = [v9 settings];
  if (v10 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v11 = v10;
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
      v12 = v6;
      v13 = [v11 proxiedApplicationBundleIdentifier];
      v14 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:v13];
      [v14 instrumentClusterWindowSceneConnected:v12 options:v7];
    }
  }

  objc_opt_class();
  v15 = [v6 _FBSScene];
  v16 = [v15 settings];
  if (v16 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v17 = v16;
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
      v18 = v6;
      v19 = [v17 proxiedApplicationBundleIdentifier];
      if ([v17 widgetStyle] == 1 || objc_msgSend(v17, "widgetStyle") == 2)
      {
        v20 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:v19];
        [v20 dashboardGuidanceWindowSceneConnected:v18 options:v7];
      }

      else
      {
        if ([v17 widgetStyle] != 3)
        {
          goto LABEL_20;
        }

        v20 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:v19];
        [v20 dashboardMapWindowSceneConnected:v18 options:v7];
      }

LABEL_20:
    }
  }

  objc_opt_class();
  v21 = [v6 _FBSScene];
  v22 = [v21 settings];
  if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v23 = v22;
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
      v24 = v6;
      v25 = [v23 proxiedApplicationBundleIdentifier];
      [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
      v34 = v11;
      v27 = v26 = v7;
      v28 = [v27 label];
      v29 = [NSString stringWithFormat:@"You are using: %@", v25];
      [v28 setText:v29];

      v30 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
      v31 = [v30 label];
      [v31 sizeToFit];

      v7 = v26;
      v11 = v34;

      v32 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:v25];
      v33 = [(CARTemplateUIHostApplication *)self _environmentForIdentifierCreateIfNecessary:v25];
      [v33 applicationWindowSceneConnected:v24 options:v7];

      [v32 prepare];
    }
  }
}

- (id)_environmentForIdentifierCreateIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v6 = [v5 objectForKey:v4];

  if (!v6)
  {
    v6 = [[CARTemplateUIAppEnvironment alloc] initWithBundleIdentifier:v4];
    v7 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    [v7 setObject:v6 forKeyedSubscript:v4];
  }

  return v6;
}

- (id)appBundleIDForScene:(id)a3
{
  v3 = [a3 clientProcess];
  v4 = [v3 bundleIdentifier];

  return v4;
}

- (void)_sceneWillEnterForeground:(id)a3
{
  v4 = [a3 object];
  objc_opt_class();
  v5 = [v4 _FBSScene];
  v6 = [v5 settings];
  if (v6 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  objc_opt_class();
  v8 = [v4 _FBSScene];
  v9 = [v8 settings];
  if (v9 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = [v7 proxiedApplicationBundleIdentifier];
    if (v11)
    {
      v12 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];

      if (v12)
      {
        v13 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
        v14 = [v13 label];
        v15 = [NSString stringWithFormat:@"You are using: %@", v11];
        [v14 setText:v15];

        v16 = [(CARTemplateUIHostApplication *)self instrumentClusterViewController];
        v17 = [v16 label];
        [v17 sizeToFit];

        v18 = [(CARTemplateUIHostApplication *)self sessionStatus];
        v19 = [v18 currentSession];
        v20 = [NSURL URLWithString:@"maps:"];
        v29 = v20;
        v21 = [NSArray arrayWithObjects:&v29 count:1];
        [v19 suggestUI:v21];
      }

      v22 = sub_100001280(7uLL);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v28 = v11;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Scene entering foreground for client: %@", buf, 0xCu);
      }

      v23 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
      v24 = [v23 objectForKeyedSubscript:v11];

      v25 = [v24 applicationWindow];
      [(CARTemplateUIHostApplication *)self setActiveWindow:v25];
    }

LABEL_22:

    goto LABEL_23;
  }

  v26 = sub_100001280(7uLL);
  v11 = v26;
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
    v28 = v4;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Banner scene entering foreground: %@", buf, 0xCu);
  }

  [(CARTemplateUIHostApplication *)self setActiveBannerScene:v4];
LABEL_23:
}

- (void)_sceneDidDidEnterBackground:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 object];
  if (v5 && (objc_opt_isKindOfClass() & 1) != 0)
  {
    v6 = v5;
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
    v7 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100002518;
    v12[3] = &unk_10001C3E8;
    v13 = v6;
    v14 = &v18;
    v15 = v16;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];

    v8 = v19[5];
    if (v8)
    {
      v9 = [v8 applicationWindow];
      v10 = [(CARTemplateUIHostApplication *)self activeWindow];

      if (v9 == v10)
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

- (void)_sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  v6 = v5;
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
  v8 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100002A30;
  v22[3] = &unk_10001C3E8;
  v9 = v7;
  v23 = v9;
  v24 = &v32;
  v25 = &v26;
  [v8 enumerateKeysAndObjectsUsingBlock:v22];

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

  v15 = [(CARTemplateUIHostApplication *)self activeBannerScene];
  v16 = v15;
  if (v6 != v15)
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

  v17 = [v6 _FBSScene];
  v18 = [v17 settings];
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

- (id)_keyWindowForScreen:(id)a3
{
  v4 = [(CARTemplateUIHostApplication *)self activeWindow];
  v5 = [v4 windowScene];
  if (v5)
  {
    v6 = v5;
    v7 = [(CARTemplateUIHostApplication *)self activeWindow];
    v8 = [v7 windowScene];
    v9 = [v8 activationState];

    if (!v9)
    {
      v10 = [(CARTemplateUIHostApplication *)self activeWindow];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v11 = [(CARTemplateUIHostApplication *)self activeBannerScene];

  if (v11)
  {
    v12 = [(CARTemplateUIHostApplication *)self activeBannerScene];
    v13 = [v12 windows];
    v10 = [v13 firstObject];
  }

  else
  {
    v10 = 0;
  }

LABEL_8:

  return v10;
}

- (void)_updateRunningAssertionIfNecessary
{
  v3 = sub_100001280(7uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Updating running assertion", buf, 2u);
  }

  v4 = [(CARTemplateUIHostApplication *)self identifierToEnvironmentMap];
  v5 = [v4 count];

  v6 = [(CARTemplateUIHostApplication *)self runningAssertion];
  v7 = v6;
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

    v17 = [(CARTemplateUIHostApplication *)self runningAssertion];
    v25 = 0;
    [v17 acquireWithError:&v25];
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

    v22 = [(CARTemplateUIHostApplication *)self runningAssertion];
    v24 = 0;
    [v22 invalidateWithError:&v24];
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