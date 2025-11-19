@interface MPDetailSliderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4;
- (CGRect)accessibilityFrame;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCommitPositionChange;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axPostUpdate;
- (void)accessibilityDecrement;
- (void)accessibilityIncrement;
- (void)layoutSubviews;
@end

@implementation MPDetailSliderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"MPDetailSlider" hasInstanceMethod:@"timeLabelStyle" withFullSignature:{"q", 0}];
  [v3 validateClass:@"MPDetailSlider" hasInstanceVariable:@"_downloadingTrackOverlay" withType:"UIView"];
  [v3 validateClass:@"MPDetailSlider" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"MPDetailSlider" hasInstanceMethod:@"duration" withFullSignature:{"d", 0}];
  [v3 validateClass:@"UISlider" hasInstanceMethod:@"_maxTrackView" withFullSignature:{"@", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = MPDetailSliderAccessibility;
  [(MPDetailSliderAccessibility *)&v3 layoutSubviews];
  [(MPDetailSliderAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = MPDetailSliderAccessibility;
  [(MPDetailSliderAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"_maxTrackView"];
  v4 = __UIAccessibilitySafeClass();

  [v4 setUserInteractionEnabled:0];
  v5 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"_downloadingTrackOverlay"];
  v6 = __UIAccessibilitySafeClass();

  [v6 setUserInteractionEnabled:0];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = MPDetailSliderAccessibility;
  v3 = [(MPDetailSliderAccessibility *)&v5 accessibilityTraits];
  if (([(MPDetailSliderAccessibility *)self safeBoolForKey:@"isUserInteractionEnabled"]& 1) != 0)
  {
    return *MEMORY[0x29EDC7F60] | v3;
  }

  else
  {
    return _AXTraitsRemoveTrait();
  }
}

- (CGRect)accessibilityFrame
{
  [(MPDetailSliderAccessibility *)self bounds];

  MEMORY[0x2A1C69F48](self);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (void)_accessibilityCommitPositionChange
{
  v10 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"_delegate"];
  v3 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"value"];
  [v3 doubleValue];
  v5 = v4;

  [(MPDetailSliderAccessibility *)self safeDoubleForKey:@"duration"];
  v7 = v6;
  if (objc_opt_respondsToSelector())
  {
    *&v8 = v5;
    if (v7 > 0.0)
    {
      v9 = v7 * *&v8;
      *&v8 = v9;
    }

    [v10 detailSlider:self didChangeValue:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    [v10 detailSliderTrackingDidEnd:self];
  }
}

- (void)accessibilityIncrement
{
  [(MPDetailSliderAccessibility *)self safeDoubleForKey:@"duration"];
  v4 = v3;
  [(MPDetailSliderAccessibility *)self _accessibilityIncreaseAmount:1];
  v6 = v4 * v5;
  v7 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"availableDuration"];
  [v7 doubleValue];
  v9 = v8;

  if (v9 >= v6)
  {
    v11 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"_delegate"];
    if (objc_opt_respondsToSelector())
    {
      [v11 detailSliderTrackingDidBegin:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(MPDetailSliderAccessibility *)self _updateTimeDisplayForTime:v6];
    }

    *&v10 = v6;
    [(MPDetailSliderAccessibility *)self setValue:0 animated:v10];
    [(MPDetailSliderAccessibility *)self _accessibilityCommitPositionChange];
  }
}

- (void)accessibilityDecrement
{
  [(MPDetailSliderAccessibility *)self safeDoubleForKey:@"duration"];
  v4 = v3;
  [(MPDetailSliderAccessibility *)self _accessibilityIncreaseAmount:0];
  v6 = v4 * v5;
  v7 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"availableDuration"];
  [v7 doubleValue];
  v9 = v8;

  if (v9 >= v6)
  {
    v11 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"_delegate"];
    if (objc_opt_respondsToSelector())
    {
      [v11 detailSliderTrackingDidBegin:self];
    }

    if (objc_opt_respondsToSelector())
    {
      [(MPDetailSliderAccessibility *)self _updateTimeDisplayForTime:v6];
    }

    *&v10 = v6;
    [(MPDetailSliderAccessibility *)self setValue:0 animated:v10];
    [(MPDetailSliderAccessibility *)self _accessibilityCommitPositionChange];
  }
}

- (void)_axPostUpdate
{
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = [(MPDetailSliderAccessibility *)self accessibilityValue];
  UIAccessibilityPostNotification(v2, v3);
}

- (BOOL)continueTrackingWithTouch:(id)a3 withEvent:(id)a4
{
  v10.receiver = self;
  v10.super_class = MPDetailSliderAccessibility;
  v5 = [(MPDetailSliderAccessibility *)&v10 continueTrackingWithTouch:a3 withEvent:a4];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    v6 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"value"];
    [v6 floatValue];
    v8 = v7;

    if (vabds_f32(v8, *&continueTrackingWithTouch_withEvent__LastValue) > 0.02 || CFAbsoluteTimeGetCurrent() - *&continueTrackingWithTouch_withEvent__LastTime > 5.0)
    {
      [(MPDetailSliderAccessibility *)self _axPostUpdate];
      continueTrackingWithTouch_withEvent__LastValue = LODWORD(v8);
      continueTrackingWithTouch_withEvent__LastTime = CFAbsoluteTimeGetCurrent();
    }
  }

  return v5;
}

- (id)accessibilityValue
{
  [(MPDetailSliderAccessibility *)self safeDoubleForKey:@"duration"];
  v3 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"value"];
  [v3 floatValue];

  v4 = UIAXTimeStringForDuration();
  v5 = UIAXTimeStringForDuration();
  v6 = [(MPDetailSliderAccessibility *)self safeValueForKey:@"isTracking"];
  v7 = [v6 BOOLValue];

  v8 = objc_allocWithZone(MEMORY[0x29EDBA050]);
  v9 = v8;
  if (v7)
  {
    v10 = [v8 initWithFormat:@"%@", @"__1__"];
  }

  else
  {
    v11 = accessibilityLocalizedString(@"slider.time.position");
    v10 = [v9 initWithFormat:v11, @"__1__", @"__2__"];
  }

  v13 = [v10 rangeOfString:@"__1__"];
  v14 = v12;
  if (v13 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 replaceCharactersInRange:v13 withString:{v12, v4}];
    v14 = [v4 length];
  }

  v16 = [v10 rangeOfString:@"__2__"];
  v17 = v15;
  if (v16 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [v10 replaceCharactersInRange:v16 withString:{v15, v5}];
    v17 = [v5 length];
  }

  v18 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v10];
  v19 = v18;
  v20 = MEMORY[0x29EDB8F00];
  v21 = MEMORY[0x29EDBD8C0];
  if (v14)
  {
    [v18 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:{v13, v14}];
  }

  if (v17)
  {
    [v19 setAttribute:*v20 forKey:*v21 withRange:{v16, v17}];
  }

  return v19;
}

@end