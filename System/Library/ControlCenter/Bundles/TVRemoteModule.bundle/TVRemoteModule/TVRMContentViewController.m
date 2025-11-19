@interface TVRMContentViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)shouldFinishTransitionToExpandedContentModule;
- (BOOL)shouldLaunchAsViewService;
- (CGAffineTransform)_defaultScaledTransformForSize:(SEL)a3;
- (CGSize)transitionSize;
- (UIViewPropertyAnimator)customAnimator;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)title;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createRemoteControlViewControllerIfNeeded;
- (void)_dismissChildViewControllersPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)_prewarm;
- (void)_remoteLaunchedAsViewService:(id)a3;
- (void)_requestLaunchAsViewService;
- (void)_startRemoteControlViewController;
- (void)_stopRemoteControlViewController;
- (void)buttonTapped:(id)a3 forEvent:(id)a4;
- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4;
- (void)displayWillTurnOff;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
- (void)willTransitionToExpandedContentMode:(BOOL)a3;
@end

@implementation TVRMContentViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = TVRMContentViewController;
  [(TVRMContentViewController *)&v4 viewWillAppear:a3];
  [(TVRMContentViewController *)self _prewarm];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = TVRMContentViewController;
  [(CCUIButtonModuleViewController *)&v23 viewWillLayoutSubviews];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v3 = [(CCUIButtonModuleViewController *)self buttonView];
    [v3 setAlpha:0.0];

    v4 = [(TVRMContentViewController *)self remoteControlViewController];
    v5 = [v4 view];
    [v5 setAlpha:1.0];

    +[TVRMDeviceInfo expandedRoundedCornerRadius];
  }

  else
  {
    v7 = [(TVRMContentViewController *)self remoteControlViewController];
    v8 = [v7 view];
    [v8 setAlpha:0.0];

    v9 = [(CCUIButtonModuleViewController *)self buttonView];
    [v9 setAlpha:1.0];

    [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];
  }

  v10 = v6;
  v11 = [(TVRMContentViewController *)self remoteControlViewController];
  [v11 setBackgroundCornerRadius:v10];

  v12 = [(TVRMContentViewController *)self view];
  [v12 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = [(TVRMContentViewController *)self remoteControlViewController];
  v22 = [v21 view];
  [v22 setFrame:{v14, v16, v18, v20}];
}

- (id)title
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_NAME" value:&stru_2A23F2348 table:@"Localizable"];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [(TVRMContentViewController *)self traitCollection];
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

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  v24 = *MEMORY[0x29EDCA608];
  v7 = a4;
  v20.receiver = self;
  v20.super_class = TVRMContentViewController;
  [(TVRMContentViewController *)&v20 viewWillTransitionToSize:v7 withTransitionCoordinator:width, height];
  [(TVRMContentViewController *)self setTransitionSize:width, height];
  v8 = [(CCUIButtonModuleViewController *)self isExpanded];
  v9 = [(CCUIButtonModuleViewController *)self buttonView];
  [v9 setEnabled:!v8];

  if (_AXSReduceMotionEnabled())
  {
    v22 = 0u;
    v23 = 0u;
    buf = 0u;
    if ([(CCUIButtonModuleViewController *)self isExpanded])
    {
      v10 = *(MEMORY[0x29EDB90A0] + 16);
      buf = *MEMORY[0x29EDB90A0];
      v22 = v10;
      v23 = *(MEMORY[0x29EDB90A0] + 32);
    }

    else
    {
      [(TVRMContentViewController *)self transitionSize];
      [(TVRMContentViewController *)self _defaultScaledTransformForSize:?];
    }

    v17 = buf;
    v18 = v22;
    v19 = v23;
    v11 = [(TVRMContentViewController *)self remoteControlViewController];
    v12 = [v11 view];
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [v12 setTransform:v16];
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __80__TVRMContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_29F33F040;
  v15[4] = self;
  [v7 animateAlongsideTransition:v15 completion:0];
  v13 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v25.width = width;
    v25.height = height;
    v14 = NSStringFromCGSize(v25);
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v14;
    _os_log_impl(&dword_29C9F3000, v13, OS_LOG_TYPE_DEFAULT, "View will transition to size %@ requested", &buf, 0xCu);
  }
}

