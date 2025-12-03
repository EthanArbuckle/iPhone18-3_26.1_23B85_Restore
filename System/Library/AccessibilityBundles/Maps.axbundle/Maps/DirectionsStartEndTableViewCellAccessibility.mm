@interface DirectionsStartEndTableViewCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityTableViewCellText;
@end

@implementation DirectionsStartEndTableViewCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DirectionsStartEndTableViewCell" hasInstanceVariable:@"_startEndView" withType:"DirectionsStartEndContentView"];
  [validationsCopy validateClass:@"DirectionsStartEndContentView" hasInstanceVariable:@"_overviewLabel" withType:"UILabel"];
}

- (id)accessibilityTableViewCellText
{
  v2 = [(DirectionsStartEndTableViewCellAccessibility *)self safeValueForKey:@"_startEndView"];
  v3 = [v2 safeValueForKey:@"_overviewLabel"];
  accessibilityLabel = [v3 accessibilityLabel];

  return accessibilityLabel;
}

@end