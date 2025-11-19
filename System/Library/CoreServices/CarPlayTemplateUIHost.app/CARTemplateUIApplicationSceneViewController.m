@interface CARTemplateUIApplicationSceneViewController
- (CARTemplateUIApplicationSceneViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 options:(id)a5;
- (UIWindowScene)windowScene;
- (id)_frameRateLimit;
- (id)_sceneSettings;
- (int64_t)_mapStyle;
- (void)_handleActivityContinuationAction:(id)a3;
- (void)_installScenePresentationViewIfNeeded;
- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8;
- (void)_removeScenePresentationView;
- (void)_updateUserInterfaceStyle;
- (void)dealloc;
- (void)forwardActivityContinuationAction:(id)a3 fromScene:(id)a4;
- (void)invalidate;
- (void)mapTemplateWillHide:(id)a3;
- (void)mapTemplateWillShow:(id)a3;
- (void)sceneDidBecomeActive:(id)a3;
- (void)sceneDidDisconnect:(id)a3;
- (void)sceneDidEnterBackground:(id)a3;
- (void)sceneWillEnterForeground:(id)a3;
- (void)sceneWillResignActive:(id)a3;
- (void)setOverlayViewController:(id)a3;
- (void)setScene:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
@end

@implementation CARTemplateUIApplicationSceneViewController

- (void)_updateUserInterfaceStyle
{
  v3 = [(CARTemplateUIApplicationSceneViewController *)self scene];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100001414;
  v4[3] = &unk_10001C460;
  v4[4] = self;
  [v3 updateUISettingsWithBlock:v4];
}

- (CARTemplateUIApplicationSceneViewController)initWithWindowScene:(id)a3 templateInstance:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v46.receiver = self;
  v46.super_class = CARTemplateUIApplicationSceneViewController;
  v11 = [(CARTemplateUIApplicationSceneViewController *)&v46 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_windowScene, v8);
    objc_storeStrong(&v12->_templateInstance, a4);
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
    [v8 _registerSettingsDiffActionArray:v16 forKey:@"settingsObserver"];

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
    v21 = [v8 _FBSScene];
    v22 = [v21 settings];
    if (v22 && (objc_opt_isKindOfClass() & 1) != 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = 0;
    }

    v24 = [v23 proxiedApplicationBundleIdentifier];
    applicationIdentifier = v12->_applicationIdentifier;
    v12->_applicationIdentifier = v24;

    v26 = [v8 _FBSScene];
    v27 = [v26 settings];
    v28 = [v27 displayConfiguration];
    displayConfiguration = v12->_displayConfiguration;
    v12->_displayConfiguration = v28;

    v30 = [v10 URLContexts];
    LOBYTE(v27) = [v30 count] == 0;

    if ((v27 & 1) == 0)
    {
      v31 = [v10 URLContexts];
      pendingOpenURLContexts = v12->_pendingOpenURLContexts;
      v12->_pendingOpenURLContexts = v31;
    }

    [v8 setDelegate:v12];
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

  v4 = [(CARTemplateUIApplicationSceneViewController *)self scenePresenter];
  [v4 invalidate];

  v5.receiver = self;
  v5.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v5 dealloc];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v4 traitCollectionDidChange:a3];
  [(CARTemplateUIApplicationSceneViewController *)self _updateUserInterfaceStyle];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = CARTemplateUIApplicationSceneViewController;
  [(CARTemplateUIApplicationSceneViewController *)&v5 viewDidLoad];
  v3 = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
  v4 = [v3 overlayViewController];
  [(CARTemplateUIApplicationSceneViewController *)self setOverlayViewController:v4];
}

