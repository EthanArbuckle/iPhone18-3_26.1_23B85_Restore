@interface MediaControlsTimeControlAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event;
- (CGPoint)accessibilityActivationPoint;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_axPostUpdate;
- (void)_updateLabels:(double)labels withRemainingDuration:(double)duration;
@end

@implementation MediaControlsTimeControlAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceVariable:@"_currentTimeInTrack" withType:"d"];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceVariable:@"_sliderValue" withType:"d"];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"setSliderValue:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"knobView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"liveBackground" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"isCurrentlyTracking" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"_updateLabels:withRemainingDuration:" withFullSignature:{"v", "d", "d", 0}];
  [validationsCopy validateClass:@"MediaControlsTimeControl" hasInstanceMethod:@"continueTrackingWithTouch:withEvent:" withFullSignature:{"B", "@", "@", 0}];
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = [(MediaControlsTimeControlAccessibility *)self safeUIViewForKey:@"knobView"];
  [v2 accessibilityActivationPoint];
  v4 = v3;
  v6 = v5;
  [v2 frame];
  v8 = v4 - v7 * 0.5;
  [v2 frame];
  v10 = v6 - v9 * 0.5;

  v11 = v8;
  v12 = v10;
  result.y = v12;
  result.x = v11;
  return result;
}

- (void)_updateLabels:(double)labels withRemainingDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = MediaControlsTimeControlAccessibility;
  [(MediaControlsTimeControlAccessibility *)&v7 _updateLabels:labels withRemainingDuration:?];
  v6 = [MEMORY[0x29EDBA070] numberWithDouble:duration];
  [(MediaControlsTimeControlAccessibility *)self _accessibilitySetRetainedValue:v6 forKey:@"AXRemaining"];
}

- (id)accessibilityValue
{
  v3 = [(MediaControlsTimeControlAccessibility *)self safeUIViewForKey:@"liveBackground"];
  _accessibilityViewIsVisible = [v3 _accessibilityViewIsVisible];

  if (_accessibilityViewIsVisible)
  {
    v5 = accessibilityLocalizedString(@"slider.live");
  }

  else
  {
    [(MediaControlsTimeControlAccessibility *)self safeDoubleForKey:@"_currentTimeInTrack"];
    v6 = [(MediaControlsTimeControlAccessibility *)self _accessibilityValueForKey:@"AXRemaining"];
    [v6 doubleValue];

    v7 = UIAXTimeStringForDuration();
    v8 = UIAXTimeStringForDuration();
    v9 = [(MediaControlsTimeControlAccessibility *)self safeBoolForKey:@"isCurrentlyTracking"];
    v10 = objc_allocWithZone(MEMORY[0x29EDBA050]);
    v11 = v10;
    if (v9)
    {
      v12 = [v10 initWithFormat:@"%@", @"__1__"];
    }

    else
    {
      v13 = accessibilityLocalizedString(@"slider.time.position");
      v12 = [v11 initWithFormat:v13, @"__1__", @"__2__"];
    }

    v15 = [v12 rangeOfString:@"__1__"];
    v16 = v14;
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 replaceCharactersInRange:v15 withString:{v14, v7}];
      v16 = [v7 length];
    }

    v18 = [v12 rangeOfString:@"__2__"];
    v19 = v17;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v12 replaceCharactersInRange:v18 withString:{v17, v8}];
      v19 = [v8 length];
    }

    v20 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:v12];
    v5 = v20;
    v21 = MEMORY[0x29EDB8F00];
    v22 = MEMORY[0x29EDBD8C0];
    if (v16)
    {
      [v20 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8C0] withRange:{v15, v16}];
    }

    if (v19)
    {
      [v5 setAttribute:*v21 forKey:*v22 withRange:{v18, v19}];
    }
  }

  return v5;
}

- (void)_axPostUpdate
{
  v2 = *MEMORY[0x29EDC7EA8];
  accessibilityValue = [(MediaControlsTimeControlAccessibility *)self accessibilityValue];
  UIAccessibilityPostNotification(v2, accessibilityValue);
}

- (BOOL)continueTrackingWithTouch:(id)touch withEvent:(id)event
{
  v9.receiver = self;
  v9.super_class = MediaControlsTimeControlAccessibility;
  v5 = [(MediaControlsTimeControlAccessibility *)&v9 continueTrackingWithTouch:touch withEvent:event];
  if (UIAccessibilityIsVoiceOverRunning())
  {
    [(MediaControlsTimeControlAccessibility *)self safeCGFloatForKey:@"_sliderValue"];
    v7 = *&v6;
    if (vabdd_f64(v6, *&continueTrackingWithTouch_withEvent__LastValue) > 0.02 || CFAbsoluteTimeGetCurrent() - *&continueTrackingWithTouch_withEvent__LastTime > 5.0)
    {
      [(MediaControlsTimeControlAccessibility *)self _axPostUpdate];
      continueTrackingWithTouch_withEvent__LastValue = v7;
      continueTrackingWithTouch_withEvent__LastTime = CFAbsoluteTimeGetCurrent();
    }
  }

  return v5;
}

uint64_t __63__MediaControlsTimeControlAccessibility_accessibilityDecrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSliderValue:*(a1 + 40) + -0.1];
  v2 = *(a1 + 32);

  return [v2 endTrackingWithTouch:0 withEvent:0];
}

uint64_t __63__MediaControlsTimeControlAccessibility_accessibilityIncrement__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setSliderValue:*(a1 + 40) + 0.1];
  v2 = *(a1 + 32);

  return [v2 endTrackingWithTouch:0 withEvent:0];
}

- (unint64_t)accessibilityTraits
{
  v5.receiver = self;
  v5.super_class = MediaControlsTimeControlAccessibility;
  accessibilityTraits = [(MediaControlsTimeControlAccessibility *)&v5 accessibilityTraits];
  if (([(MediaControlsTimeControlAccessibility *)self safeBoolForKey:@"isUserInteractionEnabled"]& 1) != 0)
  {
    return *MEMORY[0x29EDC7F60] | accessibilityTraits;
  }

  else
  {
    return _AXTraitsRemoveTrait();
  }
}

@end