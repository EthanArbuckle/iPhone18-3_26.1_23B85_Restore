@interface UISliderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (BOOL)isAccessibilityElement;
- (CGPoint)_accessibilityMaxScrubberPosition;
- (CGPoint)_accessibilityMinScrubberPosition;
- (CGPoint)accessibilityActivationPoint;
- (double)_accessibilityIncreaseAmount:(BOOL)amount;
- (double)_accessibilityMaxValue;
- (double)_accessibilityMinValue;
- (double)_accessibilityNumberValue;
- (id)_accessibilityAbsoluteValue;
- (id)_containerViewForLegacyFocusRing;
- (id)accessibilityPath;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityAnnounceNewValue;
- (void)_accessibilityBumpValue:(BOOL)value;
- (void)_accessibilitySetValue:(id)value;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)endTrackingWithTouch:(id)touch withEvent:(id)event;
- (void)layoutSubviews;
- (void)sendActionsForControlEvents:(unint64_t)events;
@end

@implementation UISliderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
  v3 = @"UISlider";
  [location[0] validateClass:? isKindOfClass:?];
  v6 = @"UIControl";
  [location[0] validateClass:@"UISlider" isKindOfClass:?];
  v4 = "@";
  [location[0] validateClass:@"UISlider" hasInstanceMethod:@"_thumbView" withFullSignature:0];
  [location[0] validateClass:v3 hasInstanceMethod:@"_thumbViewNeue" withFullSignature:{v4, 0}];
  v5 = "Q";
  v7 = "v";
  [location[0] validateClass:v6 hasInstanceMethod:@"_sendActionsForEvents:withEvent:" withFullSignature:{"Q", v4, 0}];
  [location[0] validateClass:v6 hasInstanceMethod:@"sendActionsForControlEvents:" withFullSignature:{v7, v5, 0}];
  objc_storeStrong(v9, v8);
}

