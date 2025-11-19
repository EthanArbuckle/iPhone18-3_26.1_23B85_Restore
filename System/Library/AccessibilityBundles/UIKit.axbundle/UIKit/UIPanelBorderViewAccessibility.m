@interface UIPanelBorderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)_accessibilityColumnWidth;
- (double)_accessibilityMaxValue;
- (double)_accessibilityMaximumColumnWidth;
- (double)_accessibilityMinValue;
- (double)_accessibilityMinimumColumnWidth;
- (double)_accessibilityNumberValue;
- (double)_accessibilitySplitViewControllerWidth;
- (id)_accessibilityUIViewAccessibilityFrame;
- (id)_axSplitViewControllerImplementation;
- (uint64_t)_axIsPrimaryBorder;
- (void)_accessibilitySetBorderFloatValue:(void *)a1;
- (void)_accessibilitySetValue:(id)a3;
- (void)setAccessibilityValue:(id)a3;
@end

@implementation UIPanelBorderViewAccessibility

- (id)_axSplitViewControllerImplementation
{
  if (a1)
  {
    v2 = __UIAccessibilityGetAssociatedNonRetainedObject();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (uint64_t)_axIsPrimaryBorder
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

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"UIPanelBorderView" isKindOfClass:@"UIView"];
  v7 = @"UISplitViewControllerPanelImpl";
  v3 = @"_svc";
  v4 = "UISplitViewController";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"UISplitViewControllerClassicImpl" hasInstanceVariable:@"_svc" withType:"UISplitViewController"];
  v5 = @"primaryColumnWidth";
  v8 = "d";
  [location[0] validateClass:@"UISplitViewControllerPanelImpl" hasInstanceMethod:0 withFullSignature:?];
  v6 = "v";
  [location[0] validateClass:v7 hasInstanceMethod:@"setPreferredPrimaryColumnWidthFraction:" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"minimumPrimaryColumnWidth" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:v5 withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"maximumPrimaryColumnWidth" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"supplementaryColumnWidth" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"setPreferredSupplementaryColumnWidthFraction:" withFullSignature:{v6, v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"minimumSupplementaryColumnWidth" withFullSignature:{v8, 0}];
  [location[0] validateClass:v7 hasInstanceMethod:@"maximumSupplementaryColumnWidth" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (id)_accessibilityUIViewAccessibilityFrame
{
  [(UIPanelBorderViewAccessibility *)self accessibilityFrame];
  *&v13 = v3;
  *(&v13 + 1) = v4;
  *&v14 = v2;
  *(&v14 + 1) = v5;
  if (v2 < 1.0 && v2 > 0.0)
  {
    CGRectMake();
    *&v11 = v6;
    *(&v11 + 1) = v7;
    *&v12 = v8;
    *(&v12 + 1) = v9;
    v13 = v11;
    v14 = v12;
  }

  return [MEMORY[0x29EDBA168] valueWithCGRect:{v13, v14}];
}

- (void)setAccessibilityValue:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v6;
  [location[0] floatValue];
  [(UIPanelBorderViewAccessibility *)v4 _accessibilitySetBorderFloatValue:v3];
  objc_storeStrong(location, 0);
}

- (void)_accessibilitySetBorderFloatValue:(void *)a1
{
  v8 = a1;
  v7 = a2;
  if (a1)
  {
    [v8 _accessibilityMinValue];
    v4 = v2;
    [v8 _accessibilityMaxValue];
    v6 = CGFloatMinMax(v7, v4, v3) / 100.0;
    v5[0] = MEMORY[0x29EDC9748](v8);
    v5[1] = *&v6;
    AXPerformSafeBlock();
    objc_storeStrong(v5, 0);
  }
}

- (void)_accessibilitySetValue:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = v6;
  [location[0] floatValue];
  [(UIPanelBorderViewAccessibility *)v4 _accessibilitySetBorderFloatValue:v3];
  objc_storeStrong(location, 0);
}

- (double)_accessibilityNumberValue
{
  v4 = [(UIPanelBorderViewAccessibility *)self _accessibilityColumnWidth];
  v2 = [(UIPanelBorderViewAccessibility *)self _accessibilitySplitViewControllerWidth];
  return CGFloatMinMax(v4 / v2, 0.0, 1.0) * 100.0;
}

