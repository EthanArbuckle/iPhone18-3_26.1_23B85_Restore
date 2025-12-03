@interface APEmergencyCallHostViewController
- (APEmergencyCallHostViewControllerDelegate)delegate;
- (void)dismiss;
@end

@implementation APEmergencyCallHostViewController

- (void)dismiss
{
  [(APEmergencyCallHostViewController *)self dismissViewControllerAnimated:1 completion:0];
  delegate = [(APEmergencyCallHostViewController *)self delegate];
  [delegate emergencyCallHostViewControllerDidDismiss:self];
}

- (APEmergencyCallHostViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end