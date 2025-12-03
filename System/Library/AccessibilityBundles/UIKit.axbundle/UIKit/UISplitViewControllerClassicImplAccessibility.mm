@interface UISplitViewControllerClassicImplAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySpeakThisViewController;
- (id)displayModeButtonItem;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axApplyDisplayModeLabel;
- (void)_loadNewSubviews:(id)subviews;
- (void)_updateDisplayModeButtonItem;
@end

@implementation UISplitViewControllerClassicImplAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UISplitViewControllerClassicImpl";
  v5 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"_updateDisplayModeButtonItem" withFullSignature:0];
  [location[0] validateClass:v4 hasInstanceVariable:@"_displayModeButtonItem" withType:"UISplitViewControllerDisplayModeBarButtonItem"];
  [location[0] validateClass:v4 hasInstanceMethod:@"_effectiveTargetDisplayMode" withFullSignature:{"q", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_loadNewSubviews:" withFullSignature:{v3, v5, 0}];
  [location[0] validateClass:v4 hasInstanceVariable:@"_svc" withType:"UISplitViewController"];
  [location[0] validateClass:v4 hasInstanceMethod:@"viewControllers" withFullSignature:{v5, 0}];
  objc_storeStrong(v7, v6);
}

- (void)_loadNewSubviews:(id)subviews
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, subviews);
  v5.receiver = selfCopy;
  v5.super_class = UISplitViewControllerClassicImplAccessibility;
  [(UISplitViewControllerClassicImplAccessibility *)&v5 _loadNewSubviews:location[0]];
  objc_opt_class();
  v3 = [(UISplitViewControllerClassicImplAccessibility *)selfCopy safeValueForKey:@"_svc"];
  v4 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v3);
  [(UISplitViewControllerAccessibility *)v4 _axModalizeViewControllerViews];
  objc_storeStrong(&v4, 0);
  objc_storeStrong(location, 0);
}

- (id)displayModeButtonItem
{
  selfCopy = self;
  v5[1] = a2;
  v4.receiver = self;
  v4.super_class = UISplitViewControllerClassicImplAccessibility;
  v5[0] = [(UISplitViewControllerClassicImplAccessibility *)&v4 displayModeButtonItem];
  [(UISplitViewControllerClassicImplAccessibility *)selfCopy _axApplyDisplayModeLabel];
  v3 = MEMORY[0x29EDC9748](v5[0]);
  objc_storeStrong(v5, 0);

  return v3;
}

- (void)_axApplyDisplayModeLabel
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy safeValueForKey:@"_displayModeButtonItem"];
    if (location)
    {
      v3 = [selfCopy safeValueForKey:@"_effectiveTargetDisplayMode"];
      integerValue = [v3 integerValue];
      *&v1 = MEMORY[0x29EDC9740](v3).n128_u64[0];
      if (integerValue == 1)
      {
        v2 = accessibilityUIKitLocalizedString();
        [location setAccessibilityLabel:?];
        [location accessibilitySetIdentification:{@"DisplayMode", MEMORY[0x29EDC9740](v2).n128_f64[0]}];
        [location setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
      }

      else
      {
        [location setAccessibilityLabel:v1];
        [location accessibilitySetIdentification:0];
        [location setAccessibilityTraits:*MEMORY[0x29EDC7F70] | *MEMORY[0x29EDC7500]];
      }
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_updateDisplayModeButtonItem
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISplitViewControllerClassicImplAccessibility;
  [(UISplitViewControllerClassicImplAccessibility *)&v2 _updateDisplayModeButtonItem];
  [(UISplitViewControllerClassicImplAccessibility *)selfCopy _axApplyDisplayModeLabel];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = UISplitViewControllerClassicImplAccessibility;
  [(UISplitViewControllerClassicImplAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(UISplitViewControllerClassicImplAccessibility *)selfCopy _axApplyDisplayModeLabel];
}

- (id)_accessibilitySpeakThisViewController
{
  v10[2] = self;
  v10[1] = a2;
  v10[0] = 0;
  v9 = [(UISplitViewControllerClassicImplAccessibility *)self safeArrayForKey:@"viewControllers"];
  if ([v9 count] > 2)
  {
    _AXAssert();
  }

  if ([v9 count] == 2)
  {
    firstObject = [v9 objectAtIndex:1];
  }

  else
  {
    firstObject = [v9 firstObject];
  }

  v3 = v10[0];
  v10[0] = firstObject;
  MEMORY[0x29EDC9740](v3);
  v8 = 0;
  objc_opt_class();
  v7 = __UIAccessibilityCastAsSafeCategory();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  _accessibilitySpeakThisViewController = [v6 _accessibilitySpeakThisViewController];
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(v10, 0);

  return _accessibilitySpeakThisViewController;
}

@end