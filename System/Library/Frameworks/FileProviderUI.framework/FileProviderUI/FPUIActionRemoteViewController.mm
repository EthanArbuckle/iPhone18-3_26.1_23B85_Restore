@interface FPUIActionRemoteViewController
- (FPUIActionRemoteViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation FPUIActionRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)error
{
  v6.receiver = self;
  v6.super_class = FPUIActionRemoteViewController;
  errorCopy = error;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:errorCopy];
  v5 = [(FPUIActionRemoteViewController *)self delegate:v6.receiver];
  [v5 remoteActionControllerDidFinishAction:self error:errorCopy];
}

- (FPUIActionRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end