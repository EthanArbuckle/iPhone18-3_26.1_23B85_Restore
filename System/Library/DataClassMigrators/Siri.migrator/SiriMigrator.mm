@interface SiriMigrator
- (BOOL)performMigration;
- (void)_cleanupBundleCaches;
- (void)_cleanupiOS9PhotoAlbumData;
- (void)_performATVDictationMigration;
- (void)_performAlwaysPrintOverrideMigration;
- (void)_performAppleAccountMigration;
- (void)_performAudioFeedbackMigration;
- (void)_performBootstrapSpeechIdMigration;
- (void)_performCarPlayAnnounceMigrationIfNeeded;
- (void)_performDictationMigration;
- (void)_performHomePodCensorSettingsMigration;
- (void)_performInternalToBackedUpMigration;
- (void)_performLoggingMigration;
- (void)_performOutputVoiceMigration;
- (void)_performSessionLanguageMigration;
- (void)_performSiriDataSharingMigrationIfNeeded;
- (void)_performVoiceNameMigration;
- (void)_performVoiceServicesLanguageMigration;
- (void)_removeOfflineMetrics;
- (void)_removeTokenDomain;
@end

@implementation SiriMigrator

- (void)_performHomePodCensorSettingsMigration
{
  if (AFIsHorseman())
  {
    v2 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SiriMigrator _performHomePodCensorSettingsMigration]";
      _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v4, 0xCu);
    }

    if (_AFPreferencesClearShouldCensorSpeechInternal())
    {
      AFBackedUpPreferencesSynchronize();
    }

    v3 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v4 = 136315138;
      v5 = "[SiriMigrator _performHomePodCensorSettingsMigration]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s Complete", &v4, 0xCu);
    }
  }
}

- (void)_performAppleAccountMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SiriMigrator _performAppleAccountMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v8, 0xCu);
  }

  v3 = objc_alloc_init(ACAccountStore);
  v4 = [v3 aa_primaryAppleAccount];
  if (v4)
  {
    v5 = +[AFPreferences sharedPreferences];
    v6 = [v5 cloudSyncEnabled];
    [v4 setEnabled:v6 forDataclass:kAccountDataclassSiri];
    [v5 setCloudSyncEnabled:v6];
    [v3 saveAccount:v4 withCompletionHandler:0];
  }

  v7 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315138;
    v9 = "[SiriMigrator _performAppleAccountMigration]";
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, "%s Complete", &v8, 0xCu);
  }
}

- (void)_removeOfflineMetrics
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _removeOfflineMetrics]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v9, 0xCu);
  }

  v3 = NSHomeDirectoryForUser(@"mobile");
  v4 = [v3 stringByAppendingPathComponent:@"Library"];
  v5 = [v4 stringByAppendingPathComponent:@"Assistant"];
  v6 = [v5 stringByAppendingPathComponent:@"SiriMetrics"];

  v7 = +[NSFileManager defaultManager];
  [v7 removeItemAtPath:v6 error:0];

  v8 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _removeOfflineMetrics]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Complete", &v9, 0xCu);
  }
}

- (void)_cleanupiOS9PhotoAlbumData
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _cleanupiOS9PhotoAlbumData]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v10, 0xCu);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = NSHomeDirectoryForUser(@"mobile");
  v5 = [v4 stringByAppendingPathComponent:@"Library/Siri"];
  v6 = [v5 stringByAppendingString:@"/"];
  [v3 removeItemAtPath:v6 error:0];

  v7 = NSHomeDirectoryForUser(@"mobile");
  v8 = [v7 stringByAppendingPathComponent:@"Library/Assistant/SynapseBundleIDRegistry.plist"];
  [v3 removeItemAtPath:v8 error:0];

  v9 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _cleanupiOS9PhotoAlbumData]";
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s Complete", &v10, 0xCu);
  }
}

