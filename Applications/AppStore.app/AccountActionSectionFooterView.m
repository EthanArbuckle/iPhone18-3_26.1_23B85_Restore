@interface AccountActionSectionFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore30AccountActionSectionFooterView)initWithCoder:(id)a3;
- (void)buttonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation AccountActionSectionFooterView

- (_TtC8AppStore30AccountActionSectionFooterView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_tapGestureRecognizer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_isCentered) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction);
  *v4 = 0;
  v4[1] = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100743908();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_buttonAction);
  if (v2)
  {
    v3 = self;
    v4 = sub_10000827C(v2);
    v2(v4);

    sub_10001F63C(v2);
  }
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_100743D6C();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_100744000();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text);
  v5 = *&self->titleLabel[OBJC_IVAR____TtC8AppStore30AccountActionSectionFooterView_text];

  v6 = self;
  [(AccountActionSectionFooterView *)v6 layoutMargins];
  sub_100744554(v4, v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end