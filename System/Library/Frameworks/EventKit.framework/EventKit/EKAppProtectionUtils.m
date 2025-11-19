@interface EKAppProtectionUtils
+ (BOOL)isReminderAppLocked;
+ (id)reminderApApp;
@end

@implementation EKAppProtectionUtils

+ (BOOL)isReminderAppLocked
{
  v2 = [a1 reminderApApp];
  v3 = [v2 isLocked];

  return v3;
}

uint64_t __37__EKAppProtectionUtils_reminderApApp__block_invoke()
{
  reminderApApp__reminderApApp = [MEMORY[0x1E698B0D0] applicationWithBundleIdentifier:*MEMORY[0x1E6993170]];

  return MEMORY[0x1EEE66BB8]();
}

+ (id)reminderApApp
{
  if (reminderApApp_onceToken != -1)
  {
    +[EKAppProtectionUtils reminderApApp];
  }

  v3 = reminderApApp__reminderApApp;

  return v3;
}

@end