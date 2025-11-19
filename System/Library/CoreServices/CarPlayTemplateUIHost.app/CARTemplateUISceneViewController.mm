@interface CARTemplateUISceneViewController
- (CARTemplateUISceneViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 bundleIdentifier:(id)a5;
- (NSNumber)frameRateLimit;
- (UIEdgeInsets)_safeAreaInsets;
- (UIWindowScene)windowScene;
- (int64_t)mapStyle;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)loadView;
- (void)prepareSettings:(id)a3;
- (void)removeFromParentViewController;
- (void)sceneContentStateDidChange:(id)a3;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setScene:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLayoutSubviews;
@end

@implementation CARTemplateUISceneViewController

- (CARTemplateUISceneViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 bundleIdentifier:(id)a5
{
  v8 = a3;
  v35 = a4;
  v9 = a5;
  v43.receiver = self;
  v43.super_class = CARTemplateUISceneViewController;
  v10 = [(CARTemplateUISceneViewController *)&v43 init];
  v11 = v10;
  if (v10)
  {
    objc_storeWeak(&v10->_windowScene, v8);
    objc_storeStrong(&v11->_templateInstance, a4);
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
    [v8 _registerSettingsDiffActionArray:v19 forKey:@"frameObserver"];

    v20 = [v9 copy];
    applicationIdentifier = v11->_applicationIdentifier;
    v11->_applicationIdentifier = v20;

    v22 = [v8 _FBSScene];
    v23 = [v22 settings];
    v24 = [v23 displayConfiguration];
    displayConfiguration = v11->_displayConfiguration;
    v11->_displayConfiguration = v24;

    v26 = [(FBSDisplayConfiguration *)v11->_displayConfiguration identity];
    v27 = v11->_applicationIdentifier;
    v28 = [objc_opt_class() sceneIdentifierSuffix];
    v29 = [NSString stringWithFormat:@"%@:%@%@", v26, v27, v28];
    sceneID = v11->_sceneID;
    v11->_sceneID = v29;

    [v8 setDelegate:v11];
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
  v3 = [(CARTemplateUISceneViewController *)self scenePresenter];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 traitCollectionDidChange:a3];
  [(CARTemplateUISceneViewController *)self _updateUserInterfaceStyle];
}

- (void)loadView
{
  v4.receiver = self;
  v4.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v4 loadView];
  v3 = [(CARTemplateUISceneViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
}

- (void)viewDidLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = CARTemplateUISceneViewController;
  [(CARTemplateUISceneViewController *)&v5 viewDidLayoutSubviews];
  v3 = [(CARTemplateUISceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100004BEC;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [v3 updateUISettingsWithBlock:v4];
}

- (UIEdgeInsets)_safeAreaInsets
{
  v3 = [(CARTemplateUISceneViewController *)self templateInstance];
  v4 = [(CARTemplateUISceneViewController *)self scene];
  [v3 safeAreaInsetsForScene:v4];
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
  v3 = [(CARTemplateUISceneViewController *)self scene];

  if (v3)
  {
    v4 = [(CARTemplateUISceneViewController *)self scene];
    [v4 invalidate:0];
  }
}

- (void)setScene:(id)a3
{
  v5 = a3;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v29 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setScene: %@", buf, 0xCu);
  }

  v7 = [(CARTemplateUISceneViewController *)self scenePresenter];
  [v7 invalidate];

  [(CARTemplateUISceneViewController *)self setScenePresenter:0];
  v8 = [(CARTemplateUISceneViewController *)self sceneHostView];
  [v8 removeFromSuperview];

  [(CARTemplateUISceneViewController *)self setSceneHostView:0];
  scene = self->_scene;
  self->_scene = 0;

  if (v5)
  {
    objc_storeStrong(&self->_scene, a3);
    [(FBScene *)self->_scene addObserver:self];
    v10 = [(FBScene *)self->_scene uiPresentationManager];
    v11 = [(CARTemplateUISceneViewController *)self requester];
    v12 = [v10 createPresenterWithIdentifier:v11 priority:1];
    [(CARTemplateUISceneViewController *)self setScenePresenter:v12];

    v13 = [(CARTemplateUISceneViewController *)self scenePresenter];
    [v13 modifyPresentationContext:&stru_10001C4A0];

    v14 = [(CARTemplateUISceneViewController *)self scenePresenter];
    [v14 activate];

    v15 = [(CARTemplateUISceneViewController *)self scenePresenter];
    v16 = [v15 presentationView];
    [(CARTemplateUISceneViewController *)self setSceneHostView:v16];

    v17 = [(CARTemplateUISceneViewController *)self view];
    v18 = [(CARTemplateUISceneViewController *)self sceneHostView];
    [v17 insertSubview:v18 atIndex:0];

    y = CGPointZero.y;
    v20 = [(FBScene *)self->_scene settings];
    [v20 frame];
    v22 = v21;
    v24 = v23;
    v25 = [(CARTemplateUISceneViewController *)self sceneHostView];
    [v25 setFrame:{CGPointZero.x, y, v22, v24}];

    v26 = [(CARTemplateUISceneViewController *)self view];
    [v26 setNeedsLayout];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000050CC;
    block[3] = &unk_10001C4E8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneDidDisconnect: %{public}@", &v5, 0xCu);
  }

  [v3 setDelegate:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneDidBecomeActive: %{public}@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "sceneWillResignActive: %{public}@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sceneWillEnterForeground: %{public}@", &v6, 0xCu);
  }

  [(CARTemplateUISceneViewController *)self sendSceneUpdate:1 openURLContexts:0];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sceneDidEnterBackground: %{public}@", &v6, 0xCu);
  }

  [(CARTemplateUISceneViewController *)self sendSceneUpdate:0 openURLContexts:0];
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a5;
  v11 = a4;
  v12 = [(CARTemplateUISceneViewController *)self appSettingsDiffInspector];
  [v12 inspectDiff:v10 withContext:v11];

  v13 = [(CARTemplateUISceneViewController *)self settingsDiffInspector];
  [v13 inspectDiff:v10 withContext:0];
}

- (void)_updateUserInterfaceStyle
{
  v3 = [(CARTemplateUISceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100005E78;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [v3 updateUISettingsWithBlock:v4];
}

- (void)sceneContentStateDidChange:(id)a3
{
  if ([a3 contentState] == 2)
  {

    [(CARTemplateUISceneViewController *)self contentReady];
  }
}

- (void)prepareSettings:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v6 = v4;
    if ([v4 conformsToProtocol:&OBJC_PROTOCOL___CRSUIMutableFrameRateLimitProviding])
    {
      v5 = [(CARTemplateUISceneViewController *)self frameRateLimit];
      [v6 setFrameRateLimit:v5];
    }
  }

  _objc_release_x1();
}

- (int64_t)mapStyle
{
  v3 = [(CARTemplateUISceneViewController *)self windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___CRSUIMapStyleProviding];

  if (!v6)
  {
    return 0;
  }

  v7 = [(CARTemplateUISceneViewController *)self windowScene];
  v8 = [v7 _FBSScene];
  v9 = [v8 settings];

  v10 = [v9 mapStyle];
  return v10;
}

- (NSNumber)frameRateLimit
{
  v3 = [(CARTemplateUISceneViewController *)self windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___CRSUIFrameRateLimitProviding];

  if (v6)
  {
    v7 = [(CARTemplateUISceneViewController *)self windowScene];
    v8 = [v7 _FBSScene];
    v9 = [v8 settings];

    v10 = [v9 frameRateLimit];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end