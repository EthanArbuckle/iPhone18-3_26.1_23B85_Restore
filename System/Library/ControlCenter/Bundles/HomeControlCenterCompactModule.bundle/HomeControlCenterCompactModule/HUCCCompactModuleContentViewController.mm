@interface HUCCCompactModuleContentViewController
- (BOOL)shouldBeginTransitionToExpandedContentModule;
- (BOOL)shouldExpandModuleOnTouch:(id)a3;
- (CGRect)_expandedContentFrame;
- (CGRect)_iconViewInHomeGridCellFrame;
- (CGRect)_iconViewInNavigationHeaderViewFrame;
- (CGRect)transitionCompressedAnimationStartFrame;
- (CGSize)preferredExpandedSize;
- (HUCCCompactModuleContentViewController)initWithDelegate:(id)a3;
- (HUCCCompactModuleContentViewControllerDelegate)delegate;
- (double)preferredExpandedContinuousCornerRadius;
- (id)customAnimator;
- (void)_openHomeApp;
- (void)_setUpHomeControlService;
- (void)_tearDownHomeControlService;
- (void)dealloc;
- (void)propertyAnimatorDidStartAnimating:(id)a3;
- (void)quickControlsPresentationDidUpdate:(BOOL)a3;
- (void)remoteDashboard:(id)a3 viewServiceDidTerminateWithError:(id)a4;
- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)a3;
- (void)requestDismissal;
- (void)resetToInitialState;
- (void)setExpandedView:(id)a3;
- (void)viewDidLoad;
@end

@implementation HUCCCompactModuleContentViewController

- (HUCCCompactModuleContentViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HUCCCompactModuleContentViewController;
  v5 = [(CCUIButtonModuleViewController *)&v12 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
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
  v3 = [MEMORY[0x29EDC7A00] systemWhiteColor];
  v4 = [(HUCCCompactModuleContentViewController *)self view];
  [v4 setTintColor:v3];

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

- (void)setExpandedView:(id)a3
{
  v8 = a3;
  expandedView = self->_expandedView;
  if (expandedView)
  {
    [(UIView *)expandedView removeFromSuperview];
  }

  objc_storeStrong(&self->_expandedView, a3);
  v6 = self->_expandedView;
  if (v6)
  {
    [(UIView *)v6 setAlpha:0.0];
    v7 = [(HUCCCompactModuleContentViewController *)self view];
    [v7 addSubview:self->_expandedView];
  }
}

- (void)resetToInitialState
{
  v3 = [(HUCCCompactModuleContentViewController *)self expandedView];
  [v3 setAlpha:0.0];

  [(HUCCCompactModuleContentViewController *)self setExpandedView:0];
  v4 = [(CCUIButtonModuleViewController *)self buttonView];
  [v4 setAlpha:1.0];

  v5 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  [v5 removeFromParentViewController];

  [(HUCCCompactModuleContentViewController *)self setDashboardContainerViewController:0];
}

- (void)_setUpHomeControlService
{
  v3 = [(HUCCCompactModuleContentViewController *)self activeAssertion];
  if (!v3)
  {
    if (_os_feature_enabled_impl())
    {
      return;
    }

    v4 = [MEMORY[0x29EDC5390] sharedDispatcher];
    v5 = [v4 homeManager];
    v6 = [v5 _beginActiveAssertionWithReason:@"HUCCCompactModuleVisible"];
    [(HUCCCompactModuleContentViewController *)self setActiveAssertion:v6];

    v7 = [(HUCCCompactModuleContentViewController *)self activeAssertion];

    if (!v7)
    {
      return;
    }

    v8 = [MEMORY[0x29EDC54D8] sharedInstance];
    [v8 launchServiceSuspendedWithUserInfo:MEMORY[0x29EDB8EA0]];

    v9 = [[HUCCDashboardContainerViewController alloc] initWithDelegate:self];
    [(HUCCCompactModuleContentViewController *)self setDashboardContainerViewController:v9];

    v10 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    v11 = [v10 view];
    [(HUCCCompactModuleContentViewController *)self setExpandedView:v11];

    v12 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [(HUCCCompactModuleContentViewController *)self addChildViewController:v12];

    v13 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [v13 didMoveToParentViewController:self];
    v3 = v13;
  }
}

- (void)_tearDownHomeControlService
{
  v3 = [(HUCCCompactModuleContentViewController *)self activeAssertion];

  if (v3)
  {
    [(CCUIButtonModuleViewController *)self setExpanded:0];
    v4 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    [v4 stopRemoteViewController];

    [(HUCCCompactModuleContentViewController *)self resetToInitialState];
    v5 = HFLogForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_29C988000, v5, OS_LOG_TYPE_DEFAULT, "Terminating HomeControlService", v10, 2u);
    }

    v6 = [MEMORY[0x29EDC54D8] sharedInstance];
    [v6 dismissService];

    v7 = [MEMORY[0x29EDC5390] sharedDispatcher];
    v8 = [v7 homeManager];
    v9 = [(HUCCCompactModuleContentViewController *)self activeAssertion];
    [v8 _endActiveAssertion:v9];

    [(HUCCCompactModuleContentViewController *)self setActiveAssertion:0];
  }
}

