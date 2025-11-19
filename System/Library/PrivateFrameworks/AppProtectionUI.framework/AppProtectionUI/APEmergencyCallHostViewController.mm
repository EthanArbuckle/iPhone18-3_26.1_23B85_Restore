@interface APEmergencyCallHostViewController
- (APEmergencyCallHostViewControllerDelegate)delegate;
- (void)dismiss;
@end

@implementation APEmergencyCallHostViewController

- (void)dismiss
{
  [(APEmergencyCallHostViewController *)self dismissViewControllerAnimated:1 completion:0];
  v3 = [(APEmergencyCallHostViewController *)self delegate];
  [v3 emergencyCallHostViewControllerDidDismiss:self];
}

- (APEmergencyCallHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end