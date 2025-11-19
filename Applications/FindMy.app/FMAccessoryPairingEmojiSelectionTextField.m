@interface FMAccessoryPairingEmojiSelectionTextField
- (BOOL)isSelected;
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField)init;
- (_TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
@end

@implementation FMAccessoryPairingEmojiSelectionTextField

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionTextField();
  return [(FMAccessoryPairingEmojiSelectionTextField *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionTextField();
  v4 = v5.receiver;
  [(FMAccessoryPairingEmojiSelectionTextField *)&v5 setSelected:v3];
  sub_10033EAF0();
}

- (_TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField)init
{
  v3 = OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_hiddenTextField;
  *(&self->super.super.super.super.isa + v3) = [objc_allocWithZone(UITextField) init];
  v4 = OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_placeholderView;
  *(&self->super.super.super.super.isa + v4) = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField_borderColor) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionTextField();
  v5 = [(FMAccessoryPairingEmojiSelectionTextField *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  sub_10033F138();

  return v5;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMAccessoryPairingEmojiSelectionTextField();
  v2 = v4.receiver;
  [(FMAccessoryPairingEmojiSelectionTextField *)&v4 layoutSubviews];
  v3 = [v2 layer];
  [v2 bounds];
  [v3 setCornerRadius:CGRectGetWidth(v5) * 0.5];
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = self;
  if (CEMStringIsSingleEmoji())
  {
    v10 = sub_1000F06AC(v6, v8);
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {

    v13 = 0;
    v14 = 0;
  }

  sub_10033EC10(v13, v14);

  return 0;
}

- (_TtC6FindMy41FMAccessoryPairingEmojiSelectionTextField)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end