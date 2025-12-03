@interface TTRIListDetailBadgeCellTableCell
- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithCoder:(id)coder;
- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)layoutSubviews;
@end

@implementation TTRIListDetailBadgeCellTableCell

- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1001DEE10(style, identifier, v6);
}

- (_TtC9Reminders32TTRIListDetailBadgeCellTableCell)initWithCoder:(id)coder
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