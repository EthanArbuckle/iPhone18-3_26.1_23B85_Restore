@interface PLSlalomRegionEditorAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (double)_accessibilitySliderDeltaForFrame:(CGRect)frame;
- (id)accessibilityElements;
- (void)_accessibilityDecrementMockSlider:(id)slider largeStep:(BOOL)step;
- (void)_accessibilityIncrementMockSlider:(id)slider largeStep:(BOOL)step;
- (void)layoutSubviews;
@end

@implementation PLSlalomRegionEditorAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PLSlalomRegionEditor"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceMethod:@"setStartValue: notify:" withFullSignature:{"v", "d", "B", 0}];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceMethod:@"setEndValue: notify:" withFullSignature:{"v", "d", "B", 0}];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_startValue" withType:"d"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_endValue" withType:"d"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_maxValue" withType:"d"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_minValue" withType:"d"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_delegate" withType:"<PLSlalomRegionEditorDelegate>"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_startHandleView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_endHandleView" withType:"UIImageView"];
  [validationsCopy validateClass:@"PLSlalomRegionEditor" hasInstanceVariable:@"_trackImageView" withType:"UIImageView"];
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  eventCopy = event;
  touchCopy = touch;
  v8 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startValue"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endValue"];
  [v11 doubleValue];
  v13 = v12;

  v31.receiver = self;
  v31.super_class = PLSlalomRegionEditorAccessibility;
  v14 = [(PLSlalomRegionEditorAccessibility *)&v31 continueTrackingWithTouch:touchCopy withEvent:eventCopy];

  v15 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startValue"];
  [v15 doubleValue];
  v17 = v16;

  v18 = MEMORY[0x29EDC7EA8];
  if (v10 != v17)
  {
    v19 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
    v20 = [v19 objectForKey:@"StartHandle"];
    v21 = *v18;
    accessibilityValue = [v20 accessibilityValue];
    UIAccessibilityPostNotification(v21, accessibilityValue);
  }

  v23 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endValue"];
  [v23 doubleValue];
  v25 = v24;

  if (v13 != v25)
  {
    v26 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
    v27 = [v26 objectForKey:@"EndHandle"];
    v28 = *v18;
    accessibilityValue2 = [v27 accessibilityValue];
    UIAccessibilityPostNotification(v28, accessibilityValue2);
  }

  return v14;
}

- (void)layoutSubviews
{
  v3 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startHandleView"];
  [v3 accessibilityFrame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endHandleView"];
  [v12 accessibilityFrame];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v37.receiver = self;
  v37.super_class = PLSlalomRegionEditorAccessibility;
  [(PLSlalomRegionEditorAccessibility *)&v37 layoutSubviews];
  [v3 accessibilityFrame];
  v40.origin.x = v21;
  v40.origin.y = v22;
  v40.size.width = v23;
  v40.size.height = v24;
  v38.origin.x = v5;
  v38.origin.y = v7;
  v38.size.width = v9;
  v38.size.height = v11;
  v25 = CGRectEqualToRect(v38, v40);
  v26 = MEMORY[0x29EDC7428];
  if (!v25)
  {
    v27 = *MEMORY[0x29EDC7428];
    v28 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
    v29 = [v28 objectForKey:@"StartHandle"];
    UIAccessibilityPostNotification(v27, v29);
  }

  [v12 accessibilityFrame];
  v41.origin.x = v30;
  v41.origin.y = v31;
  v41.size.width = v32;
  v41.size.height = v33;
  v39.origin.x = v14;
  v39.origin.y = v16;
  v39.size.width = v18;
  v39.size.height = v20;
  if (!CGRectEqualToRect(v39, v41))
  {
    v34 = *v26;
    v35 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
    v36 = [v35 objectForKey:@"EndHandle"];
    UIAccessibilityPostNotification(v34, v36);
  }
}

- (id)accessibilityElements
{
  v3 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
  if (v3)
  {
    dictionary = v3;
    v5 = [v3 objectForKey:@"Children"];
    if (v5)
    {
      v6 = v5;
      goto LABEL_11;
    }

    array = [MEMORY[0x29EDB8DE8] array];
    [dictionary setObject:array forKey:@"Children"];
  }

  else
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    array = [MEMORY[0x29EDB8DE8] array];
    [dictionary setObject:array forKey:@"Children"];
    [(PLSlalomRegionEditorAccessibility *)self _accessibilitySetRetainedValue:dictionary forKey:@"userInfo"];
  }

  v8 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_maxValue"];
  [v8 doubleValue];
  v10 = v9;

  v11 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startHandleView"];
  if (v11)
  {
    v12 = [objc_allocWithZone(PLUIAccessibilityMockSlider) initWithAccessibilityContainer:self];
    [v12 setView:v11];
    [v12 setMockSliderDelegate:self];
    [v12 setIsAccessibilityElement:1];
    v13 = accessibilityLocalizedString(@"slomo.trim.begin");
    [v12 setAccessibilityLabel:v13];

    v14 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startValue"];
    [v14 doubleValue];
    v16 = v15;

    v17 = _createFormatDurationString(v16, v10);
    [v12 setAccessibilityValue:v17];
    [array addObject:v12];
    [dictionary setObject:v12 forKey:@"StartHandle"];
  }

  v18 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endHandleView"];
  if (v18)
  {
    v19 = [objc_allocWithZone(PLUIAccessibilityMockSlider) initWithAccessibilityContainer:self];
    [v19 setView:v18];
    [v19 setMockSliderDelegate:self];
    [v19 setIsAccessibilityElement:1];
    v20 = accessibilityLocalizedString(@"slomo.trim.end");
    [v19 setAccessibilityLabel:v20];

    v21 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endValue"];
    [v21 doubleValue];
    v23 = v22;

    v24 = _createFormatDurationString(v23, v10);
    [v19 setAccessibilityValue:v24];
    [array addObject:v19];
    [dictionary setObject:v19 forKey:@"EndHandle"];
  }

  v6 = array;

LABEL_11:

  return v6;
}

