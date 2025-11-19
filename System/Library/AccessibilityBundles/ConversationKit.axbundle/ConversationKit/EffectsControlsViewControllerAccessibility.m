@interface EffectsControlsViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation EffectsControlsViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ConversationKit.EffectsControlsViewController" hasInstanceMethod:@"effectsButtonIsVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"ConversationKit.EffectsControlsViewController" hasInstanceMethod:@"effectsButton" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = EffectsControlsViewControllerAccessibility;
  [(EffectsControlsViewControllerAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(EffectsControlsViewControllerAccessibility *)self safeUIViewForKey:@"effectsButton"];
  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x29EDCA5F8];
  v4[1] = 3221225472;
  v4[2] = __88__EffectsControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
  v4[3] = &unk_29F2B7D20;
  objc_copyWeak(&v5, &location);
  [v3 _setIsAccessibilityElementBlock:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

uint64_t __88__EffectsControlsViewControllerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained safeBoolForKey:@"effectsButtonIsVisible"];

  return v2;
}

@end