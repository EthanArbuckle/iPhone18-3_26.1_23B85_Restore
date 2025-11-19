@interface ReticleViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)axIsFocusedOnRectangle;
- (CGRect)_axFrameForReticleElement;
- (id)_axHintForReticleElement;
- (id)_axStringForReticleState;
- (id)accessibilityElements;
- (id)axFirstLabelElement;
- (void)_axAnnounceReticleState;
- (void)_axAnnounceReticleStateAfterDelay;
- (void)setAlpha:(double)a3;
- (void)setState:(int64_t)a3;
@end

@implementation ReticleViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.ReticleView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"setAlpha:" withFullSignature:{"v", "d", 0}];
  [v3 validateClass:@"Measure.ReticleView" hasInstanceMethod:@"setState:" withFullSignature:{"v", "q", 0}];
  [v3 validateClass:@"Measure.ReticleView" hasInstanceMethod:@"state" withFullSignature:{"q", 0}];
  [v3 validateClass:@"Measure.ReticleView" hasInstanceMethod:@"currentDiameter" withFullSignature:{"f", 0}];
}

- (id)axFirstLabelElement
{
  v3 = AXMeasureLabelView();
  v4 = [v3 _accessibilityLabelElementsWithAccessibilityContainer:self];
  v5 = [v4 firstObject];

  return v5;
}

- (BOOL)axIsFocusedOnRectangle
{
  v2 = AXMeasureAccessibilityStateObserver();
  v3 = [v2 axHasSuggestedRectangle];

  return v3;
}

- (id)accessibilityElements
{
  v3 = [MEMORY[0x29EDB8DE8] array];
  v4 = [(ReticleViewAccessibility *)self _axReticleElement];
  if (!v4)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC78F8]) initWithAccessibilityContainer:self];
    objc_initWeak(&location, self);
    v14[0] = MEMORY[0x29EDCA5F8];
    v14[1] = 3221225472;
    v14[2] = __49__ReticleViewAccessibility_accessibilityElements__block_invoke;
    v14[3] = &unk_29F2CE6A8;
    objc_copyWeak(&v15, &location);
    [v4 _setAccessibilityFrameBlock:v14];
    v12[0] = MEMORY[0x29EDCA5F8];
    v12[1] = 3221225472;
    v12[2] = __49__ReticleViewAccessibility_accessibilityElements__block_invoke_2;
    v12[3] = &unk_29F2CE6D0;
    objc_copyWeak(&v13, &location);
    [v4 _setAccessibilityLabelBlock:v12];
    [v4 _setAccessibilityValueBlock:&__block_literal_global_2];
    v10[0] = MEMORY[0x29EDCA5F8];
    v10[1] = 3221225472;
    v10[2] = __49__ReticleViewAccessibility_accessibilityElements__block_invoke_4;
    v10[3] = &unk_29F2CE6D0;
    objc_copyWeak(&v11, &location);
    [v4 _setAccessibilityHintBlock:v10];
    v8[0] = MEMORY[0x29EDCA5F8];
    v8[1] = 3221225472;
    v8[2] = __49__ReticleViewAccessibility_accessibilityElements__block_invoke_5;
    v8[3] = &unk_29F2CE718;
    objc_copyWeak(&v9, &location);
    [v4 _setAccessibilityTraitsBlock:v8];
    [(ReticleViewAccessibility *)self _axSetReticleElement:v4];
    objc_destroyWeak(&v9);
    objc_destroyWeak(&v11);
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  [v3 addObject:v4];
  v5 = AXMeasureLabelView();
  v6 = [v5 _accessibilityLabelElementsWithAccessibilityContainer:self];

  if ([v6 count])
  {
    [v3 addObjectsFromArray:v6];
  }

  return v3;
}

double __49__ReticleViewAccessibility_accessibilityElements__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _axFrameForReticleElement];
  v3 = v2;

  return v3;
}

id __49__ReticleViewAccessibility_accessibilityElements__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axStringForReticleState];

  return v2;
}

