@interface EditViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)didTapEditButton;
- (void)setAlpha:(double)a3;
@end

@implementation EditViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"Measure.EditView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"Measure.EditView" hasInstanceMethod:@"didTapEditButton" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"setAlpha:" withFullSignature:{"v", "d", 0}];
}

- (void)setAlpha:(double)a3
{
  v10 = 0;
  objc_opt_class();
  v5 = __UIAccessibilityCastAsClass();
  [v5 alpha];
  v7 = v6;
  v9.receiver = self;
  v9.super_class = EditViewAccessibility;
  [(EditViewAccessibility *)&v9 setAlpha:a3];
  [v5 alpha];
  if (vabdd_f64(v7, v8) >= 2.22044605e-16)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }
}

- (void)didTapEditButton
{
  v3 = AXMeasureAccessibilityStateObserver();
  [v3 axHasConfirmedRectangle];

  v5.receiver = self;
  v5.super_class = EditViewAccessibility;
  [(EditViewAccessibility *)&v5 didTapEditButton];
  v4 = accessibilityLocalizedString(@"DID_ADD_FIRST_POINT");
  AXMeasureAnnounceUpdatedMeasurement(v4, 0);
}

@end