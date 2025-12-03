@interface _UIStatusBarStringViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (BOOL)isAccessibilityElement;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIStatusBarStringViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v5 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UIView";
  [location[0] validateClass:@"_UIStatusBarStringView" isKindOfClass:?];
  [location[0] validateClass:@"UIView" hasInstanceMethod:@"canBecomeFocused" withFullSignature:{"B", 0}];
  objc_storeStrong(v5, obj);
}

- (id)accessibilityLabel
{
  selfCopy = self;
  v20[1] = a2;
  v19 = 0;
  objc_opt_class();
  v18 = __UIAccessibilityCastAsClass();
  v17 = MEMORY[0x29EDC9748](v18);
  objc_storeStrong(&v18, 0);
  v20[0] = v17;
  v10 = MEMORY[0x29EDBD7E8];
  text = [v17 text];
  v16 = [v10 axAttributedStringWithString:?];
  *&v2 = MEMORY[0x29EDC9740](text).n128_u64[0];
  if (([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime", v2]& 1) != 0 || ([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    v7 = MEMORY[0x29EDBD7E8];
    date = [MEMORY[0x29EDB8DB0] date];
    v8 = AXDateStringForFormat();
    v3 = [v7 axAttributedStringWithString:?];
    v4 = v16;
    v16 = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v8);
    [v16 setAttribute:*MEMORY[0x29EDB8F00] forKey:{*MEMORY[0x29EDBD888], MEMORY[0x29EDC9740](date).n128_f64[0]}];
  }

  if (([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDate"]& 1) != 0)
  {
    [v16 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD898]];
  }

  if (([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsBreadcrumb"]& 1) != 0)
  {
    v15.receiver = selfCopy;
    v15.super_class = _UIStatusBarStringViewAccessibility;
    accessibilityLabel = [(_UIStatusBarStringViewAccessibility *)&v15 accessibilityLabel];
    v14 = 1;
  }

  else if (([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsDataNetwork"]& 1) == 0 || ((v12.receiver = selfCopy, v12.super_class = _UIStatusBarStringViewAccessibility, (v13 = [(_UIStatusBarStringViewAccessibility *)&v12 accessibilityLabel]) == 0) ? (v14 = 0) : (accessibilityLabel = MEMORY[0x29EDC9748](v13), v14 = 1), objc_storeStrong(&v13, 0), !v14))
  {
    accessibilityLabel = MEMORY[0x29EDC9748](v16);
    v14 = 1;
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(v20, 0);
  v5 = accessibilityLabel;

  return v5;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIStatusBarStringViewAccessibility;
  v4 = [(_UIStatusBarStringViewAccessibility *)&v3 accessibilityTraits]| *MEMORY[0x29EDC7580] | *MEMORY[0x29EDC74F8];
  if (([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsTime"]& 1) != 0 || ([(_UIStatusBarStringViewAccessibility *)selfCopy _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    v4 |= *MEMORY[0x29EDC7FF0];
  }

  return v4;
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v12 = a2;
  v10.receiver = self;
  v10.super_class = _UIStatusBarStringViewAccessibility;
  canBecomeFocused = [(_UIStatusBarStringViewAccessibility *)&v10 canBecomeFocused];
  v8 = 0;
  v7 = __UIAccessibilitySafeClass();
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  traitCollection = [v6 traitCollection];
  userInterfaceIdiom = [traitCollection userInterfaceIdiom];
  MEMORY[0x29EDC9740](traitCollection);
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v9 = userInterfaceIdiom;
  if (userInterfaceIdiom != 3 && v9 != 2)
  {
    canBecomeFocused = [(_UIStatusBarStringViewAccessibility *)selfCopy accessibilityRespondsToUserInteraction];
  }

  return canBecomeFocused & 1;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v4 = a2;
  if (([(_UIStatusBarStringViewAccessibility *)self _accessibilityBoolValueForKey:@"AccessibilityStatusBarStringIsPillTime"]& 1) != 0)
  {
    return 0;
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIStatusBarStringViewAccessibility;
  return [(_UIStatusBarStringViewAccessibility *)&v3 isAccessibilityElement];
}

@end