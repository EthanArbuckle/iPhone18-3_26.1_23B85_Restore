@interface ModuleOverlayGradientBlurView
- (_TtC22SubscribePageExtension29ModuleOverlayGradientBlurView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension29ModuleOverlayGradientBlurView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation ModuleOverlayGradientBlurView

- (_TtC22SubscribePageExtension29ModuleOverlayGradientBlurView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_effectVisibilityThreshold) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_10074A454();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ModuleOverlayGradientBlurView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_overlayView];
  sub_1007477B4();
  [v3 setFrame:{v6.receiver, v6.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_plusDarkerView];
  sub_1007477B4();
  [v4 setFrame:?];
  v5 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension29ModuleOverlayGradientBlurView_gradientMaskView];
  sub_1007477B4();
  [v5 setFrame:?];
  sub_100658FD8();
}

- (_TtC22SubscribePageExtension29ModuleOverlayGradientBlurView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end