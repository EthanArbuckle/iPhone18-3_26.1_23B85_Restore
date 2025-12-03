@interface HardwareOffersViewController
- (_TtC20AppleMediaServicesUI28HardwareOffersViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)closeButtonTapped;
- (void)viewDidLoad;
@end

@implementation HardwareOffersViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BB16E2B0();
}

- (void)closeButtonTapped
{
  selfCopy = self;
  sub_1BB16E78C();
}

- (_TtC20AppleMediaServicesUI28HardwareOffersViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_1BB1DD378();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1BB16E844(v5, v7, bundle);
}

@end