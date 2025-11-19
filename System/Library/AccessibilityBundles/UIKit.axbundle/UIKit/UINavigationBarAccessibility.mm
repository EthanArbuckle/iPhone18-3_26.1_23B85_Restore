@interface UINavigationBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)a3 withEvent:(id)a4;
- (BOOL)_accessibilityHasLeftRightButtonCountChanged;
- (BOOL)_accessibilityHasStaticNavBarButtonChanged;
- (BOOL)_accessibilityHasSubviewsCountChanged;
- (BOOL)_accessibilityIsGroupedParent;
- (BOOL)accessibilityPerformEscape;
- (BOOL)shouldGroupAccessibilityChildren;
- (id)_accessibilityFetchCachedNavBarElements;
- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)_accessibilityLeftButtonElements;
- (id)_accessibilityRightButtonElements;
- (id)_accessibilityStaticBarButtonItem;
- (id)_accessibilityStaticBarButtonItemWithContents:(uint64_t)a1;
- (id)_axGetCachedStaticNavBarButton;
- (id)_axSubtitleLabel;
- (id)accessibilityElements;
- (id)accessibilityIdentifier;
- (int64_t)_accessibilitySortPriority;
- (uint64_t)_accessibilityHasSubtitleViewChanged;
- (uint64_t)_accessibilityHasTitleAccessoryViewChanged;
- (uint64_t)_accessibilityHasTitleViewChanged;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySetFauxBackButton:(uint64_t)a1;
- (void)_accessibilitySetNavBarElements:(id)a3;
- (void)_accessibility_navigationBarContentsDidChange;
- (void)_axSetCachedStaticNavBarButton:(uint64_t)a1;
- (void)addSubview:(id)a3;
- (void)insertSubview:(id)a3 aboveSubview:(id)a4;
- (void)insertSubview:(id)a3 atIndex:(int64_t)a4;
- (void)insertSubview:(id)a3 belowSubview:(id)a4;
- (void)willRemoveSubview:(id)a3;
@end

@implementation UINavigationBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = @"UINavigationBar";
  v6 = "v";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v4 = @"UINavigationItem";
  v9 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"_wantsBackButtonIndicator" withFullSignature:{"B", 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"layoutSubviews" withFullSignature:{v6, 0}];
  v3 = @"_UINavigationBarVisualProviderLegacyIOS";
  [location[0] validateClass:"{CGPoint=dd}" hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceVariable:@"_backIndicatorView" withType:"UIImageView"];
  [location[0] validateClass:v3 isKindOfClass:@"_UINavigationBarVisualProvider"];
  [location[0] validateClass:v7 hasInstanceMethod:@"_backgroundView" withFullSignature:{v9, 0}];
  [location[0] validateClass:v4 hasProperty:@"backAction" withType:v9];
  v5 = @"_UINavigationBarTitleControl";
  [location[0] validateClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleLabel" withFullSignature:{v9, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleView" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"UISearchBar" hasInstanceMethod:@"_performCancelAction" withFullSignature:{v6, 0}];
  [location[0] validateClass:v7 hasInstanceVariable:@"_visualProvider" withType:"_UINavigationBarVisualProvider"];
  v8 = @"largeTitleView";
  [location[0] validateClass:@"UIKit._UINavigationBarVisualProviderModernIOSSwift" hasSwiftField:? withSwiftType:?];
  [location[0] validateClass:@"UIKit.NavigationBarLargeTitleView" hasSwiftField:v8 withSwiftType:"_UINavigationBarLargeTitleView"];
  [location[0] validateClass:@"_UINavigationBarLargeTitleView" hasInstanceMethod:@"layout" withFullSignature:{v9, 0}];
  [location[0] validateClass:@"_UINavigationBarLargeTitleViewLayout" hasInstanceVariable:@"_subtitleLabel" withType:"UILabel"];
  objc_storeStrong(v11, v10);
}

- (void)_accessibilitySetNavBarElements:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  __UIAccessibilitySetAssociatedObject();
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetFauxBackButton:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedObject();
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityAllowOutOfBoundsHitTestAtPoint:(CGPoint)a3 withEvent:(id)a4
{
  v17 = a3;
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v13.receiver = v16;
  v13.super_class = UINavigationBarAccessibility;
  v14 = [(UINavigationBarAccessibility *)&v13 _accessibilityAllowOutOfBoundsHitTestAtPoint:location[0] withEvent:v17.x, v17.y];
  if (v14 & 1) == 0 && (AXDeviceHasHomeButton() & 1) == 0 && (AXDeviceIsPhone())
  {
    v11 = 0;
    objc_opt_class();
    v8 = [(UINavigationBarAccessibility *)v16 safeValueForKey:@"_backgroundView"];
    v10 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v8);
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v12 = v9;
    [(UINavigationBarAccessibility *)v16 convertPoint:v9 toView:v17.x, v17.y];
    if (v17.y < 0.0 && ([v12 pointInside:location[0] withEvent:{v4, v5}] & 1) != 0)
    {
      v14 = 1;
    }

    objc_storeStrong(&v12, 0);
  }

  v7 = v14;
  objc_storeStrong(location, 0);
  return v7 & 1;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v6 = 1;
  v5 = [(UINavigationBarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v5)
  {
    v4 = [(UINavigationBarAccessibility *)self accessibilityUserDefinedShouldGroupChildren];
    v6 = [v4 BOOLValue];
    MEMORY[0x29EDC9740](v4);
  }

  return v6 & 1;
}

- (BOOL)_accessibilityIsGroupedParent
{
  v8 = self;
  v7 = a2;
  v4 = [(UINavigationBarAccessibility *)self accessibilityElements];
  v5 = [v4 count];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if (v5 <= 2)
  {
    return 0;
  }

  v6.receiver = v8;
  v6.super_class = UINavigationBarAccessibility;
  return [(UINavigationBarAccessibility *)&v6 _accessibilityIsGroupedParent];
}

- (int64_t)_accessibilitySortPriority
{
  v15 = self;
  v14 = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v5 = [v10 window];
  v4 = [v5 windowScene];
  v6 = [v4 interfaceOrientation];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  MEMORY[0x29EDC9740](v10);
  v13 = v6;
  IsLandscape = 0;
  if (AXDeviceIsPhone())
  {
    IsLandscape = UIInterfaceOrientationIsLandscape(v13);
  }

  v9 = IsLandscape;
  if (IsLandscape)
  {
    return 0x7FFFFFFFLL;
  }

  v8.receiver = v15;
  v8.super_class = UINavigationBarAccessibility;
  return [(UINavigationBarAccessibility *)&v8 _accessibilitySortPriority];
}

