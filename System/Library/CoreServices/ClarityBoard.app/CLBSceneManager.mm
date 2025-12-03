@interface CLBSceneManager
- (BOOL)_shouldCreateHiddenSceneForRequestFromProcess:(id)process;
- (BOOL)chromeVisibleForScene:(id)scene;
- (BOOL)isMobilePhoneAppInForeground;
- (CAContext)rootWindowCAContext;
- (CLBSceneManager)init;
- (CLBSceneManagerDelegate)delegate;
- (NSSet)applicationScenes;
- (NSSet)foregroundApplicationScenes;
- (id)_createInputUIScene;
- (id)bottomBarTransitionProgressForClientSettings:(id)settings;
- (id)navigationTitlesForClientSettings:(id)settings;
- (id)scene:(id)scene handleActions:(id)actions;
- (void)_publishDisplayLayoutChangeWithScene:(id)scene foreground:(BOOL)foreground;
- (void)_updateForKeyboardScene;
- (void)_updateShouldAddInProcessKeyboardSceneToRootWindow;
- (void)_userInterfaceStyleArbiterStyleChanged:(id)changed;
- (void)addPointerScene:(id)scene;
- (void)dealloc;
- (void)removePointerScene:(id)scene;
- (void)scene:(id)scene clientDidConnect:(id)connect;
- (void)scene:(id)scene didUpdateClientSettings:(id)settings;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidActivate:(id)activate;
- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context;
- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context;
- (void)setDelegate:(id)delegate;
- (void)setNeedsKeyboardForAdminScene:(BOOL)scene;
- (void)setShouldAddInProcessKeyboardSceneToRootWindow:(BOOL)window;
- (void)setShouldShowKeyboardWithinAppScene:(BOOL)scene;
- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake;
- (void)workspace:(id)workspace didAddScene:(id)scene;
- (void)workspace:(id)workspace didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion;
- (void)workspace:(id)workspace willRemoveScene:(id)scene;
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

    identity = [v7 identity];
    v11 = [NSString stringWithFormat:@"RootWindow-%@-%p", identity, v2];

    v12 = [[UIRootWindowScenePresentationBinder alloc] initWithIdentifier:v11 priority:0 appearanceStyle:0 rootWindow:v2->_rootWindow];
    rootWindowScenePresentationBinder = v2->_rootWindowScenePresentationBinder;
    v2->_rootWindowScenePresentationBinder = v12;

    _createInputUIScene = [(CLBSceneManager *)v2 _createInputUIScene];
    inputUIScene = v2->_inputUIScene;
    v2->_inputUIScene = _createInputUIScene;

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

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    objc_storeWeak(&self->_delegate, delegateCopy);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = +[FBProcessManager sharedInstance];
    allProcesses = [v6 allProcesses];

    v8 = [allProcesses countByEnumeratingWithState:&v16 objects:v22 count:16];
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
            objc_enumerationMutation(allProcesses);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          delegate = [(CLBSceneManager *)self delegate];
          v14 = [delegate sceneManager:self createSceneIfNeededForProcess:v12];

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

        v9 = [allProcesses countByEnumeratingWithState:&v16 objects:v22 count:16];
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
  layer = [(UIRootSceneWindow *)self->_rootWindow layer];
  context = [layer context];

  return context;
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

- (void)setNeedsKeyboardForAdminScene:(BOOL)scene
{
  if (self->_needsKeyboardForAdminScene != scene)
  {
    sceneCopy = scene;
    self->_needsKeyboardForAdminScene = scene;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v10 = sceneCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Needs keyboard for admin scene: %i", buf, 8u);
    }

    inputUIScene = self->_inputUIScene;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001A354;
    v7[3] = &unk_1002FCC10;
    v8 = sceneCopy;
    [(FBScene *)inputUIScene performUpdate:v7];
    [(CLBSceneManager *)self _updateShouldAddInProcessKeyboardSceneToRootWindow];
  }
}

