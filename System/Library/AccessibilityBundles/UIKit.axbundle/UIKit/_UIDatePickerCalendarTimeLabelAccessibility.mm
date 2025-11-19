@interface _UIDatePickerCalendarTimeLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_axSelfIsFirstResponder;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (_UIDatePickerCalendarTimeLabelAccessibility)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4;
- (id)_accessibilityHourElement;
- (id)_accessibilityInternalData;
- (id)_accessibilityMinuteElement;
- (id)_accessibilityResponderElement;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (uint64_t)_accessibilityInternalSelectedTextRange;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityFocusChanged:(id)a3;
- (void)_accessibilitySetInternalSelectedTextRange:(uint64_t)a3;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)dealloc;
- (void)pushCurrentStateIntoUIAndNotify;
@end

@implementation _UIDatePickerCalendarTimeLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = @"_UIDatePickerCalendarTimeView";
  [location[0] validateClass:?];
  v6 = @"_UIDatePickerCalendarTimeLabel";
  [location[0] validateClass:? isKindOfClass:?];
  v7 = "@";
  [location[0] validateClass:@"_UIDatePickerCalendarTimeView" hasInstanceMethod:@"timeLabel" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"text" withFullSignature:{v7, 0}];
  v4 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"pushCurrentStateIntoUIAndNotify" withFullSignature:0];
  v8 = "q";
  [location[0] validateClass:v6 hasInstanceMethod:@"initWithTimeFormat:minuteInterval:" withFullSignature:{v7, "q", 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"setHourText:" withFullSignature:{v4, v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"setMinuteText:" withFullSignature:{v4, v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"hourText" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"minuteText" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"inputScope" withFullSignature:{v8, 0}];
  v5 = "{CGRect={CGPoint=dd}{CGSize=dd}}";
  [location[0] validateClass:v6 hasInstanceMethod:@"hourRect" withFullSignature:0];
  [location[0] validateClass:v6 hasInstanceMethod:@"minuteRect" withFullSignature:{v5, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"timeFormat" withFullSignature:{v7, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"stateContext" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"_UIDatePickerCalendarTimeLabelStateMachineContext" hasInstanceMethod:@"currentState" withFullSignature:{"Q", 0}];
  [location[0] validateClass:@"_UIDatePickerCalendarTimeFormat" hasInstanceMethod:@"clock" withFullSignature:{v8, 0}];
  objc_storeStrong(v10, v9);
}

- (unint64_t)accessibilityTraits
{
  v6 = self;
  v5 = a2;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v4 = *MEMORY[0x29EDC7598];
    if ([(_UIDatePickerCalendarTimeLabelAccessibility *)v6 _axSelfIsFirstResponder])
    {
      v4 |= *MEMORY[0x29EDC7528];
    }

    return v4;
  }

  else
  {
    v3.receiver = v6;
    v3.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    return [(_UIDatePickerCalendarTimeLabelAccessibility *)&v3 accessibilityTraits];
  }
}

- (BOOL)_axSelfIsFirstResponder
{
  v8 = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  v3 = [v4 isFirstResponder];
  MEMORY[0x29EDC9740](v4);
  return v3;
}

- (id)_accessibilityResponderElement
{
  v7 = self;
  v6[1] = a2;
  v4 = [(_UIDatePickerCalendarTimeLabelAccessibility *)self accessibilityElements];
  v6[0] = MEMORY[0x29EDC9748](v7);
  v3 = [v4 ax_filteredArrayUsingBlock:?];
  v5 = [v3 firstObject];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v6, 0);
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)accessibilityElements
{
  v7 = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityValueForKey:@"accessibilityElements"];
  if (!location[0])
  {
    location[0] = [MEMORY[0x29EDB8DE8] array];
    [(_UIDatePickerCalendarTimeLabelAccessibility *)v7 _accessibilitySetRetainedValue:location[0] forKey:@"accessibilityElements", MEMORY[0x29EDC9740](0).n128_f64[0]];
    v4 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v7 _accessibilityHourElement];
    [location[0] addObject:?];
    v5 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v7 _accessibilityMinuteElement];
    [location[0] addObject:?];
    MEMORY[0x29EDC9740](v5);
  }

  v8 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)_accessibilityHourElement
{
  v65 = self;
  v64[1] = a2;
  v64[0] = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  v21 = accessibilityUIKitLocalizedString();
  [v64[0] setAccessibilityLabel:?];
  [v64[0] setAccessibilityIdentifier:{@"Hours", MEMORY[0x29EDC9740](v21).n128_f64[0]}];
  objc_initWeak(&location, v65);
  v22 = v64[0];
  v57 = MEMORY[0x29EDCA5F8];
  v58 = -1073741824;
  v59 = 0;
  v60 = __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke;
  v61 = &unk_29F30CD20;
  objc_copyWeak(&v62, &location);
  [v22 _setAccessibilityTraitsBlock:&v57];
  v56 = 1;
  v55 = 12;
  v19 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v65 safeValueForKey:@"timeFormat"];
  v20 = [v19 safeIntegerForKey:@"clock"];
  MEMORY[0x29EDC9740](v19);
  if (v20)
  {
    switch(v20)
    {
      case 1:
        v56 = 1;
        v55 = 12;
        break;
      case 2:
        v56 = 0;
        v55 = 23;
        break;
      case 3:
        v56 = 1;
        v55 = 24;
        break;
    }
  }

  else
  {
    v56 = 0;
    v55 = 11;
  }

  v18 = v64[0];
  v49 = MEMORY[0x29EDCA5F8];
  v50 = -1073741824;
  v51 = 0;
  v52 = __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_2;
  v53 = &unk_29F30CD70;
  objc_copyWeak(v54, &location);
  v54[1] = v56;
  v54[2] = v55;
  [v18 _setAccessibilityIncrementBlock:&v49];
  v17 = v64[0];
  v43 = MEMORY[0x29EDCA5F8];
  v44 = -1073741824;
  v45 = 0;
  v46 = __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_4;
  v47 = &unk_29F30CD70;
  objc_copyWeak(v48, &location);
  v48[1] = v56;
  v48[2] = v55;
  [v17 _setAccessibilityDecrementBlock:&v43];
  v16 = v64[0];
  v37 = MEMORY[0x29EDCA5F8];
  v38 = -1073741824;
  v39 = 0;
  v40 = __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_6;
  v41 = &unk_29F30C9E8;
  objc_copyWeak(&v42, &location);
  [v16 _setAccessibilityValueBlock:&v37];
  v15 = v65;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v65 safeCGRectForKey:@"hourRect"];
  v31 = v2;
  v32 = v3;
  v33 = v4;
  v34 = v5;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v15 convertRect:v65 fromView:v2, v3, v4, v5];
  *&v13 = v6;
  *(&v13 + 1) = v7;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v35 = v13;
  v36 = v14;
  v29 = v13;
  v30 = v14;
  [v64[0] setAccessibilityFrameInContainerSpace:{v6, v7, v8, v9}];
  v12 = v64[0];
  v23 = MEMORY[0x29EDCA5F8];
  v24 = -1073741824;
  v25 = 0;
  v26 = __72___UIDatePickerCalendarTimeLabelAccessibility__accessibilityHourElement__block_invoke_7;
  v27 = &unk_29F30C7F0;
  objc_copyWeak(&v28, &location);
  [v12 _setAccessibilityActivateBlock:&v23];
  v11 = MEMORY[0x29EDC9748](v64[0]);
  objc_destroyWeak(&v28);
  objc_destroyWeak(&v42);
  objc_destroyWeak(v48);
  objc_destroyWeak(v54);
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
  objc_storeStrong(v64, 0);

  return v11;
}

