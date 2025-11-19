@interface NTK_PUPhotoEditAdjustmentCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation NTK_PUPhotoEditAdjustmentCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NTK_PUPhotoEditAdjustmentCellAccessibility;
  return UIAccessibilityTraitButton | [(NTK_PUPhotoEditAdjustmentCellAccessibility *)&v3 accessibilityTraits];
}

@end