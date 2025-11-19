@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    v3 = self;
    v4 = [v2 preferredFocusEnvironments];
    sub_10000C518(&unk_100940730);
    sub_1007532A4();
  }

  sub_10000C518(&unk_100940730);
  v5.super.isa = sub_100753294().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1005E94D4();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1005E9A08(a3);
}

@end