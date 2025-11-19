@interface UITabBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_dismissCustomizeSheet:(BOOL)a3;
- (void)beginCustomizingItems:(id)a3;
- (void)setItems:(id)a3 animated:(BOOL)a4;
@end

@implementation UITabBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UITabBar";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITabBar" hasInstanceVariable:@"_visualProvider" withType:"_UITabBarVisualProvider"];
  [location[0] validateClass:@"UITabBarItem" hasInstanceVariable:@"_view" withType:"UIControl<_UITabBarButton>"];
  [location[0] validateClass:@"UITabBar" hasInstanceMethod:@"setItems:animated:" withFullSignature:{"v", "@", "B", 0}];
  objc_storeStrong(v5, obj);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v27 = *MEMORY[0x29EDCA608];
  v25 = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = UITabBarAccessibility;
  [(UITabBarAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v21 = 0;
  objc_opt_class();
  v9 = [(UITabBarAccessibility *)v25 safeValueForKey:@"_items"];
  v20 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v9);
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  memset(__b, 0, 0x40uLL);
  obj = MEMORY[0x29EDC9748](v19);
  v8 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
  if (v8)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v8;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v5);
      v16 = 0;
      objc_opt_class();
      v15 = __UIAccessibilityCastAsClass();
      if (v16)
      {
        abort();
      }

      v14 = MEMORY[0x29EDC9748](v15);
      objc_storeStrong(&v15, 0);
      v17 = v14;
      v12 = 0;
      objc_opt_class();
      v2 = [v17 safeValueForKey:@"_view"];
      v11 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v2);
      if (v12)
      {
        abort();
      }

      v10 = MEMORY[0x29EDC9748](v11);
      objc_storeStrong(&v11, 0);
      v13 = v10;
      if (v17 && v13)
      {
        AXApplyTabBarItemPropertiesToView(v17, v13);
      }

      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v17, 0);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v26 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  objc_storeStrong(&v22, 0);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v23 = a3;
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v20 = [(UITabBarAccessibility *)v22 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v12 = 0;
  v6 = 0;
  if ((v20 & 1) == 0)
  {
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __57__UITabBarAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v18 = &unk_29F30CEB0;
    v19 = MEMORY[0x29EDC9748](v22);
    v13 = &v19;
    v12 = 1;
    v6 = (__57__UITabBarAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v6)
  {
    [(UITabBarAccessibility *)v22 _accessibilitySetBoolValue:1 forKey:?];
    v11 = [(UITabBarAccessibility *)v22 accessibilityHitTest:location[0] withEvent:v23.x, v23.y];
    [(UITabBarAccessibility *)v22 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v24 = MEMORY[0x29EDC9748](v11);
    v10 = 1;
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v10 = 0;
  }

  if (v12)
  {
    objc_storeStrong(v13, 0);
  }

  if (!v10)
  {
    v9 = [(UITabBarAccessibility *)v22 safeValueForKey:@"_customizeView"];
    if (v9)
    {
      if (([(UITabBarAccessibility *)v22 pointInside:location[0] withEvent:v23.x, v23.y]& 1) != 0)
      {
        v8.receiver = v22;
        v8.super_class = UITabBarAccessibility;
        v24 = [(UITabBarAccessibility *)&v8 _accessibilityHitTest:location[0] withEvent:v23.x, v23.y];
      }

      else
      {
        v24 = 0;
      }

      v10 = 1;
    }

    else
    {
      v7.receiver = v22;
      v7.super_class = UITabBarAccessibility;
      v24 = [(UITabBarAccessibility *)&v7 _accessibilityHitTest:location[0] withEvent:v23.x, v23.y];
      v10 = 1;
    }

    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
  v4 = v24;

  return v4;
}

BOOL __57__UITabBarAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_2_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_549_0);
  if (*v18 != -1)
  {
    dispatch_once(v18, location);
  }

  objc_storeStrong(&location, 0);
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  Implementation = 0;
  if (InstanceMethod)
  {
    Implementation = method_getImplementation(InstanceMethod);
  }

  else
  {
    v12 = AXLogCommon();
    v11 = 17;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
    {
      log = v12;
      type = v11;
      v8 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v4 = MEMORY[0x29EDC9748](v8);
      v10 = v4;
      v2 = objc_opt_class();
      v7 = NSStringFromClass(v2);
      v9 = MEMORY[0x29EDC9748](v7);
      __os_log_helper_16_2_2_8_64_8_64(v19, v4, v9);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v19, 0x16u);
      MEMORY[0x29EDC9740](v7);
      MEMORY[0x29EDC9740](v8);
      objc_storeStrong(&v9, 0);
      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&v12, 0);
  }

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_2_BaseImplementation_0;
}

void __57__UITabBarAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_2_BaseImplementation_0 = method_getImplementation(InstanceMethod);
  }

  else
  {
    v11 = AXLogCommon();
    v10 = 17;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      log = v11;
      type = v10;
      v7 = NSStringFromSelector(sel_accessibilityHitTest_withEvent_);
      v3 = MEMORY[0x29EDC9748](v7);
      v9 = v3;
      v2 = objc_opt_class();
      v6 = NSStringFromClass(v2);
      v8 = MEMORY[0x29EDC9748](v6);
      __os_log_helper_16_2_2_8_64_8_64(v15, v3, v8);
      _os_log_fault_impl(&dword_29C4D6000, log, type, "Attempted to check for nonexistent method: %@ on class: %@", v15, 0x16u);
      MEMORY[0x29EDC9740](v6);
      MEMORY[0x29EDC9740](v7);
      objc_storeStrong(&v8, 0);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(&v11, 0);
  }
}

- (void)setItems:(id)a3 animated:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6.receiver = v9;
  v6.super_class = UITabBarAccessibility;
  [(UITabBarAccessibility *)&v6 setItems:location[0] animated:a4];
  v5 = [(UITabBarAccessibility *)v9 safeValueForKey:@"_visualProvider"];
  [v5 _accessibilityLoadAccessibilityInformation];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);
}

- (void)_dismissCustomizeSheet:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UITabBarAccessibility;
  [(UITabBarAccessibility *)&v3 _dismissCustomizeSheet:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
}

- (void)beginCustomizingItems:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITabBarAccessibility;
  [(UITabBarAccessibility *)&v3 beginCustomizingItems:location[0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
  objc_storeStrong(location, 0);
}

- (id)accessibilityLabel
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITabBarAccessibility *)self accessibilityUserDefinedLabel];
  if (location[0])
  {
    v5 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v5 = accessibilityLocalizedString(@"tab.bar.label");
  }

  objc_storeStrong(location, 0);
  v2 = v5;

  return v2;
}

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [location[0] isEqual:*MEMORY[0x29EDC80A0]];
  objc_storeStrong(location, 0);
  return v4;
}

@end