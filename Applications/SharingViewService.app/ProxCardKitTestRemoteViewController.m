@interface ProxCardKitTestRemoteViewController
- (void)proxCardFlowDidDismiss;
- (void)proxCardFlowWillPresent;
- (void)viewDidAppear:(BOOL)a3;
@end

@implementation ProxCardKitTestRemoteViewController

- (void)proxCardFlowDidDismiss
{
  v2 = [(ProxCardKitTestRemoteViewController *)self _remoteViewControllerProxy];
  [v2 dismiss];
}

- (void)proxCardFlowWillPresent
{
  v2 = [(ProxCardKitTestRemoteViewController *)self _remoteViewControllerProxy];
  [v2 setStatusBarHidden:1 withDuration:0.0];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ProxCardKitTestRemoteViewController;
  [(ProxCardKitTestRemoteViewController *)&v6 viewDidAppear:a3];
  v4 = objc_alloc_init(ProxCardKitTestStartViewController);
  v5 = [(ProxCardKitTestRemoteViewController *)self presentProxCardFlowWithDelegate:self initialViewController:v4];
}

@end