@interface SubscriptionNameAreaView
- (_TtC23ShelfKitCollectionViews11ArtworkView)accessibilityWordmarkArtworkView;
- (_TtC23ShelfKitCollectionViews13ChevronButton)accessibilityChannelLinkButton;
- (id)viewForFirstBaselineLayout;
@end

@implementation SubscriptionNameAreaView

- (_TtC23ShelfKitCollectionViews11ArtworkView)accessibilityWordmarkArtworkView
{
  selfCopy = self;
  v3 = sub_2D76F4();

  return v3;
}

- (_TtC23ShelfKitCollectionViews13ChevronButton)accessibilityChannelLinkButton
{
  selfCopy = self;
  v3 = SubscriptionNameAreaView.channelLinkButton.getter();

  return v3;
}

- (id)viewForFirstBaselineLayout
{
  selfCopy = self;
  Baseline = SubscriptionNameAreaView.forLastBaselineLayout.getter();

  return Baseline;
}

@end