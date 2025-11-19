@interface CarWaypointsOverviewCardViewController
- (NSArray)waypoints;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)a3;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)a3 waypoints:(id)a4;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtP4Maps46CarWaypointsOverviewCardViewControllerDelegate_)delegate;
- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6;
- (void)setWaypoints:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation CarWaypointsOverviewCardViewController

- (_TtP4Maps46CarWaypointsOverviewCardViewControllerDelegate_)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSArray)waypoints
{
  sub_100014C84(0, &qword_101914500);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setWaypoints:(id)a3
{
  sub_100014C84(0, &qword_101914500);
  *(self + OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;

  sub_10024B728();
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)a3
{
  sub_100014C84(0, &qword_101914500);
  swift_unknownObjectRetain();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [(CarWaypointsOverviewCardViewController *)self initWithDelegate:a3 waypoints:isa];

  swift_unknownObjectRelease();
  return v6;
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)a3 waypoints:(id)a4
{
  sub_100014C84(0, &qword_101914500);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10024F1D8(v5, v4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarWaypointsOverviewCardViewController(0);
  v4 = v7.receiver;
  [(CarWaypointsOverviewCardViewController *)&v7 viewDidAppear:v3];
  v5 = [objc_opt_self() sharedService];
  if (v5)
  {
    v6 = v5;
    [v5 registerObserver:v4];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = objc_opt_self();
  v6 = self;
  v7 = [v5 sharedService];
  if (v7)
  {
    v8 = v7;
    [v7 unregisterObserver:v6];

    v9.receiver = v6;
    v9.super_class = type metadata accessor for CarWaypointsOverviewCardViewController(0);
    [(CarWaypointsOverviewCardViewController *)&v9 viewDidAppear:v3];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationService:(id)a3 didUpdateDisplayETA:(id)a4 remainingDistance:(id)a5 batteryChargeInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10024F640(a4);
}

@end