@interface LoadingViewController
- (UINavigationItem)navigationItem;
- (_TtC20StoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation LoadingViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_BBF60();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_BC024();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_BC138();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_BC1B8();
}

- (_TtC20StoreDynamicUIPlugin21LoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_13BB84();
  }

  v5 = a4;
  sub_BC7D0();
}

@end