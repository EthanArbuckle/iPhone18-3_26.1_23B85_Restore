@interface ErrorViewController
- (UINavigationItem)navigationItem;
- (_TtC27AppleMediaServicesUIDynamic19ErrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)airplaneModeInquiryDidObserveChange:(id)change;
- (void)loadView;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation ErrorViewController

- (UINavigationItem)navigationItem
{
  selfCopy = self;
  v3 = sub_1CA154FEC();

  return v3;
}

- (void)loadView
{
  selfCopy = self;
  sub_1CA1550C4();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1CA15592C();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1CA1559B0();
}

- (_TtC27AppleMediaServicesUIDynamic19ErrorViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_1CA19C118();
  }

  bundleCopy = bundle;
  sub_1CA1575F0();
}

- (void)airplaneModeInquiryDidObserveChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1CA15766C();
}

@end