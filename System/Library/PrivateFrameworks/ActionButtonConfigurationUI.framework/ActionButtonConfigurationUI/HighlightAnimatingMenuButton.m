@interface HighlightAnimatingMenuButton
- (_TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton)initWithFrame:(CGRect)a3;
- (void)setNeedsLayout;
@end

@implementation HighlightAnimatingMenuButton

- (void)setNeedsLayout
{
  v2 = self;
  sub_23DDDB2DC();
}

- (_TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_isAnimating) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_hasPendingLayout) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousState) = 0;
  v8 = OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousConfiguration;
  v9 = sub_23DE05F68();
  (*(*(v9 - 8) + 56))(self + v8, 1, 1, v9);
  v10 = (self + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_previousBounds);
  *v10 = 0u;
  v10[1] = 0u;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC27ActionButtonConfigurationUI28HighlightAnimatingMenuButton_commitTracker) = 0;
  v12.receiver = self;
  v12.super_class = type metadata accessor for HighlightAnimatingMenuButton();
  return [(MenuButton *)&v12 initWithFrame:x, y, width, height];
}

@end