- (void)_removeTokenDomain
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _removeTokenDomain]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v9, 0xCu);
  }

  v3 = NSHomeDirectoryForUser(@"mobile");
  v4 = [v3 stringByAppendingPathComponent:@"Library"];
  v5 = [v4 stringByAppendingPathComponent:@"Preferences"];
  v6 = [v5 stringByAppendingPathComponent:@"com.apple.assistant.token.plist"];

  v7 = +[NSFileManager defaultManager];
  [v7 removeItemAtPath:v6 error:0];

  v8 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _removeTokenDomain]";
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Complete", &v9, 0xCu);
  }
}

- (void)_cleanupBundleCaches
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _cleanupBundleCaches]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v10, 0xCu);
  }

  v3 = +[NSFileManager defaultManager];
  v4 = NSHomeDirectoryForUser(@"mobile");
  v5 = [v4 stringByAppendingPathComponent:@"Library"];
  v6 = [v5 stringByAppendingPathComponent:@"Caches"];

  v7 = [v6 stringByAppendingPathComponent:@"com.apple.siri.bundleservicecache.plist"];
  [v3 removeItemAtPath:v7 error:0];
  v8 = [v6 stringByAppendingPathComponent:@"com.apple.siri.PresentationPluginCache.plist"];
  [v3 removeItemAtPath:v8 error:0];
  v9 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _cleanupBundleCaches]";
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_INFO, "%s Complete", &v10, 0xCu);
  }
}

- (void)_performAudioFeedbackMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _performAudioFeedbackMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v10, 0xCu);
  }

  v3 = _AFBackedUpPreferencesValueForKey();

  if (v3)
  {
    v4 = sub_1708();
    if ([v4 compare:@"14.0" options:64] == -1)
    {
      v6 = AFProductVersion();
      v7 = [v6 compare:@"14.0" options:64];

      if (v7 != -1)
      {
        v8 = _AFBackedUpPreferencesValueForKey();
        v9 = [v8 integerValue];

        if (v9 == &dword_0 + 2)
        {
          _AFBackedUpPreferencesSetValueForKey();
          AFBackedUpPreferencesSynchronize();
        }
      }
    }

    else
    {
    }
  }

  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _performAudioFeedbackMigration]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Complete", &v10, 0xCu);
  }
}

- (void)_performATVDictationMigration
{
  v2 = AFIsATV();
  v3 = AFSiriLogContextUtility;
  v4 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if (v2)
  {
    if (v4)
    {
      v11 = 136315138;
      v12 = "[SiriMigrator _performATVDictationMigration]";
      _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s Starting", &v11, 0xCu);
    }

    v5 = sub_1708();
    if ([v5 compare:@"9.2" options:64] == -1)
    {
      v6 = AFProductVersion();
      v7 = [v6 compare:@"9.2" options:64];

      if (v7 == -1)
      {
LABEL_8:
        v8 = +[AFPreferences sharedPreferences];
        [v8 _setSuppressDictationOptInLocal:1];

        v9 = +[AFPreferences sharedPreferences];
        [v9 synchronize];

        v3 = AFSiriLogContextUtility;
        if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          return;
        }

        v11 = 136315138;
        v12 = "[SiriMigrator _performATVDictationMigration]";
        v10 = "%s Complete";
        goto LABEL_12;
      }

      v5 = +[AFPreferences sharedPreferences];
      [v5 _setDictationIsEnabledLocal:0];
    }

    goto LABEL_8;
  }

  if (!v4)
  {
    return;
  }

  v11 = 136315138;
  v12 = "[SiriMigrator _performATVDictationMigration]";
  v10 = "%s Device is not ATV. Skipping.";
LABEL_12:
  _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, v10, &v11, 0xCu);
}

