@interface HeroCarouselItemView
- (NSArray)preferredFocusEnvironments;
- (void)layoutSubviews;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation HeroCarouselItemView

- (NSArray)preferredFocusEnvironments
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC8AppStore20HeroCarouselItemView_overlayView);
  if (v2)
  {
    v3 = self;
    v4 = [v2 preferredFocusEnvironments];
    sub_10002849C(&unk_100982E50);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  sub_10002849C(&unk_100982E50);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_1003A6F50();
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1003A7484(a3);
}

@end