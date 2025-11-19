@interface TrafficIncidentViewModel
- (_TtC4Maps24TrafficIncidentViewModel)init;
- (void)didReceiveIncidentUpdateWithNotification:(id)a3;
- (void)incidentsReportingEnablementDidUpdate;
@end

@implementation TrafficIncidentViewModel

- (void)didReceiveIncidentUpdateWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10034D7F4();

  (*(v5 + 8))(v7, v4);
}

- (_TtC4Maps24TrafficIncidentViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)incidentsReportingEnablementDidUpdate
{
  v3 = sub_1000CE6B8(&unk_10190BA50);
  __chkstk_darwin(v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for MainActor();
  v8 = self;

  v9 = static MainActor.shared.getter();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = &protocol witness table for MainActor;
  v10[4] = v7;

  sub_10020AAE4(0, 0, v5, &unk_1011FC530, v10);
}

@end