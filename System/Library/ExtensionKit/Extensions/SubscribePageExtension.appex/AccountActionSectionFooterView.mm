@interface AccountActionSectionFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC22SubscribePageExtension30AccountActionSectionFooterView)initWithCoder:(id)coder;
- (void)buttonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation AccountActionSectionFooterView

- (_TtC22SubscribePageExtension30AccountActionSectionFooterView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_tapGestureRecognizer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_isCentered) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction);
  *v4 = 0;
  v4[1] = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000CE7C0();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_buttonAction);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_10001B5AC(v2);
    v2(v4);

    sub_1000164A8(v2);
  }
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_1000CEC24();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_1000CEEB8();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text);
  v5 = *&self->titleLabel[OBJC_IVAR____TtC22SubscribePageExtension30AccountActionSectionFooterView_text];

  selfCopy = self;
  [(AccountActionSectionFooterView *)selfCopy layoutMargins];
  sub_1000CF40C(v4, v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end