- (id)accessibilityIdentifier
{
  v65 = *MEMORY[0x29EDCA608];
  v54 = self;
  v53[1] = a2;
  v52.receiver = self;
  v52.super_class = UINavigationBarAccessibility;
  v53[0] = [(UINavigationBarAccessibility *)&v52 accessibilityIdentifier];
  location = AXLogUIA();
  type = OS_LOG_TYPE_DEBUG;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEBUG))
  {
    __os_log_helper_16_2_2_8_64_8_64(v64, v53[0], v54);
    _os_log_debug_impl(&dword_29C4D6000, location, type, "NavBar: set identifier %@ %@", v64, 0x16u);
  }

  objc_storeStrong(&location, 0);
  if (v53[0])
  {
    v55 = MEMORY[0x29EDC9748](v53[0]);
    v49 = 1;
  }

  else
  {
    objc_opt_class();
    v27 = [(UINavigationBarAccessibility *)v54 topItem];
    v48 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v27);
    v47 = AXLogUIA();
    v46 = OS_LOG_TYPE_DEBUG;
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
    {
      __os_log_helper_16_3_2_8_69_8_64(v63, v48, v54);
      _os_log_debug_impl(&dword_29C4D6000, v47, v46, "NavBar: top most item %{sensitive}@ %@", v63, 0x16u);
    }

    objc_storeStrong(&v47, 0);
    v2 = [v48 accessibilityIdentifier];
    v3 = v53[0];
    v53[0] = v2;
    if ([v2 length])
    {
      v45 = AXLogUIA();
      v44 = OS_LOG_TYPE_DEBUG;
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
      {
        __os_log_helper_16_2_2_8_64_8_64(v62, v53[0], v54);
        _os_log_debug_impl(&dword_29C4D6000, v45, v44, "NavBar: top most nav item identifier %@ %@", v62, 0x16u);
      }

      objc_storeStrong(&v45, 0);
      v55 = MEMORY[0x29EDC9748](v53[0]);
      v49 = 1;
    }

    else
    {
      v4 = [v48 title];
      v5 = v53[0];
      v53[0] = v4;
      if ([v4 length])
      {
        oslog = AXLogUIA();
        v42 = OS_LOG_TYPE_DEBUG;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
        {
          __os_log_helper_16_3_2_8_69_8_64(v61, v53[0], v54);
          _os_log_debug_impl(&dword_29C4D6000, oslog, v42, "NavBar: top most nav item title %{sensitive}@ %@", v61, 0x16u);
        }

        objc_storeStrong(&oslog, 0);
        v55 = MEMORY[0x29EDC9748](v53[0]);
        v49 = 1;
      }

      else
      {
        v26 = [v48 titleView];
        v6 = [v26 accessibilityLabel];
        v7 = v53[0];
        v53[0] = v6;
        MEMORY[0x29EDC9740](v7);
        if ([v53[0] length])
        {
          v41 = AXLogUIA();
          v40 = OS_LOG_TYPE_DEBUG;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
          {
            __os_log_helper_16_2_2_8_64_8_64(v60, v53[0], v54);
            _os_log_debug_impl(&dword_29C4D6000, v41, v40, "NavBar: top most titleView %@ %@", v60, 0x16u);
          }

          objc_storeStrong(&v41, 0);
          v55 = MEMORY[0x29EDC9748](v53[0]);
          v49 = 1;
        }

        else
        {
          objc_opt_class();
          v25 = [(UINavigationBarAccessibility *)v54 delegate];
          v39 = __UIAccessibilityCastAsClass();
          *&v8 = MEMORY[0x29EDC9740](v25).n128_u64[0];
          if (!v39)
          {
            goto LABEL_42;
          }

          v38 = [v39 delegate];
          v23 = [v38 accessibilityIdentifier];
          v24 = [v23 length];
          *&v9 = MEMORY[0x29EDC9740](v23).n128_u64[0];
          if (v24)
          {
            v37 = AXLogUIA();
            v36 = OS_LOG_TYPE_DEBUG;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              __os_log_helper_16_2_2_8_64_8_64(v59, v38, v54);
              _os_log_debug_impl(&dword_29C4D6000, v37, v36, "NavBar: navDelegate %@ %@", v59, 0x16u);
            }

            objc_storeStrong(&v37, 0);
            v55 = [v38 accessibilityIdentifier];
            v49 = 1;
          }

          else
          {
            v35 = [v39 navigationItem];
            v21 = [v48 accessibilityIdentifier];
            v22 = [v21 length];
            *&v10 = MEMORY[0x29EDC9740](v21).n128_u64[0];
            if (v22)
            {
              v34 = AXLogUIA();
              v33 = OS_LOG_TYPE_DEBUG;
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
              {
                v20 = [v48 accessibilityIdentifier];
                __os_log_helper_16_2_2_8_64_8_64(v58, v35, v20);
                _os_log_debug_impl(&dword_29C4D6000, v34, v33, "NavBar: using identifier from navController:item %@ %@", v58, 0x16u);
                MEMORY[0x29EDC9740](v20);
              }

              objc_storeStrong(&v34, 0);
              v55 = [v48 accessibilityIdentifier];
              v49 = 1;
            }

            else
            {
              obj = [v35 title];
              if (obj)
              {
                v31 = AXLogUIA();
                v30 = OS_LOG_TYPE_DEBUG;
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_8_64_8_64(v57, v35, obj);
                  _os_log_debug_impl(&dword_29C4D6000, v31, v30, "NavBar: using title from navController:item %@ %@", v57, 0x16u);
                }

                objc_storeStrong(&v31, 0);
                objc_storeStrong(v53, obj);
              }

              else
              {
                v29 = [v39 visibleViewController];
                if (!v29)
                {
                  v29 = [v39 topViewController];
                  MEMORY[0x29EDC9740](0);
                }

                v11 = [v48 accessibilityIdentifier];
                v12 = v53[0];
                v53[0] = v11;
                if (![v11 length])
                {
                  v13 = objc_opt_class();
                  v19 = NSStringFromClass(v13);
                  v18 = [(NSString *)v19 componentsSeparatedByString:@"Controller"];
                  v14 = [(NSArray *)v18 firstObject];
                  v15 = v53[0];
                  v53[0] = v14;
                  MEMORY[0x29EDC9740](v15);
                  MEMORY[0x29EDC9740](v18);
                  MEMORY[0x29EDC9740](v19);
                }

                v28 = AXLogUIA();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
                {
                  __os_log_helper_16_2_2_8_64_8_64(v56, v29, v53[0]);
                  _os_log_debug_impl(&dword_29C4D6000, v28, OS_LOG_TYPE_DEBUG, "NavBar: viewController %@ %@", v56, 0x16u);
                }

                objc_storeStrong(&v28, 0);
                objc_storeStrong(&v29, 0);
              }

              objc_storeStrong(&obj, 0);
              v49 = 0;
            }

            objc_storeStrong(&v35, 0);
          }

          objc_storeStrong(&v38, 0);
          if (!v49)
          {
LABEL_42:
            v55 = MEMORY[0x29EDC9748](v53[0]);
            v49 = 1;
          }

          objc_storeStrong(&v39, 0);
        }
      }
    }

    objc_storeStrong(&v48, 0);
  }

  objc_storeStrong(v53, 0);
  v16 = v55;

  return v16;
}

