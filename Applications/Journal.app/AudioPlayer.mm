@interface AudioPlayer
- (void)didPlayToEndWithNotification:(id)notification;
- (void)handleAudioSessionInterruption:(id)interruption;
@end

@implementation AudioPlayer

- (void)didPlayToEndWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_1004CAC8C(notificationCopy);
}

- (void)handleAudioSessionInterruption:(id)interruption
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