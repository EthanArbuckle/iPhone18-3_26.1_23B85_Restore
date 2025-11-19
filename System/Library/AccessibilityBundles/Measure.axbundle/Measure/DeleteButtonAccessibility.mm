@interface DeleteButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (DeleteButtonAccessibility)initWithFrame:(CGRect)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateActualButton;
- (void)tapDeleteFrom:(id)a3;
@end

@implementation DeleteButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ASVRoundedButton" isKindOfClass:@"ASVButton"];
  [v3 validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
  [v3 validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [v3 validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"tapDeleteFrom:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"ASVButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
}

- (void)_axAnnotateActualButton
{
  v3 = [(DeleteButtonAccessibility *)self safeValueForKey:@"deleteButton"];
  v2 = [v3 safeValueForKey:@"button"];
  [v2 accessibilitySetIdentification:@"AXMeasureDeleteButton"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v3.receiver = self;
  v3.super_class = DeleteButtonAccessibility;
  [(DeleteButtonAccessibility *)&v3 _accessibilityLoadAccessibilityInformation];
  [(DeleteButtonAccessibility *)self _axAnnotateActualButton];
}

- (DeleteButtonAccessibility)initWithFrame:(CGRect)a3
{
  v6.receiver = self;
  v6.super_class = DeleteButtonAccessibility;
  v3 = [(DeleteButtonAccessibility *)&v6 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(DeleteButtonAccessibility *)v3 _axAnnotateActualButton];
  }

  return v4;
}

- (void)tapDeleteFrom:(id)a3
{
  v4.receiver = self;
  v4.super_class = DeleteButtonAccessibility;
  [(DeleteButtonAccessibility *)&v4 tapDeleteFrom:a3];
  v3 = accessibilityLocalizedString(@"DID_CLEAR_POINTS");
  AXMeasureSpeakMeasurementAnnouncement(v3);
}

@end