- (BOOL)accessibilityPerformEscape
{
  v61 = *MEMORY[0x29EDCA608];
  v57 = self;
  v56[1] = a2;
  v56[0] = MEMORY[0x29EDC9748](self);
  v55 = [v56[0] _accessibility_contentsOfNavigationBar];
  v32 = [v55 topItem];
  v54 = [v32 searchController];
  if ([v54 isActive])
  {
    v48 = MEMORY[0x29EDCA5F8];
    v49 = -1073741824;
    v50 = 0;
    v51 = __58__UINavigationBarAccessibility_accessibilityPerformEscape__block_invoke;
    v52 = &unk_29F30C7C8;
    v53 = MEMORY[0x29EDC9748](v54);
    AXPerformSafeBlock();
    v58 = 1;
    v47 = 1;
    objc_storeStrong(&v53, 0);
  }

  else
  {
    v30 = [v55 viewsRepresentingBackButton];
    v45 = 0;
    v43 = 0;
    v41 = 0;
    v39 = 0;
    v31 = 1;
    if (![v30 count])
    {
      v46 = [v55 backBarButtonItem];
      v45 = 1;
      v29 = 0;
      if (v46)
      {
        v44 = [v55 backBarButtonItem];
        v43 = 1;
        v29 = 0;
        if (([v44 isHidden] & 1) == 0)
        {
          v42 = [v56[0] topItem];
          v41 = 1;
          LOBYTE(v28) = 1;
          if (v42)
          {
            v40 = [v56[0] topItem];
            v39 = 1;
            v28 = [v40 hidesBackButton] ^ 1;
          }

          v29 = v28;
        }
      }

      v31 = v29;
    }

    if (v39)
    {
      MEMORY[0x29EDC9740](v40);
    }

    if (v41)
    {
      MEMORY[0x29EDC9740](v42);
    }

    if (v43)
    {
      MEMORY[0x29EDC9740](v44);
    }

    if (v45)
    {
      MEMORY[0x29EDC9740](v46);
    }

    *&v2 = MEMORY[0x29EDC9740](v30).n128_u64[0];
    if (v31)
    {
      [v56[0] _accessibility_triggerBackButton];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7F10], 0);
      v58 = 1;
      v47 = 1;
    }

    else
    {
      v26 = [v55 cancelBarButtonItems];
      v27 = [v26 count];
      *&v3 = MEMORY[0x29EDC9740](v26).n128_u64[0];
      if (v27)
      {
        v25 = [v55 cancelBarButtonItems];
        v24 = [v25 firstObject];
        [v56[0] _accessibility_triggerBarButtonItem:?];
        MEMORY[0x29EDC9740](v24);
        MEMORY[0x29EDC9740](v25);
        v58 = 1;
        v47 = 1;
      }

      else
      {
        memset(__b, 0, sizeof(__b));
        v21 = [v55 topItem];
        obj = [v21 leftBarButtonItems];
        v23 = [obj countByEnumeratingWithState:__b objects:v60 count:{16, MEMORY[0x29EDC9740](v21).n128_f64[0]}];
        if (v23)
        {
          v18 = *__b[2];
          v19 = 0;
          v20 = v23;
          while (1)
          {
            v17 = v19;
            if (*__b[2] != v18)
            {
              objc_enumerationMutation(obj);
            }

            v38 = *(__b[1] + 8 * v19);
            v15 = [v38 view];
            v4 = [v15 accessibilityTraits];
            v16 = v4 & *MEMORY[0x29EDC7500];
            *&v5 = MEMORY[0x29EDC9740](v15).n128_u64[0];
            if (v16)
            {
              break;
            }

            ++v19;
            if (v17 + 1 >= v20)
            {
              v19 = 0;
              v20 = [obj countByEnumeratingWithState:__b objects:v60 count:{16, v5}];
              if (!v20)
              {
                goto LABEL_30;
              }
            }
          }

          [v56[0] _accessibility_triggerBarButtonItem:{v38, v5}];
          v58 = 1;
          v47 = 1;
        }

        else
        {
LABEL_30:
          v47 = 0;
        }

        MEMORY[0x29EDC9740](obj);
        if (!v47)
        {
          v36 = [(UINavigationBarAccessibility *)v57 _accessibilityStaticBarButtonItemWithContents:v55];
          v6 = [v36 accessibilityTraits];
          if ((v6 & *MEMORY[0x29EDC7500]) != 0)
          {
            [v56[0] _accessibility_triggerBarButtonItem:v36];
            v58 = 1;
            v47 = 1;
          }

          else
          {
            memset(v34, 0, sizeof(v34));
            v13 = [v56[0] items];
            v14 = [v13 countByEnumeratingWithState:v34 objects:v59 count:16];
            if (v14)
            {
              v10 = *v34[2];
              v11 = 0;
              v12 = v14;
              while (1)
              {
                v9 = v11;
                if (*v34[2] != v10)
                {
                  objc_enumerationMutation(v13);
                }

                v35 = *(v34[1] + 8 * v11);
                if ([v35 accessibilityPerformEscape])
                {
                  break;
                }

                ++v11;
                if (v9 + 1 >= v12)
                {
                  v11 = 0;
                  v12 = [v13 countByEnumeratingWithState:v34 objects:v59 count:16];
                  if (!v12)
                  {
                    goto LABEL_42;
                  }
                }
              }

              v58 = 1;
              v47 = 1;
            }

            else
            {
LABEL_42:
              v47 = 0;
            }

            *&v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
            if (!v47)
            {
              v33.receiver = v57;
              v33.super_class = UINavigationBarAccessibility;
              v58 = [(UINavigationBarAccessibility *)&v33 accessibilityPerformEscape];
              v47 = 1;
            }
          }

          objc_storeStrong(&v36, 0);
        }
      }
    }
  }

  objc_storeStrong(&v54, 0);
  objc_storeStrong(&v55, 0);
  objc_storeStrong(v56, 0);
  return v58 & 1;
}

double __58__UINavigationBarAccessibility_accessibilityPerformEscape__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) searchBar];
  [v2 _performCancelAction];
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

- (id)_accessibilityStaticBarButtonItemWithContents:(uint64_t)a1
{
  v7 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v7)
  {
    v4 = [location staticBarButtonItem];
    if ([v4 isHidden])
    {
      objc_storeStrong(&v4, 0);
    }

    v8 = MEMORY[0x29EDC9748](v4);
    v5 = 1;
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v8 = 0;
    v5 = 1;
  }

  objc_storeStrong(&location, 0);
  v2 = v8;

  return v2;
}

- (id)accessibilityElements
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = [(UINavigationBarAccessibility *)self _accessibilityFetchCachedNavBarElements];
  v2 = [v7[0] axFilterObjectsUsingBlock:&__block_literal_global_27];
  v3 = v7[0];
  v7[0] = v2;
  *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v6 = [v7[0] sortedArrayUsingSelector:{sel_accessibilityCompareGeometry_, v4}];
  objc_storeStrong(v7, 0);

  return v6;
}

