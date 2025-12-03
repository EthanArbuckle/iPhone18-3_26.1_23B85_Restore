@interface DeleteButtonAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (DeleteButtonAccessibility)initWithFrame:(CGRect)frame;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_axAnnotateActualButton;
- (void)tapDeleteFrom:(id)from;
@end

@implementation DeleteButtonAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ASVRoundedButton" isKindOfClass:@"ASVButton"];
  [validationsCopy validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"deleteButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"initWithFrame:" withFullSignature:{"@", "{CGRect={CGPoint=dd}{CGSize=dd}}", 0}];
  [validationsCopy validateClass:@"Measure.DeleteButton" hasInstanceMethod:@"tapDeleteFrom:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"ASVButton" hasInstanceMethod:@"button" withFullSignature:{"@", 0}];
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

- (DeleteButtonAccessibility)initWithFrame:(CGRect)frame
{
  v6.receiver = self;
  v6.super_class = DeleteButtonAccessibility;
  v3 = [(DeleteButtonAccessibility *)&v6 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(DeleteButtonAccessibility *)v3 _axAnnotateActualButton];
  }

  return v4;
}

- (void)tapDeleteFrom:(id)from
{
  v4.receiver = self;
  v4.super_class = DeleteButtonAccessibility;
  [(DeleteButtonAccessibility *)&v4 tapDeleteFrom:from];
  v3 = accessibilityLocalizedString(@"DID_CLEAR_POINTS");
  AXMeasureSpeakMeasurementAnnouncement(v3);
}

@end