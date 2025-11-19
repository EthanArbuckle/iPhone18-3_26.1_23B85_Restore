@interface PBADataRecoveryViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_pushPasscodeView;
- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4;
@end

@implementation PBADataRecoveryViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"PBADataRecoveryViewController" hasInstanceVariable:@"_firstPasscode" withType:"NSData"];
  [v3 validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"_pushPasscodeView" withFullSignature:{"v", 0}];
  [v3 validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"passcodeEntryViewControllerEntryCompleted:passcode:" withFullSignature:{"v", "@", "@", 0}];
  [v3 validateClass:@"PBADataRecoveryViewController" hasInstanceMethod:@"_homeButtonPressed:" withFullSignature:{"v", "@", 0}];
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

- (void)passcodeEntryViewControllerEntryCompleted:(id)a3 passcode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PBADataRecoveryViewControllerAccessibility *)self safeValueForKey:@"_firstPasscode"];

  v11.receiver = self;
  v11.super_class = PBADataRecoveryViewControllerAccessibility;
  [(PBADataRecoveryViewControllerAccessibility *)&v11 passcodeEntryViewControllerEntryCompleted:v7 passcode:v6];

  if (!v8)
  {
    v9 = *MEMORY[0x29EDC7EA8];
    v10 = accessibilityLocalizedString(@"verify.passcode");
    UIAccessibilityPostNotification(v9, v10);
  }
}

@end