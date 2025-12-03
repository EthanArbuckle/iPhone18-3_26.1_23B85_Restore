@interface UpsellBannerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
- (void)music_inheritedLayoutInsetsDidChange;
- (void)setShowsAppleMusicLogo:(BOOL)logo;
- (void)tintColorDidChange;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation UpsellBannerView

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  selfCopy = self;
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
  selfCopy = self;
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

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v6.receiver;
  [(UpsellBannerView *)&v6 traitCollectionDidChange:changeCopy];
  sub_1D65D0();
  sub_1D6438();
  [v5 setNeedsLayout];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1D455C(event, x, y);

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

- (void)setShowsAppleMusicLogo:(BOOL)logo
{
  v4 = *(self + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo);
  *(self + OBJC_IVAR____TtC16MusicApplication16UpsellBannerView_showsAppleMusicLogo) = logo;
  if (v4 != logo)
  {
    selfCopy = self;
    sub_1D65D0();
    [(UpsellBannerView *)selfCopy setNeedsLayout];
  }
}

@end