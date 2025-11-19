@interface AuthViewController
- (AuthViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation AuthViewController

- (AuthViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = AuthViewController;
  v4 = [(AuthViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(AuthViewController *)v4 setModalPresentationStyle:2];
  }

  return v5;
}

@end