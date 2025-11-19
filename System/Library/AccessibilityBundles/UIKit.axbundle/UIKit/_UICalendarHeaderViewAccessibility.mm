@interface _UICalendarHeaderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)isAccessibilityElement;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axMarkupMonthSelector;
- (void)_setupViewHierarchy;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4;
@end

@implementation _UICalendarHeaderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [location[0] validateClass:@"_UIDatePickerLinkedLabel" hasInstanceVariable:@"_renderingLabel" withType:"UILabel"];
  v5 = @"_UICalendarHeaderView";
  [location[0] validateClass:? hasInstanceVariable:? withType:?];
  [location[0] validateClass:@"_UICalendarHeaderTitleButton" hasInstanceVariable:@"_monthYearLabel" withType:"_UIDatePickerLinkedLabel"];
  v3 = "UIButton";
  [location[0] validateClass:@"_UICalendarHeaderView" hasInstanceVariable:@"_nextMonthButton" withType:?];
  [location[0] validateClass:@"_UICalendarHeaderView" hasInstanceVariable:@"_previousMonthButton" withType:"UIButton"];
  v4 = "B";
  [location[0] validateClass:@"_UICalendarHeaderView" hasInstanceMethod:@"isExpanded" withFullSignature:0];
  v8 = "v";
  [location[0] validateClass:v5 hasInstanceMethod:@"setExpanded:animated:" withFullSignature:{v4, v4, 0}];
  v6 = "@";
  [location[0] validateClass:v5 hasInstanceMethod:@"delegate" withFullSignature:0];
  [location[0] validateClass:v5 hasInstanceMethod:@"_setupViewHierarchy" withFullSignature:{v8, 0}];
  v7 = @"UICalendarView";
  [location[0] validateClass:v6 hasInstanceMethod:0 withFullSignature:?];
  [location[0] validateClass:v7 hasInstanceMethod:@"headerViewDidStepBackward:" withFullSignature:{v8, v6, 0}];
  objc_storeStrong(v10, v9);
}

- (BOOL)isAccessibilityElement
{
  v11 = self;
  v10 = a2;
  v8 = 0;
  v3 = 0;
  if (AXRequestingClient() == 4)
  {
    v9 = [MEMORY[0x29EDBDFA0] sharedInstance];
    v8 = 1;
    v3 = [v9 switchControlTapBehavior] == 2;
  }

  if (v8)
  {
    MEMORY[0x29EDC9740](v9);
  }

  if (v3)
  {
    v12 = 0;
  }

  else
  {
    v6 = 0;
    objc_opt_class();
    v5 = __UIAccessibilityCastAsClass();
    v4 = MEMORY[0x29EDC9748](v5);
    objc_storeStrong(&v5, 0);
    v7 = v4;
    if ([v4 _accessibilityViewIsVisible])
    {
      v12 = ([(_UICalendarHeaderViewAccessibility *)v11 safeBoolForKey:@"isExpanded"]^ 1) & 1;
    }

    else
    {
      v12 = 0;
    }

    objc_storeStrong(&v7, 0);
  }

  return v12 & 1;
}

- (id)accessibilityValue
{
  v9[2] = self;
  v9[1] = a2;
  v6 = [(_UICalendarHeaderViewAccessibility *)self safeValueForKey:@"_monthYearButton"];
  v5 = [v6 safeValueForKey:@"_monthYearLabel"];
  v4 = [v5 safeValueForKey:@"_renderingLabel"];
  v9[0] = [v4 accessibilityLabel];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  *&v2 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  v8 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v9[0], v2}];
  [v8 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD898]];
  v7 = MEMORY[0x29EDC9748](v8);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(v9, 0);

  return v7;
}

