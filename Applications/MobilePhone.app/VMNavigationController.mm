@interface VMNavigationController
- (VMNavigationController)init;
- (VMNavigationController)initWithCoder:(id)coder;
- (VMNavigationController)initWithManager:(id)manager;
- (VMNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (VMNavigationController)initWithNibName:(id)name bundle:(id)bundle;
- (VMNavigationController)initWithRootViewController:(id)controller;
@end

@implementation VMNavigationController

- (VMNavigationController)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = VMNavigationController;
  v6 = [(VMNavigationController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (VMNavigationController)init
{
  [(VMNavigationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMNavigationController)initWithCoder:(id)coder
{
  [(VMNavigationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMNavigationController)initWithNibName:(id)name bundle:(id)bundle
{
  [(VMNavigationController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

- (VMNavigationController)initWithRootViewController:(id)controller
{
  [(VMNavigationController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMNavigationController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  [(VMNavigationController *)self doesNotRecognizeSelector:a2, toolbarClass];

  return 0;
}

@end