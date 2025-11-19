@interface DeveloperLinkView
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC20ProductPageExtension17DeveloperLinkView)initWithCoder:(id)a3;
- (void)didTapLink:(id)a3;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation DeveloperLinkView

- (_TtC20ProductPageExtension17DeveloperLinkView)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler);
  *v3 = 0;
  v3[1] = 0;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003143A0();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  [(DeveloperLinkView *)self measurementsWithFitting:self in:a3.width, a3.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_100314778();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  swift_unknownObjectRelease();

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.var3 = v16;
  result.var2 = v15;
  result.var1 = v14;
  result.var0 = v13;
  return result;
}

- (void)didTapLink:(id)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension17DeveloperLinkView_tapHandler);
  if (v3)
  {
    v4 = self;
    v5 = sub_10001CE50(v3);
    v3(v5);

    sub_1000167E0(v3);
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003151C4(a3);
}

@end