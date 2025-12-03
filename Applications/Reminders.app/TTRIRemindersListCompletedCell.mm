@interface TTRIRemindersListCompletedCell
- (NSArray)accessibilityElements;
- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithCoder:(id)coder;
- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIRemindersListCompletedCell

- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = String._bridgeToObjectiveC()();
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = [(TTRIRemindersListCompletedCell *)&v11 initWithStyle:style reuseIdentifier:identifier];

  v9 = v8;
  [(TTRIRemindersListCompletedCell *)v9 _setIgnoresMultipleSelectionDuringEditing:1];
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v9;
}

- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityElements
{
  selfCopy = self;
  contentView = [(TTRIRemindersListCompletedCell *)selfCopy contentView];
  accessibilityElements = [contentView accessibilityElements];

  if (accessibilityElements)
  {
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v5.super.isa = 0;
  }

  return v5.super.isa;
}

@end