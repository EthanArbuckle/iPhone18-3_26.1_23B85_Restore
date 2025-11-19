@interface TTRIRemindersListSectionHeader
- (BOOL)floating;
- (_TtC9Reminders30TTRIRemindersListSectionHeader)initWithReuseIdentifier:(id)a3;
- (void)didTap:(id)a3;
- (void)setAccessibilityHint:(id)a3;
- (void)setFloating:(BOOL)a3;
@end

@implementation TTRIRemindersListSectionHeader

- (_TtC9Reminders30TTRIRemindersListSectionHeader)initWithReuseIdentifier:(id)a3
{
  if (a3)
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  return sub_1002982D0(v3, v4);
}

- (BOOL)floating
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(TTRIRemindersListSectionHeader *)&v3 floating];
}

- (void)setFloating:(BOOL)a3
{
  v4 = self;
  sub_1002992EC(a3);
}

- (void)didTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10029A3EC();
}

- (void)setAccessibilityHint:(id)a3
{
  ObjectType = swift_getObjectType();
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = self;
    a3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v7 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListSectionHeader *)&v8 setAccessibilityHint:a3];
}

@end