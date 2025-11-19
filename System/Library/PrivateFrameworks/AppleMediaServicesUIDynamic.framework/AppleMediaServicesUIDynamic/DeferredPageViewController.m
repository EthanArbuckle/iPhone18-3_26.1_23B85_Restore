@interface DeferredPageViewController
- (UINavigationItem)navigationItem;
- (_TtC27AppleMediaServicesUIDynamic26DeferredPageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)cancelButtonAction;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DeferredPageViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1CA13365C();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_1CA13372C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1CA1338EC();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1CA133970();
}

- (void)cancelButtonAction
{
  v2 = self;
  sub_1CA134C54();
}

- (_TtC27AppleMediaServicesUIDynamic26DeferredPageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1CA19C118();
  }

  v5 = a4;
  sub_1CA135380();
}

@end