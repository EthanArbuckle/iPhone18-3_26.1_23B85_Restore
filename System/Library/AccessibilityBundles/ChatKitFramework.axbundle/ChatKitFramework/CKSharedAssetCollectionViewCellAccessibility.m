@interface CKSharedAssetCollectionViewCellAccessibility
- (id)accessibilityLabel;
@end

@implementation CKSharedAssetCollectionViewCellAccessibility

- (id)accessibilityLabel
{
  v2 = [(CKSharedAssetCollectionViewCellAccessibility *)self safeValueForKey:@"previewTitleLabel"];
  v3 = [v2 accessibilityLabel];

  return v3;
}

@end