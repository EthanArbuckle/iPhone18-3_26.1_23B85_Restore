@interface ETTranscriptColorWheelAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (ETTranscriptColorWheelAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityAdjustColorPickerBy:(double)by;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_accessibilitySpeakPickerColor;
- (void)touchesBegan:(id)began withEvent:(id)event;
- (void)touchesCancelled:(id)cancelled withEvent:(id)event;
- (void)touchesEnded:(id)ended withEvent:(id)event;
- (void)updatePickerPositionForPoint:(CGPoint)point;
@end

@implementation ETTranscriptColorWheelAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ETTranscriptColorWheel" isKindOfClass:@"DTSColorWheel"];
  [validationsCopy validateClass:@"ETTranscriptColorWheel" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"pickerRotation" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"pickerCircle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"colorWheelRadius" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"gradientWidth" withFullSignature:{"d", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"updatePickerPositionForPoint:" withFullSignature:{"v", "{CGPoint=dd}", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesBegan: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesEnded: withEvent:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"DTSColorWheel" hasInstanceMethod:@"touchesCancelled: withEvent:" withFullSignature:{"v", "@", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(ETTranscriptColorWheelAccessibility *)self safeValueForKey:@"pickerCircle"];
  [v3 setAccessibilityIdentifier:@"digital.touch.picker.circle.identifier"];
}

- (ETTranscriptColorWheelAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = ETTranscriptColorWheelAccessibility;
  v3 = [(ETTranscriptColorWheelAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(ETTranscriptColorWheelAccessibility *)v3 _accessibilityLoadAccessibilityInformation];
  }

  return v4;
}

- (void)updatePickerPositionForPoint:(CGPoint)point
{
  v11.receiver = self;
  v11.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v11 updatePickerPositionForPoint:point.x, point.y];
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

- (void)touchesBegan:(id)began withEvent:(id)event
{
  eventCopy = event;
  beganCopy = began;
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"pickerRotation"];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:?];
  v8.receiver = self;
  v8.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v8 touchesBegan:beganCopy withEvent:eventCopy];
}

- (void)touchesEnded:(id)ended withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v5 touchesEnded:ended withEvent:event];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:-1.0];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySpeakPickerColor];
}

- (void)touchesCancelled:(id)cancelled withEvent:(id)event
{
  v5.receiver = self;
  v5.super_class = ETTranscriptColorWheelAccessibility;
  [(ETTranscriptColorWheelAccessibility *)&v5 touchesCancelled:cancelled withEvent:event];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySetOriginalPickerRotation:-1.0];
  [(ETTranscriptColorWheelAccessibility *)self _accessibilitySpeakPickerColor];
}

- (void)_accessibilityAdjustColorPickerBy:(double)by
{
  [(ETTranscriptColorWheelAccessibility *)self safeCGFloatForKey:@"pickerRotation"];
  v6 = v5 + by;
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
  axColorStringForSpeaking = [v2 axColorStringForSpeaking];
  UIAccessibilitySpeak();
}

@end