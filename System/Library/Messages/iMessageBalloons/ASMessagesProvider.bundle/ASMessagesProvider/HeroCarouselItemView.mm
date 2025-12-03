@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)change;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  if (v2)
  {
    selfCopy = self;
    preferredFocusEnvironments = [v2 preferredFocusEnvironments];
    sub_BD88(&unk_95D3B0);
    sub_769460();
  }

  sub_BD88(&unk_95D3B0);
  v5.super.isa = sub_769450().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_5D9414();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_5D9948(change);
}

@end