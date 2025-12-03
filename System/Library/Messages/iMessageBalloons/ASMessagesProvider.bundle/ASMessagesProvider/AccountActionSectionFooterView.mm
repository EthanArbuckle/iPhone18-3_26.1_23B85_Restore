@interface AccountActionSectionFooterView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider30AccountActionSectionFooterView)initWithCoder:(id)coder;
- (void)buttonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation AccountActionSectionFooterView

- (_TtC18ASMessagesProvider30AccountActionSectionFooterView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_tapGestureRecognizer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_isCentered) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction);
  *v4 = 0;
  v4[1] = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1284C8();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_buttonAction);
  if (v2)
  {
    selfCopy = self;
    v4 = sub_F714(v2);
    v2(v4);

    sub_F704(v2);
  }
}

- (void)tintColorDidChange
{
  selfCopy = self;
  sub_12892C();
}

- (void)prepareForReuse
{
  selfCopy = self;
  sub_128BC0();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text);
  v5 = *&self->titleLabel[OBJC_IVAR____TtC18ASMessagesProvider30AccountActionSectionFooterView_text];

  selfCopy = self;
  [(AccountActionSectionFooterView *)selfCopy layoutMargins];
  sub_129114(v4, v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end