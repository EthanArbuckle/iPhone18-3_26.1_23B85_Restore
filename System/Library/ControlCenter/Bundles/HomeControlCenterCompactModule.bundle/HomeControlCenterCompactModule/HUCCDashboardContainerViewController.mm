@interface HUCCDashboardContainerViewController
- (CGRect)expandedContentFrame;
- (CGSize)preferredExpandedSize;
- (HUCCDashboardContainerViewController)initWithDelegate:(id)delegate;
- (HUCCDashboardContainerViewControllerDelegate)delegate;
- (id)serviceViewControllerProxy;
- (void)_addNewRemoteViewController:(id)controller;
- (void)_configureAndAddRemoteViewController:(id)controller forHome:(id)home;
- (void)_requestRemoteViewControllerForHome:(id)home;
- (void)_stopAndRemoveRemoteViewController;
- (void)loadView;
- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error;
- (void)requestDismissal;
- (void)requestLockAuthenticationForRemoteDashboard:(id)dashboard;
- (void)willFinishTransition:(BOOL)transition forCompactModule:(BOOL)module;
@end

@implementation HUCCDashboardContainerViewController

- (HUCCDashboardContainerViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v8.receiver = self;
  v8.super_class = HUCCDashboardContainerViewController;
  v5 = [(HUCCDashboardContainerViewController *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
  }

  return v6;
}

- (void)loadView
{
  v3 = objc_alloc(MEMORY[0x29EDC7DA0]);
  [(HUCCDashboardContainerViewController *)self expandedContentFrame];
  v4 = [v3 initWithFrame:?];
  [(HUCCDashboardContainerViewController *)self setView:v4];

  mEMORY[0x29EDC5390] = [MEMORY[0x29EDC5390] sharedDispatcher];
  home = [mEMORY[0x29EDC5390] home];

  [(HUCCDashboardContainerViewController *)self _requestRemoteViewControllerForHome:home];
}

- (void)willFinishTransition:(BOOL)transition forCompactModule:(BOOL)module
{
  if (!transition)
  {
    remoteDashboardViewController = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    view = [remoteDashboardViewController view];
    [view removeFromSuperview];
  }
}

- (id)serviceViewControllerProxy
{
  remoteDashboardViewController = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  serviceViewControllerProxy = [remoteDashboardViewController serviceViewControllerProxy];

  return serviceViewControllerProxy;
}

- (CGRect)expandedContentFrame
{
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  [(HUCCDashboardContainerViewController *)self preferredExpandedSize];
  v6 = v5;
  if (userInterfaceIdiom == 1)
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
  currentDevice = [MEMORY[0x29EDC7A58] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
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

- (void)_requestRemoteViewControllerForHome:(id)home
{
  homeCopy = home;
  [(HUCCDashboardContainerViewController *)self _beginDelayingPresentation:&unk_2A23E90A8 cancellationHandler:5.0];
  objc_initWeak(&location, self);
  v7[0] = MEMORY[0x29EDCA5F8];
  v7[1] = 3221225472;
  v7[2] = sub_29C98BD18;
  v7[3] = &unk_29F339BE0;
  objc_copyWeak(&v9, &location);
  v5 = homeCopy;
  v8 = v5;
  v6 = [HUCCRemoteDashboardViewController requestViewControllerWithConnectionHandler:v7];
  [(HUCCDashboardContainerViewController *)self setCancelServiceInvocation:v6];

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_configureAndAddRemoteViewController:(id)controller forHome:(id)home
{
  controllerCopy = controller;
  homeCopy = home;
  objc_opt_class();
  v8 = controllerCopy;
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
    serviceViewControllerProxy = [(HUCCDashboardContainerViewController *)self serviceViewControllerProxy];
    uniqueIdentifier = [homeCopy uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    [serviceViewControllerProxy configureHomeControlServiceWithHomeUUID:uUIDString];

    objc_initWeak(&location, self);
    serviceViewControllerProxy2 = [(HUCCDashboardContainerViewController *)self serviceViewControllerProxy];
    v15[0] = MEMORY[0x29EDCA5F8];
    v15[1] = 3221225472;
    v15[2] = sub_29C98BF68;
    v15[3] = &unk_29F339C08;
    objc_copyWeak(&v16, &location);
    [serviceViewControllerProxy2 getTransitionSubviewFramesWithCompletion:v15];

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
  remoteDashboardViewController = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];

  if (remoteDashboardViewController)
  {
    remoteDashboardViewController2 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [remoteDashboardViewController2 beginAppearanceTransition:0 animated:0];

    remoteDashboardViewController3 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [remoteDashboardViewController3 willMoveToParentViewController:0];

    remoteDashboardViewController4 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    view = [remoteDashboardViewController4 view];
    [view removeFromSuperview];

    remoteDashboardViewController5 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    disconnect = [remoteDashboardViewController5 disconnect];

    remoteDashboardViewController6 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [remoteDashboardViewController6 removeFromParentViewController];

    remoteDashboardViewController7 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
    [remoteDashboardViewController7 endAppearanceTransition];

    [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:0];
  }
}

- (void)_addNewRemoteViewController:(id)controller
{
  controllerCopy = controller;
  [(HUCCDashboardContainerViewController *)self _stopAndRemoveRemoteViewController];
  [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:controllerCopy];

  remoteDashboardViewController = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [remoteDashboardViewController setDelegate:self];

  remoteDashboardViewController2 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [remoteDashboardViewController2 beginAppearanceTransition:1 animated:0];

  remoteDashboardViewController3 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [(HUCCDashboardContainerViewController *)self addChildViewController:remoteDashboardViewController3];

  view = [(HUCCDashboardContainerViewController *)self view];
  [view bounds];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  remoteDashboardViewController4 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  view2 = [remoteDashboardViewController4 view];
  [view2 setFrame:{v10, v12, v14, v16}];

  remoteDashboardViewController5 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  view3 = [remoteDashboardViewController5 view];
  [view3 setAutoresizingMask:18];

  remoteDashboardViewController6 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [remoteDashboardViewController6 didMoveToParentViewController:self];

  remoteDashboardViewController7 = [(HUCCDashboardContainerViewController *)self remoteDashboardViewController];
  [remoteDashboardViewController7 endAppearanceTransition];
}

- (void)remoteDashboard:(id)dashboard viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  v6 = HFLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_29C98CD00(errorCopy, v6);
  }

  [(HUCCDashboardContainerViewController *)self setRemoteDashboardViewController:0];
}

- (void)requestDismissal
{
  delegate = [(HUCCDashboardContainerViewController *)self delegate];
  [delegate requestDismissal];
}

- (void)requestLockAuthenticationForRemoteDashboard:(id)dashboard
{
  delegate = [(HUCCDashboardContainerViewController *)self delegate];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = sub_29C98C3A0;
  v5[3] = &unk_29F339AA8;
  v5[4] = self;
  [delegate requestAuthenticationIfLockedWithCompletionHandler:v5];
}

- (HUCCDashboardContainerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end