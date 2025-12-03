@interface TVRemoteAlertViewController
- (BOOL)isWakingToLockScreen;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRemoteAlertViewController

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v47 viewDidLoad];
  traitCollection = [(TVRemoteAlertViewController *)self traitCollection];
  v4 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [traitCollection userInterfaceIdiom]);
  [(TVRemoteAlertViewController *)self setVisualStyle:v4];

  visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
  backgroundMaterialView = [visualStyle backgroundMaterialView];
  [(TVRemoteAlertViewController *)self setBackgroundMaterialView:backgroundMaterialView];

  visualStyle2 = [(TVRemoteAlertViewController *)self visualStyle];
  LODWORD(backgroundMaterialView) = [visualStyle2 allowsTapToDismiss];

  if (backgroundMaterialView)
  {
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dismiss"];
    backgroundMaterialView2 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [backgroundMaterialView2 addGestureRecognizer:v8];
  }

  v10 = objc_alloc_init(TVRUIHintsViewController);
  [(TVRemoteAlertViewController *)self setHintsViewController:v10];

  view = [(TVRemoteAlertViewController *)self view];
  [view bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  view2 = [hintsViewController view];
  [view2 setFrame:{v13, v15, v17, v19}];

  v22 = _TVRUIServiceLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
    *buf = 138412290;
    v49 = remoteControlViewController;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Creating new RemoteViewController. Existing %@", buf, 0xCu);
  }

  v24 = objc_alloc_init(TVRUIRemoteViewController);
  [(TVRemoteAlertViewController *)self setRemoteControlViewController:v24];

  hintsViewController2 = [(TVRemoteAlertViewController *)self hintsViewController];
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController2 setDelegate:hintsViewController2];

  visualStyle3 = [(TVRemoteAlertViewController *)self visualStyle];
  view3 = [(TVRemoteAlertViewController *)self view];
  [visualStyle3 frameForParentView:view3];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  remoteControlViewController3 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view4 = [remoteControlViewController3 view];
  [view4 setFrame:{v30, v32, v34, v36}];

  visualStyle4 = [(TVRemoteAlertViewController *)self visualStyle];
  [visualStyle4 maximizedCornerRadius];
  v41 = v40;
  remoteControlViewController4 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController4 setBackgroundCornerRadius:v41];

  remoteControlViewController5 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view5 = [remoteControlViewController5 view];
  [view5 setClipsToBounds:1];

  remoteControlViewController6 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:remoteControlViewController6];

  hintsViewController3 = [(TVRemoteAlertViewController *)self hintsViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:hintsViewController3];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v28 viewWillLayoutSubviews];
  visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
  view = [(TVRemoteAlertViewController *)self view];
  [visualStyle frameForParentView:view];
  v6 = v5;
  v8 = v7;

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view2 = [remoteControlViewController view];
  [view2 setBounds:{0.0, 0.0, v6, v8}];

  view3 = [(TVRemoteAlertViewController *)self view];
  [view3 bounds];
  v12 = CGRectGetWidth(v29) * 0.5;
  view4 = [(TVRemoteAlertViewController *)self view];
  [view4 bounds];
  v14 = CGRectGetHeight(v30) * 0.5;
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view5 = [remoteControlViewController2 view];
  [view5 setCenter:{v12, v14}];

  view6 = [(TVRemoteAlertViewController *)self view];
  [view6 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  view7 = [hintsViewController view];
  [view7 setFrame:{v19, v21, v23, v25}];
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(TVRemoteAlertViewController *)self traitCollection];
  if ([traitCollection userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _TVRUIServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -prepareForActivationWithContext: %{public}@", buf, 0xCu);
  }

  reason = [contextCopy reason];
  [(TVRemoteAlertViewController *)self setActivationReason:reason];

  v10 = _TVRUIServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    activationReason = [(TVRemoteAlertViewController *)self activationReason];
    *buf = 138543362;
    v33 = activationReason;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Alert activation reason: %{public}@", buf, 0xCu);
  }

  [(TVRemoteAlertViewController *)self setDeviceIdentifierType:0];
  if ([(TVRemoteAlertViewController *)self isWakingToLockScreen])
  {
    v12 = +[TVRCPreferredDeviceManager sharedInstance];
    preferredDevice = [v12 preferredDevice];
    identifier = [preferredDevice identifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:identifier];

    [(TVRemoteAlertViewController *)self setLaunchContext:2];
    v15 = _TVRUIServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier = [(TVRemoteAlertViewController *)self deviceIdentifier];
      deviceIdentifierType = [(TVRemoteAlertViewController *)self deviceIdentifierType];
      *buf = 138412546;
      v33 = deviceIdentifier;
      v34 = 2048;
      v35 = deviceIdentifierType;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote Alert is waking to lock screen, overriding with: device=%@, type=%ld", buf, 0x16u);
    }
  }

  deviceIdentifier2 = [(TVRemoteAlertViewController *)self deviceIdentifier];

  if (deviceIdentifier2)
  {
    deviceIdentifier3 = [(TVRemoteAlertViewController *)self deviceIdentifier];
    v20 = _TVRUIServiceLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    *buf = 138412290;
    v33 = deviceIdentifier3;
    v21 = "Specific device identifier specified to connect %@";
LABEL_12:
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, v21, buf, 0xCu);
    goto LABEL_17;
  }

  if ([(TVRemoteAlertViewController *)self launchContext]== 11)
  {
    v20 = _TVRUIServiceLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      [TVRemoteAlertViewController prepareForActivationWithContext:v20 completion:?];
    }

    deviceIdentifier3 = 0;
    goto LABEL_17;
  }

  deviceIdentifier3 = [(TVRemoteAlertViewController *)self lastActiveEndpointIdentifier];
  v28 = _TVRUIServiceLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = deviceIdentifier3;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No specific device identifier specified checking last active endpoint %@", buf, 0xCu);
  }

  if (!deviceIdentifier3)
  {
    v29 = +[TVRCPreferredDeviceManager sharedInstance];
    preferredDevice2 = [v29 preferredDevice];
    deviceIdentifier3 = [preferredDevice2 identifier];

    v20 = _TVRUIServiceLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v33 = deviceIdentifier3;
    v21 = "No last active endpoint specified checking last connected identifier %@";
    goto LABEL_12;
  }

