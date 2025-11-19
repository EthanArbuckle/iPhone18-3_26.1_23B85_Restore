@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC20ProductPageExtension20HeroCarouselItemView_overlayView);
  if (v2)
  {
    v3 = self;
    v4 = [v2 preferredFocusEnvironments];
    sub_10000A5D4(&unk_10094B460);
    sub_1007701BC();
  }

  sub_10000A5D4(&unk_10094B460);
  v5.super.isa = sub_1007701AC().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1001837FC();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100183D30(a3);
}

@end