@interface LiveActivityDynamicIslandViewController
- (NSString)associatedAppBundleIdentifier;
- (NSURL)launchURL;
- (_TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)endGuestUserModeButtonTapped;
- (void)launchAppGestureDetectedWithSender:(id)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation LiveActivityDynamicIslandViewController

- (NSString)associatedAppBundleIdentifier
{
  if (*(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier + 8))
  {
    v2 = *(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier);
    v3 = *(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_associatedAppBundleIdentifier + 8);

    v4 = String._bridgeToObjectiveC()();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSURL)launchURL
{
  v3 = sub_10000280C(&qword_100033EF8, &qword_10001F988);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v14 - v5;
  sub_1000181AC(self + OBJC_IVAR____TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController_launchURL, &v14 - v5);
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    (*(v8 + 8))(v6, v7);
    v10 = v12;
  }

  return v10;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100015B78();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100015F64(a3);
  swift_unknownObjectRelease();
}

- (void)endGuestUserModeButtonTapped
{
  v2 = self;
  sub_1000178D4();
}

- (void)launchAppGestureDetectedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100018030("[%{public}s] Tap leading accessory gesture detected.", sub_100004464);
}

- (_TtC22GuestUserHandoverSetup39LiveActivityDynamicIslandViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end