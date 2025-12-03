@interface SBUIPasscodeLockNumberPadAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_configureAdditionalButtons;
@end

@implementation SBUIPasscodeLockNumberPadAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceMethod:@"_configureAdditionalButtons" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_cancelButton" withType:"SBUIButton"];
  [validationsCopy validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_backspaceButton" withType:"SBUIButton"];
  [validationsCopy validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_emergencyCallButton" withType:"SBUIButton"];
}

- (void)_configureAdditionalButtons
{
  v7.receiver = self;
  v7.super_class = SBUIPasscodeLockNumberPadAccessibility;
  [(SBUIPasscodeLockNumberPadAccessibility *)&v7 _configureAdditionalButtons];
  v3 = [(SBUIPasscodeLockNumberPadAccessibility *)self safeValueForKey:@"_cancelButton"];
  v4 = *MEMORY[0x29EDC7F70];
  [v3 setAccessibilityTraits:*MEMORY[0x29EDC7F70]];

  v5 = [(SBUIPasscodeLockNumberPadAccessibility *)self safeValueForKey:@"_backspaceButton"];
  [v5 setAccessibilityTraits:*MEMORY[0x29EDC7F90] | *MEMORY[0x29EDC7FB0] | v4];

  v6 = [(SBUIPasscodeLockNumberPadAccessibility *)self safeValueForKey:@"_emergencyCallButton"];
  [v6 setAccessibilityTraits:v4];
}

@end