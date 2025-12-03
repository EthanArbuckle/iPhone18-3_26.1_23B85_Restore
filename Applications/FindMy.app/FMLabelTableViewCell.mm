@interface FMLabelTableViewCell
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC6FindMy20FMLabelTableViewCell)initWithCoder:(id)coder;
- (_TtC6FindMy20FMLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)returnKeyPressedWithSender:(id)sender;
- (void)textFieldDidChangeWithSender:(id)sender;
@end

@implementation FMLabelTableViewCell

- (_TtC6FindMy20FMLabelTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
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

  return sub_10036E530(style, identifier, v6);
}

- (_TtC6FindMy20FMLabelTableViewCell)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textField) = 0;
  v4 = self + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_characterLimit;
  *v4 = 0;
  v4[8] = 1;
  *&self->textField[OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy20FMLabelTableViewCell_textFieldIsEnabled) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)textFieldDidChangeWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10036ED94(senderCopy);
}

- (void)returnKeyPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10036F1D0();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_10036EF38(fieldCopy, location, length, v9, v11);

  return length & 1;
}

@end