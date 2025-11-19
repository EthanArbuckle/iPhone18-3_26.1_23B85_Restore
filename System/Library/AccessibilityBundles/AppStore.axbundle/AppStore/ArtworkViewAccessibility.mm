@interface ArtworkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation ArtworkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppStore.BrandedAppTodayBrickCollectionViewCell"];
  [v3 validateClass:@"AppStore.ArcadeFooterCollectionViewCell"];
  [v3 validateClass:@"AppStore.ArtworkSectionBackgroundView"];
  [v3 validateClass:@"AppStore.CarouselItemLockupCollectionView"];
}

- (BOOL)isAccessibilityElement
{
  v3 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C8BD0](@"AppStore.BrandedAppTodayBrickCollectionViewCell", a2)];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C8BD0](@"AppStore.ArcadeFooterCollectionViewCell")];
    if (v5)
    {
      v4 = 0;
    }

    else
    {
      v6 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C8BD0](@"AppStore.ArtworkSectionBackgroundView")];
      v4 = v6 == 0;
    }
  }

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v2 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C8BD0](@"AppStore.CarouselItemLockupCollectionView", a2)];

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
    v3 = [(ArtworkViewAccessibility *)&v7 accessibilityLabel];
  }

  else
  {
    v4 = [(ArtworkViewAccessibility *)self _accessibilityAncestorIsKindOf:MEMORY[0x29C2C8BD0](@"AppStore.CarouselItemLockupCollectionView")];

    if (v4)
    {
      v5 = @"app.suggestion";
    }

    else
    {
      v5 = @"artwork.view";
    }

    v3 = accessibilityAppStoreLocalizedString(v5);
  }

  return v3;
}

@end