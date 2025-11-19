@interface TVRemoteAlertViewController
- (BOOL)isWakingToLockScreen;
- (unint64_t)supportedInterfaceOrientations;
- (void)_dismiss;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation TVRemoteAlertViewController

- (void)viewDidLoad
{
  v47.receiver = self;
  v47.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v47 viewDidLoad];
  v3 = [(TVRemoteAlertViewController *)self traitCollection];
  v4 = +[TVRemoteAlertVisualStyleProviding visualStyleForIdiom:](TVRemoteAlertVisualStyleProviding, "visualStyleForIdiom:", [v3 userInterfaceIdiom]);
  [(TVRemoteAlertViewController *)self setVisualStyle:v4];

  v5 = [(TVRemoteAlertViewController *)self visualStyle];
  v6 = [v5 backgroundMaterialView];
  [(TVRemoteAlertViewController *)self setBackgroundMaterialView:v6];

  v7 = [(TVRemoteAlertViewController *)self visualStyle];
  LODWORD(v6) = [v7 allowsTapToDismiss];

  if (v6)
  {
    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_dismiss"];
    v9 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [v9 addGestureRecognizer:v8];
  }

  v10 = objc_alloc_init(TVRUIHintsViewController);
  [(TVRemoteAlertViewController *)self setHintsViewController:v10];

  v11 = [(TVRemoteAlertViewController *)self view];
  [v11 bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TVRemoteAlertViewController *)self hintsViewController];
  v21 = [v20 view];
  [v21 setFrame:{v13, v15, v17, v19}];

  v22 = _TVRUIServiceLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(TVRemoteAlertViewController *)self remoteControlViewController];
    *buf = 138412290;
    v49 = v23;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Creating new RemoteViewController. Existing %@", buf, 0xCu);
  }

  v24 = objc_alloc_init(TVRUIRemoteViewController);
  [(TVRemoteAlertViewController *)self setRemoteControlViewController:v24];

  v25 = [(TVRemoteAlertViewController *)self hintsViewController];
  v26 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [v26 setDelegate:v25];

  v27 = [(TVRemoteAlertViewController *)self visualStyle];
  v28 = [(TVRemoteAlertViewController *)self view];
  [v27 frameForParentView:v28];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  v38 = [v37 view];
  [v38 setFrame:{v30, v32, v34, v36}];

  v39 = [(TVRemoteAlertViewController *)self visualStyle];
  [v39 maximizedCornerRadius];
  v41 = v40;
  v42 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [v42 setBackgroundCornerRadius:v41];

  v43 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  v44 = [v43 view];
  [v44 setClipsToBounds:1];

  v45 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:v45];

  v46 = [(TVRemoteAlertViewController *)self hintsViewController];
  [(TVRemoteAlertViewController *)self bs_addChildViewController:v46];
}

