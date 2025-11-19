@interface ASFController
+ (id)sharedController;
- (ASFController)init;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)assistantIsEnabled;
- (BOOL)isAnnounceNotificationEnabled;
- (BOOL)isAnnounceNotificationEnabledForApp:(id)a3;
- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)a3;
- (BOOL)isCallHangUpEnabled;
- (BOOL)isLearningEnabledForApp:(id)a3;
- (BOOL)isShowSuggestionsEnabledInApp:(id)a3;
- (BOOL)isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled;
- (BOOL)isVoiceTriggerEnabled;
- (BOOL)siriResponseShouldAlwaysPrint;
- (id)getAllNotificationAppIds;
- (id)getAllNotificationApps;
- (id)siriSuggestionClients;
- (int64_t)useDeviceSpeakerForTTS;
- (void)setAnnounceNotificationEnabled:(BOOL)a3;
- (void)setAnnounceNotificationEnabledForApp:(id)a3 annouceNotificationEnabled:(BOOL)a4;
- (void)setHardwareButtonAssistant:(BOOL)a3;
- (void)setLearningForApp:(id)a3 enabled:(BOOL)a4;
- (void)setShowSuggestionsInApp:(id)a3 enabled:(BOOL)a4;
- (void)setUseDeviceSpeakerForTTS:(int64_t)a3;
@end

@implementation ASFController

+ (id)sharedController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v9 = "+[ASFController sharedController]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__ASFController_sharedController__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedController_onceToken_2 != -1)
  {
    dispatch_once(&sharedController_onceToken_2, block);
  }

  v4 = sharedController_sharedController_0;
  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

uint64_t __33__ASFController_sharedController__block_invoke(uint64_t a1)
{
  sharedController_sharedController_0 = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (ASFController)init
{
  v10.receiver = self;
  v10.super_class = ASFController;
  v2 = [(ASFController *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D7A8D0] sharedPreferences];
    voiceTriggerPreferences = v2->_voiceTriggerPreferences;
    v2->_voiceTriggerPreferences = v3;

    v5 = objc_alloc_init(ASFApplicationSupplier);
    applicationSupplier = v2->_applicationSupplier;
    v2->_applicationSupplier = v5;

    v7 = [MEMORY[0x277CEF368] sharedPreferences];
    afPreferences = v2->_afPreferences;
    v2->_afPreferences = v7;
  }

  return v2;
}

- (BOOL)assistantIsEnabled
{
  v2 = [(ASFController *)self afPreferences];
  v3 = [v2 assistantIsEnabled];

  return v3;
}

- (BOOL)isVoiceTriggerEnabled
{
  v2 = [(ASFController *)self voiceTriggerPreferences];
  v3 = [v2 voiceTriggerEnabled];

  return v3;
}

- (void)setHardwareButtonAssistant:(BOOL)a3
{
  if (a3)
  {
    v3 = 0;
  }

  else
  {
    v3 = 2;
  }

  MEMORY[0x2821F01E0](v3, a2);
}