- (void)setShouldShowKeyboardWithinAppScene:(BOOL)scene
{
  if (self->_shouldShowKeyboardWithinAppScene != scene)
  {
    sceneCopy = scene;
    self->_shouldShowKeyboardWithinAppScene = scene;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = sceneCopy;
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

- (void)setShouldAddInProcessKeyboardSceneToRootWindow:(BOOL)window
{
  if (self->_shouldAddInProcessKeyboardSceneToRootWindow != window)
  {
    windowCopy = window;
    v5 = +[CLFLog commonLog];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6[0] = 67109120;
      v6[1] = windowCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Should add in-process keyboard scene to root window: %i", v6, 8u);
    }

    self->_shouldAddInProcessKeyboardSceneToRootWindow = windowCopy;
    [(CLBSceneManager *)self _updateForKeyboardScene];
  }
}

- (void)workspace:(id)workspace clientDidConnectWithHandshake:(id)handshake
{
  handshakeCopy = handshake;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = handshakeCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did connect to client with handshake %@", &v16, 0xCu);
  }

  v7 = +[FBProcessManager sharedInstance];
  process = [handshakeCopy process];
  handle = [process handle];
  identity = [handle identity];
  v11 = [v7 processForIdentity:identity];

  if (!v11)
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100284D40();
    }

    goto LABEL_9;
  }

  delegate = [(CLBSceneManager *)self delegate];
  v13 = [delegate sceneManager:self createSceneIfNeededForProcess:v11];

  if (v13)
  {
    v14 = +[CLFLog commonLog];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      process2 = [handshakeCopy process];
      v16 = 138412290;
      v17 = process2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Created scene on launch of process: %@", &v16, 0xCu);
    }

LABEL_9:
  }
}

- (void)workspace:(id)workspace didAddScene:(id)scene
{
  sceneCopy = scene;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Did add scene: %@", &v8, 0xCu);
  }

  [sceneCopy setDelegate:self];
  [sceneCopy addExtension:objc_opt_class()];
}

- (void)workspace:(id)workspace willRemoveScene:(id)scene
{
  sceneCopy = scene;
  v6 = +[CLFLog commonLog];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [sceneCopy identifier];
    v8 = 138412290;
    v9 = identifier;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Will remove scene: %@", &v8, 0xCu);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:sceneCopy])
  {
    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:sceneCopy foreground:0];
  }

  [sceneCopy setDelegate:0];
  [(NSMutableSet *)self->_applicationScenes removeObject:sceneCopy];
  [(NSMutableSet *)self->_foregroundApplicationScenes removeObject:sceneCopy];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:sceneCopy];
}

