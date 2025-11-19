@interface AccountActionSectionFooterView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC20ProductPageExtension30AccountActionSectionFooterView)initWithCoder:(id)a3;
- (void)buttonTapped;
- (void)layoutSubviews;
- (void)prepareForReuse;
- (void)tintColorDidChange;
@end

@implementation AccountActionSectionFooterView

- (_TtC20ProductPageExtension30AccountActionSectionFooterView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_tapGestureRecognizer) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_isCentered) = 0;
  v3 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text);
  *v3 = 0;
  v3[1] = 0;
  v4 = (&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction);
  *v4 = 0;
  v4[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100700924();
}

- (void)buttonTapped
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_buttonAction);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (void)tintColorDidChange
{
  v2 = self;
  sub_100700D88();
}

- (void)prepareForReuse
{
  v2 = self;
  sub_10070101C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text);
  v5 = *&self->titleLabel[OBJC_IVAR____TtC20ProductPageExtension30AccountActionSectionFooterView_text];

  v6 = self;
  [(AccountActionSectionFooterView *)v6 layoutMargins];
  sub_100701570(v4, v5);
  v8 = v7;
  v10 = v9;

  v11 = v8;
  v12 = v10;
  result.height = v12;
  result.width = v11;
  return result;
}

@end