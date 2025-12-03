@interface AKSignatureViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (void)_axStopDirectTouch;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesMoved:(id)moved withEvent:(id)event;
@end

@implementation AKSignatureViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKSignatureView" hasInstanceMethod:@"touchesBegan: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"AKSignatureView" hasInstanceMethod:@"touchesMoved: withEvent:" withFullSignature:{"v", "@", "@", 0}];
}

- (BOOL)accessibilityActivate
{
  _axDirectTouchTimer = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];

  if (!_axDirectTouchTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AKSignatureViewAccessibility *)self _setAXDirectTouchTimer:v5];
  }

  [(AKSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7F68]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  _axDirectTouchTimer2 = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __53__AKSignatureViewAccessibility_accessibilityActivate__block_invoke;
  v8[3] = &unk_29F29D458;
  v8[4] = self;
  [_axDirectTouchTimer2 afterDelay:v8 processBlock:3.0];

  return 1;
}

- (void)_axStopDirectTouch
{
  selfCopy = self;
  [(AKSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], selfCopy);
  LODWORD(selfCopy) = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"signature.drawing.ended");
  UIAccessibilityPostNotification(selfCopy, v3);
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = -1.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  v6.receiver = self;
  v6.super_class = AKSignatureViewAccessibility;
  [(AKSignatureViewAccessibility *)&v6 touchesBegan:began withEvent:event];
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = accessibilityLocalizedString(@"signature.drawing.began");
  UIAccessibilityPostNotification(v4, v5);
}

- (void)touchesMoved:(id)moved withEvent:(id)event
{
  v7.receiver = self;
  v7.super_class = AKSignatureViewAccessibility;
  [(AKSignatureViewAccessibility *)&v7 touchesMoved:moved withEvent:event];
  _axDirectTouchTimer = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __55__AKSignatureViewAccessibility_touchesMoved_withEvent___block_invoke;
  v6[3] = &unk_29F29D458;
  v6[4] = self;
  [_axDirectTouchTimer afterDelay:v6 processBlock:3.0];
}

@end