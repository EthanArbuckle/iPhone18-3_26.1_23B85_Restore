@interface CachingArtworkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
@end

@implementation CachingArtworkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ShelfKitCollectionViews.ArtworkWithPlaybackStatusView"];
  [v3 validateClass:@"ShelfKitCollectionViews.EpisodeHeaderCollectionViewCell"];
  [v3 validateClass:@"ShelfKitCollectionViews.ChevronButton"];
  [v3 validateClass:@"ShelfKitCollectionViews.CachingArtworkView" isKindOfClass:@"UIView"];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(CachingArtworkViewAccessibility *)self _accessibilityFindAncestor:&__block_literal_global_0 startWithSelf:0];
  v3 = v2;
  v5 = 1;
  if (v2)
  {
    v4 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_301];

    if (v4)
    {
      v5 = 0;
    }
  }

  return v5;
}

uint64_t __57__CachingArtworkViewAccessibility_isAccessibilityElement__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.EpisodeHeaderCollectionViewCell");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

uint64_t __57__CachingArtworkViewAccessibility_isAccessibilityElement__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.ArtworkWithPlaybackStatusView");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (id)accessibilityLabel
{
  v2 = [(CachingArtworkViewAccessibility *)self safeValueForKey:@"superview"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 _accessibilityFindSubviewDescendant:&__block_literal_global_307];
    v4 = [v3 accessibilityLabel];
    v5 = [v4 length];

    if (v5)
    {
      v6 = MEMORY[0x29EDBA0F8];
      v7 = accessibilityLocalizedString(@"artwork.title.view");
      v8 = [v3 accessibilityLabel];
      v9 = [v6 stringWithFormat:v7, v8];

      goto LABEL_6;
    }
  }

  v9 = accessibilityLocalizedString(@"artwork");
LABEL_6:

  return v9;
}

uint64_t __53__CachingArtworkViewAccessibility_accessibilityLabel__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  MEMORY[0x29C2E7850](@"ShelfKitCollectionViews.ChevronButton");
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

@end