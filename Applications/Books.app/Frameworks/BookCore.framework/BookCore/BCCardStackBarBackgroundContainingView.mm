@interface BCCardStackBarBackgroundContainingView
- (BCCardStackBarBackgroundContainingView)initWithStatusBarBackgroundController:(id)a3;
- (BCStatusBarBackgroundController)statusBarBackgroundController;
- (void)didAddSubview:(id)a3;
@end

@implementation BCCardStackBarBackgroundContainingView

- (BCCardStackBarBackgroundContainingView)initWithStatusBarBackgroundController:(id)a3
{
  v4 = a3;
  v5 = [(BCCardStackBarBackgroundContainingView *)self init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_statusBarBackgroundController, v4);
  }

  return v6;
}

- (void)didAddSubview:(id)a3
{
  v4 = [(BCCardStackBarBackgroundContainingView *)self statusBarBackgroundController];
  v6 = [v4 effectiveBackgroundView];

  v5 = [v6 superview];

  if (v5 == self)
  {
    [(BCCardStackBarBackgroundContainingView *)self bringSubviewToFront:v6];
  }
}

- (BCStatusBarBackgroundController)statusBarBackgroundController
{
  WeakRetained = objc_loadWeakRetained(&self->_statusBarBackgroundController);

  return WeakRetained;
}

@end