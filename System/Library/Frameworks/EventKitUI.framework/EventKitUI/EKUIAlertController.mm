@interface EKUIAlertController
- (unint64_t)supportedInterfaceOrientations;
- (void)setProhibitsRotation:(BOOL)rotation;
@end

@implementation EKUIAlertController

- (unint64_t)supportedInterfaceOrientations
{
  if (self->_prohibitsRotation)
  {
    view = [(EKUIAlertController *)self view];
    window = [view window];
    windowScene = [window windowScene];
    interfaceOrientation = [windowScene interfaceOrientation];

    return 1 << interfaceOrientation;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = EKUIAlertController;
    return [(EKUIAlertController *)&v7 supportedInterfaceOrientations];
  }
}

- (void)setProhibitsRotation:(BOOL)rotation
{
  if (self->_prohibitsRotation != rotation)
  {
    self->_prohibitsRotation = rotation;
    [(EKUIAlertController *)self setNeedsUpdateOfSupportedInterfaceOrientations];
  }
}

@end