- (CGPoint)accessibilityActivationPoint
{
  v51 = *MEMORY[0x29EDCA608];
  selfCopy = self;
  v46 = a2;
  v45 = 0uLL;
  v45 = *MEMORY[0x29EDB90B8];
  v44 = [(UISliderAccessibility *)self safeValueForKey:@"_thumbView"];
  if (v44)
  {
    [v44 accessibilityActivationPoint];
    *&v43 = v2;
    *(&v43 + 1) = v3;
    v45 = v43;
LABEL_25:
    *v48 = v45;
    v35 = 1;
    goto LABEL_26;
  }

  v42 = [(UISliderAccessibility *)selfCopy safeValueForKey:@"_thumbViewNeue"];
  if (v42)
  {
    [v42 accessibilityActivationPoint];
    *&v41 = v4;
    *(&v41 + 1) = v5;
    v45 = v41;
LABEL_23:
    v35 = 0;
    goto LABEL_24;
  }

  location = [MEMORY[0x29EDB8DE8] array];
  memset(__b, 0, sizeof(__b));
  obj = [(UISliderAccessibility *)selfCopy safeArrayForKey:@"subviews"];
  v32 = [obj countByEnumeratingWithState:__b objects:v50 count:16];
  if (v32)
  {
    v28 = *__b[2];
    v29 = 0;
    v30 = v32;
    while (1)
    {
      v27 = v29;
      if (*__b[2] != v28)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(__b[1] + 8 * v29);
      v24 = location;
      v23 = v39;
      defaultVoiceOverOptions = [MEMORY[0x29EDC7328] defaultVoiceOverOptions];
      v25 = [v23 _accessibilityLeafDescendantsWithOptions:?];
      [v24 addObjectsFromArray:?];
      MEMORY[0x29EDC9740](v25);
      *&v6 = MEMORY[0x29EDC9740](defaultVoiceOverOptions).n128_u64[0];
      ++v29;
      if (v27 + 1 >= v30)
      {
        v29 = 0;
        v30 = [obj countByEnumeratingWithState:__b objects:v50 count:{16, v6}];
        if (!v30)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x29EDC9740](obj);
  memset(v36, 0, sizeof(v36));
  v21 = MEMORY[0x29EDC9748](location);
  v22 = [v21 countByEnumeratingWithState:v36 objects:v49 count:16];
  if (v22)
  {
    v18 = *v36[2];
    v19 = 0;
    v20 = v22;
    while (1)
    {
      v17 = v19;
      if (*v36[2] != v18)
      {
        objc_enumerationMutation(v21);
      }

      v37 = *(v36[1] + 8 * v19);
      accessibilityIdentifier = [v37 accessibilityIdentifier];
      v16 = [accessibilityIdentifier isEqualToString:@"AXSliderKnob"];
      *&v7 = MEMORY[0x29EDC9740](accessibilityIdentifier).n128_u64[0];
      if (v16)
      {
        break;
      }

      ++v19;
      if (v17 + 1 >= v20)
      {
        v19 = 0;
        v20 = [v21 countByEnumeratingWithState:v36 objects:v49 count:{16, v7}];
        if (!v20)
        {
          goto LABEL_19;
        }
      }
    }

    [v37 accessibilityActivationPoint];
    v48[0] = v8;
    v48[1] = v9;
    v35 = 1;
  }

  else
  {
LABEL_19:
    v35 = 0;
  }

  *&v10 = MEMORY[0x29EDC9740](v21).n128_u64[0];
  if (!v35)
  {
    v33.receiver = selfCopy;
    v33.super_class = UISliderAccessibility;
    [(UISliderAccessibility *)&v33 accessibilityActivationPoint];
    *&v34 = v11;
    *(&v34 + 1) = v12;
    v45 = v34;
    v35 = 0;
  }

  objc_storeStrong(&location, 0);
  if (!v35)
  {
    goto LABEL_23;
  }

LABEL_24:
  objc_storeStrong(&v42, 0);
  if (!v35)
  {
    goto LABEL_25;
  }

LABEL_26:
  objc_storeStrong(&v44, 0);
  v13 = v48[1];
  v14 = v48[0];
  result.y = v13;
  result.x = v14;
  return result;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v10 = a2;
  isAccessibilityUserDefinedElement = [(UISliderAccessibility *)self isAccessibilityUserDefinedElement];
  *&v2 = MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement).n128_u64[0];
  if (isAccessibilityUserDefinedElement)
  {
    isAccessibilityUserDefinedElement2 = [(UISliderAccessibility *)selfCopy isAccessibilityUserDefinedElement];
    v12 = [isAccessibilityUserDefinedElement2 BOOLValue] & 1;
    MEMORY[0x29EDC9740](isAccessibilityUserDefinedElement2);
  }

  else
  {
    v9 = 0;
    objc_opt_class();
    v8 = __UIAccessibilityCastAsClass();
    v7 = MEMORY[0x29EDC9748](v8);
    objc_storeStrong(&v8, 0);
    _accessibilityViewIsVisible = [v7 _accessibilityViewIsVisible];
    MEMORY[0x29EDC9740](v7);
    return (_accessibilityViewIsVisible & 1) != 0;
  }

  return v12;
}

- (id)_accessibilityAbsoluteValue
{
  v7 = [(UISliderAccessibility *)self safeValueForKey:@"minimumValue"];
  [v7 floatValue];
  v8 = v2;
  MEMORY[0x29EDC9740](v7);
  v9 = [(UISliderAccessibility *)self safeValueForKey:@"maximumValue"];
  [v9 floatValue];
  v10 = v3;
  MEMORY[0x29EDC9740](v9);
  v11 = [(UISliderAccessibility *)self safeValueForKey:@"value"];
  [v11 floatValue];
  v12 = v4;
  v5 = MEMORY[0x29EDC9740](v11);
  v5.n128_f32[0] = (v12 - v8) / (v10 - v8);
  return [MEMORY[0x29EDBA070] numberWithFloat:v5.n128_f64[0]];
}

- (id)accessibilityValue
{
  selfCopy = self;
  v19[1] = a2;
  v19[0] = [(UISliderAccessibility *)self accessibilityUserDefinedValue];
  if (v19[0])
  {
    v21 = MEMORY[0x29EDC9748](v19[0]);
    v18 = 1;
  }

  else
  {
    v7 = [(UISliderAccessibility *)selfCopy safeValueForKey:@"minimumValue"];
    [v7 floatValue];
    v8 = v2;
    MEMORY[0x29EDC9740](v7);
    v17 = v8;
    v9 = [(UISliderAccessibility *)selfCopy safeValueForKey:@"maximumValue"];
    [v9 floatValue];
    v10 = v3;
    MEMORY[0x29EDC9740](v9);
    v16 = v10;
    v11 = [(UISliderAccessibility *)selfCopy safeValueForKey:@"value"];
    [v11 floatValue];
    v12 = v4;
    MEMORY[0x29EDC9740](v11);
    v15 = v12;
    v14 = (v12 - v17) / (v10 - v17);
    v13 = AXFormatFloatWithPercentage();
    v21 = MEMORY[0x29EDC9748](v13);
    v18 = 1;
    objc_storeStrong(&v13, 0);
  }

  objc_storeStrong(v19, 0);
  v5 = v21;

  return v5;
}

- (CGPoint)_accessibilityMinScrubberPosition
{
  [(UISliderAccessibility *)self bounds];
  [(UISliderAccessibility *)self trackRectForBounds:v2, v3, v4, v5];
  CGRectGetMidY(v10);
  CGRectMake_2();
  UIAccessibilityFrameForBounds();
  result.y = v7;
  result.x = v6;
  return result;
}

- (CGPoint)_accessibilityMaxScrubberPosition
{
  [(UISliderAccessibility *)self bounds];
  [(UISliderAccessibility *)self trackRectForBounds:v2, v3, v4, v5];
  rect = v11;
  CGRectGetMaxX(v11);
  CGRectGetMidY(rect);
  CGRectMake_2();
  UIAccessibilityFrameForBounds();
  result.y = v7;
  result.x = v6;
  return result;
}

- (void)_accessibilitySetValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  [(UISliderAccessibility *)selfCopy setValue:location[0] forKey:@"value"];
  objc_storeStrong(location, 0);
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
  v12 = a2;
  accessibilityUserDefinedTraits = [(UISliderAccessibility *)self accessibilityUserDefinedTraits];
  *&v2 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits).n128_u64[0];
  if (accessibilityUserDefinedTraits)
  {
    accessibilityUserDefinedTraits2 = [(UISliderAccessibility *)selfCopy accessibilityUserDefinedTraits];
    unsignedLongLongValue = [accessibilityUserDefinedTraits2 unsignedLongLongValue];
    MEMORY[0x29EDC9740](accessibilityUserDefinedTraits2);
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = UISliderAccessibility;
    v11 = [(UISliderAccessibility *)&v10 accessibilityTraits]| *MEMORY[0x29EDC7F60];
    accessibilityUserDefinedTraits3 = [(UISliderAccessibility *)selfCopy accessibilityUserDefinedTraits];
    *&v3 = MEMORY[0x29EDC9740](accessibilityUserDefinedTraits3).n128_u64[0];
    if (accessibilityUserDefinedTraits3)
    {
      accessibilityUserDefinedTraits4 = [(UISliderAccessibility *)selfCopy accessibilityUserDefinedTraits];
      unsignedLongLongValue2 = [accessibilityUserDefinedTraits4 unsignedLongLongValue];
      v11 |= unsignedLongLongValue2;
      MEMORY[0x29EDC9740](accessibilityUserDefinedTraits4);
    }

    return v11;
  }

  return unsignedLongLongValue;
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, touch);
  v9 = 0;
  objc_storeStrong(&v9, event);
  v7.receiver = selfCopy;
  v7.super_class = UISliderAccessibility;
  v8 = [(UISliderAccessibility *)&v7 continueTrackingWithTouch:location[0] withEvent:v9];
  [(UISliderAccessibility *)selfCopy _accessibilityAnnounceNewValue];
  v6 = v8;
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (void)sendActionsForControlEvents:(unint64_t)events
{
  selfCopy = self;
  v5 = a2;
  eventsCopy = events;
  v3.receiver = self;
  v3.super_class = UISliderAccessibility;
  [(UISliderAccessibility *)&v3 sendActionsForControlEvents:events];
  if (eventsCopy == 4)
  {
    [(UISliderAccessibility *)selfCopy _accessibilityAnnounceNewValue];
  }
}

