@interface BCCardStackBarBackgroundContainingView
- (BCCardStackBarBackgroundContainingView)initWithStatusBarBackgroundController:(id)controller;
- (BCStatusBarBackgroundController)statusBarBackgroundController;
- (void)didAddSubview:(id)subview;
@end

@implementation BCCardStackBarBackgroundContainingView

- (BCCardStackBarBackgroundContainingView)initWithStatusBarBackgroundController:(id)controller
{
  controllerCopy = controller;
  v5 = [(BCCardStackBarBackgroundContainingView *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_statusBarBackgroundController, controllerCopy);
  }

  return v6;
}

- (void)didAddSubview:(id)subview
{
  statusBarBackgroundController = [(BCCardStackBarBackgroundContainingView *)self statusBarBackgroundController];
  effectiveBackgroundView = [statusBarBackgroundController effectiveBackgroundView];

  superview = [effectiveBackgroundView superview];

  if (superview == self)
  {
    [(BCCardStackBarBackgroundContainingView *)self bringSubviewToFront:effectiveBackgroundView];
  }
}

- (BCStatusBarBackgroundController)statusBarBackgroundController
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarBackgroundController);

  return WeakRetained;
}

@end