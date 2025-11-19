@interface OnboardingTrayView
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC20ProductPageExtension18OnboardingTrayView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension18OnboardingTrayView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation OnboardingTrayView

- (_TtC20ProductPageExtension18OnboardingTrayView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension18OnboardingTrayView_itemViewLayoutItems) = _swiftEmptyArrayStorage;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10071972C();
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  width = a3.width;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1007198D8(a4, width);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  swift_unknownObjectRelease();

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.var3 = v18;
  result.var2 = v17;
  result.var1 = v16;
  result.var0 = v15;
  return result;
}

- (_TtC20ProductPageExtension18OnboardingTrayView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end