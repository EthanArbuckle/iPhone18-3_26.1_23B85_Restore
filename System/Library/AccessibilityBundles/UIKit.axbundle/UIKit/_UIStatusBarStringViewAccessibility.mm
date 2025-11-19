@interface _UIStatusBarStringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarStringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"UIView";
  [location[0] validateClass:@"_UIStatusBarStringView" isKindOfClass:?];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  v21 = self;
  v20[1] = a2;
  v19 = 0;
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20[0] = v17;
  v10 = MEMORY[0x29EDBD7E8];
  v11 = [v17 text];
  v16 = [v10 axAttributedStringWithString:?];
  *&v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (([(_UIStatusBarStringViewAccessibility *)v21 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime", v2]& 1) != 0 || ([(_UIStatusBarStringViewAccessibility *)v21 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    v7 = MEMORY[0x29EDBD7E8];
    v9 = [MEMORY[0x29EDB8DB0] date];
    v8 = AXDateStringForFormat();
    v3 = [v7 axAttributedStringWithString:?];
    v4 = v16;
    v16 = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v8);
    [v16 setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD888], MEMORY[0x29EDC9740](v9).n128_f64[0]}];
  }

  if (([(_UIStatusBarStringViewAccessibility *)v21 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDate"]& 1) != 0)
  {
    [v16 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD898]];
  }

  if (([(_UIStatusBarStringViewAccessibility *)v21 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsBreadcrumb"]& 1) != 0)
  {
    v15.receiver = v21;
    v15.super_class = _UIStatusBarStringViewAccessibility;
    v22 = [(_UIStatusBarStringViewAccessibility *)&v15 accessibilityLabel];
    v14 = 1;
  }

  else if (([(_UIStatusBarStringViewAccessibility *)v21 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDataNetwork"]& 1) == 0 || ((v12.receiver = v21, v12.super_class = _UIStatusBarStringViewAccessibility, (v13 = [(_UIStatusBarStringViewAccessibility *)&v12 accessibilityLabel]) == 0) ? (v14 = 0) : (v22 = MEMORY[0x29EDC9748](v13), v14 = 1), objc_storeStrong(&v13, 0), !v14))
  {
    v22 = MEMORY[0x29EDC9748](v16);
    v14 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(v20, 0);
  v5 = v22;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  v6 = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarStringViewAccessibility;
  v4 = [(_UIStatusBarStringViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
  if (([(_UIStatusBarStringViewAccessibility *)v6 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime"]& 1) != 0 || ([(_UIStatusBarStringViewAccessibility *)v6 _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    v4 |= *MEMORY[0x29EDC7FF0];
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  v13 = self;
  v12 = a2;
  v10.receiver = self;
  v10.super_class = _UIStatusBarStringViewAccessibility;
  v11 = [(_UIStatusBarStringViewAccessibility *)&v10 canBecomeFocused];
  v8 = 0;
  v7 = __UIAccessibilitySafeClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v4 = [v6 traitCollection];
  v5 = [v4 userInterfaceIdiom];
  MEMORY[0x29EDC9740](v4);
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v9 = v5;
  if (v5 != 3 && v9 != 2)
  {
    v11 = [(_UIStatusBarStringViewAccessibility *)v13 accessibilityRespondsToUserInteraction];
  }

  return v11 & 1;
}

- (BOOL)isAccessibilityElement
{
  v5 = self;
  v4 = a2;
  if (([(_UIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    return 0;
  }

  v3.receiver = v5;
  v3.super_class = _UIStatusBarStringViewAccessibility;
  return [(_UIStatusBarStringViewAccessibility *)&v3 isAccessibilityElement];
}

@end