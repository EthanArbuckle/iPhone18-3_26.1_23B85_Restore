@interface ETTranscriptColorWheelAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (ETTranscriptColorWheelAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityAdjustColorPickerBy:(double)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySpeakPickerColor;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
- (void)touchesCancelled:(id)a3 withEvent:(id)a4;
- (void)touchesEnded:(id)a3 withEvent:(id)a4;
- (void)updatePickerPositionForPoint:(CGPoint)a3;
@end

@implementation ETTranscriptColorWheelAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ETTranscriptColorWheel" isKindOfClass:@"DTSColorWheel"];
  [v3 validateClass:@"ETTranscriptColorWheel" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"pickerRotation" withFullSignature:{"d", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"pickerCircle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"colorWheelRadius" withFullSignature:{"d", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"gradientWidth" withFullSignature:{"d", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"updatePickerPositionForPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesBegan: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesEnded: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesCancelled: withEvent:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ETTranscriptColorWheelAccessibility *)self safeValueForKey:@"pickerCircle"];
  [v3 setAccessibilityIdentifier:@"digital.touch.picker.circle.identifier"];
}

- (ETTranscriptColorWheelAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = ETTranscriptColorWheelAccessibility;
  v3 = [(ETTranscriptColorWheelAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(ETTranscriptColorWheelAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)updatePickerPositionForPoint:(CGPoint)a3
{
  v11.receiver = self;
  v11.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v11 updatePickerPositionForPoint:a3.x, a3.y];
  v4 = [(ETTranscriptColorWheelAccessibility *)self safeValueForKey:@"pickerCircle"];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilityOriginalPickerRotation];
  if (v5 > 0.0)
  {
    [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"pickerRotation"];
    v7 = v6;
    [(ETTranscriptColorWheelAccessibility *)self _accessibilityOriginalPickerRotation];
    [(ETTranscriptColorWheelAccessibility *)self _accessibilityDifferenceBetweenAngle:v7 andAngle:v8];
    if (fabs(v9) >= 0.104719755)
    {
      [(ETTranscriptColorWheelAccessibility *)self _accessibilitySpeakPickerColor];
      [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:v7];
    }
  }

  objc_opt_class();
  v10 = __UIAccessibilityCastAsClass();
  if ([v10 _accessibilityViewIsVisible])
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], v4);
  }
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  v6 = a4;
  v7 = a3;
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"pickerRotation"];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:?];
  v8.receiver = self;
  v8.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v8 touchesBegan:v7 withEvent:v6];
}

- (void)touchesEnded:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v5 touchesEnded:a3 withEvent:a4];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:-1.0];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySpeakPickerColor];
}

- (void)touchesCancelled:(id)a3 withEvent:(id)a4
{
  v5.receiver = self;
  v5.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v5 touchesCancelled:a3 withEvent:a4];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:-1.0];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySpeakPickerColor];
}

- (void)_accessibilityAdjustColorPickerBy:(double)a3
{
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"pickerRotation"];
  v6 = v5 + a3;
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"colorWheelRadius"];
  v8 = v7;
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"gradientWidth"];
  v10 = v8 - v9 * 0.5;
  v11 = [(ETTranscriptColorWheelAccessibility *)self safeValueForKey:@"bounds"];
  [v11 CGRectValue];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v24.origin.x = v13;
  v24.origin.y = v15;
  v24.size.width = v17;
  v24.size.height = v19;
  v20 = CGRectGetWidth(v24) * 0.5;
  v25.origin.x = v13;
  v25.origin.y = v15;
  v25.size.width = v17;
  v25.size.height = v19;
  v21 = CGRectGetHeight(v25) * 0.5;
  v22 = __sincos_stret(v6);

  [(ETTranscriptColorWheelAccessibility *)self updatePickerPositionForPoint:v20 + v10 * v22.__cosval, v21 + v10 * v22.__sinval];
}

- (void)_accessibilitySpeakPickerColor
{
  v4 = [(ETTranscriptColorWheelAccessibility *)self safeValueForKey:@"pickerCircle"];
  v2 = [v4 safeValueForKey:@"backgroundColor"];
  v3 = [v2 axColorStringForSpeaking];
  UIAccessibilitySpeak();
}

@end