@interface AppBundleGradientBackgroundView
- (_TtC8AppStore31AppBundleGradientBackgroundView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation AppBundleGradientBackgroundView

- (_TtC8AppStore31AppBundleGradientBackgroundView)initWithCoder:(id)coder
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(AppBundleGradientBackgroundView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_blurView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:{v5.receiver, v5.super_class}];
  v4 = *&v2[OBJC_IVAR____TtC8AppStore31AppBundleGradientBackgroundView_gradientView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v4 setFrame:?];
}

@end