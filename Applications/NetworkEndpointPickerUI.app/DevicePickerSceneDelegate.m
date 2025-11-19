@interface DevicePickerSceneDelegate
- (_TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate)init;
- (void)devicePickerDidCancelWithReason:(int64_t)a3;
- (void)didSucceedWithEndpointUUID:(id)a3 agentUUID:(id)a4;
- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5;
- (void)sceneDidDisconnect:(id)a3;
- (void)sendClientDebugError:(int64_t)a3;
- (void)setWindow:(id)a3;
@end

@implementation DevicePickerSceneDelegate

- (void)setWindow:(id)a3
{
  v4 = *(&self->super.super.isa + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window);
  *(&self->super.super.isa + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window) = a3;
  v3 = a3;
}

- (void)scene:(id)a3 willConnectToSession:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_100015928(v8);
}

- (void)sceneDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100013CEC(v4);
}

- (_TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate)init
{
  v3 = OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_log;
  if (qword_100029DD8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  v5 = sub_100008924(v4, qword_10002AD40);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  *(&self->super.super.isa + OBJC_IVAR____TtC23NetworkEndpointPickerUI25DevicePickerSceneDelegate_window) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DevicePickerSceneDelegate();
  return [(DevicePickerSceneDelegate *)&v7 init];
}

- (void)devicePickerDidCancelWithReason:(int64_t)a3
{
  v4 = self;
  sub_1000140DC(a3);
}

- (void)didSucceedWithEndpointUUID:(id)a3 agentUUID:(id)a4
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v13 - v10;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = *(v5 + 8);
  v12(v9, v4);
  v12(v11, v4);
}

- (void)sendClientDebugError:(int64_t)a3
{
  v4 = self;
  sub_100014374(a3);
}

@end