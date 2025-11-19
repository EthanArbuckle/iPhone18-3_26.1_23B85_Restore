@interface UITabBarCustomizeViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityObscuredScreenAllowedViews;
- (void)tabBarTouchesBegan:(id)a3 withEvent:(id)a4;
- (void)tabBarTouchesEnded:(id)a3 withEvent:(id)a4;
- (void)tabBarTouchesMoved:(id)a3 withEvent:(id)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation UITabBarCustomizeViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UITabBarCustomizeView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UITabBarCustomizeView" hasInstanceVariable:@"_draggingItem" withType:"UITabBarItem"];
  [location[0] validateClass:@"UITabBar" hasInstanceVariable:@"_items" withType:"NSArray"];
  v5 = @"view";
  v6 = "@";
  [location[0] validateClass:@"UITabBarItem" hasInstanceMethod:0 withFullSignature:?];
  v4 = "v";
  [location[0] validateClass:v3 hasInstanceMethod:@"tabBarTouchesBegan: withEvent:" withFullSignature:{v6, v6, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"tabBarTouchesMoved: withEvent:" withFullSignature:{v4, v6, v6, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"tabBarTouchesEnded: withEvent:" withFullSignature:{v4, v6, v6, 0}];
  [location[0] validateClass:@"UITabBarItemProxy" hasInstanceMethod:v5 withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v5[1] = *MEMORY[0x29EDCA608];
  v3 = [(UITabBarCustomizeViewAccessibility *)self safeValueForKey:@"_tabBar"];
  v5[0] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v12 = [(UITabBarCustomizeViewAccessibility *)v15 safeValueForKey:?];
  v11.receiver = v15;
  v11.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v11 touchesBegan:location[0] withEvent:v13];
  v10 = [(UITabBarCustomizeViewAccessibility *)v15 safeValueForKey:@"_draggingProxy"];
  if (!v12 && v10)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"started.moving.tabbar.icon");
    v6 = [v10 safeValueForKey:@"view"];
    v5 = [v6 accessibilityLabel];
    v9 = [v4 stringWithFormat:v7, v5];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v19 = 0;
  objc_storeStrong(&v19, a4);
  v18 = [(UITabBarCustomizeViewAccessibility *)v21 safeValueForKey:?];
  v17.receiver = v21;
  v17.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v17 touchesMoved:location[0] withEvent:v19];
  v16 = [(UITabBarCustomizeViewAccessibility *)v21 safeValueForKey:@"_replaceItem"];
  if (v16 && ([v18 isEqual:v16] & 1) == 0)
  {
    v15 = [v16 safeValueForKey:@"view"];
    v12 = MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
    v5 = [(UITabBarCustomizeViewAccessibility *)v21 safeValueForKey:@"_tabBar"];
    v4 = [v5 safeValueForKey:@"_items"];
    v6 = [v4 indexOfObject:v16];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    v14[1] = v6;
    v7 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"replacing.tabbar.icon");
    v10 = [v15 accessibilityLabel];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v6 + 1];
    v8 = AXFormatNumber();
    v14[0] = [v7 stringWithFormat:v11, v10, v8];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](v11);
    UIAccessibilityPostNotification(*v12, v14[0]);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(UITabBarCustomizeViewAccessibility *)v9 safeValueForKey:@"_draggingProxy"];
  v5.receiver = v9;
  v5.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v5 touchesEnded:location[0] withEvent:v7];
  if (v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)tabBarTouchesBegan:(id)a3 withEvent:(id)a4
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11.receiver = v14;
  v11.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v11 tabBarTouchesBegan:location[0] withEvent:v12];
  v10 = [(UITabBarCustomizeViewAccessibility *)v14 safeValueForKey:@"_draggingItem"];
  if (v10)
  {
    v4 = MEMORY[0x29EDBA0F8];
    v7 = accessibilityLocalizedString(@"started.moving.tabbar.icon");
    v6 = [v10 safeValueForKey:@"view"];
    v5 = [v6 accessibilityLabel];
    v9 = [v4 stringWithFormat:v7, v5];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v9);
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)tabBarTouchesMoved:(id)a3 withEvent:(id)a4
{
  v36 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v34 = 0;
  objc_storeStrong(&v34, a4);
  v26 = 0;
  v27 = &v26;
  v28 = 838860800;
  v29 = 48;
  v30 = __Block_byref_object_copy__21;
  v31 = __Block_byref_object_dispose__21;
  v32 = 0;
  v19 = MEMORY[0x29EDCA5F8];
  v20 = 3221225472;
  v21 = __67__UITabBarCustomizeViewAccessibility_tabBarTouchesMoved_withEvent___block_invoke;
  v22 = &unk_29F30D400;
  v25[1] = &v26;
  v23 = MEMORY[0x29EDC9748](v36);
  v24 = MEMORY[0x29EDC9748](location[0]);
  v25[0] = MEMORY[0x29EDC9748](v34);
  AXPerformSafeBlock();
  v18 = MEMORY[0x29EDC9748](v27[5]);
  objc_storeStrong(v25, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(&v23, 0);
  _Block_object_dispose(&v26, 8);
  objc_storeStrong(&v32, 0);
  v33 = v18;
  v17.receiver = v36;
  v17.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v17 tabBarTouchesMoved:location[0] withEvent:v34];
  v16 = [(UITabBarCustomizeViewAccessibility *)v36 safeValueForKey:@"_draggingItem"];
  if (v16 && v33 && ([v33 isEqual:v16] & 1) == 0)
  {
    v12 = MEMORY[0x29EDC7EA8];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], *MEMORY[0x29EDBDAA8]);
    v15 = [v33 safeValueForKey:@"view"];
    v5 = [(UITabBarCustomizeViewAccessibility *)v36 safeValueForKey:@"_tabBar"];
    v4 = [v5 safeValueForKey:@"_items"];
    v6 = [v4 indexOfObject:v16];
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v5);
    argument[1] = v6;
    v7 = MEMORY[0x29EDBA0F8];
    v11 = accessibilityLocalizedString(@"replacing.tabbar.icon");
    v10 = [v15 accessibilityLabel];
    v9 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:v6 + 1];
    v8 = AXFormatNumber();
    argument[0] = [v7 stringWithFormat:v11, v10, v8];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](v11);
    UIAccessibilityPostNotification(*v12, argument[0]);
    objc_storeStrong(argument, 0);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v33, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(location, 0);
}

