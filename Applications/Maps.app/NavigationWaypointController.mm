@interface NavigationWaypointController
- (NSArray)displayedWaypoints;
- (_TtC4Maps28NavigationWaypointController)init;
- (void)insertWaypoint:(id)waypoint;
- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index;
- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState;
- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason;
- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason;
- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic;
- (void)navigationService:(id)service failedRerouteWithErrorCode:(int64_t)code;
- (void)navigationServiceWillReroute:;
- (void)removeWaypointAt:(int64_t)at;
- (void)replaceWaypoint:(id)waypoint with:(id)with;
- (void)setDisplayedWaypoints:(id)waypoints;
- (void)setOriginWaypoint:(id)waypoint;
@end

@implementation NavigationWaypointController

- (NSArray)displayedWaypoints
{
  swift_beginAccess();
  sub_100014C84(0, &qword_101914500);

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)setDisplayedWaypoints:(id)waypoints
{
  sub_100014C84(0, &qword_101914500);
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = OBJC_IVAR____TtC4Maps28NavigationWaypointController_displayedWaypoints;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (void)setOriginWaypoint:(id)waypoint
{
  v4 = *(self + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint);
  *(self + OBJC_IVAR____TtC4Maps28NavigationWaypointController_originWaypoint) = waypoint;
  waypointCopy = waypoint;
}

- (void)insertWaypoint:(id)waypoint
{
  waypointCopy = waypoint;
  selfCopy = self;
  sub_1002295BC(waypointCopy);
}

- (void)replaceWaypoint:(id)waypoint with:(id)with
{
  waypointCopy = waypoint;
  withCopy = with;
  selfCopy = self;
  sub_100229828(waypointCopy, withCopy);
}

- (void)removeWaypointAt:(int64_t)at
{
  selfCopy = self;
  sub_100229B8C(at);
}

- (_TtC4Maps28NavigationWaypointController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)navigationService:(id)service didSwitchToNewTransportType:(int)type newRoute:(id)route traffic:(id)traffic
{
  v8 = *&type;
  serviceCopy = service;
  routeCopy = route;
  trafficCopy = traffic;
  selfCopy = self;
  sub_10022B5CC(service, v8);
}

- (void)navigationService:(id)service didReroute:(id)reroute rerouteReason:(unint64_t)reason
{
  serviceCopy = service;
  rerouteCopy = reroute;
  selfCopy = self;
  sub_10022AB64(service, reroute, reason);
}

- (void)navigationService:(id)service failedRerouteWithErrorCode:(int64_t)code
{
  serviceCopy = service;
  selfCopy = self;
  sub_10022AE04(service, code);
}

- (void)navigationService:(id)service didChangeFromState:(unint64_t)state toState:(unint64_t)toState
{
  serviceCopy = service;
  selfCopy = self;
  sub_10022AF94(service);
}

- (void)navigationService:(id)service didResumeNavigatingFromWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index reason:(unint64_t)reason
{
  serviceCopy = service;
  waypointCopy = waypoint;
  selfCopy = self;
  sub_10022B830(service, waypoint, index);
}

- (void)navigationService:(id)service didArriveAtWaypoint:(id)waypoint endOfLegIndex:(unint64_t)index
{
  serviceCopy = service;
  waypointCopy = waypoint;
  selfCopy = self;
  sub_10022B1D8(service, waypoint, index);
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