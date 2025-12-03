@interface UIMovieScrubberAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (double)_accessibilitySliderDeltaForFrame:(double)frame;
- (id)accessibilityElements;
- (void)_accessibilityClearChildren;
- (void)_accessibilityDecrementMockSlider:(id)slider largeStep:(BOOL)step;
- (void)_accessibilityIncrementMockSlider:(id)slider largeStep:(BOOL)step;
- (void)_accessibilityNotifyDelegateEditingEndValueDidChange:(void *)change;
- (void)_accessibilityNotifyDelegateEditingStartValueDidChange:(void *)change;
- (void)_accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:(void *)handle;
- (void)_accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:(void *)handle;
- (void)_accessibilityNotifyDelegateWillBeginEditing;
- (void)_initSubviews;
- (void)_setValue:(double)value andSendAction:(BOOL)action;
- (void)_sliderAnimationDidStop:(BOOL)stop;
- (void)_trimAnimationDidStop:(BOOL)stop glassView:(id)view;
- (void)_updateThumbLocation;
- (void)movieScrubberTrackView:(id)view clampedSizeWidthDelta:(double)delta actualSizeWidthDelta:(double)widthDelta originXDelta:(double)xDelta minimumVisibleValue:(double)value maximumVisibleValue:(double)visibleValue;
- (void)setEditing:(BOOL)editing animated:(BOOL)animated;
- (void)setThumbIsVisible:(BOOL)visible;
- (void)setTrimEndValue:(double)value;
- (void)setTrimStartValue:(double)value;
@end

@implementation UIMovieScrubberAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v4 = location;
  obj = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  [location[0] validateClass:@"UIMovieScrubber" hasInstanceMethod:@"_trimAnimationDidStop:glassView:" withFullSignature:{"v", "B", "@", 0}];
  objc_storeStrong(v4, obj);
}

- (void)setEditing:(BOOL)editing animated:(BOOL)animated
{
  selfCopy = self;
  v11 = a2;
  editingCopy = editing;
  animatedCopy = animated;
  v5 = [(UIMovieScrubberAccessibility *)self safeValueForKey:@"isEditing"];
  bOOLValue = [v5 BOOLValue];
  *&v4 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  v8 = bOOLValue;
  v7.receiver = selfCopy;
  v7.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v7 setEditing:editingCopy animated:animatedCopy, v4];
  if ((v8 & 1) != editingCopy)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)setThumbIsVisible:(BOOL)visible
{
  selfCopy = self;
  v8 = a2;
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v6 setThumbIsVisible:visible];
  v5 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo"];
  location = [v5 objectForKey:@"Scrubber"];
  if (location)
  {
    isAccessibilityElement = [location isAccessibilityElement];
    if (isAccessibilityElement != visibleCopy)
    {
      [location setIsAccessibilityElement:visibleCopy];
      UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
    }
  }

  else
  {
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityRemoveValueForKey:@"userInfo"];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(&v5, 0);
}

- (void)setTrimStartValue:(double)value
{
  selfCopy = self;
  v25 = a2;
  valueCopy = value;
  v14 = [(UIMovieScrubberAccessibility *)self safeValueForKey:?];
  [v14 doubleValue];
  v15 = v3;
  MEMORY[0x29EDC9740](v14);
  v23 = v15;
  v22.receiver = selfCopy;
  v22.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v22 setTrimStartValue:valueCopy];
  v16 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
  [v16 doubleValue];
  v17 = v4;
  MEMORY[0x29EDC9740](v16);
  v21 = v17;
  if (v17 != v23)
  {
    v20 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v17];
    v19 = [v20 objectForKey:@"LeftHandle"];
    v12 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"isEditing"];
    bOOLValue = [v12 BOOLValue];
    *&v5 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    if ((bOOLValue & 1) == 0)
    {
      v11 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_minimumValue", v5];
      [v11 doubleValue];
      v21 = v6;
      MEMORY[0x29EDC9740](v11);
    }

    v10 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_maximumValue", *&v21];
    [v10 doubleValue];
    v18 = _createFormatDurationString(v9, v7);
    *&v8 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    [v19 setAccessibilityValue:{v18, v8}];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], v19);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
    objc_storeStrong(&v20, 0);
  }
}

