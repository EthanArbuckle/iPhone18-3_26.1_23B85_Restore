@interface UITabBarVisualProvider
@end

@implementation UITabBarVisualProvider

id __91___UITabBarVisualProvider_FloatingAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  v9[2] = a1;
  v9[1] = a1;
  v8 = 0;
  objc_opt_class();
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v4 = [WeakRetained safeSwiftValueForKey:@"itemForCollapseButton"];
  v7 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](WeakRetained);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  v2 = [v6 accessibilityLabel];
  objc_storeStrong(v9, 0);

  return v2;
}

@end