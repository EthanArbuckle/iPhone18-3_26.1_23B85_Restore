@interface STUsageCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation STUsageCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"STUsageCell" hasInstanceVariable:@"_itemNameLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"STUsageCell" hasInstanceVariable:@"_usageLabel" withType:"UILabel"];
}

@end