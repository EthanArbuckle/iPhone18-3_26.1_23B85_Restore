@interface HeroCarouselItemBackgroundView
- (void)layoutSubviews;
@end

@implementation HeroCarouselItemBackgroundView

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for HeroCarouselItemBackgroundView();
  v2 = v4.receiver;
  [(HeroCarouselItemBackgroundView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC22SubscribePageExtension30HeroCarouselItemBackgroundView_mediaViewContainer];
  sub_1007477B4();
  [v3 setFrame:{v4.receiver, v4.super_class}];
}

@end