@interface _UIDatePickerIOSCompactViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (int64_t)_accessibilityExpandedStatus;
- (unint64_t)accessibilityTraits;
@end

@implementation _UIDatePickerIOSCompactViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v6 = @"_UIDatePickerIOSCompactView";
  v3 = @"_UIDatePickerViewComponent";
  [location[0] validateClass:? conformsToProtocol:?];
  [location[0] validateProtocol:@"_UIDatePickerViewComponent" hasRequiredInstanceMethod:@"data"];
  [location[0] validateProtocol:@"_UIDatePickerViewComponent" hasRequiredInstanceMethod:@"datePicker"];
  v4 = "@";
  [location[0] validateClass:@"UIDatePicker" hasInstanceMethod:@"_compactStyleDelegate" withFullSignature:0];
  v5 = "q";
  [location[0] validateClass:@"_UIDatePickerDataModel" hasInstanceMethod:@"datePickerMode" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"dateView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"timeView" withFullSignature:{v4, 0}];
  [location[0] validateClass:v6 hasInstanceVariable:@"_presentation" withType:"_UIDatePickerOverlayPresentation"];
  [location[0] validateClass:@"_UIDatePickerOverlayPresentation" hasInstanceMethod:@"activeMode" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"setActiveComponent:" withFullSignature:{"v", v5, 0}];
  objc_storeStrong(v8, v7);
}

- (BOOL)isAccessibilityElement
{
  v3 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"data"];
  v4 = [v3 safeIntegerForKey:@"datePickerMode"];
  MEMORY[0x29EDC9740](v3);
  return v4 != 2;
}

- (id)accessibilityElements
{
  v7 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"data"];
  v8 = [v7 safeIntegerForKey:@"datePickerMode"];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v8 == 2)
  {
    v4 = MEMORY[0x29EDB8D80];
    v6 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"dateView", v2];
    v5 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"timeView"];
    v10 = [v4 axArrayByIgnoringNilElementsWithCount:{2, v6, v5}];
    MEMORY[0x29EDC9740](v5);
    MEMORY[0x29EDC9740](v6);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)accessibilityLabel
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  v4 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"data"];
  v5 = [v4 safeIntegerForKey:@"datePickerMode"];
  MEMORY[0x29EDC9740](v4);
  if (v5)
  {
    switch(v5)
    {
      case 1:
        objc_storeStrong(location, @"compact.picker.date");
        break;
      case 2:
        objc_storeStrong(location, @"compact.picker.date.and.time");
        break;
      case 3:
        objc_storeStrong(location, @"compact.picker.countdown");
        break;
      case 4:
        objc_storeStrong(location, @"compact.picker.year.month");
        break;
    }
  }

  else
  {
    objc_storeStrong(location, @"compact.picker.time");
  }

  v3 = accessibilityLocalizedString(location[0]);
  objc_storeStrong(location, 0);

  return v3;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = 0;
  v13 = 0;
  v11 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"data"];
  v12 = [v11 safeIntegerForKey:@"datePickerMode"];
  v2 = MEMORY[0x29EDC9740](v11).n128_u64[0];
  if (v12 == 1 || v12 == 2)
  {
    v10 = [(_UIDatePickerIOSCompactViewAccessibility *)selfCopy safeUIViewForKey:@"_dateView", *&v2];
    accessibilityLabel = [v10 accessibilityLabel];
    v4 = v13;
    v13 = accessibilityLabel;
    MEMORY[0x29EDC9740](v4);
    v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  }

  if (!v12 || v12 == 2)
  {
    v9 = [(_UIDatePickerIOSCompactViewAccessibility *)selfCopy safeUIViewForKey:@"_timeView", *&v2];
    accessibilityLabel2 = [v9 accessibilityLabel];
    v6 = v14[0];
    v14[0] = accessibilityLabel2;
    MEMORY[0x29EDC9740](v6);
    MEMORY[0x29EDC9740](v9);
  }

  v8 = __UIAXStringForVariables();
  objc_storeStrong(&v13, 0);
  objc_storeStrong(v14, 0);

  return v8;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v5 = a2;
  v3.receiver = self;
  v3.super_class = _UIDatePickerIOSCompactViewAccessibility;
  accessibilityTraits = [(_UIDatePickerIOSCompactViewAccessibility *)&v3 accessibilityTraits];
  if ([(_UIDatePickerIOSCompactViewAccessibility *)selfCopy _accessibilityExpandedStatus]== 2)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7F70];
  }

  return accessibilityTraits;
}

- (int64_t)_accessibilityExpandedStatus
{
  v3 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"_presentation"];
  v4 = [v3 safeIntegerForKey:@"activeMode"];
  MEMORY[0x29EDC9740](v3);
  if (v4)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (BOOL)accessibilityActivate
{
  selfCopy = self;
  v25 = a2;
  v3 = [(_UIDatePickerIOSCompactViewAccessibility *)self safeValueForKey:@"data"];
  v24 = [v3 safeIntegerForKey:@"datePickerMode"];
  v23 = [(_UIDatePickerIOSCompactViewAccessibility *)selfCopy safeValueForKey:@"datePicker", MEMORY[0x29EDC9740](v3).n128_f64[0]];
  v22 = [v23 safeValueForKey:@"_compactStyleDelegate"];
  if (v24 == 1)
  {
    v14 = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __65___UIDatePickerIOSCompactViewAccessibility_accessibilityActivate__block_invoke;
    v18 = &unk_29F30CCC0;
    v19 = MEMORY[0x29EDC9748](selfCopy);
    v20 = MEMORY[0x29EDC9748](v22);
    v21 = MEMORY[0x29EDC9748](v23);
    AXPerformSafeBlock();
    accessibilityActivate = objc_opt_respondsToSelector() & 1;
    v13 = 1;
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
    objc_storeStrong(&v19, 0);
  }

  else if (v24)
  {
    v4.receiver = selfCopy;
    v4.super_class = _UIDatePickerIOSCompactViewAccessibility;
    accessibilityActivate = [(_UIDatePickerIOSCompactViewAccessibility *)&v4 accessibilityActivate];
    v13 = 1;
  }

  else
  {
    v5 = MEMORY[0x29EDCA5F8];
    v6 = -1073741824;
    v7 = 0;
    v8 = __65___UIDatePickerIOSCompactViewAccessibility_accessibilityActivate__block_invoke_2;
    v9 = &unk_29F30CCC0;
    v10 = MEMORY[0x29EDC9748](selfCopy);
    v11 = MEMORY[0x29EDC9748](v22);
    v12 = MEMORY[0x29EDC9748](v23);
    AXPerformSafeBlock();
    accessibilityActivate = objc_opt_respondsToSelector() & 1;
    v13 = 1;
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v22, 0);
  objc_storeStrong(&v23, 0);
  return accessibilityActivate & 1;
}

@end