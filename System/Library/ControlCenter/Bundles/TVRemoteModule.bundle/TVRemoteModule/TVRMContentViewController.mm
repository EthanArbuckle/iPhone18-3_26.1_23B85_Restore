@interface TVRMContentViewController
- (BOOL)canDismissPresentedContent;
- (BOOL)shouldFinishTransitionToExpandedContentModule;
- (BOOL)shouldLaunchAsViewService;
- (CGAffineTransform)_defaultScaledTransformForSize:(SEL)size;
- (CGSize)transitionSize;
- (UIViewPropertyAnimator)customAnimator;
- (double)preferredExpandedContentHeight;
- (double)preferredExpandedContentWidth;
- (id)title;
- (unint64_t)supportedInterfaceOrientations;
- (void)_createRemoteControlViewControllerIfNeeded;
- (void)_dismissChildViewControllersPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)_prewarm;
- (void)_remoteLaunchedAsViewService:(id)service;
- (void)_requestLaunchAsViewService;
- (void)_startRemoteControlViewController;
- (void)_stopRemoteControlViewController;
- (void)buttonTapped:(id)tapped forEvent:(id)event;
- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion;
- (void)displayWillTurnOff;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
- (void)willTransitionToExpandedContentMode:(BOOL)mode;
@end

@implementation TVRMContentViewController

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = TVRMContentViewController;
  [(TVRMContentViewController *)&v4 viewWillAppear:appear];
  [(TVRMContentViewController *)self _prewarm];
}

- (void)viewWillLayoutSubviews
{
  v23.receiver = self;
  v23.super_class = TVRMContentViewController;
  [(CCUIButtonModuleViewController *)&v23 viewWillLayoutSubviews];
  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView setAlpha:0.0];

    remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];
    view = [remoteControlViewController view];
    [view setAlpha:1.0];

    +[TVRMDeviceInfo expandedRoundedCornerRadius];
  }

  else
  {
    remoteControlViewController2 = [(TVRMContentViewController *)self remoteControlViewController];
    view2 = [remoteControlViewController2 view];
    [view2 setAlpha:0.0];

    buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView2 setAlpha:1.0];

    [(CCUIButtonModuleViewController *)self compactContinuousCornerRadius];
  }

  v10 = v6;
  remoteControlViewController3 = [(TVRMContentViewController *)self remoteControlViewController];
  [remoteControlViewController3 setBackgroundCornerRadius:v10];

  view3 = [(TVRMContentViewController *)self view];
  [view3 bounds];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  remoteControlViewController4 = [(TVRMContentViewController *)self remoteControlViewController];
  view4 = [remoteControlViewController4 view];
  [view4 setFrame:{v14, v16, v18, v20}];
}