- (void)workspace:(id)workspace didReceiveSceneRequestWithOptions:(id)options fromProcess:(id)process completion:(id)completion
{
  optionsCopy = options;
  processCopy = process;
  completionCopy = completion;
  BSDispatchQueueAssertMain();
  v12 = +[FBProcessManager sharedInstance];
  handle = [processCopy handle];
  identity = [handle identity];
  v15 = [v12 processForIdentity:identity];

  if (!v15)
  {
    uUIDString = +[CLFLog commonLog];
    if (os_log_type_enabled(uUIDString, OS_LOG_TYPE_ERROR))
    {
      sub_100284E10();
    }

    goto LABEL_33;
  }

  delegate = [(CLBSceneManager *)self delegate];
  v17 = [delegate sceneManager:self handleSceneRequestFromProcess:v15 options:optionsCopy completion:completionCopy];

  if ((v17 & 1) == 0)
  {
    if ([(CLBSceneManager *)self _shouldCreateHiddenSceneForRequestFromProcess:v15])
    {
      identifier = [optionsCopy identifier];
      v19 = identifier;
      if (identifier)
      {
        uUIDString = identifier;
      }

      else
      {
        v22 = +[NSUUID UUID];
        uUIDString = [v22 UUIDString];
      }

      workspace = [(CLBSceneManager *)self workspace];
      v24 = [workspace sceneWithIdentifier:uUIDString];

      if (v24)
      {
        clientHandle = [v24 clientHandle];
        processHandle = [clientHandle processHandle];
        v27 = [processHandle pid];
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
            v56 = uUIDString;
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
          v56 = uUIDString;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Process (%{public}@) requested scene creation with identifier %@ but it already had one.", buf, 0x16u);
        }
      }

      else
      {
        initialClientSettings = [optionsCopy initialClientSettings];
        v32 = initialClientSettings;
        if (initialClientSettings)
        {
          v33 = initialClientSettings;
        }

        else
        {
          v33 = objc_opt_new();
        }

        v35 = v33;

        preferredInterfaceOrientation = [v35 preferredInterfaceOrientation];
        if ((preferredInterfaceOrientation - 1) >= 4)
        {
          v37 = 1;
        }

        else
        {
          v37 = preferredInterfaceOrientation;
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
        workspace2 = [(CLBSceneManager *)self workspace];
        v50[0] = _NSConcreteStackBlock;
        v50[1] = 3221225472;
        v50[2] = sub_10001AF70;
        v50[3] = &unk_1002FC668;
        v51 = uUIDString;
        v43 = v15;
        v52 = v43;
        v24 = [workspace2 createScene:v50];

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
      if (completionCopy)
      {
        completionCopy[2](completionCopy, v24, v34);
      }

      goto LABEL_33;
    }

    v21 = +[CLFLog commonLog];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100284DA8();
    }

    if (completionCopy)
    {
      uUIDString = [NSError errorWithDomain:@"CLBSceneManager" code:1 userInfo:0];
      completionCopy[2](completionCopy, 0, uUIDString);
LABEL_33:
    }
  }
}

- (void)sceneDidActivate:(id)activate
{
  activateCopy = activate;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = activateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did activate: %@", &v14, 0xCu);
  }

  settings = [activateCopy settings];
  isSystemScene = [settings isSystemScene];

  definition = [activateCopy definition];
  specification = [definition specification];

  if (isSystemScene)
  {
    [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:activateCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(NSMutableSet *)self->_applicationScenes addObject:activateCopy];
      settings2 = [activateCopy settings];
      if (settings2)
      {
        v11 = settings2;
        settings3 = [activateCopy settings];
        isForeground = [settings3 isForeground];

        if (isForeground)
        {
          [(NSMutableSet *)self->_foregroundApplicationScenes addObject:activateCopy];
          [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:activateCopy foreground:1];
        }
      }
    }
  }
}

- (void)sceneDidDeactivate:(id)deactivate withContext:(id)context
{
  deactivateCopy = deactivate;
  contextCopy = context;
  BSDispatchQueueAssertMain();
  v8 = +[CLFLog commonLog];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    error = [contextCopy error];
    v13 = 138412546;
    v14 = deactivateCopy;
    v15 = 2112;
    v16 = error;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Scene did deactivate: %@. Error: %@", &v13, 0x16u);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:deactivateCopy])
  {
    v10 = +[CLBHIDInterface sharedInstance];
    [v10 updateDeferringRulesForScene:deactivateCopy];

    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:deactivateCopy foreground:0];
  }

  [(NSMutableSet *)self->_applicationScenes removeObject:deactivateCopy];
  [(NSMutableSet *)self->_foregroundApplicationScenes removeObject:deactivateCopy];
  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:deactivateCopy];
  delegate = [(CLBSceneManager *)self delegate];
  identifier = [deactivateCopy identifier];
  [delegate sceneManager:self didDeactivateSceneWithID:identifier];

  [deactivateCopy invalidate];
}

