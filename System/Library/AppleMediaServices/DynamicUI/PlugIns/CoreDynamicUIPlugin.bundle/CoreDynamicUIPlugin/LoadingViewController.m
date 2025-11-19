@interface LoadingViewController
- (UINavigationItem)navigationItem;
- (_TtC19CoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_4C730();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_4C7F4();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_4C908();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_4C988();
}

- (_TtC19CoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_8F5F4();
  }

  v5 = a4;
  sub_4CFA0();
}

@end