void __80__TVRMContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) view];
  [v1 layoutIfNeeded];
}

- (UIViewPropertyAnimator)customAnimator
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v12 = [(CCUIButtonModuleViewController *)self isExpanded];
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "Custom animator requested. expanded = %{BOOL}d", buf, 8u);
  }

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v4 = [MEMORY[0x29EDC6F30] standardSpringAnimator];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __43__TVRMContentViewController_customAnimator__block_invoke;
    v10[3] = &unk_29F33F068;
    v10[4] = self;
    [v4 addAnimations:v10];
    v5 = _TVRMControlCenterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9F3000, v5, OS_LOG_TYPE_DEFAULT, "Show animator created", buf, 2u);
    }
  }

  else
  {
    v6 = [objc_alloc(MEMORY[0x29EDC7C88]) initWithMass:3.0 stiffness:300.0 damping:55.0 initialVelocity:{10.0, 10.0}];
    v4 = [objc_alloc(MEMORY[0x29EDC7DB0]) initWithDuration:v6 timingParameters:0.0];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __43__TVRMContentViewController_customAnimator__block_invoke_17;
    v9[3] = &unk_29F33F068;
    v9[4] = self;
    [v4 addAnimations:v9];
    v7 = _TVRMControlCenterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Dismiss animator created", buf, 2u);
    }
  }

  return v4;
}

void __43__TVRMContentViewController_customAnimator__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  v3 = [v2 view];
  [v3 setAlpha:1.0];

  v4 = [*(a1 + 32) buttonView];
  [v4 setAlpha:0.0];

  +[TVRMDeviceInfo expandedRoundedCornerRadius];
  v6 = v5;
  v7 = [*(a1 + 32) remoteControlViewController];
  [v7 setBackgroundCornerRadius:v6];

  v8 = [*(a1 + 32) remoteControlViewController];
  v9 = [v8 view];
  v10 = *(MEMORY[0x29EDB90A0] + 16);
  v11[0] = *MEMORY[0x29EDB90A0];
  v11[1] = v10;
  v11[2] = *(MEMORY[0x29EDB90A0] + 32);
  [v9 setTransform:v11];
}

void __43__TVRMContentViewController_customAnimator__block_invoke_17(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  v3 = [v2 view];
  [v3 setAlpha:0.0];

  v4 = [*(a1 + 32) buttonView];
  [v4 setAlpha:1.0];

  [*(a1 + 32) compactContinuousCornerRadius];
  v6 = v5;
  v7 = [*(a1 + 32) remoteControlViewController];
  [v7 setBackgroundCornerRadius:v6];

  v8 = *(a1 + 32);
  [v8 transitionSize];
  if (v8)
  {
    [v8 _defaultScaledTransformForSize:?];
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  v9 = [*(a1 + 32) remoteControlViewController];
  v10 = [v9 view];
  v11[0] = v12;
  v11[1] = v13;
  v11[2] = v14;
  [v10 setTransform:v11];
}

- (void)_createRemoteControlViewControllerIfNeeded
{
  v3 = [(TVRMContentViewController *)self remoteControlViewController];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDC6F38]);
    [(TVRMContentViewController *)self setHintsViewController:v4];

    v5 = [(TVRMContentViewController *)self view];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = [(TVRMContentViewController *)self hintsViewController];
    v15 = [v14 view];
    [v15 setFrame:{v7, v9, v11, v13}];

    v16 = [MEMORY[0x29EDC7A58] currentDevice];
    v17 = [v16 userInterfaceIdiom] != 1;

    v18 = [(TVRMContentViewController *)self hintsViewController];
    [v18 setAllowSiriHint:v17];

    v19 = [(TVRMContentViewController *)self hintsViewController];
    [v19 setAllowVolumeHint:v17];

    v20 = [(TVRMContentViewController *)self hintsViewController];
    [v20 setAllowTips:v17];

    v21 = objc_alloc_init(MEMORY[0x29EDC6F40]);
    remoteControlViewController = self->_remoteControlViewController;
    self->_remoteControlViewController = v21;

    v23 = [(TVRMContentViewController *)self hintsViewController];
    [(TVRUIRemoteViewController *)self->_remoteControlViewController setDelegate:v23];

    v24 = [(TVRUIRemoteViewController *)self->_remoteControlViewController view];
    [v24 setAlpha:0.0];

    [(TVRMContentViewController *)self bs_addChildViewController:self->_remoteControlViewController];
    v25 = [(TVRMContentViewController *)self hintsViewController];
    [(TVRMContentViewController *)self bs_addChildViewController:v25];

    v26 = [(TVRMContentViewController *)self view];
    v27 = [(TVRMContentViewController *)self hintsViewController];
    v28 = [v27 view];
    [v26 bringSubviewToFront:v28];

    if (![(CCUIButtonModuleViewController *)self isExpanded])
    {
      v29 = [(TVRMContentViewController *)self view];
      [v29 bounds];
      [(TVRMContentViewController *)self _defaultScaledTransformForSize:v30, v31];
      v32 = [(TVRMContentViewController *)self remoteControlViewController];
      v33 = [v32 view];
      v35[0] = v35[3];
      v35[1] = v35[4];
      v35[2] = v35[5];
      [v33 setTransform:v35];

      v34 = [(TVRMContentViewController *)self view];
      [v34 layoutIfNeeded];
    }
  }
}

