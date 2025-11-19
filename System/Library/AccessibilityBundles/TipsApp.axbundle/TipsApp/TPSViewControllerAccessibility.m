@interface TPSViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation TPSViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"TPSViewController" hasInstanceMethod:@"setLoading:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"TPSViewController" hasInstanceVariable:@"_loading" withType:"B"];
}

@end