- (void)_performVoiceNameMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[SiriMigrator _performVoiceNameMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v24, 0xCu);
  }

  v3 = +[AFPreferences sharedPreferences];
  v4 = [v3 outputVoice];

  if (v4)
  {
    v5 = +[AFLocalization sharedInstance];
    v6 = [v4 languageCode];
    v7 = [v5 voiceNamesForOutputLanguageCode:v6 gender:{objc_msgSend(v4, "gender")}];

    v8 = [v4 name];
    if (!v8 || ![v7 containsObject:v8])
    {
      v9 = [v7 firstObject];
      v10 = AFSiriLogContextUtility;
      if (v9)
      {
        v11 = v9;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          v24 = 136315650;
          v25 = "[SiriMigrator _performVoiceNameMigration]";
          v26 = 2112;
          v27 = v8;
          v28 = 2112;
          v29 = v11;
          _os_log_impl(&dword_0, v10, OS_LOG_TYPE_INFO, "%s Updating voice name for output voice from '%@' to '%@'", &v24, 0x20u);
        }

        v12 = sub_1DA0(v4, v11);

        _AFPreferencesSetOutputVoice();
        AFBackedUpPreferencesSynchronize();
        v4 = v12;
        goto LABEL_13;
      }

      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
      {
        v24 = 136315394;
        v25 = "[SiriMigrator _performVoiceNameMigration]";
        v26 = 2112;
        v27 = v4;
        _os_log_error_impl(&dword_0, v10, OS_LOG_TYPE_ERROR, "%s Could not find a voice name for output voice %@", &v24, 0x16u);
      }
    }
  }

LABEL_13:
  v13 = +[AFPreferences sharedPreferences];
  v14 = [v13 inProgressOutputVoice];

  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = +[AFLocalization sharedInstance];
  v16 = [v14 languageCode];
  v17 = [v15 voiceNamesForOutputLanguageCode:v16 gender:{objc_msgSend(v14, "gender")}];

  v18 = [v14 name];
  if (v18 && [v17 containsObject:v18])
  {
    goto LABEL_22;
  }

  v19 = [v17 firstObject];
  v20 = AFSiriLogContextUtility;
  if (!v19)
  {
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_ERROR))
    {
      v24 = 136315394;
      v25 = "[SiriMigrator _performVoiceNameMigration]";
      v26 = 2112;
      v27 = v14;
      _os_log_error_impl(&dword_0, v20, OS_LOG_TYPE_ERROR, "%s Could not find a voice name for in progress voice %@", &v24, 0x16u);
    }

LABEL_22:

    goto LABEL_23;
  }

  v21 = v19;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v24 = 136315650;
    v25 = "[SiriMigrator _performVoiceNameMigration]";
    v26 = 2112;
    v27 = v18;
    v28 = 2112;
    v29 = v21;
    _os_log_impl(&dword_0, v20, OS_LOG_TYPE_INFO, "%s Updating voice name for in progress voice from '%@' to '%@'", &v24, 0x20u);
  }

  v22 = sub_1DA0(v14, v21);

  _AFPreferencesSetInProgressOutputVoice();
  v14 = v22;
LABEL_23:
  v23 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v24 = 136315138;
    v25 = "[SiriMigrator _performVoiceNameMigration]";
    _os_log_impl(&dword_0, v23, OS_LOG_TYPE_INFO, "%s Complete", &v24, 0xCu);
  }
}

- (void)_performDictationMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v37 = 136315138;
    v38 = "[SiriMigrator _performDictationMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v37, 0xCu);
  }

  if (AFIsHorseman())
  {
    v3 = +[AFPreferences sharedPreferences];
    [v3 _setDictationIsEnabledLocal:0];
    [v3 synchronize];
    v4 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v37 = 136315138;
      v38 = "[SiriMigrator _performDictationMigration]";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Complete for HomePod", &v37, 0xCu);
    }

    goto LABEL_33;
  }

  v5 = AFIsNano();
  v6 = sub_1708();
  v7 = v6;
  if (v5)
  {
    if ([v6 compare:@"6.0" options:64] == -1)
    {
      v8 = AFProductVersion();
      v9 = [v8 compare:@"6.0" options:64];

      if (v9 == -1)
      {
        goto LABEL_18;
      }

      v7 = +[AFPreferences sharedPreferences];
      if (([v7 dictationIsEnabled] & 1) == 0 && objc_msgSend(v7, "assistantIsEnabled"))
      {
        [v7 _setDictationIsEnabledLocal:1];
        [v7 synchronize];
      }
    }

    goto LABEL_17;
  }

  if ([v6 compare:@"8.3" options:64] != -1)
  {
    goto LABEL_13;
  }

  v31 = AFProductVersion();
  v32 = [v31 compare:@"8.3" options:64];

  if (v32 != -1)
  {
    v33 = +[AFPreferences sharedPreferences];
    v34 = [v33 dictationIsEnabled];

    if ((v34 & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"UIKeyboardSupressDictationOptIn", kCFPreferencesAnyApplication, 0))
    {
      v35 = +[AFPreferences sharedPreferences];
      v36 = +[AFPreferences sharedPreferences];
      [v35 _setDictationIsEnabledLocal:{objc_msgSend(v36, "assistantIsEnabled")}];

      v7 = +[AFPreferences sharedPreferences];
      [v7 synchronize];
LABEL_13:
    }
  }

  v7 = sub_1708();
  if ([v7 compare:@"13.4.1" options:64] == -1)
  {
    v10 = AFProductVersion();
    v11 = [v10 compare:@"13.4.1" options:64];

    if (v11 == -1)
    {
      goto LABEL_18;
    }

    v7 = +[AFPreferences sharedPreferences];
    [v7 setDictationSLSLanguagesEnabled:0];
  }

