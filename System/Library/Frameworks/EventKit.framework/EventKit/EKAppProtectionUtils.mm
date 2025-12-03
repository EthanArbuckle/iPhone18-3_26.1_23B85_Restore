@interface EKAppProtectionUtils
+ (BOOL)isReminderAppLocked;
+ (id)reminderApApp;
@end

@implementation EKAppProtectionUtils

+ (BOOL)isReminderAppLocked
{
  reminderApApp = [self reminderApApp];
  isLocked = [reminderApApp isLocked];

  return isLocked;
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