- (void)endTrackingWithTouch:(id)touch withEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, touch);
  v8 = 0;
  objc_storeStrong(&v8, event);
  v7.receiver = selfCopy;
  v7.super_class = UISliderAccessibility;
  [(UISliderAccessibility *)&v7 endTrackingWithTouch:location[0] withEvent:v8];
  notification = *MEMORY[0x29EDC7EA8];
  _accessibilityAXAttributedValue = [(UISliderAccessibility *)selfCopy _accessibilityAXAttributedValue];
  UIAccessibilityPostNotification(notification, _accessibilityAXAttributedValue);
  MEMORY[0x29EDC9740](_accessibilityAXAttributedValue);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (double)_accessibilityIncreaseAmount:(BOOL)amount
{
  [(UISliderAccessibility *)self safeCGFloatForKey:@"minimumValue"];
  v10 = v3;
  [(UISliderAccessibility *)self safeCGFloatForKey:@"maximumValue"];
  v9 = v4;
  [(UISliderAccessibility *)self safeCGFloatForKey:@"value"];
  v7 = (v9 - v10) / 10.0;
  if (amount)
  {
    v8 = v5 + v7;
  }

  else
  {
    v8 = v5 - v7;
  }

  if (v8 < v10 || AXCGFAbs_1(v8 - v10) < 0.001)
  {
    return v10;
  }

  if (v8 > v9 || AXCGFAbs_1(v8 - v9) < 0.001)
  {
    return v9;
  }

  return v8;
}

