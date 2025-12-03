@interface PSUITouchIDPasscodeControllerAccessibility
- (void)highlightFingerprintSpecifier:(id)specifier;
@end

@implementation PSUITouchIDPasscodeControllerAccessibility

- (void)highlightFingerprintSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = PSUITouchIDPasscodeControllerAccessibility;
  specifierCopy = specifier;
  [(PSUITouchIDPasscodeControllerAccessibility *)&v6 highlightFingerprintSpecifier:specifierCopy];
  v4 = *MEMORY[0x29EDC7EA8];
  name = [specifierCopy name];

  UIAccessibilityPostNotification(v4, name);
}

@end