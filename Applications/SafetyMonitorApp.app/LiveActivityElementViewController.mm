@interface LiveActivityElementViewController
- (NSURL)launchURL;
- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation LiveActivityElementViewController

- (NSURL)launchURL
{
  v3 = sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v16 - v6;
  selfCopy = self;
  sub_1000024E8(v7);

  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v11 = (*(v10 + 48))(v7, 1, v9);
  v12 = 0;
  if (v11 != 1)
  {
    URL._bridgeToObjectiveC()(v11);
    v14 = v13;
    (*(v10 + 8))(v7, v9);
    v12 = v14;
  }

  return v12;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100002EAC();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000038F0(coordinator);
  swift_unknownObjectRelease();
}

- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_100006FFC(v5, v7, bundle);
}

@end