LABEL_17:

LABEL_18:
  if (AFIsATV())
  {
    goto LABEL_23;
  }

  v12 = sub_1708();
  if ([v12 compare:@"10.0" options:64] == -1)
  {
    v13 = AFProductVersion();
    v14 = [v13 compare:@"10.0" options:64];

    if (v14 == -1)
    {
      goto LABEL_23;
    }

    v15 = CFPreferencesGetAppBooleanValue(@"UIKeyboardSupressDictationOptIn", kCFPreferencesAnyApplication, 0) != 0;
    CFPreferencesSetAppValue(@"UIKeyboardSupressDictationOptIn", 0, kCFPreferencesAnyApplication);
    CFPreferencesAppSynchronize(kCFPreferencesAnyApplication);
    v12 = +[AFPreferences sharedPreferences];
    [v12 _setSuppressDictationOptInLocal:v15];
  }

LABEL_23:
  v16 = kAFUIKitDictationEnabledKey;
  v3 = [[NSUserDefaults alloc] initWithSuiteName:kAFUIKitPreferencesDomain];
  v17 = [v3 BOOLForKey:v16];
  v18 = +[AFPreferences sharedPreferences];
  v19 = [v18 dictationIsEnabled];

  if (v17 != v19)
  {
    v20 = +[AFPreferences sharedPreferences];
    [v20 _setDictationIsEnabledLocal:v19];

    v21 = +[AFPreferences sharedPreferences];
    [v21 synchronize];
  }

  v22 = _AFSupportPreferencesBoolValueForKey();
  if (!v22)
  {
    v27 = +[AFPreferences sharedPreferences];
    v28 = AFPreferencesDictationAllowed();
    v26 = v27;
    goto LABEL_29;
  }

  v23 = [v3 BOOLForKey:kAFUIKitDictationAllowedKey];
  v24 = [v22 BOOLValue];
  if (v23 != v24)
  {
    v25 = v24;
    v26 = +[AFPreferences sharedPreferences];
    v27 = v26;
    v28 = v25;
LABEL_29:
    [v26 _setDictationIsAllowed:v28];

    v29 = +[AFPreferences sharedPreferences];
    [v29 synchronize];
  }

  v30 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v37 = 136315138;
    v38 = "[SiriMigrator _performDictationMigration]";
    _os_log_impl(&dword_0, v30, OS_LOG_TYPE_INFO, "%s Complete", &v37, 0xCu);
  }

LABEL_33:
}

- (void)_performBootstrapSpeechIdMigration
{
  v2 = +[AFPreferences sharedPreferences];
  v3 = [v2 assistantIsEnabled];

  v4 = AFSiriLogContextUtility;
  v5 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if ((v3 & 1) == 0)
  {
    if (!v5)
    {
      return;
    }

    v9 = 136315138;
    v10 = "[SiriMigrator _performBootstrapSpeechIdMigration]";
    v8 = "%s Assistant is not enabled. Skipping.";
    goto LABEL_10;
  }

  if (v5)
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _performBootstrapSpeechIdMigration]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Starting", &v9, 0xCu);
  }

  v6 = CFPreferencesCopyAppValue(@"Bootstrap Speech Identifier", @"com.apple.siri.backedup.encrypted");
  if (v6)
  {
    v7 = v6;
    CFPreferencesSetAppValue(@"Bootstrap Speech Identifier", 0, @"com.apple.siri.backedup.encrypted");
    CFPreferencesAppSynchronize(@"com.apple.siri.backedup.encrypted");
    CFRelease(v7);
  }

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v9 = 136315138;
    v10 = "[SiriMigrator _performBootstrapSpeechIdMigration]";
    v8 = "%s Complete";
