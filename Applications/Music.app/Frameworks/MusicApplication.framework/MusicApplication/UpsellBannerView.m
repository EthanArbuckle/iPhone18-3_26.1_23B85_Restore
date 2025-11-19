@interface UpsellBannerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setShowsAppleMusicLogo:(BOOL)a3;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation UpsellBannerView

- (CGSize)sizeThatFits:(CGSize)a3
{
  width = a3.width;
  v4 = self;
  v5 = sub_1D4684(width);
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1D6AB4();
}

- (void)music_inheritedLayoutInsetsDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UpsellBannerView *)&v3 music_inheritedLayoutInsetsDidChange];
  [v2 setNeedsLayout];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v6.receiver;
  [(UpsellBannerView *)&v6 traitCollectionDidChange:v4];
  sub_1D65D0();
  sub_1D6438();
  [v5 setNeedsLayout];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_1D455C(a4, x, y);

  return v10;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(UpsellBannerView *)&v3 tintColorDidChange];
  sub_1D6438();
}

- (void)setShowsAppleMusicLogo:(BOOL)a3
{
  v4 = *(self + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo);
  *(self + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo) = a3;
  if (v4 != a3)
  {
    v5 = self;
    sub_1D65D0();
    [(UpsellBannerView *)v5 setNeedsLayout];
  }
}

@end