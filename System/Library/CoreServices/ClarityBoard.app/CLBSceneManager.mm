@interface CLBSceneManager
- (BOOL)_shouldCreateHiddenSceneForRequestFromProcess:(id)a3;
- (BOOL)chromeVisibleForScene:(id)a3;
- (BOOL)isMobilePhoneAppInForeground;
- (CAContext)rootWindowCAContext;
- (CLBSceneManager)init;
- (CLBSceneManagerDelegate)delegate;
- (NSSet)applicationScenes;
- (NSSet)foregroundApplicationScenes;
- (id)_createInputUIScene;
- (id)bottomBarTransitionProgressForClientSettings:(id)a3;
- (id)navigationTitlesForClientSettings:(id)a3;
- (id)scene:(id)a3 handleActions:(id)a4;
- (void)_publishDisplayLayoutChangeWithScene:(id)a3 foreground:(BOOL)a4;
- (void)_updateForKeyboardScene;
- (void)_updateShouldAddInProcessKeyboardSceneToRootWindow;
- (void)_userInterfaceStyleArbiterStyleChanged:(id)a3;
- (void)addPointerScene:(id)a3;
- (void)dealloc;
- (void)removePointerScene:(id)a3;
- (void)scene:(id)a3 clientDidConnect:(id)a4;
- (void)scene:(id)a3 didUpdateClientSettings:(id)a4;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidActivate:(id)a3;
- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4;
- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4;
- (void)setDelegate:(id)a3;
- (void)setNeedsKeyboardForAdminScene:(BOOL)a3;
- (void)setShouldAddInProcessKeyboardSceneToRootWindow:(BOOL)a3;
- (void)setShouldShowKeyboardWithinAppScene:(BOOL)a3;
- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4;
- (void)workspace:(id)a3 didAddScene:(id)a4;
- (void)workspace:(id)a3 didReceiveSceneRequestWithOptions:(id)a4 fromProcess:(id)a5 completion:(id)a6;
- (void)workspace:(id)a3 willRemoveScene:(id)a4;
@end

@implementation CLBSceneManager

