@interface WFComposeNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation WFComposeNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"WFComposeNavigationController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
}

- (void)viewWillLayoutSubviews
{
  v5.receiver = self;
  v5.super_class = WFComposeNavigationControllerAccessibility;
  [(WFComposeNavigationControllerAccessibility *)&v5 viewWillLayoutSubviews];
  objc_opt_class();
  v3 = [(WFComposeNavigationControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = __UIAccessibilityCastAsClass();

  [v4 setShouldGroupAccessibilityChildren:1];
}

@end