- (id)title
{
  v2 = [MEMORY[0x29EDB9F48] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"APP_NAME" value:&stru_2A23F2348 table:@"Localizable"];

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  traitCollection = [(TVRMContentViewController *)self traitCollection];
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

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  v24 = *MEMORY[0x29EDCA608];
  coordinatorCopy = coordinator;
  v20.receiver = self;
  v20.super_class = TVRMContentViewController;
  [(TVRMContentViewController *)&v20 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
  [(TVRMContentViewController *)self setTransitionSize:width, height];
  isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView setEnabled:!isExpanded];

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
    remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];
    view = [remoteControlViewController view];
    v16[0] = v17;
    v16[1] = v18;
    v16[2] = v19;
    [view setTransform:v16];
  }

  v15[0] = MEMORY[0x29EDCA5F8];
  v15[1] = 3221225472;
  v15[2] = __80__TVRMContentViewController_viewWillTransitionToSize_withTransitionCoordinator___block_invoke;
  v15[3] = &unk_29F33F040;
  v15[4] = self;
  [coordinatorCopy animateAlongsideTransition:v15 completion:0];
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
    isExpanded = [(CCUIButtonModuleViewController *)self isExpanded];
    _os_log_impl(&dword_29C9F3000, v3, OS_LOG_TYPE_DEFAULT, "Custom animator requested. expanded = %{BOOL}d", buf, 8u);
  }

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    standardSpringAnimator = [MEMORY[0x29EDC6F30] standardSpringAnimator];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __43__TVRMContentViewController_customAnimator__block_invoke;
    v10[3] = &unk_29F33F068;
    v10[4] = self;
    [standardSpringAnimator addAnimations:v10];
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
    standardSpringAnimator = [objc_alloc(MEMORY[0x29EDC7DB0]) initWithDuration:v6 timingParameters:0.0];
    v9[0] = MEMORY[0x29EDCA5F8];
    v9[1] = 3221225472;
    v9[2] = __43__TVRMContentViewController_customAnimator__block_invoke_17;
    v9[3] = &unk_29F33F068;
    v9[4] = self;
    [standardSpringAnimator addAnimations:v9];
    v7 = _TVRMControlCenterLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Dismiss animator created", buf, 2u);
    }
  }

  return standardSpringAnimator;
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
  remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];

  if (!remoteControlViewController)
  {
    v4 = objc_alloc_init(MEMORY[0x29EDC6F38]);
    [(TVRMContentViewController *)self setHintsViewController:v4];

    view = [(TVRMContentViewController *)self view];
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    hintsViewController = [(TVRMContentViewController *)self hintsViewController];
    view2 = [hintsViewController view];
    [view2 setFrame:{v7, v9, v11, v13}];

    currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
    v17 = [currentDevice userInterfaceIdiom] != 1;

    hintsViewController2 = [(TVRMContentViewController *)self hintsViewController];
    [hintsViewController2 setAllowSiriHint:v17];

    hintsViewController3 = [(TVRMContentViewController *)self hintsViewController];
    [hintsViewController3 setAllowVolumeHint:v17];

    hintsViewController4 = [(TVRMContentViewController *)self hintsViewController];
    [hintsViewController4 setAllowTips:v17];

    v21 = objc_alloc_init(MEMORY[0x29EDC6F40]);
    remoteControlViewController = self->_remoteControlViewController;
    self->_remoteControlViewController = v21;

    hintsViewController5 = [(TVRMContentViewController *)self hintsViewController];
    [(TVRUIRemoteViewController *)self->_remoteControlViewController setDelegate:hintsViewController5];

    view3 = [(TVRUIRemoteViewController *)self->_remoteControlViewController view];
    [view3 setAlpha:0.0];

    [(TVRMContentViewController *)self bs_addChildViewController:self->_remoteControlViewController];
    hintsViewController6 = [(TVRMContentViewController *)self hintsViewController];
    [(TVRMContentViewController *)self bs_addChildViewController:hintsViewController6];

    view4 = [(TVRMContentViewController *)self view];
    hintsViewController7 = [(TVRMContentViewController *)self hintsViewController];
    view5 = [hintsViewController7 view];
    [view4 bringSubviewToFront:view5];

    if (![(CCUIButtonModuleViewController *)self isExpanded])
    {
      view6 = [(TVRMContentViewController *)self view];
      [view6 bounds];
      [(TVRMContentViewController *)self _defaultScaledTransformForSize:v30, v31];
      remoteControlViewController2 = [(TVRMContentViewController *)self remoteControlViewController];
      view7 = [remoteControlViewController2 view];
      v35[0] = v35[3];
      v35[1] = v35[4];
      v35[2] = v35[5];
      [view7 setTransform:v35];

      view8 = [(TVRMContentViewController *)self view];
      [view8 layoutIfNeeded];
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

  remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];
  lastActiveEndpointIdentifier = [(TVRMContentViewController *)self lastActiveEndpointIdentifier];
  [remoteControlViewController configureWithDeviceIdentifier:lastActiveEndpointIdentifier identifierType:*MEMORY[0x29EDC6F58] deviceType:0 launchContext:1];

  remoteControlViewController2 = [(TVRMContentViewController *)self remoteControlViewController];
  [remoteControlViewController2 startConnections];

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

  hintsViewController = [(TVRMContentViewController *)self hintsViewController];
  [hintsViewController dismissHints];

  [(TVRMContentViewController *)self _dismissChildViewControllersPresentedContentAnimated:0 completion:0];
  systemInitiatedDismissal = [(TVRMContentViewController *)self systemInitiatedDismissal];
  remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];
  v7 = remoteControlViewController;
  if (systemInitiatedDismissal)
  {
    [remoteControlViewController _disconnectSystemInitiated];
  }

  else
  {
    [remoteControlViewController _disconnectUserInitiated];
  }

  remoteControlViewController2 = [(TVRMContentViewController *)self remoteControlViewController];
  [remoteControlViewController2 stopConnections];
}

