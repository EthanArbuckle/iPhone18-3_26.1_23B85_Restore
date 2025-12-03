@interface ArtworkViewAccessibility
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ArtworkViewAccessibility

- (unint64_t)accessibilityTraits
{
  v2 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C5C00](@"ASMessagesProvider.CarouselItemLockupCollectionView", a2)];

  v3 = MEMORY[0x29EDC7F88];
  if (v2)
  {
    v3 = MEMORY[0x29EDC7F70];
  }

  return *v3;
}

- (id)accessibilityLabel
{
  if (AXRequestingClient() == 15)
  {
    v7.receiver = self;
    v7.super_class = ArtworkViewAccessibility;
    accessibilityLabel = [(ArtworkViewAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    v4 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C5C00](@"ASMessagesProvider.CarouselItemLockupCollectionView")];

    if (v4)
    {
      v5 = @"app.suggestion";
    }

    else
    {
      v5 = @"artwork.view";
    }

    accessibilityLabel = accessibilityAppStoreLocalizedString(v5);
  }

  return accessibilityLabel;
}

@end