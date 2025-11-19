@interface SearchResultBackgroundView
- (_TtC20ProductPageExtension26SearchResultBackgroundView)initWithFrame:(CGRect)a3;
- (void)applyLayoutAttributes:(id)a3;
@end

@implementation SearchResultBackgroundView

- (void)applyLayoutAttributes:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100389ED4(v4);
}

- (_TtC20ProductPageExtension26SearchResultBackgroundView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_borderColor) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_backgroundGradientColors) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension26SearchResultBackgroundView_gradientLayer) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for SearchResultBackgroundView();
  return [(SearchResultBackgroundView *)&v8 initWithFrame:x, y, width, height];
}

@end