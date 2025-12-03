@interface PKLabeledValueAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation PKLabeledValueAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PKLabeledValue" hasInstanceVariable:@"_label" withType:"NSString"];
  [validationsCopy validateClass:@"PKLabeledValue" hasInstanceVariable:@"_value" withType:"NSString"];
}

@end