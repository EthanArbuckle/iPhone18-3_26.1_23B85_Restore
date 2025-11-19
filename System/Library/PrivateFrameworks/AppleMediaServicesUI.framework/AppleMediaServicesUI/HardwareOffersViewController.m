@interface HardwareOffersViewController
- (_TtC20AppleMediaServicesUI28HardwareOffersViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)closeButtonTapped;
- (void)viewDidLoad;
@end

@implementation HardwareOffersViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1BB16E2B0();
}

- (void)closeButtonTapped
{
  v2 = self;
  sub_1BB16E78C();
}

- (_TtC20AppleMediaServicesUI28HardwareOffersViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1BB1DD378();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1BB16E844(v5, v7, a4);
}

@end