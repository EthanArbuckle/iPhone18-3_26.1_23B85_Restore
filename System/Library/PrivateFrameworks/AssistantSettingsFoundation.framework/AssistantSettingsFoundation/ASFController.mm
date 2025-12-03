@interface ASFController
+ (id)sharedController;
- (ASFController)init;
- (BOOL)alwaysShowRecognizedSpeech;
- (BOOL)assistantIsEnabled;
- (BOOL)isAnnounceNotificationEnabled;
- (BOOL)isAnnounceNotificationEnabledForApp:(id)app;
- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)platform;
- (BOOL)isCallHangUpEnabled;
- (BOOL)isLearningEnabledForApp:(id)app;
- (BOOL)isShowSuggestionsEnabledInApp:(id)app;
- (BOOL)isSpokenNotificationSkipTriggerlessReplyConfirmationEnabled;
- (BOOL)isVoiceTriggerEnabled;
- (BOOL)siriResponseShouldAlwaysPrint;
- (id)getAllNotificationAppIds;
- (id)getAllNotificationApps;
- (id)siriSuggestionClients;
- (int64_t)useDeviceSpeakerForTTS;
- (void)setAnnounceNotificationEnabled:(BOOL)enabled;
- (void)setAnnounceNotificationEnabledForApp:(id)app annouceNotificationEnabled:(BOOL)enabled;
- (void)setHardwareButtonAssistant:(BOOL)assistant;
- (void)setLearningForApp:(id)app enabled:(BOOL)enabled;
- (void)setShowSuggestionsInApp:(id)app enabled:(BOOL)enabled;
- (void)setUseDeviceSpeakerForTTS:(int64_t)s;
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
  block[4] = self;
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
    mEMORY[0x277D7A8D0] = [MEMORY[0x277D7A8D0] sharedPreferences];
    voiceTriggerPreferences = v2->_voiceTriggerPreferences;
    v2->_voiceTriggerPreferences = mEMORY[0x277D7A8D0];

    v5 = objc_alloc_init(ASFApplicationSupplier);
    applicationSupplier = v2->_applicationSupplier;
    v2->_applicationSupplier = v5;

    mEMORY[0x277CEF368] = [MEMORY[0x277CEF368] sharedPreferences];
    afPreferences = v2->_afPreferences;
    v2->_afPreferences = mEMORY[0x277CEF368];
  }

  return v2;
}

- (BOOL)assistantIsEnabled
{
  afPreferences = [(ASFController *)self afPreferences];
  assistantIsEnabled = [afPreferences assistantIsEnabled];

  return assistantIsEnabled;
}

- (BOOL)isVoiceTriggerEnabled
{
  voiceTriggerPreferences = [(ASFController *)self voiceTriggerPreferences];
  voiceTriggerEnabled = [voiceTriggerPreferences voiceTriggerEnabled];

  return voiceTriggerEnabled;
}

- (void)setHardwareButtonAssistant:(BOOL)assistant
{
  if (assistant)
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

  afPreferences = [(ASFController *)self afPreferences];
  alwaysShowRecognizedSpeech = [afPreferences alwaysShowRecognizedSpeech];

  v6 = *MEMORY[0x277D85DE8];
  return alwaysShowRecognizedSpeech;
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

  afPreferences = [(ASFController *)self afPreferences];
  siriResponseShouldAlwaysPrint = [afPreferences siriResponseShouldAlwaysPrint];

  v6 = *MEMORY[0x277D85DE8];
  return siriResponseShouldAlwaysPrint;
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

  afPreferences = [(ASFController *)self afPreferences];
  useDeviceSpeakerForTTS = [afPreferences useDeviceSpeakerForTTS];

  v6 = *MEMORY[0x277D85DE8];
  return useDeviceSpeakerForTTS;
}

- (void)setUseDeviceSpeakerForTTS:(int64_t)s
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[ASFController setUseDeviceSpeakerForTTS:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v8, 0xCu);
  }

  afPreferences = [(ASFController *)self afPreferences];
  [afPreferences setUseDeviceSpeakerForTTS:s];

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

  voiceTriggerPreferences = [(ASFController *)self voiceTriggerPreferences];
  canUseVoiceTriggerDuringPhoneCall = [voiceTriggerPreferences canUseVoiceTriggerDuringPhoneCall];

  v6 = *MEMORY[0x277D85DE8];
  return canUseVoiceTriggerDuringPhoneCall;
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

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];
  v6 = [notificationSystemSettings announcementSetting] == 2;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (void)setAnnounceNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v13 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "[ASFController setAnnounceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v11, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];
  v8 = [notificationSystemSettings mutableCopy];

  if (enabledCopy)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  [v8 setAnnouncementSetting:v9];
  [notificationSettingsCenter setNotificationSystemSettings:v8];

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

  afPreferences = [(ASFController *)self afPreferences];
  spokenNotificationSkipTriggerlessReplyConfirmation = [afPreferences spokenNotificationSkipTriggerlessReplyConfirmation];

  v6 = *MEMORY[0x277D85DE8];
  return spokenNotificationSkipTriggerlessReplyConfirmation;
}

