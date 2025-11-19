@interface SBPowerAlertElementAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (double)preferredAlertingDuration:(double)a3;
@end

@implementation SBPowerAlertElementAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBPowerAlertElement"];
  [v3 validateProtocol:@"SBSystemApertureContextProviding" hasOptionalInstanceMethod:@"preferredAlertingDuration:"];
  [v3 validateClass:@"SBPowerAlertElement" conformsToProtocol:@"SBSystemApertureContextProviding"];
}

- (double)preferredAlertingDuration:(double)a3
{
  v7.receiver = self;
  v7.super_class = SBPowerAlertElementAccessibility;
  [(SBPowerAlertElementAccessibility *)&v7 preferredAlertingDuration:a3];
  v4 = v3;
  IsVoiceOverRunning = UIAccessibilityIsVoiceOverRunning();
  result = 15.0;
  if (!IsVoiceOverRunning || v4 >= 15.0)
  {
    return v4;
  }

  return result;
}

@end