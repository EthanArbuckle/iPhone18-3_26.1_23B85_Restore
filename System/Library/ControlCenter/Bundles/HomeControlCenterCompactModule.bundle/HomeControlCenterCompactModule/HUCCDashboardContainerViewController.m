@interface HUCCDashboardContainerViewController
- (CGRect)expandedContentFrame;
- (CGSize)preferredExpandedSize;
- (HUCCDashboardContainerViewController)initWithDelegate:(id)a3;
- (HUCCDashboardContainerViewControllerDelegate)delegate;
- (id)serviceViewControllerProxy;
- (void)_addNewRemoteViewController:(id)a3;
- (void)_configureAndAddRemoteViewController:(id)a3 forHome:(id)a4;
- (void)_requestRemoteViewControllerForHome:(id)a3;
- (void)_stopAndRemoveRemoteViewController;
- (void)loadView;
- (void)remoteDashboard:(id)a3 viewServiceDidTerminateWithError:(id)a4;
- (void)requestDismissal;
- (void)requestLockAuthenticationForRemoteDashboard:(id)a3;
- (void)willFinishTransition:(BOOL)a3 forCompactModule:(BOOL)a4;
@end

@implementation HUCCDashboardContainerViewController

- (HUCCDashboardContainerViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = HUCCDashboardContainerViewController;
  v5 = [(HUCCDashboardContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, v4);
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [(HUCCDashboardContainerViewController *)self expandedContentFrame];
  v4 = [v3 initWithFrame:?];
  [(HUCCDashboardContainerViewController *)self setView:v4];

  v5 = [MEMORY[0x29EDC5390] sharedDispatcher];
  v6 = [v5 home];

  [(HUCCDashboardContainerViewController *)self _requestRemoteViewControllerForHome:v6];
}

- (void)willFinishTransition:(BOOL)a3 forCompactModule:(BOOL)a4
{
  if (!a3)
  {
    v6 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    v5 = [v6 view];
    [v5 removeFromSuperview];
  }
}

- (id)serviceViewControllerProxy
{
  v2 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  v3 = [v2 serviceViewControllerProxy];

  return v3;
}

- (CGRect)expandedContentFrame
{
  v3 = [MEMORY[0x29EDC7A58] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  [(HUCCDashboardContainerViewController *)self preferredExpandedSize];
  v6 = v5;
  if (v4 == 1)
  {
    CCUIExpandedModuleEdgeInsets();
    v6 = v6 + v7 * 2.0;
    [(HUCCDashboardContainerViewController *)self preferredExpandedSize];
    v9 = v8;
    CCUIExpandedModuleEdgeInsets();
    v11 = v9 + v10 * -4.0;
  }

  else
  {
    [(HUCCDashboardContainerViewController *)self preferredExpandedSize];
    v11 = v12;
  }

  v13 = 0.0;
  v14 = 0.0;
  v15 = v6;
  result.size.height = v11;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGSize)preferredExpandedSize
{
  v2 = [MEMORY[0x29EDC7A58] currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    CCUIDefaultExpandedContentModuleWidth();
    Width = v4;
    CCUIMaximumExpandedContentModuleHeight();
  }

  else
  {
    CCUIScreenBounds();
    Width = CGRectGetWidth(v10);
    CCUIScreenBounds();
    Height = CGRectGetHeight(v11);
  }

  v7 = Height;
  v8 = Width;
  result.height = v7;
  result.width = v8;
  return result;
}

- (void)_requestRemoteViewControllerForHome:(id)a3
{
  v4 = a3;
  [(HUCCDashboardContainerViewController *)self _beginDelayingPresentation:&unk_2A23E90A8 cancellationHandler:5.0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C98BD18;
  v7[3] = &unk_29F339BE0;
  objc_copyWeak(&v9, &location);
  v5 = v4;
  v8 = v5;
  v6 = [HUCCRemoteDashboardViewController requestViewControllerWithConnectionHandler:v7];
  [(HUCCDashboardContainerViewController *)self setCancelServiceInvocation:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_configureAndAddRemoteViewController:(id)a3 forHome:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_opt_class();
  v8 = v6;
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HUCCDashboardContainerViewController *)self _addNewRemoteViewController:v10];
    v11 = [(HUCCDashboardContainerViewController *)self serviceViewControllerProxy];
    v12 = [v7 uniqueIdentifier];
    v13 = [v12 UUIDString];
    [v11 configureHomeControlServiceWithHomeUUID:v13];

    objc_initWeak(&location, self);
    v14 = [(HUCCDashboardContainerViewController *)self serviceViewControllerProxy];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = sub_29C98BF68;
    v15[3] = &unk_29F339C08;
    objc_copyWeak(&v16, &location);
    [v14 getTransitionSubviewFramesWithCompletion:v15];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    NSLog(&cfstr_UnexpectedRemo.isa, v8);
  }
}

- (void)_stopAndRemoveRemoteViewController
{
  v3 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];

  if (v3)
  {
    v4 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [v4 beginAppearanceTransition:0 animated:0];

    v5 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [v5 willMoveToParentViewController:0];

    v6 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    v7 = [v6 view];
    [v7 removeFromSuperview];

    v8 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    v9 = [v8 disconnect];

    v10 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [v10 removeFromParentViewController];

    v11 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [v11 endAppearanceTransition];

    [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:0];
  }
}

- (void)_addNewRemoteViewController:(id)a3
{
  v4 = a3;
  [(HUCCDashboardContainerViewController *)self _stopAndRemoveRemoteViewController];
  [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:v4];

  v5 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [v5 setDelegate:self];

  v6 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [v6 beginAppearanceTransition:1 animated:0];

  v7 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [(HUCCDashboardContainerViewController *)self addChildViewController:v7];

  v8 = [(HUCCDashboardContainerViewController *)self view];
  [v8 bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  v18 = [v17 view];
  [v18 setFrame:{v10, v12, v14, v16}];

  v19 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  v20 = [v19 view];
  [v20 setAutoresizingMask:18];

  v21 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [v21 didMoveToParentViewController:self];

  v22 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [v22 endAppearanceTransition];
}

- (void)remoteDashboard:(id)a3 viewServiceDidTerminateWithError:(id)a4
{
  v5 = a4;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_29C98CD00(v5, v6);
  }

  [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:0];
}

- (void)requestDismissal
{
  v2 = [(HUCCDashboardContainerViewController *)self delegate];
  [v2 requestDismissal];
}

- (void)requestLockAuthenticationForRemoteDashboard:(id)a3
{
  v4 = [(HUCCDashboardContainerViewController *)self delegate];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C98C3A0;
  v5[3] = &unk_29F339AA8;
  v5[4] = self;
  [v4 requestAuthenticationIfLockedWithCompletionHandler:v5];
}

- (HUCCDashboardContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end