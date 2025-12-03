@interface LiveActivityPlatterViewController
- (_TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)endGuestUserModeButtonTapped;
- (void)tapGestureDetectedWithSender:(id)sender;
- (void)viewDidLoad;
@end

@implementation LiveActivityPlatterViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100006804();
}

- (void)tapGestureDetectedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100007370("[%{public}s] Tap gesture detected.", sub_100004464);
}

- (void)endGuestUserModeButtonTapped
{
  selfCopy = self;
  sub_100007024();
}

- (_TtC22GuestUserHandoverSetup33LiveActivityPlatterViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end