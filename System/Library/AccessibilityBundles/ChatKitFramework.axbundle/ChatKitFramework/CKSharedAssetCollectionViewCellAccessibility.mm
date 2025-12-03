@interface CKSharedAssetCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKSharedAssetCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKSharedAssetCollectionViewCellAccessibility *)self safeValueForKey:@"previewTitleLabel"];
  accessibilityLabel = [v2 accessibilityLabel];

  return accessibilityLabel;
}

@end