- (void)setTrimEndValue:(double)value
{
  selfCopy = self;
  v22 = a2;
  valueCopy = value;
  v10 = [(UIMovieScrubberAccessibility *)self safeValueForKey:?];
  [v10 doubleValue];
  v11 = v3;
  MEMORY[0x29EDC9740](v10);
  v20 = v11;
  v19.receiver = selfCopy;
  v19.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v19 setTrimEndValue:valueCopy];
  v12 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
  [v12 doubleValue];
  v13 = v4;
  MEMORY[0x29EDC9740](v12);
  v18 = v13;
  if (v13 != v20)
  {
    v17 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v13];
    v16 = [v17 objectForKey:@"RightHandle"];
    v6 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_maximumValue"];
    [v6 doubleValue];
    v7 = v5;
    MEMORY[0x29EDC9740](v6);
    v15 = v7;
    v8 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"isEditing"];
    bOOLValue = [v8 BOOLValue];
    MEMORY[0x29EDC9740](v8);
    if ((bOOLValue & 1) == 0)
    {
      v18 = v15;
    }

    v14 = _createFormatDurationString(v18, v15);
    [v16 setAccessibilityValue:v14];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], v16);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v16, 0);
    objc_storeStrong(&v17, 0);
  }
}

- (void)_setValue:(double)value andSendAction:(BOOL)action
{
  selfCopy = self;
  v22 = a2;
  valueCopy = value;
  actionCopy = action;
  v10 = [(UIMovieScrubberAccessibility *)self safeValueForKey:?];
  [v10 doubleValue];
  v11 = v4;
  MEMORY[0x29EDC9740](v10);
  v19 = v11;
  v18.receiver = selfCopy;
  v18.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v18 _setValue:actionCopy andSendAction:valueCopy];
  v12 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value"];
  [v12 doubleValue];
  v13 = v5;
  MEMORY[0x29EDC9740](v12);
  v17 = v13;
  if (v13 != v19)
  {
    v16 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v13];
    v15 = [v16 objectForKey:@"Scrubber"];
    v8 = v17;
    v9 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_maximumValue"];
    [v9 doubleValue];
    v14 = _createFormatDurationString(v8, v6);
    *&v7 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    [v15 setAccessibilityValue:{v14, v7}];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }
}

- (void)_initSubviews
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UIMovieScrubberAccessibility *)self safeValueForKey:?];
  v5.receiver = selfCopy;
  v5.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v5 _initSubviews];
  v4 = location[0];
  v3 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (v4 != v3)
  {
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityRemoveValueForKey:@"userInfo", v2];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(location, 0);
}

- (void)_trimAnimationDidStop:(BOOL)stop glassView:(id)view
{
  selfCopy = self;
  v11 = a2;
  stopCopy = stop;
  location = 0;
  objc_storeStrong(&location, view);
  v8 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:?];
  v7.receiver = selfCopy;
  v7.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v7 _trimAnimationDidStop:stopCopy glassView:location];
  v6 = v8;
  v5 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
  *&v4 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6 != v5)
  {
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityRemoveValueForKey:@"userInfo", v4];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  objc_storeStrong(&v8, 0);
  objc_storeStrong(&location, 0);
}

- (void)_updateThumbLocation
{
  selfCopy = self;
  v14[1] = a2;
  v14[0] = [(UIMovieScrubberAccessibility *)self _accessibilityValueForKey:@"userInfo"];
  location = [v14[0] objectForKey:@"Scrubber"];
  [location accessibilityFrame];
  rect1.origin.x = v2;
  rect1.origin.y = v3;
  rect1.size.width = v4;
  rect1.size.height = v5;
  v11.receiver = selfCopy;
  v11.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v11 _updateThumbLocation];
  [location accessibilityFrame];
  rect2.origin.x = v6;
  rect2.origin.y = v7;
  rect2.size.width = v8;
  rect2.size.height = v9;
  if (!CGRectEqualToRect(rect1, rect2))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], location);
  }

  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
}

