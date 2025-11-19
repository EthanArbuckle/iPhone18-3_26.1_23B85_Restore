@interface NavigationWaypointController
- (NSArray)displayedWaypoints;
- (_TtC4Maps28NavigationWaypointController)init;
- (void)insertWaypoint:(id)a3;
- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5;
- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5;
- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5;
- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6;
- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6;
- (void)navigationService:(id)a3 failedRerouteWithErrorCode:(int64_t)a4;
- (void)navigationServiceWillReroute:;
- (void)removeWaypointAt:(int64_t)a3;
- (void)replaceWaypoint:(id)a3 with:(id)a4;
- (void)setDisplayedWaypoints:(id)a3;
- (void)setOriginWaypoint:(id)a3;
@end

@implementation NavigationWaypointController

- (NSArray)displayedWaypoints
{
  swift_beginAccess();
  sub_100014C84(0, &qword_101914500);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDisplayedWaypoints:(id)a3
{
  sub_100014C84(0, &qword_101914500);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setOriginWaypoint:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint);
  *(self + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint) = a3;
  v3 = a3;
}

- (void)insertWaypoint:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002295BC(v4);
}

- (void)replaceWaypoint:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100229828(v6, v7);
}

- (void)removeWaypointAt:(int64_t)a3
{
  v4 = self;
  sub_100229B8C(a3);
}

- (_TtC4Maps28NavigationWaypointController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationService:(id)a3 didSwitchToNewTransportType:(int)a4 newRoute:(id)a5 traffic:(id)a6
{
  v8 = *&a4;
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v14 = self;
  sub_10022B5CC(a3, v8);
}

- (void)navigationService:(id)a3 didReroute:(id)a4 rerouteReason:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10022AB64(a3, a4, a5);
}

- (void)navigationService:(id)a3 failedRerouteWithErrorCode:(int64_t)a4
{
  v7 = a3;
  v8 = self;
  sub_10022AE04(a3, a4);
}

- (void)navigationService:(id)a3 didChangeFromState:(unint64_t)a4 toState:(unint64_t)a5
{
  v7 = a3;
  v8 = self;
  sub_10022AF94(a3);
}

- (void)navigationService:(id)a3 didResumeNavigatingFromWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5 reason:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = self;
  sub_10022B830(a3, a4, a5);
}

- (void)navigationService:(id)a3 didArriveAtWaypoint:(id)a4 endOfLegIndex:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_10022B1D8(a3, a4, a5);
}

- (void)navigationServiceWillReroute:
{
  if (qword_1019065D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100021540(v0, qword_101914480);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "navigationServiceWillReroute", v2, 2u);
  }
}

@end