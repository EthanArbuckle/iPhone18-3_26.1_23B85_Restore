@interface PKPassHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PKPassHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKPassHeaderView" hasInstanceVariable:@"_title" withType:"UILabel"];
  [validationsCopy validateClass:@"PKPassHeaderView" hasInstanceVariable:@"_subtitle" withType:"UILabel"];
}

@end