@interface ModuleOverlayGradientBlurView
- (_TtC20ProductPageExtension29ModuleOverlayGradientBlurView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension29ModuleOverlayGradientBlurView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation ModuleOverlayGradientBlurView

- (_TtC20ProductPageExtension29ModuleOverlayGradientBlurView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold) = 0;
  v4 = OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_10076702C();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ModuleOverlayGradientBlurView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_overlayView];
  sub_10076422C();
  [v3 setFrame:{v6.receiver, v6.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_plusDarkerView];
  sub_10076422C();
  [v4 setFrame:?];
  v5 = *&v2[OBJC_IVAR____TtC20ProductPageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
  sub_10076422C();
  [v5 setFrame:?];
  sub_100391D1C();
}

- (_TtC20ProductPageExtension29ModuleOverlayGradientBlurView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end