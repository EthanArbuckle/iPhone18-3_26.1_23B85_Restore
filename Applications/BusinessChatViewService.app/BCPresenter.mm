@interface BCPresenter
- (UIViewController)presentingViewController;
@end

@implementation BCPresenter

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end