@interface AppBundleGradientBackgroundView
- (_TtC20ProductPageExtension31AppBundleGradientBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation AppBundleGradientBackgroundView

- (_TtC20ProductPageExtension31AppBundleGradientBackgroundView)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AppBundleGradientBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_blurView];
  sub_10076422C();
  [v3 setFrame:{v5.receiver, v5.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC20ProductPageExtension31AppBundleGradientBackgroundView_gradientView];
  sub_10076422C();
  [v4 setFrame:?];
}

@end