- (void)_sliderAnimationDidStop:(BOOL)stop
{
  selfCopy = self;
  v7 = a2;
  stopCopy = stop;
  v5.receiver = self;
  v5.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v5 _sliderAnimationDidStop:stop];
  v3 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo"];
  argument = [v3 objectForKey:@"Scrubber"];
  MEMORY[0x29EDC9740](v3);
  if (argument)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], argument);
  }

  objc_storeStrong(&argument, 0);
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, touch);
  v45 = 0;
  objc_storeStrong(&v45, event);
  v25 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:?];
  [v25 doubleValue];
  v26 = v4;
  MEMORY[0x29EDC9740](v25);
  v44 = v26;
  v27 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
  [v27 doubleValue];
  v28 = v5;
  MEMORY[0x29EDC9740](v27);
  v43 = v28;
  v29 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value"];
  [v29 doubleValue];
  v30 = v6;
  MEMORY[0x29EDC9740](v29);
  v42 = v30;
  v40.receiver = selfCopy;
  v40.super_class = UIMovieScrubberAccessibility;
  v41 = [(UIMovieScrubberAccessibility *)&v40 continueTrackingWithTouch:location[0] withEvent:v45];
  v33 = v44;
  v31 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
  [v31 doubleValue];
  v32 = v7;
  MEMORY[0x29EDC9740](v31);
  if (v33 != v32)
  {
    v39 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v33];
    v38 = [v39 objectForKey:@"LeftHandle"];
    notification = *MEMORY[0x29EDC7EA8];
    accessibilityValue = [v38 accessibilityValue];
    UIAccessibilityPostNotification(notification, accessibilityValue);
    MEMORY[0x29EDC9740](accessibilityValue);
    objc_storeStrong(&v38, 0);
    objc_storeStrong(&v39, 0);
  }

  v21 = v43;
  v19 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
  [v19 doubleValue];
  v20 = v8;
  MEMORY[0x29EDC9740](v19);
  if (v21 != v20)
  {
    v37 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v21];
    v36 = [v37 objectForKey:@"RightHandle"];
    v17 = *MEMORY[0x29EDC7EA8];
    accessibilityValue2 = [v36 accessibilityValue];
    UIAccessibilityPostNotification(v17, accessibilityValue2);
    MEMORY[0x29EDC9740](accessibilityValue2);
    objc_storeStrong(&v36, 0);
    objc_storeStrong(&v37, 0);
  }

  v16 = v42;
  v14 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value"];
  [v14 doubleValue];
  v15 = v9;
  MEMORY[0x29EDC9740](v14);
  if (v16 != v15)
  {
    v35 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo", v16];
    v34 = [v35 objectForKey:@"Scrubber"];
    v12 = *MEMORY[0x29EDC7EA8];
    accessibilityValue3 = [v34 accessibilityValue];
    UIAccessibilityPostNotification(v12, accessibilityValue3);
    MEMORY[0x29EDC9740](accessibilityValue3);
    objc_storeStrong(&v34, 0);
    objc_storeStrong(&v35, 0);
  }

  v11 = v41;
  objc_storeStrong(&v45, 0);
  objc_storeStrong(location, 0);
  return v11 & 1;
}

- (void)movieScrubberTrackView:(id)view clampedSizeWidthDelta:(double)delta actualSizeWidthDelta:(double)widthDelta originXDelta:(double)xDelta minimumVisibleValue:(double)value maximumVisibleValue:(double)visibleValue
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, view);
  v47[5] = *&delta;
  v47[4] = *&widthDelta;
  v47[3] = *&xDelta;
  v47[2] = *&value;
  v47[1] = *&visibleValue;
  v47[0] = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo"];
  v46 = [v47[0] objectForKey:@"Scrubber"];
  [v46 accessibilityFrame];
  v45.origin.x = v8;
  v45.origin.y = v9;
  v45.size.width = v10;
  v45.size.height = v11;
  v44 = [v47[0] objectForKey:@"RightHandle"];
  [v44 accessibilityFrame];
  v43.origin.x = v12;
  v43.origin.y = v13;
  v43.size.width = v14;
  v43.size.height = v15;
  v42 = [v47[0] objectForKey:@"LeftHandle"];
  [v42 accessibilityFrame];
  rect1.origin.x = v16;
  rect1.origin.y = v17;
  rect1.size.width = v18;
  rect1.size.height = v19;
  v40.receiver = selfCopy;
  v40.super_class = UIMovieScrubberAccessibility;
  [(UIMovieScrubberAccessibility *)&v40 movieScrubberTrackView:location[0] clampedSizeWidthDelta:delta actualSizeWidthDelta:widthDelta originXDelta:xDelta minimumVisibleValue:value maximumVisibleValue:visibleValue];
  [v46 accessibilityFrame];
  rect2.origin.x = v20;
  rect2.origin.y = v21;
  rect2.size.width = v22;
  rect2.size.height = v23;
  if (!CGRectEqualToRect(v45, rect2) || ([v44 accessibilityFrame], v38.origin.x = v24, v38.origin.y = v25, v38.size.width = v26, v38.size.height = v27, !CGRectEqualToRect(v43, v38)) || (objc_msgSend(v42, "accessibilityFrame"), v37.origin.x = v28, v37.origin.y = v29, v37.size.width = v30, v37.size.height = v31, !CGRectEqualToRect(rect1, v37)))
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7428], v46);
  }

  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(&v46, 0);
  objc_storeStrong(v47, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityClearChildren
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy _accessibilityValueForKey:@"userInfo"];
    if (location)
    {
      [location removeObjectForKey:@"Children"];
    }

    objc_storeStrong(&location, 0);
  }
}

