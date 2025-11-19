@interface CKUIPageControlAccessibility
- (id)accessibilityValue;
@end

@implementation CKUIPageControlAccessibility

- (id)accessibilityValue
{
  v12.receiver = self;
  v12.super_class = CKUIPageControlAccessibility;
  v3 = [(CKUIPageControlAccessibility *)&v12 accessibilityValue];
  v4 = [(CKUIPageControlAccessibility *)self accessibilityIdentification];
  v5 = [v4 isEqualToString:@"AXImpactEffectPageControl"];

  if (v5)
  {
    v6 = [(CKUIPageControlAccessibility *)self _accessibilityValueForKey:@"AXImpactEffectPageControlValues"];
    v7 = [(CKUIPageControlAccessibility *)self safeValueForKey:@"currentPage"];
    v8 = [v7 integerValue];

    if (v8 < [v6 count])
    {
      v11 = [v6 objectAtIndex:v8];
      v9 = __AXStringForVariables();

      v3 = v9;
    }
  }

  return v3;
}

@end