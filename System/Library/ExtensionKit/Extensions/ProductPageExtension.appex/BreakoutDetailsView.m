@interface BreakoutDetailsView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC20ProductPageExtension19BreakoutDetailsView)initWithFrame:(CGRect)a3;
- (void)didTapActionButton;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation BreakoutDetailsView

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_getObjectType();
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_10063E61C(a4, v6);
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRelease();

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.var3 = v17;
  result.var2 = v16;
  result.var1 = v15;
  result.var0 = v14;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  v4 = sub_10063E61C(v3, v3);
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10063CF44();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(BreakoutDetailsView *)&v7 traitCollectionDidChange:v4];
  v6 = [*&v5[OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_backgroundMaterialView] contentView];
  sub_10063A510();
  sub_1007708CC();
  [v6 setLayoutMargins:?];

  sub_1006398D8();
  sub_10063B688();
  [v5 setNeedsLayout];
}

- (void)didTapActionButton
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension19BreakoutDetailsView_callToActionButtonHandler);
  if (v2)
  {
    v3 = self;
    v4 = sub_10001CE50(v2);
    v2(v4);

    sub_1000167E0(v2);
  }
}

- (_TtC20ProductPageExtension19BreakoutDetailsView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end