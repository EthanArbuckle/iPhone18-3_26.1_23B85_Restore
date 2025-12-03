@interface ProductRatingsHistogramView
- (NSArray)accessibilityProgressBarViews;
- (NSArray)accessibilityStarViews;
- (_TtC18ASMessagesProvider27ProductRatingsHistogramView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider27ProductRatingsHistogramView)initWithFrame:(CGRect)frame;
@end

@implementation ProductRatingsHistogramView

- (_TtC18ASMessagesProvider27ProductRatingsHistogramView)initWithCoder:(id)coder
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (NSArray)accessibilityStarViews
{
  swift_beginAccess();
  type metadata accessor for RatingView();

  v2.super.isa = sub_769450().super.isa;

  return v2.super.isa;
}

- (NSArray)accessibilityProgressBarViews
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider27ProductRatingsHistogramView_barViews);
  selfCopy = self;
  sub_141B28(v2);

  sub_BE70(0, &qword_93E550);
  v4.super.isa = sub_769450().super.isa;

  return v4.super.isa;
}

- (_TtC18ASMessagesProvider27ProductRatingsHistogramView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end