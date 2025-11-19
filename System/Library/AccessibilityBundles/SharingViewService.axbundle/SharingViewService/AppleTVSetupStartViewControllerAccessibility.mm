@interface AppleTVSetupStartViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation AppleTVSetupStartViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AppleTVSetupStartViewController" hasInstanceMethod:@"viewWillAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"AppleTVSetupStartViewController" hasInstanceVariable:@"_dismissButton" withType:"UIButton"];
}

@end