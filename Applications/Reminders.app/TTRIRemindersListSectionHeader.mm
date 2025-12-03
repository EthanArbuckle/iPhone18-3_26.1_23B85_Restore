@interface TTRIRemindersListSectionHeader
- (BOOL)floating;
- (_TtC9Reminders30TTRIRemindersListSectionHeader)initWithReuseIdentifier:(id)identifier;
- (void)didTap:(id)tap;
- (void)setAccessibilityHint:(id)hint;
- (void)setFloating:(BOOL)floating;
@end

@implementation TTRIRemindersListSectionHeader

- (_TtC9Reminders30TTRIRemindersListSectionHeader)initWithReuseIdentifier:(id)identifier
{
  if (identifier)
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

- (void)setFloating:(BOOL)floating
{
  selfCopy = self;
  sub_1002992EC(floating);
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_10029A3EC();
}

- (void)setAccessibilityHint:(id)hint
{
  ObjectType = swift_getObjectType();
  if (hint)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    hint = String._bridgeToObjectiveC()();
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIRemindersListSectionHeader *)&v8 setAccessibilityHint:hint];
}

@end