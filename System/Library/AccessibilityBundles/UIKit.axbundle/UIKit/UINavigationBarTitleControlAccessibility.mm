@interface UINavigationBarTitleControlAccessibility
@end

@implementation UINavigationBarTitleControlAccessibility

id __87___UINavigationBarTitleControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained text];
  v2 = UIKitAccessibilityLocalizedString();
  v5 = __UIAXStringForVariables();
  MEMORY[0x29EDC9740](v2);
  MEMORY[0x29EDC9740](v3);
  MEMORY[0x29EDC9740](WeakRetained);

  return v5;
}

@end