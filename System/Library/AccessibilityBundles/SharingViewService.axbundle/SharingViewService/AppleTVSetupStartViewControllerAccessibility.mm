@interface AppleTVSetupStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
@end

@implementation AppleTVSetupStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AppleTVSetupStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [validationsCopy validateClass:@"AppleTVSetupStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
}

@end