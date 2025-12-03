@interface CARTemplateUIApplicationSceneViewController
- (CARTemplateUIApplicationSceneViewController)initWithWindowScene:(id)scene templateInstance:(id)instance options:(id)options;
- (UIWindowScene)windowScene;
- (id)_frameRateLimit;
- (id)_sceneSettings;
- (int64_t)_mapStyle;
- (void)_handleActivityContinuationAction:(id)action;
- (void)_installScenePresentationViewIfNeeded;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_removeScenePresentationView;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)forwardActivityContinuationAction:(id)action fromScene:(id)scene;
- (void)invalidate;
- (void)mapTemplateWillHide:(id)hide;
- (void)mapTemplateWillShow:(id)show;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setOverlayViewController:(id)controller;
- (void)setScene:(id)scene;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
@end

@implementation CARTemplateUIApplicationSceneViewController

- (void)_updateUserInterfaceStyle
{
  scene = [(CARTemplateUIApplicationSceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001414;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [scene updateUISettingsWithBlock:v4];
}

- (CARTemplateUIApplicationSceneViewController)initWithWindowScene:(id)scene templateInstance:(id)instance options:(id)options
{
  sceneCopy = scene;
  instanceCopy = instance;
  optionsCopy = options;
  v46.receiver = self;
  v46.super_class = CARTemplateUIApplicationSceneViewController;
  v11 = [(CARTemplateUIApplicationSceneViewController *)&v46 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_windowScene, sceneCopy);
    objc_storeStrong(&v12->_templateInstance, instance);
    [(CPSTemplateInstance *)v12->_templateInstance setDelegate:v12];
    v13 = objc_alloc_init(FBSSceneSettingsDiffInspector);
    settingsDiffInspector = v12->_settingsDiffInspector;
    v12->_settingsDiffInspector = v13;

    objc_initWeak(&location, v12);
    v15 = v12->_settingsDiffInspector;
    v43[0] = _NSConcreteStackBlock;
    v43[1] = 3221225472;
    v43[2] = sub_100009870;
    v43[3] = &unk_10001C438;
    objc_copyWeak(&v44, &location);
    [(FBSSceneSettingsDiffInspector *)v15 observeFrameWithBlock:v43];
    v47 = v12;
    v16 = [NSArray arrayWithObjects:&v47 count:1];
    [sceneCopy _registerSettingsDiffActionArray:v16 forKey:@"settingsObserver"];

    v17 = objc_alloc_init(CRSUIApplicationSceneSettingsDiffInspector);
    appSettingsDiffInspector = v12->_appSettingsDiffInspector;
    v12->_appSettingsDiffInspector = v17;

    v19 = v12->_appSettingsDiffInspector;
    v41[0] = _NSConcreteStackBlock;
    v41[1] = 3221225472;
    v41[2] = sub_10000997C;
    v41[3] = &unk_10001C438;
    objc_copyWeak(&v42, &location);
    [(CRSUIApplicationSceneSettingsDiffInspector *)v19 observeMapStyleWithBlock:v41];
    v20 = v12->_appSettingsDiffInspector;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_100009A9C;
    v39[3] = &unk_10001C438;
    objc_copyWeak(&v40, &location);
    [(CRSUIApplicationSceneSettingsDiffInspector *)v20 observeFrameRateLimitWithBlock:v39];
    objc_opt_class();
    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    if (settings && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v23 = settings;
    }

    else
    {
      v23 = 0;
    }

    proxiedApplicationBundleIdentifier = [v23 proxiedApplicationBundleIdentifier];
    applicationIdentifier = v12->_applicationIdentifier;
    v12->_applicationIdentifier = proxiedApplicationBundleIdentifier;

    _FBSScene2 = [sceneCopy _FBSScene];
    settings2 = [_FBSScene2 settings];
    displayConfiguration = [settings2 displayConfiguration];
    displayConfiguration = v12->_displayConfiguration;
    v12->_displayConfiguration = displayConfiguration;

    uRLContexts = [optionsCopy URLContexts];
    LOBYTE(settings2) = [uRLContexts count] == 0;

    if ((settings2 & 1) == 0)
    {
      uRLContexts2 = [optionsCopy URLContexts];
      pendingOpenURLContexts = v12->_pendingOpenURLContexts;
      v12->_pendingOpenURLContexts = uRLContexts2;
    }

    [sceneCopy setDelegate:v12];
    v33 = [BSDescriptionBuilder descriptionForObject:v12];
    v34 = [NSString stringWithFormat:@"%@-%u", v33, ++dword_1000254F0];
    requester = v12->_requester;
    v12->_requester = v34;

    v36 = +[NSNotificationCenter defaultCenter];
    [v36 addObserver:v12 selector:"mapTemplateWillShow:" name:@"CPMapTemplateWillShowNotification" object:0];

    v37 = +[NSNotificationCenter defaultCenter];
    [v37 addObserver:v12 selector:"mapTemplateWillHide:" name:@"CPMapTemplateWillHideNotification" object:0];

    objc_destroyWeak(&v40);
    objc_destroyWeak(&v42);
    objc_destroyWeak(&v44);
    objc_destroyWeak(&location);
  }

  return v12;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  scenePresenter = [(CARTemplateUIApplicationSceneViewController *)self scenePresenter];
  [scenePresenter invalidate];

  v5.receiver = self;
  v5.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v5 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v4 traitCollectionDidChange:change];
  [(CARTemplateUIApplicationSceneViewController *)self _updateUserInterfaceStyle];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v5 viewDidLoad];
  templateInstance = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
  overlayViewController = [templateInstance overlayViewController];
  [(CARTemplateUIApplicationSceneViewController *)self setOverlayViewController:overlayViewController];
}