- (id)accessibilityElements
{
  selfCopy = self;
  v55[1] = a2;
  v55[0] = 0;
  dictionary = [(UIMovieScrubberAccessibility *)self _accessibilityValueForKey:@"userInfo"];
  if (dictionary)
  {
    v4 = [dictionary objectForKey:@"Children"];
    v5 = v55[0];
    v55[0] = v4;
    *&v6 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v55[0])
    {
      v57 = MEMORY[0x29EDC9748](v55[0]);
      v53 = 1;
      goto LABEL_27;
    }

    v55[0] = [MEMORY[0x29EDB8DE8] array];
    [dictionary setObject:v55[0] forKey:{@"Children", MEMORY[0x29EDC9740](0).n128_f64[0]}];
  }

  else
  {
    dictionary = [MEMORY[0x29EDB8E00] dictionary];
    array = [MEMORY[0x29EDB8DE8] array];
    v3 = v55[0];
    v55[0] = array;
    [dictionary setObject:array forKey:{@"Children", MEMORY[0x29EDC9740](v3).n128_f64[0]}];
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySetRetainedValue:dictionary forKey:@"userInfo"];
  }

  v52 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
  v28 = [v52 safeValueForKey:@"isEnabled"];
  bOOLValue = [v28 BOOLValue];
  v29 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"isEditing", MEMORY[0x29EDC9740](v28).n128_f64[0]];
  bOOLValue2 = [v29 BOOLValue];
  v30 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_maximumValue", MEMORY[0x29EDC9740](v29).n128_f64[0]];
  [v30 doubleValue];
  v31 = v7;
  MEMORY[0x29EDC9740](v30);
  v49 = v31;
  v48 = [v52 safeValueForKey:@"_leftImageView"];
  if (v48 && (bOOLValue & 1) != 0)
  {
    v47 = [objc_allocWithZone(UIAccessibilityElementMockSlider) initWithAccessibilityContainer:selfCopy];
    [(UIAccessibilityElementMockSlider *)v47 setView:v48];
    [(UIAccessibilityElementMockSlider *)v47 setDelegate:selfCopy];
    [v47 setIsAccessibilityElement:1];
    v27 = accessibilityLocalizedString(@"trim.beginning.slider");
    [v47 setAccessibilityLabel:?];
    *&v8 = MEMORY[0x29EDC9740](v27).n128_u64[0];
    v44 = 0;
    v42 = 0;
    if (bOOLValue2)
    {
      v45 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue", v8];
      v44 = 1;
      [v45 doubleValue];
    }

    else
    {
      v43 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_minimumValue", v8];
      v42 = 1;
      [v43 doubleValue];
    }

    v26 = v9;
    if (v42)
    {
      MEMORY[0x29EDC9740](v43);
    }

    if (v44)
    {
      MEMORY[0x29EDC9740](v45);
    }

    v46 = v26;
    v41 = _createFormatDurationString(v26, v49);
    [v47 setAccessibilityValue:v41];
    [v55[0] addObject:v47];
    [dictionary setObject:v47 forKey:@"LeftHandle"];
    objc_storeStrong(&v41, 0);
    objc_storeStrong(&v47, 0);
  }

  v40 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_thumbView"];
  if (v40)
  {
    v10 = objc_allocWithZone(UIAccessibilityElementMockSlider);
    v39 = [v10 initWithAccessibilityContainer:selfCopy];
    [(UIAccessibilityElementMockSlider *)v39 setView:v40];
    [(UIAccessibilityElementMockSlider *)v39 setDelegate:selfCopy];
    v20 = v39;
    v21 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"thumbIsVisible"];
    [v20 setIsAccessibilityElement:{objc_msgSend(v21, "BOOLValue")}];
    MEMORY[0x29EDC9740](v21);
    v22 = v39;
    v23 = accessibilityLocalizedString(@"current.position.slider");
    [v22 setAccessibilityLabel:?];
    *&v11 = MEMORY[0x29EDC9740](v23).n128_u64[0];
    v24 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value", v11];
    [v24 doubleValue];
    v25 = v12;
    MEMORY[0x29EDC9740](v24);
    v38[1] = v25;
    v38[0] = _createFormatDurationString(*&v25, v49);
    [v39 setAccessibilityValue:v38[0]];
    [v55[0] addObject:v39];
    [dictionary setObject:v39 forKey:@"Scrubber"];
    objc_storeStrong(v38, 0);
    objc_storeStrong(&v39, 0);
  }

  v37 = [v52 safeValueForKey:@"_rightImageView"];
  if (v37 && (bOOLValue & 1) != 0)
  {
    v13 = objc_allocWithZone(UIAccessibilityElementMockSlider);
    v36 = [v13 initWithAccessibilityContainer:selfCopy];
    [(UIAccessibilityElementMockSlider *)v36 setView:v37];
    [(UIAccessibilityElementMockSlider *)v36 setDelegate:selfCopy];
    [v36 setIsAccessibilityElement:1];
    v19 = accessibilityLocalizedString(@"trim.end.slider");
    [v36 setAccessibilityLabel:?];
    *&v14 = MEMORY[0x29EDC9740](v19).n128_u64[0];
    v33 = 0;
    if (bOOLValue2)
    {
      v34 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue", v14];
      v33 = 1;
      [v34 doubleValue];
      v18 = v15;
    }

    else
    {
      v18 = v49;
    }

    if (v33)
    {
      MEMORY[0x29EDC9740](v34);
    }

    v35 = v18;
    v32 = _createFormatDurationString(v18, v49);
    [v36 setAccessibilityValue:v32];
    [v55[0] addObject:v36];
    [dictionary setObject:v36 forKey:@"RightHandle"];
    objc_storeStrong(&v32, 0);
    objc_storeStrong(&v36, 0);
  }

  v57 = MEMORY[0x29EDC9748](v55[0]);
  v53 = 1;
  objc_storeStrong(&v37, 0);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v48, 0);
  objc_storeStrong(&v52, 0);
