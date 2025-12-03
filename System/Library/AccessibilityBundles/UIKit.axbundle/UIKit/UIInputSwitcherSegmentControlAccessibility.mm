@interface UIInputSwitcherSegmentControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)didMoveToWindow;
- (void)setSegmentImages:(id)images;
- (void)setSegmentTitles:(id)titles;
@end

@implementation UIInputSwitcherSegmentControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v7 = location;
  v6 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v3 = a2;
  [(UIInputSwitcherSegmentControlAccessibility *)self _accessibilityLoadAccessibilityInformation];
  v2.receiver = selfCopy;
  v2.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v2 didMoveToWindow];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  selfCopy = self;
  v24 = a2;
  v23.receiver = self;
  v23.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v23 _accessibilityLoadAccessibilityInformation];
  v21 = 0;
  objc_opt_class();
  v16 = [(UIInputSwitcherSegmentControlAccessibility *)selfCopy safeValueForKey:@"stackView"];
  v20 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v16);
  v19 = MEMORY[0x29EDC9748](v20);
  objc_storeStrong(&v20, 0);
  v22 = v19;
  arrangedSubviews = [v19 arrangedSubviews];
  v15 = [arrangedSubviews count];
  v2 = MEMORY[0x29EDC9740](arrangedSubviews).n128_u64[0];
  if (v15 == 3)
  {
    v7 = UIKitAccessibilityLocalizedString();
    arrangedSubviews2 = [v22 arrangedSubviews];
    v5 = [arrangedSubviews2 objectAtIndexedSubscript:0];
    [v5 setAccessibilityLabel:v7];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](arrangedSubviews2);
    MEMORY[0x29EDC9740](v7);
    v10 = UIKitAccessibilityLocalizedString();
    arrangedSubviews3 = [v22 arrangedSubviews];
    v8 = [arrangedSubviews3 objectAtIndexedSubscript:1];
    [v8 setAccessibilityLabel:v10];
    MEMORY[0x29EDC9740](v8);
    MEMORY[0x29EDC9740](arrangedSubviews3);
    MEMORY[0x29EDC9740](v10);
    v13 = UIKitAccessibilityLocalizedString();
    arrangedSubviews4 = [v22 arrangedSubviews];
    v11 = [arrangedSubviews4 objectAtIndexedSubscript:2];
    [v11 setAccessibilityLabel:v13];
    MEMORY[0x29EDC9740](v11);
    MEMORY[0x29EDC9740](arrangedSubviews4);
    MEMORY[0x29EDC9740](v13);
  }

  else
  {
    v17 = 0;
    v4 = 0;
    if (v22)
    {
      arrangedSubviews5 = [v22 arrangedSubviews];
      v17 = 1;
      v4 = [arrangedSubviews5 count] != 0;
    }

    if (v17)
    {
      v2 = MEMORY[0x29EDC9740](arrangedSubviews5).n128_u64[0];
    }

    if (v4)
    {
      arrangedSubviews6 = [v22 arrangedSubviews];
      [arrangedSubviews6 count];
      _AXAssert();
      MEMORY[0x29EDC9740](arrangedSubviews6);
    }
  }

  objc_storeStrong(&v22, 0);
}

- (void)setSegmentImages:(id)images
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, images);
  v3.receiver = selfCopy;
  v3.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v3 setSegmentImages:location[0]];
  [(UIInputSwitcherSegmentControlAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

- (void)setSegmentTitles:(id)titles
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, titles);
  v3.receiver = selfCopy;
  v3.super_class = UIInputSwitcherSegmentControlAccessibility;
  [(UIInputSwitcherSegmentControlAccessibility *)&v3 setSegmentTitles:location[0]];
  [(UIInputSwitcherSegmentControlAccessibility *)selfCopy _accessibilityLoadAccessibilityInformation];
  objc_storeStrong(location, 0);
}

@end