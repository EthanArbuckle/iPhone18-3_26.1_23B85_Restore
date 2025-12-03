@interface HUCCCompactModuleContentViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldExpandModuleOnTouch:(id)touch;
- (CGRect)_expandedContentFrame;
- (CGRect)_iconViewInHomeGridCellFrame;
- (CGRect)_iconViewInNavigationHeaderViewFrame;
- (CGRect)transitionCompressedAnimationStartFrame;
- (CGSize)preferredExpandedSize;
- (HUCCCompactModuleContentViewController)initWithDelegate:(id)delegate;
- (HUCCCompactModuleContentViewControllerDelegate)delegate;
- (double)preferredExpandedContinuousCornerRadius;
- (id)customAnimator;
- (void)_openHomeApp;
- (void)_setUpHomeControlService;
- (void)_tearDownHomeControlService;
- (void)dealloc;
- (void)propertyAnimatorDidStartAnimating:(id)animating;
- (void)quickControlsPresentationDidUpdate:(BOOL)update;
- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error;
- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)handler;
- (void)requestDismissal;
- (void)resetToInitialState;
- (void)setExpandedView:(id)view;
- (void)viewDidLoad;
@end

@implementation HUCCCompactModuleContentViewController

- (HUCCCompactModuleContentViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v12.receiver = self;
  v12.super_class = HUCCCompactModuleContentViewController;
  v5 = [(CCUIButtonModuleViewController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v7 = [MEMORY[0x29EDC7AD0] configurationWithPointSize:4 weight:32.0];
    v8 = [MEMORY[0x29EDC7AC8] systemImageNamed:@"homekit"];
    v9 = [v8 imageWithConfiguration:v7];
    v10 = [v9 imageWithRenderingMode:2];
    [(CCUIButtonModuleViewController *)v6 setGlyphImage:v10];
  }

  return v6;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = HUCCCompactModuleContentViewController;
  [(CCUIButtonModuleViewController *)&v6 viewDidLoad];
  systemWhiteColor = [MEMORY[0x29EDC7A00] systemWhiteColor];
  view = [(HUCCCompactModuleContentViewController *)self view];
  [view setTintColor:systemWhiteColor];

  MGGetFloat32Answer();
  [(HUCCCompactModuleContentViewController *)self setTransitionDeviceCornerRadius:v5];
}

- (void)dealloc
{
  [(HUCCCompactModuleContentViewController *)self _tearDownHomeControlService];
  v3.receiver = self;
  v3.super_class = HUCCCompactModuleContentViewController;
  [(HUCCCompactModuleContentViewController *)&v3 dealloc];
}

- (void)setExpandedView:(id)view
{
  viewCopy = view;
  expandedView = self->_expandedView;
  if (expandedView)
  {
    [(UIView *)expandedView removeFromSuperview];
  }

  objc_storeStrong(&self->_expandedView, view);
  v6 = self->_expandedView;
  if (v6)
  {
    [(UIView *)v6 setAlpha:0.0];
    view = [(HUCCCompactModuleContentViewController *)self view];
    [view addSubview:self->_expandedView];
  }
}

- (void)resetToInitialState
{
  expandedView = [(HUCCCompactModuleContentViewController *)self expandedView];
  [expandedView setAlpha:0.0];

  [(HUCCCompactModuleContentViewController *)self setExpandedView:0];
  buttonView = [(CCUIButtonModuleViewController *)self buttonView];
  [buttonView setAlpha:1.0];

  dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  [dashboardContainerViewController removeFromParentViewController];

  [(HUCCCompactModuleContentViewController *)self setDashboardContainerViewController:0];
}

- (void)_setUpHomeControlService
{
  activeAssertion = [(HUCCCompactModuleContentViewController *)self activeAssertion];
  if (!activeAssertion)
  {
    if (_os_feature_enabled_impl())
    {
      return;
    }

    mEMORY[0x29EDC5390] = [MEMORY[0x29EDC5390] sharedDispatcher];
    homeManager = [mEMORY[0x29EDC5390] homeManager];
    v6 = [homeManager _beginActiveAssertionWithReason:@"HUCCCompactModuleVisible"];
    [(HUCCCompactModuleContentViewController *)self setActiveAssertion:v6];

    activeAssertion2 = [(HUCCCompactModuleContentViewController *)self activeAssertion];

    if (!activeAssertion2)
    {
      return;
    }

    mEMORY[0x29EDC54D8] = [MEMORY[0x29EDC54D8] sharedInstance];
    [mEMORY[0x29EDC54D8] launchServiceSuspendedWithUserInfo:MEMORY[0x29EDB8EA0]];

    v9 = [[HUCCDashboardContainerViewController alloc] initWithDelegate:self];
    [(HUCCCompactModuleContentViewController *)self setDashboardContainerViewController:v9];

    dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    view = [dashboardContainerViewController view];
    [(HUCCCompactModuleContentViewController *)self setExpandedView:view];

    dashboardContainerViewController2 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [(HUCCCompactModuleContentViewController *)self addChildViewController:dashboardContainerViewController2];

    dashboardContainerViewController3 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [dashboardContainerViewController3 didMoveToParentViewController:self];
    activeAssertion = dashboardContainerViewController3;
  }
}

- (void)_tearDownHomeControlService
{
  activeAssertion = [(HUCCCompactModuleContentViewController *)self activeAssertion];

  if (activeAssertion)
  {
    [(CCUIButtonModuleViewController *)self setExpanded:0];
    dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [dashboardContainerViewController stopRemoteViewController];

    [(HUCCCompactModuleContentViewController *)self resetToInitialState];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_29C988000, v5, OS_LOG_TYPE_DEFAULT, "Terminating HomeControlService", v10, 2u);
    }

    mEMORY[0x29EDC54D8] = [MEMORY[0x29EDC54D8] sharedInstance];
    [mEMORY[0x29EDC54D8] dismissService];

    mEMORY[0x29EDC5390] = [MEMORY[0x29EDC5390] sharedDispatcher];
    homeManager = [mEMORY[0x29EDC5390] homeManager];
    activeAssertion2 = [(HUCCCompactModuleContentViewController *)self activeAssertion];
    [homeManager _endActiveAssertion:activeAssertion2];

    [(HUCCCompactModuleContentViewController *)self setActiveAssertion:0];
  }
}