- (void)setOverlayViewController:(id)controller
{
  controllerCopy = controller;
  overlayViewController = self->_overlayViewController;
  v21 = controllerCopy;
  if (overlayViewController)
  {
    [(UIViewController *)overlayViewController willMoveToParentViewController:0];
    view = [(UIViewController *)self->_overlayViewController view];
    [view removeFromSuperview];

    [(UIViewController *)self->_overlayViewController removeFromParentViewController];
    v8 = self->_overlayViewController;
    self->_overlayViewController = 0;

    controllerCopy = v21;
  }

  if (controllerCopy)
  {
    [(CARTemplateUIApplicationSceneViewController *)self addChildViewController:v21];
    view2 = [(CARTemplateUIApplicationSceneViewController *)self view];
    view3 = [v21 view];
    [view2 addSubview:view3];

    view4 = [(CARTemplateUIApplicationSceneViewController *)self view];
    [view4 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    view5 = [v21 view];
    [view5 setFrame:{v13, v15, v17, v19}];

    [v21 didMoveToParentViewController:self];
    objc_storeStrong(&self->_overlayViewController, controller);
  }

  _objc_release_x1();
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setScene: %@", buf, 0xCu);
  }

  [(CARTemplateUIApplicationSceneViewController *)self _removeScenePresentationView];
  scene = self->_scene;
  self->_scene = 0;

  if (sceneCopy)
  {
    objc_storeStrong(&self->_scene, scene);
    templateInstance = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    [templateInstance setScene:sceneCopy];

    templateInstance2 = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    clientApplicationSceneIsConnected = [templateInstance2 clientApplicationSceneIsConnected];

    if (clientApplicationSceneIsConnected)
    {
      [(CARTemplateUIApplicationSceneViewController *)self _installScenePresentationViewIfNeeded];
    }

    pendingActivityContinuationAction = [(CARTemplateUIApplicationSceneViewController *)self pendingActivityContinuationAction];

    if (pendingActivityContinuationAction)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10000A060;
      block[3] = &unk_10001C4E8;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)_installScenePresentationViewIfNeeded
{
  scene = [(CARTemplateUIApplicationSceneViewController *)self scene];
  if (scene)
  {
    templateInstance = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    requiresApplicationScenePresenter = [templateInstance requiresApplicationScenePresenter];

    if ((requiresApplicationScenePresenter & 1) == 0)
    {
      v10 = sub_100001280(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = scene;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not installing presentation view for scene %@", &v16, 0xCu);
      }

      goto LABEL_9;
    }

    sceneHostView = [(CARTemplateUIApplicationSceneViewController *)self sceneHostView];

    if (!sceneHostView)
    {
      v7 = sub_100001280(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = scene;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Installing presentation view for scene %@", &v16, 0xCu);
      }

      uiPresentationManager = [scene uiPresentationManager];
      requester = [(CARTemplateUIApplicationSceneViewController *)self requester];
      v10 = [uiPresentationManager createPresenterWithIdentifier:requester priority:1];

      [v10 modifyPresentationContext:&stru_10001C648];
      [v10 activate];
      [(CARTemplateUIApplicationSceneViewController *)self setScenePresenter:v10];
      presentationView = [v10 presentationView];
      view = [(CARTemplateUIApplicationSceneViewController *)self view];
      [view insertSubview:presentationView atIndex:0];

      y = CGPointZero.y;
      settings = [scene settings];
      [settings frame];
      [presentationView setFrame:{CGPointZero.x, y}];

      [(CARTemplateUIApplicationSceneViewController *)self setSceneHostView:presentationView];
      view2 = [(CARTemplateUIApplicationSceneViewController *)self view];
      [view2 setNeedsLayout];

LABEL_9:
    }
  }
}

- (void)_removeScenePresentationView
{
  scenePresenter = [(CARTemplateUIApplicationSceneViewController *)self scenePresenter];
  [scenePresenter invalidate];

  [(CARTemplateUIApplicationSceneViewController *)self setScenePresenter:0];
  sceneHostView = [(CARTemplateUIApplicationSceneViewController *)self sceneHostView];
  [sceneHostView removeFromSuperview];

  [(CARTemplateUIApplicationSceneViewController *)self setSceneHostView:0];
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneDidDisconnect: %@", &v5, 0xCu);
  }

  [disconnectCopy setDelegate:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneDidBecomeActive: %@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneWillResignActive: %@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneWillEnterForeground: %@", &v7, 0xCu);
  }

  pendingOpenURLContexts = [(CARTemplateUIApplicationSceneViewController *)self pendingOpenURLContexts];
  [(CARTemplateUIApplicationSceneViewController *)self setPendingOpenURLContexts:0];
  [(CARTemplateUIApplicationSceneViewController *)self sendSceneUpdate:1 openURLContexts:pendingOpenURLContexts];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneDidEnterBackground: %@", &v6, 0xCu);
  }

  [(CARTemplateUIApplicationSceneViewController *)self sendSceneUpdate:0 openURLContexts:0];
}

