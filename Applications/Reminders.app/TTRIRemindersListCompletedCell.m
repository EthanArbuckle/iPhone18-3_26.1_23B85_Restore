@interface TTRIRemindersListCompletedCell
- (NSArray)accessibilityElements;
- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithCoder:(id)a3;
- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIRemindersListCompletedCell

- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = String._bridgeToObjectiveC()();
  }

  v11.receiver = self;
  v11.super_class = ObjectType;
  v8 = [(TTRIRemindersListCompletedCell *)&v11 initWithStyle:a3 reuseIdentifier:a4];

  v9 = v8;
  [(TTRIRemindersListCompletedCell *)v9 _setIgnoresMultipleSelectionDuringEditing:1];
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v9;
}

- (_TtC9Reminders30TTRIRemindersListCompletedCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityElements
{
  v2 = self;
  v3 = [(TTRIRemindersListCompletedCell *)v2 contentView];
  v4 = [v3 accessibilityElements];

  if (v4)
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