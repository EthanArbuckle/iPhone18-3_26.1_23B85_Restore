@interface LocationManager
- (_TtC16EventViewService15LocationManager)init;
- (void)locationManager:(id)manager didUpdateLocations:(id)locations;
@end

@implementation LocationManager

- (_TtC16EventViewService15LocationManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC16EventViewService15LocationManager_manager;
  *(&self->super.isa + v4) = [objc_allocWithZone(CLLocationManager) init];
  v5 = OBJC_IVAR____TtC16EventViewService15LocationManager_checkedThrowingContinuation;
  v6 = sub_1000024C4(&qword_100222550);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(LocationManager *)&v8 init];
}

- (void)locationManager:(id)manager didUpdateLocations:(id)locations
{
  v6 = sub_1000024C4(&qword_100227360);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_1000311DC();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  managerCopy = manager;
  selfCopy = self;
  [managerCopy stopUpdatingLocation];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = selfCopy;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = v9;
  sub_1001904E0(0, 0, v8, &unk_1001B5D90, v15);
}

@end