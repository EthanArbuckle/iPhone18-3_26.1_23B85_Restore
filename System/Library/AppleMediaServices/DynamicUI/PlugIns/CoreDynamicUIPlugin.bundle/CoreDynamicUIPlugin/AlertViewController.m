@interface AlertViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin19AlertViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation AlertViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_D294();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_D358();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_D438();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_D4B8();
}

- (_TtC19CoreDynamicUIPlugin19AlertViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_D754();
}

@end