- (CLBSceneManager)init
{
  v31.receiver = self;
  v31.super_class = CLBSceneManager;
  v2 = [(CLBSceneManager *)&v31 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableSet);
    applicationScenes = v2->_applicationScenes;
    v2->_applicationScenes = v3;

    v5 = objc_alloc_init(NSMutableSet);
    foregroundApplicationScenes = v2->_foregroundApplicationScenes;
    v2->_foregroundApplicationScenes = v5;

    v2->_shouldAddInProcessKeyboardSceneToRootWindow = 1;
    v7 = +[FBDisplayManager mainConfiguration];
    v8 = [[UIRootSceneWindow alloc] initWithDisplayConfiguration:v7];
    rootWindow = v2->_rootWindow;
    v2->_rootWindow = v8;

    v10 = [v7 identity];
    v11 = [NSString stringWithFormat:@"RootWindow-%@-%p", v10, v2];

    v12 = [[UIRootWindowScenePresentationBinder alloc] initWithIdentifier:v11 priority:0 appearanceStyle:0 rootWindow:v2->_rootWindow];
    rootWindowScenePresentationBinder = v2->_rootWindowScenePresentationBinder;
    v2->_rootWindowScenePresentationBinder = v12;

    v14 = [(CLBSceneManager *)v2 _createInputUIScene];
    inputUIScene = v2->_inputUIScene;
    v2->_inputUIScene = v14;

    if (v2->_inputUIScene)
    {
      [(UIRootWindowScenePresentationBinder *)v2->_rootWindowScenePresentationBinder addScene:?];
    }

    v16 = [[FBSceneWorkspace alloc] initWithIdentifier:@"CLBSceneManager"];
    workspace = v2->_workspace;
    v2->_workspace = v16;

    [(FBSceneWorkspace *)v2->_workspace setDelegate:v2];
    v18 = +[FBMainDisplayLayoutPublisher sharedInstance];
    mainDisplayLayoutPublisher = v2->_mainDisplayLayoutPublisher;
    v2->_mainDisplayLayoutPublisher = v18;

    v20 = objc_opt_new();
    elementsBySceneIdentifier = v2->_elementsBySceneIdentifier;
    v2->_elementsBySceneIdentifier = v20;

    v22 = +[NSNotificationCenter defaultCenter];
    v23 = UIUserInterfaceStyleArbiterStyleChangedNotification;
    v24 = +[UIUserInterfaceStyleArbiter sharedInstance];
    [v22 addObserver:v2 selector:"_userInterfaceStyleArbiterStyleChanged:" name:v23 object:v24];

    objc_initWeak(&location, v2);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100019D64;
    v28[3] = &unk_1002FCBC8;
    objc_copyWeak(&v29, &location);
    v25 = [FBSceneManager observeKeyboardSceneAvailability:v28];
    keyboardObserver = v2->_keyboardObserver;
    v2->_keyboardObserver = v25;

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)dealloc
{
  [(BSInvalidatable *)self->_keyboardObserver invalidate];
  v3.receiver = self;
  v3.super_class = CLBSceneManager;
  [(CLBSceneManager *)&v3 dealloc];
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    objc_storeWeak(&self->_delegate, v4);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = +[FBProcessManager sharedInstance];
    v7 = [v6 allProcesses];

    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          v13 = [(CLBSceneManager *)self delegate];
          v14 = [v13 sceneManager:self createSceneIfNeededForProcess:v12];

          if (v14)
          {
            v15 = +[CLFLog commonLog];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Created scene for existing process: %@", buf, 0xCu);
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (NSSet)applicationScenes
{
  v2 = [(NSMutableSet *)self->_applicationScenes copy];

  return v2;
}

- (NSSet)foregroundApplicationScenes
{
  v2 = [(NSMutableSet *)self->_foregroundApplicationScenes copy];

  return v2;
}

- (CAContext)rootWindowCAContext
{
  v2 = [(UIRootSceneWindow *)self->_rootWindow layer];
  v3 = [v2 context];

  return v3;
}

- (BOOL)isMobilePhoneAppInForeground
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  foregroundApplicationScenes = self->_foregroundApplicationScenes;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001A1C8;
  v5[3] = &unk_1002FCBF0;
  v5[4] = &v6;
  [(NSMutableSet *)foregroundApplicationScenes enumerateObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)setNeedsKeyboardForAdminScene:(BOOL)a3
{
  if (self->_needsKeyboardForAdminScene != a3)
  {
    v3 = a3;
    self->_needsKeyboardForAdminScene = a3;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Needs keyboard for admin scene: %i", buf, 8u);
    }

    inputUIScene = self->_inputUIScene;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001A354;
    v7[3] = &unk_1002FCC10;
    v8 = v3;
    [(FBScene *)inputUIScene performUpdate:v7];
    [(CLBSceneManager *)self _updateShouldAddInProcessKeyboardSceneToRootWindow];
  }
}

- (void)setShouldShowKeyboardWithinAppScene:(BOOL)a3
{
  if (self->_shouldShowKeyboardWithinAppScene != a3)
  {
    v3 = a3;
    self->_shouldShowKeyboardWithinAppScene = a3;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Now showing keyboard within app scene: %i", v6, 8u);
    }

    [(CLBSceneManager *)self _updateShouldAddInProcessKeyboardSceneToRootWindow];
  }
}

- (void)_updateShouldAddInProcessKeyboardSceneToRootWindow
{
  if ([(CLBSceneManager *)self shouldShowKeyboardWithinAppScene])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(CLBSceneManager *)self needsKeyboardForAdminScene]^ 1;
  }

  [(CLBSceneManager *)self setShouldAddInProcessKeyboardSceneToRootWindow:v3];
}

- (void)setShouldAddInProcessKeyboardSceneToRootWindow:(BOOL)a3
{
  if (self->_shouldAddInProcessKeyboardSceneToRootWindow != a3)
  {
    v3 = a3;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should add in-process keyboard scene to root window: %i", v6, 8u);
    }

    self->_shouldAddInProcessKeyboardSceneToRootWindow = v3;
    [(CLBSceneManager *)self _updateForKeyboardScene];
  }
}

- (void)workspace:(id)a3 clientDidConnectWithHandshake:(id)a4
{
  v5 = a4;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did connect to client with handshake %@", &v16, 0xCu);
  }

  v7 = +[FBProcessManager sharedInstance];
  v8 = [v5 process];
  v9 = [v8 handle];
  v10 = [v9 identity];
  v11 = [v7 processForIdentity:v10];

  if (!v11)
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100284D40();
    }

    goto LABEL_9;
  }

  v12 = [(CLBSceneManager *)self delegate];
  v13 = [v12 sceneManager:self createSceneIfNeededForProcess:v11];

  if (v13)
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v5 process];
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Created scene on launch of process: %@", &v16, 0xCu);
    }

