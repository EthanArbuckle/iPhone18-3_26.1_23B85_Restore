@interface TTRIListDetailBadgeCellTableCell
- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithCoder:(id)a3;
- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)layoutSubviews;
@end

@implementation TTRIListDetailBadgeCellTableCell

- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return sub_1001DEE10(a3, a4, v6);
}

- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(TTRIListDetailBadgeCellTableCell *)&v3 layoutSubviews];
  [v2 setSeparatorStyle:{0, v3.receiver, v3.super_class}];
}

@end