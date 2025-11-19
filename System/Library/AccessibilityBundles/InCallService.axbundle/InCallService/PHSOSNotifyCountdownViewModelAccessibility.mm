@interface PHSOSNotifyCountdownViewModelAccessibility
- (id)_axAnnouncementString;
@end

@implementation PHSOSNotifyCountdownViewModelAccessibility

- (id)_axAnnouncementString
{
  v2 = [(PHSOSNotifyCountdownViewModelAccessibility *)self safeUnsignedIntegerForKey:@"countdown"];
  v3 = MEMORY[0x29EDBA0F8];
  v4 = accessibilityLocalizedString(@"sos.notify.countdown.announcement");
  v5 = [v3 localizedStringWithFormat:v4, v2];

  return v5;
}

@end