LABEL_10:
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, v8, &v9, 0xCu);
  }
}

- (void)_performSessionLanguageMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SiriMigrator _performSessionLanguageMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v5, 0xCu);
  }

  v3 = +[AFPreferences sharedPreferences];
  if (([v3 assistantIsEnabled] & 1) == 0)
  {
    [v3 resetSessionLanguage];
  }

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SiriMigrator _performSessionLanguageMigration]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Complete", &v5, 0xCu);
  }
}

- (void)_performVoiceServicesLanguageMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SiriMigrator _performVoiceServicesLanguageMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v5, 0xCu);
  }

  v3 = +[AFPreferences sharedPreferences];
  if ([v3 assistantIsEnabled])
  {
    [v3 synchronizeVoiceServicesLanguageCode];
  }

  v4 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v5 = 136315138;
    v6 = "[SiriMigrator _performVoiceServicesLanguageMigration]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Complete", &v5, 0xCu);
  }
}

- (void)_performAlwaysPrintOverrideMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SiriMigrator _performAlwaysPrintOverrideMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v7, 0xCu);
  }

  v3 = sub_1708();
  if ([v3 compare:@"14.0" options:64] == -1)
  {
    v4 = AFProductVersion();
    v5 = [v4 compare:@"14.0" options:64];

    if (v5 != -1)
    {
      AFPreferencesTypeToSiriEnabled();
      _AFPreferencesSetSiriResponseShouldAlwaysPrintOverride();
    }
  }

  else
  {
  }

  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v7 = 136315138;
    v8 = "[SiriMigrator _performAlwaysPrintOverrideMigration]";
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s Complete", &v7, 0xCu);
  }
}

- (void)_performOutputVoiceMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SiriMigrator _performOutputVoiceMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v18, 0xCu);
  }

  v3 = _AFPreferencesOutputVoice();

  if (!v3)
  {
    v4 = _AFPreferencesLanguageCode();
    if (v4)
    {
      v5 = [AFVoiceInfo alloc];
      v6 = AFOutputVoiceLanguageForRecognitionLanguage();
      v7 = [v5 initWithLanguageCode:v6 gender:0 isCustom:1];

      _AFPreferencesSetOutputVoice();
      AFBackedUpPreferencesSynchronize();
    }
  }

  v8 = sub_1708();
  v9 = [v8 compare:@"13.0" options:64];

  if (v9 == -1)
  {
    v10 = _AFPreferencesLanguageCode();
    if ([v10 isEqualToString:@"en-IN"])
    {
      v11 = _AFPreferencesOutputVoice();
      v12 = [v11 languageCode];
      v13 = [v12 isEqualToString:@"en-GB"];

      if (v13)
      {
        v14 = [AFVoiceInfo alloc];
        v15 = AFOutputVoiceLanguageForRecognitionLanguage();
        v16 = [v14 initWithLanguageCode:v15 gender:objc_msgSend(v11 isCustom:{"gender"), 1}];

        _AFPreferencesSetOutputVoice();
        AFBackedUpPreferencesSynchronize();
      }
    }
  }

  v17 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v18 = 136315138;
    v19 = "[SiriMigrator _performOutputVoiceMigration]";
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "%s Complete", &v18, 0xCu);
  }
}

