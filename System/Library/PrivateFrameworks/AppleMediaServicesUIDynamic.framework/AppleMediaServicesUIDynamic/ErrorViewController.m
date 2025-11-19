@interface ErrorViewController
- (UINavigationItem)navigationItem;
- (_TtC27AppleMediaServicesUIDynamic19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)airplaneModeInquiryDidObserveChange:(id)a3;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ErrorViewController

- (UINavigationItem)navigationItem
{
  v2 = self;
  v3 = sub_1CA154FEC();

  return v3;
}

- (void)loadView
{
  v2 = self;
  sub_1CA1550C4();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1CA15592C();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1CA1559B0();
}

- (_TtC27AppleMediaServicesUIDynamic19ErrorViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_1CA19C118();
  }

  v5 = a4;
  sub_1CA1575F0();
}

- (void)airplaneModeInquiryDidObserveChange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1CA15766C();
}

@end