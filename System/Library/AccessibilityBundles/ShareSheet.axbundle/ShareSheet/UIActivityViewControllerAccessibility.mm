@interface UIActivityViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
@end

@implementation UIActivityViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewDidAppear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewWillDisappear:" withFullSignature:{"v", "B", 0}];
  [v3 validateClass:@"UIActivityViewController" hasInstanceMethod:@"_cancel" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIActivityViewController" isKindOfClass:@"UIViewController"];
}

@end