- (void)_performLoggingMigration
{
  v2 = AFIsInternalInstall();
  v3 = AFSiriLogContextUtility;
  v4 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if ((v2 & 1) == 0)
  {
    if (!v4)
    {
      return;
    }

    v10 = 136315138;
    v11 = "[SiriMigrator _performLoggingMigration]";
    v9 = "%s Device is not internal install. Skipping.";
    goto LABEL_13;
  }

  if (v4)
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _performLoggingMigration]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%s Starting", &v10, 0xCu);
  }

  v5 = kAFLogPreferencesDomain;
  v6 = CFPreferencesCopyAppValue(@"AFSpeechLoggingEnabled", kAFLogPreferencesDomain);
  if (v6)
  {
    v7 = v6;
    CFPreferencesSetAppValue(@"AFSpeechLoggingEnabled", 0, v5);
    v8 = +[AFPreferences sharedPreferences];
    if ([v7 BOOLValue])
    {
      if (([v8 fileLoggingIsEnabled] & 1) == 0)
      {
        [v8 setFileLoggingIsEnabled:1];
      }
    }

    CFRelease(v7);

    CFPreferencesAppSynchronize(v5);
  }

  v3 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v10 = 136315138;
    v11 = "[SiriMigrator _performLoggingMigration]";
    v9 = "%s Complete";
LABEL_13:
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, v9, &v10, 0xCu);
  }
}

- (void)_performInternalToBackedUpMigration
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SiriMigrator _performInternalToBackedUpMigration]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", buf, 0xCu);
  }

  v6 = 0;
  sub_2F44(kAFHandsFreeModeKey, &v6 + 1, &v6);
  sub_2F44(kAFSessionLanguage, &v6 + 1, &v6);
  sub_2F44(kAFOutputVoice, &v6 + 1, &v6);
  v3 = AFPreferencesDefaultsDeleteTypeToSiriSetting();
  if (v3)
  {
    v4 = _AFBackedUpPreferencesValueForKey();

    if (!v4)
    {
      _AFBackedUpPreferencesSetValueForKey();
      HIBYTE(v6) = 1;
    }
  }

  sub_2F44(kAFAnnounceNotificationsOnBuiltInSpeaker, &v6 + 1, &v6);
  sub_2F44(kAFAnnounceNotificationsOnHearingAids, &v6 + 1, &v6);
  sub_2F44(kAFMessageWithoutConfirmationKey, &v6 + 1, &v6);
  sub_2F44(kAFMessageWithoutConfirmationInCarPlayKey, &v6 + 1, &v6);
  sub_2F44(kAFMessageWithoutConfirmationHeadphonesPlayKey, &v6 + 1, &v6);
  if (HIBYTE(v6) == 1)
  {
    AFBackedUpPreferencesSynchronize();
  }

  if (v6 == 1)
  {
    AFInternalPreferencesSynchronize();
  }

  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    *buf = 136315138;
    v8 = "[SiriMigrator _performInternalToBackedUpMigration]";
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Complete", buf, 0xCu);
  }
}