LABEL_9:
  }
}

- (void)workspace:(id)a3 didAddScene:(id)a4
{
  v5 = a4;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did add scene: %@", &v8, 0xCu);
  }

  [v5 setDelegate:self];
  [v5 addExtension:objc_opt_class()];
}

- (void)workspace:(id)a3 willRemoveScene:(id)a4
{
  v5 = a4;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 identifier];
    v8 = 138412290;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will remove scene: %@", &v8, 0xCu);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:v5])
  {
    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v5 foreground:0];
  }

  [v5 setDelegate:0];
  [(NSMutableSet *)self->_applicationScenes removeObject:v5];
  [(NSMutableSet *)self->_foregroundApplicationScenes removeObject:v5];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:v5];
}

- (void)workspace:(id)a3 didReceiveSceneRequestWithOptions:(id)a4 fromProcess:(id)a5 completion:(id)a6
{
  v9 = a4;
  v10 = a5;
  v11 = a6;
  BSDispatchQueueAssertMain();
  v12 = +[FBProcessManager sharedInstance];
  v13 = [v10 handle];
  v14 = [v13 identity];
  v15 = [v12 processForIdentity:v14];

  if (!v15)
  {
    v20 = +[CLFLog commonLog];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_100284E10();
    }

    goto LABEL_33;
  }

  v16 = [(CLBSceneManager *)self delegate];
  v17 = [v16 sceneManager:self handleSceneRequestFromProcess:v15 options:v9 completion:v11];

  if ((v17 & 1) == 0)
  {
    if ([(CLBSceneManager *)self _shouldCreateHiddenSceneForRequestFromProcess:v15])
    {
      v18 = [v9 identifier];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v22 = +[NSUUID UUID];
        v20 = [v22 UUIDString];
      }

      v23 = [(CLBSceneManager *)self workspace];
      v24 = [v23 sceneWithIdentifier:v20];

      if (v24)
      {
        v25 = [v24 clientHandle];
        v26 = [v25 processHandle];
        v27 = [v26 pid];
        v28 = [v15 pid];

        v29 = +[CLFLog commonLog];
        v30 = v29;
        if (v27 != v28)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543874;
            v54 = v15;
            v55 = 2112;
            v56 = v20;
            v57 = 2112;
            v58 = v24;
            _os_log_error_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "Process (%{public}@) requested scene creation with identifier %@ but a scene with that identifier already exists. Scene: %@", buf, 0x20u);
          }

          v34 = [NSError errorWithDomain:@"CLBSceneManager" code:2 userInfo:0];
          v24 = 0;
          goto LABEL_30;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v54 = v15;
          v55 = 2112;
          v56 = v20;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Process (%{public}@) requested scene creation with identifier %@ but it already had one.", buf, 0x16u);
        }
      }

      else
      {
        v31 = [v9 initialClientSettings];
        v32 = v31;
        if (v31)
        {
          v33 = v31;
        }

        else
        {
          v33 = objc_opt_new();
        }

        v35 = v33;

        v36 = [v35 preferredInterfaceOrientation];
        if ((v36 - 1) >= 4)
        {
          v37 = 1;
        }

        else
        {
          v37 = v36;
        }

        [v35 preferredLevel];
        v39 = v38;
        v40 = +[FBDisplayManager mainConfiguration];
        v41 = +[FBSMutableSceneSettings settings];
        [v41 setDisplayConfiguration:v40];
        v46 = v40;
        [v40 bounds];
        [v41 setFrame:?];
        [v41 setLevel:v39];
        [v41 setInterfaceOrientation:v37];
        [v41 setForeground:0];
        v42 = [(CLBSceneManager *)self workspace];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10001AF70;
        v50[3] = &unk_1002FC668;
        v51 = v20;
        v43 = v15;
        v52 = v43;
        v24 = [v42 createScene:v50];

        v47[0] = _NSConcreteStackBlock;
        v47[1] = 3221225472;
        v47[2] = sub_10001B00C;
        v47[3] = &unk_1002FCC38;
        v44 = v41;
        v48 = v44;
        v30 = v35;
        v49 = v30;
        [v24 configureParameters:v47];
        [v24 activate:0];
        v45 = +[CLFLog commonLog];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v54 = v43;
          v55 = 2114;
          v56 = v24;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Process (%{public}@) requested scene creation -> %{public}@", buf, 0x16u);
        }
      }

      v34 = 0;
