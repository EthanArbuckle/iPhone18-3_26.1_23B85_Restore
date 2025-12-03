@interface TTRIListDetailNameTableCell
- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithCoder:(id)coder;
- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)textFieldEditingDidBegin;
- (void)textFieldEditingDidEnd;
@end

@implementation TTRIListDetailNameTableCell

- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_1005AAEE8(style, identifier, v6);
}

- (_TtC9Reminders27TTRIListDetailNameTableCell)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)textFieldEditingDidBegin
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC9Reminders27TTRIListDetailNameTableCell_nameTextField);
  selfCopy = self;
  [v2 setAutocapitalizationType:1];
  sub_1005AB51C();
}

- (void)textFieldEditingDidEnd
{
  selfCopy = self;
  sub_1005AB51C();
}

@end