@interface FMR1DistanceViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)isAccessibilityElement;
- (id)_accessibilityStringForDirectionView;
@end

@implementation FMR1DistanceViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"FMFindingUI.FMR1DistanceView" hasInstanceMethod:@"accessibilityDistanceLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"FMFindingUI.FMR1DistanceView" hasInstanceMethod:@"accessibilityDirectionLabel" withFullSignature:{"@", 0}];
}

- (BOOL)isAccessibilityElement
{
  _accessibilityStringForDirectionView = [(FMR1DistanceViewAccessibility *)self _accessibilityStringForDirectionView];
  v3 = [_accessibilityStringForDirectionView length] != 0;

  return v3;
}

- (id)_accessibilityStringForDirectionView
{
  v3 = [(FMR1DistanceViewAccessibility *)self safeValueForKey:@"accessibilityDistanceLabel"];
  v4 = [(FMR1DistanceViewAccessibility *)self safeValueForKey:@"accessibilityDirectionLabel"];
  string = [MEMORY[0x29EDBA0F8] string];
  if (v3)
  {
    accessibilityLabel = [v3 accessibilityLabel];
    if (accessibilityLabel)
    {
      v7 = accessibilityLabel;
      v8 = [string stringByAppendingString:accessibilityLabel];

      string = v8;
    }
  }

  if (v4)
  {
    accessibilityLabel2 = [v4 accessibilityLabel];
    if (accessibilityLabel2)
    {
      v10 = accessibilityLabel2;
      v11 = [string stringByAppendingFormat:@" %@", accessibilityLabel2];

      string = v11;
    }
  }

  return string;
}

@end