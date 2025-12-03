@interface VMViewController
- (VMViewController)init;
- (VMViewController)initWithCoder:(id)coder;
- (VMViewController)initWithManager:(id)manager;
- (VMViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation VMViewController

- (VMViewController)initWithManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = VMViewController;
  v6 = [(PHViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, manager);
  }

  return v7;
}

- (VMViewController)init
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithCoder:(id)coder
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithNibName:(id)name bundle:(id)bundle
{
  [(VMViewController *)self doesNotRecognizeSelector:a2, bundle];

  return 0;
}

@end