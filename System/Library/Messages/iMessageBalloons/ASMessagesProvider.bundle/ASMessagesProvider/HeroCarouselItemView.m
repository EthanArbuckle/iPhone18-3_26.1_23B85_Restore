@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider20HeroCarouselItemView_overlayView);
  if (v2)
  {
    v3 = self;
    v4 = [v2 preferredFocusEnvironments];
    sub_BD88(&unk_95D3B0);
    sub_769460();
  }

  sub_BD88(&unk_95D3B0);
  v5.super.isa = sub_769450().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_5D9414();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_5D9948(a3);
}

@end