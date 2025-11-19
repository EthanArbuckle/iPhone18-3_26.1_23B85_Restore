@interface EKUIAlertController
- (unint64_t)supportedInterfaceOrientations;
- (void)setProhibitsRotation:(BOOL)a3;
@end

@implementation EKUIAlertController

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_prohibitsRotation)
  {
    v2 = [(EKUIAlertController *)self view];
    v3 = [v2 window];
    v4 = [v3 windowScene];
    v5 = [v4 interfaceOrientation];

    return 1 << v5;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKUIAlertController;
    return [(EKUIAlertController *)&v7 supportedInterfaceOrientations];
  }
}

- (void)setProhibitsRotation:(BOOL)a3
{
  if (self->_prohibitsRotation != a3)
  {
    self->_prohibitsRotation = a3;
    [(EKUIAlertController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

@end