- (void)_performSiriDataSharingMigrationIfNeeded
{
  if (_AFPreferencesSiriDataSharingOptInStatus() != 1)
  {
    v8 = AFSiriLogContextUtility;
    if (!os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v28 = 136315138;
    v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
    v6 = "%s Device is not opted in to data sharing.";
    goto LABEL_7;
  }

  v3 = +[AFFeatureFlags isSiriDataSharingRepromptEnabled];
  v4 = AFSiriLogContextUtility;
  v5 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (!v5)
    {
      return;
    }

    v28 = 136315138;
    v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
    v6 = "%s Skipping siri data sharing migration. Reprompt is enabled.";
    v7 = v4;
    goto LABEL_8;
  }

  if (v5)
  {
    v28 = 136315138;
    v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Reprompt is disabled. Continuing with siri data sharing migration.", &v28, 0xCu);
  }

  v9 = DMGetUserDataDisposition();
  if (v9 != 4)
  {
    if (v9 == 2)
    {
      v10 = sub_1708();
      if ((AFShouldOptOutDataSharingForMigrationFromProductVersion() & 1) == 0)
      {
        v24 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          v28 = 136315138;
          v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
          _os_log_impl(&dword_0, v24, OS_LOG_TYPE_INFO, "%s Device is upgrading from a sufficiently new iOS build.", &v28, 0xCu);
        }

        goto LABEL_40;
      }
    }

LABEL_16:
    if (AFIsHorseman())
    {
      v8 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        v28 = 136315138;
        v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
        v6 = "%s Device is a HomePod. Exiting early..";
LABEL_7:
        v7 = v8;
LABEL_8:
        _os_log_impl(&dword_0, v7, OS_LOG_TYPE_INFO, v6, &v28, 0xCu);
        return;
      }

      return;
    }

    v13 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.purplebuddy"];
    v10 = [v13 objectForKey:@"SetupLastExit"];

    v14 = objc_alloc_init(NSDateComponents);
    v15 = AFIsInternalInstall();
    if (v15)
    {
      v16 = 2020;
    }

    else
    {
      v16 = 2021;
    }

    if (v15)
    {
      v17 = 10;
    }

    else
    {
      v17 = 6;
    }

    if (v15)
    {
      v18 = 0;
    }

    else
    {
      v18 = 6;
    }

    [v14 setYear:v16];
    [v14 setMonth:v17];
    [v14 setDay:v18];
    [v14 setHour:0];
    [v14 setMinute:0];
    v19 = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    v20 = [v19 dateFromComponents:v14];

    v21 = [v10 compare:v20];
    v22 = AFSiriLogContextUtility;
    v23 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
    if (v21 == -1)
    {
      if (v23)
      {
        v25 = v22;
        v26 = AFIsATV();
        v27 = @"iOS";
        if (v26)
        {
          v27 = @"tvOS";
        }

        v28 = 136315394;
        v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
        v30 = 2112;
        v31 = v27;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_INFO, "%s Device has not seen setup on %@ 15.", &v28, 0x16u);
      }
    }

    else
    {
      if (v23)
      {
        v28 = 136315138;
        v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_INFO, "%s Migrate Siri Data Sharing status.", &v28, 0xCu);
      }

      _AFPreferencesSetSiriDataSharingOptInStatus();
      _AFPreferencesSetPhoneOptedOut2021();
    }

LABEL_40:

    return;
  }

  v11 = [(SiriMigrator *)self restoredBackupBuildVersion];
  v12 = AFShouldOptOutDataSharingForMigrationFromBuildVersion();

  if (v12)
  {
    goto LABEL_16;
  }

  v8 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v28 = 136315138;
    v29 = "[SiriMigrator _performSiriDataSharingMigrationIfNeeded]";
    v6 = "%s Device is restoring from a sufficiently new iOS build.";
    goto LABEL_7;
  }
}

