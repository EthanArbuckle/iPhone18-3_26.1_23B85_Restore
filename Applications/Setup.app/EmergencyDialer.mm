@interface EmergencyDialer
- (EmergencyDialerDelegate)delegate;
- (unint64_t)supportedInterfaceOrientations;
- (void)dismiss;
@end

@implementation EmergencyDialer

- (void)dismiss
{
  [(EmergencyDialer *)self dismissViewControllerAnimated:1 completion:0, a2];
  delegate = [(EmergencyDialer *)self delegate];
  [(EmergencyDialerDelegate *)delegate dialerDidDismiss:self];
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = +[UIDevice currentDevice];
  userInterfaceIdiom = [(UIDevice *)v2 userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (EmergencyDialerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end