- (void)scene:(id)scene didUpdateClientSettings:(id)settings
{
  sceneCopy = scene;
  settingsCopy = settings;
  settings = [settingsCopy settings];
  settingsDiff = [settingsCopy settingsDiff];

  if ([settingsDiff containsProperty:"preferredInterfaceOrientation"])
  {
    preferredInterfaceOrientation = [settings preferredInterfaceOrientation];
    v11 = +[CLFLog commonLog];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = [sceneCopy identifier];
      v13 = BSInterfaceOrientationDescription();
      v44 = 138412546;
      v45 = identifier;
      v46 = 2112;
      v47 = v13;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Observed preferred interface orientation for %@: %@", &v44, 0x16u);
    }

    delegate = [(CLBSceneManager *)self delegate];
    identifier2 = [sceneCopy identifier];
    [delegate sceneManager:self didObserveUpdatedPreferredInterfaceOrientation:preferredInterfaceOrientation forSceneID:identifier2];
  }

  if ([settingsDiff containsProperty:"idleTimerDisabled"] && objc_msgSend(settings, "isUISubclass"))
  {
    idleTimerDisabled = [settings idleTimerDisabled];
    settings2 = [sceneCopy settings];
    isForeground = [settings2 isForeground];

    v19 = +[CLFLog commonLog];
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    if (isForeground)
    {
      if (v20)
      {
        identifier3 = [sceneCopy identifier];
        v44 = 138412546;
        v45 = identifier3;
        v46 = 1024;
        LODWORD(v47) = idleTimerDisabled;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Observed idle timer disabled for %@: %i", &v44, 0x12u);
      }

      v19 = +[CLBIdleSleepManager sharedInstance];
      [v19 setIdleTimerDisabled:idleTimerDisabled forReason:@"appRequested"];
    }

    else if (v20)
    {
      identifier4 = [sceneCopy identifier];
      v44 = 138412546;
      v45 = identifier4;
      v46 = 1024;
      LODWORD(v47) = idleTimerDisabled;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Ignoring idle timer disabled request for %@: %i because scene is not foreground", &v44, 0x12u);
    }
  }

  if ([settingsDiff containsProperty:"navigationTitles"])
  {
    v23 = [(CLBSceneManager *)self navigationTitlesForClientSettings:settings];
    v24 = +[CLFLog commonLog];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      identifier5 = [sceneCopy identifier];
      v44 = 138412546;
      v45 = identifier5;
      v46 = 2112;
      v47 = v23;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Observed navigation titles for %@: %@", &v44, 0x16u);
    }

    delegate2 = [(CLBSceneManager *)self delegate];
    identifier6 = [sceneCopy identifier];
    [delegate2 sceneManager:self didObserveUpdatedNavigationTitles:v23 forSceneID:identifier6];
  }

  if ([settingsDiff containsProperty:"chromeVisible"])
  {
    v28 = [(CLBSceneManager *)self chromeVisibleForScene:sceneCopy];
    v29 = +[CLFLog commonLog];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      identifier7 = [sceneCopy identifier];
      v44 = 138412546;
      v45 = identifier7;
      v46 = 1024;
      LODWORD(v47) = v28;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Observed back visible for %@: %i", &v44, 0x12u);
    }

    delegate3 = [(CLBSceneManager *)self delegate];
    identifier8 = [sceneCopy identifier];
    [delegate3 sceneManager:self didObserveUpdatedChromeVisible:v28 forSceneID:identifier8];
  }

  if ([settingsDiff containsProperty:"bottomBarTransitionProgress"])
  {
    v33 = [(CLBSceneManager *)self bottomBarTransitionProgressForClientSettings:settings];
    v34 = +[CLFLog commonLog];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      identifier9 = [sceneCopy identifier];
      v44 = 138412546;
      v45 = identifier9;
      v46 = 2112;
      v47 = v33;
      _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Observed bottom bar transition progress for %@: %@", &v44, 0x16u);
    }

    delegate4 = [(CLBSceneManager *)self delegate];
    identifier10 = [sceneCopy identifier];
    [delegate4 sceneManager:self didObserveUpdatedBottomBarTransitionProgress:v33 forSceneID:identifier10];
  }

  if ([settingsDiff containsProperty:"supportedInterfaceOrientations"] && objc_msgSend(settings, "isUISubclass"))
  {
    supportedInterfaceOrientations = [settings supportedInterfaceOrientations];
    v39 = +[CLFLog commonLog];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      identifier11 = [sceneCopy identifier];
      v41 = BSInterfaceOrientationMaskDescription();
      v44 = 138412546;
      v45 = identifier11;
      v46 = 2112;
      v47 = v41;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Observed supported interface orientations for %@: %@", &v44, 0x16u);
    }

    delegate5 = [(CLBSceneManager *)self delegate];
    identifier12 = [sceneCopy identifier];
    [delegate5 sceneManager:self didObserveUpdatedSupportedInterfaceOrientations:supportedInterfaceOrientations forSceneID:identifier12];
  }
}

