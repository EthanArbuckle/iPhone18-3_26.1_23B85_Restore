@interface AudioPlayer
- (void)didPlayToEndWithNotification:(id)a3;
- (void)handleAudioSessionInterruption:(id)a3;
@end

@implementation AudioPlayer

- (void)didPlayToEndWithNotification:(id)a3
{
  v3 = a3;

  sub_1004CAC8C(v3);
}

- (void)handleAudioSessionInterruption:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1004CBC68();

  (*(v4 + 8))(v6, v3);
}

@end