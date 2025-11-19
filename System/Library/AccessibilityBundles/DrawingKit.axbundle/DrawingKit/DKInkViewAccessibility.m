@interface DKInkViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityActivate;
- (CGRect)accessibilityFrame;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (unint64_t)accessibilityTraits;
- (void)_axInvalidateTimerAndReschedule:(BOOL)a3;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
@end

@implementation DKInkViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DKInkView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"superview" withFullSignature:{"@", 0}];
}

- (CGRect)accessibilityFrame
{
  v2 = [(DKInkViewAccessibility *)self superview];
  [v2 accessibilityFrame];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (id)accessibilityLabel
{
  if ([(DKInkViewAccessibility *)self _axIsDirectTouchable])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(@"writeboard.input.label");
  }

  return v2;
}

- (id)accessibilityHint
{
  if ([(DKInkViewAccessibility *)self _axIsDirectTouchable])
  {
    v2 = 0;
  }

  else
  {
    v2 = accessibilityLocalizedString(@"writeboard.input.hint");
  }

  return v2;
}

- (unint64_t)accessibilityTraits
{
  v7.receiver = self;
  v7.super_class = DKInkViewAccessibility;
  v3 = [(DKInkViewAccessibility *)&v7 accessibilityTraits];
  v4 = [(DKInkViewAccessibility *)self _axIsDirectTouchable];
  v5 = *MEMORY[0x29EDC7F68];
  if (!v4)
  {
    v5 = 0;
  }

  return v5 | v3;
}

- (BOOL)accessibilityActivate
{
  if ([(DKInkViewAccessibility *)self _axIsDirectTouchable])
  {
    v6.receiver = self;
    v6.super_class = DKInkViewAccessibility;
    return [(DKInkViewAccessibility *)&v6 accessibilityActivate];
  }

  else
  {
    v3 = 1;
    [(DKInkViewAccessibility *)self _axSetIsDirectTouchable:1];
    [(DKInkViewAccessibility *)self _axInvalidateTimerAndReschedule:1];
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], self);
    v4 = accessibilityLocalizedString(@"writeboard.start.writing");
    UIAccessibilitySpeak();
  }

  return v3;
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DKInkViewAccessibility;
  [(DKInkViewAccessibility *)&v5 touchesBegan:a3 withEvent:a4];
  [(DKInkViewAccessibility *)self _axInvalidateTimerAndReschedule:0];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = DKInkViewAccessibility;
  [(DKInkViewAccessibility *)&v5 touchesEnded:a3 withEvent:a4];
  [(DKInkViewAccessibility *)self _axInvalidateTimerAndReschedule:1];
}

- (void)_axInvalidateTimerAndReschedule:(BOOL)a3
{
  v3 = a3;
  v5 = [(DKInkViewAccessibility *)self _axDirectTouchTimer];
  [v5 invalidate];

  if (v3)
  {
    v7[0] = MEMORY[0x29EDCA5F8];
    v7[1] = 3221225472;
    v7[2] = __58__DKInkViewAccessibility__axInvalidateTimerAndReschedule___block_invoke;
    v7[3] = &unk_29F2BC3D0;
    v7[4] = self;
    v6 = [MEMORY[0x29EDB8E68] scheduledTimerWithTimeInterval:0 repeats:v7 block:2.0];
  }

  else
  {
    v6 = 0;
  }

  [(DKInkViewAccessibility *)self _axSetDirectTouchTimer:v6];
}

void __58__DKInkViewAccessibility__axInvalidateTimerAndReschedule___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _axSetIsDirectTouchable:0];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], *(a1 + 32));
  v2 = accessibilityLocalizedString(@"writeboard.stop.writing");
  UIAccessibilitySpeak();
}

@end