LABEL_30:
      if (v11)
      {
        v11[2](v11, v24, v34);
      }

      goto LABEL_33;
    }

    v21 = +[CLFLog commonLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100284DA8();
    }

    if (v11)
    {
      v20 = [NSError errorWithDomain:@"CLBSceneManager" code:1 userInfo:0];
      v11[2](v11, 0, v20);
LABEL_33:
    }
  }
}

- (void)sceneDidActivate:(id)a3
{
  v4 = a3;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did activate: %@", &v14, 0xCu);
  }

  v6 = [v4 settings];
  v7 = [v6 isSystemScene];

  v8 = [v4 definition];
  v9 = [v8 specification];

  if (v7)
  {
    [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:v4];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableSet *)self->_applicationScenes addObject:v4];
      v10 = [v4 settings];
      if (v10)
      {
        v11 = v10;
        v12 = [v4 settings];
        v13 = [v12 isForeground];

        if (v13)
        {
          [(NSMutableSet *)self->_foregroundApplicationScenes addObject:v4];
          [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v4 foreground:1];
        }
      }
    }
  }
}

- (void)sceneDidDeactivate:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  BSDispatchQueueAssertMain();
  v8 = +[CLFLog commonLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v7 error];
    v13 = 138412546;
    v14 = v6;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene did deactivate: %@. Error: %@", &v13, 0x16u);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:v6])
  {
    v10 = +[CLBHIDInterface sharedInstance];
    [v10 updateDeferringRulesForScene:v6];

    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v6 foreground:0];
  }

  [(NSMutableSet *)self->_applicationScenes removeObject:v6];
  [(NSMutableSet *)self->_foregroundApplicationScenes removeObject:v6];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:v6];
  v11 = [(CLBSceneManager *)self delegate];
  v12 = [v6 identifier];
  [v11 sceneManager:self didDeactivateSceneWithID:v12];

  [v6 invalidate];
}

- (void)scene:(id)a3 didUpdateClientSettings:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 settings];
  v9 = [v7 settingsDiff];

  if ([v9 containsProperty:"preferredInterfaceOrientation"])
  {
    v10 = [v8 preferredInterfaceOrientation];
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 identifier];
      v13 = BSInterfaceOrientationDescription();
      v44 = 138412546;
      v45 = v12;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Observed preferred interface orientation for %@: %@", &v44, 0x16u);
    }

    v14 = [(CLBSceneManager *)self delegate];
    v15 = [v6 identifier];
    [v14 sceneManager:self didObserveUpdatedPreferredInterfaceOrientation:v10 forSceneID:v15];
  }

  if ([v9 containsProperty:"idleTimerDisabled"] && objc_msgSend(v8, "isUISubclass"))
  {
    v16 = [v8 idleTimerDisabled];
    v17 = [v6 settings];
    v18 = [v17 isForeground];

    v19 = +[CLFLog commonLog];
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (v18)
    {
      if (v20)
      {
        v21 = [v6 identifier];
        v44 = 138412546;
        v45 = v21;
        v46 = 1024;
        LODWORD(v47) = v16;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Observed idle timer disabled for %@: %i", &v44, 0x12u);
      }

      v19 = +[CLBIdleSleepManager sharedInstance];
      [v19 setIdleTimerDisabled:v16 forReason:@"appRequested"];
    }

    else if (v20)
    {
      v22 = [v6 identifier];
      v44 = 138412546;
      v45 = v22;
      v46 = 1024;
      LODWORD(v47) = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring idle timer disabled request for %@: %i because scene is not foreground", &v44, 0x12u);
    }
  }

  if ([v9 containsProperty:"navigationTitles"])
  {
    v23 = [(CLBSceneManager *)self navigationTitlesForClientSettings:v8];
    v24 = +[CLFLog commonLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = [v6 identifier];
      v44 = 138412546;
      v45 = v25;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Observed navigation titles for %@: %@", &v44, 0x16u);
    }

    v26 = [(CLBSceneManager *)self delegate];
    v27 = [v6 identifier];
    [v26 sceneManager:self didObserveUpdatedNavigationTitles:v23 forSceneID:v27];
  }

  if ([v9 containsProperty:"chromeVisible"])
  {
    v28 = [(CLBSceneManager *)self chromeVisibleForScene:v6];
    v29 = +[CLFLog commonLog];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = [v6 identifier];
      v44 = 138412546;
      v45 = v30;
      v46 = 1024;
      LODWORD(v47) = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Observed back visible for %@: %i", &v44, 0x12u);
    }

    v31 = [(CLBSceneManager *)self delegate];
    v32 = [v6 identifier];
    [v31 sceneManager:self didObserveUpdatedChromeVisible:v28 forSceneID:v32];
  }

  if ([v9 containsProperty:"bottomBarTransitionProgress"])
  {
    v33 = [(CLBSceneManager *)self bottomBarTransitionProgressForClientSettings:v8];
    v34 = +[CLFLog commonLog];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = [v6 identifier];
      v44 = 138412546;
      v45 = v35;
      v46 = 2112;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Observed bottom bar transition progress for %@: %@", &v44, 0x16u);
    }

    v36 = [(CLBSceneManager *)self delegate];
    v37 = [v6 identifier];
    [v36 sceneManager:self didObserveUpdatedBottomBarTransitionProgress:v33 forSceneID:v37];
  }

  if ([v9 containsProperty:"supportedInterfaceOrientations"] && objc_msgSend(v8, "isUISubclass"))
  {
    v38 = [v8 supportedInterfaceOrientations];
    v39 = +[CLFLog commonLog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = [v6 identifier];
      v41 = BSInterfaceOrientationMaskDescription();
      v44 = 138412546;
      v45 = v40;
      v46 = 2112;
      v47 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Observed supported interface orientations for %@: %@", &v44, 0x16u);
    }

    v42 = [(CLBSceneManager *)self delegate];
    v43 = [v6 identifier];
    [v42 sceneManager:self didObserveUpdatedSupportedInterfaceOrientations:v38 forSceneID:v43];
  }
}

