@interface InCallBannerHostViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation InCallBannerHostViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationKit.InCallBannerHostViewController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"ConversationKit.InCallBannerHostViewController" hasInstanceMethod:@"menuPresented" withFullSignature:{"B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  objc_initWeak(&location, self);
  v6.receiver = self;
  v6.super_class = InCallBannerHostViewControllerAccessibility;
  [(InCallBannerHostViewControllerAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(InCallBannerHostViewControllerAccessibility *)self safeValueForKey:@"view"];
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __89__InCallBannerHostViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B7D20;
  objc_copyWeak(&v5, &location);
  [v3 _setAccessibilityViewIsModalBlock:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __89__InCallBannerHostViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"menuPresented"];

  return v2;
}

@end