double __67__UITabBarCustomizeViewAccessibility_tabBarTouchesMoved_withEvent___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) itemInTabBarWithTouches:*(a1 + 40) withEvent:*(a1 + 48)];
  v2 = *(*(a1 + 56) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  *&result = MEMORY[0x29EDC9740](v3).n128_u64[0];
  return result;
}

- (void)tabBarTouchesEnded:(id)a3 withEvent:(id)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = 0;
  objc_storeStrong(&v7, a4);
  v6 = [(UITabBarCustomizeViewAccessibility *)v9 safeValueForKey:@"_draggingItem"];
  v5.receiver = v9;
  v5.super_class = UITabBarCustomizeViewAccessibility;
  [(UITabBarCustomizeViewAccessibility *)&v5 tabBarTouchesEnded:location[0] withEvent:v7];
  if (v6)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v6, 0);
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v88 = *MEMORY[0x29EDCA608];
  v84 = a3;
  v83 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v81 = [(UITabBarCustomizeViewAccessibility *)v83 _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v73 = 0;
  v35 = 0;
  if ((v81 & 1) == 0)
  {
    v75 = MEMORY[0x29EDCA5F8];
    v76 = -1073741824;
    v77 = 0;
    v78 = __70__UITabBarCustomizeViewAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v79 = &unk_29F30CEB0;
    v80 = MEMORY[0x29EDC9748](v83);
    v74 = &v80;
    v73 = 1;
    v35 = (__70__UITabBarCustomizeViewAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v35)
  {
    [(UITabBarCustomizeViewAccessibility *)v83 _accessibilitySetBoolValue:1 forKey:?];
    v72 = [(UITabBarCustomizeViewAccessibility *)v83 accessibilityHitTest:location[0] withEvent:v84.x, v84.y];
    [(UITabBarCustomizeViewAccessibility *)v83 _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v85 = MEMORY[0x29EDC9748](v72);
    v71 = 1;
    objc_storeStrong(&v72, 0);
  }

  else
  {
    v71 = 0;
  }

  if (v73)
  {
    objc_storeStrong(v74, 0);
  }

  if (!v71)
  {
    v69.receiver = v83;
    v69.super_class = UITabBarCustomizeViewAccessibility;
    v70 = [(UITabBarCustomizeViewAccessibility *)&v69 _accessibilityHitTest:location[0] withEvent:v84.x, v84.y];
    v64 = 0;
    if (!v70 || (v34 = 0, v70 == v83))
    {
      v68 = 0;
      objc_opt_class();
      v67 = __UIAccessibilityCastAsClass();
      v66 = MEMORY[0x29EDC9748](v67);
      objc_storeStrong(&v67, 0);
      v65 = v66;
      v64 = 1;
      v34 = [v66 pointInside:location[0] withEvent:{v84.x, v84.y}];
    }

    if (v64)
    {
      MEMORY[0x29EDC9740](v65);
    }

    if (v34)
    {
      v62 = 0;
      objc_opt_class();
      v33 = [(UITabBarCustomizeViewAccessibility *)v83 safeValueForKey:@"_proxies"];
      v61 = __UIAccessibilityCastAsClass();
      MEMORY[0x29EDC9740](v33);
      v60 = MEMORY[0x29EDC9748](v61);
      objc_storeStrong(&v61, 0);
      v63 = v60;
      v29 = [(UITabBarCustomizeViewAccessibility *)v83 safeValueForKey:@"_itemsInRowCount"];
      v30 = [v29 integerValue];
      *&v4 = MEMORY[0x29EDC9740](v29).n128_u64[0];
      v59 = v30;
      v5 = [v63 count];
      v86 = v5 / v59;
      v58 = vcvtps_s32_f32(v86);
      memset(&r1, 0, sizeof(r1));
      r1 = **&MEMORY[0x29EDB90D8];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](v63);
      v32 = [obj countByEnumeratingWithState:__b objects:v87 count:16];
      if (v32)
      {
        v26 = *__b[2];
        v27 = 0;
        v28 = v32;
        while (1)
        {
          v25 = v27;
          if (*__b[2] != v26)
          {
            objc_enumerationMutation(obj);
          }

          v56 = *(__b[1] + 8 * v27);
          v53 = 0;
          objc_opt_class();
          v24 = [v56 safeValueForKey:@"view"];
          v52 = __UIAccessibilityCastAsClass();
          MEMORY[0x29EDC9740](v24);
          if (v53)
          {
            abort();
          }

          v51 = MEMORY[0x29EDC9748](v52);
          objc_storeStrong(&v52, 0);
          v54 = v51;
          [v51 frame];
          r2.origin.x = v6;
          r2.origin.y = v7;
          r2.size.width = v8;
          r2.size.height = v9;
          v50 = CGRectUnion(r1, r2);
          r1 = v50;
          objc_storeStrong(&v54, 0);
          ++v27;
          if (v25 + 1 >= v28)
          {
            v27 = 0;
            v28 = [obj countByEnumeratingWithState:__b objects:v87 count:16];
            if (!v28)
            {
              break;
            }
          }
        }
      }

      *&v10 = MEMORY[0x29EDC9740](obj).n128_u64[0];
      v20 = v83;
      v23 = [v63 firstObject];
      v22 = [v23 safeValueForKey:@"view"];
      v21 = [v22 superview];
      [(UITabBarCustomizeViewAccessibility *)v20 convertPoint:v84.x toView:v84.y];
      v47 = v11;
      v48 = v12;
      MEMORY[0x29EDC9740](v21);
      MEMORY[0x29EDC9740](v22);
      MEMORY[0x29EDC9740](v23);
      v48 = v48 - r1.origin.y;
      v46 = v47 - r1.origin.x;
      v45 = r1.size.width - 1.0;
      if (v47 - r1.origin.x >= r1.size.width - 1.0)
      {
        v19 = v45;
      }

      else
      {
        v19 = v46;
      }

      v44 = v19;
      v47 = v19;
      v43 = v19;
      v42 = 0;
      if (v19 >= 0)
      {
        v18 = v43;
      }

      else
      {
        v18 = v42;
      }

      v41 = v18;
      v47 = v18;
      r1.size.width = r1.size.width / v59;
      r1.size.height = r1.size.height / v58;
      v17 = v59;
      v16 = CGFloor(v48 / r1.size.height);
      v40 = (CGFloor(v18 / r1.size.width) + v17 * v16);
      v37 = 0;
      if (v40 < 0 || v40 >= [v63 count])
      {
        v13 = MEMORY[0x29EDC9748](0);
      }

      else
      {
        v38 = [v63 objectAtIndex:v40];
        v37 = 1;
        v13 = MEMORY[0x29EDC9748](v38);
      }

      v39 = v13;
      if (v37)
      {
        MEMORY[0x29EDC9740](v38);
      }

      v36 = [v39 safeValueForKey:@"view"];
      if (v36)
      {
        objc_storeStrong(&v70, v36);
      }

      objc_storeStrong(&v36, 0);
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v63, 0);
    }

    v85 = MEMORY[0x29EDC9748](v70);
    v71 = 1;
    objc_storeStrong(&v70, 0);
  }

  objc_storeStrong(location, 0);
  v14 = v85;

  return v14;
}

BOOL __70__UITabBarCustomizeViewAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &UIKBEmojiZeroWidthJoiner_block_invoke_onceToken_2;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_39);
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

  return Implementation != UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_2;
}

void __70__UITabBarCustomizeViewAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    UIKBEmojiZeroWidthJoiner_block_invoke_BaseImplementation_2 = method_getImplementation(InstanceMethod);
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

@end