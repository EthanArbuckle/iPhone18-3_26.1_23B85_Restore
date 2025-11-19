@interface VMViewController
- (VMViewController)init;
- (VMViewController)initWithCoder:(id)a3;
- (VMViewController)initWithManager:(id)a3;
- (VMViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation VMViewController

- (VMViewController)initWithManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = VMViewController;
  v6 = [(PHViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_manager, a3);
  }

  return v7;
}

- (VMViewController)init
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithCoder:(id)a3
{
  [(VMViewController *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (VMViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  [(VMViewController *)self doesNotRecognizeSelector:a2, a4];

  return 0;
}

@end