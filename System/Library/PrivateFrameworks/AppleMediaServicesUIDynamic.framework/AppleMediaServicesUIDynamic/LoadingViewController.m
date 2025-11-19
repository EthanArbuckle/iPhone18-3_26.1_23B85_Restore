@interface LoadingViewController
- (UINavigationItem)navigationItem;
- (_TtC27AppleMediaServicesUIDynamic21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1CA16606C();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_1CA166130();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1CA166244();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1CA1662C4();
}

- (_TtC27AppleMediaServicesUIDynamic21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1CA19C118();
  }

  v5 = a4;
  sub_1CA1668DC();
}

@end