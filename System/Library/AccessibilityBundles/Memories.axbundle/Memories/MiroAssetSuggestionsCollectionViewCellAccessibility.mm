@interface MiroAssetSuggestionsCollectionViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityPhotoDescription;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation MiroAssetSuggestionsCollectionViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MiroAssetSuggestionsCollectionViewCell" isKindOfClass:@"UICollectionViewCell"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"isSelected" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MiroAssetSuggestionsCollectionViewCell" hasInstanceMethod:@"configureWithAsset: selected:" withFullSignature:{"v", "@", "B", 0}];
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
  _axPHAsset = [(MiroAssetSuggestionsCollectionViewCellAccessibility *)self _axPHAsset];
  accessibilityLabel = [_axPHAsset accessibilityLabel];

  return accessibilityLabel;
}

- (id)_accessibilityPhotoDescription
{
  _axPHAsset = [(MiroAssetSuggestionsCollectionViewCellAccessibility *)self _axPHAsset];
  _accessibilityPhotoDescription = [_axPHAsset _accessibilityPhotoDescription];

  return _accessibilityPhotoDescription;
}

@end