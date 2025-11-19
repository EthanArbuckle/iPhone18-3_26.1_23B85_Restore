@interface SPUIViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation SPUIViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SPUIViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"SPUIViewController" hasInstanceMethod:@"activateViewController: animate:" withFullSignature:{"v", "@", "B", 0}];
  [v3 validateClass:@"SPUIViewController" hasInstanceMethod:@"activeViewController" withFullSignature:{"@", 0}];
}

@end