- (BOOL)shouldExpandModuleOnTouch:(id)a3
{
  v4 = [(HUCCCompactModuleContentViewController *)self accessAllowedForCurrentLockState];
  if (v4)
  {
    v5 = [(HUCCCompactModuleContentViewController *)self expandedView];
    [v5 setAlpha:1.0];
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

  return v4;
}

- (BOOL)shouldBeginTransitionToExpandedContentModule
{
  v3 = [MEMORY[0x29EDC5390] sharedDispatcher];
  v4 = [v3 home];

  if ((_os_feature_enabled_impl() & 1) != 0 || ([v4 hf_hasVisibleAccessories] & 1) == 0)
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
  v5 = [(HUCCCompactModuleContentViewController *)self transitionIconView];

  if (!v5)
  {
    v6 = [(CCUIButtonModuleViewController *)self buttonView];
    v7 = [v6 snapshotViewAfterScreenUpdates:0];
    [(HUCCCompactModuleContentViewController *)self setTransitionIconView:v7];

    v8 = [(HUCCCompactModuleContentViewController *)self transitionIconView];
    [v8 setContentMode:4];

    v9 = [(HUCCCompactModuleContentViewController *)self view];
    v10 = [(HUCCCompactModuleContentViewController *)self transitionIconView];
    [v9 addSubview:v10];
  }

  if ([(CCUIButtonModuleViewController *)self isExpanded])
  {
    v11 = [(CCUIButtonModuleViewController *)self buttonView];
    [v11 setAlpha:0.0];

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
  v4 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  v5 = [v4 transitionSubviewFrames];

  if ([v5 count])
  {
    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x29EDC5448]];
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
  v3 = [MEMORY[0x29EDC7A58] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4 == 1)
  {
    v5 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    v6 = [v5 view];
    [v6 frame];
    Width = v7;
    v9 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
    v10 = [v9 view];
    [v10 frame];
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

- (void)propertyAnimatorDidStartAnimating:(id)a3
{
  v4 = [(HUCCCompactModuleContentViewController *)self dashboardContainerViewController];
  [v4 willBeginTransition:-[CCUIButtonModuleViewController isExpanded](self forCompactModule:{"isExpanded"), 1}];
}

- (void)remoteDashboard:(id)a3 viewServiceDidTerminateWithError:(id)a4
{
  v5 = [(HUCCCompactModuleContentViewController *)self delegate:a3];
  v4 = [v5 contentModuleContext];
  [v4 setHomeGestureDismissalAllowed:1];
}

- (void)requestAuthenticationIfLockedWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HUCCCompactModuleContentViewController *)self delegate];
  v6 = [v5 isDeviceUnlockedForModuleContentViewController:self];

  if (v6)
  {
    v4[2](v4, 1);
  }

  else
  {
    v7 = [(HUCCCompactModuleContentViewController *)self delegate];
    v8 = [v7 contentModuleContext];

    if (v8)
    {
      v9[0] = MEMORY[0x29EDCA5F8];
      v9[1] = 3221225472;
      v9[2] = sub_29C98AF08;
      v9[3] = &unk_29F339B70;
      v10 = v4;
      [v8 requestAuthenticationWithCompletionHandler:v9];
    }

    else
    {
      v4[2](v4, 0);
    }
  }
}

- (void)requestDismissal
{
  v3 = [(HUCCCompactModuleContentViewController *)self delegate];
  v2 = [v3 contentModuleContext];
  [v2 dismissModule];
}

- (void)quickControlsPresentationDidUpdate:(BOOL)a3
{
  v3 = a3;
  v5 = [(HUCCCompactModuleContentViewController *)self delegate];
  v4 = [v5 contentModuleContext];
  [v4 setHomeGestureDismissalAllowed:!v3];
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