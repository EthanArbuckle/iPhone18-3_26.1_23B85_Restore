@interface QLDetailItemViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation QLDetailItemViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"QLDetailItemViewController" hasInstanceMethod:@"_setActionButtonView:animated:actionButtonLabel:informationVisible:" withFullSignature:{"v", "@", "B", "@", "B", 0}];
  [validationsCopy validateClass:@"QLDetailItemViewController" hasInstanceVariable:@"_actionIconButton" withType:"UIButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = QLDetailItemViewControllerAccessibility;
  [(QLDetailItemViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(QLDetailItemViewControllerAccessibility *)self safeUIViewForKey:@"_actionIconButton"];
  v4 = [(QLDetailItemViewControllerAccessibility *)self safeUIViewForKey:@"_actionIconButton"];
  v5 = __UIAccessibilitySafeClass();

  [v3 setIsAccessibilityElement:{objc_msgSend(v5, "isEnabled")}];
}

@end