@interface WFComposeNavigationControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)viewWillLayoutSubviews;
@end

@implementation WFComposeNavigationControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"WFComposeNavigationController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"view" withFullSignature:{"@", 0}];
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