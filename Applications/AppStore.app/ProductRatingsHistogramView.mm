@interface ProductRatingsHistogramView
- (NSArray)accessibilityProgressBarViews;
- (NSArray)accessibilityStarViews;
- (_TtC8AppStore27ProductRatingsHistogramView)initWithCoder:(id)coder;
- (_TtC8AppStore27ProductRatingsHistogramView)initWithFrame:(CGRect)frame;
@end

@implementation ProductRatingsHistogramView

- (_TtC8AppStore27ProductRatingsHistogramView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (NSArray)accessibilityStarViews
{
  swift_beginAccess();
  type metadata accessor for RatingView();

  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityProgressBarViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore27ProductRatingsHistogramView_barViews);
  selfCopy = self;
  sub_1002A617C(v2);

  sub_100005744(0, &qword_100972EB0);
  v4.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v4.super.isa;
}

- (_TtC8AppStore27ProductRatingsHistogramView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end