- (void)_startRemoteControlViewController
{
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "Module requesting connections to start", v7, 2u);
  }

  v4 = [(TVRMContentViewController *)self remoteControlViewController];
  v5 = [(TVRMContentViewController *)self lastActiveEndpointIdentifier];
  [v4 configureWithDeviceIdentifier:v5 identifierType:*MEMORY[0x29EDC6F58] deviceType:0 launchContext:1];

  v6 = [(TVRMContentViewController *)self remoteControlViewController];
  [v6 startConnections];

  [(TVRMContentViewController *)self setSystemInitiatedDismissal:0];
}

- (void)_stopRemoteControlViewController
{
  v10 = *MEMORY[0x29EDCA608];
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = [(TVRMContentViewController *)self systemInitiatedDismissal];
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "Module requesting connections to stop. systemInitiated %{BOOL}d", v9, 8u);
  }

  v4 = [(TVRMContentViewController *)self hintsViewController];
  [v4 dismissHints];

  [(TVRMContentViewController *)self _dismissChildViewControllersPresentedContentAnimated:0 completion:0];
  v5 = [(TVRMContentViewController *)self systemInitiatedDismissal];
  v6 = [(TVRMContentViewController *)self remoteControlViewController];
  v7 = v6;
  if (v5)
  {
    [v6 _disconnectSystemInitiated];
  }

  else
  {
    [v6 _disconnectUserInitiated];
  }

  v8 = [(TVRMContentViewController *)self remoteControlViewController];
  [v8 stopConnections];
}

- (void)buttonTapped:(id)a3 forEvent:(id)a4
{
  if ([(TVRMContentViewController *)self shouldLaunchAsViewService:a3])
  {
    v5 = _TVRMControlCenterLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9F3000, v5, OS_LOG_TYPE_DEFAULT, "Module button tapped so launching module as a view service", buf, 2u);
    }

    [(TVRMContentViewController *)self _requestLaunchAsViewService];
  }

  else
  {
    v6 = [MEMORY[0x29EDC7A58] currentDevice];
    v7 = [v6 userInterfaceIdiom];

    v8 = _TVRMControlCenterLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7 == 1)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&dword_29C9F3000, v8, OS_LOG_TYPE_DEFAULT, "Module button tapped so requesting module expansion", v11, 2u);
      }

      v10 = [(TVRMContentViewController *)self contentModuleContext];
      [v10 requestExpandModule];
    }

    else
    {
      if (v9)
      {
        *v12 = 0;
        _os_log_impl(&dword_29C9F3000, v8, OS_LOG_TYPE_DEFAULT, "Module button tapped so requesting app launch", v12, 2u);
      }

      v10 = [(TVRMContentViewController *)self contentModuleContext];
      [v10 openApplication:@"com.apple.TVRemoteUIService" completionHandler:0];
    }
  }
}