- (void)buttonTapped:(id)tapped forEvent:(id)event
{
  if ([(TVRMContentViewController *)self shouldLaunchAsViewService:tapped])
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
    currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
    userInterfaceIdiom = [currentDevice userInterfaceIdiom];

    v8 = _TVRMControlCenterLog();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (userInterfaceIdiom == 1)
    {
      if (v9)
      {
        *v11 = 0;
        _os_log_impl(&dword_29C9F3000, v8, OS_LOG_TYPE_DEFAULT, "Module button tapped so requesting module expansion", v11, 2u);
      }

      contentModuleContext = [(TVRMContentViewController *)self contentModuleContext];
      [contentModuleContext requestExpandModule];
    }

    else
    {
      if (v9)
      {
        *v12 = 0;
        _os_log_impl(&dword_29C9F3000, v8, OS_LOG_TYPE_DEFAULT, "Module button tapped so requesting app launch", v12, 2u);
      }

      contentModuleContext = [(TVRMContentViewController *)self contentModuleContext];
      [contentModuleContext openApplication:@"com.apple.TVRemoteUIService" completionHandler:0];
    }
  }
}

- (double)preferredExpandedContentHeight
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  CCUIScreenBounds();
  Height = CGRectGetHeight(v8);
  if (userInterfaceIdiom == 1)
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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  v4 = _TVRMControlCenterLog();
  v8 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (userInterfaceIdiom != 1)
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

- (void)willTransitionToExpandedContentMode:(BOOL)mode
{
  modeCopy = mode;
  v12 = *MEMORY[0x29EDCA608];
  v5 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v9 = "[TVRMContentViewController willTransitionToExpandedContentMode:]";
    v10 = 1024;
    v11 = modeCopy;
    _os_log_impl(&dword_29C9F3000, v5, OS_LOG_TYPE_DEFAULT, "%s, expanded=%{BOOL}d", buf, 0x12u);
  }

  if (modeCopy)
  {
    [(TVRMContentViewController *)self _createRemoteControlViewControllerIfNeeded];
    [(TVRMContentViewController *)self _startRemoteControlViewController];
  }

  else
  {
    [(TVRMContentViewController *)self _stopRemoteControlViewController];
    hintsViewController = [(TVRMContentViewController *)self hintsViewController];
    [hintsViewController remoteWillBeDismissed];
  }

  v7.receiver = self;
  v7.super_class = TVRMContentViewController;
  [(CCUIButtonModuleViewController *)&v7 willTransitionToExpandedContentMode:modeCopy];
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

- (void)_dismissChildViewControllersPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v15 = *MEMORY[0x29EDCA608];
  completionCopy = completion;
  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[TVRMContentViewController _dismissChildViewControllersPresentedContentAnimated:completion:]";
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  hintsViewController = [(TVRMContentViewController *)self hintsViewController];
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __93__TVRMContentViewController__dismissChildViewControllersPresentedContentAnimated_completion___block_invoke;
  v10[3] = &unk_29F33F090;
  v12 = animatedCopy;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [hintsViewController dismissPresentedContentAnimated:animatedCopy completion:v10];
}