- (id)scene:(id)scene handleActions:(id)actions
{
  sceneCopy = scene;
  actionsCopy = actions;
  v7 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = actionsCopy;
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
          v15 = [CLBEvent eventWithType:3 context:sceneCopy];
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

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  sceneCopy = scene;
  settings = [settings settings];
  isForeground = [settings isForeground];

  v9 = +[CLFLog commonLog];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109378;
    v12[1] = isForeground;
    v13 = 2112;
    v14 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Scene did apply update (foreground: %i): %@", v12, 0x12u);
  }

  if ([(NSMutableSet *)self->_applicationScenes containsObject:sceneCopy])
  {
    foregroundApplicationScenes = self->_foregroundApplicationScenes;
    if (isForeground)
    {
      [(NSMutableSet *)foregroundApplicationScenes addObject:sceneCopy];
    }

    else
    {
      [(NSMutableSet *)foregroundApplicationScenes removeObject:sceneCopy];
    }

    [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:sceneCopy foreground:isForeground];
    v11 = +[CLBHIDInterface sharedInstance];
    [v11 updateDeferringRulesForScene:sceneCopy];
  }
}

- (void)sceneContentStateDidChange:(id)change
{
  changeCopy = change;
  if ([changeCopy contentState] == 2 && -[NSMutableSet containsObject:](self->_applicationScenes, "containsObject:", changeCopy))
  {
    v4 = +[CLBHIDInterface sharedInstance];
    [v4 updateDeferringRulesForScene:changeCopy];
  }
}

- (void)scene:(id)scene clientDidConnect:(id)connect
{
  sceneCopy = scene;
  if ([(NSMutableSet *)self->_applicationScenes containsObject:?])
  {
    v5 = +[CLBHIDInterface sharedInstance];
    [v5 updateDeferringRulesForScene:sceneCopy];
  }
}

- (void)sceneDidInvalidate:(id)invalidate withContext:(id)context
{
  invalidateCopy = invalidate;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = invalidateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Scene did invalidate: %@", &v6, 0xCu);
  }

  [invalidateCopy setDelegate:0];
}

- (void)addPointerScene:(id)scene
{
  sceneCopy = scene;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Adding pointer scene to root window: %@", &v6, 0xCu);
  }

  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder addScene:sceneCopy];
}

- (void)removePointerScene:(id)scene
{
  sceneCopy = scene;
  v5 = +[CLFLog commonLog];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Removing pointer scene from root window: %@", &v6, 0xCu);
  }

  [(UIRootWindowScenePresentationBinder *)self->_rootWindowScenePresentationBinder removeScene:sceneCopy];
}

