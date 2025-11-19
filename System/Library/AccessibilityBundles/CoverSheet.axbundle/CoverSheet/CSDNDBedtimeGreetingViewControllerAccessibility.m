@interface CSDNDBedtimeGreetingViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation CSDNDBedtimeGreetingViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CSDNDBedtimeGreetingViewController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"CSModalView" hasInstanceMethod:@"_secondaryActionButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"CSDNDBedtimeGreetingViewController" hasInstanceMethod:@"handleSecondaryActionForView:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v8.receiver = self;
  v8.super_class = CSDNDBedtimeGreetingViewControllerAccessibility;
  [(CSDNDBedtimeGreetingViewControllerAccessibility *)&v8 _accessibilityLoadAccessibilityInformation];
  v3 = [(CSDNDBedtimeGreetingViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4 = [v3 safeValueForKey:@"_secondaryActionButton"];
  objc_initWeak(&location, v3);
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __93__CSDNDBedtimeGreetingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v5[3] = &unk_29F2B93E0;
  v5[4] = self;
  objc_copyWeak(&v6, &location);
  [v4 _setAccessibilityActivateBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

uint64_t __93__CSDNDBedtimeGreetingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  objc_copyWeak(&v3, (a1 + 40));
  AXPerformSafeBlock();
  objc_destroyWeak(&v3);
  return 1;
}

void __93__CSDNDBedtimeGreetingViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [v1 handleSecondaryActionForView:WeakRetained];
}

@end