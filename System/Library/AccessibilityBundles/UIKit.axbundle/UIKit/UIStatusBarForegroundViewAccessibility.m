@interface UIStatusBarForegroundViewAccessibility
- (void)_setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5;
@end

@implementation UIStatusBarForegroundViewAccessibility

- (void)_setStatusBarData:(id)a3 actions:(int)a4 animated:(BOOL)a5
{
  v32 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v30 = a4;
  v29 = a5;
  v28 = 0;
  v27 = [(UIStatusBarForegroundViewAccessibility *)v32 safeIvarForKey:@"_itemIsEnabled"];
  for (i = 0; i < 46; ++i)
  {
    v20 = 0;
    v21 = &v20;
    v22 = 0x20000000;
    v23 = 32;
    v24 = 0;
    v13 = MEMORY[0x29EDCA5F8];
    v14 = -1073741824;
    v15 = 0;
    v16 = __77__UIStatusBarForegroundViewAccessibility__setStatusBarData_actions_animated___block_invoke;
    v17 = &unk_29F30DB60;
    v18[1] = &v20;
    v18[0] = MEMORY[0x29EDC9748](location[0]);
    v19 = i;
    AXPerformSafeBlock();
    v12 = v21[3] & 1;
    objc_storeStrong(v18, 0);
    _Block_object_dispose(&v20, 8);
    v25 = v12 & 1;
    if ((*(v27 + i) & 1) != (v12 & 1) && i != 32)
    {
      v28 = 1;
      break;
    }
  }

  v11.receiver = v32;
  v11.super_class = UIStatusBarForegroundViewAccessibility;
  [(UIStatusBarForegroundViewAccessibility *)&v11 _setStatusBarData:location[0] actions:v30 animated:v29];
  v9 = 0;
  objc_opt_class();
  v8 = __UIAccessibilityCastAsClass();
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10 = v7;
  if (v28 & 1) != 0 && ([v10 _accessibilityViewIsVisible])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
}

uint64_t __77__UIStatusBarForegroundViewAccessibility__setStatusBarData_actions_animated___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) isItemEnabled:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

@end