LABEL_27:
  objc_storeStrong(&dictionary, 0);
  objc_storeStrong(v55, 0);
  v16 = v57;

  return v16;
}

- (double)_accessibilitySliderDeltaForFrame:(double)frame
{
  v17 = a2;
  frameCopy = frame;
  v19 = a4;
  v20 = a5;
  selfCopy = self;
  if (!self)
  {
    return 0.0;
  }

  v9 = [selfCopy safeValueForKey:@"_minimumValue"];
  [v9 doubleValue];
  v10 = v5;
  MEMORY[0x29EDC9740](v9);
  v15 = v10;
  v11 = [selfCopy safeValueForKey:@"_maximumValue"];
  [v11 doubleValue];
  v12 = v6;
  MEMORY[0x29EDC9740](v11);
  v14 = v12;
  v13 = [selfCopy safeValueForKey:@"_trackView"];
  [v13 frame];
  v21 = (v14 - v15) * (v19 * 0.200000003 / v7);
  objc_storeStrong(&v13, 0);
  return v21;
}

- (void)_accessibilityIncrementMockSlider:(id)slider largeStep:(BOOL)step
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, slider);
  stepCopy = step;
  v62 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo"];
  v41 = location[0];
  v40 = [v62 objectForKey:@"LeftHandle"];
  *&v4 = MEMORY[0x29EDC9740](v40).n128_u64[0];
  if (v41 == v40)
  {
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateWillBeginEditing];
    [(UIMovieScrubberAccessibility *)selfCopy setEditing:1 animated:0];
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
    v36 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
    v61 = [v36 safeValueForKey:@"_leftImageView"];
    MEMORY[0x29EDC9740](v36);
    [v61 frame];
    v57 = v5;
    v58 = v6;
    v59 = v7;
    v60 = v8;
    v37 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
    [v37 doubleValue];
    v38 = v9;
    MEMORY[0x29EDC9740](v37);
    v56 = v38;
    v55 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v57, v58, v59, v60];
    if (stepCopy)
    {
      v55 = v55 * *&LargeStepMultiplier;
    }

    v54 = v56 + v55;
    [(UIMovieScrubberAccessibility *)selfCopy setTrimStartValue:v56 + v55];
    v34 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
    [v34 doubleValue];
    v35 = v10;
    MEMORY[0x29EDC9740](v34);
    v53 = v35;
    if (v56 != v35)
    {
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateEditingStartValueDidChange:v53];
    }

    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
    objc_storeStrong(&v61, 0);
  }

  else
  {
    v33 = location[0];
    v32 = [v62 objectForKey:{@"RightHandle", v4}];
    *&v11 = MEMORY[0x29EDC9740](v32).n128_u64[0];
    if (v33 == v32)
    {
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateWillBeginEditing];
      [(UIMovieScrubberAccessibility *)selfCopy setEditing:1 animated:0];
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
      v29 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
      v52 = [v29 safeValueForKey:@"_rightImageView"];
      MEMORY[0x29EDC9740](v29);
      [v52 frame];
      v48 = v12;
      v49 = v13;
      v50 = v14;
      v51 = v15;
      v30 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
      [v30 doubleValue];
      v31 = v16;
      MEMORY[0x29EDC9740](v30);
      v47 = v31;
      v46 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v48, v49, v50, v51];
      if (stepCopy)
      {
        v46 = v46 * *&LargeStepMultiplier;
      }

      v45 = v47 + v46;
      [(UIMovieScrubberAccessibility *)selfCopy setTrimEndValue:v47 + v46];
      v27 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
      [v27 doubleValue];
      v28 = v17;
      MEMORY[0x29EDC9740](v27);
      v44 = v28;
      if (v47 != v28)
      {
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateEditingEndValueDidChange:v44];
      }

      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
      objc_storeStrong(&v52, 0);
    }

    else
    {
      v26 = location[0];
      v25 = [v62 objectForKey:{@"Scrubber", v11}];
      MEMORY[0x29EDC9740](v25);
      if (v26 == v25)
      {
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
        v43 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_thumbView"];
        [v43 frame];
        v42 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v18, v19, v20, v21];
        if (stepCopy)
        {
          v42 = v42 * *&LargeStepMultiplier;
        }

        v23 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value"];
        [v23 doubleValue];
        v24 = v22 + v42;
        MEMORY[0x29EDC9740](v23);
        [(UIMovieScrubberAccessibility *)selfCopy _setValue:1 andSendAction:v24];
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
        objc_storeStrong(&v43, 0);
      }
    }
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
}

