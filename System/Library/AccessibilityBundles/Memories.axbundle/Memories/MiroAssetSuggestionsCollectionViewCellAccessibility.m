@interface MiroAssetSuggestionsCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityPhotoDescription;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MiroAssetSuggestionsCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MiroAssetSuggestionsCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [v3 validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [v3 validateClass:@"MiroAssetSuggestionsCollectionViewCell" hasInstanceMethod:@"configureWithAsset: selected:" withFullSignature:{"v", "@", "B", 0}];
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x29EDC7F88];
  v3 = [(MiroAssetSuggestionsCollectionViewCellAccessibility *)self safeBoolForKey:@"isSelected"];
  v4 = *MEMORY[0x29EDC7FC0];
  if (!v3)
  {
    v4 = 0;
  }

  return v4 | v2;
}

- (id)accessibilityLabel
{
  v2 = [(MiroAssetSuggestionsCollectionViewCellAccessibility *)self _axPHAsset];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)_accessibilityPhotoDescription
{
  v2 = [(MiroAssetSuggestionsCollectionViewCellAccessibility *)self _axPHAsset];
  v3 = [v2 _accessibilityPhotoDescription];

  return v3;
}

@end