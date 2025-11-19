@interface ProductRatingsHistogramView
- (NSArray)accessibilityProgressBarViews;
- (NSArray)accessibilityStarViews;
- (_TtC22SubscribePageExtension27ProductRatingsHistogramView)initWithCoder:(id)a3;
- (_TtC22SubscribePageExtension27ProductRatingsHistogramView)initWithFrame:(CGRect)a3;
@end

@implementation ProductRatingsHistogramView

- (_TtC22SubscribePageExtension27ProductRatingsHistogramView)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (NSArray)accessibilityStarViews
{
  swift_beginAccess();
  type metadata accessor for RatingView();

  v2.super.isa = sub_100753294().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityProgressBarViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension27ProductRatingsHistogramView_barViews);
  v3 = self;
  sub_100157DCC(v2);

  sub_100016C60(0, &qword_100922300);
  v4.super.isa = sub_100753294().super.isa;

  return v4.super.isa;
}

- (_TtC22SubscribePageExtension27ProductRatingsHistogramView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end