- (void)_accessibilityAnnounceNewValue
{
  argument[2] = self;
  argument[1] = a2;
  argument[0] = [(UISliderAccessibility *)self _accessibilityAXAttributedValue];
  if (CFAbsoluteTimeGetCurrent() - *&_accessibilityAnnounceNewValue_LastOutput > 0.3 && ([_accessibilityAnnounceNewValue_LastValue isEqualToString:argument[0]] & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], argument[0]);
    objc_storeStrong(&_accessibilityAnnounceNewValue_LastValue, argument[0]);
    _accessibilityAnnounceNewValue_LastOutput = CFAbsoluteTimeGetCurrent();
  }

  objc_storeStrong(argument, 0);
}

- (void)_accessibilityBumpValue:(BOOL)value
{
  selfCopy = self;
  v11 = a2;
  valueCopy = value;
  [(UISliderAccessibility *)self _accessibilityIncreaseAmount:value];
  v9[1] = v3;
  *&v3 = *&v3;
  [(UISliderAccessibility *)selfCopy setValue:0 animated:*&v3];
  v4 = MEMORY[0x29EDCA5F8];
  v5 = -1073741824;
  v6 = 0;
  v7 = __49__UISliderAccessibility__accessibilityBumpValue___block_invoke;
  v8 = &unk_29F30C7C8;
  v9[0] = MEMORY[0x29EDC9748](selfCopy);
  AXPerformSafeBlock();
  objc_storeStrong(v9, 0);
}

