@interface PXFilterFooterViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySupplementaryFooterViews;
@end

@implementation PXFilterFooterViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PXFilterFooterView" hasInstanceVariable:@"_captionLabel" withType:"UILabel"];
  [v3 validateClass:@"PXFilterFooterView" hasInstanceVariable:@"_filterButton" withType:"UIButton"];
}

- (id)_accessibilitySupplementaryFooterViews
{
  v3 = [(PXFilterFooterViewAccessibility *)self safeValueForKey:@"_filterButton"];
  v4 = MEMORY[0x29EDB8DE8];
  v11.receiver = self;
  v11.super_class = PXFilterFooterViewAccessibility;
  v5 = [(PXFilterFooterViewAccessibility *)&v11 _accessibilitySupplementaryFooterViews];
  v6 = [v4 axArrayWithPossiblyNilArrays:{1, v5}];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x29EDB8DE8] array];
  }

  v9 = v8;

  if ([v3 _accessibilityViewIsVisible])
  {
    [v9 axSafelyAddObject:v3];
  }

  return v9;
}

@end