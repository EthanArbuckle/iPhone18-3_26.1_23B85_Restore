@interface ProxCardKitTestRemoteViewController
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation ProxCardKitTestRemoteViewController

- (void)proxCardFlowDidDismiss
{
  _remoteViewControllerProxy = [(ProxCardKitTestRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy dismiss];
}

- (void)proxCardFlowWillPresent
{
  _remoteViewControllerProxy = [(ProxCardKitTestRemoteViewController *)self _remoteViewControllerProxy];
  [_remoteViewControllerProxy setStatusBarHidden:1 withDuration:0.0];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = ProxCardKitTestRemoteViewController;
  [(ProxCardKitTestRemoteViewController *)&v6 viewDidAppear:appear];
  v4 = objc_alloc_init(ProxCardKitTestStartViewController);
  v5 = [(ProxCardKitTestRemoteViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v4];
}

@end