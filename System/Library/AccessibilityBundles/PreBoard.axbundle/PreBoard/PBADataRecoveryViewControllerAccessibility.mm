@interface PBADataRecoveryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_pushPasscodeView;
- (void)passcodeEntryViewControllerEntryCompleted:(id)completed passcode:(id)passcode;
@end

@implementation PBADataRecoveryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"PBADataRecoveryViewController" hasInstanceVariable:@"_firstPasscode" withType:"NSData"];
  [validationsCopy validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"_pushPasscodeView" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"passcodeEntryViewControllerEntryCompleted:passcode:" withFullSignature:{"v", "@", "@", 0}];
  [validationsCopy validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"_homeButtonPressed:" withFullSignature:{"v", "@", 0}];
}

- (void)_pushPasscodeView
{
  v4.receiver = self;
  v4.super_class = PBADataRecoveryViewControllerAccessibility;
  [(PBADataRecoveryViewControllerAccessibility *)&v4 _pushPasscodeView];
  v2 = *MEMORY[0x29EDC7EA8];
  v3 = accessibilityLocalizedString(@"enter.passcode");
  UIAccessibilityPostNotification(v2, v3);
}

- (void)passcodeEntryViewControllerEntryCompleted:(id)completed passcode:(id)passcode
{
  passcodeCopy = passcode;
  completedCopy = completed;
  v8 = [(PBADataRecoveryViewControllerAccessibility *)self safeValueForKey:@"_firstPasscode"];

  v11.receiver = self;
  v11.super_class = PBADataRecoveryViewControllerAccessibility;
  [(PBADataRecoveryViewControllerAccessibility *)&v11 passcodeEntryViewControllerEntryCompleted:completedCopy passcode:passcodeCopy];

  if (!v8)
  {
    v9 = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"verify.passcode");
    UIAccessibilityPostNotification(v9, v10);
  }
}

@end