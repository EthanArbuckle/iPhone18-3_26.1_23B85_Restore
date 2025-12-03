@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    selfCopy = self;
    preferredFocusEnvironments = [v2 preferredFocusEnvironments];
    sub_10000C518(&unk_100940730);
    sub_1007532A4();
  }

  sub_10000C518(&unk_100940730);
  v5.super.isa = sub_100753294().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1005E94D4();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1005E9A08(change);
}

@end