- (id)scene:(id)a3 handleActions:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v17 + 1) + 8 * i);
        if ([v13 UIActionType] == 12 || objc_msgSend(v13, "UIActionType") == 13)
        {
          v14 = qword_100336870;
          v15 = [CLBEvent eventWithType:3 context:v5];
          [v14 handleEvent:v15];

          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return v7;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v6 = a3;
  v7 = [a4 settings];
  v8 = [v7 isForeground];

  v9 = +[CLFLog commonLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = v8;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scene did apply update (foreground: %i): %@", v12, 0x12u);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:v6])
  {
    foregroundApplicationScenes = self->_foregroundApplicationScenes;
    if (v8)
    {
      [(NSMutableSet *)foregroundApplicationScenes addObject:v6];
    }

    else
    {
      [(NSMutableSet *)foregroundApplicationScenes removeObject:v6];
    }

    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v6 foreground:v8];
    v11 = +[CLBHIDInterface sharedInstance];
    [v11 updateDeferringRulesForScene:v6];
  }
}

- (void)sceneContentStateDidChange:(id)a3
{
  v5 = a3;
  if ([v5 contentState] == 2 && -[NSMutableSet containsObject:](self->_applicationScenes, "containsObject:", v5))
  {
    v4 = +[CLBHIDInterface sharedInstance];
    [v4 updateDeferringRulesForScene:v5];
  }
}

- (void)scene:(id)a3 clientDidConnect:(id)a4
{
  v6 = a3;
  if ([(NSMutableSet *)self->_applicationScenes containsObject:?])
  {
    v5 = +[CLBHIDInterface sharedInstance];
    [v5 updateDeferringRulesForScene:v6];
  }
}

- (void)sceneDidInvalidate:(id)a3 withContext:(id)a4
{
  v4 = a3;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did invalidate: %@", &v6, 0xCu);
  }

  [v4 setDelegate:0];
}

- (void)addPointerScene:(id)a3
{
  v4 = a3;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding pointer scene to root window: %@", &v6, 0xCu);
  }

  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:v4];
}

- (void)removePointerScene:(id)a3
{
  v4 = a3;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing pointer scene from root window: %@", &v6, 0xCu);
  }

  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:v4];
}