- (double)preferredExpandedContentHeight
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  CCUIScreenBounds();
  Height = CGRectGetHeight(v8);
  if (v3 == 1)
  {
    +[TVRMDeviceInfo contentEdgeInsets];
    v6 = Height + v5 * -2.0;
    if (v6 <= 812.0)
    {
      return v6;
    }

    else
    {
      return 812.0;
    }
  }

  return Height;
}

- (double)preferredExpandedContentWidth
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 375.0;
  }

  CCUIScreenBounds();

  return CGRectGetWidth(*&v5);
}

- (BOOL)shouldFinishTransitionToExpandedContentModule
{
  v13 = *MEMORY[0x29EDCA608];
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[TVRMContentViewController shouldFinishTransitionToExpandedContentModule]";
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  if ([(TVRMContentViewController *)self shouldLaunchAsViewService])
  {
    v4 = _TVRMControlCenterLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v11) = 0;
      v5 = "Will launch module as a view service";
LABEL_12:
      _os_log_impl(&dword_29C9F3000, v4, OS_LOG_TYPE_DEFAULT, v5, &v11, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v6 = [MEMORY[0x29EDC7A58] currentDevice];
  v7 = [v6 userInterfaceIdiom];

  v4 = _TVRMControlCenterLog();
  v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v7 != 1)
  {
    if (v8)
    {
      LOWORD(v11) = 0;
      v5 = "Will launch app";
      goto LABEL_12;
    }

LABEL_13:
    v9 = 0;
    goto LABEL_14;
  }

  if (v8)
  {
    LOWORD(v11) = 0;
    _os_log_impl(&dword_29C9F3000, v4, OS_LOG_TYPE_DEFAULT, "Launching module within cc and not a view service", &v11, 2u);
  }

  v9 = 1;
LABEL_14:

  return v9;
}

- (void)willTransitionToExpandedContentMode:(BOOL)a3
{
  v3 = a3;
  v12 = *MEMORY[0x29EDCA608];
  v5 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[TVRMContentViewController willTransitionToExpandedContentMode:]";
    v10 = 1024;
    v11 = v3;
    _os_log_impl(&dword_29C9F3000, v5, OS_LOG_TYPE_DEFAULT, "%s, expanded=%{BOOL}d", buf, 0x12u);
  }

  if (v3)
  {
    [(TVRMContentViewController *)self _createRemoteControlViewControllerIfNeeded];
    [(TVRMContentViewController *)self _startRemoteControlViewController];
  }

  else
  {
    [(TVRMContentViewController *)self _stopRemoteControlViewController];
    v6 = [(TVRMContentViewController *)self hintsViewController];
    [v6 remoteWillBeDismissed];
  }

  v7.receiver = self;
  v7.super_class = TVRMContentViewController;
  [(CCUIButtonModuleViewController *)&v7 willTransitionToExpandedContentMode:v3];
}

- (void)displayWillTurnOff
{
  v5 = *MEMORY[0x29EDCA608];
  [(TVRMContentViewController *)self setSystemInitiatedDismissal:1];
  [(TVRMContentViewController *)self _dismissChildViewControllersPresentedContentAnimated:0 completion:0];
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = [(CCUIButtonModuleViewController *)self isExpanded];
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "display will turn off. expanded state %{BOOL}d", v4, 8u);
  }
}

- (void)_dismissChildViewControllersPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v15 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[TVRMContentViewController _dismissChildViewControllersPresentedContentAnimated:completion:]";
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v8 = [(TVRMContentViewController *)self hintsViewController];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __93__TVRMContentViewController__dismissChildViewControllersPresentedContentAnimated_completion___block_invoke;
  v10[3] = &unk_29F33F090;
  v12 = v4;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  [v8 dismissPresentedContentAnimated:v4 completion:v10];
}

void __93__TVRMContentViewController__dismissChildViewControllersPresentedContentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  [v2 dismissPresentedContentAnimated:*(a1 + 48) completion:*(a1 + 40)];
}

