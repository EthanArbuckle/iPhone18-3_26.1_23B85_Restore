@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    selfCopy = self;
    preferredFocusEnvironments = [v2 preferredFocusEnvironments];
    sub_10000A5D4(&unk_10094B460);
    sub_1007701BC();
  }

  sub_10000A5D4(&unk_10094B460);
  v5.super.isa = sub_1007701AC().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1001837FC();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_100183D30(change);
}

@end