@interface InsightsCalendarDecorationView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView)initWithCoder:(id)coder;
- (_TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView)initWithFrame:(CGRect)frame;
@end

@implementation InsightsCalendarDecorationView

- (_TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView_imageView;
  v5 = [objc_allocWithZone(UIImageView) init];
  *(&self->super.super.super.isa + v4) = v5;

  type metadata accessor for InsightsCalendarDecorationView();
  swift_deallocPartialClassInstance();
  return 0;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  [(InsightsCalendarDecorationView *)self systemLayoutSizeFittingSize:fits.width, fits.height];
  result.height = v4;
  result.width = v3;
  return result;
}

- (_TtC7JournalP33_FE1AF9319DABE2D117B2C08623B665DB30InsightsCalendarDecorationView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end