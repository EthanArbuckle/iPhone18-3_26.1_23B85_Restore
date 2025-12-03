@interface PXFilterFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation PXFilterFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PXFilterFooterView" hasInstanceVariable:@"_captionLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"PXFilterFooterView" hasInstanceVariable:@"_filterButton" withType:"UIButton"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PXFilterFooterViewAccessibility *)self safeValueForKey:@"_filterButton"];
  v4 = MEMORY[0x29EDB8DE8];
  v11.receiver = self;
  v11.super_class = PXFilterFooterViewAccessibility;
  _accessibilitySupplementaryFooterViews = [(PXFilterFooterViewAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v6 = [v4 axArrayWithPossiblyNilArrays:{1, _accessibilitySupplementaryFooterViews}];
  v7 = v6;
  if (v6)
  {
    array = v6;
  }

  else
  {
    array = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = array;

  if ([v3 _accessibilityViewIsVisible])
  {
    [v9 axSafelyAddObject:v3];
  }

  return v9;
}

@end