- (BOOL)alwaysShowRecognizedSpeech
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController alwaysShowRecognizedSpeech]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = [(ASFController *)self afPreferences];
  v5 = [v4 alwaysShowRecognizedSpeech];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)siriResponseShouldAlwaysPrint
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController siriResponseShouldAlwaysPrint]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = [(ASFController *)self afPreferences];
  v5 = [v4 siriResponseShouldAlwaysPrint];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (int64_t)useDeviceSpeakerForTTS
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController useDeviceSpeakerForTTS]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = [(ASFController *)self afPreferences];
  v5 = [v4 useDeviceSpeakerForTTS];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)setUseDeviceSpeakerForTTS:(int64_t)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController setUseDeviceSpeakerForTTS:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v6 = [(ASFController *)self afPreferences];
  [v6 setUseDeviceSpeakerForTTS:a3];

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)isCallHangUpEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController isCallHangUpEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = [(ASFController *)self voiceTriggerPreferences];
  v5 = [v4 canUseVoiceTriggerDuringPhoneCall];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isAnnounceNotificationEnabled
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[ASFController isAnnounceNotificationEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v9, 0xCu);
  }

  v4 = [(ASFController *)self notificationSettingsCenter];
  v5 = [v4 notificationSystemSettings];
  v6 = [v5 announcementSetting] == 2;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setAnnounceNotificationEnabled:(BOOL)a3
{
  v3 = a3;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASFController setAnnounceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  v6 = [(ASFController *)self notificationSettingsCenter];
  v7 = [v6 notificationSystemSettings];
  v8 = [v7 mutableCopy];

  if (v3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v8 setAnnouncementSetting:v9];
  [v6 setNotificationSystemSettings:v8];

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  v4 = [(ASFController *)self afPreferences];
  v5 = [v4 spokenNotificationSkipTriggerlessReplyConfirmation];

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[ASFController isAnnounceNotificationEnabledForPlatform:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  v6 = [(ASFController *)self notificationSettingsCenter];
  v7 = [v6 notificationSystemSettings];

  v8 = 0;
  if (a3 > 2)
  {
    if (a3 == 3)
    {
      v10 = [(ASFController *)self afPreferences];
      v11 = [v10 announceNotificationsOnHearingAidsEnabled];
    }

    else
    {
      if (a3 != 4)
      {
        goto LABEL_14;
      }

      v10 = [(ASFController *)self afPreferences];
      v11 = [v10 announceNotificationsOnBuiltInSpeakerEnabled];
    }

    v8 = v11;

    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v9 = [v7 announcementHeadphonesSetting];
    goto LABEL_11;
  }

  if (a3 == 2)
  {
    v9 = [v7 announcementCarPlaySetting];
LABEL_11:
    v8 = v9 == 2;
  }

LABEL_14:

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)getAllNotificationApps
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v25 = "[ASFController getAllNotificationApps]";
    _os_log_impl(&dword_2413AE000, v3, OS_LOG_TYPE_DEFAULT, "%s ", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [(ASFController *)self notificationSettingsCenter];
  v6 = [v5 allNotificationSources];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        if (([v12 isHiddenFromSettings] & 1) == 0)
        {
          v13 = [ASFApplication alloc];
          v14 = [v12 sourceIdentifier];
          v15 = [v12 displayName];
          v16 = [(ASFApplication *)v13 initWithBundleId:v14 localizedName:v15];
          [v4 addObject:v16];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }

  v17 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)getAllNotificationAppIds
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [(ASFController *)self getAllNotificationApps];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(v2, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) bundleId];
        [v3 addObject:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isAnnounceNotificationEnabledForApp:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASFController isAnnounceNotificationEnabledForApp:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  v6 = [(ASFController *)self notificationSettingsCenter];
  v7 = v6;
  if (v4 && ([v6 notificationSourceWithIdentifier:v4], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    v10 = [v8 sourceSettings];
    v11 = [v10 notificationSettings];
    v12 = [v11 announcementSetting] == 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)setAnnounceNotificationEnabledForApp:(id)a3 annouceNotificationEnabled:(BOOL)a4
{
  v4 = a4;
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ASFController setAnnounceNotificationEnabledForApp:annouceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  v8 = [(ASFController *)self notificationSettingsCenter];
  v9 = [v8 notificationSourceWithIdentifier:v6];
  v10 = [v9 sourceSettings];
  v11 = [v10 notificationSettings];
  v12 = [v11 mutableCopy];

  if (v4)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 setAnnouncementSetting:v13];
  v14 = [v12 copy];
  [v8 replaceNotificationSettings:v14 forNotificationSourceIdentifier:v6];

  v15 = *MEMORY[0x277D85DE8];
}

- (id)siriSuggestionClients
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"com.apple.store.Jolly", @"com.apple.mobilecal", @"com.apple.MobileAddressBook", @"com.apple.Home", @"com.apple.mobilemail", @"com.apple.Maps", @"com.apple.MobileSMS", @"com.apple.news", @"com.apple.mobilephone", @"com.apple.podcasts", @"com.apple.reminders", @"com.apple.mobilesafari", @"com.apple.tips", @"com.apple.iBooks", @"com.apple.Fitness", 0}];
  v4 = [MEMORY[0x277CBEB58] set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [(ASFApplicationSupplier *)self->_applicationSupplier applicationForBundleId:*(*(&v13 + 1) + 8 * i)];
        if (v10)
        {
          [v4 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v4;
}

- (BOOL)isLearningEnabledForApp:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)setLearningForApp:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v5 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (v4)
  {
    [v7 removeObject:v10];
  }

  else if (([v7 containsObject:v10] & 1) == 0)
  {
    [v8 addObject:v10];
  }

  CFPreferencesSetAppValue(@"SiriCanLearnFromAppBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (BOOL)isShowSuggestionsEnabledInApp:(id)a3
{
  v3 = a3;
  v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:v3];

  return v5 ^ 1;
}

- (void)setShowSuggestionsInApp:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v5 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v6 = v5;
  if (v5)
  {
    v7 = [v5 mutableCopy];
  }

  else
  {
    v7 = objc_opt_new();
  }

  v8 = v7;
  if (v4)
  {
    [v7 removeObject:v10];
  }

  else if (([v7 containsObject:v10] & 1) == 0)
  {
    [v8 addObject:v10];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

@end