@interface STUIStatusBarBatteryItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (STUIStatusBarBatteryItemAccessibility)init;
- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation STUIStatusBarBatteryItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"STUIStatusBarBatteryItem" hasInstanceMethod:@"batteryView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarBatteryItem" hasInstanceMethod:@"percentView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarDisplayItem" hasInstanceMethod:@"isEnabled" withFullSignature:{"B", 0}];
  [v3 validateClass:@"STUIStatusBarItem" hasInstanceMethod:@"identifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarBatteryItem" isKindOfClass:@"STUIStatusBarItem"];
  [v3 validateClass:@"STUIStatusBarBatteryItem" hasClassMethod:@"percentDisplayIdentifier" withFullSignature:{"@", 0}];
  [v3 validateClass:@"STUIStatusBarBatteryItem" hasInstanceMethod:@"applyUpdate:toDisplayItem:" withFullSignature:{"@", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = STUIStatusBarBatteryItemAccessibility;
  [(STUIStatusBarBatteryItemAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(STUIStatusBarBatteryItemAccessibility *)self safeValueForKey:@"percentView"];
  [v3 setIsAccessibilityElement:0];
}

- (STUIStatusBarBatteryItemAccessibility)init
{
  v5.receiver = self;
  v5.super_class = STUIStatusBarBatteryItemAccessibility;
  v2 = [(STUIStatusBarBatteryItemAccessibility *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(STUIStatusBarBatteryItemAccessibility *)v2 _accessibilityLoadAccessibilityInformation];
  }

  return v3;
}

- (id)applyUpdate:(id)a3 toDisplayItem:(id)a4
{
  v6 = a3;
  v7 = a4;
  v22.receiver = self;
  v22.super_class = STUIStatusBarBatteryItemAccessibility;
  v8 = [(STUIStatusBarBatteryItemAccessibility *)&v22 applyUpdate:v6 toDisplayItem:v7];
  v9 = [v7 safeValueForKey:@"identifier"];
  v10 = [objc_opt_class() safeValueForKey:@"percentDisplayIdentifier"];
  if ([v9 isEqual:v10])
  {
    v11 = [(STUIStatusBarBatteryItemAccessibility *)self safeUIViewForKey:@"batteryView"];
    objc_initWeak(&location, v11);
    v12 = [(STUIStatusBarBatteryItemAccessibility *)self safeUIViewForKey:@"percentView"];
    objc_initWeak(&from, v12);
    if ([v7 safeBoolForKey:@"isEnabled"])
    {
      v17[0] = MEMORY[0x29EDCA5F8];
      v17[1] = 3221225472;
      v17[2] = __67__STUIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke;
      v17[3] = &unk_29F306DD8;
      v13 = &v18;
      objc_copyWeak(&v18, &location);
      objc_copyWeak(&v19, &from);
      [v11 _setAccessibilityFrameBlock:v17];
      objc_destroyWeak(&v19);
    }

    else
    {
      v15[0] = MEMORY[0x29EDCA5F8];
      v15[1] = 3221225472;
      v15[2] = __67__STUIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke_2;
      v15[3] = &unk_29F306E00;
      v13 = &v16;
      objc_copyWeak(&v16, &location);
      [v11 _setAccessibilityFrameBlock:v15];
    }

    objc_destroyWeak(v13);
    objc_destroyWeak(&from);

    objc_destroyWeak(&location);
  }

  return v8;
}

double __67__STUIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  [WeakRetained frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [v3 frame];
  v35.origin.x = v12;
  v35.origin.y = v13;
  v35.size.width = v14;
  v35.size.height = v15;
  v33.origin.x = v5;
  v33.origin.y = v7;
  v33.size.width = v9;
  v33.size.height = v11;
  v34 = CGRectUnion(v33, v35);
  x = v34.origin.x;
  y = v34.origin.y;
  width = v34.size.width;
  height = v34.size.height;
  v20 = [WeakRetained superview];
  [v20 convertRect:0 toView:{x, y, width, height}];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = [WeakRetained window];
  [v29 convertRect:0 toWindow:{v22, v24, v26, v28}];
  v31 = v30;

  return v31;
}

double __67__STUIStatusBarBatteryItemAccessibility_applyUpdate_toDisplayItem___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained superview];
  [WeakRetained frame];
  [v2 convertRect:0 toView:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = [WeakRetained window];
  [v11 convertRect:0 toWindow:{v4, v6, v8, v10}];
  v13 = v12;

  return v13;
}

@end