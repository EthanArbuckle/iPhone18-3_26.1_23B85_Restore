@interface WDDataTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityLabel;
@end

@implementation WDDataTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WDDataTableViewCell" hasInstanceMethod:@"source" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WDDataTableViewCell" hasInstanceMethod:@"displayValue" withFullSignature:{"@", 0}];
  [v3 validateClass:@"WDDataTableViewCell" hasInstanceMethod:@"dateString" withFullSignature:{"@", 0}];
  [v3 validateClass:@"HKSource" hasInstanceMethod:@"name" withFullSignature:{"@", 0}];
}

- (id)accessibilityLabel
{
  v3 = [(WDDataTableViewCellAccessibility *)self safeStringForKey:@"displayValue"];
  v4 = [(WDDataTableViewCellAccessibility *)self safeStringForKey:@"dateString"];
  v5 = [(WDDataTableViewCellAccessibility *)self safeValueForKey:@"source"];
  v8 = [v5 safeStringForKey:@"name"];
  v6 = __UIAXStringForVariables();

  return v6;
}

@end