@interface EKUIDeleteAlertController
- (unint64_t)supportedInterfaceOrientations;
@end

@implementation EKUIDeleteAlertController

- (unint64_t)supportedInterfaceOrientations
{
  v3 = [(EKUIDeleteAlertController *)self presentingViewController];

  if (v3)
  {
    v4 = [(EKUIDeleteAlertController *)self presentingViewController];
    v5 = [v4 supportedInterfaceOrientations];

    return v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKUIDeleteAlertController;
    return [(EKUIDeleteAlertController *)&v7 supportedInterfaceOrientations];
  }
}

@end