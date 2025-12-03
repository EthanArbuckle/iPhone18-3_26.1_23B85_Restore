@interface _UIDatePickerCalendarTimeLabelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_axSelfIsFirstResponder;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (_UIDatePickerCalendarTimeLabelAccessibility)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval;
- (id)_accessibilityHourElement;
- (id)_accessibilityInternalData;
- (id)_accessibilityMinuteElement;
- (id)_accessibilityResponderElement;
- (id)accessibilityElements;
- (id)accessibilityLabel;
- (uint64_t)_accessibilityInternalSelectedTextRange;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityFocusChanged:(id)changed;
- (void)_accessibilitySetInternalSelectedTextRange:(uint64_t)range;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)dealloc;
- (void)pushCurrentStateIntoUIAndNotify;
@end

@implementation _UIDatePickerCalendarTimeLabelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v10 = location;
  v9 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  selfCopy = self;
  v5 = a2;
  if (AXDoesRequestingClientDeserveAutomation())
  {
    v4 = *MEMORY[0x29EDC7598];
    if ([(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _axSelfIsFirstResponder])
    {
      v4 |= *MEMORY[0x29EDC7528];
    }

    return v4;
  }

  else
  {
    v3.receiver = selfCopy;
    v3.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    return [(_UIDatePickerCalendarTimeLabelAccessibility *)&v3 accessibilityTraits];
  }
}

- (BOOL)_axSelfIsFirstResponder
{
  selfCopy = self;
  v7 = a2;
  v6 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  isFirstResponder = [v4 isFirstResponder];
  MEMORY[0x29EDC9740](v4);
  return isFirstResponder;
}

- (id)_accessibilityResponderElement
{
  selfCopy = self;
  v6[1] = a2;
  accessibilityElements = [(_UIDatePickerCalendarTimeLabelAccessibility *)self accessibilityElements];
  v6[0] = MEMORY[0x29EDC9748](selfCopy);
  v3 = [accessibilityElements ax_filteredArrayUsingBlock:?];
  firstObject = [v3 firstObject];
  MEMORY[0x29EDC9740](v3);
  objc_storeStrong(v6, 0);
  MEMORY[0x29EDC9740](accessibilityElements);

  return firstObject;
}

- (id)accessibilityElements
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityValueForKey:@"accessibilityElements"];
  if (!location[0])
  {
    location[0] = [MEMORY[0x29EDB8DE8] array];
    [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilitySetRetainedValue:location[0] forKey:@"accessibilityElements", MEMORY[0x29EDC9740](0).n128_f64[0]];
    _accessibilityHourElement = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityHourElement];
    [location[0] addObject:?];
    _accessibilityMinuteElement = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityMinuteElement];
    [location[0] addObject:?];
    MEMORY[0x29EDC9740](_accessibilityMinuteElement);
  }

  v8 = MEMORY[0x29EDC9748](location[0]);
  objc_storeStrong(location, 0);
  v2 = v8;

  return v2;
}

- (id)_accessibilityHourElement
{
  selfCopy = self;
  v64[1] = a2;
  v64[0] = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  v21 = accessibilityUIKitLocalizedString();
  [v64[0] setAccessibilityLabel:?];
  [v64[0] setAccessibilityIdentifier:{@"Hours", MEMORY[0x29EDC9740](v21).n128_f64[0]}];
  objc_initWeak(&location, selfCopy);
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
  v19 = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy safeValueForKey:@"timeFormat"];
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
  v15 = selfCopy;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy safeCGRectForKey:@"hourRect"];
  v31 = v2;
  v32 = v3;
  v33 = v4;
  v34 = v5;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v15 convertRect:selfCopy fromView:v2, v3, v4, v5];
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
  selfCopy = self;
  v62[1] = a2;
  v62[0] = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
  v19 = accessibilityUIKitLocalizedString();
  [v62[0] setAccessibilityLabel:?];
  [v62[0] setAccessibilityIdentifier:{@"Minutes", MEMORY[0x29EDC9740](v19).n128_f64[0]}];
  objc_initWeak(&location, selfCopy);
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
  v15 = selfCopy;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy safeCGRectForKey:@"minuteRect"];
  v29 = v2;
  v30 = v3;
  v31 = v4;
  v32 = v5;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)v15 convertRect:selfCopy fromView:v2, v3, v4, v5];
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
    accessibilityLabel = [v4 accessibilityLabel];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    accessibilityLabel = accessibilityLocalizedString(@"calendar.time");
  }

  objc_storeStrong(location, 0);
  v2 = accessibilityLabel;

  return v2;
}

