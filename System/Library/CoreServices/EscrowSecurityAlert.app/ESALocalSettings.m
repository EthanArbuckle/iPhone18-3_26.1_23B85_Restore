@interface ESALocalSettings
- (BOOL)isNotificationDisabled;
- (BOOL)shouldAllowSnooze;
- (int)alertType;
- (void)notificationSnoozed;
- (void)reset;
@end

@implementation ESALocalSettings

- (BOOL)isNotificationDisabled
{
  v2 = CFPreferencesCopyValue(@"notificationsAllowed", @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)shouldAllowSnooze
{
  v2 = CFPreferencesCopyValue(@"thresholdLevel", @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  v3 = v2;
  v4 = !v2 || [v2 intValue];

  return v4;
}

- (void)notificationSnoozed
{
  v2 = CFPreferencesCopyValue(@"thresholdLevel", @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 intValue];

    if (v4 >= 1)
    {
      v4 = (v4 - 1);
    }
  }

  else
  {
    v4 = 1;
  }

  CFPreferencesSetValue(@"thresholdLevel", [NSNumber numberWithInt:v4], @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  CFPreferencesSynchronize(@"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

- (int)alertType
{
  v2 = CFPreferencesCopyValue(@"notificationType", @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  if (v2)
  {
    v3 = v2;
    v4 = [v2 intValue];

    LODWORD(v2) = v4;
  }

  return v2;
}

- (void)reset
{
  CFPreferencesSetValue(@"thresholdLevel", 0, @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSetValue(@"notificationsAllowed", 0, @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
  CFPreferencesSetValue(@"notificationType", 0, @"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);

  CFPreferencesSynchronize(@"com.apple.EscrowSecurityAlert", kCFPreferencesCurrentUser, kCFPreferencesCurrentHost);
}

@end