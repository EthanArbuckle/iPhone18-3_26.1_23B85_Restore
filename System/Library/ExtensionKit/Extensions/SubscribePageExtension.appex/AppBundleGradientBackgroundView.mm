@interface AppBundleGradientBackgroundView
- (_TtC22SubscribePageExtension31AppBundleGradientBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation AppBundleGradientBackgroundView

- (_TtC22SubscribePageExtension31AppBundleGradientBackgroundView)initWithCoder:(id)a3
{
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AppBundleGradientBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_blurView];
  sub_1007477B4();
  [v3 setFrame:{v5.receiver, v5.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension31AppBundleGradientBackgroundView_gradientView];
  sub_1007477B4();
  [v4 setFrame:?];
}

@end