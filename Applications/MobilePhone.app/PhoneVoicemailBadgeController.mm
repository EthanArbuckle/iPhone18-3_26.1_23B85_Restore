@interface PhoneVoicemailBadgeController
- (void)handleNotification:(id)notification;
@end

@implementation PhoneVoicemailBadgeController

- (void)handleNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  PhoneVoicemailBadgeController.handleNotification(_:)(v7);

  (*(v5 + 8))(v7, v4);
}

@end