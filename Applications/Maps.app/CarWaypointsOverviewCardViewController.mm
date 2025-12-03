@interface CarWaypointsOverviewCardViewController
- (NSArray)waypoints;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)delegate;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)delegate waypoints:(id)waypoints;
- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtP4Maps46CarWaypointsOverviewCardViewControllerDelegate_)delegate;
- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info;
- (void)setWaypoints:(id)waypoints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
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

- (void)setWaypoints:(id)waypoints
{
  sub_100014C84(0, &qword_101914500);
  *(self + OBJC_IVAR____TtC4Maps38CarWaypointsOverviewCardViewController_waypoints) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;

  sub_10024B728();
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)delegate
{
  sub_100014C84(0, &qword_101914500);
  swift_unknownObjectRetain();
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = [(CarWaypointsOverviewCardViewController *)self initWithDelegate:delegate waypoints:isa];

  swift_unknownObjectRelease();
  return v6;
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithDelegate:(id)delegate waypoints:(id)waypoints
{
  sub_100014C84(0, &qword_101914500);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = swift_unknownObjectRetain();
  v6 = sub_10024F1D8(v5, v4);
  swift_unknownObjectRelease();
  return v6;
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CarWaypointsOverviewCardViewController(0);
  v4 = v7.receiver;
  [(CarWaypointsOverviewCardViewController *)&v7 viewDidAppear:appearCopy];
  sharedService = [objc_opt_self() sharedService];
  if (sharedService)
  {
    v6 = sharedService;
    [sharedService registerObserver:v4];
  }

  else
  {
    __break(1u);
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5 = objc_opt_self();
  selfCopy = self;
  sharedService = [v5 sharedService];
  if (sharedService)
  {
    v8 = sharedService;
    [sharedService unregisterObserver:selfCopy];

    v9.receiver = selfCopy;
    v9.super_class = type metadata accessor for CarWaypointsOverviewCardViewController(0);
    [(CarWaypointsOverviewCardViewController *)&v9 viewDidAppear:disappearCopy];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC4Maps38CarWaypointsOverviewCardViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationService:(id)service didUpdateDisplayETA:(id)a remainingDistance:(id)distance batteryChargeInfo:(id)info
{
  serviceCopy = service;
  aCopy = a;
  distanceCopy = distance;
  infoCopy = info;
  selfCopy = self;
  sub_10024F640(a);
}

@end