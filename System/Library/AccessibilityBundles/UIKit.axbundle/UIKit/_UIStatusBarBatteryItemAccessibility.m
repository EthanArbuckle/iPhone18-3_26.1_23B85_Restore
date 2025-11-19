@interface _UIStatusBarBatteryItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (_UIStatusBarBatteryItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UIStatusBarBatteryItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"_UIStatusBarBatteryItem";
  v5 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"percentView" withFullSignature:{v5, 0}];
  [location[0] validateClass:@"_UIStatusBarDisplayItem" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  v3 = @"_UIStatusBarItem";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 isKindOfClass:v3];
  [location[0] validateClass:v4 hasClassMethod:@"percentDisplayIdentifier" withFullSignature:{v5, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{v5, v5, 0}];
  objc_storeStrong(v7, v6);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarBatteryItemAccessibility;
  [(_UIStatusBarBatteryItemAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  v2 = [(_UIStatusBarBatteryItemAccessibility *)v5 safeValueForKey:@"percentView"];
  [v2 setIsAccessibilityElement:0];
  objc_storeStrong(&v2, 0);
}

- (_UIStatusBarBatteryItemAccessibility)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = _UIStatusBarBatteryItemAccessibility;
  v6 = [(_UIStatusBarBatteryItemAccessibility *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(_UIStatusBarBatteryItemAccessibility *)v6 _accessibilityLoadAccessibilityInformation];
  }

  v3 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = 0;
  objc_storeStrong(&v30, a4);
  v28.receiver = v32;
  v28.super_class = _UIStatusBarBatteryItemAccessibility;
  v29 = [(_UIStatusBarBatteryItemAccessibility *)&v28 applyUpdate:location[0] toDisplayItem:v30];
  v27 = [v30 safeValueForKey:@"identifier"];
  v26 = [objc_opt_class() safeValueForKey:@"percentDisplayIdentifier"];
  if ([v27 isEqual:v26])
  {
    v25 = [(_UIStatusBarBatteryItemAccessibility *)v32 safeUIViewForKey:@"batteryView"];
    objc_initWeak(&from, v25);
    v23 = [(_UIStatusBarBatteryItemAccessibility *)v32 safeUIViewForKey:@"percentView"];
    objc_initWeak(&v22, v23);
    if ([v30 safeBoolForKey:@"isEnabled"])
    {
      v7 = v25;
      v15 = MEMORY[0x29EDCA5F8];
      v16 = -1073741824;
      v17 = 0;
      v18 = __66___UIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke;
      v19 = &unk_29F30E068;
      objc_copyWeak(&v20, &from);
      objc_copyWeak(&v21, &v22);
      [v7 _setAccessibilityFrameBlock:&v15];
      objc_destroyWeak(&v21);
      objc_destroyWeak(&v20);
    }

    else
    {
      v6 = v25;
      v9 = MEMORY[0x29EDCA5F8];
      v10 = -1073741824;
      v11 = 0;
      v12 = __66___UIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke_2;
      v13 = &unk_29F30CAE8;
      objc_copyWeak(&v14, &from);
      [v6 _setAccessibilityFrameBlock:&v9];
      objc_destroyWeak(&v14);
    }

    objc_destroyWeak(&v22);
    objc_storeStrong(&v23, 0);
    objc_destroyWeak(&from);
    objc_storeStrong(&v25, 0);
  }

  v5 = MEMORY[0x29EDC9748](v29);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(location, 0);

  return v5;
}

@end