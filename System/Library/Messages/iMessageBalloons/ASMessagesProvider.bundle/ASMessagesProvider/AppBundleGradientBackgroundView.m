@interface AppBundleGradientBackgroundView
- (_TtC18ASMessagesProvider31AppBundleGradientBackgroundView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation AppBundleGradientBackgroundView

- (_TtC18ASMessagesProvider31AppBundleGradientBackgroundView)initWithCoder:(id)a3
{
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AppBundleGradientBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_blurView];
  sub_75D650();
  [v3 setFrame:{v5.receiver, v5.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC18ASMessagesProvider31AppBundleGradientBackgroundView_gradientView];
  sub_75D650();
  [v4 setFrame:?];
}

@end