- (double)_accessibilityColumnWidth
{
  v6 = a1;
  if (!a1)
  {
    return 0.0;
  }

  if (([(UIPanelBorderViewAccessibility *)v6 _axIsPrimaryBorder]& 1) != 0)
  {
    v1 = @"primaryColumnWidth";
  }

  else
  {
    v1 = @"supplementaryColumnWidth";
  }

  v5 = MEMORY[0x29EDC9748](v1);
  v4 = [(UIPanelBorderViewAccessibility *)v6 _axSplitViewControllerImplementation];
  [v4 safeCGFloatForKey:v5];
  v7 = v2;
  MEMORY[0x29EDC9740](v4);
  objc_storeStrong(&v5, 0);
  return v7;
}

- (double)_accessibilitySplitViewControllerWidth
{
  v10 = a1;
  if (!a1)
  {
    return 0.0;
  }

  v8 = 0;
  objc_opt_class();
  v5 = [(UIPanelBorderViewAccessibility *)v10 _axSplitViewControllerImplementation];
  v4 = [v5 safeValueForKey:@"_svc"];
  v7 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  v6 = MEMORY[0x29EDC9748](v7);
  objc_storeStrong(&v7, 0);
  v9 = v6;
  v3 = [v6 view];
  [v3 bounds];
  v11 = v1;
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(&v9, 0);
  return v11;
}

- (double)_accessibilityMinValue
{
  v4 = [(UIPanelBorderViewAccessibility *)self _accessibilityMinimumColumnWidth];
  v2 = [(UIPanelBorderViewAccessibility *)self _accessibilitySplitViewControllerWidth];
  return CGFloatMax(v4 / v2, 0.0) * 100.0;
}

- (double)_accessibilityMinimumColumnWidth
{
  v8 = a1;
  if (!a1)
  {
    return 0.0;
  }

  if (([(UIPanelBorderViewAccessibility *)v8 _axIsPrimaryBorder]& 1) != 0)
  {
    v1 = @"minimumPrimaryColumnWidth";
  }

  else
  {
    v1 = @"minimumSupplementaryColumnWidth";
  }

  location = MEMORY[0x29EDC9748](v1);
  v4 = [(UIPanelBorderViewAccessibility *)v8 _axSplitViewControllerImplementation];
  [v4 safeCGFloatForKey:location];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  v6 = v5;
  if (v5 == *MEMORY[0x29EDC8220])
  {
    v6 = 0.01 * [(UIPanelBorderViewAccessibility *)v8 _accessibilitySplitViewControllerWidth];
  }

  v9 = v6;
  objc_storeStrong(&location, 0);
  return v9;
}

- (double)_accessibilityMaxValue
{
  v4 = [(UIPanelBorderViewAccessibility *)self _accessibilityMaximumColumnWidth];
  v2 = [(UIPanelBorderViewAccessibility *)self _accessibilitySplitViewControllerWidth];
  return CGFloatMin(v4 / v2, 1.0) * 100.0;
}

- (double)_accessibilityMaximumColumnWidth
{
  v8 = a1;
  if (!a1)
  {
    return 0.0;
  }

  if (([(UIPanelBorderViewAccessibility *)v8 _axIsPrimaryBorder]& 1) != 0)
  {
    v1 = @"maximumPrimaryColumnWidth";
  }

  else
  {
    v1 = @"maximumSupplementaryColumnWidth";
  }

  location = MEMORY[0x29EDC9748](v1);
  v4 = [(UIPanelBorderViewAccessibility *)v8 _axSplitViewControllerImplementation];
  [v4 safeCGFloatForKey:location];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  v6 = v5;
  if (v5 == *MEMORY[0x29EDC8220])
  {
    v6 = 0.4 * [(UIPanelBorderViewAccessibility *)v8 _accessibilitySplitViewControllerWidth];
  }

  v9 = v6;
  objc_storeStrong(&location, 0);
  return v9;
}

uint64_t __68__UIPanelBorderViewAccessibility__accessibilitySetBorderFloatValue___block_invoke(uint64_t a1)
{
  if (([(UIPanelBorderViewAccessibility *)*(a1 + 32) _axIsPrimaryBorder]& 1) != 0)
  {
    v3 = [(UIPanelBorderViewAccessibility *)*(a1 + 32) _axSplitViewControllerImplementation];
    [v3 setPreferredPrimaryColumnWidthFraction:*(a1 + 40)];
    return MEMORY[0x29EDC9740](v3);
  }

  else
  {
    v2 = [(UIPanelBorderViewAccessibility *)*(a1 + 32) _axSplitViewControllerImplementation];
    [v2 setPreferredSupplementaryColumnWidthFraction:*(a1 + 40)];
    return MEMORY[0x29EDC9740](v2);
  }
}

@end