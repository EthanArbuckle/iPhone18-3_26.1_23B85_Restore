@interface _UINavigationBarTitleControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)canBecomeFocused;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation _UINavigationBarTitleControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v5 = @"_UINavigationBarTitleControl";
  v3 = @"UIControl";
  [location[0] validateClass:? isKindOfClass:?];
  v4 = "B";
  [location[0] validateClass:@"UIControl" hasInstanceMethod:@"canBecomeFocused" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"isInteractive" withFullSignature:{v4, 0}];
  v6 = "@";
  [location[0] validateClass:v5 hasInstanceMethod:@"titleLabel" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"titleView" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v18 = a2;
  v17.receiver = self;
  v17.super_class = _UINavigationBarTitleControlAccessibility;
  [(_UINavigationBarTitleControlAccessibility *)&v17 _accessibilityLoadAccessibilityInformation];
  v15 = 0;
  objc_opt_class();
  v5 = [(_UINavigationBarTitleControlAccessibility *)selfCopy safeValueForKey:@"titleLabel"];
  v14 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v5);
  v13 = MEMORY[0x29EDC9748](v14);
  objc_storeStrong(&v14, 0);
  v16 = v13;
  [v13 setIsAccessibilityElement:1];
  if (v16)
  {
    if (([(_UINavigationBarTitleControlAccessibility *)selfCopy safeBoolForKey:@"isInteractive"]& 1) != 0)
    {
      [v16 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
      objc_initWeak(&v12, v16);
      v4 = v16;
      v6 = MEMORY[0x29EDCA5F8];
      v7 = -1073741824;
      v8 = 0;
      v9 = __87___UINavigationBarTitleControlAccessibility__accessibilityLoadAccessibilityInformation__block_invoke;
      v10 = &unk_29F30C9E8;
      objc_copyWeak(&v11, &v12);
      [v4 setAccessibilityLabelBlock:&v6];
      objc_destroyWeak(&v11);
      objc_destroyWeak(&v12);
    }

    else
    {
      [v16 setAccessibilityTraits:*MEMORY[0x29EDC7F80]];
      v2 = v16;
      text = [v16 text];
      [v2 setAccessibilityLabel:?];
      MEMORY[0x29EDC9740](text);
    }
  }

  objc_storeStrong(&v16, 0);
}

- (BOOL)canBecomeFocused
{
  selfCopy = self;
  v7[1] = a2;
  v6 = 0;
  objc_opt_class();
  v3 = [(_UINavigationBarTitleControlAccessibility *)selfCopy safeValueForKey:@"titleLabel"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  v9 = v4 && ([(_UINavigationBarTitleControlAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0 && ([(_UINavigationBarTitleControlAccessibility *)selfCopy safeBoolForKey:@"isInteractive"]& 1) != 0;
  objc_storeStrong(v7, 0);
  return v9;
}

@end