- (double)_accessibilitySliderDeltaForFrame:(CGRect)frame
{
  v4 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_minValue", frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  [v4 doubleValue];
  v6 = v5;

  v7 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_maxValue"];
  [v7 doubleValue];
  v9 = v8;

  v10 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_trackImageView"];
  [v10 frame];
  v12 = (v9 - v6) * (4.0 / v11);

  return v12;
}

- (void)_accessibilityIncrementMockSlider:(id)slider largeStep:(BOOL)step
{
  stepCopy = step;
  sliderCopy = slider;
  v6 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_delegate"];
  v7 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
  v8 = [v7 objectForKey:@"StartHandle"];

  if (v8 == sliderCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 slalomRegionEditorDidBeginEditing:self withStartHandle:1];
    }

    v10 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startHandleView"];
    [v10 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startValue"];
    [v31 doubleValue];
    v33 = v32;

    [(PLSlalomRegionEditorAccessibility *)self _accessibilitySliderDeltaForFrame:v24, v26, v28, v30];
    if (stepCopy)
    {
      v34 = v34 * 5.0;
    }

    [(PLSlalomRegionEditorAccessibility *)self setStartValue:1 notify:v33 + v34];
  }

  else
  {
    v9 = [v7 objectForKey:@"EndHandle"];

    if (v9 != sliderCopy)
    {
      goto LABEL_16;
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 slalomRegionEditorDidBeginEditing:self withStartHandle:0];
    }

    v10 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endHandleView"];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endValue"];
    [v19 doubleValue];
    v21 = v20;

    [(PLSlalomRegionEditorAccessibility *)self _accessibilitySliderDeltaForFrame:v12, v14, v16, v18];
    if (stepCopy)
    {
      v22 = v22 * 5.0;
    }

    [(PLSlalomRegionEditorAccessibility *)self setEndValue:1 notify:v21 + v22];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 slalomRegionEditorDidEndEditing:self];
  }

LABEL_16:
}

- (void)_accessibilityDecrementMockSlider:(id)slider largeStep:(BOOL)step
{
  stepCopy = step;
  sliderCopy = slider;
  v6 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_delegate"];
  v7 = [(PLSlalomRegionEditorAccessibility *)self _accessibilityValueForKey:@"userInfo"];
  v8 = [v7 objectForKey:@"StartHandle"];

  if (v8 == sliderCopy)
  {
    if (objc_opt_respondsToSelector())
    {
      [v6 slalomRegionEditorDidBeginEditing:self withStartHandle:1];
    }

    v10 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startHandleView"];
    [v10 frame];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v31 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_startValue"];
    [v31 doubleValue];
    v33 = v32;

    [(PLSlalomRegionEditorAccessibility *)self _accessibilitySliderDeltaForFrame:v24, v26, v28, v30];
    if (stepCopy)
    {
      v34 = v34 * 5.0;
    }

    [(PLSlalomRegionEditorAccessibility *)self setStartValue:1 notify:v33 - v34];
  }

  else
  {
    v9 = [v7 objectForKey:@"EndHandle"];

    if (v9 != sliderCopy)
    {
      goto LABEL_16;
    }

    if (objc_opt_respondsToSelector())
    {
      [v6 slalomRegionEditorDidBeginEditing:self withStartHandle:0];
    }

    v10 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endHandleView"];
    [v10 frame];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [(PLSlalomRegionEditorAccessibility *)self safeValueForKey:@"_endValue"];
    [v19 doubleValue];
    v21 = v20;

    [(PLSlalomRegionEditorAccessibility *)self _accessibilitySliderDeltaForFrame:v12, v14, v16, v18];
    if (stepCopy)
    {
      v22 = v22 * 5.0;
    }

    [(PLSlalomRegionEditorAccessibility *)self setEndValue:1 notify:v21 - v22];
  }

  if (objc_opt_respondsToSelector())
  {
    [v6 slalomRegionEditorDidEndEditing:self];
  }

LABEL_16:
}

@end