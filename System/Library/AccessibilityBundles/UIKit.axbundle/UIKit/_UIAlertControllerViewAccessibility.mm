@interface _UIAlertControllerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)accessibilityHeaderElements;
- (id)accessibilityLabel;
- (unint64_t)_accessibilityAutomationType;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_prepareDetailMessageLabel;
- (void)_prepareMesssageLabel;
- (void)_prepareTitleLabel;
@end

@implementation _UIAlertControllerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v11 = location;
  v10 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIAlertControllerActionView";
  v4 = @"action";
  v7 = "@";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"_UIAlertControllerView" hasInstanceMethod:@"alertController" withFullSignature:{v7, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:v4 withFullSignature:{v7, 0}];
  v8 = @"UIAlertController";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:@"UIAlertAction" hasInstanceVariable:@"_checked" withType:"BOOL"];
  v6 = @"_UIAlertControllerPhoneTVMacView";
  v5 = "UILabel";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:v6 hasInstanceVariable:@"_messageLabel" withType:v5];
  [location[0] validateClass:v6 hasInstanceVariable:@"_detailMessageLabel" withType:v5];
  v9 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"_prepareTitleLabel" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"_prepareMesssageLabel" withFullSignature:{v9, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"_prepareDetailMessageLabel" withFullSignature:{v9, 0}];
  [location[0] validateClass:v8 hasInstanceMethod:@"_dismissAnimated: triggeringAction:" withFullSignature:{v9, "B", v7, 0}];
  objc_storeStrong(v11, v10);
}

- (unint64_t)_accessibilityAutomationType
{
  v6 = self;
  v5 = a2;
  v2 = [(_UIAlertControllerViewAccessibility *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC74F0]) == *MEMORY[0x29EDC74F0])
  {
    return 6;
  }

  v4.receiver = v6;
  v4.super_class = _UIAlertControllerViewAccessibility;
  return [(_UIAlertControllerViewAccessibility *)&v4 _accessibilityAutomationType];
}

- (unint64_t)accessibilityTraits
{
  v8 = self;
  v7[1] = a2;
  v6 = 0;
  objc_opt_class();
  v3 = [(_UIAlertControllerViewAccessibility *)v8 safeValueForKey:@"alertController"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  if ([v4 preferredStyle] == 1)
  {
    v9 = *MEMORY[0x29EDC74F0];
  }

  else
  {
    v9 = *MEMORY[0x29EDC7FA0];
  }

  objc_storeStrong(v7, 0);
  return v9;
}

- (id)accessibilityLabel
{
  v9 = self;
  v8[1] = a2;
  v7 = 0;
  objc_opt_class();
  v4 = [(_UIAlertControllerViewAccessibility *)v9 safeValueForKey:@"alertController"];
  v6 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  v8[0] = v5;
  v3 = [v5 title];
  objc_storeStrong(v8, 0);

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerViewAccessibility;
  [(_UIAlertControllerViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
}

- (void)_prepareTitleLabel
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerViewAccessibility;
  [(_UIAlertControllerViewAccessibility *)&v2 _prepareTitleLabel];
  [(_UIAlertControllerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

- (void)_prepareMesssageLabel
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerViewAccessibility;
  [(_UIAlertControllerViewAccessibility *)&v2 _prepareMesssageLabel];
  [(_UIAlertControllerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

- (void)_prepareDetailMessageLabel
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIAlertControllerViewAccessibility;
  [(_UIAlertControllerViewAccessibility *)&v2 _prepareDetailMessageLabel];
  [(_UIAlertControllerViewAccessibility *)v4 _accessibilityLoadAccessibilityInformation];
}

- (BOOL)accessibilityPerformEscape
{
  v15 = self;
  v14[1] = a2;
  v13 = 0;
  objc_opt_class();
  v4 = [(_UIAlertControllerViewAccessibility *)v15 safeValueForKey:@"cancelAction"];
  v12 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  v11 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(&v12, 0);
  v14[0] = v11;
  v9 = 0;
  objc_opt_class();
  v3 = [(_UIAlertControllerViewAccessibility *)v15 safeValueForKey:@"alertController"];
  v8 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v3);
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  v10 = v7;
  if (v14[0])
  {
    v5 = MEMORY[0x29EDC9748](v10);
    v6 = MEMORY[0x29EDC9748](v14[0]);
    AXPerformSafeBlock();
    objc_storeStrong(&v6, 0);
    objc_storeStrong(&v5, 0);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(v14, 0);
  return 1;
}

- (id)accessibilityHeaderElements
{
  v5 = self;
  v4 = a2;
  v3.receiver = self;
  v3.super_class = _UIAlertControllerViewAccessibility;
  return [(_UIAlertControllerViewAccessibility *)&v3 accessibilityHeaderElements];
}

@end