- (id)_accessibilityMinuteElement
{
  v63 = self;
  v62[1] = a2;
  v62[0] = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  v19 = accessibilityUIKitLocalizedString();
  [v62[0] setAccessibilityLabel:?];
  [v62[0] setAccessibilityIdentifier:{@"Minutes", MEMORY[0x29EDC9740](v19).n128_f64[0]}];
  objc_initWeak(&location, v63);
  v20 = v62[0];
  v55 = MEMORY[0x29EDCA5F8];
  v56 = -1073741824;
  v57 = 0;
  v58 = __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke;
  v59 = &unk_29F30CD20;
  objc_copyWeak(&v60, &location);
  [v20 _setAccessibilityTraitsBlock:&v55];
  v54 = 0;
  v53 = 59;
  v18 = v62[0];
  v47 = MEMORY[0x29EDCA5F8];
  v48 = -1073741824;
  v49 = 0;
  v50 = __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_2;
  v51 = &unk_29F30CD70;
  objc_copyWeak(v52, &location);
  v52[1] = v54;
  v52[2] = v53;
  [v18 _setAccessibilityIncrementBlock:&v47];
  v17 = v62[0];
  v41 = MEMORY[0x29EDCA5F8];
  v42 = -1073741824;
  v43 = 0;
  v44 = __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_4;
  v45 = &unk_29F30CD98;
  objc_copyWeak(v46, &location);
  v46[1] = v54;
  [v17 _setAccessibilityDecrementBlock:&v41];
  v16 = v62[0];
  v35 = MEMORY[0x29EDCA5F8];
  v36 = -1073741824;
  v37 = 0;
  v38 = __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_6;
  v39 = &unk_29F30C9E8;
  objc_copyWeak(&v40, &location);
  [v16 _setAccessibilityValueBlock:&v35];
  v15 = v63;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v63 safeCGRectForKey:@"minuteRect"];
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v15 convertRect:v63 fromView:v2, v3, v4, v5];
  *&v13 = v6;
  *(&v13 + 1) = v7;
  *&v14 = v8;
  *(&v14 + 1) = v9;
  v33 = v13;
  v34 = v14;
  v27 = v13;
  v28 = v14;
  [v62[0] setAccessibilityFrameInContainerSpace:{v6, v7, v8, v9}];
  v12 = v62[0];
  v21 = MEMORY[0x29EDCA5F8];
  v22 = -1073741824;
  v23 = 0;
  v24 = __74___UIDatePickerCalendarTimeLabelAccessibility__accessibilityMinuteElement__block_invoke_7;
  v25 = &unk_29F30C7F0;
  objc_copyWeak(&v26, &location);
  [v12 _setAccessibilityActivateBlock:&v21];
  v11 = MEMORY[0x29EDC9748](v62[0]);
  objc_destroyWeak(&v26);
  objc_destroyWeak(&v40);
  objc_destroyWeak(v46);
  objc_destroyWeak(v52);
  objc_destroyWeak(&v60);
  objc_destroyWeak(&location);
  objc_storeStrong(v62, 0);

  return v11;
}