- (BOOL)canDismissPresentedContent
{
  v12 = *MEMORY[0x29EDCA608];
  v3 = [(TVRMContentViewController *)self remoteControlViewController];
  v4 = [v3 hasPresentedContent];

  v5 = [(TVRMContentViewController *)self hintsViewController];
  v6 = [v5 hasPresentedContent];

  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = v4;
    v10 = 1024;
    v11 = v6;
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Can dismiss presented content, remoteHasPresentedContent=%{BOOL}d, hintsHasPresentedContent=%{BOOL}d", v9, 0xEu);
  }

  return (v4 | v6) & 1;
}

- (void)dismissPresentedContentAnimated:(BOOL)a3 completion:(id)a4
{
  v4 = a3;
  v16 = *MEMORY[0x29EDCA608];
  v6 = a4;
  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x29ED51270](v6);
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Dismiss presented content completion %@", buf, 0xCu);
  }

  v9 = [(TVRMContentViewController *)self hintsViewController];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __72__TVRMContentViewController_dismissPresentedContentAnimated_completion___block_invoke;
  v11[3] = &unk_29F33F090;
  v13 = v4;
  v11[4] = self;
  v12 = v6;
  v10 = v6;
  [v9 dismissPresentedContentAnimated:v4 completion:v11];
}

void __72__TVRMContentViewController_dismissPresentedContentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  [v2 dismissPresentedContentAnimated:*(a1 + 48) completion:*(a1 + 40)];
}

- (BOOL)shouldLaunchAsViewService
{
  v3 = [MEMORY[0x29EDC7A58] currentDevice];
  if ([v3 userInterfaceIdiom])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v5 = [(CCUIButtonModuleViewController *)self buttonView];
    v4 = CCUILayoutShouldBePortrait() ^ 1;
  }

  return v4;
}

- (void)_requestLaunchAsViewService
{
  v3 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "Requesting launch of TVRemoteUI as view service", v7, 2u);
  }

  v4 = [objc_alloc(MEMORY[0x29EDC6F48]) _initWithLaunchContext:1];
  [v4 setDismissalType:1];
  v5 = [MEMORY[0x29EDB9F98] defaultCenter];
  [v5 addObserver:self selector:sel__remoteLaunchedAsViewService_ name:*MEMORY[0x29EDC6F60] object:0];

  v6 = [MEMORY[0x29EDC6F50] sharedInstance];
  [v6 presentWithContext:v4];
}

- (void)_remoteLaunchedAsViewService:(id)a3
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __58__TVRMContentViewController__remoteLaunchedAsViewService___block_invoke;
  block[3] = &unk_29F33F068;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
  v4 = [MEMORY[0x29EDB9F98] defaultCenter];
  [v4 removeObserver:self name:*MEMORY[0x29EDC6F60] object:0];
}

void __58__TVRMContentViewController__remoteLaunchedAsViewService___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentModuleContext];
  [v1 dismissControlCenter];
}

- (CGAffineTransform)_defaultScaledTransformForSize:(SEL)a3
{
  height = a4.height;
  width = a4.width;
  [(TVRMContentViewController *)self preferredExpandedContentWidth];
  v8 = 1.0;
  v9 = 1.0;
  if (v10 > 0.0)
  {
    [(TVRMContentViewController *)self preferredExpandedContentWidth];
    v9 = width / v11;
  }

  [(TVRMContentViewController *)self preferredExpandedContentHeight];
  if (v12 > 0.0)
  {
    [(TVRMContentViewController *)self preferredExpandedContentHeight];
    v8 = height / v13;
  }

  return CGAffineTransformMakeScale(retstr, v9, v8);
}

- (void)_prewarm
{
  v6 = *MEMORY[0x29EDCA608];
  v2 = [(TVRMContentViewController *)self shouldLaunchAsViewService];
  v3 = [MEMORY[0x29EDC6F50] sharedInstance];
  [v3 _prewarmWithLaunchViewService:v2 fetchActiveEndpoint:1];

  v4 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = v2;
    _os_log_impl(&dword_29C9F3000, v4, OS_LOG_TYPE_DEFAULT, "Module prewarm called launchAsViewService %{BOOL}d", v5, 8u);
  }
}

- (CGSize)transitionSize
{
  width = self->_transitionSize.width;
  height = self->_transitionSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end