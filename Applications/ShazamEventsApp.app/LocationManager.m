@interface LocationManager
- (_TtC15ShazamEventsApp15LocationManager)init;
- (void)locationManager:(id)a3 didUpdateLocations:(id)a4;
@end

@implementation LocationManager

- (_TtC15ShazamEventsApp15LocationManager)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_manager;
  *(&self->super.isa + v4) = [objc_allocWithZone(CLLocationManager) init];
  v5 = OBJC_IVAR____TtC15ShazamEventsApp15LocationManager_checkedThrowingContinuation;
  v6 = sub_100009F70(&qword_10021AB50);
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(LocationManager *)&v8 init];
}

- (void)locationManager:(id)a3 didUpdateLocations:(id)a4
{
  v6 = sub_100009F70(&qword_10021F7D0);
  __chkstk_darwin(v6 - 8);
  v8 = &v16 - v7;
  sub_10005F1E0();
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  [v10 stopUpdatingLocation];
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  type metadata accessor for MainActor();
  v13 = v11;
  v14 = static MainActor.shared.getter();
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = &protocol witness table for MainActor;
  v15[4] = v13;
  v15[5] = v9;
  sub_10013F12C(0, 0, v8, &unk_1001B04F0, v15);
}

@end