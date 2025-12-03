@interface AuthViewController
- (AuthViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation AuthViewController

- (AuthViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v7.receiver = self;
  v7.super_class = AuthViewController;
  v4 = [(AuthViewController *)&v7 initWithNibName:name bundle:bundle];
  v5 = v4;
  if (v4)
  {
    [(AuthViewController *)v4 setModalPresentationStyle:2];
  }

  return v5;
}

@end