- (id)_accessibilityFetchCachedNavBarElements
{
  v216 = *MEMORY[0x29EDCA608];
  val = a1;
  if (a1)
  {
    v203.receiver = val;
    v203.super_class = UINavigationBarAccessibility;
    v204 = objc_msgSendSuper2(&v203, sel_accessibilityElements);
    if (v204)
    {
      v206 = MEMORY[0x29EDC9748](v204);
      v202 = 1;
    }

    else
    {
      if ([(UINavigationBarAccessibility *)val _accessibilityHasLeftRightButtonCountChanged]|| ([(UINavigationBarAccessibility *)val _accessibilityHasTitleViewChanged]& 1) != 0 || ([(UINavigationBarAccessibility *)val _accessibilityHasSubtitleViewChanged]& 1) != 0 || [(UINavigationBarAccessibility *)val _accessibilityHasStaticNavBarButtonChanged]|| ([(UINavigationBarAccessibility *)val _accessibilityHasTitleAccessoryViewChanged]& 1) != 0 || [(UINavigationBarAccessibility *)val _accessibilityHasSubviewsCountChanged])
      {
        oslog = AXLogUIA();
        type = OS_LOG_TYPE_INFO;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
        {
          __os_log_helper_16_2_1_8_64(v215, val);
          _os_log_impl(&dword_29C4D6000, oslog, type, "Left/Right button count change for %@, resetting", v215, 0xCu);
        }

        objc_storeStrong(&oslog, 0);
        [val _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
      }

      v199 = [val _accessibilityValueForKey:*MEMORY[0x29EDC7620]];
      if ([v199 count] && objc_msgSend(v199, "indexOfObjectPassingTest:", &__block_literal_global_475) == 0x7FFFFFFFFFFFFFFFLL)
      {
        v206 = MEMORY[0x29EDC9748](v199);
        v202 = 1;
      }

      else
      {
        [val _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
        v1 = [MEMORY[0x29EDB8DE8] array];
        v2 = v199;
        v199 = v1;
        MEMORY[0x29EDC9740](v2);
        v198 = MEMORY[0x29EDC9748](val);
        v197 = [v198 _accessibility_contentsOfNavigationBar];
        v196 = [v197 viewsRepresentingBackButton];
        v195 = ([val _accessibilityViewIsVisible] & 1) != 0;
        v194 = 0;
        v110 = [v197 topItem];
        v109 = [v110 searchController];
        v192 = 0;
        v190 = 0;
        v108 = 0;
        if ([v109 isActive])
        {
          v193 = [v197 topItem];
          v192 = 1;
          v191 = [v193 searchController];
          v190 = 1;
          v108 = [v191 hidesNavigationBarDuringPresentation];
        }

        v194 = v108 & 1;
        if (v190)
        {
          MEMORY[0x29EDC9740](v191);
        }

        if (v192)
        {
          MEMORY[0x29EDC9740](v193);
        }

        MEMORY[0x29EDC9740](v109);
        *&v3 = MEMORY[0x29EDC9740](v110).n128_u64[0];
        if ((v194 & 1) == 0)
        {
          if ([v196 indexOfObjectPassingTest:{&__block_literal_global_478_0, v3}] != 0x7FFFFFFFFFFFFFFFLL)
          {
            v187 = 0;
            objc_opt_class();
            v107 = [v197 topItem];
            v106 = [v107 safeValueForKey:@"backAction"];
            v186 = __UIAccessibilityCastAsClass();
            MEMORY[0x29EDC9740](v106);
            MEMORY[0x29EDC9740](v107);
            v185 = MEMORY[0x29EDC9748](v186);
            objc_storeStrong(&v186, 0);
            v188 = v185;
            v105 = [v197 backBarButtonItem];
            v104 = [v105 _accessibilityAXAttributedLabel];
            v184 = trimWhitespaceToNil(v104);
            MEMORY[0x29EDC9740](v104);
            *&v4 = MEMORY[0x29EDC9740](v105).n128_u64[0];
            v182 = 0;
            v180 = 0;
            v178 = 0;
            if (v184)
            {
              objc_storeStrong(&v184, v184);
            }

            else
            {
              v183 = [v197 backItem];
              v182 = 1;
              v181 = [v183 backButtonTitle];
              v180 = 1;
              v179 = trimWhitespaceToNil(v181);
              v178 = 1;
              objc_storeStrong(&v184, v179);
            }

            if (v178)
            {
              MEMORY[0x29EDC9740](v179);
            }

            if (v180)
            {
              MEMORY[0x29EDC9740](v181);
            }

            if (v182)
            {
              MEMORY[0x29EDC9740](v183);
            }

            v176 = 0;
            v174 = 0;
            v172 = 0;
            if (v184)
            {
              objc_storeStrong(&v184, v184);
            }

            else
            {
              v177 = [v197 backItem];
              v176 = 1;
              v175 = [v177 _accessibilityAXAttributedLabel];
              v174 = 1;
              v173 = trimWhitespaceToNil(v175);
              v172 = 1;
              objc_storeStrong(&v184, v173);
            }

            if (v172)
            {
              MEMORY[0x29EDC9740](v173);
            }

            if (v174)
            {
              MEMORY[0x29EDC9740](v175);
            }

            if (v176)
            {
              MEMORY[0x29EDC9740](v177);
            }

            v170 = 0;
            v168 = 0;
            v166 = 0;
            if (v184)
            {
              objc_storeStrong(&v184, v184);
            }

            else
            {
              v171 = [v197 backItem];
              v170 = 1;
              v169 = [v171 title];
              v168 = 1;
              v167 = trimWhitespaceToNil(v169);
              v166 = 1;
              objc_storeStrong(&v184, v167);
            }

            if (v166)
            {
              MEMORY[0x29EDC9740](v167);
            }

            if (v168)
            {
              MEMORY[0x29EDC9740](v169);
            }

            if (v170)
            {
              MEMORY[0x29EDC9740](v171);
            }

            memset(__b, 0, sizeof(__b));
            v103 = [v198 _accessibility_contentsOfNavigationBar];
            v102 = [v103 viewsRepresentingBackButton];
            v101 = [v102 countByEnumeratingWithState:__b objects:v214 count:{16, MEMORY[0x29EDC9740](v103).n128_f64[0]}];
            if (v101)
            {
              v98 = *__b[2];
              v99 = 0;
              v100 = v101;
              while (1)
              {
                v97 = v99;
                if (*__b[2] != v98)
                {
                  objc_enumerationMutation(v102);
                }

                v165 = *(__b[1] + 8 * v99);
                v162 = 0;
                v160 = 0;
                if (v184)
                {
                  objc_storeStrong(&v184, v184);
                }

                else
                {
                  v163 = [v165 _accessibilityAXAttributedLabel];
                  v162 = 1;
                  v161 = trimWhitespaceToNil(v163);
                  v160 = 1;
                  objc_storeStrong(&v184, v161);
                }

                if (v160)
                {
                  MEMORY[0x29EDC9740](v161);
                }

                if (v162)
                {
                  MEMORY[0x29EDC9740](v163);
                }

                ++v99;
                if (v97 + 1 >= v100)
                {
                  v99 = 0;
                  v100 = [v102 countByEnumeratingWithState:__b objects:v214 count:16];
                  if (!v100)
                  {
                    break;
                  }
                }
              }
            }

            *&v5 = MEMORY[0x29EDC9740](v102).n128_u64[0];
            v158 = 0;
            v156 = 0;
            if (v184)
            {
              objc_storeStrong(&v184, v184);
            }

            else
            {
              v159 = [v188 accessibilityLabel];
              v158 = 1;
              v157 = trimWhitespaceToNil(v159);
              v156 = 1;
              objc_storeStrong(&v184, v157);
            }

            if (v156)
            {
              MEMORY[0x29EDC9740](v157);
            }

            if (v158)
            {
              MEMORY[0x29EDC9740](v159);
            }

            v154 = 0;
            if (v184)
            {
              objc_storeStrong(&v184, v184);
            }

            else
            {
              v155 = accessibilityLocalizedString(@"uibutton.navbar.back.button.title");
              v154 = 1;
              objc_storeStrong(&v184, v155);
            }

            if (v154)
            {
              MEMORY[0x29EDC9740](v155);
            }

            v96 = [val _accessibilityFauxBackButton];
            v151 = 0;
            if (v96)
            {
              v6 = MEMORY[0x29EDC9748](v96);
            }

            else
            {
              v95 = [UIAccessibilityBackButtonElement alloc];
              v152 = [(UIAccessibilityBackButtonElement *)v95 initWithAccessibilityContainer:v198];
              v151 = 1;
              v6 = MEMORY[0x29EDC9748](v152);
            }

            v153 = v6;
            if (v151)
            {
              MEMORY[0x29EDC9740](v152);
            }

            *&v7 = MEMORY[0x29EDC9740](v96).n128_u64[0];
            [v153 setAccessibilityContainer:{val, v7}];
            [(UINavigationBarAccessibility *)val _accessibilitySetFauxBackButton:v153];
            [v153 setAssociatedViews:v196];
            objc_initWeak(&from, val);
            v94 = v153;
            v144 = MEMORY[0x29EDCA5F8];
            v145 = -1073741824;
            v146 = 0;
            v147 = __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_3;
            v148 = &unk_29F30CAE8;
            objc_copyWeak(&v149, &from);
            [v94 _setAccessibilityFrameBlock:&v144];
            v93 = [v197 backBarButtonItem];
            v143 = [v93 accessibilityUserInputLabels];
            if (![v143 count])
            {
              v142 = objc_alloc_init(MEMORY[0x29EDB8DE8]);
              [v142 axSafelyAddObject:v184];
              v92 = [v197 backItem];
              v91 = [v92 _abbreviatedBackButtonTitles];
              v90 = [v91 ax_filteredArrayUsingBlock:&__block_literal_global_486];
              [v142 axSafelyAddObjectsFromArray:?];
              MEMORY[0x29EDC9740](v90);
              MEMORY[0x29EDC9740](v91);
              MEMORY[0x29EDC9740](v92);
              v89 = UIKitAccessibilityLocalizedString();
              [v142 axSafelyAddObject:?];
              MEMORY[0x29EDC9740](v89);
              objc_storeStrong(&v143, v142);
              objc_storeStrong(&v142, 0);
            }

            [v153 setAccessibilityUserInputLabels:v143];
            [v153 _accessibilitySetSortPriority:1];
            [v153 setAccessibilityLabel:v184];
            v88 = [v188 accessibilityIdentifier];
            [v153 setAccessibilityIdentifier:?];
            *&v8 = MEMORY[0x29EDC9740](v88).n128_u64[0];
            [v153 setAccessibilityTraits:{*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7500], v8}];
            v87 = [v197 backItem];
            v86 = [v87 accessibilityLanguage];
            [v153 setAccessibilityLanguage:?];
            MEMORY[0x29EDC9740](v86);
            *&v9 = MEMORY[0x29EDC9740](v87).n128_u64[0];
            [v199 addObject:{v153, v9}];
            objc_storeStrong(&v143, 0);
            objc_destroyWeak(&v149);
            objc_destroyWeak(&from);
            objc_storeStrong(&v153, 0);
            objc_storeStrong(&v184, 0);
            objc_storeStrong(&v188, 0);
          }

          v141 = [(UINavigationBarAccessibility *)val _accessibilityRightButtonElements];
          v140 = [(UINavigationBarAccessibility *)val _accessibilityLeftButtonElements];
          memset(v138, 0, sizeof(v138));
          v85 = MEMORY[0x29EDB8D80];
          v84 = [v197 largeTitleView];
          v83 = [v197 titleView];
          v82 = [v197 topItem];
          v81 = [v82 _largeSubtitleView];
          v80 = [v85 axArrayByIgnoringNilElementsWithCount:{3, v84, v83, v81}];
          MEMORY[0x29EDC9740](v81);
          MEMORY[0x29EDC9740](v82);
          MEMORY[0x29EDC9740](v83);
          v79 = [v80 countByEnumeratingWithState:v138 objects:v213 count:{16, MEMORY[0x29EDC9740](v84).n128_f64[0]}];
          if (v79)
          {
            v76 = *v138[2];
            v77 = 0;
            v78 = v79;
            while (1)
            {
              v75 = v77;
              if (*v138[2] != v76)
              {
                objc_enumerationMutation(v80);
              }

              v139 = *(v138[1] + 8 * v77);
              v137 = MEMORY[0x29EDC9748](v139);
              NSClassFromString(&cfstr_Uinavigationba_8.isa);
              if (objc_opt_isKindOfClass())
              {
                v74 = [v139 safeValueForKey:@"titleLabel"];
                *&v10 = MEMORY[0x29EDC9740](v74).n128_u64[0];
                if (v74)
                {
                  [v139 _accessibilityLoadAccessibilityInformation];
                  v11 = [v139 safeValueForKey:@"titleLabel"];
                }

                else
                {
                  v11 = [v139 safeValueForKey:{@"titleView", v10}];
                }

                v12 = v137;
                v137 = v11;
                MEMORY[0x29EDC9740](v12);
              }

              if ([v137 _accessibilityViewIsVisible])
              {
                v136 = objc_opt_new();
                [(_UIAccessibilityNavigationViewInfo *)v136 setNavigationBar:?];
                v73 = [v197 topItem];
                [(_UIAccessibilityNavigationViewInfo *)v136 setNavigationItem:v73];
                MEMORY[0x29EDC9740](v73);
                objc_opt_class();
                v72 = __UIAccessibilityCastAsSafeCategory();
                [v72 _accessibilitySetNavigationViewInfo:v136];
                *&v13 = MEMORY[0x29EDC9740](v72).n128_u64[0];
                [v199 addObject:{v137, v13}];
                [val _accessibilitySetRetainedValue:v137 forKey:@"AXTitleView"];
                objc_storeStrong(&v136, 0);
                v202 = 0;
              }

              else
              {
                v202 = 5;
              }

              objc_storeStrong(&v137, 0);
              ++v77;
              if (v75 + 1 >= v78)
              {
                v77 = 0;
                v78 = [v80 countByEnumeratingWithState:v138 objects:v213 count:16];
                if (!v78)
                {
                  break;
                }
              }
            }
          }

          MEMORY[0x29EDC9740](v80);
          v135 = [(UINavigationBarAccessibility *)val _axSubtitleLabel];
          if (v135 && ([v135 _accessibilityViewIsVisible] & 1) != 0)
          {
            [v199 addObject:v135];
            [val _accessibilitySetRetainedValue:v135 forKey:@"AXSubtitleView"];
          }

          v71 = [v197 topItem];
          v134 = [v71 _largeTitleAccessoryView];
          *&v14 = MEMORY[0x29EDC9740](v71).n128_u64[0];
          if (v134 && ([v134 _accessibilityViewIsVisible] & 1) != 0)
          {
            [v199 addObject:v134];
            [val _accessibilitySetRetainedValue:v134 forKey:@"AXTitleAccessoryView"];
          }

          v70 = val;
          v69 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v140, "count", v14)}];
          [v70 _accessibilitySetRetainedValue:? forKey:?];
          *&v15 = MEMORY[0x29EDC9740](v69).n128_u64[0];
          v68 = val;
          v67 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v141, "count", v15)}];
          [v68 _accessibilitySetRetainedValue:? forKey:?];
          *&v16 = MEMORY[0x29EDC9740](v67).n128_u64[0];
          v133 = [v197 cancelBarButtonItems];
          v132 = [v197 otherBarButtonItems];
          v131 = [(UINavigationBarAccessibility *)val _accessibilityStaticBarButtonItemWithContents:v197];
          v130 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{1, v131}];
          v129 = [MEMORY[0x29EDB8E20] set];
          memset(v127, 0, sizeof(v127));
          v65 = [MEMORY[0x29EDB8D80] axArrayByIgnoringNilElementsWithCount:{5, v141, v140, v133, v132, v130}];
          v66 = [v65 countByEnumeratingWithState:v127 objects:v212 count:16];
          if (v66)
          {
            v62 = *v127[2];
            v63 = 0;
            v64 = v66;
            while (1)
            {
              v61 = v63;
              if (*v127[2] != v62)
              {
                objc_enumerationMutation(v65);
              }

              v128 = *(v127[1] + 8 * v63);
              memset(v125, 0, sizeof(v125));
              v59 = MEMORY[0x29EDC9748](v128);
              v60 = [v59 countByEnumeratingWithState:v125 objects:v211 count:16];
              if (v60)
              {
                v56 = *v125[2];
                v57 = 0;
                v58 = v60;
                while (1)
                {
                  v55 = v57;
                  if (*v125[2] != v56)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v126 = *(v125[1] + 8 * v57);
                  v124 = [v126 view];
                  v54 = [v124 isAccessibilityElement];
                  v121 = 0;
                  v119 = 0;
                  if (v54 & 1) != 0 || ([v124 _accessibilityHasOrderedChildren])
                  {
                    v210 = v124;
                    v122 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v210 count:1];
                    v121 = 1;
                    v17 = MEMORY[0x29EDC9748](v122);
                  }

                  else
                  {
                    v120 = [v124 _accessibleSubviews:1];
                    v119 = 1;
                    v17 = MEMORY[0x29EDC9748](v120);
                  }

                  v123 = v17;
                  if (v119)
                  {
                    MEMORY[0x29EDC9740](v120);
                  }

                  if (v121)
                  {
                    MEMORY[0x29EDC9740](v122);
                  }

                  if (v124 && ![v123 count] && AXDoesRequestingClientDeserveAutomation())
                  {
                    v209 = v124;
                    v18 = [MEMORY[0x29EDB8D80] arrayWithObjects:&v209 count:1];
                    v19 = v123;
                    v123 = v18;
                    MEMORY[0x29EDC9740](v19);
                  }

                  if (![v123 count] && (objc_msgSend(v129, "containsObject:", v126) & 1) == 0)
                  {
                    if ([v141 containsObject:v126])
                    {
                      v53 = val;
                      v52 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(val, "_accessibilityIntegerValueForKey:", @"AXRightCount"}];
                      [v53 _accessibilitySetRetainedValue:? forKey:?];
                      v20 = MEMORY[0x29EDC9740](v52).n128_u64[0];
                    }

                    else if ([v140 containsObject:v126])
                    {
                      v51 = val;
                      v50 = [MEMORY[0x29EDBA070] numberWithInteger:{objc_msgSend(val, "_accessibilityIntegerValueForKey:", @"AXLeftCount"}];
                      [v51 _accessibilitySetRetainedValue:? forKey:?];
                      v20 = MEMORY[0x29EDC9740](v50).n128_u64[0];
                    }

                    [v129 addObject:{v126, *&v20}];
                  }

                  memset(v117, 0, sizeof(v117));
                  v48 = MEMORY[0x29EDC9748](v123);
                  v49 = [v48 countByEnumeratingWithState:v117 objects:v208 count:16];
                  if (v49)
                  {
                    v45 = *v117[2];
                    v46 = 0;
                    v47 = v49;
                    while (1)
                    {
                      v44 = v46;
                      if (*v117[2] != v45)
                      {
                        objc_enumerationMutation(v48);
                      }

                      v118 = *(v117[1] + 8 * v46);
                      if (([v199 containsObject:v118] & 1) == 0)
                      {
                        v43 = [v126 customView];
                        *&v21 = MEMORY[0x29EDC9740](v43).n128_u64[0];
                        if (!v43)
                        {
                          v116 = objc_opt_new();
                          [(_UIAccessibilityNavigationViewInfo *)v116 setBarButtonItem:v126];
                          v42 = [v197 topItem];
                          [(_UIAccessibilityNavigationViewInfo *)v116 setNavigationItem:v42];
                          MEMORY[0x29EDC9740](v42);
                          [(_UIAccessibilityNavigationViewInfo *)v116 setIsCancelItem:?];
                          [(_UIAccessibilityNavigationViewInfo *)v116 setNavigationBar:?];
                          v41 = [v141 containsObject:v126];
                          [(_UIAccessibilityNavigationViewInfo *)v116 setIsRightItem:v41];
                          objc_opt_class();
                          v40 = __UIAccessibilityCastAsSafeCategory();
                          [v40 _accessibilitySetNavigationViewInfo:v116];
                          MEMORY[0x29EDC9740](v40);
                          objc_storeStrong(&v116, 0);
                        }

                        [v199 addObject:{v118, v21}];
                      }

                      ++v46;
                      if (v44 + 1 >= v47)
                      {
                        v46 = 0;
                        v47 = [v48 countByEnumeratingWithState:v117 objects:v208 count:16];
                        if (!v47)
                        {
                          break;
                        }
                      }
                    }
                  }

                  MEMORY[0x29EDC9740](v48);
                  objc_storeStrong(&v123, 0);
                  objc_storeStrong(&v124, 0);
                  ++v57;
                  if (v55 + 1 >= v58)
                  {
                    v57 = 0;
                    v58 = [v59 countByEnumeratingWithState:v125 objects:v211 count:16];
                    if (!v58)
                    {
                      break;
                    }
                  }
                }
              }

              *&v22 = MEMORY[0x29EDC9740](v59).n128_u64[0];
              ++v63;
              if (v61 + 1 >= v64)
              {
                v63 = 0;
                v64 = [v65 countByEnumeratingWithState:v127 objects:v212 count:{16, v22}];
                if (!v64)
                {
                  break;
                }
              }
            }
          }

          *&v23 = MEMORY[0x29EDC9740](v65).n128_u64[0];
          v39 = val;
          v38 = [v131 view];
          [(UINavigationBarAccessibility *)v39 _axSetCachedStaticNavBarButton:v38];
          MEMORY[0x29EDC9740](v38);
          objc_storeStrong(&v129, 0);
          objc_storeStrong(&v130, 0);
          objc_storeStrong(&v131, 0);
          objc_storeStrong(&v132, 0);
          objc_storeStrong(&v133, 0);
          objc_storeStrong(&v134, 0);
          objc_storeStrong(&v135, 0);
          objc_storeStrong(&v140, 0);
          objc_storeStrong(&v141, 0);
        }

        v115 = [v198 _accessibleSubviews:{1, v3}];
        v37 = val;
        v36 = [MEMORY[0x29EDBA070] numberWithUnsignedInteger:{objc_msgSend(v115, "count")}];
        [v37 _accessibilitySetRetainedValue:? forKey:?];
        MEMORY[0x29EDC9740](v36);
        memset(v113, 0, sizeof(v113));
        v34 = MEMORY[0x29EDC9748](v115);
        v35 = [v34 countByEnumeratingWithState:v113 objects:v207 count:16];
        if (v35)
        {
          v31 = *v113[2];
          v32 = 0;
          v33 = v35;
          while (1)
          {
            v30 = v32;
            if (*v113[2] != v31)
            {
              objc_enumerationMutation(v34);
            }

            v114 = *(v113[1] + 8 * v32);
            v112 = 0;
            v111 = MEMORY[0x29EDC9748](v114);
            while (1)
            {
              v29 = 0;
              if (v111 != val)
              {
                v29 = v111 != 0;
              }

              if (!v29)
              {
                break;
              }

              if ([v199 containsObject:v111] & 1) != 0 || (objc_msgSend(v196, "containsObject:", v111))
              {
                objc_storeStrong(&v112, v111);
                break;
              }

              v24 = [v111 accessibilityContainer];
              v25 = v111;
              v111 = v24;
              MEMORY[0x29EDC9740](v25);
            }

            if (!v112)
            {
              [v199 addObject:v114];
            }

            objc_storeStrong(&v111, 0);
            objc_storeStrong(&v112, 0);
            ++v32;
            if (v30 + 1 >= v33)
            {
              v32 = 0;
              v33 = [v34 countByEnumeratingWithState:v113 objects:v207 count:16];
              if (!v33)
              {
                break;
              }
            }
          }
        }

        *&v26 = MEMORY[0x29EDC9740](v34).n128_u64[0];
        [val _accessibilitySortElementsUsingGeometry:{v199, v26}];
        if (v195)
        {
          [val _accessibilitySetNavBarElements:v199];
          [val _accessibilitySetRetainedValue:v199 forKey:*MEMORY[0x29EDC7620]];
        }

        v206 = MEMORY[0x29EDC9748](v199);
        v202 = 1;
        objc_storeStrong(&v115, 0);
        objc_storeStrong(&v196, 0);
        objc_storeStrong(&v197, 0);
        objc_storeStrong(&v198, 0);
      }

      objc_storeStrong(&v199, 0);
    }

    objc_storeStrong(&v204, 0);
  }

  else
  {
    v206 = 0;
  }

  v27 = v206;

  return v27;
}

