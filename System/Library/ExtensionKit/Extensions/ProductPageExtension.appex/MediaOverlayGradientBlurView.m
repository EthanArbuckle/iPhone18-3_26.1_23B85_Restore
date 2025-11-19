@interface MediaOverlayGradientBlurView
- (_TtC20ProductPageExtension28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3;
- (void)_dynamicUserInterfaceTraitDidChange;
- (void)layoutSubviews;
@end

@implementation MediaOverlayGradientBlurView

- (void)layoutSubviews
{
  v2 = self;
  sub_10046D44C();
}

- (void)_dynamicUserInterfaceTraitDidChange
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(MediaOverlayGradientBlurView *)&v4 _dynamicUserInterfaceTraitDidChange];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension28MediaOverlayGradientBlurView_colorGradientView];
  *(v3 + OBJC_IVAR____TtC20ProductPageExtension12GradientView_colors) = sub_10046D334();

  sub_1001C05B8();
  sub_10046D22C();
}

- (_TtC20ProductPageExtension28MediaOverlayGradientBlurView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end