@interface UINavigationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)hidesSearchBarWhenScrolling;
- (uint64_t)_axDidOverrideHidesSearchBarWhenScrolling;
- (uint64_t)_axSetDidOverrideHidesSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axSetOriginalHidesSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axSetShouldHideSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axShouldHideSearchBarWhenScrolling;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_switchControlStatusChanged;
- (void)_voiceOverStatusChanged;
- (void)setHidesSearchBarWhenScrolling:(BOOL)scrolling;
- (void)setTitleView:(id)view;
@end

@implementation UINavigationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v4 = @"UINavigationItem";
  v3 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v4 hasInstanceMethod:@"setTitleView:" withFullSignature:{"v", v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"hidesSearchBarWhenScrolling" withFullSignature:{"B", 0}];
  objc_storeStrong(v6, obj);
}

- (uint64_t)_axSetOriginalHidesSearchBarWhenScrolling:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (uint64_t)_axDidOverrideHidesSearchBarWhenScrolling
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_axSetDidOverrideHidesSearchBarWhenScrolling:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (uint64_t)_axShouldHideSearchBarWhenScrolling
{
  if (self)
  {
    v2 = __UIAccessibilityGetAssociatedBool() & 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (uint64_t)_axSetShouldHideSearchBarWhenScrolling:(uint64_t)result
{
  if (result)
  {
    return __UIAccessibilitySetAssociatedBool();
  }

  return result;
}

- (void)setTitleView:(id)view
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  if (([(UINavigationItemAccessibility *)selfCopy _accessibilityBoolValueForKey:setTitleView__AXIsAccessingTitleView]& 1) == 0)
  {
    [(UINavigationItemAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:setTitleView__AXIsAccessingTitleView];
    v5 = [(UINavigationItemAccessibility *)selfCopy safeValueForKey:@"titleView"];
    [v5 _accessibilitySetBoolValue:0 forKey:kUIAccessibilityStorageKeyIsTitleElement];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    [(UINavigationItemAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:setTitleView__AXIsAccessingTitleView, v3];
  }

  v6.receiver = selfCopy;
  v6.super_class = UINavigationItemAccessibility;
  [(UINavigationItemAccessibility *)&v6 setTitleView:location[0], location];
  [location[0] _accessibilitySetBoolValue:1 forKey:kUIAccessibilityStorageKeyIsTitleElement];
  objc_storeStrong(v4, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v10 = a2;
  v9.receiver = self;
  v9.super_class = UINavigationItemAccessibility;
  [(UINavigationItemAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  v7 = 0;
  objc_opt_class();
  v6 = __UIAccessibilityCastAsClass();
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8 = v5;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    if (([(UINavigationItemAccessibility *)selfCopy _axDidOverrideHidesSearchBarWhenScrolling]& 1) == 0)
    {
      [UINavigationItemAccessibility _axSetDidOverrideHidesSearchBarWhenScrolling:selfCopy];
      v4 = selfCopy;
      [v8 hidesSearchBarWhenScrolling];
      [UINavigationItemAccessibility _axSetOriginalHidesSearchBarWhenScrolling:v4];
    }

    [v8 setHidesSearchBarWhenScrolling:0];
  }

  else if (([(UINavigationItemAccessibility *)selfCopy _axDidOverrideHidesSearchBarWhenScrolling]& 1) != 0)
  {
    [UINavigationItemAccessibility _axSetDidOverrideHidesSearchBarWhenScrolling:selfCopy];
  }

  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter addObserver:selfCopy selector:sel__voiceOverStatusChanged name:*MEMORY[0x29EDC8000] object:?];
  defaultCenter2 = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter2 addObserver:selfCopy selector:sel__switchControlStatusChanged name:*MEMORY[0x29EDC7F48] object:0];
  MEMORY[0x29EDC9740](defaultCenter2);
  objc_storeStrong(&v8, 0);
}

- (void)setHidesSearchBarWhenScrolling:(BOOL)scrolling
{
  selfCopy = self;
  v5 = a2;
  scrollingCopy = scrolling;
  v3.receiver = self;
  v3.super_class = UINavigationItemAccessibility;
  [(UINavigationItemAccessibility *)&v3 setHidesSearchBarWhenScrolling:scrolling];
  if (scrollingCopy)
  {
    [UINavigationItemAccessibility _axSetShouldHideSearchBarWhenScrolling:selfCopy];
  }
}

- (BOOL)hidesSearchBarWhenScrolling
{
  selfCopy = self;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = UINavigationItemAccessibility;
  return [(UINavigationItemAccessibility *)&v3 hidesSearchBarWhenScrolling];
}

- (void)_voiceOverStatusChanged
{
  selfCopy = self;
  v5[1] = a2;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v4 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v2 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
    v5[0] = v2;
    [v2 setHidesSearchBarWhenScrolling:-[UINavigationItemAccessibility _axShouldHideSearchBarWhenScrolling](selfCopy)];
    objc_storeStrong(v5, 0);
  }
}

- (void)_switchControlStatusChanged
{
  selfCopy = self;
  v5[1] = a2;
  if (!UIAccessibilityIsSwitchControlRunning())
  {
    v4 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v2 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
    v5[0] = v2;
    [v2 setHidesSearchBarWhenScrolling:-[UINavigationItemAccessibility _axShouldHideSearchBarWhenScrolling](selfCopy)];
    objc_storeStrong(v5, 0);
  }
}

@end