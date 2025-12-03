@interface CARTemplateUISceneViewController
- (CARTemplateUISceneViewController)initWithWindowScene:(id)scene templateInstance:(id)instance bundleIdentifier:(id)identifier;
- (NSNumber)frameRateLimit;
- (UIEdgeInsets)_safeAreaInsets;
- (UIWindowScene)windowScene;
- (int64_t)mapStyle;
- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)loadView;
- (void)prepareSettings:(id)settings;
- (void)removeFromParentViewController;
- (void)sceneContentStateDidChange:(id)change;
- (void)sceneDidBecomeActive:(id)active;
- (void)sceneDidDisconnect:(id)disconnect;
- (void)sceneDidEnterBackground:(id)background;
- (void)sceneWillEnterForeground:(id)foreground;
- (void)sceneWillResignActive:(id)active;
- (void)setScene:(id)scene;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
@end

@implementation CARTemplateUISceneViewController

- (CARTemplateUISceneViewController)initWithWindowScene:(id)scene templateInstance:(id)instance bundleIdentifier:(id)identifier
{
  sceneCopy = scene;
  instanceCopy = instance;
  identifierCopy = identifier;
  v43.receiver = self;
  v43.super_class = CARTemplateUISceneViewController;
  v10 = [(CARTemplateUISceneViewController *)&v43 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_windowScene, sceneCopy);
    objc_storeStrong(&v11->_templateInstance, instance);
    v12 = objc_alloc_init(FBSSceneSettingsDiffInspector);
    settingsDiffInspector = v11->_settingsDiffInspector;
    v11->_settingsDiffInspector = v12;

    objc_initWeak(&location, v11);
    v14 = v11->_settingsDiffInspector;
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10000467C;
    v40[3] = &unk_10001C438;
    objc_copyWeak(&v41, &location);
    [(FBSSceneSettingsDiffInspector *)v14 observeFrameWithBlock:v40];
    v15 = objc_alloc_init(CRSUIApplicationSceneSettingsDiffInspector);
    appSettingsDiffInspector = v11->_appSettingsDiffInspector;
    v11->_appSettingsDiffInspector = v15;

    v17 = v11->_appSettingsDiffInspector;
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100004788;
    v38[3] = &unk_10001C438;
    objc_copyWeak(&v39, &location);
    [(CRSUIApplicationSceneSettingsDiffInspector *)v17 observeMapStyleWithBlock:v38];
    v18 = v11->_appSettingsDiffInspector;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_1000048B8;
    v36[3] = &unk_10001C438;
    objc_copyWeak(&v37, &location);
    [(CRSUIApplicationSceneSettingsDiffInspector *)v18 observeFrameRateLimitWithBlock:v36];
    v44 = v11;
    v19 = [NSArray arrayWithObjects:&v44 count:1];
    [sceneCopy _registerSettingsDiffActionArray:v19 forKey:@"frameObserver"];

    v20 = [identifierCopy copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v20;

    _FBSScene = [sceneCopy _FBSScene];
    settings = [_FBSScene settings];
    displayConfiguration = [settings displayConfiguration];
    displayConfiguration = v11->_displayConfiguration;
    v11->_displayConfiguration = displayConfiguration;

    identity = [(FBSDisplayConfiguration *)v11->_displayConfiguration identity];
    v27 = v11->_applicationIdentifier;
    sceneIdentifierSuffix = [objc_opt_class() sceneIdentifierSuffix];
    v29 = [NSString stringWithFormat:@"%@:%@%@", identity, v27, sceneIdentifierSuffix];
    sceneID = v11->_sceneID;
    v11->_sceneID = v29;

    [sceneCopy setDelegate:v11];
    v31 = [BSDescriptionBuilder descriptionForObject:v11];
    v32 = [NSString stringWithFormat:@"%@-%u", v31, ++dword_1000253F0];
    requester = v11->_requester;
    v11->_requester = v32;

    objc_destroyWeak(&v37);
    objc_destroyWeak(&v39);
    objc_destroyWeak(&v41);
    objc_destroyWeak(&location);
  }

  return v11;
}

