@interface CardViewPersistentCell
- (_TtC11Diagnostics22CardViewPersistentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)handleLaunchURLWithNotification:(id)notification;
@end

@implementation CardViewPersistentCell

- (void)handleLaunchURLWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1000ABE6C();

  (*(v5 + 8))(v7, v4);
}

- (_TtC11Diagnostics22CardViewPersistentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    identifier = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1000AC2B8(style, identifier, v6);
}

@end