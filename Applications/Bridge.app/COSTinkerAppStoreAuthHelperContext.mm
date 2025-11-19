@interface COSTinkerAppStoreAuthHelperContext
- (UIViewController)presentingViewController;
@end

@implementation COSTinkerAppStoreAuthHelperContext

- (UIViewController)presentingViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_presentingViewController);

  return WeakRetained;
}

@end