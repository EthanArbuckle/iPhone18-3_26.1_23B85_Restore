@interface SLRemoteComposeViewController
- (SLRemoteComposeViewControllerDelegateProtocol)delegate;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation SLRemoteComposeViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v5 = a3;
  _SLLog(v3, 3, @"SLRemoteComposeViewController: (this may be harmless) viewServiceDidTerminateWithError: %@");
  v8.receiver = self;
  v8.super_class = SLRemoteComposeViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:v5, v5];
  v6 = [(SLRemoteComposeViewController *)self delegate];
  v7 = v6;
  if (v6)
  {
    [v6 remoteViewController:self didTerminateWithError:v5];
  }
}

- (SLRemoteComposeViewControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end