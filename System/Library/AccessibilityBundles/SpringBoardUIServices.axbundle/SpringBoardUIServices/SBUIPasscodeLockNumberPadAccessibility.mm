@interface SBUIPasscodeLockNumberPadAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_configureAdditionalButtons;
@end

@implementation SBUIPasscodeLockNumberPadAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceMethod:@"_configureAdditionalButtons" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_cancelButton" withType:"SBUIButton"];
  [v3 validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_backspaceButton" withType:"SBUIButton"];
  [v3 validateClass:@"SBUIPasscodeLockNumberPad" hasInstanceVariable:@"_emergencyCallButton" withType:"SBUIButton"];
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