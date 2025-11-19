@interface AKSignatureViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (CGPoint)accessibilityActivationPoint;
- (void)_axStopDirectTouch;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesMoved:(id)a3 withEvent:(id)a4;
@end

@implementation AKSignatureViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"AKSignatureView" hasInstanceMethod:@"touchesBegan: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"AKSignatureView" hasInstanceMethod:@"touchesMoved: withEvent:" withFullSignature:{"v", "@", "@", 0}];
}

- (BOOL)accessibilityActivate
{
  v3 = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];

  if (!v3)
  {
    v4 = objc_alloc(MEMORY[0x29EDBD6A0]);
    v5 = [v4 initWithTargetSerialQueue:MEMORY[0x29EDCA578]];
    [v5 setAutomaticallyCancelPendingBlockUponSchedulingNewBlock:1];
    [(AKSignatureViewAccessibility *)self _setAXDirectTouchTimer:v5];
  }

  [(AKSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7F68]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
  v6 = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];
  v8[0] = MEMORY[0x29EDCA5F8];
  v8[1] = 3221225472;
  v8[2] = __53__AKSignatureViewAccessibility_accessibilityActivate__block_invoke;
  v8[3] = &unk_29F29D458;
  v8[4] = self;
  [v6 afterDelay:v8 processBlock:3.0];

  return 1;
}

- (void)_axStopDirectTouch
{
  v2 = self;
  [(AKSignatureViewAccessibility *)self setAccessibilityTraits:*MEMORY[0x29EDC7FA0]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v2);
  LODWORD(v2) = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"signature.drawing.ended");
  UIAccessibilityPostNotification(v2, v3);
}

- (CGPoint)accessibilityActivationPoint
{
  v2 = -1.0;
  v3 = -1.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6.receiver = self;
  v6.super_class = AKSignatureViewAccessibility;
  [(AKSignatureViewAccessibility *)&v6 touchesBegan:a3 withEvent:a4];
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = accessibilityLocalizedString(@"signature.drawing.began");
  UIAccessibilityPostNotification(v4, v5);
}

- (void)touchesMoved:(id)a3 withEvent:(id)a4
{
  v7.receiver = self;
  v7.super_class = AKSignatureViewAccessibility;
  [(AKSignatureViewAccessibility *)&v7 touchesMoved:a3 withEvent:a4];
  v5 = [(AKSignatureViewAccessibility *)self _axDirectTouchTimer];
  v6[0] = MEMORY[0x29EDCA5F8];
  v6[1] = 3221225472;
  v6[2] = __55__AKSignatureViewAccessibility_touchesMoved_withEvent___block_invoke;
  v6[3] = &unk_29F29D458;
  v6[4] = self;
  [v5 afterDelay:v6 processBlock:3.0];
}

@end