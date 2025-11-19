@interface ErrorViewController
- (UINavigationItem)navigationItem;
- (_TtC26AMSEngagementViewExtension19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ErrorViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1000018AC();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_10000194C();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100001A24();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_100001AA4();
}

- (_TtC26AMSEngagementViewExtension19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100005FDC();
  }

  v5 = a4;
  sub_100002100();
}

@end