@interface CalloutViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (NSString)axCalloutText;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axUpdateIsVisible;
- (void)axDidUpdateFromPreviousCalloutText:(id)text;
- (void)setAlpha:(double)alpha;
@end

@implementation CalloutViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"Measure.CalloutView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"setAlpha:" withFullSignature:{"v", "d", 0}];
  [validationsCopy validateClass:@"Measure.CalloutViewSpatial" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.CalloutViewRegular" hasInstanceMethod:@"label" withFullSignature:{"@", 0}];
}

- (NSString)axCalloutText
{
  objc_opt_class();
  v3 = [(CalloutViewAccessibility *)self safeValueForKey:@"label"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  return text;
}

- (void)axDidUpdateFromPreviousCalloutText:(id)text
{
  textCopy = text;
  axCalloutText = [(CalloutViewAccessibility *)self axCalloutText];
  if (-[CalloutViewAccessibility _axIsActuallyVisible](self, "_axIsActuallyVisible") && ([textCopy isEqualToString:axCalloutText] & 1) == 0 && objc_msgSend(axCalloutText, "length"))
  {
    AXMeasureSpeakMeasurementAnnouncement(axCalloutText);
  }
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = CalloutViewAccessibility;
  [(CalloutViewAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(CalloutViewAccessibility *)self _axUpdateIsVisible];
}

- (void)_axUpdateIsVisible
{
  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  [v3 alpha];
  v5 = fabs(v4 + -1.0);

  if (v5 >= 2.22044605e-16)
  {
    [(CalloutViewAccessibility *)self performSelector:sel__axSetIsNotActuallyVisible withObject:0 afterDelay:0.5];
  }

  else
  {
    [MEMORY[0x29EDC9738] cancelPreviousPerformRequestsWithTarget:self selector:sel__axSetIsNotActuallyVisible object:0];
    [(CalloutViewAccessibility *)self _axSetIsActuallyVisible:1];
  }
}

- (void)setAlpha:(double)alpha
{
  v10 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 alpha];
  v7 = v6;
  v9.receiver = self;
  v9.super_class = CalloutViewAccessibility;
  [(CalloutViewAccessibility *)&v9 setAlpha:alpha];
  [v5 alpha];
  if (vabdd_f64(v7, v8) >= 2.22044605e-16)
  {
    [(CalloutViewAccessibility *)self _axUpdateIsVisible];
  }
}

@end