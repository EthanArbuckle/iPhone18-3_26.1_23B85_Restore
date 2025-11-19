@interface PSUITouchIDPasscodeControllerAccessibility
- (void)highlightFingerprintSpecifier:(id)a3;
@end

@implementation PSUITouchIDPasscodeControllerAccessibility

- (void)highlightFingerprintSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = PSUITouchIDPasscodeControllerAccessibility;
  v3 = a3;
  [(PSUITouchIDPasscodeControllerAccessibility *)&v6 highlightFingerprintSpecifier:v3];
  v4 = *MEMORY[0x29EDC7EA8];
  v5 = [v3 name];

  UIAccessibilityPostNotification(v4, v5);
}

@end