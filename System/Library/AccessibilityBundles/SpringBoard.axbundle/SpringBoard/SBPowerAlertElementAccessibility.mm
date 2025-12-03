@interface SBPowerAlertElementAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (double)preferredAlertingDuration:(double)duration;
@end

@implementation SBPowerAlertElementAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBPowerAlertElement"];
  [validationsCopy validateProtocol:@"SBSystemApertureContextProviding" hasOptionalInstanceMethod:@"preferredAlertingDuration:"];
  [validationsCopy validateClass:@"SBPowerAlertElement" conformsToProtocol:@"SBSystemApertureContextProviding"];
}

- (double)preferredAlertingDuration:(double)duration
{
  v7.receiver = self;
  v7.super_class = SBPowerAlertElementAccessibility;
  [(SBPowerAlertElementAccessibility *)&v7 preferredAlertingDuration:duration];
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