id __49__ReticleViewAccessibility_accessibilityElements__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axHintForReticleElement];

  return v2;
}

uint64_t __49__ReticleViewAccessibility_accessibilityElements__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _axTraitsForReticleElement];

  return v2;
}

- (CGRect)_axFrameForReticleElement
{
  [(ReticleViewAccessibility *)self safeFloatForKey:@"currentDiameter"];
  objc_opt_class();
  v2 = __UIAccessibilityCastAsClass();
  v3 = *MEMORY[0x29EDB90E0];
  v4 = *(MEMORY[0x29EDB90E0] + 8);
  [v2 bounds];
  UIRectCenteredRect();

  UIAccessibilityFrameForBounds();
  result.size.height = v8;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v5;
  return result;
}

- (id)_axHintForReticleElement
{
  v6.receiver = self;
  v6.super_class = ReticleViewAccessibility;
  v3 = [(ReticleViewAccessibility *)&v6 accessibilityHint];
  if ([(ReticleViewAccessibility *)self axIsFocusedOnRectangle])
  {
    v4 = accessibilityLocalizedString(@"RETICLE_HINT_RECTANGLE");

    v3 = v4;
  }

  return v3;
}

- (id)_axStringForReticleState
{
  v3 = [(ReticleViewAccessibility *)self _axReticleState];
  if (v3 > 1)
  {
    if (v3 == 3)
    {
      v5 = @"RETICLE_STATE_INVALID";
    }

    else
    {
      if (v3 != 2)
      {
        goto LABEL_13;
      }

      v5 = @"RETICLE_STATE_POOR";
    }
  }

  else if (v3)
  {
    if (v3 != 1)
    {
      goto LABEL_13;
    }

    if ([(ReticleViewAccessibility *)self axIsFocusedOnRectangle])
    {
      v5 = @"RETICLE_STATE_GOOD_RECTANGLE";
    }

    else
    {
      v5 = @"RETICLE_STATE_GOOD";
    }
  }

  else
  {
    v5 = @"RETICLE_STATE_NONE";
  }

  v4 = accessibilityLocalizedString(v5);
LABEL_13:

  return v4;
}

- (void)_axAnnounceReticleState
{
  v4 = [(ReticleViewAccessibility *)self _axLastAnnouncementForReticleState];
  v3 = [(ReticleViewAccessibility *)self _axStringForReticleState];
  if (!v4 || ([v4 isEqualToString:v3] & 1) == 0)
  {
    AXMeasureSpeakMeasurementAnnouncement(v3);
    [(ReticleViewAccessibility *)self _axSetLastAnnouncementForReticleState:v3];
  }
}

- (void)_axAnnounceReticleStateAfterDelay
{
  [MEMORY[0x29EDC9738] cancelPreviousPerformRequestsWithTarget:self selector:sel__axAnnounceReticleState object:0];

  [(ReticleViewAccessibility *)self performSelector:sel__axAnnounceReticleState withObject:0 afterDelay:0.3];
}

- (void)setState:(int64_t)a3
{
  v5 = [(ReticleViewAccessibility *)self _axReticleState];
  v9.receiver = self;
  v9.super_class = ReticleViewAccessibility;
  [(ReticleViewAccessibility *)&v9 setState:a3];
  if (v5 != a3)
  {
    objc_opt_class();
    v6 = __UIAccessibilityCastAsClass();
    [v6 alpha];
    v8 = v7;

    if (v8 >= 1.0)
    {
      [(ReticleViewAccessibility *)self _axAnnounceReticleStateAfterDelay];
    }
  }
}

- (void)setAlpha:(double)a3
{
  v9 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 alpha];
  v7 = v6;

  v8.receiver = self;
  v8.super_class = ReticleViewAccessibility;
  [(ReticleViewAccessibility *)&v8 setAlpha:a3];
  if (a3 >= 1.0 && v7 <= 0.0)
  {
    [(ReticleViewAccessibility *)self _axAnnounceReticleStateAfterDelay];
  }
}

@end