- (BOOL)shouldExpandModuleOnTouch:(id)touch
{
  accessAllowedForCurrentLockState = [(HUCCCompactModuleContentViewController *)self accessAllowedForCurrentLockState];
  if (accessAllowedForCurrentLockState)
  {
    expandedView = [(HUCCCompactModuleContentViewController *)self expandedView];
    [expandedView setAlpha:1.0];
  }

  else
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = sub_29C989C70;
    v7[3] = &unk_29F339AA8;
    v7[4] = self;
    [(HUCCCompactModuleContentViewController *)self requestAuthenticationIfLockedWithCompletionHandler:v7];
  }

  return accessAllowedForCurrentLockState;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  mEMORY[0x29EDC5390] = [MEMORY[0x29EDC5390] sharedDispatcher];
  home = [mEMORY[0x29EDC5390] home];

  if ((_os_feature_enabled_impl() & 1) != 0 || ([home hf_hasVisibleAccessories] & 1) == 0)
  {
    [(HUCCCompactModuleContentViewController *)self _openHomeApp];
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (id)customAnimator
{
  v3 = [(UIViewPropertyAnimator *)[HUCCCompactModulePropertyAnimator alloc] initWithDuration:0 curve:0 animations:0.4];
  [(HUCCCompactModulePropertyAnimator *)v3 setDelegate:self];
  v4 = [objc_alloc(MEMORY[0x29EDC7DB0]) initWithDuration:0 curve:0 animations:0.1];
  transitionIconView = [(HUCCCompactModuleContentViewController *)self transitionIconView];

  if (!transitionIconView)
  {
    buttonView = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = [buttonView snapshotViewAfterScreenUpdates:0];
    [(HUCCCompactModuleContentViewController *)self setTransitionIconView:v7];

    transitionIconView2 = [(HUCCCompactModuleContentViewController *)self transitionIconView];
    [transitionIconView2 setContentMode:4];

    view = [(HUCCCompactModuleContentViewController *)self view];
    transitionIconView3 = [(HUCCCompactModuleContentViewController *)self transitionIconView];
    [view addSubview:transitionIconView3];
  }

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    buttonView2 = [(CCUIButtonModuleViewController *)self buttonView];
    [buttonView2 setAlpha:0.0];

    v18[0] = MEMORY[0x29EDCA5F8];
    v18[1] = 3221225472;
    v18[2] = sub_29C98A034;
    v18[3] = &unk_29F339AD0;
    v18[4] = self;
    [(UIViewPropertyAnimator *)v3 addAnimations:v18];
  }

  else
  {
    v16[0] = MEMORY[0x29EDCA5F8];
    v16[1] = 3221225472;
    v16[2] = sub_29C98A4AC;
    v16[3] = &unk_29F339AF8;
    v16[4] = self;
    v17 = v4;
    [(UIViewPropertyAnimator *)v3 addAnimations:v16];
  }

  v14[0] = MEMORY[0x29EDCA5F8];
  v14[1] = 3221225472;
  v14[2] = sub_29C98A760;
  v14[3] = &unk_29F339B20;
  v14[4] = self;
  v15 = v4;
  v12 = v4;
  [(UIViewPropertyAnimator *)v3 addCompletion:v14];

  return v3;
}

