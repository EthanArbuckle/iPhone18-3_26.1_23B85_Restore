@interface ArcadeFloatingBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC8AppStore24ArcadeFloatingBannerView)initWithCoder:(id)a3;
- (_TtC8AppStore24ArcadeFloatingBannerView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation ArcadeFloatingBannerView

- (_TtC8AppStore24ArcadeFloatingBannerView)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ArcadeFloatingBannerView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView];
  LayoutMarginsAware<>.layoutFrame.getter();
  [v3 setFrame:{v4.receiver, v4.super_class}];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore24ArcadeFloatingBannerView_lockupView);
  v4 = self;
  [(ArcadeFloatingBannerView *)v4 layoutMargins];
  CGSize.subtracting(insets:)();
  [v3 sizeThatFits:?];
  [(ArcadeFloatingBannerView *)v4 layoutMargins];
  CGSize.adding(outsets:)();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC8AppStore24ArcadeFloatingBannerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end