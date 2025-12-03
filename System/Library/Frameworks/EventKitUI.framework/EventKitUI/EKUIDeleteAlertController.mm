@interface EKUIDeleteAlertController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation EKUIDeleteAlertController

- (unint64_t)supportedInterfaceOrientations
{
  presentingViewController = [(EKUIDeleteAlertController *)self presentingViewController];

  if (presentingViewController)
  {
    presentingViewController2 = [(EKUIDeleteAlertController *)self presentingViewController];
    supportedInterfaceOrientations = [presentingViewController2 supportedInterfaceOrientations];

    return supportedInterfaceOrientations;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKUIDeleteAlertController;
    return [(EKUIDeleteAlertController *)&v7 supportedInterfaceOrientations];
  }
}

@end