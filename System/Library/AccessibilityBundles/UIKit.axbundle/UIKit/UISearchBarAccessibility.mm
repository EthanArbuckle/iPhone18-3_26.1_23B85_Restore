@interface UISearchBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityFuzzyHitTestElements;
- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event;
- (id)_accessibilitySearchBarMaskView;
- (id)_accessibilitySubviews;
- (id)accessibilityLabel;
- (id)imageForSearchBarIcon:(int64_t)icon state:(unint64_t)state;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation UISearchBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UISearchBar";
  v6 = "@";
  [location[0] validateClass:"q" hasInstanceMethod:"Q" withFullSignature:0];
  v3 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"_searchFieldBeginEditing" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceMethod:@"_searchFieldEndEditing" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_viewForChildViews" withFullSignature:{v6, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_visualProvider" withFullSignature:{v6, 0}];
  v5 = @"UIView";
  [location[0] validateClass:v4 isKindOfClass:?];
  [location[0] validateClass:v5 hasInstanceMethod:@"_viewControllerForAncestor" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"_UISearchBarVisualProviderBase" hasInstanceMethod:@"searchField" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)imageForSearchBarIcon:(int64_t)icon state:(unint64_t)state
{
  selfCopy = self;
  v19 = a2;
  iconCopy = icon;
  location[1] = state;
  v16.receiver = self;
  v16.super_class = UISearchBarAccessibility;
  location[0] = [(UISearchBarAccessibility *)&v16 imageForSearchBarIcon:icon state:state];
  accessibilityLabel = [location[0] accessibilityLabel];
  v15 = [accessibilityLabel length];
  MEMORY[0x29EDC9740](accessibilityLabel);
  if (!v15)
  {
    if (iconCopy)
    {
      switch(iconCopy)
      {
        case 1:
          v8 = location[0];
          v9 = accessibilityUIKitLocalizedString();
          [v8 setAccessibilityLabel:?];
          MEMORY[0x29EDC9740](v9);
          break;
        case 2:
          v10 = location[0];
          v11 = accessibilityUIKitLocalizedString();
          [v10 setAccessibilityLabel:?];
          MEMORY[0x29EDC9740](v11);
          break;
        case 3:
          v12 = location[0];
          v13 = accessibilityUIKitLocalizedString();
          [v12 setAccessibilityLabel:?];
          MEMORY[0x29EDC9740](v13);
          break;
      }
    }

    else
    {
      v6 = location[0];
      v7 = accessibilityUIKitLocalizedString();
      [v6 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](v7);
    }
  }

  v21 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);
  v4 = v21;

  return v4;
}

- (id)_accessibilitySearchBarMaskView
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy safeValueForKey:@"_viewForChildViews"];
    if (location == selfCopy)
    {
      objc_storeStrong(&location, 0);
    }

    v5 = MEMORY[0x29EDC9748](location);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v5 = 0;
  }

  v1 = v5;

  return v1;
}

- (id)_accessibilityFuzzyHitTestElements
{
  v4 = [(UISearchBarAccessibility *)self safeValueForKey:@"subviews"];
  reverseObjectEnumerator = [v4 reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];
  MEMORY[0x29EDC9740](reverseObjectEnumerator);
  MEMORY[0x29EDC9740](v4);

  return allObjects;
}

- (id)_accessibilitySubviews
{
  selfCopy = self;
  v10[1] = a2;
  v10[0] = 0;
  location = [(UISearchBarAccessibility *)self _accessibilitySearchBarMaskView];
  if (location)
  {
    _accessibilitySubviews = [location _accessibilitySubviews];
    v3 = v10[0];
    v10[0] = _accessibilitySubviews;
    MEMORY[0x29EDC9740](v3);
  }

  else
  {
    v8.receiver = selfCopy;
    v8.super_class = UISearchBarAccessibility;
    _accessibilitySubviews2 = [(UISearchBarAccessibility *)&v8 _accessibilitySubviews];
    v5 = v10[0];
    v10[0] = _accessibilitySubviews2;
    MEMORY[0x29EDC9740](v5);
  }

  v7 = MEMORY[0x29EDC9748](v10[0]);
  objc_storeStrong(&location, 0);
  objc_storeStrong(v10, 0);

  return v7;
}

