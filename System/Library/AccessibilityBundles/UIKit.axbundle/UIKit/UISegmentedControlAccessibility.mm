@interface UISegmentedControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3;
- (BOOL)accessibilityElementsHidden;
- (BOOL)canBecomeFocused;
- (BOOL)shouldGroupAccessibilityChildren;
- (id)_accessibilityNativeFocusElement;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)accessibilityElements;
- (void)sendActionsForControlEvents:(unint64_t)a3;
@end

@implementation UISegmentedControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UISegmentedControl";
  v3 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_internalFocusSystem" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityElementsHidden
{
  v9 = self;
  location[1] = a2;
  v4 = [(UISegmentedControlAccessibility *)self accessibilityIdentifier];
  v5 = [v4 isEqualToString:@"scopeBar"];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  if ((v5 & 1) == 0 || ((location[0] = -[UISegmentedControlAccessibility safeValueForKey:](v9, "safeValueForKey:", @"superview", v2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [location[0] showsScopeBar] ? (v7 = 0) : (v10 = 1, v7 = 1), objc_storeStrong(location, 0), !v7))
  {
    v6.receiver = v9;
    v6.super_class = UISegmentedControlAccessibility;
    v10 = [(UISegmentedControlAccessibility *)&v6 accessibilityElementsHidden];
  }

  return v10 & 1;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  v5 = [(UISegmentedControlAccessibility *)self storedShouldGroupAccessibilityChildren];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (!v5)
  {
    return 1;
  }

  v4 = [(UISegmentedControlAccessibility *)self storedShouldGroupAccessibilityChildren];
  v7 = [v4 BOOLValue] & 1;
  MEMORY[0x29EDC9740](v4);
  return v7;
}

- (id)accessibilityElements
{
  v10 = self;
  v9[1] = a2;
  v8 = 0;
  objc_opt_class();
  v5 = [(UISegmentedControlAccessibility *)v10 safeValueForKey:@"_segments"];
  v7 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  if (([(UISegmentedControlAccessibility *)v10 _accessibilityIsRTL]& 1) != 0)
  {
    v4 = [v9[0] reverseObjectEnumerator];
    v11 = [v4 allObjects];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v11 = MEMORY[0x29EDC9748](v9[0]);
  }

  objc_storeStrong(v9, 0);
  v2 = v11;

  return v2;
}

- (BOOL)_accessibilityHasNativeFocus
{
  v9 = self;
  v8 = a2;
  v6.receiver = self;
  v6.super_class = UISegmentedControlAccessibility;
  v7 = [(UISegmentedControlAccessibility *)&v6 _accessibilityHasNativeFocus];
  v4 = 0;
  v3 = 0;
  if (v7)
  {
    v5 = [(UISegmentedControlAccessibility *)v9 _accessibilityNativeFocusPreferredElement];
    v4 = 1;
    v3 = v5 != 0;
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v3)
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  v15 = self;
  v14 = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v6 = [v10 selectedSegmentIndex];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v13 = v6;
  v9 = [(UISegmentedControlAccessibility *)v15 safeArrayForKey:@"_segments", v2];
  if ((v13 & 0x8000000000000000) != 0 || (v5 = v13, v5 >= [v9 count]))
  {
    v7.receiver = v15;
    v7.super_class = UISegmentedControlAccessibility;
    v16 = [(UISegmentedControlAccessibility *)&v7 _accessibilityNativeFocusPreferredElement];
    v8 = 1;
  }

  else
  {
    v16 = [v9 objectAtIndexedSubscript:v13];
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  v3 = v16;

  return v3;
}

- (void)sendActionsForControlEvents:(unint64_t)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UISegmentedControlAccessibility;
  [(UISegmentedControlAccessibility *)&v3 sendActionsForControlEvents:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = location[0] == *MEMORY[0x29EDC80A0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)canBecomeFocused
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UISegmentedControlAccessibility;
  v4 = [(UISegmentedControlAccessibility *)&v3 canBecomeFocused];
  if (([(UISegmentedControlAccessibility *)v6 _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return [(UISegmentedControlAccessibility *)v6 safeBoolForKey:@"_hasEnabledSegment"]& 1;
  }

  else
  {
    return v4 & 1;
  }
}

- (id)_accessibilityNativeFocusElement
{
  v10 = self;
  v9[1] = a2;
  if ((-[UISegmentedControlAccessibility _accessibilityIsFKARunningForFocusItem](self, "_accessibilityIsFKARunningForFocusItem") & 1) == 0 || ((v8 = 0, objc_opt_class(), v4 = -[UISegmentedControlAccessibility safeValueForKey:](v10, "safeValueForKey:", @"_internalFocusSystem"), v7 = __UIAccessibilityCastAsClass(), MEMORY[0x29EDC9740](v4), v6 = MEMORY[0x29EDC9748](v7), objc_storeStrong(&v7, 0), v9[0] = v6, ([v6 _isEnabled] & 1) == 0) ? (v5 = 0) : (v11 = objc_msgSend(v9[0], "focusedItem"), v5 = 1), objc_storeStrong(v9, 0), !v5))
  {
    v11 = 0;
  }

  v2 = v11;

  return v2;
}

@end