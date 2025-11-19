@interface NTKCFaceDetailRowActionLabelCellAccessibility
- (unint64_t)accessibilityTraits;
@end

@implementation NTKCFaceDetailRowActionLabelCellAccessibility

- (unint64_t)accessibilityTraits
{
  v3.receiver = self;
  v3.super_class = NTKCFaceDetailRowActionLabelCellAccessibility;
  return UIAccessibilityTraitButton | [(NTKCFaceDetailRowActionLabelCellAccessibility *)&v3 accessibilityTraits];
}

@end