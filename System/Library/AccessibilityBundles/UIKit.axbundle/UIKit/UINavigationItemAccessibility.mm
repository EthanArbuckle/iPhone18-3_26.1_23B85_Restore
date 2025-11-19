@interface UINavigationItemAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)hidesSearchBarWhenScrolling;
- (uint64_t)_axDidOverrideHidesSearchBarWhenScrolling;
- (uint64_t)_axSetDidOverrideHidesSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axSetOriginalHidesSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axSetShouldHideSearchBarWhenScrolling:(uint64_t)result;
- (uint64_t)_axShouldHideSearchBarWhenScrolling;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_switchControlStatusChanged;
- (void)_voiceOverStatusChanged;
- (void)setHidesSearchBarWhenScrolling:(BOOL)a3;
- (void)setTitleView:(id)a3;
@end

@implementation UINavigationItemAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v6 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
  if (a1)
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
  if (a1)
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

- (void)setTitleView:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (([(UINavigationItemAccessibility *)v8 _accessibilityBoolValueForKey:setTitleView__AXIsAccessingTitleView]& 1) == 0)
  {
    [(UINavigationItemAccessibility *)v8 _accessibilitySetBoolValue:1 forKey:setTitleView__AXIsAccessingTitleView];
    v5 = [(UINavigationItemAccessibility *)v8 safeValueForKey:@"titleView"];
    [v5 _accessibilitySetBoolValue:0 forKey:kUIAccessibilityStorageKeyIsTitleElement];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    [(UINavigationItemAccessibility *)v8 _accessibilitySetBoolValue:0 forKey:setTitleView__AXIsAccessingTitleView, v3];
  }

  v6.receiver = v8;
  v6.super_class = UINavigationItemAccessibility;
  [(UINavigationItemAccessibility *)&v6 setTitleView:location[0], location];
  [location[0] _accessibilitySetBoolValue:1 forKey:kUIAccessibilityStorageKeyIsTitleElement];
  objc_storeStrong(v4, 0);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v11 = self;
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
    if (([(UINavigationItemAccessibility *)v11 _axDidOverrideHidesSearchBarWhenScrolling]& 1) == 0)
    {
      [UINavigationItemAccessibility _axSetDidOverrideHidesSearchBarWhenScrolling:v11];
      v4 = v11;
      [v8 hidesSearchBarWhenScrolling];
      [UINavigationItemAccessibility _axSetOriginalHidesSearchBarWhenScrolling:v4];
    }

    [v8 setHidesSearchBarWhenScrolling:0];
  }

  else if (([(UINavigationItemAccessibility *)v11 _axDidOverrideHidesSearchBarWhenScrolling]& 1) != 0)
  {
    [UINavigationItemAccessibility _axSetDidOverrideHidesSearchBarWhenScrolling:v11];
  }

  v2 = [MEMORY[0x29EDBA068] defaultCenter];
  [v2 addObserver:v11 selector:sel__voiceOverStatusChanged name:*MEMORY[0x29EDC8000] object:?];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 addObserver:v11 selector:sel__switchControlStatusChanged name:*MEMORY[0x29EDC7F48] object:0];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v8, 0);
}

- (void)setHidesSearchBarWhenScrolling:(BOOL)a3
{
  v6 = self;
  v5 = a2;
  v4 = a3;
  v3.receiver = self;
  v3.super_class = UINavigationItemAccessibility;
  [(UINavigationItemAccessibility *)&v3 setHidesSearchBarWhenScrolling:a3];
  if (v4)
  {
    [UINavigationItemAccessibility _axSetShouldHideSearchBarWhenScrolling:v6];
  }
}

- (BOOL)hidesSearchBarWhenScrolling
{
  v5 = self;
  v4 = a2;
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = UINavigationItemAccessibility;
  return [(UINavigationItemAccessibility *)&v3 hidesSearchBarWhenScrolling];
}

- (void)_voiceOverStatusChanged
{
  v6 = self;
  v5[1] = a2;
  if (!UIAccessibilityIsVoiceOverRunning())
  {
    v4 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v2 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
    v5[0] = v2;
    [v2 setHidesSearchBarWhenScrolling:-[UINavigationItemAccessibility _axShouldHideSearchBarWhenScrolling](v6)];
    objc_storeStrong(v5, 0);
  }
}

- (void)_switchControlStatusChanged
{
  v6 = self;
  v5[1] = a2;
  if (!UIAccessibilityIsSwitchControlRunning())
  {
    v4 = 0;
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v2 = MEMORY[0x29EDC9748](v3);
    objc_storeStrong(&v3, 0);
    v5[0] = v2;
    [v2 setHidesSearchBarWhenScrolling:-[UINavigationItemAccessibility _axShouldHideSearchBarWhenScrolling](v6)];
    objc_storeStrong(v5, 0);
  }
}

@end