@interface ModuleOverlayGradientBlurView
- (_TtC18ASMessagesProvider29ModuleOverlayGradientBlurView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider29ModuleOverlayGradientBlurView)initWithEffect:(id)a3;
- (void)layoutSubviews;
@end

@implementation ModuleOverlayGradientBlurView

- (_TtC18ASMessagesProvider29ModuleOverlayGradientBlurView)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_effectVisibilityThreshold) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_alignment;
  v5 = enum case for HeroCarouselItemOverlay.DisplayOptions.Placement.leading(_:);
  v6 = sub_7603D0();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v2 = v6.receiver;
  [(ModuleOverlayGradientBlurView *)&v6 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_overlayView];
  sub_75D650();
  [v3 setFrame:{v6.receiver, v6.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_plusDarkerView];
  sub_75D650();
  [v4 setFrame:?];
  v5 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider29ModuleOverlayGradientBlurView_gradientMaskView];
  sub_75D650();
  [v5 setFrame:?];
  sub_29B414();
}

- (_TtC18ASMessagesProvider29ModuleOverlayGradientBlurView)initWithEffect:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end