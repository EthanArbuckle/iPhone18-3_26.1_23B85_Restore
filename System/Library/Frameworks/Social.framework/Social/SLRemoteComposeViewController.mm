@interface SLRemoteComposeViewController
- (SLRemoteComposeViewControllerDelegateProtocol)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation SLRemoteComposeViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  _SLLog(v3, 3, @"SLRemoteComposeViewController: (this may be harmless) viewServiceDidTerminateWithError: %@");
  v8.receiver = self;
  v8.super_class = SLRemoteComposeViewController;
  [(_UIRemoteViewController *)&v8 viewServiceDidTerminateWithError:errorCopy, errorCopy];
  delegate = [(SLRemoteComposeViewController *)self delegate];
  v7 = delegate;
  if (delegate)
  {
    [delegate remoteViewController:self didTerminateWithError:errorCopy];
  }
}

- (SLRemoteComposeViewControllerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end