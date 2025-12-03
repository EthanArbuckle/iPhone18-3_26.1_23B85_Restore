@interface TTRIAccountsListsRecentlyDeletedCell
- (NSArray)accessibilityCustomActions;
- (_TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell)initWithCoder:(id)coder;
- (_TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)setAccessibilityCustomActions:(id)isa;
@end

@implementation TTRIAccountsListsRecentlyDeletedCell

- (_TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10031EA04(style, identifier, v6);
}

- (_TtC9Reminders36TTRIAccountsListsRecentlyDeletedCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityCustomActions
{
  selfCopy = self;
  v3 = sub_10031EC84();

  if (v3)
  {
    sub_100003540(0, &qword_10076BCE0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)setAccessibilityCustomActions:(id)isa
{
  ObjectType = swift_getObjectType();
  if (isa)
  {
    sub_100003540(0, &qword_10076BCE0);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    selfCopy = self;
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    selfCopy2 = self;
  }

  v8.receiver = self;
  v8.super_class = ObjectType;
  [(TTRIAccountsListsRecentlyDeletedCell *)&v8 setAccessibilityCustomActions:isa];
}

@end