@interface ModuleOverlayGradientBlurView
- (_TtC8AppStore29ModuleOverlayGradientBlurView)initWithCoder:(id)coder;
- (_TtC8AppStore29ModuleOverlayGradientBlurView)initWithEffect:(id)effect;
- (void)layoutSubviews;
@end

@implementation ModuleOverlayGradientBlurView

- (_TtC8AppStore29ModuleOverlayGradientBlurView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_effectVisibilityThreshold) = 0;
  v4 = OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = type metadata accessor for HeroCarouselItemOverlay.DisplayOptions.Placement();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ModuleOverlayGradientBlurView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_overlayView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:{v6.receiver, v6.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_plusDarkerView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 setFrame:?];
  v5 = *&v2[OBJC_IVAR____TtC8AppStore29ModuleOverlayGradientBlurView_gradientMaskView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v5 setFrame:?];
  sub_1006CF0D8();
}

- (_TtC8AppStore29ModuleOverlayGradientBlurView)initWithEffect:(id)effect
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end