LABEL_18:
  v22 = _TVRUIServiceLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    deviceIdentifierType2 = [(TVRemoteAlertViewController *)self deviceIdentifierType];
    deviceType = [(TVRemoteAlertViewController *)self deviceType];
    launchContext = [(TVRemoteAlertViewController *)self launchContext];
    *buf = 138413058;
    v33 = deviceIdentifier3;
    v34 = 2048;
    v35 = deviceIdentifierType2;
    v36 = 2048;
    v37 = deviceType;
    v38 = 2048;
    v39 = launchContext;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Configuring RemoteControlViewController (deviceID=%@, deviceIdentifierType=%ld, deviceType=%ld, launchContext=%ld", buf, 0x2Au);
  }

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController configureWithDeviceIdentifier:deviceIdentifier3 identifierType:-[TVRemoteAlertViewController deviceIdentifierType](self deviceType:"deviceIdentifierType") launchContext:{-[TVRemoteAlertViewController deviceType](self, "deviceType"), -[TVRemoteAlertViewController launchContext](self, "launchContext")}];

  actions = [contextCopy actions];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __74__TVRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke;
  v31[3] = &unk_100018B08;
  v31[4] = self;
  [actions enumerateObjectsUsingBlock:v31];

  completionCopy[2](completionCopy);
}

