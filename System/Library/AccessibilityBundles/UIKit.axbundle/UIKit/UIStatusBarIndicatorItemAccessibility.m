@interface UIStatusBarIndicatorItemAccessibility
@end

@implementation UIStatusBarIndicatorItemAccessibility

id __84___UIStatusBarIndicatorItemAccessibility__accessibilityLoadAccessibilityInformation__block_invoke(id *a1)
{
  location[2] = a1;
  location[1] = a1;
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  v7 = [(_UIStatusBarIndicatorItemAccessibility *)WeakRetained _axLabelKeyForClassNameDict];
  v6 = objc_loadWeakRetained(a1 + 4);
  v1 = objc_opt_class();
  v5 = NSStringFromClass(v1);
  location[0] = [v7 objectForKey:?];
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](WeakRetained);
  v10 = objc_loadWeakRetained(a1 + 4);
  v11 = [v10 accessibilityLabel];
  v12 = 0;
  if (v11)
  {
    v2 = MEMORY[0x29EDC9748](v11);
  }

  else
  {
    v13 = accessibilityLocalizedString(location[0]);
    v12 = 1;
    v2 = MEMORY[0x29EDC9748](v13);
  }

  v15 = v2;
  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  MEMORY[0x29EDC9740](v11);
  MEMORY[0x29EDC9740](v10);
  objc_storeStrong(location, 0);
  v3 = v15;

  return v3;
}

@end