- (CGRect)accessibilityFrame
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityAncestorIsKindOf:NSClassFromString(&cfstr_Uidatepickerca_2.isa)];
  if (location[0])
  {
    v22.receiver = selfCopy;
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
    v19.receiver = selfCopy;
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
  selfCopy = self;
  if (self)
  {
    v4 = [selfCopy _accessibilityValueForKey:@"AXInternalData"];
    if (!v4)
    {
      v4 = objc_opt_new();
      v8 = 0;
      v7 = 0;
      v9 = 0;
      v10 = 0;
      v3 = [MEMORY[0x29EDBA168] valueWithRange:{0, 0, MEMORY[0x29EDC9740](0).n128_f64[0]}];
      [v4 setValue:? forKey:?];
      [selfCopy _accessibilitySetRetainedValue:v4 forKey:{@"AXInternalData", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
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
  selfCopy = self;
  if (self)
  {
    _accessibilityInternalData = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityInternalData];
    v3 = [_accessibilityInternalData objectForKey:@"AXInternalRange"];
    rangeValue = [v3 rangeValue];
    v7 = v1;
    objc_storeStrong(&v3, 0);
    objc_storeStrong(&_accessibilityInternalData, 0);
  }

  else
  {
    rangeValue = 0;
    v7 = 0;
  }

  return rangeValue;
}

- (void)_accessibilitySetInternalSelectedTextRange:(uint64_t)range
{
  v7 = a2;
  rangeCopy = range;
  selfCopy = self;
  if (self)
  {
    _accessibilityInternalData = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityInternalData];
    v3 = _accessibilityInternalData;
    v4 = [MEMORY[0x29EDBA168] valueWithRange:{v7, rangeCopy}];
    [v3 setObject:? forKey:?];
    MEMORY[0x29EDC9740](v4);
    objc_storeStrong(&_accessibilityInternalData, 0);
  }
}

- (_NSRange)_accessibilitySelectedTextRange
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self safeStringForKey:@"text"];
  if ([location[0] length])
  {
    _accessibilityInternalSelectedTextRange = [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityInternalSelectedTextRange];
  }

  else
  {
    v5.receiver = selfCopy;
    v5.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
    _accessibilityInternalSelectedTextRange = [(_UIDatePickerCalendarTimeLabelAccessibility *)&v5 _accessibilitySelectedTextRange];
  }

  v10 = v2;
  v6 = 1;
  objc_storeStrong(location, 0);
  v3 = _accessibilityInternalSelectedTextRange;
  v4 = v10;
  result.length = v4;
  result.location = v3;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = [(_UIDatePickerCalendarTimeLabelAccessibility *)self safeStringForKey:@"text"];
  if ([location[0] length])
  {
    [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilitySetInternalSelectedTextRange:rangeCopy.length];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  }

  v3.receiver = selfCopy;
  v3.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v3 _accessibilitySetSelectedTextRange:rangeCopy.location, rangeCopy.length];
  objc_storeStrong(location, 0);
}

- (void)_accessibilityFocusChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v6 = 0;
  v5 = 0;
  v7 = 0;
  v8 = 0;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilitySetInternalSelectedTextRange:0];
  objc_storeStrong(location, 0);
}

- (_UIDatePickerCalendarTimeLabelAccessibility)initWithTimeFormat:(id)format minuteInterval:(int64_t)interval
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, format);
  intervalCopy = interval;
  v4 = selfCopy;
  selfCopy = 0;
  v9.receiver = v4;
  v9.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  selfCopy = [(_UIDatePickerCalendarTimeLabelAccessibility *)&v9 initWithTimeFormat:location[0] minuteInterval:interval];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__accessibilityFocusChanged_ name:*MEMORY[0x29EDC7EB8] object:0];
    MEMORY[0x29EDC9740](defaultCenter);
  }

  v6 = MEMORY[0x29EDC9748](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  v5 = a2;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)self _accessibilityRemoveValueForKey:@"AXInternalData"];
  defaultCenter = [MEMORY[0x29EDBA068] defaultCenter];
  [defaultCenter removeObserver:selfCopy name:*MEMORY[0x29EDC7EB8] object:0];
  *&v2 = MEMORY[0x29EDC9740](defaultCenter).n128_u64[0];
  v4.receiver = selfCopy;
  v4.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v4 dealloc];
}

- (void)pushCurrentStateIntoUIAndNotify
{
  selfCopy = self;
  v3 = a2;
  v2.receiver = self;
  v2.super_class = _UIDatePickerCalendarTimeLabelAccessibility;
  [(_UIDatePickerCalendarTimeLabelAccessibility *)&v2 pushCurrentStateIntoUIAndNotify];
  [(_UIDatePickerCalendarTimeLabelAccessibility *)selfCopy _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCE0]];
}

@end