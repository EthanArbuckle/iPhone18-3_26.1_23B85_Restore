@interface ProductRatingsHistogramView
- (NSArray)accessibilityProgressBarViews;
- (NSArray)accessibilityStarViews;
- (_TtC20ProductPageExtension27ProductRatingsHistogramView)initWithCoder:(id)a3;
- (_TtC20ProductPageExtension27ProductRatingsHistogramView)initWithFrame:(CGRect)a3;
@end

@implementation ProductRatingsHistogramView

- (_TtC20ProductPageExtension27ProductRatingsHistogramView)initWithCoder:(id)a3
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (NSArray)accessibilityStarViews
{
  swift_beginAccess();
  type metadata accessor for RatingView();

  v2.super.isa = sub_1007701AC().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityProgressBarViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension27ProductRatingsHistogramView_barViews);
  v3 = self;
  sub_10016DEF0(v2);

  sub_100016F40(0, &qword_1009441F0);
  v4.super.isa = sub_1007701AC().super.isa;

  return v4.super.isa;
}

- (_TtC20ProductPageExtension27ProductRatingsHistogramView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end