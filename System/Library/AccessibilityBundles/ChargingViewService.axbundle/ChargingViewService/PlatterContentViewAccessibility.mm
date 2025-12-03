@interface PlatterContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityValue;
@end

@implementation PlatterContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PlatterContentView" hasInstanceMethod:@"deviceNameLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"PlatterContentView" hasInstanceMethod:@"batteryView" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(PlatterContentViewAccessibility *)self safeValueForKey:@"batteryView"];
  accessibilityLabel = [v2 accessibilityLabel];
  accessibilityValue = [v2 accessibilityValue];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end