- (id)accessibilityLabel
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickerca_2.isa)];
  if (location[0])
  {
    v4 = [location[0] safeUIViewForKey:@"timeLabel"];
    v6 = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v6 = accessibilityLocalizedString(@"calendar.time");
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (CGRect)accessibilityFrame
{
  v25 = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickerca_2.isa)];
  if (location[0])
  {
    v22.receiver = v25;
    v22.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    [(_UIDatePickerCalendarTimeLabelAccessibility *)&v22 accessibilityFrame];
    v23.origin.x = v2;
    v23.origin.y = v3;
    v23.size.width = v4;
    v23.size.height = v5;
    v18 = [location[0] safeUIViewForKey:@"timeLabel"];
    [v18 accessibilityFrame];
    r2.origin.x = v6;
    r2.origin.y = v7;
    r2.size.width = v8;
    r2.size.height = v9;
    v26 = CGRectUnion(v23, r2);
    MEMORY[0x29EDC9740](v18);
  }

  else
  {
    v19.receiver = v25;
    v19.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    [(_UIDatePickerCalendarTimeLabelAccessibility *)&v19 accessibilityFrame];
    v26.origin.x = v10;
    v26.origin.y = v11;
    v26.size.width = v12;
    v26.size.height = v13;
  }

  v20 = 1;
  objc_storeStrong(location, 0);
  x = v26.origin.x;
  y = v26.origin.y;
  width = v26.size.width;
  height = v26.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (id)_accessibilityInternalData
{
  v5 = a1;
  if (a1)
  {
    v4 = [v5 _accessibilityValueForKey:@"AXInternalData"];
    if (!v4)
    {
      v4 = objc_opt_new();
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v3 = [MEMORY[0x29EDBA168] valueWithRange:{0, 0, MEMORY[0x29EDC9740](0).n128_f64[0]}];
      [v4 setValue:? forKey:?];
      [v5 _accessibilitySetRetainedValue:v4 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
    }

    v6 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v6 = 0;
  }

  v1 = v6;

  return v1;
}

- (uint64_t)_accessibilityInternalSelectedTextRange
{
  v5 = a1;
  if (a1)
  {
    v4 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v5 _accessibilityInternalData];
    v3 = [v4 objectForKey:@"AXInternalRange"];
    v6 = [v3 rangeValue];
    v7 = v1;
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&v4, 0);
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  return v6;
}

