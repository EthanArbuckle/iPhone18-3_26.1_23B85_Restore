@interface IOUIANCriticalUIEmergencyCallHostViewController
- (IOUIANCriticalUIEmergencyCallHostViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismiss;
- (void)viewServiceDidTerminateWithError:(id)error;
@end

@implementation IOUIANCriticalUIEmergencyCallHostViewController

- (void)dismiss
{
  delegate = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
    [delegate2 emergencyCallHostViewControllerDidRequestDismiss:self];
  }
}

- (void)viewServiceDidTerminateWithError:(id)error
{
  errorCopy = error;
  delegate = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
    [delegate2 emergencyCallHostViewControllerDidTerminate:self withError:errorCopy];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (IOUIANCriticalUIEmergencyCallHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end