void __93__TVRMContentViewController__dismissChildViewControllersPresentedContentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  [v2 dismissPresentedContentAnimated:*(a1 + 48) completion:*(a1 + 40)];
}

- (BOOL)canDismissPresentedContent
{
  v12 = *MEMORY[0x29EDCA608];
  remoteControlViewController = [(TVRMContentViewController *)self remoteControlViewController];
  hasPresentedContent = [remoteControlViewController hasPresentedContent];

  hintsViewController = [(TVRMContentViewController *)self hintsViewController];
  hasPresentedContent2 = [hintsViewController hasPresentedContent];

  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109376;
    v9[1] = hasPresentedContent;
    v10 = 1024;
    v11 = hasPresentedContent2;
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Can dismiss presented content, remoteHasPresentedContent=%{BOOL}d, hintsHasPresentedContent=%{BOOL}d", v9, 0xEu);
  }

  return (hasPresentedContent | hasPresentedContent2) & 1;
}

- (void)dismissPresentedContentAnimated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v16 = *MEMORY[0x29EDCA608];
  completionCopy = completion;
  v7 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = MEMORY[0x29ED51270](completionCopy);
    *buf = 138412290;
    v15 = v8;
    _os_log_impl(&dword_29C9F3000, v7, OS_LOG_TYPE_DEFAULT, "Dismiss presented content completion %@", buf, 0xCu);
  }

  hintsViewController = [(TVRMContentViewController *)self hintsViewController];
  v11[0] = MEMORY[0x29EDCA5F8];
  v11[1] = 3221225472;
  v11[2] = __72__TVRMContentViewController_dismissPresentedContentAnimated_completion___block_invoke;
  v11[3] = &unk_29F33F090;
  v13 = animatedCopy;
  v11[4] = self;
  v12 = completionCopy;
  v10 = completionCopy;
  [hintsViewController dismissPresentedContentAnimated:animatedCopy completion:v11];
}

void __72__TVRMContentViewController_dismissPresentedContentAnimated_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteControlViewController];
  [v2 dismissPresentedContentAnimated:*(a1 + 48) completion:*(a1 + 40)];
}

- (BOOL)shouldLaunchAsViewService
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  if ([currentDevice userInterfaceIdiom])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
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
  defaultCenter = [MEMORY[0x29EDB9F98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__remoteLaunchedAsViewService_ name:*MEMORY[0x29EDC6F60] object:0];

  mEMORY[0x29EDC6F50] = [MEMORY[0x29EDC6F50] sharedInstance];
  [mEMORY[0x29EDC6F50] presentWithContext:v4];
}

- (void)_remoteLaunchedAsViewService:(id)service
{
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 3221225472;
  block[2] = __58__TVRMContentViewController__remoteLaunchedAsViewService___block_invoke;
  block[3] = &unk_29F33F068;
  block[4] = self;
  dispatch_async(MEMORY[0x29EDCA578], block);
  defaultCenter = [MEMORY[0x29EDB9F98] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x29EDC6F60] object:0];
}

void __58__TVRMContentViewController__remoteLaunchedAsViewService___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) contentModuleContext];
  [v1 dismissControlCenter];
}

- (CGAffineTransform)_defaultScaledTransformForSize:(SEL)size
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
  shouldLaunchAsViewService = [(TVRMContentViewController *)self shouldLaunchAsViewService];
  mEMORY[0x29EDC6F50] = [MEMORY[0x29EDC6F50] sharedInstance];
  [mEMORY[0x29EDC6F50] _prewarmWithLaunchViewService:shouldLaunchAsViewService fetchActiveEndpoint:1];

  v4 = _TVRMControlCenterLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5[0] = 67109120;
    v5[1] = shouldLaunchAsViewService;
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