- (CGRect)_iconViewInHomeGridCellFrame
{
  MEMORY[0x2A1C70FE8](self, sel_transitionCompressedAnimationStartFrame);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)_iconViewInNavigationHeaderViewFrame
{
  dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  transitionSubviewFrames = [dashboardContainerViewController transitionSubviewFrames];

  if ([transitionSubviewFrames count])
  {
    v6 = [transitionSubviewFrames objectForKeyedSubscript:*MEMORY[0x29EDC5448]];
    [v6 CGRectValue];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v15 = HFLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_29C98CBC4(self, a2, v15);
    }

    [(HUCCCompactModuleContentViewController *)self _iconViewInHomeGridCellFrame];
    v8 = v16;
    v10 = v17;
    v12 = v18;
    v14 = v19;
  }

  v20 = v8;
  v21 = v10;
  v22 = v12;
  v23 = v14;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (CGRect)_expandedContentFrame
{
  [(HUCCCompactModuleContentViewController *)self preferredExpandedContentWidth];
  v4 = v3;
  [(HUCCCompactModuleContentViewController *)self preferredExpandedContentHeight];
  v6 = v5;
  v7 = 0.0;
  v8 = 0.0;
  v9 = v4;
  result.size.height = v6;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (double)preferredExpandedContinuousCornerRadius
{
  if ([MEMORY[0x29EDC53F0] isAnIPad])
  {

    MEMORY[0x2A1C5FAB8]();
  }

  else
  {

    MEMORY[0x2A1C70FE8](self, sel_transitionDeviceCornerRadius);
  }

  return result;
}

- (CGSize)preferredExpandedSize
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    view = [dashboardContainerViewController view];
    [view frame];
    Width = v7;
    dashboardContainerViewController2 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    view2 = [dashboardContainerViewController2 view];
    [view2 frame];
    Height = v11;
  }

  else
  {
    CCUIScreenBounds();
    Width = CGRectGetWidth(v16);
    CCUIScreenBounds();
    Height = CGRectGetHeight(v17);
  }

  v13 = Width;
  v14 = Height;
  result.height = v14;
  result.width = v13;
  return result;
}

- (void)_openHomeApp
{
  objc_initWeak(&location, self);
  v2[0] = MEMORY[0x29EDCA5F8];
  v2[1] = 3221225472;
  v2[2] = sub_29C98ACD8;
  v2[3] = &unk_29F339B48;
  objc_copyWeak(&v3, &location);
  dispatch_async(MEMORY[0x29EDCA578], v2);
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (void)propertyAnimatorDidStartAnimating:(id)animating
{
  dashboardContainerViewController = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  [dashboardContainerViewController willBeginTransition:-[CCUIButtonModuleViewController isExpanded](self forCompactModule:{"isExpanded"), 1}];
}

- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error
{
  v5 = [(HUCCCompactModuleContentViewController *)self delegate:dashboard];
  contentModuleContext = [v5 contentModuleContext];
  [contentModuleContext setHomeGestureDismissalAllowed:1];
}

- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  delegate = [(HUCCCompactModuleContentViewController *)self delegate];
  v6 = [delegate isDeviceUnlockedForModuleContentViewController:self];

  if (v6)
  {
    handlerCopy[2](handlerCopy, 1);
  }

  else
  {
    delegate2 = [(HUCCCompactModuleContentViewController *)self delegate];
    contentModuleContext = [delegate2 contentModuleContext];

    if (contentModuleContext)
    {
      v9[0] = MEMORY[0x29EDCA5F8];
      v9[1] = 3221225472;
      v9[2] = sub_29C98AF08;
      v9[3] = &unk_29F339B70;
      v10 = handlerCopy;
      [contentModuleContext requestAuthenticationWithCompletionHandler:v9];
    }

    else
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }
}

- (void)requestDismissal
{
  delegate = [(HUCCCompactModuleContentViewController *)self delegate];
  contentModuleContext = [delegate contentModuleContext];
  [contentModuleContext dismissModule];
}

- (void)quickControlsPresentationDidUpdate:(BOOL)update
{
  updateCopy = update;
  delegate = [(HUCCCompactModuleContentViewController *)self delegate];
  contentModuleContext = [delegate contentModuleContext];
  [contentModuleContext setHomeGestureDismissalAllowed:!updateCopy];
}

- (HUCCCompactModuleContentViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGRect)transitionCompressedAnimationStartFrame
{
  x = self->_transitionCompressedAnimationStartFrame.origin.x;
  y = self->_transitionCompressedAnimationStartFrame.origin.y;
  width = self->_transitionCompressedAnimationStartFrame.size.width;
  height = self->_transitionCompressedAnimationStartFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end