- (void)_performCarPlayAnnounceMigrationIfNeeded
{
  v2 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "%s Starting", &v17, 0xCu);
  }

  v3 = CFPreferencesCopyAppValue(@"BBAnnounceCarPlaySetting", @"com.apple.bulletinboard");
  v4 = AFSiriLogContextUtility;
  v5 = os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v5)
    {
      v17 = 136315394;
      v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
      v19 = 2112;
      v20 = @"BBAnnounceCarPlaySetting";
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s User has previously set %@. No migration needed.", &v17, 0x16u);
    }
  }

  else
  {
    if (v5)
    {
      v17 = 136315650;
      v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
      v19 = 2112;
      v20 = @"BBAnnounceCarPlaySetting";
      v21 = 2112;
      v22 = &off_8788;
      _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "%s Setting %@ to %@", &v17, 0x20u);
    }

    CFPreferencesSetAppValue(@"BBAnnounceCarPlaySetting", &off_8788, @"com.apple.bulletinboard");
    v6 = CFPreferencesCopyAppValue(@"BBAnnounceSetting", @"com.apple.bulletinboard");
    v7 = v6;
    if (v6 && [v6 integerValue] != &dword_0 + 2)
    {
      v8 = AFSiriLogContextUtility;
      if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
      {
        v17 = 136315650;
        v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
        v19 = 2112;
        v20 = @"BBAnnounceSetting";
        v21 = 2112;
        v22 = &off_87A0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_INFO, "%s Global announce is not enabled. Setting %@ to %@", &v17, 0x20u);
      }

      CFPreferencesSetAppValue(@"BBAnnounceSetting", &off_87A0, @"com.apple.bulletinboard");
      v9 = CFPreferencesCopyAppValue(@"BBAnnounceSupportedForHeadPhones", @"com.apple.bulletinboard");
      v10 = CFPreferencesCopyAppValue(@"BBAnnounceHeadphonesSetting", @"com.apple.bulletinboard");
      if (v9 && [v9 BOOLValue] && !v10)
      {
        v11 = AFSiriLogContextUtility;
        if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
        {
          v17 = 136315650;
          v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
          v19 = 2112;
          v20 = @"BBAnnounceHeadphonesSetting";
          v21 = 2112;
          v22 = &off_87B8;
          _os_log_impl(&dword_0, v11, OS_LOG_TYPE_INFO, "%s User has paired headphones, but disabled the global announce toggle. Setting %@ = %@ so they don't start getting headphone announcements.", &v17, 0x20u);
        }

        CFPreferencesSetAppValue(@"BBAnnounceHeadphonesSetting", &off_87B8, @"com.apple.bulletinboard");
      }
    }

    CFPreferencesAppSynchronize(@"com.apple.bulletinboard");
  }

  v12 = kAFAnnounceNotificationsInCarPlayType;
  v13 = _AFPreferencesValueForKey();
  v14 = [v13 integerValue];

  if (v14)
  {
    v15 = AFSiriLogContextUtility;
    if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
    {
      v17 = 136315650;
      v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
      v19 = 2112;
      v20 = v12;
      v21 = 2048;
      v22 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_INFO, "%s Migrating %@ to the backed up preferences domain. Setting value to %ld", &v17, 0x20u);
    }

    _AFPreferencesSetAnnounceNotificationsInCarPlayType();
    _AFPreferencesSetValueForKey();
  }

  v16 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v17 = 136315138;
    v18 = "[SiriMigrator _performCarPlayAnnounceMigrationIfNeeded]";
    _os_log_impl(&dword_0, v16, OS_LOG_TYPE_INFO, "%s Completed", &v17, 0xCu);
  }
}

- (BOOL)performMigration
{
  AFLogInitIfNeeded();
  v3 = sub_1708();
  v4 = AFProductVersion();
  v5 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[SiriMigrator performMigration]";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_INFO, "%s Starting Siri data migration from %@ to %@...", &v8, 0x20u);
  }

  [(SiriMigrator *)self _performInternalToBackedUpMigration];
  [(SiriMigrator *)self _performLoggingMigration];
  [(SiriMigrator *)self _performSessionLanguageMigration];
  [(SiriMigrator *)self _performDictationMigration];
  [(SiriMigrator *)self _performATVDictationMigration];
  [(SiriMigrator *)self _performOutputVoiceMigration];
  [(SiriMigrator *)self _performVoiceServicesLanguageMigration];
  [(SiriMigrator *)self _performVoiceNameMigration];
  [(SiriMigrator *)self _performBootstrapSpeechIdMigration];
  [(SiriMigrator *)self _performAudioFeedbackMigration];
  [(SiriMigrator *)self _cleanupBundleCaches];
  [(SiriMigrator *)self _removeTokenDomain];
  [(SiriMigrator *)self _cleanupiOS9PhotoAlbumData];
  [(SiriMigrator *)self _performAppleAccountMigration];
  [(SiriMigrator *)self _removeOfflineMetrics];
  [(SiriMigrator *)self _performHomePodCensorSettingsMigration];
  [(SiriMigrator *)self _performAlwaysPrintOverrideMigration];
  [(SiriMigrator *)self _performCarPlayAnnounceMigrationIfNeeded];
  if ((AFIsHorseman() & 1) == 0)
  {
    [(SiriMigrator *)self _performSiriDataSharingMigrationIfNeeded];
  }

  _AFPreferencesSetValueForKey();
  AFInternalPreferencesSynchronize();
  v6 = AFSiriLogContextUtility;
  if (os_log_type_enabled(AFSiriLogContextUtility, OS_LOG_TYPE_INFO))
  {
    v8 = 136315650;
    v9 = "[SiriMigrator performMigration]";
    v10 = 2112;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "%s Finished Siri data migration from %@ to %@.", &v8, 0x20u);
  }

  return 1;
}

@end