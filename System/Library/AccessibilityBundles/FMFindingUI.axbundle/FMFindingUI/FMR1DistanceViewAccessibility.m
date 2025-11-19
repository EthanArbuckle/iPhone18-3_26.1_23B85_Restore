@interface FMR1DistanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityStringForDirectionView;
@end

@implementation FMR1DistanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"FMFindingUI.FMR1DistanceView" hasInstanceMethod:@"accessibilityDistanceLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"FMFindingUI.FMR1DistanceView" hasInstanceMethod:@"accessibilityDirectionLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  v2 = [(FMR1DistanceViewAccessibility *)self _accessibilityStringForDirectionView];
  v3 = [v2 length] != 0;

  return v3;
}

- (id)_accessibilityStringForDirectionView
{
  v3 = [(FMR1DistanceViewAccessibility *)self safeValueForKey:@"accessibilityDistanceLabel"];
  v4 = [(FMR1DistanceViewAccessibility *)self safeValueForKey:@"accessibilityDirectionLabel"];
  v5 = [MEMORY[0x29EDBA0F8] string];
  if (v3)
  {
    v6 = [v3 accessibilityLabel];
    if (v6)
    {
      v7 = v6;
      v8 = [v5 stringByAppendingString:v6];

      v5 = v8;
    }
  }

  if (v4)
  {
    v9 = [v4 accessibilityLabel];
    if (v9)
    {
      v10 = v9;
      v11 = [v5 stringByAppendingFormat:@" %@", v9];

      v5 = v11;
    }
  }

  return v5;
}

@end