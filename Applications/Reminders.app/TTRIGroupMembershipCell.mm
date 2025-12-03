@interface TTRIGroupMembershipCell
- (BOOL)accessibilityActivate;
- (NSString)accessibilityHint;
- (NSString)accessibilityLabel;
- (_TtC9Reminders23TTRIGroupMembershipCell)initWithCoder:(id)coder;
- (_TtC9Reminders23TTRIGroupMembershipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIGroupMembershipCell

- (NSString)accessibilityLabel
{
  selfCopy = self;
  textLabel = [(TTRIGroupMembershipCell *)selfCopy textLabel];
  if (textLabel && (v4 = textLabel, v5 = [textLabel text], v4, v5))
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v6 = String._bridgeToObjectiveC()();

    v7 = v6;
  }

  else
  {

    v7 = 0;
  }

  return v7;
}

- (NSString)accessibilityHint
{
  selfCopy = self;
  sub_1003FA220();
  v4 = v3;

  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v3 = sub_1003FA584();

  return v3 & 1;
}

- (_TtC9Reminders23TTRIGroupMembershipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    *&self->ttriAccessibilityDelegate[OBJC_IVAR____TtC9Reminders23TTRIGroupMembershipCell_ttriAccessibilityDelegate] = 0;
    swift_unknownObjectWeakInit();
    v6 = String._bridgeToObjectiveC()();
  }

  else
  {
    *&self->ttriAccessibilityDelegate[OBJC_IVAR____TtC9Reminders23TTRIGroupMembershipCell_ttriAccessibilityDelegate] = 0;
    swift_unknownObjectWeakInit();
    v6 = 0;
  }

  v9.receiver = self;
  v9.super_class = type metadata accessor for TTRIGroupMembershipCell();
  v7 = [(TTRIGroupMembershipCell *)&v9 initWithStyle:style reuseIdentifier:v6];

  return v7;
}

- (_TtC9Reminders23TTRIGroupMembershipCell)initWithCoder:(id)coder
{
  *&self->ttriAccessibilityDelegate[OBJC_IVAR____TtC9Reminders23TTRIGroupMembershipCell_ttriAccessibilityDelegate] = 0;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for TTRIGroupMembershipCell();
  coderCopy = coder;
  v6 = [(TTRIGroupMembershipCell *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end