- (double)_accessibilityNumberValue
{
  v4 = [(UISliderAccessibility *)self safeValueForKey:@"value"];
  [v4 floatValue];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (double)_accessibilityMinValue
{
  v4 = [(UISliderAccessibility *)self safeValueForKey:@"minimumValue"];
  [v4 floatValue];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (double)_accessibilityMaxValue
{
  v4 = [(UISliderAccessibility *)self safeValueForKey:@"maximumValue"];
  [v4 floatValue];
  v5 = v2;
  MEMORY[0x29EDC9740](v4);
  return v5;
}

- (void)accessibilityIncrement
{
  v3 = [(UISliderAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v3 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (bOOLValue)
  {
    [(UISliderAccessibility *)self _accessibilityBumpValue:1, v2];
  }
}

- (void)accessibilityDecrement
{
  v3 = [(UISliderAccessibility *)self safeValueForKey:@"isUserInteractionEnabled"];
  bOOLValue = [v3 BOOLValue];
  *&v2 = MEMORY[0x29EDC9740](v3).n128_u64[0];
  if (bOOLValue)
  {
    [(UISliderAccessibility *)self _accessibilityBumpValue:0, v2];
  }
}

- (id)accessibilityPath
{
  selfCopy = self;
  v21 = a2;
  v20 = AXRequestingClient();
  if (v20 == 3 || v20 == 4)
  {
    v23 = 0;
  }

  else
  {
    if ((_UIAccessibilityFullKeyboardAccessEnabled() & 1) == 0)
    {
      goto LABEL_16;
    }

    v13 = [(UIView *)selfCopy safeUIViewForKey:@"_thumbView"];
    v17 = 0;
    if (v13)
    {
      v2 = MEMORY[0x29EDC9748](v13);
    }

    else
    {
      v18 = [(UIView *)selfCopy safeUIViewForKey:@"_thumbViewNeue"];
      v17 = 1;
      v2 = MEMORY[0x29EDC9748](v18);
    }

    v19 = v2;
    if (v17)
    {
      MEMORY[0x29EDC9740](v18);
    }

    if ([v19 _accessibilityViewIsVisible])
    {
      accessibilityPath = [v19 accessibilityPath];
      if (!accessibilityPath)
      {
        [v19 bounds];
        [v19 convertRect:selfCopy toView:{v3, v4, v5, v6}];
        CGRectMake_2();
        AX_CGRectGetCenter();
        UIRectCenteredAboutPoint();
        v15 = v7;
        v12 = MEMORY[0x29EDC7948];
        AX_CGRectGetCenter();
        accessibilityPath = [v12 bezierPathWithArcCenter:1 radius:v8 startAngle:v9 endAngle:v15 / 2.0 + 3.0 clockwise:{0.0, 6.28318531}];
        MEMORY[0x29EDC9740](0);
      }

      v23 = UIAccessibilityConvertPathToScreenCoordinates(accessibilityPath, selfCopy);
      v14 = 1;
      objc_storeStrong(&accessibilityPath, 0);
    }

    else
    {
      v14 = 0;
    }

    objc_storeStrong(&v19, 0);
    if (!v14)
    {
LABEL_16:
      v23 = 0;
    }
  }

  v10 = v23;

  return v10;
}

- (void)layoutSubviews
{
  selfCopy = self;
  v7 = a2;
  v6.receiver = self;
  v6.super_class = UISliderAccessibility;
  [(UISliderAccessibility *)&v6 layoutSubviews];
  if (([(UISliderAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    v2 = MEMORY[0x29EDC7A98];
    v5 = 0;
    objc_opt_class();
    v4 = __UIAccessibilityCastAsClass();
    v3 = MEMORY[0x29EDC9748](v4);
    objc_storeStrong(&v4, 0);
    [v2 updateRingForFocusItem:?];
    MEMORY[0x29EDC9740](v3);
  }
}

- (id)_containerViewForLegacyFocusRing
{
  selfCopy = self;
  v14[1] = a2;
  v6 = [(UISliderAccessibility *)self safeUIViewForKey:@"_thumbView"];
  v12 = 0;
  if (v6)
  {
    v2 = MEMORY[0x29EDC9748](v6);
  }

  else
  {
    v13 = [(UISliderAccessibility *)selfCopy safeUIViewForKey:@"_thumbViewNeue"];
    v12 = 1;
    v2 = MEMORY[0x29EDC9748](v13);
  }

  v14[0] = v2;
  if (v12)
  {
    MEMORY[0x29EDC9740](v13);
  }

  v7 = 0;
  if ([v14[0] _accessibilityViewIsVisible])
  {
    v3 = MEMORY[0x29EDC9748](v14[0]);
  }

  else
  {
    v11 = 0;
    objc_opt_class();
    v10 = __UIAccessibilityCastAsClass();
    v9 = MEMORY[0x29EDC9748](v10);
    objc_storeStrong(&v10, 0);
    v8 = v9;
    v7 = 1;
    v3 = MEMORY[0x29EDC9748](v9);
  }

  v16 = v3;
  if (v7)
  {
    MEMORY[0x29EDC9740](v8);
  }

  objc_storeStrong(v14, 0);
  v4 = v16;

  return v4;
}

@end