@interface _PKInkThicknessPickerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _PKInkThicknessPickerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_PKInkThicknessPicker" hasInstanceMethod:@"thicknessButtons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"_PKInkThicknessPicker" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = _PKInkThicknessPickerAccessibility;
  [(_PKInkThicknessPickerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(_PKInkThicknessPickerAccessibility *)self safeArrayForKey:@"thicknessButtons"];
  if ([v3 count] != 5)
  {
    _AXAssert();
  }

  if ([v3 count])
  {
    v4 = 0;
    do
    {
      if (v4 > 4)
      {
        v5 = 0;
      }

      else
      {
        v5 = accessibilityPencilKitLocalizedString(off_29F2E4018[v4]);
      }

      v6 = [v3 objectAtIndex:v4];
      [v6 setAccessibilityValue:v5];

      ++v4;
    }

    while (v4 < [v3 count]);
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _PKInkThicknessPickerAccessibility;
  [(_PKInkThicknessPickerAccessibility *)&v3 layoutSubviews];
  [(_PKInkThicknessPickerAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end