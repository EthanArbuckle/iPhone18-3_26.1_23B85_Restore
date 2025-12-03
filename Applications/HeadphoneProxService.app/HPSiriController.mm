@interface HPSiriController
+ (BOOL)isAnnounceEnabledForHeadphones;
+ (BOOL)isAnnounceMessagesEnabled;
+ (BOOL)isAnnounceMessagesSupported;
+ (BOOL)isAnnounceSupported;
+ (BOOL)isCurrentLocaleSupported;
+ (BOOL)isHeySiriEnabled;
+ (BOOL)isSiriAllowedWhileLocked;
+ (BOOL)isSiriEnabled;
+ (int64_t)announceCallsState;
+ (void)setAnnounceCallsState:(int64_t)state;
+ (void)setAnnounceMessagesEnabled:(BOOL)enabled;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen;
@end

@implementation HPSiriController

+ (BOOL)isSiriEnabled
{
  sharedPreferences = [(objc_class *)off_10011C330() sharedPreferences];
  assistantIsEnabled = [sharedPreferences assistantIsEnabled];

  return assistantIsEnabled;
}

+ (BOOL)isHeySiriEnabled
{
  CFStringGetTypeID();

  sharedPreferences = [(objc_class *)off_10011C338() sharedPreferences];
  sharedPreferences2 = [(objc_class *)off_10011C330() sharedPreferences];
  voiceTriggerEnabled = 0;
  if ([sharedPreferences2 assistantIsEnabled])
  {
    voiceTriggerEnabled = [sharedPreferences voiceTriggerEnabled];
  }

  return voiceTriggerEnabled;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  sharedPreferences = [(objc_class *)off_10011C330() sharedPreferences];
  disableAssistantWhilePasscodeLocked = [sharedPreferences disableAssistantWhilePasscodeLocked];

  return disableAssistantWhilePasscodeLocked ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  sharedPreferences = [(objc_class *)off_10011C330() sharedPreferences];
  isCurrentLocaleNativelySupported = [sharedPreferences isCurrentLocaleNativelySupported];

  return isCurrentLocaleNativelySupported;
}

+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:3];
  }
}

+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)screen
{
  if (screen)
  {
    [SFDefaults setSiriNotificationsPrompted:4];
  }
}

+ (BOOL)isAnnounceMessagesEnabled
{
  currentNotificationSettingsCenter = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = [notificationSystemSettings announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  currentNotificationSettingsCenter = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v5 = notificationSystemSettings;
  if (enabledCopy)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ([notificationSystemSettings announcementSetting] != v6)
  {
    v7 = objc_alloc_init(off_10011C348());
    [v7 setAnnouncementSetting:v6];
    [v7 setShowPreviewsSetting:{objc_msgSend(v5, "showPreviewsSetting")}];
    [currentNotificationSettingsCenter setNotificationSystemSettings:v7];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  currentNotificationSettingsCenter = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAnnounceEnabledForHeadphones
{
  currentNotificationSettingsCenter = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];

  return announcementHeadphonesSetting == 2;
}

+ (BOOL)isAnnounceSupported
{
  currentNotificationSettingsCenter = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  notificationSystemSettings = [currentNotificationSettingsCenter notificationSystemSettings];
  v4 = notificationSystemSettings;
  if (notificationSystemSettings)
  {
    v5 = [notificationSystemSettings announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (int64_t)announceCallsState
{
  v2 = objc_alloc_init(off_10011C350());
  announceCalls = [v2 announceCalls];
  if (announceCalls >= 4)
  {
    v4 = sub_100004060();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6F8(announceCalls, v4);
    }

    announceCalls = 0;
  }

  return announceCalls;
}

+ (void)setAnnounceCallsState:(int64_t)state
{
  v4 = objc_alloc_init(off_10011C350());
  stateCopy = state;
  if (state >= 4)
  {
    v6 = sub_100004060();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF770(state, v6);
    }

    stateCopy = 0;
  }

  [v4 setAnnounceCalls:stateCopy];
  v7 = sub_100004060();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (state > 3)
    {
      v8 = @"?";
    }

    else
    {
      v8 = *(&off_1001027A8 + state);
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set Announce Calls state to %@\n", &v9, 0xCu);
  }
}

@end