- (void)viewWillLayoutSubviews
{
  v28.receiver = self;
  v28.super_class = TVRemoteAlertViewController;
  [(TVRemoteAlertViewController *)&v28 viewWillLayoutSubviews];
  v3 = [(TVRemoteAlertViewController *)self visualStyle];
  v4 = [(TVRemoteAlertViewController *)self view];
  [v3 frameForParentView:v4];
  v6 = v5;
  v8 = v7;

  v9 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  v10 = [v9 view];
  [v10 setBounds:{0.0, 0.0, v6, v8}];

  v11 = [(TVRemoteAlertViewController *)self view];
  [v11 bounds];
  v12 = CGRectGetWidth(v29) * 0.5;
  v13 = [(TVRemoteAlertViewController *)self view];
  [v13 bounds];
  v14 = CGRectGetHeight(v30) * 0.5;
  v15 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  v16 = [v15 view];
  [v16 setCenter:{v12, v14}];

  v17 = [(TVRemoteAlertViewController *)self view];
  [v17 bounds];
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  v26 = [(TVRemoteAlertViewController *)self hintsViewController];
  v27 = [v26 view];
  [v27 setFrame:{v19, v21, v23, v25}];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVRemoteAlertViewController *)self traitCollection];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 30;
  }

  else
  {
    v3 = 2;
  }

  return v3;
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRUIServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v33 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -prepareForActivationWithContext: %{public}@", buf, 0xCu);
  }

  v9 = [v6 reason];
  [(TVRemoteAlertViewController *)self setActivationReason:v9];

  v10 = _TVRUIServiceLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [(TVRemoteAlertViewController *)self activationReason];
    *buf = 138543362;
    v33 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Remote Alert activation reason: %{public}@", buf, 0xCu);
  }

  [(TVRemoteAlertViewController *)self setDeviceIdentifierType:0];
  if ([(TVRemoteAlertViewController *)self isWakingToLockScreen])
  {
    v12 = +[TVRCPreferredDeviceManager sharedInstance];
    v13 = [v12 preferredDevice];
    v14 = [v13 identifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:v14];

    [(TVRemoteAlertViewController *)self setLaunchContext:2];
    v15 = _TVRUIServiceLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [(TVRemoteAlertViewController *)self deviceIdentifier];
      v17 = [(TVRemoteAlertViewController *)self deviceIdentifierType];
      *buf = 138412546;
      v33 = v16;
      v34 = 2048;
      v35 = v17;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Remote Alert is waking to lock screen, overriding with: device=%@, type=%ld", buf, 0x16u);
    }
  }

  v18 = [(TVRemoteAlertViewController *)self deviceIdentifier];

  if (v18)
  {
    v19 = [(TVRemoteAlertViewController *)self deviceIdentifier];
    v20 = _TVRUIServiceLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
LABEL_17:

      goto LABEL_18;
    }

    *buf = 138412290;
    v33 = v19;
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

    v19 = 0;
    goto LABEL_17;
  }

  v19 = [(TVRemoteAlertViewController *)self lastActiveEndpointIdentifier];
  v28 = _TVRUIServiceLog();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v33 = v19;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "No specific device identifier specified checking last active endpoint %@", buf, 0xCu);
  }

  if (!v19)
  {
    v29 = +[TVRCPreferredDeviceManager sharedInstance];
    v30 = [v29 preferredDevice];
    v19 = [v30 identifier];

    v20 = _TVRUIServiceLog();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_17;
    }

    *buf = 138412290;
    v33 = v19;
    v21 = "No last active endpoint specified checking last connected identifier %@";
    goto LABEL_12;
  }

LABEL_18:
  v22 = _TVRUIServiceLog();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(TVRemoteAlertViewController *)self deviceIdentifierType];
    v24 = [(TVRemoteAlertViewController *)self deviceType];
    v25 = [(TVRemoteAlertViewController *)self launchContext];
    *buf = 138413058;
    v33 = v19;
    v34 = 2048;
    v35 = v23;
    v36 = 2048;
    v37 = v24;
    v38 = 2048;
    v39 = v25;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Configuring RemoteControlViewController (deviceID=%@, deviceIdentifierType=%ld, deviceType=%ld, launchContext=%ld", buf, 0x2Au);
  }

  v26 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [v26 configureWithDeviceIdentifier:v19 identifierType:-[TVRemoteAlertViewController deviceIdentifierType](self deviceType:"deviceIdentifierType") launchContext:{-[TVRemoteAlertViewController deviceType](self, "deviceType"), -[TVRemoteAlertViewController launchContext](self, "launchContext")}];

  v27 = [v6 actions];
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = __74__TVRemoteAlertViewController_prepareForActivationWithContext_completion___block_invoke;
  v31[3] = &unk_100018B08;
  v31[4] = self;
  [v27 enumerateObjectsUsingBlock:v31];

  v7[2](v7);
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

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _TVRUIServiceLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v26 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Remote Alert -configureWithContext: %{public}@", buf, 0xCu);
  }

  v9 = [(TVRemoteAlertViewController *)self _remoteViewControllerProxyWithErrorHandler:&__block_literal_global];
  if (v9)
  {
    v10 = [TVRViewServiceConfigContext alloc];
    v11 = [v6 userInfo];
    v12 = [v10 _initWithUserInfo:v11];

    v13 = [v12 deviceIdentifier];
    [(TVRemoteAlertViewController *)self setDeviceIdentifier:v13];

    v14 = _TVRUIServiceLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(TVRemoteAlertViewController *)self deviceIdentifier];
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Remote Alert received device id %@", buf, 0xCu);
    }

    [(TVRemoteAlertViewController *)self setDeviceIdentifierType:[v12 deviceIdentifierType]];
    [(TVRemoteAlertViewController *)self setDeviceType:[v12 deviceType]];
    [(TVRemoteAlertViewController *)self setLaunchContext:[v12 launchContext]];
    v16 = [v12 lastActiveEndpointIdentifier];
    [(TVRemoteAlertViewController *)self setLastActiveEndpointIdentifier:v16];

    v17 = _TVRUIServiceLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [v12 lastActiveEndpointIdentifier];
      *buf = 138412290;
      v26 = v18;
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
      v26 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Remote alert proxy configured with context: %{public}@", buf, 0xCu);
    }

    v24.receiver = self;
    v24.super_class = TVRemoteAlertViewController;
    [(TVRemoteAlertViewController *)&v24 configureWithContext:v6 completion:v7];
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

