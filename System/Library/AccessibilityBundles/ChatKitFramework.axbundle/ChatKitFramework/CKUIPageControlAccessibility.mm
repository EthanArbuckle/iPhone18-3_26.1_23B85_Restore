@interface CKUIPageControlAccessibility
- (id)accessibilityValue;
@end

@implementation CKUIPageControlAccessibility

- (id)accessibilityValue
{
  v12.receiver = self;
  v12.super_class = CKUIPageControlAccessibility;
  accessibilityValue = [(CKUIPageControlAccessibility *)&v12 accessibilityValue];
  accessibilityIdentification = [(CKUIPageControlAccessibility *)self accessibilityIdentification];
  v5 = [accessibilityIdentification isEqualToString:@"AXImpactEffectPageControl"];

  if (v5)
  {
    v6 = [(CKUIPageControlAccessibility *)self _accessibilityValueForKey:@"AXImpactEffectPageControlValues"];
    v7 = [(CKUIPageControlAccessibility *)self safeValueForKey:@"currentPage"];
    integerValue = [v7 integerValue];

    if (integerValue < [v6 count])
    {
      v11 = [v6 objectAtIndex:integerValue];
      v9 = __AXStringForVariables();

      accessibilityValue = v9;
    }
  }

  return accessibilityValue;
}

@end