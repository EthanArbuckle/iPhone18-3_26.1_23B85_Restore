@interface IOUIANCriticalUIEmergencyCallHostViewController
- (IOUIANCriticalUIEmergencyCallHostViewControllerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismiss;
- (void)viewServiceDidTerminateWithError:(id)a3;
@end

@implementation IOUIANCriticalUIEmergencyCallHostViewController

- (void)dismiss
{
  v3 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
    [v5 emergencyCallHostViewControllerDidRequestDismiss:self];
  }
}

- (void)viewServiceDidTerminateWithError:(id)a3
{
  v7 = a3;
  v4 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(IOUIANCriticalUIEmergencyCallHostViewController *)self delegate];
    [v6 emergencyCallHostViewControllerDidTerminate:self withError:v7];
  }
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
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