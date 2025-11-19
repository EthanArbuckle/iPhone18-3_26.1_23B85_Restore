@interface EKUIDebugPreferences
+ (id)shared;
- (EKUIDebugPreferences)init;
@end

@implementation EKUIDebugPreferences

+ (id)shared
{
  if (shared_onceToken_0 != -1)
  {
    +[EKUIDebugPreferences shared];
  }

  v3 = shared_sharedPreferences;

  return v3;
}

void __30__EKUIDebugPreferences_shared__block_invoke()
{
  v0 = objc_alloc_init(EKUIDebugPreferences);
  v1 = shared_sharedPreferences;
  shared_sharedPreferences = v0;
}

- (EKUIDebugPreferences)init
{
  v7.receiver = self;
  v7.super_class = EKUIDebugPreferences;
  v2 = [(EKUIDebugPreferences *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x1E6993020]);
    v4 = [v3 initWithDomain:*MEMORY[0x1E6993168]];
    preferences = v2->_preferences;
    v2->_preferences = v4;

    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkitui.debug.preference.notification.showInviteesAndMoreRegion"];
    [(CalPreferences *)v2->_preferences registerReflectionForPreferenceWithNotificationName:@"com.apple.eventkitui.debug.preference.notification.showReportAProblemNotificationButton"];
  }

  return v2;
}

@end