- (void)_accessibilityNotifyDelegateWillBeginEditing
{
  selfCopy = self;
  if (self)
  {
    location = [selfCopy safeValueForKey:@"_delegate"];
    if (objc_opt_respondsToSelector())
    {
      [location movieScrubberWillBeginEditing:selfCopy];
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:(void *)handle
{
  handleCopy = handle;
  v3 = a2;
  if (handle)
  {
    location = [handleCopy safeValueForKey:@"_delegate"];
    if (location)
    {
      if (objc_opt_respondsToSelector())
      {
        [location movieScrubberDidBeginScrubbing:handleCopy withHandle:v3];
      }
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityNotifyDelegateEditingStartValueDidChange:(void *)change
{
  changeCopy = change;
  v3 = a2;
  if (change)
  {
    location = [changeCopy safeValueForKey:@"_delegate"];
    if (location)
    {
      if (objc_opt_respondsToSelector())
      {
        [location movieScrubber:changeCopy editingStartValueDidChange:v3];
      }
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:(void *)handle
{
  handleCopy = handle;
  v3 = a2;
  if (handle)
  {
    location = [handleCopy safeValueForKey:@"_delegate"];
    if (location)
    {
      if (objc_opt_respondsToSelector())
      {
        [location movieScrubberDidEndScrubbing:handleCopy withHandle:v3];
      }
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityNotifyDelegateEditingEndValueDidChange:(void *)change
{
  changeCopy = change;
  v3 = a2;
  if (change)
  {
    location = [changeCopy safeValueForKey:@"_delegate"];
    if (location)
    {
      if (objc_opt_respondsToSelector())
      {
        [location movieScrubber:changeCopy editingEndValueDidChange:v3];
      }
    }

    objc_storeStrong(&location, 0);
  }
}

- (void)_accessibilityDecrementMockSlider:(id)slider largeStep:(BOOL)step
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, slider);
  stepCopy = step;
  v62 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilityValueForKey:@"userInfo"];
  v41 = location[0];
  v40 = [v62 objectForKey:@"LeftHandle"];
  *&v4 = MEMORY[0x29EDC9740](v40).n128_u64[0];
  if (v41 == v40)
  {
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateWillBeginEditing];
    [(UIMovieScrubberAccessibility *)selfCopy setEditing:1 animated:0];
    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
    v36 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
    v61 = [v36 safeValueForKey:@"_leftImageView"];
    MEMORY[0x29EDC9740](v36);
    [v61 frame];
    v57 = v5;
    v58 = v6;
    v59 = v7;
    v60 = v8;
    v37 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
    [v37 doubleValue];
    v38 = v9;
    MEMORY[0x29EDC9740](v37);
    v56 = v38;
    v55 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v57, v58, v59, v60];
    if (stepCopy)
    {
      v55 = v55 * *&LargeStepMultiplier;
    }

    v54 = v56 - v55;
    [(UIMovieScrubberAccessibility *)selfCopy setTrimStartValue:v56 - v55];
    v34 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimStartValue"];
    [v34 doubleValue];
    v35 = v10;
    MEMORY[0x29EDC9740](v34);
    v53 = v35;
    if (v56 != v35)
    {
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateEditingStartValueDidChange:v53];
    }

    [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
    objc_storeStrong(&v61, 0);
  }

  else
  {
    v33 = location[0];
    v32 = [v62 objectForKey:{@"RightHandle", v4}];
    *&v11 = MEMORY[0x29EDC9740](v32).n128_u64[0];
    if (v33 == v32)
    {
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateWillBeginEditing];
      [(UIMovieScrubberAccessibility *)selfCopy setEditing:1 animated:0];
      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
      v29 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_editingView"];
      v52 = [v29 safeValueForKey:@"_rightImageView"];
      MEMORY[0x29EDC9740](v29);
      [v52 frame];
      v48 = v12;
      v49 = v13;
      v50 = v14;
      v51 = v15;
      v30 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
      [v30 doubleValue];
      v31 = v16;
      MEMORY[0x29EDC9740](v30);
      v47 = v31;
      v46 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v48, v49, v50, v51];
      if (stepCopy)
      {
        v46 = v46 * *&LargeStepMultiplier;
      }

      v45 = v47 - v46;
      [(UIMovieScrubberAccessibility *)selfCopy setTrimEndValue:v47 - v46];
      v27 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_trimEndValue"];
      [v27 doubleValue];
      v28 = v17;
      MEMORY[0x29EDC9740](v27);
      v44 = v28;
      if (v47 != v28)
      {
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateEditingEndValueDidChange:v44];
      }

      [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
      objc_storeStrong(&v52, 0);
    }

    else
    {
      v26 = location[0];
      v25 = [v62 objectForKey:{@"Scrubber", v11}];
      MEMORY[0x29EDC9740](v25);
      if (v26 == v25)
      {
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidBeginScrubbingWithHandle:?];
        v43 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"_thumbView"];
        [v43 frame];
        v42 = [(UIMovieScrubberAccessibility *)selfCopy _accessibilitySliderDeltaForFrame:v18, v19, v20, v21];
        if (stepCopy)
        {
          v42 = v42 * *&LargeStepMultiplier;
        }

        v23 = [(UIMovieScrubberAccessibility *)selfCopy safeValueForKey:@"value"];
        [v23 doubleValue];
        v24 = v22 - v42;
        MEMORY[0x29EDC9740](v23);
        [(UIMovieScrubberAccessibility *)selfCopy _setValue:1 andSendAction:v24];
        [(UIMovieScrubberAccessibility *)selfCopy _accessibilityNotifyDelegateScrubberDidEndScrubbingWithHandle:?];
        objc_storeStrong(&v43, 0);
      }
    }
  }

  objc_storeStrong(&v62, 0);
  objc_storeStrong(location, 0);
}

@end