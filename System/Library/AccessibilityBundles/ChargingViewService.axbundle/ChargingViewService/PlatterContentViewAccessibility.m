@interface PlatterContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityValue;
@end

@implementation PlatterContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PlatterContentView" hasInstanceMethod:@"deviceNameLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"PlatterContentView" hasInstanceMethod:@"batteryView" withFullSignature:{"@", 0}];
}

- (id)accessibilityValue
{
  v2 = [(PlatterContentViewAccessibility *)self safeValueForKey:@"batteryView"];
  v3 = [v2 accessibilityLabel];
  v6 = [v2 accessibilityValue];
  v4 = __UIAXStringForVariables();

  return v4;
}

@end