uint64_t __53__UINavigationBarAccessibility_accessibilityElements__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [location[0] _accessibilityViewIsVisible] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (id)_accessibilityHitTest:(CGPoint)a3 withEvent:(id)a4
{
  v22 = a3;
  v21 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v18 = 0;
  objc_opt_class();
  v17 = __UIAccessibilityCastAsClass();
  v16 = MEMORY[0x29EDC9748](v17);
  objc_storeStrong(&v17, 0);
  v19 = v16;
  v15 = [v16 pointInside:location[0] withEvent:{v22.x, v22.y}];
  if ((v15 & 1) == 0 || ((objc_opt_class(), v8 = -[UINavigationBarAccessibility topItem](v21, "topItem"), v14 = __UIAccessibilityCastAsClass(), v13 = [v14 _bottomPalette], objc_msgSend(v19, "convertPoint:toView:", v13, v22.x, v22.y), v11 = v4, v12 = v5, (objc_msgSend(v13, "pointInside:withEvent:", location[0], v4, v5) & 1) == 0) ? (v10 = 0) : (v23 = objc_msgSend(v13, "_accessibilityHitTest:withEvent:", location[0], v11, v12), v10 = 1), objc_storeStrong(&v13, 0), objc_storeStrong(&v14, 0), !v10))
  {
    v9.receiver = v21;
    v9.super_class = UINavigationBarAccessibility;
    v23 = [(UINavigationBarAccessibility *)&v9 _accessibilityHitTest:location[0] withEvent:v22.x, v22.y];
    v10 = 1;
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  v6 = v23;

  return v6;
}

- (BOOL)_accessibilityHasLeftRightButtonCountChanged
{
  v28 = *MEMORY[0x29EDCA608];
  v25 = a1;
  if (a1)
  {
    v24 = [v25 _accessibilityIntegerValueForKey:@"AXLeftCount"];
    v23 = [v25 _accessibilityIntegerValueForKey:@"AXRightCount"];
    v22 = [(UINavigationBarAccessibility *)v25 _accessibilityLeftButtonElements];
    location = [(UINavigationBarAccessibility *)v25 _accessibilityRightButtonElements];
    v20 = [v22 count];
    v19 = [location count];
    memset(__b, 0, sizeof(__b));
    v10 = MEMORY[0x29EDB8D80];
    v12 = [v22 allObjects];
    v11 = [location allObjects];
    obj = [v10 axArrayWithPossiblyNilArrays:{2, v12, v11}];
    MEMORY[0x29EDC9740](v11);
    v14 = [obj countByEnumeratingWithState:__b objects:v27 count:{16, MEMORY[0x29EDC9740](v12).n128_f64[0]}];
    if (v14)
    {
      v7 = *__b[2];
      v8 = 0;
      v9 = v14;
      while (1)
      {
        v6 = v8;
        if (*__b[2] != v7)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(__b[1] + 8 * v8);
        v4 = [v18 view];
        v15 = 0;
        v5 = 0;
        if (!v4)
        {
          v16 = [v18 customView];
          v15 = 1;
          v5 = v16 == 0;
        }

        if (v15)
        {
          MEMORY[0x29EDC9740](v16);
        }

        *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
        if (v5)
        {
          if ([location containsObject:{v18, v1}])
          {
            --v19;
          }

          else if ([v22 containsObject:v18])
          {
            --v20;
          }
        }

        ++v8;
        if (v6 + 1 >= v9)
        {
          v8 = 0;
          v9 = [obj countByEnumeratingWithState:__b objects:v27 count:{16, v1}];
          if (!v9)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    v3 = 1;
    if (v24 == v20)
    {
      v3 = v23 != v19;
    }

    v26 = v3;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v22, 0);
  }

  else
  {
    return 0;
  }

  return v26;
}

- (id)_accessibilityLeftButtonElements
{
  v13 = a1;
  if (a1)
  {
    v12 = MEMORY[0x29EDC9748](v13);
    v11 = [v12 _accessibility_contentsOfNavigationBar];
    v10 = [MEMORY[0x29EDB8E20] set];
    v4 = v10;
    v6 = [v11 topItem];
    v5 = [v6 leftBarButtonItem];
    [v4 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v5);
    *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v7 = v10;
    v9 = [v11 topItem];
    v8 = [v9 leftBarButtonItems];
    [v7 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    v14 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v14 = 0;
  }

  v2 = v14;

  return v2;
}

- (id)_accessibilityRightButtonElements
{
  v13 = a1;
  if (a1)
  {
    v12 = MEMORY[0x29EDC9748](v13);
    v11 = [v12 _accessibility_contentsOfNavigationBar];
    v10 = [MEMORY[0x29EDB8E20] set];
    v4 = v10;
    v6 = [v11 topItem];
    v5 = [v6 rightBarButtonItem];
    [v4 axSafelyAddObject:?];
    MEMORY[0x29EDC9740](v5);
    *&v1 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v7 = v10;
    v9 = [v11 topItem];
    v8 = [v9 rightBarButtonItems];
    [v7 axSafelyAddObjectsFromArray:?];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    v14 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
  }

  else
  {
    v14 = 0;
  }

  v2 = v14;

  return v2;
}

- (uint64_t)_accessibilityHasTitleViewChanged
{
  v25 = *MEMORY[0x29EDCA608];
  v22 = a1;
  if (a1)
  {
    v21 = 0;
    v20 = MEMORY[0x29EDC9748](v22);
    v19 = [v20 _accessibility_contentsOfNavigationBar];
    v18 = [v22 _accessibilityValueForKey:@"AXTitleView"];
    v9 = MEMORY[0x29EDB8D80];
    v13 = [v19 largeTitleView];
    v12 = [v19 titleView];
    v11 = [v19 topItem];
    v10 = [v11 _largeSubtitleView];
    location = [v9 axArrayByIgnoringNilElementsWithCount:{3, v13, v12, v10}];
    MEMORY[0x29EDC9740](v10);
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
    *&v1 = MEMORY[0x29EDC9740](v13).n128_u64[0];
    if (!v18 || [location count])
    {
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x29EDC9748](location);
      v8 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
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

          v15 = *(__b[1] + 8 * v5);
          if ([v15 _accessibilityViewIsVisible])
          {
            v21 = v15 != v18;
          }

          ++v5;
          if (v3 + 1 >= v6)
          {
            v5 = 0;
            v6 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
            if (!v6)
            {
              break;
            }
          }
        }
      }

      MEMORY[0x29EDC9740](obj);
      v23 = v21;
      v16 = 1;
    }

    else
    {
      v23 = 1;
      v16 = 1;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

- (uint64_t)_accessibilityHasSubtitleViewChanged
{
  v6 = a1;
  if (a1)
  {
    v5 = [(UINavigationBarAccessibility *)v6 _axSubtitleLabel];
    location = [v6 _accessibilityValueForKey:@"AXSubtitleView"];
    if (!location || (v3 = 1, ([location _accessibilityViewIsVisible] & 1) != 0))
    {
      v2 = 0;
      if (!location)
      {
        v2 = [v5 _accessibilityViewIsVisible];
      }

      v3 = v2;
    }

    v7 = v3 & 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v5, 0);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_axSubtitleLabel
{
  v17 = a1;
  if (a1)
  {
    v16 = 0;
    v14 = 0;
    objc_opt_class();
    v7 = [v17 safeValueForKey:@"_visualProvider"];
    v13 = __UIAccessibilityCastAsClass();
    MEMORY[0x29EDC9740](v7);
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v15 = v12;
    if ([v12 wantsLargeTitleDisplayed])
    {
      v6 = [v15 safeSwiftValueForKey:?];
      v5 = [v6 safeSwiftValueForKey:@"largeTitleView"];
      v11 = [v5 safeValueForKey:@"layout"];
      MEMORY[0x29EDC9740](v5);
      MEMORY[0x29EDC9740](v6);
      NSClassFromString(&cfstr_Uinavigationba_12.isa);
      if (objc_opt_isKindOfClass())
      {
        v10 = 0;
        objc_opt_class();
        v4 = [v11 safeValueForKey:@"_subtitleLabel"];
        v9 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v4);
        v8 = MEMORY[0x29EDC9748](v9);
        objc_storeStrong(&v9, 0);
        v1 = v16;
        v16 = v8;
        MEMORY[0x29EDC9740](v1);
      }

      objc_storeStrong(&v11, 0);
    }

    v18 = MEMORY[0x29EDC9748](v16);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  else
  {
    v18 = 0;
  }

  v2 = v18;

  return v2;
}

- (uint64_t)_accessibilityHasTitleAccessoryViewChanged
{
  v10 = a1;
  if (a1)
  {
    v9 = MEMORY[0x29EDC9748](v10);
    v8 = [v9 _accessibility_contentsOfNavigationBar];
    v7 = [v10 _accessibilityValueForKey:@"AXTitleAccessoryView"];
    v5 = [v8 topItem];
    location = [v5 _largeTitleAccessoryView];
    *&v1 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (!v7 || (v4 = 1, ([location _accessibilityViewIsVisible] & 1) != 0))
    {
      v3 = 0;
      if (!v7)
      {
        v3 = [location _accessibilityViewIsVisible];
      }

      v4 = v3;
    }

    v11 = v4 & 1;
    objc_storeStrong(&location, 0);
    objc_storeStrong(&v7, 0);
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

- (BOOL)_accessibilityHasSubviewsCountChanged
{
  v9 = a1;
  if (a1)
  {
    v8 = [v9 _accessibilityIntegerValueForKey:@"kAXSubviewCount"];
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v7 = [v4 _accessibleSubviews:?];
    *&v1 = MEMORY[0x29EDC9740](v4).n128_u64[0];
    v3 = [v7 count];
    v10 = v8 != v3;
    objc_storeStrong(&v7, 0);
  }

  else
  {
    return 0;
  }

  return v10;
}

- (id)_axGetCachedStaticNavBarButton
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedNonRetainedObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)_axSetCachedStaticNavBarButton:(uint64_t)a1
{
  v3 = a1;
  location = 0;
  objc_storeStrong(&location, a2);
  if (v3)
  {
    __UIAccessibilitySetAssociatedNonRetainedObject();
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)_accessibilityHasStaticNavBarButtonChanged
{
  if (a1)
  {
    v4 = [(UINavigationBarAccessibility *)a1 _axGetCachedStaticNavBarButton];
    v3 = [(UINavigationBarAccessibility *)a1 _accessibilityStaticBarButtonItem];
    v1 = [v3 view];
    v6 = v4 != v1;
    MEMORY[0x29EDC9740](v1);
    MEMORY[0x29EDC9740](v3);
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    return 0;
  }

  return v6;
}

- (id)_accessibilityStaticBarButtonItem
{
  v5 = a1;
  if (a1)
  {
    v4 = MEMORY[0x29EDC9748](v5);
    v3 = [v4 _accessibility_contentsOfNavigationBar];
    v6 = [(UINavigationBarAccessibility *)v5 _accessibilityStaticBarButtonItemWithContents:v3];
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v6 = 0;
  }

  v1 = v6;

  return v1;
}

uint64_t __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = [location[0] _accessibilityWindow];
  MEMORY[0x29EDC9740](v6);
  if (v6)
  {
    v8 = 0;
  }

  else
  {
    *a4 = 1;
    v8 = 1;
  }

  objc_storeStrong(location, 0);
  return v8 & 1;
}

uint64_t __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_2(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = [location[0] _accessibilityViewIsVisible];
  objc_storeStrong(location, 0);
  return v3;
}

CGFloat __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_3(uint64_t a1)
{
  v33 = *MEMORY[0x29EDCA608];
  v30 = a1;
  v29 = a1;
  memset(&v31, 0, sizeof(v31));
  v31 = **&MEMORY[0x29EDB90D8];
  memset(__b, 0, sizeof(__b));
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v18 = [WeakRetained _accessibility_contentsOfNavigationBar];
  obj = [v18 viewsRepresentingBackButton];
  MEMORY[0x29EDC9740](v18);
  v21 = [obj countByEnumeratingWithState:__b objects:v32 count:{16, MEMORY[0x29EDC9740](WeakRetained).n128_f64[0]}];
  if (v21)
  {
    v14 = *__b[2];
    v15 = 0;
    v16 = v21;
    while (1)
    {
      v13 = v15;
      if (*__b[2] != v14)
      {
        objc_enumerationMutation(obj);
      }

      v28 = *(__b[1] + 8 * v15);
      v11 = v28;
      [v28 bounds];
      v22 = v1;
      v23 = v2;
      v24 = v3;
      v25 = v4;
      v12 = objc_loadWeakRetained((a1 + 32));
      [v11 convertRect:v22 toView:{v23, v24, v25}];
      r2.origin.x = v5;
      r2.origin.y = v6;
      r2.size.width = v7;
      r2.size.height = v8;
      MEMORY[0x29EDC9740](v12);
      v31 = CGRectUnion(v31, r2);
      ++v15;
      if (v13 + 1 >= v16)
      {
        v15 = 0;
        v16 = [obj countByEnumeratingWithState:__b objects:v32 count:16];
        if (!v16)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  v10 = objc_loadWeakRetained((a1 + 32));
  v31 = UIAccessibilityConvertFrameToScreenCoordinates(v31, v10);
  MEMORY[0x29EDC9740](v10);
  return v31.origin.x;
}

BOOL __71__UINavigationBarAccessibility__accessibilityFetchCachedNavBarElements__block_invoke_4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v14 = a3;
  v13 = a4;
  v12 = a1;
  v11 = 0;
  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  v9 = MEMORY[0x29EDC9748](v10);
  objc_storeStrong(&v10, 0);
  v5 = [v9 length] != 0;
  MEMORY[0x29EDC9740](v9);
  objc_storeStrong(location, 0);
  return v5;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v18 = *MEMORY[0x29EDCA608];
  v16 = self;
  v15 = a2;
  v14.receiver = self;
  v14.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v14 _accessibilityLoadAccessibilityInformation];
  [(UINavigationBarAccessibility *)v16 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  v9 = [(UINavigationBarAccessibility *)v16 _accessibility_contentsOfNavigationBar];
  v8 = [v9 promptView];
  v7 = [(UINavigationBarAccessibility *)v16 accessibilityLanguage];
  [v8 setAccessibilityLanguage:?];
  MEMORY[0x29EDC9740](v7);
  MEMORY[0x29EDC9740](v8);
  MEMORY[0x29EDC9740](v9);
  memset(__b, 0, sizeof(__b));
  obj = [(UINavigationBarAccessibility *)v16 items];
  v11 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
  if (v11)
  {
    v4 = *__b[2];
    v5 = 0;
    v6 = v11;
    while (1)
    {
      v3 = v5;
      if (*__b[2] != v4)
      {
        objc_enumerationMutation(obj);
      }

      v13 = *(__b[1] + 8 * v5);
      [v13 _accessibilityLoadAccessibilityInformation];
      ++v5;
      v6 = v2;
      if (v3 + 1 >= v2)
      {
        v5 = 0;
        v6 = [obj countByEnumeratingWithState:__b objects:v17 count:16];
        if (!v6)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
}

- (void)addSubview:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v3 addSubview:location[0]];
  [(UINavigationBarAccessibility *)v5 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)willRemoveSubview:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v3 willRemoveSubview:location[0]];
  [(UINavigationBarAccessibility *)v5 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)a3 belowSubview:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] belowSubview:v6];
  [(UINavigationBarAccessibility *)v8 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)a3 aboveSubview:(id)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  v5.receiver = v8;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] aboveSubview:v6];
  [(UINavigationBarAccessibility *)v8 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)insertSubview:(id)a3 atIndex:(int64_t)a4
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = a4;
  v5.receiver = v8;
  v5.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v5 insertSubview:location[0] atIndex:a4];
  [(UINavigationBarAccessibility *)v8 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  objc_storeStrong(location, 0);
}

- (void)_accessibility_navigationBarContentsDidChange
{
  v21 = *MEMORY[0x29EDCA608];
  v17 = self;
  v16 = a2;
  v15.receiver = self;
  v15.super_class = UINavigationBarAccessibility;
  [(UINavigationBarAccessibility *)&v15 _accessibility_navigationBarContentsDidChange];
  v11 = [(UINavigationBarAccessibility *)v17 _accessibility_contentsOfNavigationBar];
  v10 = [v11 promptView];
  v9 = [(UINavigationBarAccessibility *)v17 accessibilityLanguage];
  [v10 setAccessibilityLanguage:?];
  MEMORY[0x29EDC9740](v9);
  MEMORY[0x29EDC9740](v10);
  MEMORY[0x29EDC9740](v11);
  memset(__b, 0, 0x40uLL);
  obj = [(UINavigationBarAccessibility *)v17 _accessibilityNavBarElements];
  v13 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v13)
  {
    v6 = *__b[2];
    v7 = 0;
    v8 = v13;
    while (1)
    {
      v5 = v7;
      if (*__b[2] != v6)
      {
        objc_enumerationMutation(obj);
      }

      __b[8] = *(__b[1] + 8 * v7);
      objc_opt_class();
      v4 = __UIAccessibilityCastAsSafeCategory();
      [v4 _accessibilitySetNavigationViewInfo:0];
      *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
      ++v7;
      if (v5 + 1 >= v8)
      {
        v7 = 0;
        v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v20 count:16, v2];
        if (!v8)
        {
          break;
        }
      }
    }
  }

  *&v3 = MEMORY[0x29EDC9740](obj).n128_u64[0];
  [(UINavigationBarAccessibility *)v17 _accessibilitySetNavBarElements:0, v3];
  [(UINavigationBarAccessibility *)v17 _accessibilityRemoveValueForKey:*MEMORY[0x29EDC7620]];
  v19 = &_accessibility_navigationBarContentsDidChange_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_506);
  if (*v19 != -1)
  {
    dispatch_once(v19, location);
  }

  objc_storeStrong(&location, 0);
  [_accessibility_navigationBarContentsDidChange_coalescer performCoalescedAsynchronously];
}

double __77__UINavigationBarAccessibility__accessibility_navigationBarContentsDidChange__block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x29EDBDF30] mainQueueCoalescerWithBlock:{&__block_literal_global_509, a1, a1}];
  v2 = _accessibility_navigationBarContentsDidChange_coalescer;
  _accessibility_navigationBarContentsDidChange_coalescer = v1;
  *&result = MEMORY[0x29EDC9740](v2).n128_u64[0];
  return result;
}

Method __98__UINavigationBarAccessibility_UIViewAccessibilityAdditions___accessibilitySupportsActivateAction__block_invoke()
{
  v0 = objc_opt_class();
  result = class_getInstanceMethod(v0, sel_accessibilityActivate);
  __accessibilitySupportsActivateAction_categoryMethod = result;
  return result;
}

@end