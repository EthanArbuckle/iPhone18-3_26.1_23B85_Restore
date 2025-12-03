@interface ArtworkCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation ArtworkCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  if (AXRequestingClient() == 15)
  {
    v5.receiver = self;
    v5.super_class = ArtworkCollectionViewCellAccessibility;
    accessibilityLabel = [(ArtworkCollectionViewCellAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityAppStoreLocalizedString(@"artwork.view");
  }

  return accessibilityLabel;
}

@end