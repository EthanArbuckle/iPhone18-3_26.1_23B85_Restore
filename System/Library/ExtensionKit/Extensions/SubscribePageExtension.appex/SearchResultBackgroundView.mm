@interface SearchResultBackgroundView
- (_TtC22SubscribePageExtension26SearchResultBackgroundView)initWithFrame:(CGRect)frame;
- (void)applyLayoutAttributes:(id)attributes;
@end

@implementation SearchResultBackgroundView

- (void)applyLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  selfCopy = self;
  sub_1001C3A44(attributesCopy);
}

- (_TtC22SubscribePageExtension26SearchResultBackgroundView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_borderColor) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_backgroundGradientColors) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension26SearchResultBackgroundView_gradientLayer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchResultBackgroundView();
  return [(SearchResultBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

@end