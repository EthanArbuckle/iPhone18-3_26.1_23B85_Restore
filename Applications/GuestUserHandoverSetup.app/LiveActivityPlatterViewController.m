@interface LiveActivityPlatterViewController
- (_TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)endGuestUserModeButtonTapped;
- (void)tapGestureDetectedWithSender:(id)a3;
- (void)viewDidLoad;
@end

@implementation LiveActivityPlatterViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100006804();
}

- (void)tapGestureDetectedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100007370("[%{public}s] Tap gesture detected.", sub_100004464);
}

- (void)endGuestUserModeButtonTapped
{
  v2 = self;
  sub_100007024();
}

- (_TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end