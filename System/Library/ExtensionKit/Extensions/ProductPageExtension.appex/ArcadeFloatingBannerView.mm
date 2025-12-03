@interface ArcadeFloatingBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20ProductPageExtension24ArcadeFloatingBannerView)initWithCoder:(id)coder;
- (_TtC20ProductPageExtension24ArcadeFloatingBannerView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation ArcadeFloatingBannerView

- (_TtC20ProductPageExtension24ArcadeFloatingBannerView)initWithCoder:(id)coder
{
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = swift_getObjectType();
  v2 = v4.receiver;
  [(ArcadeFloatingBannerView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView];
  sub_10076422C();
  [v3 setFrame:{v4.receiver, v4.super_class}];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension24ArcadeFloatingBannerView_lockupView);
  selfCopy = self;
  [(ArcadeFloatingBannerView *)selfCopy layoutMargins];
  sub_100770ACC();
  [v3 sizeThatFits:?];
  [(ArcadeFloatingBannerView *)selfCopy layoutMargins];
  sub_100770AEC();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
  return result;
}

- (_TtC20ProductPageExtension24ArcadeFloatingBannerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end