- (void)handleButtonActions:(id)a3
{
  v4 = a3;
  v5 = _TVRUIServiceLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote Alert -handleButtonActions: %{public}@", buf, 0xCu);
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __51__TVRemoteAlertViewController_handleButtonActions___block_invoke;
  v6[3] = &unk_100018B70;
  v6[4] = self;
  [v4 enumerateObjectsUsingBlock:v6];
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
  v4 = [(TVRemoteAlertViewController *)self hintsViewController];
  [v4 remoteWillBeDismissed];

  v5 = [(TVRemoteAlertViewController *)self hintsViewController];
  [v5 dismissHints];

  v6 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  [v6 _disconnectUserInitiated];

  v7 = objc_alloc_init(_UIViewControllerOneToOneTransitionContext);
  v8 = [(TVRemoteAlertViewController *)self remoteControlViewController];
  v9 = [v8 view];
  [v7 _setFromView:v9];

  v10 = [(TVRemoteAlertViewController *)self view];
  [v7 _setToView:v10];

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = __39__TVRemoteAlertViewController__dismiss__block_invoke;
  v23[3] = &unk_100018AE0;
  v23[4] = self;
  [v7 _setCompletionHandler:v23];
  LODWORD(v9) = _AXSReduceMotionEnabled();
  v11 = _TVRUIServiceLog();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRemoteAlertFadeAnimationController", buf, 2u);
    }

    v13 = [TVRUIAlertFadeAnimationController alloc];
    v14 = [(TVRemoteAlertViewController *)self visualStyle];
    v15 = [v13 initWithAnimationType:1 visualStyle:v14];
  }

  else
  {
    if (v12)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Dismissing with TVRUIAlertAnimationController", buf, 2u);
    }

    v16 = [TVRUIAlertAnimationController alloc];
    v17 = [(TVRemoteAlertViewController *)self visualStyle];
    v15 = [v16 initWithAnimationType:1 visualStyle:v17];

    v14 = [(TVRemoteAlertViewController *)self backgroundMaterialView];
    [v15 setBackgroundMaterialView:v14];
  }

  [v15 animateTransition:v7];
  v18 = [(TVRemoteAlertViewController *)self dismissalAction];

  if (v18)
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
    v22 = [(TVRemoteAlertViewController *)self dismissalAction];
    [v22 sendResponse:v21];

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
  v2 = [(TVRemoteAlertViewController *)self activationReason];
  v3 = [v2 isEqualToString:SBSRemoteAlertActivationReasonWakeTo];

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