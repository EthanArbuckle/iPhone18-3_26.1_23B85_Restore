@interface VSNotificationActionTableCell
- (_TtC7Vehicle29VSNotificationActionTableCell)initWithCoder:(id)coder;
- (_TtC7Vehicle29VSNotificationActionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
@end

@implementation VSNotificationActionTableCell

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  selfCopy = self;
  sub_10001F920(highlighted, animated);
}

- (_TtC7Vehicle29VSNotificationActionTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = self + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
    *v6 = 0u;
    *(v6 + 1) = 0u;
    *(v6 + 2) = 0u;
    v6[48] = 0;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = 0;
    v8 = self + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
    *v8 = 0u;
    *(v8 + 1) = 0u;
    *(v8 + 2) = 0u;
    v8[48] = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for VSNotificationActionTableCell();
  v9 = [(VSTableCell *)&v11 initWithStyle:style reuseIdentifier:v7];

  return v9;
}

- (_TtC7Vehicle29VSNotificationActionTableCell)initWithCoder:(id)coder
{
  v4 = self + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VSNotificationActionTableCell();
  coderCopy = coder;
  v6 = [(VSTableCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end