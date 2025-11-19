@interface TTRIListDetailNameTableCell
- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithCoder:(id)a3;
- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)textFieldEditingDidBegin;
- (void)textFieldEditingDidEnd;
@end

@implementation TTRIListDetailNameTableCell

- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_1005AAEE8(a3, a4, v6);
}

- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)textFieldEditingDidBegin
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField);
  v3 = self;
  [v2 setAutocapitalizationType:1];
  sub_1005AB51C();
}

- (void)textFieldEditingDidEnd
{
  v2 = self;
  sub_1005AB51C();
}

@end