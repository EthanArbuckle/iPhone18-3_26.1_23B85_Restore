@interface TPSViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation TPSViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"TPSViewController" hasInstanceMethod:@"setLoading:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"TPSViewController" hasInstanceVariable:@"_loading" withType:"B"];
}

@end