- (void)dealloc
{
  scenePresenter = [(CARTemplateUISceneViewController *)self scenePresenter];
  [scenePresenter invalidate];

  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 traitCollectionDidChange:change];
  [(CARTemplateUISceneViewController *)self _updateUserInterfaceStyle];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 loadView];
  view = [(CARTemplateUISceneViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v5 viewDidLayoutSubviews];
  scene = [(CARTemplateUISceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004BEC;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [scene updateUISettingsWithBlock:v4];
}

- (UIEdgeInsets)_safeAreaInsets
{
  templateInstance = [(CARTemplateUISceneViewController *)self templateInstance];
  scene = [(CARTemplateUISceneViewController *)self scene];
  [templateInstance safeAreaInsetsForScene:scene];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.right = v16;
  result.bottom = v15;
  result.left = v14;
  result.top = v13;
  return result;
}

- (void)removeFromParentViewController
{
  v5.receiver = self;
  v5.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v5 removeFromParentViewController];
  scene = [(CARTemplateUISceneViewController *)self scene];

  if (scene)
  {
    scene2 = [(CARTemplateUISceneViewController *)self scene];
    [scene2 invalidate:0];
  }
}

- (void)setScene:(id)scene
{
  sceneCopy = scene;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = sceneCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setScene: %@", buf, 0xCu);
  }

  scenePresenter = [(CARTemplateUISceneViewController *)self scenePresenter];
  [scenePresenter invalidate];

  [(CARTemplateUISceneViewController *)self setScenePresenter:0];
  sceneHostView = [(CARTemplateUISceneViewController *)self sceneHostView];
  [sceneHostView removeFromSuperview];

  [(CARTemplateUISceneViewController *)self setSceneHostView:0];
  scene = self->_scene;
  self->_scene = 0;

  if (sceneCopy)
  {
    objc_storeStrong(&self->_scene, scene);
    [(FBScene *)self->_scene addObserver:self];
    uiPresentationManager = [(FBScene *)self->_scene uiPresentationManager];
    requester = [(CARTemplateUISceneViewController *)self requester];
    v12 = [uiPresentationManager createPresenterWithIdentifier:requester priority:1];
    [(CARTemplateUISceneViewController *)self setScenePresenter:v12];

    scenePresenter2 = [(CARTemplateUISceneViewController *)self scenePresenter];
    [scenePresenter2 modifyPresentationContext:&stru_10001C4A0];

    scenePresenter3 = [(CARTemplateUISceneViewController *)self scenePresenter];
    [scenePresenter3 activate];

    scenePresenter4 = [(CARTemplateUISceneViewController *)self scenePresenter];
    presentationView = [scenePresenter4 presentationView];
    [(CARTemplateUISceneViewController *)self setSceneHostView:presentationView];

    view = [(CARTemplateUISceneViewController *)self view];
    sceneHostView2 = [(CARTemplateUISceneViewController *)self sceneHostView];
    [view insertSubview:sceneHostView2 atIndex:0];

    y = CGPointZero.y;
    settings = [(FBScene *)self->_scene settings];
    [settings frame];
    v22 = v21;
    v24 = v23;
    sceneHostView3 = [(CARTemplateUISceneViewController *)self sceneHostView];
    [sceneHostView3 setFrame:{CGPointZero.x, y, v22, v24}];

    view2 = [(CARTemplateUISceneViewController *)self view];
    [view2 setNeedsLayout];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000050CC;
    block[3] = &unk_10001C4E8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sceneDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = disconnectCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneDidDisconnect: %{public}@", &v5, 0xCu);
  }

  [disconnectCopy setDelegate:0];
}

- (void)sceneDidBecomeActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneDidBecomeActive: %{public}@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)active
{
  activeCopy = active;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = activeCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneWillResignActive: %{public}@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)foreground
{
  foregroundCopy = foreground;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = foregroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sceneWillEnterForeground: %{public}@", &v6, 0xCu);
  }

  [(CARTemplateUISceneViewController *)self sendSceneUpdate:1 openURLContexts:0];
}

- (void)sceneDidEnterBackground:(id)background
{
  backgroundCopy = background;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = backgroundCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sceneDidEnterBackground: %{public}@", &v6, 0xCu);
  }

  [(CARTemplateUISceneViewController *)self sendSceneUpdate:0 openURLContexts:0];
}

- (void)_performActionsForUIScene:(id)scene withUpdatedFBSScene:(id)sScene settingsDiff:(id)diff fromSettings:(id)settings transitionContext:(id)context lifecycleActionType:(unsigned int)type
{
  diffCopy = diff;
  sSceneCopy = sScene;
  appSettingsDiffInspector = [(CARTemplateUISceneViewController *)self appSettingsDiffInspector];
  [appSettingsDiffInspector inspectDiff:diffCopy withContext:sSceneCopy];

  settingsDiffInspector = [(CARTemplateUISceneViewController *)self settingsDiffInspector];
  [settingsDiffInspector inspectDiff:diffCopy withContext:0];
}

- (void)_updateUserInterfaceStyle
{
  scene = [(CARTemplateUISceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005E78;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [scene updateUISettingsWithBlock:v4];
}

- (void)sceneContentStateDidChange:(id)change
{
  if ([change contentState] == 2)
  {

    [(CARTemplateUISceneViewController *)self contentReady];
  }
}

- (void)prepareSettings:(id)settings
{
  settingsCopy = settings;
  if (settingsCopy)
  {
    v6 = settingsCopy;
    if ([settingsCopy conformsToProtocol:&OBJC_PROTOCOL___CRSUIMutableFrameRateLimitProviding])
    {
      frameRateLimit = [(CARTemplateUISceneViewController *)self frameRateLimit];
      [v6 setFrameRateLimit:frameRateLimit];
    }
  }

  _objc_release_x1();
}

- (int64_t)mapStyle
{
  windowScene = [(CARTemplateUISceneViewController *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  v6 = [settings conformsToProtocol:&OBJC_PROTOCOL___CRSUIMapStyleProviding];

  if (!v6)
  {
    return 0;
  }

  windowScene2 = [(CARTemplateUISceneViewController *)self windowScene];
  _FBSScene2 = [windowScene2 _FBSScene];
  settings2 = [_FBSScene2 settings];

  mapStyle = [settings2 mapStyle];
  return mapStyle;
}

- (NSNumber)frameRateLimit
{
  windowScene = [(CARTemplateUISceneViewController *)self windowScene];
  _FBSScene = [windowScene _FBSScene];
  settings = [_FBSScene settings];
  v6 = [settings conformsToProtocol:&OBJC_PROTOCOL___CRSUIFrameRateLimitProviding];

  if (v6)
  {
    windowScene2 = [(CARTemplateUISceneViewController *)self windowScene];
    _FBSScene2 = [windowScene2 _FBSScene];
    settings2 = [_FBSScene2 settings];

    frameRateLimit = [settings2 frameRateLimit];
  }

  else
  {
    frameRateLimit = 0;
  }

  return frameRateLimit;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end