- (void)_accessibilitySetInternalSelectedTextRange:(uint64_t)a3
{
  v7 = a2;
  v8 = a3;
  v6 = a1;
  if (a1)
  {
    v5 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v6 _accessibilityInternalData];
    v3 = v5;
    v4 = [MEMORY[0x29EDBA168] valueWithRange:{v7, v8}];
    [v3 setObject:? forKey:?];
    MEMORY[0x29EDC9740](v4);
    objc_storeStrong(&v5, 0);
  }
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v8 = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self safeStringForKey:@"text"];
  if ([location[0] length])
  {
    v9 = [(_UIDatePickerCalendarTimeLabelAccessibility *)v8 _accessibilityInternalSelectedTextRange];
  }

  else
  {
    v5.receiver = v8;
    v5.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    v9 = [(_UIDatePickerCalendarTimeLabelAccessibility *)&v5 _accessibilitySelectedTextRange];
  }

  v10 = v2;
  v6 = 1;
  objc_storeStrong(location, 0);
  v3 = v9;
  v4 = v10;
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v6 = a3;
  v5 = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self safeStringForKey:@"text"];
  if ([location[0] length])
  {
    [(_UIDatePickerCalendarTimeLabelAccessibility *)v5 _accessibilitySetInternalSelectedTextRange:v6.length];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  }

  v3.receiver = v5;
  v3.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v3 _accessibilitySetSelectedTextRange:v6.location, v6.length];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusChanged:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  v5 = 0;
  v7 = 0;
  v8 = 0;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v4 _accessibilitySetInternalSelectedTextRange:0];
  objc_storeStrong(location, 0);
}

- (_UIDatePickerCalendarTimeLabelAccessibility)initWithTimeFormat:(id)a3 minuteInterval:(int64_t)a4
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v4 = v12;
  v12 = 0;
  v9.receiver = v4;
  v9.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  v12 = [(_UIDatePickerCalendarTimeLabelAccessibility *)&v9 initWithTimeFormat:location[0] minuteInterval:a4];
  objc_storeStrong(&v12, v12);
  if (v12)
  {
    v7 = [MEMORY[0x29EDBA068] defaultCenter];
    [v7 addObserver:v12 selector:sel__accessibilityFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];
    MEMORY[0x29EDC9740](v7);
  }

  v6 = MEMORY[0x29EDC9748](v12);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)dealloc
{
  v6 = self;
  v5 = a2;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityRemoveValueForKey:@"AXInternalData"];
  v3 = [MEMORY[0x29EDBA068] defaultCenter];
  [v3 removeObserver:v6 name:*MEMORY[0x29EDC7EB8] object:0];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  v4.receiver = v6;
  v4.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v4 dealloc];
}

- (void)pushCurrentStateIntoUIAndNotify
{
  v4 = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v2 pushCurrentStateIntoUIAndNotify];
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v4 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCE0]];
}

@end