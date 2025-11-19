@interface MediaOverlayGradientBlurView
- (_TtC8AppStore28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation MediaOverlayGradientBlurView

- (void)layoutSubviews
{
  v2 = self;
  sub_10025166C();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MediaOverlayGradientBlurView *)&v4 _dynamicUserInterfaceTraitDidChange];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore28MediaOverlayGradientBlurView_colorGradientView];
  *(v3 + OBJC_IVAR____TtC8AppStore12GradientView_colors) = sub_100251554();

  sub_1001C0CEC();
  sub_10025144C();
}

- (_TtC8AppStore28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end