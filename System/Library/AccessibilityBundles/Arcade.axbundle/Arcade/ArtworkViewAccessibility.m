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
    v3 = [(ArtworkViewAccessibility *)&v5 accessibilityLabel];
  }

  else
  {
    v3 = accessibilityAppStoreLocalizedString(@"artwork.view");
  }

  return v3;
}

@end