@interface NCInsetGroupedButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation NCInsetGroupedButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"NCInsetGroupedButton" hasInstanceVariable:@"_titleLabel" withType:"UILabel"];
  [validationsCopy validateClass:@"NCInsetGroupedButton" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
}

@end