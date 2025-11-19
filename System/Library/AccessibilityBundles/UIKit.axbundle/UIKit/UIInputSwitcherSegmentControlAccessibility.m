@interface UIInputSwitcherSegmentControlAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
- (void)setSegmentImages:(id)a3;
- (void)setSegmentTitles:(id)a3;
@end

@implementation UIInputSwitcherSegmentControlAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = @"UIInputSwitcherSegmentControl";
  [location[0] validateClass:? isKindOfClass:?];
  v3 = "@";
  [location[0] validateClass:@"UIInputSwitcherSegmentControl" hasInstanceMethod:@"stackView" withFullSignature:0];
  v5 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"setSegmentImages:" withFullSignature:{v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"setSegmentTitles:" withFullSignature:{v5, v3, 0}];
  objc_storeStrong(v7, v6);
}

- (void)didMoveToWindow
{
  v4 = self;
  v3 = a2;
  [(UIInputSwitcherSegmentControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v2.receiver = v4;
  v2.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v2 didMoveToWindow];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v25 = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v21 = 0;
  objc_opt_class();
  v16 = [(UIInputSwitcherSegmentControlAccessibility *)v25 safeValueForKey:@"stackView"];
  v20 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v16);
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  v14 = [v19 arrangedSubviews];
  v15 = [v14 count];
  v2 = MEMORY[0x29EDC9740](v14).n128_u64[0];
  if (v15 == 3)
  {
    v7 = UIKitAccessibilityLocalizedString();
    v6 = [v22 arrangedSubviews];
    v5 = [v6 objectAtIndexedSubscript:0];
    [v5 setAccessibilityLabel:v7];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v7);
    v10 = UIKitAccessibilityLocalizedString();
    v9 = [v22 arrangedSubviews];
    v8 = [v9 objectAtIndexedSubscript:1];
    [v8 setAccessibilityLabel:v10];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
    v13 = UIKitAccessibilityLocalizedString();
    v12 = [v22 arrangedSubviews];
    v11 = [v12 objectAtIndexedSubscript:2];
    [v11 setAccessibilityLabel:v13];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](v12);
    MEMORY[0x29EDC9740](v13);
  }

  else
  {
    v17 = 0;
    v4 = 0;
    if (v22)
    {
      v18 = [v22 arrangedSubviews];
      v17 = 1;
      v4 = [v18 count] != 0;
    }

    if (v17)
    {
      v2 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    }

    if (v4)
    {
      v3 = [v22 arrangedSubviews];
      [v3 count];
      _AXAssert();
      MEMORY[0x29EDC9740](v3);
    }
  }

  objc_storeStrong(&v22, 0);
}

- (void)setSegmentImages:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v3 setSegmentImages:location[0]];
  [(UIInputSwitcherSegmentControlAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

- (void)setSegmentTitles:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v3 setSegmentTitles:location[0]];
  [(UIInputSwitcherSegmentControlAccessibility *)v5 _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

@end