@interface FPUIActionRemoteViewController
- (FPUIActionRemoteViewControllerDelegate)delegate;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation FPUIActionRemoteViewController

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v6.receiver = self;
  v6.super_class = FPUIActionRemoteViewController;
  v4 = a3;
  [(_UIRemoteViewController *)&v6 viewServiceDidTerminateWithError:v4];
  v5 = [(FPUIActionRemoteViewController *)self delegate:v6.receiver];
  [v5 remoteActionControllerDidFinishAction:self error:v4];
}

- (FPUIActionRemoteViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end