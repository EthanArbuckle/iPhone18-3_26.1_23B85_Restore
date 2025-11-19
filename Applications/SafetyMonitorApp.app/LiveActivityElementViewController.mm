@interface LiveActivityElementViewController
- (NSURL)launchURL;
- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation LiveActivityElementViewController

- (NSURL)launchURL
{
  v3 = sub_100007B4C(&qword_100019AC8, &qword_1000116D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8, v5);
  v7 = &v16 - v6;
  v8 = self;
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
  v2 = self;
  sub_100002EAC();
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_1000038F0(a3);
  swift_unknownObjectRelease();
}

- (_TtC16SafetyMonitorApp33LiveActivityElementViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_100006FFC(v5, v7, a4);
}

@end