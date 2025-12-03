@interface LinkPreviewLoadingOperation
- (void)linkPreviewDidFinishLoadingWithNotification:(id)notification;
@end

@implementation LinkPreviewLoadingOperation

- (void)linkPreviewDidFinishLoadingWithNotification:(id)notification
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  LinkPreviewLoadingOperation.linkPreviewDidFinishLoading(notification:)();

  (*(v4 + 8))(v6, v3);
}

@end