@interface MediaView
- (UIColor)backgroundColor;
- (_TtC22SubscribePageExtension9MediaView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension9MediaView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setBackgroundColor:(id)color;
@end

@implementation MediaView

- (UIColor)backgroundColor
{
  backgroundColor = [*(*(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_contentContainer) + OBJC_IVAR____TtC22SubscribePageExtensionP33_3BFA609B93F5C4376389C1E6266A901920UberContentContainer_contents) backgroundColor];

  return backgroundColor;
}

- (void)setBackgroundColor:(id)color
{
  colorCopy = color;
  selfCopy = self;
  sub_100579128(color);
}

- (_TtC22SubscribePageExtension9MediaView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_reflectionAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension9MediaView_isRubberbanding) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100579B7C();
}

- (_TtC22SubscribePageExtension9MediaView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end