- (void)setOverlayViewController:(id)a3
{
  v5 = a3;
  overlayViewController = self->_overlayViewController;
  v21 = v5;
  if (overlayViewController)
  {
    [(UIViewController *)overlayViewController willMoveToParentViewController:0];
    v7 = [(UIViewController *)self->_overlayViewController view];
    [v7 removeFromSuperview];

    [(UIViewController *)self->_overlayViewController removeFromParentViewController];
    v8 = self->_overlayViewController;
    self->_overlayViewController = 0;

    v5 = v21;
  }

  if (v5)
  {
    [(CARTemplateUIApplicationSceneViewController *)self addChildViewController:v21];
    v9 = [(CARTemplateUIApplicationSceneViewController *)self view];
    v10 = [v21 view];
    [v9 addSubview:v10];

    v11 = [(CARTemplateUIApplicationSceneViewController *)self view];
    [v11 bounds];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    v20 = [v21 view];
    [v20 setFrame:{v13, v15, v17, v19}];

    [v21 didMoveToParentViewController:self];
    objc_storeStrong(&self->_overlayViewController, a3);
  }

  _objc_release_x1();
}

- (void)setScene:(id)a3
{
  v5 = a3;
  v6 = sub_100001280(7uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setScene: %@", buf, 0xCu);
  }

  [(CARTemplateUIApplicationSceneViewController *)self _removeScenePresentationView];
  scene = self->_scene;
  self->_scene = 0;

  if (v5)
  {
    objc_storeStrong(&self->_scene, a3);
    v8 = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    [v8 setScene:v5];

    v9 = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    v10 = [v9 clientApplicationSceneIsConnected];

    if (v10)
    {
      [(CARTemplateUIApplicationSceneViewController *)self _installScenePresentationViewIfNeeded];
    }

    v11 = [(CARTemplateUIApplicationSceneViewController *)self pendingActivityContinuationAction];

    if (v11)
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
  v3 = [(CARTemplateUIApplicationSceneViewController *)self scene];
  if (v3)
  {
    v4 = [(CARTemplateUIApplicationSceneViewController *)self templateInstance];
    v5 = [v4 requiresApplicationScenePresenter];

    if ((v5 & 1) == 0)
    {
      v10 = sub_100001280(7uLL);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not installing presentation view for scene %@", &v16, 0xCu);
      }

      goto LABEL_9;
    }

    v6 = [(CARTemplateUIApplicationSceneViewController *)self sceneHostView];

    if (!v6)
    {
      v7 = sub_100001280(7uLL);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v16 = 138412290;
        v17 = v3;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Installing presentation view for scene %@", &v16, 0xCu);
      }

      v8 = [v3 uiPresentationManager];
      v9 = [(CARTemplateUIApplicationSceneViewController *)self requester];
      v10 = [v8 createPresenterWithIdentifier:v9 priority:1];

      [v10 modifyPresentationContext:&stru_10001C648];
      [v10 activate];
      [(CARTemplateUIApplicationSceneViewController *)self setScenePresenter:v10];
      v11 = [v10 presentationView];
      v12 = [(CARTemplateUIApplicationSceneViewController *)self view];
      [v12 insertSubview:v11 atIndex:0];

      y = CGPointZero.y;
      v14 = [v3 settings];
      [v14 frame];
      [v11 setFrame:{CGPointZero.x, y}];

      [(CARTemplateUIApplicationSceneViewController *)self setSceneHostView:v11];
      v15 = [(CARTemplateUIApplicationSceneViewController *)self view];
      [v15 setNeedsLayout];

LABEL_9:
    }
  }
}

- (void)_removeScenePresentationView
{
  v3 = [(CARTemplateUIApplicationSceneViewController *)self scenePresenter];
  [v3 invalidate];

  [(CARTemplateUIApplicationSceneViewController *)self setScenePresenter:0];
  v4 = [(CARTemplateUIApplicationSceneViewController *)self sceneHostView];
  [v4 removeFromSuperview];

  [(CARTemplateUIApplicationSceneViewController *)self setSceneHostView:0];
}

- (void)sceneDidDisconnect:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneDidDisconnect: %@", &v5, 0xCu);
  }

  [v3 setDelegate:0];
}

- (void)sceneDidBecomeActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneDidBecomeActive: %@", &v5, 0xCu);
  }
}

- (void)sceneWillResignActive:(id)a3
{
  v3 = a3;
  v4 = sub_100001280(7uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "sceneWillResignActive: %@", &v5, 0xCu);
  }
}

