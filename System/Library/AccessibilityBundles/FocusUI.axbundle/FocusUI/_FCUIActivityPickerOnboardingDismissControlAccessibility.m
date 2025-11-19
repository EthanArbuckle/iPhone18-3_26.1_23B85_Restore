@interface _FCUIActivityPickerOnboardingDismissControlAccessibility
- (BOOL)accessibilityActivate;
@end

@implementation _FCUIActivityPickerOnboardingDismissControlAccessibility

- (BOOL)accessibilityActivate
{
  v4.receiver = self;
  v4.super_class = _FCUIActivityPickerOnboardingDismissControlAccessibility;
  v2 = [(_FCUIActivityPickerOnboardingDismissControlAccessibility *)&v4 accessibilityActivate];
  if (v2)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
  }

  return v2;
}

@end