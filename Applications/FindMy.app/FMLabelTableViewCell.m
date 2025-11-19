@interface FMLabelTableViewCell
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC6FindMy20FMLabelTableViewCell)initWithCoder:(id)a3;
- (_TtC6FindMy20FMLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)returnKeyPressedWithSender:(id)a3;
- (void)textFieldDidChangeWithSender:(id)a3;
@end

@implementation FMLabelTableViewCell

- (_TtC6FindMy20FMLabelTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
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

  return sub_10036E530(a3, a4, v6);
}

- (_TtC6FindMy20FMLabelTableViewCell)initWithCoder:(id)a3
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

- (void)textFieldDidChangeWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10036ED94(v4);
}

- (void)returnKeyPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10036F1D0();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_10036EF38(v12, location, length, v9, v11);

  return length & 1;
}

@end