- (void)forwardActivityContinuationAction:(id)action fromScene:(id)scene
{
  actionCopy = action;
  scene = [(CARTemplateUIApplicationSceneViewController *)self scene];

  if (scene)
  {
    [(CARTemplateUIApplicationSceneViewController *)self _handleActivityContinuationAction:actionCopy];
  }

  else
  {
    [(CARTemplateUIApplicationSceneViewController *)self setPendingActivityContinuationAction:actionCopy];
  }
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  diffCopy = diff;
  sSceneCopy = sScene;
  settingsDiffInspector = [(CARTemplateUIApplicationSceneViewController *)self settingsDiffInspector];
  [settingsDiffInspector inspectDiff:diffCopy withContext:0];

  appSettingsDiffInspector = [(CARTemplateUIApplicationSceneViewController *)self appSettingsDiffInspector];
  [appSettingsDiffInspector inspectDiff:diffCopy withContext:sSceneCopy];
}

- (void)mapTemplateWillShow:(id)show
{
  object = [show object];
  bOOLValue = [object BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A9C4;
  v8[3] = &unk_10001C4E8;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (bOOLValue)
  {
    [UIView animateWithDuration:6 delay:v6 options:0 animations:UINavigationControllerHideShowBarDuration completion:0.0];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)mapTemplateWillHide:(id)hide
{
  object = [hide object];
  bOOLValue = [object BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AAF0;
  v8[3] = &unk_10001C4E8;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (bOOLValue)
  {
    [UIView animateWithDuration:6 delay:v6 options:0 animations:UINavigationControllerHideShowBarDuration completion:0.0];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)_handleActivityContinuationAction:(id)action
{
  actionCopy = action;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    scene = [(CARTemplateUIApplicationSceneViewController *)self scene];
    *buf = 138543618;
    v12 = actionCopy;
    v13 = 2114;
    v14 = scene;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forwarding activity continuation action %{public}@ to scene: %{public}@", buf, 0x16u);
  }

  scene2 = [(CARTemplateUIApplicationSceneViewController *)self scene];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B59C;
  v9[3] = &unk_10001C698;
  v10 = actionCopy;
  v8 = actionCopy;
  [scene2 updateUISettingsWithTransitionBlock:v9];
}

- (void)invalidate
{
  [(CARTemplateUIApplicationSceneViewController *)self setInvalidated:1];
  windowScene = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
  [windowScene _unregisterSettingsDiffActionArrayForKey:@"settingsObserver"];
}

- (id)_sceneSettings
{
  windowScene = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    windowScene2 = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
    _FBSScene2 = [windowScene2 _FBSScene];
    settings2 = [_FBSScene2 settings];
  }

  else
  {
    settings2 = 0;
  }

  return settings2;
}

- (int64_t)_mapStyle
{
  _sceneSettings = [(CARTemplateUIApplicationSceneViewController *)self _sceneSettings];
  mapStyle = [_sceneSettings mapStyle];

  return mapStyle;
}

- (id)_frameRateLimit
{
  _sceneSettings = [(CARTemplateUIApplicationSceneViewController *)self _sceneSettings];
  frameRateLimit = [_sceneSettings frameRateLimit];

  return frameRateLimit;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end