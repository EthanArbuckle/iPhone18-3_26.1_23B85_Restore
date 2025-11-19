@interface MuteControlService
- (void)isUplinkMutedChanged:(id)a3;
@end

@implementation MuteControlService

- (void)isUplinkMutedChanged:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3, v5);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1001A7774();

  (*(v4 + 8))(v7, v3);
}

@end