- (void)_updateForKeyboardScene
{
  v3 = +[FBSceneManager keyboardScene];
  if (v3)
  {
    shouldAddInProcessKeyboardSceneToRootWindow = [(CLBSceneManager *)self shouldAddInProcessKeyboardSceneToRootWindow];
    v5 = +[CLFLog commonLog];
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (shouldAddInProcessKeyboardSceneToRootWindow)
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

- (BOOL)_shouldCreateHiddenSceneForRequestFromProcess:(id)process
{
  processCopy = process;
  v4 = [processCopy hasEntitlement:@"com.apple.springboard.requestScene-daemon"];
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
    workspace = [(CLBSceneManager *)self workspace];
    v4 = [workspace createScene:&stru_1002FCC78];

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

- (void)_userInterfaceStyleArbiterStyleChanged:(id)changed
{
  v4 = +[UIUserInterfaceStyleArbiter sharedInstance];
  currentStyle = [v4 currentStyle];

  v6 = CLFLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    if (currentStyle >= 3)
    {
      v7 = [NSString stringWithFormat:@"Unknown (%ld)", currentStyle];
    }

    else
    {
      v7 = off_1002FCD08[currentStyle];
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
  block[5] = currentStyle;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_publishDisplayLayoutChangeWithScene:(id)scene foreground:(BOOL)foreground
{
  foregroundCopy = foreground;
  sceneCopy = scene;
  BSDispatchQueueAssertMain();
  settings = [sceneCopy settings];
  displayLayoutStyle = [settings displayLayoutStyle];

  if (displayLayoutStyle != 1)
  {
    clientHandle = [sceneCopy clientHandle];
    bundleIdentifier = [clientHandle bundleIdentifier];

    identifier = [sceneCopy identifier];
    v12 = +[CLFLog commonLog];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      *v34 = foregroundCopy;
      *&v34[4] = 2112;
      *&v34[6] = bundleIdentifier;
      v35 = 2112;
      v36 = identifier;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Attempt to publish display layout change (foreground: %i) with bundle id: %@, scene id: %@", buf, 0x1Cu);
    }

    if (!bundleIdentifier && foregroundCopy || !identifier)
    {
      goto LABEL_31;
    }

    if (displayLayoutStyle != 2)
    {
LABEL_24:
      elementsBySceneIdentifier = [(CLBSceneManager *)self elementsBySceneIdentifier];
      v23 = [elementsBySceneIdentifier objectForKeyedSubscript:identifier];

      if (foregroundCopy)
      {
        if (!v23)
        {
          elementsBySceneIdentifier3 = [[FBSDisplayLayoutElement alloc] initWithIdentifier:identifier];
          [elementsBySceneIdentifier3 setBundleIdentifier:bundleIdentifier];
          [elementsBySceneIdentifier3 setLevel:1];
          [elementsBySceneIdentifier3 setUIApplicationElement:1];
          mainDisplayLayoutPublisher = [(CLBSceneManager *)self mainDisplayLayoutPublisher];
          v26 = [mainDisplayLayoutPublisher addElement:elementsBySceneIdentifier3];

          elementsBySceneIdentifier2 = [(CLBSceneManager *)self elementsBySceneIdentifier];
          [elementsBySceneIdentifier2 setObject:v26 forKeyedSubscript:identifier];

LABEL_29:
        }
      }

      else if (v23)
      {
        [v23 invalidate];
        elementsBySceneIdentifier3 = [(CLBSceneManager *)self elementsBySceneIdentifier];
        [elementsBySceneIdentifier3 setObject:0 forKeyedSubscript:identifier];
        goto LABEL_29;
      }

LABEL_31:
      goto LABEL_32;
    }

    v13 = +[CLFLog commonLog];
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (foregroundCopy)
    {
      if (v14)
      {
        *buf = 138412290;
        *v34 = identifier;
        v15 = "Clearing out all other display layout elements to accommodate primary foreground scene: %@";
LABEL_13:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 0xCu);
      }
    }

    else if (v14)
    {
      *buf = 138412290;
      *v34 = identifier;
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
          if (v21 != sceneCopy)
          {
            [(CLBSceneManager *)self _publishDisplayLayoutChangeWithScene:v21 foreground:!foregroundCopy, v28];
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

- (id)navigationTitlesForClientSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  sub_100068500(settingsCopy);

  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (BOOL)chromeVisibleForScene:(id)scene
{
  sceneCopy = scene;
  selfCopy = self;
  v6 = sub_100068708(sceneCopy);

  return v6 & 1;
}

- (id)bottomBarTransitionProgressForClientSettings:(id)settings
{
  settingsCopy = settings;
  selfCopy = self;
  v6 = sub_100068DDC(settingsCopy);

  return v6;
}

@end