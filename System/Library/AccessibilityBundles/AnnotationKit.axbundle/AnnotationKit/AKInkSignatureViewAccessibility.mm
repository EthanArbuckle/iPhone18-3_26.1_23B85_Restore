@interface AKInkSignatureViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (void)_axStopDirectTouch;
- (void)canvasViewDidStartNewStroke:(id)stroke;
- (void)canvasViewDrawingDidChange:(id)change;
@end

@implementation AKInkSignatureViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKInkSignatureView" conformsToProtocol:@"PKCanvasViewDelegate"];
  [validationsCopy validateClass:@"AKInkSignatureView" hasInstanceMethod:@"canvasViewDrawingDidChange:" withFullSignature:{"v", "@", 0}];
}

- (BOOL)accessibilityActivate
{
  _axDirectTouchTimer = [(AKInkSignatureViewAccessibility *)self _axDirectTouchTimer];

  if (!_axDirectTouchTimer)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AKInkSignatureViewAccessibility *)self _setAXDirectTouchTimer:v5];
  }

  [(AKInkSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7F68]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  _axDirectTouchTimer2 = [(AKInkSignatureViewAccessibility *)self _axDirectTouchTimer];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __56__AKInkSignatureViewAccessibility_accessibilityActivate__block_invoke;
  v8[3] = &unk_29F29D458;
  v8[4] = self;
  [_axDirectTouchTimer2 afterDelay:v8 processBlock:3.0];

  return 1;
}

- (void)_axStopDirectTouch
{
  selfCopy = self;
  [(AKInkSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
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

- (void)canvasViewDidStartNewStroke:(id)stroke
{
  v5.receiver = self;
  v5.super_class = AKInkSignatureViewAccessibility;
  [(AKInkSignatureViewAccessibility *)&v5 canvasViewDidStartNewStroke:stroke];
  v3 = *MEMORY[0x29EDC7EA8];
  v4 = accessibilityLocalizedString(@"signature.drawing.began");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)canvasViewDrawingDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = AKInkSignatureViewAccessibility;
  [(AKInkSignatureViewAccessibility *)&v6 canvasViewDrawingDidChange:change];
  _axDirectTouchTimer = [(AKInkSignatureViewAccessibility *)self _axDirectTouchTimer];
  v5[0] = MEMORY[0x29EDCA5F8];
  v5[1] = 3221225472;
  v5[2] = __62__AKInkSignatureViewAccessibility_canvasViewDrawingDidChange___block_invoke;
  v5[3] = &unk_29F29D458;
  v5[4] = self;
  [_axDirectTouchTimer afterDelay:v5 processBlock:3.0];
}

@end