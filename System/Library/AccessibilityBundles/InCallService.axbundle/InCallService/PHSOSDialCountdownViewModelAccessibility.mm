@interface PHSOSDialCountdownViewModelAccessibility
- (id)_axAnnouncementString;
- (unint64_t)countdown;
@end

@implementation PHSOSDialCountdownViewModelAccessibility

- (unint64_t)countdown
{
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning() || UIAccessibilityIsAssistiveTouchRunning() || (_UIAccessibilityFullKeyboardAccessEnabled() & 1) != 0)
  {
    return 10;
  }

  v4.receiver = self;
  v4.super_class = PHSOSDialCountdownViewModelAccessibility;
  return [(PHSOSDialCountdownViewModelAccessibility *)&v4 countdown];
}

- (id)_axAnnouncementString
{
  v2 = [(PHSOSDialCountdownViewModelAccessibility *)self safeUnsignedIntegerForKey:@"countdown"];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"sos.dial.countdown.announcement");
  v5 = [v3 localizedStringWithFormat:v4, v2];

  v8 = accessibilityLocalizedString(@"sos.hint");
  v6 = __AXStringForVariables();

  return v6;
}

@end