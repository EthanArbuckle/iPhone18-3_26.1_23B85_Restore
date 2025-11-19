@interface MeteringSession
- (void)handleRecordingStateChanged:(id)a3;
@end

@implementation MeteringSession

- (void)handleRecordingStateChanged:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100050DC0(v8);

  (*(v4 + 8))(v8, v3);
}

@end