- (BOOL)isAnnounceNotificationEnabledForPlatform:(int64_t)platform
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[ASFController isAnnounceNotificationEnabledForPlatform:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v14, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  notificationSystemSettings = [notificationSettingsCenter notificationSystemSettings];

  v8 = 0;
  if (platform > 2)
  {
    if (platform == 3)
    {
      afPreferences = [(ASFController *)self afPreferences];
      announceNotificationsOnHearingAidsEnabled = [afPreferences announceNotificationsOnHearingAidsEnabled];
    }

    else
    {
      if (platform != 4)
      {
        goto LABEL_14;
      }

      afPreferences = [(ASFController *)self afPreferences];
      announceNotificationsOnHearingAidsEnabled = [afPreferences announceNotificationsOnBuiltInSpeakerEnabled];
    }

    v8 = announceNotificationsOnHearingAidsEnabled;

    goto LABEL_14;
  }

  if (platform == 1)
  {
    announcementHeadphonesSetting = [notificationSystemSettings announcementHeadphonesSetting];
    goto LABEL_11;
  }

  if (platform == 2)
  {
    announcementHeadphonesSetting = [notificationSystemSettings announcementCarPlaySetting];
LABEL_11:
    v8 = announcementHeadphonesSetting == 2;
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
  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  allNotificationSources = [notificationSettingsCenter allNotificationSources];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = allNotificationSources;
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
          sourceIdentifier = [v12 sourceIdentifier];
          displayName = [v12 displayName];
          v16 = [(ASFApplication *)v13 initWithBundleId:sourceIdentifier localizedName:displayName];
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
  getAllNotificationApps = [(ASFController *)self getAllNotificationApps];
  v3 = [MEMORY[0x277CBEB58] setWithCapacity:{objc_msgSend(getAllNotificationApps, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = getAllNotificationApps;
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

        bundleId = [*(*(&v12 + 1) + 8 * i) bundleId];
        [v3 addObject:bundleId];
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v3;
}

- (BOOL)isAnnounceNotificationEnabledForApp:(id)app
{
  v17 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASFController isAnnounceNotificationEnabledForApp:]";
    _os_log_impl(&dword_2413AE000, v5, OS_LOG_TYPE_DEFAULT, "%s ", &v15, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  v7 = notificationSettingsCenter;
  if (appCopy && ([notificationSettingsCenter notificationSourceWithIdentifier:appCopy], (v8 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v9 = v8;
    sourceSettings = [v8 sourceSettings];
    notificationSettings = [sourceSettings notificationSettings];
    v12 = [notificationSettings announcementSetting] == 2;
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (void)setAnnounceNotificationEnabledForApp:(id)app annouceNotificationEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v18 = *MEMORY[0x277D85DE8];
  appCopy = app;
  v7 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v16 = 136315138;
    v17 = "[ASFController setAnnounceNotificationEnabledForApp:annouceNotificationEnabled:]";
    _os_log_impl(&dword_2413AE000, v7, OS_LOG_TYPE_DEFAULT, "%s ", &v16, 0xCu);
  }

  notificationSettingsCenter = [(ASFController *)self notificationSettingsCenter];
  v9 = [notificationSettingsCenter notificationSourceWithIdentifier:appCopy];
  sourceSettings = [v9 sourceSettings];
  notificationSettings = [sourceSettings notificationSettings];
  v12 = [notificationSettings mutableCopy];

  if (enabledCopy)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [v12 setAnnouncementSetting:v13];
  v14 = [v12 copy];
  [notificationSettingsCenter replaceNotificationSettings:v14 forNotificationSourceIdentifier:appCopy];

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

- (BOOL)isLearningEnabledForApp:(id)app
{
  appCopy = app;
  v4 = CFPreferencesCopyAppValue(@"SiriCanLearnFromAppBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:appCopy];

  return v5 ^ 1;
}

- (void)setLearningForApp:(id)app enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appCopy = app;
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
  if (enabledCopy)
  {
    [v7 removeObject:appCopy];
  }

  else if (([v7 containsObject:appCopy] & 1) == 0)
  {
    [v8 addObject:appCopy];
  }

  CFPreferencesSetAppValue(@"SiriCanLearnFromAppBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

- (BOOL)isShowSuggestionsEnabledInApp:(id)app
{
  appCopy = app;
  v4 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v5 = [v4 containsObject:appCopy];

  return v5 ^ 1;
}

- (void)setShowSuggestionsInApp:(id)app enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  appCopy = app;
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
  if (enabledCopy)
  {
    [v7 removeObject:appCopy];
  }

  else if (([v7 containsObject:appCopy] & 1) == 0)
  {
    [v8 addObject:appCopy];
  }

  CFPreferencesSetAppValue(@"AppCanShowSiriSuggestionsBlacklist", v8, @"com.apple.suggestions");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.suggestions.settingsChanged", 0, 0, 1u);
}

@end