void __74__TVRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 info];
  v5 = [v4 objectForSetting:1];

  if (v5)
  {
    v6 = _TVRUIServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Remote Alert received presentation animation action", buf, 2u);
    }

    [*(a1 + 32) setPresentationAction:v3];
  }

  v7 = [v3 info];
  v8 = [v7 objectForSetting:2];

  if (v8)
  {
    v9 = _TVRUIServiceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Remote Alert received dismissal animation action", v10, 2u);
    }

    [*(a1 + 32) setDismissalAction:v3];
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  contextCopy = context;
  completionCopy = completion;
  v8 = _TVRUIServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = contextCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -configureWithContext: %{public}@", buf, 0xCu);
  }

  v9 = [(TVRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&__block_literal_global];
  if (v9)
  {
    v10 = [TVRViewServiceConfigContext alloc];
    userInfo = [contextCopy userInfo];
    v12 = [v10 _initWithUserInfo:userInfo];

    deviceIdentifier = [v12 deviceIdentifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:deviceIdentifier];

    v14 = _TVRUIServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      deviceIdentifier2 = [(TVRemoteAlertViewController *)self deviceIdentifier];
      *buf = 138412290;
      v26 = deviceIdentifier2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remote Alert received device id %@", buf, 0xCu);
    }

    [(TVRemoteAlertViewController *)self setDeviceIdentifierType:[v12 deviceIdentifierType]];
    [(TVRemoteAlertViewController *)self setDeviceType:[v12 deviceType]];
    [(TVRemoteAlertViewController *)self setLaunchContext:[v12 launchContext]];
    lastActiveEndpointIdentifier = [v12 lastActiveEndpointIdentifier];
    [(TVRemoteAlertViewController *)self setLastActiveEndpointIdentifier:lastActiveEndpointIdentifier];

    v17 = _TVRUIServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      lastActiveEndpointIdentifier2 = [v12 lastActiveEndpointIdentifier];
      *buf = 138412290;
      v26 = lastActiveEndpointIdentifier2;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Remote Alert received last active identifier %@", buf, 0xCu);
    }

    if (-[NSObject dismissalType](v12, "dismissalType") || (-[TVRemoteAlertViewController visualStyle](self, "visualStyle"), v19 = objc_claimAutoreleasedReturnValue(), v20 = [v19 allowsSwipeToDismiss], v19, !v20))
    {
      [v9 setSwipeDismissalStyle:0];
      v21 = _TVRUIServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Remote alert proxy configured with swipe dismissal style SBUIRemoteAlertSwipeDismissalStyleNone";
        goto LABEL_14;
      }
    }

    else
    {
      [v9 setSwipeDismissalStyle:1];
      v21 = _TVRUIServiceLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v22 = "Remote alert proxy configured with swipe dismissal style SBUIRemoteAlertSwipeDismissalStyleDismissToCurrentApps";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 2u);
      }
    }

    [v9 setAllowsAlertStacking:1];
    [v9 setDismissalAnimationStyle:0];
    [v9 setAllowsMenuButtonDismissal:1];
    [v9 setDesiredHardwareButtonEvents:22];
    v23 = _TVRUIServiceLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v26 = contextCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Remote alert proxy configured with context: %{public}@", buf, 0xCu);
    }

    v24.receiver = self;
    v24.super_class = TVRemoteAlertViewController;
    [(TVRemoteAlertViewController *)&v24 configureWithContext:contextCopy completion:completionCopy];
    goto LABEL_20;
  }

  v12 = _TVRUIServiceLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [TVRemoteAlertViewController configureWithContext:v12 completion:?];
  }

LABEL_20:
}

void __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke(id a1, NSError *a2)
{
  v2 = a2;
  v3 = _TVRUIServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke_cold_1(v2, v3);
  }
}

- (void)handleButtonActions:(id)actions
{
  actionsCopy = actions;
  v5 = _TVRUIServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = actionsCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote Alert -handleButtonActions: %{public}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__TVRemoteAlertViewController_handleButtonActions___block_invoke;
  v6[3] = &unk_100018B70;
  v6[4] = self;
  [actionsCopy enumerateObjectsUsingBlock:v6];
}

