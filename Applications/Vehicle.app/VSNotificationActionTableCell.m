@interface VSNotificationActionTableCell
- (_TtC7Vehicle29VSNotificationActionTableCell)initWithCoder:(id)a3;
- (_TtC7Vehicle29VSNotificationActionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation VSNotificationActionTableCell

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v6 = self;
  sub_10001F920(a3, a4);
}

- (_TtC7Vehicle29VSNotificationActionTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
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
  v9 = [(VSTableCell *)&v11 initWithStyle:a3 reuseIdentifier:v7];

  return v9;
}

- (_TtC7Vehicle29VSNotificationActionTableCell)initWithCoder:(id)a3
{
  v4 = self + OBJC_IVAR____TtC7Vehicle29VSNotificationActionTableCell_notificationAction;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for VSNotificationActionTableCell();
  v5 = a3;
  v6 = [(VSTableCell *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end