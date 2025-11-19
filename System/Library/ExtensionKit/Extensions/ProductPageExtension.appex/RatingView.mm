@interface RatingView
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4;
- (_TtC20ProductPageExtension10RatingView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension10RatingView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation RatingView

- (_TtC20ProductPageExtension10RatingView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension10RatingView_rating) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension10RatingView_emptyStarColor) = 0;
  v3 = self + OBJC_IVAR____TtC20ProductPageExtension10RatingView_starPadding;
  *v3 = 0;
  v3[8] = 1;
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100062800();
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_1000648EC();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_1000648EC();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (JUMeasurements)measurementsWithFitting:(CGSize)a3 in:(id)a4
{
  swift_unknownObjectRetain();
  v6 = self;
  v7 = sub_100064DEC(a4);
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

- (_TtC20ProductPageExtension10RatingView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end