void __51__TVRemoteAlertViewController_handleButtonActions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 events] & 0x10) != 0)
  {
    v6 = _TVRUIServiceLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventHomeButton button action, dismissing", buf, 2u);
    }

    v7 = [*(a1 + 32) hintsViewController];
    v8 = [v7 hasPresentedContent];

    v9 = *(a1 + 32);
    if (!v8)
    {
      v11 = [v9 remoteControlViewController];
      [v11 _disconnectUserInitiated];

      [*(a1 + 32) _dismiss];
      goto LABEL_16;
    }

    v5 = [v9 hintsViewController];
    [v5 dismissPresentedContentAnimated:1 completion:0];
    goto LABEL_14;
  }

  if (([v3 events] & 2) != 0)
  {
    v10 = _TVRUIServiceLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventVolumeUpButton button action", v13, 2u);
    }

    v5 = [*(a1 + 32) remoteControlViewController];
    [v5 volumeUpEventGenerated];
    goto LABEL_14;
  }

  if (([v3 events] & 4) != 0)
  {
    v4 = _TVRUIServiceLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SBUIRemoteAlertServiceButtonEventVolumeDownButton button action", v12, 2u);
    }

    v5 = [*(a1 + 32) remoteControlViewController];
    [v5 volumeDownEventGenerated];
LABEL_14:
  }

LABEL_16:
}

- (void)_dismiss
{
  v3 = _TVRUIServiceLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dismissing alert", buf, 2u);
  }

  [(TVRemoteAlertViewController *)self _dismissPresentedContentAnimated:0];
  hintsViewController = [(TVRemoteAlertViewController *)self hintsViewController];
  [hintsViewController remoteWillBeDismissed];

  hintsViewController2 = [(TVRemoteAlertViewController *)self hintsViewController];
  [hintsViewController2 dismissHints];

  remoteControlViewController = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [remoteControlViewController _disconnectUserInitiated];

  v7 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  remoteControlViewController2 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  view = [remoteControlViewController2 view];
  [v7 _setFromView:view];

  view2 = [(TVRemoteAlertViewController *)self view];
  [v7 _setToView:view2];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __39__TVRemoteAlertViewController__dismiss__block_invoke;
  v23[3] = &unk_100018AE0;
  v23[4] = self;
  [v7 _setCompletionHandler:v23];
  LODWORD(view) = _AXSReduceMotionEnabled();
  v11 = _TVRUIServiceLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (view)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRemoteAlertFadeAnimationController", buf, 2u);
    }

    v13 = [TVRUIAlertFadeAnimationController alloc];
    visualStyle = [(TVRemoteAlertViewController *)self visualStyle];
    v15 = [v13 initWithAnimationType:1 visualStyle:visualStyle];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRUIAlertAnimationController", buf, 2u);
    }

    v16 = [TVRUIAlertAnimationController alloc];
    visualStyle2 = [(TVRemoteAlertViewController *)self visualStyle];
    v15 = [v16 initWithAnimationType:1 visualStyle:visualStyle2];

    visualStyle = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [v15 setBackgroundMaterialView:visualStyle];
  }

  [v15 animateTransition:v7];
  dismissalAction = [(TVRemoteAlertViewController *)self dismissalAction];

  if (dismissalAction)
  {
    v19 = _TVRUIServiceLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Remote Alert dismissal action provided, sending back animation response", buf, 2u);
    }

    v20 = objc_alloc_init(BSMutableSettings);
    [v20 setObject:&off_100019180 forSetting:2];
    v21 = [[BSActionResponse alloc] initWithInfo:v20 error:0];
    dismissalAction2 = [(TVRemoteAlertViewController *)self dismissalAction];
    [dismissalAction2 sendResponse:v21];

    [(TVRemoteAlertViewController *)self setDismissalAction:0];
  }
}

id __39__TVRemoteAlertViewController__dismiss__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) backgroundMaterialView];
  [v2 removeFromSuperview];

  v3 = *(a1 + 32);

  return [v3 alertDidFinishDismissal:1];
}

- (BOOL)isWakingToLockScreen
{
  activationReason = [(TVRemoteAlertViewController *)self activationReason];
  v3 = [activationReason isEqualToString:SBSRemoteAlertActivationReasonWakeTo];

  return v3;
}

void __63__TVRemoteAlertViewController_configureWithContext_completion___block_invoke_cold_1(void *a1, NSObject *a2)
{
  v3 = [a1 localizedDescription];
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Remote alert failed to obtain proxy %{public}@", &v4, 0xCu);
}

@end