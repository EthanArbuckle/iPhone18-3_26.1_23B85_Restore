@interface SubscriptionNameAreaView
- (_TtC23ShelfKitCollectionViews11ArtworkView)accessibilityWordmarkArtworkView;
- (_TtC23ShelfKitCollectionViews13ChevronButton)accessibilityChannelLinkButton;
- (id)viewForFirstBaselineLayout;
@end

@implementation SubscriptionNameAreaView

- (_TtC23ShelfKitCollectionViews11ArtworkView)accessibilityWordmarkArtworkView
{
  v2 = self;
  v3 = sub_2D76F4();

  return v3;
}

- (_TtC23ShelfKitCollectionViews13ChevronButton)accessibilityChannelLinkButton
{
  v2 = self;
  v3 = SubscriptionNameAreaView.channelLinkButton.getter();

  return v3;
}

- (id)viewForFirstBaselineLayout
{
  v1 = a1;
  Baseline = SubscriptionNameAreaView.forLastBaselineLayout.getter();

  return Baseline;
}

@end