- (void)_updateForKeyboardScene
{
  v3 = +[FBSceneManager keyboardScene];
  if (v3)
  {
    v4 = [(CLBSceneManager *)self shouldAddInProcessKeyboardSceneToRootWindow];
    v5 = +[CLFLog commonLog];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v6)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding keyboard scene to root window.", buf, 2u);
      }

      [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:v3];
    }

    else
    {
      if (v6)
      {
        *v7 = 0;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing keyboard scene from root window.", v7, 2u);
      }

      [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:v3];
    }
  }
}

- (BOOL)_shouldCreateHiddenSceneForRequestFromProcess:(id)a3
{
  v3 = a3;
  v4 = [v3 hasEntitlement:@"com.apple.springboard.requestScene-daemon"];
  if ((v4 & 1) == 0)
  {
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100284E78();
    }
  }

  return v4;
}

- (id)_createInputUIScene
{
  if (+[UIKeyboard usesInputSystemUI])
  {
    v3 = [(CLBSceneManager *)self workspace];
    v4 = [v3 createScene:&stru_1002FCC78];

    +[FBDisplayManager mainConfiguration];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001C33C;
    v8 = v7[3] = &unk_1002FCCA0;
    v5 = v8;
    [v4 performUpdate:v7];
    [v4 activate:0];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_userInterfaceStyleArbiterStyleChanged:(id)a3
{
  v4 = +[UIUserInterfaceStyleArbiter sharedInstance];
  v5 = [v4 currentStyle];

  v6 = CLFLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (v5 >= 3)
    {
      v7 = [NSString stringWithFormat:@"Unknown (%ld)", v5];
    }

    else
    {
      v7 = off_1002FCD08[v5];
    }

    *buf = 138543362;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Got a user interface style change, forwarding %{public}@ to scenes", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C558;
  block[3] = &unk_1002FCCE8;
  block[4] = self;
  block[5] = v5;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_publishDisplayLayoutChangeWithScene:(id)a3 foreground:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  BSDispatchQueueAssertMain();
  v7 = [v6 settings];
  v8 = [v7 displayLayoutStyle];

  if (v8 != 1)
  {
    v9 = [v6 clientHandle];
    v10 = [v9 bundleIdentifier];

    v11 = [v6 identifier];
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v34 = v4;
      *&v34[4] = 2112;
      *&v34[6] = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempt to publish display layout change (foreground: %i) with bundle id: %@, scene id: %@", buf, 0x1Cu);
    }

    if (!v10 && v4 || !v11)
    {
      goto LABEL_31;
    }

    if (v8 != 2)
    {
LABEL_24:
      v22 = [(CLBSceneManager *)self elementsBySceneIdentifier];
      v23 = [v22 objectForKeyedSubscript:v11];

      if (v4)
      {
        if (!v23)
        {
          v24 = [[FBSDisplayLayoutElement alloc] initWithIdentifier:v11];
          [v24 setBundleIdentifier:v10];
          [v24 setLevel:1];
          [v24 setUIApplicationElement:1];
          v25 = [(CLBSceneManager *)self mainDisplayLayoutPublisher];
          v26 = [v25 addElement:v24];

          v27 = [(CLBSceneManager *)self elementsBySceneIdentifier];
          [v27 setObject:v26 forKeyedSubscript:v11];

LABEL_29:
        }
      }

      else if (v23)
      {
        [v23 invalidate];
        v24 = [(CLBSceneManager *)self elementsBySceneIdentifier];
        [v24 setObject:0 forKeyedSubscript:v11];
        goto LABEL_29;
      }

LABEL_31:
      goto LABEL_32;
    }

    v13 = +[CLFLog commonLog];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v4)
    {
      if (v14)
      {
        *buf = 138412290;
        *v34 = v11;
        v15 = "Clearing out all other display layout elements to accommodate primary foreground scene: %@";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else if (v14)
    {
      *buf = 138412290;
      *v34 = v11;
      v15 = "Adding display layout elements for foreground apps now that primary foreground scene has backgrounded: %@";
      goto LABEL_13;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v16 = self->_foregroundApplicationScenes;
    v17 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v28 + 1) + 8 * i);
          if (v21 != v6)
          {
            [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v21 foreground:!v4, v28];
          }
        }

        v18 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    goto LABEL_24;
  }

LABEL_32:
}

- (CLBSceneManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)navigationTitlesForClientSettings:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100068500(v4);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (BOOL)chromeVisibleForScene:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100068708(v4);

  return v6 & 1;
}

- (id)bottomBarTransitionProgressForClientSettings:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_100068DDC(v4);

  return v6;
}

@end