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
+ (void)setAnnounceCallsState:(int64_t)a3;
+ (void)setAnnounceMessagesEnabled:(BOOL)a3;
+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)a3;
+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)a3;
@end

@implementation HPSiriController

+ (BOOL)isSiriEnabled
{
  v2 = [(objc_class *)off_10011C330() sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

+ (BOOL)isHeySiriEnabled
{
  CFStringGetTypeID();

  v2 = [(objc_class *)off_10011C338() sharedPreferences];
  v3 = [(objc_class *)off_10011C330() sharedPreferences];
  v4 = 0;
  if ([v3 assistantIsEnabled])
  {
    v4 = [v2 voiceTriggerEnabled];
  }

  return v4;
}

+ (BOOL)isSiriAllowedWhileLocked
{
  v2 = [(objc_class *)off_10011C330() sharedPreferences];
  v3 = [v2 disableAssistantWhilePasscodeLocked];

  return v3 ^ 1;
}

+ (BOOL)isCurrentLocaleSupported
{
  v2 = [(objc_class *)off_10011C330() sharedPreferences];
  v3 = [v2 isCurrentLocaleNativelySupported];

  return v3;
}

+ (void)setHasUserSeenAnnounceMessagesOptOutScreen:(BOOL)a3
{
  if (a3)
  {
    [SFDefaults setSiriNotificationsPrompted:3];
  }
}

+ (void)setHasUserSeenAnnounceCallsOptOutScreen:(BOOL)a3
{
  if (a3)
  {
    [SFDefaults setSiriNotificationsPrompted:4];
  }
}

+ (BOOL)isAnnounceMessagesEnabled
{
  v2 = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementSetting] == 2;

  return v4;
}

+ (void)setAnnounceMessagesEnabled:(BOOL)a3
{
  v3 = a3;
  v8 = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  v4 = [v8 notificationSystemSettings];
  v5 = v4;
  if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  if ([v4 announcementSetting] != v6)
  {
    v7 = objc_alloc_init(off_10011C348());
    [v7 setAnnouncementSetting:v6];
    [v7 setShowPreviewsSetting:{objc_msgSend(v5, "showPreviewsSetting")}];
    [v8 setNotificationSystemSettings:v7];
  }
}

+ (BOOL)isAnnounceMessagesSupported
{
  v2 = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 announcementSetting] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isAnnounceEnabledForHeadphones
{
  v2 = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = [v3 announcementHeadphonesSetting];

  return v4 == 2;
}

+ (BOOL)isAnnounceSupported
{
  v2 = [(objc_class *)off_10011C340() currentNotificationSettingsCenter];
  v3 = [v2 notificationSystemSettings];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 announcementSetting] != 0;
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
  v3 = [v2 announceCalls];
  if (v3 >= 4)
  {
    v4 = sub_100004060();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF6F8(v3, v4);
    }

    v3 = 0;
  }

  return v3;
}

+ (void)setAnnounceCallsState:(int64_t)a3
{
  v4 = objc_alloc_init(off_10011C350());
  v5 = a3;
  if (a3 >= 4)
  {
    v6 = sub_100004060();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1000CF770(a3, v6);
    }

    v5 = 0;
  }

  [v4 setAnnounceCalls:v5];
  v7 = sub_100004060();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    if (a3 > 3)
    {
      v8 = @"?";
    }

    else
    {
      v8 = *(&off_1001027A8 + a3);
    }

    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Set Announce Calls state to %@\n", &v9, 0xCu);
  }
}

@end