@interface UISegmentedControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHasNativeFocus;
- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category;
- (BOOL)accessibilityElementsHidden;
- (BOOL)canBecomeFocused;
- (BOOL)shouldGroupAccessibilityChildren;
- (id)_accessibilityNativeFocusElement;
- (id)_accessibilityNativeFocusPreferredElement;
- (id)accessibilityElements;
- (void)sendActionsForControlEvents:(unint64_t)events;
@end

@implementation UISegmentedControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UISegmentedControl";
  v3 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"canBecomeFocused" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_internalFocusSystem" withFullSignature:{"@", 0}];
  objc_storeStrong(v6, obj);
}

- (BOOL)accessibilityElementsHidden
{
  selfCopy = self;
  location[1] = a2;
  accessibilityIdentifier = [(UISegmentedControlAccessibility *)self accessibilityIdentifier];
  v5 = [accessibilityIdentifier isEqualToString:@"scopeBar"];
  *&v2 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
  if ((v5 & 1) == 0 || ((location[0] = -[UISegmentedControlAccessibility safeValueForKey:](selfCopy, "safeValueForKey:", @"superview", v2), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [location[0] showsScopeBar] ? (v7 = 0) : (accessibilityElementsHidden = 1, v7 = 1), objc_storeStrong(location, 0), !v7))
  {
    v6.receiver = selfCopy;
    v6.super_class = UISegmentedControlAccessibility;
    accessibilityElementsHidden = [(UISegmentedControlAccessibility *)&v6 accessibilityElementsHidden];
  }

  return accessibilityElementsHidden & 1;
}

- (BOOL)shouldGroupAccessibilityChildren
{
  storedShouldGroupAccessibilityChildren = [(UISegmentedControlAccessibility *)self storedShouldGroupAccessibilityChildren];
  *&v2 = MEMORY[0x29EDC9740](storedShouldGroupAccessibilityChildren).n128_u64[0];
  if (!storedShouldGroupAccessibilityChildren)
  {
    return 1;
  }

  storedShouldGroupAccessibilityChildren2 = [(UISegmentedControlAccessibility *)self storedShouldGroupAccessibilityChildren];
  v7 = [storedShouldGroupAccessibilityChildren2 BOOLValue] & 1;
  MEMORY[0x29EDC9740](storedShouldGroupAccessibilityChildren2);
  return v7;
}

- (id)accessibilityElements
{
  selfCopy = self;
  v9[1] = a2;
  v8 = 0;
  objc_opt_class();
  v5 = [(UISegmentedControlAccessibility *)selfCopy safeValueForKey:@"_segments"];
  v7 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9[0] = v6;
  if (([(UISegmentedControlAccessibility *)selfCopy _accessibilityIsRTL]& 1) != 0)
  {
    reverseObjectEnumerator = [v9[0] reverseObjectEnumerator];
    allObjects = [reverseObjectEnumerator allObjects];
    MEMORY[0x29EDC9740](reverseObjectEnumerator);
  }

  else
  {
    allObjects = MEMORY[0x29EDC9748](v9[0]);
  }

  objc_storeStrong(v9, 0);
  v2 = allObjects;

  return v2;
}

- (BOOL)_accessibilityHasNativeFocus
{
  selfCopy = self;
  v8 = a2;
  v6.receiver = self;
  v6.super_class = UISegmentedControlAccessibility;
  _accessibilityHasNativeFocus = [(UISegmentedControlAccessibility *)&v6 _accessibilityHasNativeFocus];
  v4 = 0;
  v3 = 0;
  if (_accessibilityHasNativeFocus)
  {
    _accessibilityNativeFocusPreferredElement = [(UISegmentedControlAccessibility *)selfCopy _accessibilityNativeFocusPreferredElement];
    v4 = 1;
    v3 = _accessibilityNativeFocusPreferredElement != 0;
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](_accessibilityNativeFocusPreferredElement);
  }

  if (v3)
  {
    _accessibilityHasNativeFocus = 0;
  }

  return _accessibilityHasNativeFocus & 1;
}

- (id)_accessibilityNativeFocusPreferredElement
{
  selfCopy = self;
  v14 = a2;
  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  selectedSegmentIndex = [v10 selectedSegmentIndex];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  v13 = selectedSegmentIndex;
  v9 = [(UISegmentedControlAccessibility *)selfCopy safeArrayForKey:@"_segments", v2];
  if ((v13 & 0x8000000000000000) != 0 || (v5 = v13, v5 >= [v9 count]))
  {
    v7.receiver = selfCopy;
    v7.super_class = UISegmentedControlAccessibility;
    _accessibilityNativeFocusPreferredElement = [(UISegmentedControlAccessibility *)&v7 _accessibilityNativeFocusPreferredElement];
    v8 = 1;
  }

  else
  {
    _accessibilityNativeFocusPreferredElement = [v9 objectAtIndexedSubscript:v13];
    v8 = 1;
  }

  objc_storeStrong(&v9, 0);
  v3 = _accessibilityNativeFocusPreferredElement;

  return v3;
}

- (void)sendActionsForControlEvents:(unint64_t)events
{
  selfCopy = self;
  v5 = a2;
  eventsCopy = events;
  v3.receiver = self;
  v3.super_class = UISegmentedControlAccessibility;
  [(UISegmentedControlAccessibility *)&v3 sendActionsForControlEvents:events];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (BOOL)_accessibilitySupportsContentSizeCategory:(id)category
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, category);
  v4 = location[0] == *MEMORY[0x29EDC80A0];
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = UISegmentedControlAccessibility;
  canBecomeFocused = [(UISegmentedControlAccessibility *)&v3 canBecomeFocused];
  if (([(UISegmentedControlAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return [(UISegmentedControlAccessibility *)selfCopy safeBoolForKey:@"_hasEnabledSegment"]& 1;
  }

  else
  {
    return canBecomeFocused & 1;
  }
}

- (id)_accessibilityNativeFocusElement
{
  selfCopy = self;
  v9[1] = a2;
  if ((-[UISegmentedControlAccessibility _accessibilityIsFKARunningForFocusItem](self, "_accessibilityIsFKARunningForFocusItem") & 1) == 0 || ((v8 = 0, objc_opt_class(), v4 = -[UISegmentedControlAccessibility safeValueForKey:](selfCopy, "safeValueForKey:", @"_internalFocusSystem"), v7 = __UIAccessibilityCastAsClass(), MEMORY[0x29EDC9740](v4), v6 = MEMORY[0x29EDC9748](v7), objc_storeStrong(&v7, 0), v9[0] = v6, ([v6 _isEnabled] & 1) == 0) ? (v5 = 0) : (v11 = objc_msgSend(v9[0], "focusedItem"), v5 = 1), objc_storeStrong(v9, 0), !v5))
  {
    v11 = 0;
  }

  v2 = v11;

  return v2;
}

@end