- (void)accessibilityIncrement
{
  v8 = self;
  v7[1] = a2;
  v6 = 0;
  objc_opt_class();
  v2 = [(_UICalendarHeaderViewAccessibility *)v8 safeValueForKey:@"_nextMonthButton"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v2);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  if ([v4 isEnabled])
  {
    v3 = MEMORY[0x29EDC9748](v8);
    AXPerformSafeBlock();
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(v7, 0);
}

- (void)accessibilityDecrement
{
  v8 = self;
  v7[1] = a2;
  v6 = 0;
  objc_opt_class();
  v2 = [(_UICalendarHeaderViewAccessibility *)v8 safeValueForKey:@"_previousMonthButton"];
  v5 = __UIAccessibilityCastAsClass();
  MEMORY[0x29EDC9740](v2);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v7[0] = v4;
  if ([v4 isEnabled])
  {
    v3 = MEMORY[0x29EDC9748](v8);
    AXPerformSafeBlock();
    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(v7, 0);
}

- (CGPoint)accessibilityActivationPoint
{
  v7 = [(_UICalendarHeaderViewAccessibility *)self safeValueForKey:@"_monthYearButton"];
  v6 = [v7 safeValueForKey:@"_monthYearLabel"];
  [v6 accessibilityActivationPoint];
  v8 = v2;
  v9 = v3;
  MEMORY[0x29EDC9740](v6);
  MEMORY[0x29EDC9740](v7);
  v4 = v8;
  v5 = v9;
  result.y = v5;
  result.x = v4;
  return result;
}

- (id)automationElements
{
  v8 = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v3 = [v4 subviews];
  MEMORY[0x29EDC9740](v4);

  return v3;
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UICalendarHeaderViewAccessibility;
  [(_UICalendarHeaderViewAccessibility *)&v2 _accessibilityLoadAccessibilityInformation];
  [(_UICalendarHeaderViewAccessibility *)v4 _axMarkupMonthSelector];
}

- (void)_axMarkupMonthSelector
{
  v42 = a1;
  if (a1)
  {
    objc_initWeak(&location, v42);
    v40 = [v42 safeUIViewForKey:@"_monthYearButton"];
    v39 = [v40 safeUIViewForKey:@"_monthYearLabel"];
    [v39 setIsAccessibilityElement:0];
    [v40 setIsAccessibilityElement:1];
    v13 = v40;
    v33 = MEMORY[0x29EDCA5F8];
    v34 = -1073741824;
    v35 = 0;
    v36 = __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke;
    v37 = &unk_29F30C9E8;
    objc_copyWeak(&v38, &location);
    [v13 _setAccessibilityLabelBlock:&v33];
    v12 = v40;
    v27 = MEMORY[0x29EDCA5F8];
    v28 = -1073741824;
    v29 = 0;
    v30 = __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_2;
    v31 = &unk_29F30C9E8;
    objc_copyWeak(&v32, &location);
    [v12 setAccessibilityIdentifierBlock:&v27];
    [v40 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];
    v11 = v40;
    v21 = MEMORY[0x29EDCA5F8];
    v22 = -1073741824;
    v23 = 0;
    v24 = __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_3;
    v25 = &unk_29F30C9E8;
    objc_copyWeak(&v26, &location);
    [v11 _setAccessibilityValueBlock:&v21];
    objc_initWeak(&v20, v40);
    v10 = v40;
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __60___UICalendarHeaderViewAccessibility__axMarkupMonthSelector__block_invoke_4;
    v18 = &unk_29F30CE38;
    objc_copyWeak(&v19, &v20);
    [v10 _setAccessibilityActivationPointBlock:&v14];
    v9 = [v42 safeValueForKey:@"_nextMonthButton"];
    v8 = accessibilityLocalizedString(@"calendar.change.month.increment");
    [v9 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v8);
    *&v1 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v7 = [v42 safeValueForKey:{@"_nextMonthButton", v1}];
    [v7 setAccessibilityIdentifier:@"DatePicker.NextMonth"];
    *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v6 = [v42 safeValueForKey:{@"_previousMonthButton", v2}];
    v5 = accessibilityLocalizedString(@"calendar.change.month.decrement");
    [v6 setAccessibilityLabel:?];
    MEMORY[0x29EDC9740](v5);
    *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
    v4 = [v42 safeValueForKey:{@"_previousMonthButton", v3}];
    [v4 setAccessibilityIdentifier:@"DatePicker.PreviousMonth"];
    MEMORY[0x29EDC9740](v4);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&v20);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&v32);
    objc_destroyWeak(&v38);
    objc_storeStrong(&v39, 0);
    objc_storeStrong(&v40, 0);
    objc_destroyWeak(&location);
  }
}

- (void)_setupViewHierarchy
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UICalendarHeaderViewAccessibility;
  [(_UICalendarHeaderViewAccessibility *)&v2 _setupViewHierarchy];
  [(_UICalendarHeaderViewAccessibility *)v4 _axMarkupMonthSelector];
}

- (void)setExpanded:(BOOL)a3 animated:(BOOL)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6.receiver = self;
  v6.super_class = _UICalendarHeaderViewAccessibility;
  [(_UICalendarHeaderViewAccessibility *)&v6 setExpanded:a3 animated:a4];
  v4 = MEMORY[0x29EDC9748](v10);
  v5 = v8;
  AXPerformBlockOnMainThreadAfterDelay();
  objc_storeStrong(&v4, 0);
}

@end