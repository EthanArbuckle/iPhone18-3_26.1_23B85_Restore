@interface TTRIRemindersListTipCell
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)a3;
- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
@end

@implementation TTRIRemindersListTipCell

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  ObjectType = swift_getObjectType();
  v8 = type metadata accessor for TTRITableCellSeparatorInsetType();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = String._bridgeToObjectiveC()();
  }

  v15.receiver = self;
  v15.super_class = ObjectType;
  v12 = [(TTRIRemindersListTipCell *)&v15 initWithStyle:a3 reuseIdentifier:a4];

  (*(v9 + 104))(v11, enum case for TTRITableCellSeparatorInsetType.noSeparator(_:), v8);
  v13 = v12;
  UITableViewCell.setSeparatorInsetType(_:)();
  (*(v9 + 8))(v11, v8);
  UITableViewCell.ttr_registerForRemindersListCellBackgroundConfiguration()();

  return v13;
}

- (_TtC9Reminders24TTRIRemindersListTipCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

@end