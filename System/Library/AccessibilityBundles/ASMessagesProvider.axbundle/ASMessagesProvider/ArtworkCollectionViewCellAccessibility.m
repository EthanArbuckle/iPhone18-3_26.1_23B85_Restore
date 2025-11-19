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
    v3 = [(ArtworkCollectionViewCellAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    v3 = accessibilityAppStoreLocalizedString(@"artwork.view");
  }

  return v3;
}

@end