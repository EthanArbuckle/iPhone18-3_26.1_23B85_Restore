@interface PKLabeledValueAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation PKLabeledValueAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PKLabeledValue" hasInstanceVariable:@"_label" withType:"NSString"];
  [v3 validateClass:@"PKLabeledValue" hasInstanceVariable:@"_value" withType:"NSString"];
}

@end