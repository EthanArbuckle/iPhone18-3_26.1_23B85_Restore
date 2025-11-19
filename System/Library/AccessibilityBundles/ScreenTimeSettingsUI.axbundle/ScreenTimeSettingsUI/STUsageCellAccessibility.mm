@interface STUsageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation STUsageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUsageCell" hasInstanceVariable:@"_itemNameLabel" withType:"UILabel"];
  [v3 validateClass:@"STUsageCell" hasInstanceVariable:@"_usageLabel" withType:"UILabel"];
}

@end