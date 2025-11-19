@interface MediaOverlayGradientBlurView
- (_TtC22SubscribePageExtension28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation MediaOverlayGradientBlurView

- (void)layoutSubviews
{
  v2 = self;
  sub_10016A480();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MediaOverlayGradientBlurView *)&v4 _dynamicUserInterfaceTraitDidChange];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension28MediaOverlayGradientBlurView_colorGradientView];
  *(v3 + OBJC_IVAR____TtC22SubscribePageExtension12GradientView_colors) = sub_10016A368();

  sub_100037ED0();
  sub_10016A260();
}

- (_TtC22SubscribePageExtension28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end