@interface TTRIRemindersListTipCell
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)coder;
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TTRIRemindersListTipCell

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (identifier)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    identifier = String._bridgeToObjectiveC()();
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v12 = [(TTRIRemindersListTipCell *)&v15 initWithStyle:style reuseIdentifier:identifier];

  (*(v9 + 104))(v11, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v8);
  v13 = v12;
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v9 + 8))(v11, v8);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v13;
}

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end