- (void)sceneWillEnterForeground:(id)a3
{
  v4 = a3;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneWillEnterForeground: %@", &v7, 0xCu);
  }

  v6 = [(CARTemplateUIApplicationSceneViewController *)self pendingOpenURLContexts];
  [(CARTemplateUIApplicationSceneViewController *)self setPendingOpenURLContexts:0];
  [(CARTemplateUIApplicationSceneViewController *)self sendSceneUpdate:1 openURLContexts:v6];
}

- (void)sceneDidEnterBackground:(id)a3
{
  v4 = a3;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "sceneDidEnterBackground: %@", &v6, 0xCu);
  }

  [(CARTemplateUIApplicationSceneViewController *)self sendSceneUpdate:0 openURLContexts:0];
}

- (void)forwardActivityContinuationAction:(id)a3 fromScene:(id)a4
{
  v6 = a3;
  v5 = [(CARTemplateUIApplicationSceneViewController *)self scene];

  if (v5)
  {
    [(CARTemplateUIApplicationSceneViewController *)self _handleActivityContinuationAction:v6];
  }

  else
  {
    [(CARTemplateUIApplicationSceneViewController *)self setPendingActivityContinuationAction:v6];
  }
}

- (void)_performActionsForUIScene:(id)a3 withUpdatedFBSScene:(id)a4 settingsDiff:(id)a5 fromSettings:(id)a6 transitionContext:(id)a7 lifecycleActionType:(unsigned int)a8
{
  v10 = a5;
  v11 = a4;
  v12 = [(CARTemplateUIApplicationSceneViewController *)self settingsDiffInspector];
  [v12 inspectDiff:v10 withContext:0];

  v13 = [(CARTemplateUIApplicationSceneViewController *)self appSettingsDiffInspector];
  [v13 inspectDiff:v10 withContext:v11];
}

- (void)mapTemplateWillShow:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000A9C4;
  v8[3] = &unk_10001C4E8;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (v5)
  {
    [UIView animateWithDuration:6 delay:v6 options:0 animations:UINavigationControllerHideShowBarDuration completion:0.0];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)mapTemplateWillHide:(id)a3
{
  v4 = [a3 object];
  v5 = [v4 BOOLValue];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000AAF0;
  v8[3] = &unk_10001C4E8;
  v8[4] = self;
  v6 = objc_retainBlock(v8);
  v7 = v6;
  if (v5)
  {
    [UIView animateWithDuration:6 delay:v6 options:0 animations:UINavigationControllerHideShowBarDuration completion:0.0];
  }

  else
  {
    (v6[2])(v6);
  }
}

- (void)_handleActivityContinuationAction:(id)a3
{
  v4 = a3;
  v5 = sub_100001280(7uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CARTemplateUIApplicationSceneViewController *)self scene];
    *buf = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Forwarding activity continuation action %{public}@ to scene: %{public}@", buf, 0x16u);
  }

  v7 = [(CARTemplateUIApplicationSceneViewController *)self scene];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000B59C;
  v9[3] = &unk_10001C698;
  v10 = v4;
  v8 = v4;
  [v7 updateUISettingsWithTransitionBlock:v9];
}

- (void)invalidate
{
  [(CARTemplateUIApplicationSceneViewController *)self setInvalidated:1];
  v3 = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
  [v3 _unregisterSettingsDiffActionArrayForKey:@"settingsObserver"];
}

- (id)_sceneSettings
{
  v3 = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
  v4 = [v3 _FBSScene];
  v5 = [v4 settings];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7 = [(CARTemplateUIApplicationSceneViewController *)self windowScene];
    v8 = [v7 _FBSScene];
    v9 = [v8 settings];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (int64_t)_mapStyle
{
  v2 = [(CARTemplateUIApplicationSceneViewController *)self _sceneSettings];
  v3 = [v2 mapStyle];

  return v3;
}

- (id)_frameRateLimit
{
  v2 = [(CARTemplateUIApplicationSceneViewController *)self _sceneSettings];
  v3 = [v2 frameRateLimit];

  return v3;
}

- (UIWindowScene)windowScene
{
  WeakRetained = objc_loadWeakRetained(&self->_windowScene);

  return WeakRetained;
}

@end