@interface UIBarCustomizerAccessibility
@end

@implementation UIBarCustomizerAccessibility

uint64_t __75___UIBarCustomizerAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v6 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](WeakRetained);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  [v4 end];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(v7, 0);
  return 1;
}

@end