- (id)_accessibilityHitTest:(CGPoint)test withEvent:(id)event
{
  testCopy = test;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v28 = [(UISearchBarAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AXInHitTestOverride"];
  v20 = 0;
  v8 = 0;
  if ((v28 & 1) == 0)
  {
    v22 = MEMORY[0x29EDCA5F8];
    v23 = -1073741824;
    v24 = 0;
    v25 = __60__UISearchBarAccessibility__accessibilityHitTest_withEvent___block_invoke;
    v26 = &unk_29F30CEB0;
    v27 = MEMORY[0x29EDC9748](selfCopy);
    v21 = &v27;
    v20 = 1;
    v8 = (__60__UISearchBarAccessibility__accessibilityHitTest_withEvent___block_invoke)();
  }

  if (v8)
  {
    [(UISearchBarAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
    v19 = [(UISearchBarAccessibility *)selfCopy accessibilityHitTest:location[0] withEvent:testCopy.x, testCopy.y];
    [(UISearchBarAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXInHitTestOverride"];
    v32 = MEMORY[0x29EDC9748](v19);
    v18 = 1;
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v18 = 0;
  }

  if (v20)
  {
    objc_storeStrong(v21, 0);
  }

  if (!v18)
  {
    v16.receiver = selfCopy;
    v16.super_class = UISearchBarAccessibility;
    v17 = [(UISearchBarAccessibility *)&v16 _accessibilityHitTest:location[0] withEvent:testCopy];
    v14 = 0;
    v9 = 0;
    if (!v17 || (v6 = v17, v15 = [(UISearchBarAccessibility *)selfCopy _accessibilitySearchBarMaskView], v14 = 1, v7 = 0, v6 == v15))
    {
      v7 = 0;
      if ([location[0] _accessibilityAutomationHitTest])
      {
        v13 = 0;
        objc_opt_class();
        v12 = __UIAccessibilityCastAsClass();
        v11 = MEMORY[0x29EDC9748](v12);
        objc_storeStrong(&v12, 0);
        v10 = v11;
        v9 = 1;
        v7 = [v11 pointInside:location[0] withEvent:{testCopy.x, testCopy.y}];
      }
    }

    if (v9)
    {
      MEMORY[0x29EDC9740](v10);
    }

    if (v14)
    {
      MEMORY[0x29EDC9740](v15);
    }

    if (v7)
    {
      objc_storeStrong(&v17, selfCopy);
    }

    v32 = MEMORY[0x29EDC9748](v17);
    v18 = 1;
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(location, 0);
  v4 = v32;

  return v4;
}

BOOL __60__UISearchBarAccessibility__accessibilityHitTest_withEvent___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x29EDCA608];
  v16 = a1;
  v15 = a1;
  v18 = &MACancelDownloadErrorDomain_block_invoke_onceToken_0;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_33);
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

  return Implementation != MACancelDownloadErrorDomain_block_invoke_BaseImplementation_0;
}

void __60__UISearchBarAccessibility__accessibilityHitTest_withEvent___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x29EDCA608];
  v14 = a1;
  v13 = a1;
  v1 = objc_opt_class();
  InstanceMethod = class_getInstanceMethod(v1, sel_accessibilityHitTest_withEvent_);
  if (InstanceMethod)
  {
    MACancelDownloadErrorDomain_block_invoke_BaseImplementation_0 = method_getImplementation(InstanceMethod);
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

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISearchBarAccessibility;
  [(UISearchBarAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)layoutSubviews
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = UISearchBarAccessibility;
  [(UISearchBarAccessibility *)&v8 layoutSubviews];
  v7 = 0;
  objc_opt_class();
  v4 = [(UISearchBarAccessibility *)selfCopy safeValueForKey:@"_viewControllerForAncestor"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  navigationController = [v5 navigationController];
  navigationBar = [navigationController navigationBar];
  [navigationBar _accessibility_navigationBarContentsDidChange];
  MEMORY[0x29EDC9740](navigationBar);
  MEMORY[0x29EDC9740](navigationController);
  MEMORY[0x29EDC9740](v5);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = UISearchBarAccessibility;
  return [(UISearchBarAccessibility *)&v3 accessibilityLabel];
}

@end