@interface ArtworkViewAccessibility
- (id)accessibilityLabel;
@end

@implementation ArtworkViewAccessibility

- (id)accessibilityLabel
{
  if (AXRequestingClient() == 15)
  {
    v5.receiver = self;
    v5.super_class = ArtworkViewAccessibility;
    accessibilityLabel = [(ArtworkViewAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    accessibilityLabel = accessibilityAppStoreLocalizedString(@"artwork.view");
  }

  return accessibilityLabel;
}

@end