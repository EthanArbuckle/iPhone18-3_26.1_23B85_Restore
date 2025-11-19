@interface HeadphoneBatteryViewController
- (_TtC20HeadphoneProxService30HeadphoneBatteryViewController)initWithContentView:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation HeadphoneBatteryViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100081988();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100082670(a3);
}

- (_TtC20HeadphoneProxService30HeadphoneBatteryViewController)initWithContentView:(id)a3
{
  v4 = a3;
  v5 = sub_10008BFE4(a3);

  return v5;
}

@end