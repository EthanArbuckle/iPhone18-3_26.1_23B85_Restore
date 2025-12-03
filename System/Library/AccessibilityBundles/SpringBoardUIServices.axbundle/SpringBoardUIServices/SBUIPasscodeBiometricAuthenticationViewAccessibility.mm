@interface SBUIPasscodeBiometricAuthenticationViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_updateSubviews;
@end

@implementation SBUIPasscodeBiometricAuthenticationViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPasscodeBiometricAuthenticationView" hasInstanceVariable:@"_invisibleUsePasscodeButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBUIPasscodeBiometricAuthenticationView" hasInstanceVariable:@"_backgroundCancelButton" withType:"UIButton"];
  [validationsCopy validateClass:@"SBUIPasscodeBiometricAuthenticationView" hasInstanceMethod:@"_updateSubviews" withFullSignature:{"v", 0}];
}

- (void)_updateSubviews
{
  v3.receiver = self;
  v3.super_class = SBUIPasscodeBiometricAuthenticationViewAccessibility;
  [(SBUIPasscodeBiometricAuthenticationViewAccessibility *)&v3 _updateSubviews];
  [(SBUIPasscodeBiometricAuthenticationViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBUIPasscodeBiometricAuthenticationViewAccessibility;
  [(SBUIPasscodeBiometricAuthenticationViewAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBUIPasscodeBiometricAuthenticationViewAccessibility *)self safeUIViewForKey:@"_invisibleUsePasscodeButton"];
  [v3 setAccessibilityElementsHidden:1];

  v4 = [(SBUIPasscodeBiometricAuthenticationViewAccessibility *)self safeUIViewForKey:@"_backgroundCancelButton"];
  [v4 setAccessibilityElementsHidden:1];
}

@end