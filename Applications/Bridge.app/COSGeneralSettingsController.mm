@interface COSGeneralSettingsController
+ (id)_dictationAutoPunctuationSupportedLanguages;
+ (id)_dictationPrivacyTextWithUnsupportedLanguages:(id)languages supportedInstalledLanguages:(id)installedLanguages supportedWaitingLanguages:(id)waitingLanguages supportedInstallingLanguages:(id)installingLanguages andLanguageMapping:(id)mapping;
+ (id)_displayNamesForLanguageIDs:(id)ds;
+ (id)_enabledDictationLanguageCodes;
+ (id)_footerTextForAutoPunctuationLanguages:(id)languages withLanguageMapping:(id)mapping;
+ (id)_localizedListForLanguageCodes:(id)codes andLanguageMapping:(id)mapping;
+ (id)_pendingLanguagesFooterTextForWaitingLanguages:(id)languages installingLanguages:(id)installingLanguages andLanguageMapping:(id)mapping;
- (BOOL)allowLogCollection;
- (COSGeneralSettingsController)init;
- (id)dictationAutoPunctuationEnabled;
- (id)dictationEnabled;
- (id)specifiers;
- (void)_prepareDictationFooterForSpecifier:(id)specifier;
- (void)dealloc;
- (void)dumpLogs:(id)logs;
- (void)handleURL:(id)l withCompletion:(id)completion;
- (void)presentPrivacySheet:(id)sheet;
- (void)setAutomaticDownloadsEnabled:(id)enabled specifier:(id)specifier;
- (void)setDictationAutoPunctuationEnabled:(id)enabled;
- (void)setDictationEnabled:(id)enabled;
- (void)viewDidAppear:(BOOL)appear;
@end

@implementation COSGeneralSettingsController

- (COSGeneralSettingsController)init
{
  v29.receiver = self;
  v29.super_class = COSGeneralSettingsController;
  v2 = [(COSGeneralSettingsController *)&v29 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"refreshSoftwareUpdateBadge:" name:@"com.apple.Bridge.badgeUpdate" object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"versionOrCapabilitiesChanged:" name:@"COSActiveDeviceEssentialPropertiesChanged" object:0];

    v5 = +[NSNotificationCenter defaultCenter];
    v32 = 0;
    v33 = &v32;
    v34 = 0x2020000000;
    v6 = qword_1002BD6D8;
    v35 = qword_1002BD6D8;
    if (!qword_1002BD6D8)
    {
      location[0] = _NSConcreteStackBlock;
      location[1] = 3221225472;
      location[2] = sub_100133604;
      location[3] = &unk_1002680D0;
      v31 = &v32;
      v7 = sub_100133654();
      v8 = dlsym(v7, "AFNanoPreferencesDidChangeNotification");
      *(v31[1] + 24) = v8;
      qword_1002BD6D8 = *(v31[1] + 24);
      v6 = v33[3];
    }

    _Block_object_dispose(&v32, 8);
    if (!v6)
    {
      v23 = sub_100186904();
      _Block_object_dispose(&v32, 8);
      _Unwind_Resume(v23);
    }

    [v5 addObserver:v2 selector:"assistantPreferencesDidChange:" name:*v6 object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1001309D4, @"com.apple.Carousel.CSLDisableNightstand", 0, 1024);
    v10 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v10, v2, sub_1001309E4, @"CSLScreenshotEnabledChangedNotification", 0, 1024);
    v11 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v11, v2, sub_1001309F4, @"CSLDisableBackgroundAppUpdatesChangedNotification", 0, 1024);
    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v12, v2, sub_100130A04, @"CSLWorkoutSportWatchModePreferenceChangedNotification", 0, 1024);
    v13 = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(v13, v2, sub_100130A14, @"com.apple.nanosystemsettings.continuityEnabledChangedNotification", 0, 1024);
    v14 = +[MCProfileConnection sharedConnection];
    [v14 addObserver:v2];

    objc_initWeak(location, v2);
    v15 = +[UIApplication sharedApplication];
    activeWatch = [v15 activeWatch];

    v17 = +[ACXDeviceConnection sharedDeviceConnection];
    v24 = _NSConcreteStackBlock;
    v25 = 3221225472;
    v26 = sub_100130A24;
    v27 = &unk_100268260;
    objc_copyWeak(&v28, location);
    [v17 getAlwaysInstallForPairedDevice:activeWatch completion:&v24];

    v18 = objc_alloc_init(HKHealthStore);
    v19 = [_HKWheelchairUseCharacteristicCache alloc];
    v20 = [v19 initWithHealthStore:{v18, v24, v25, v26, v27}];
    wheelchairUseCharacteristicCache = v2->_wheelchairUseCharacteristicCache;
    v2->_wheelchairUseCharacteristicCache = v20;

    [(_HKWheelchairUseCharacteristicCache *)v2->_wheelchairUseCharacteristicCache addObserver:v2];
    objc_destroyWeak(&v28);

    objc_destroyWeak(location);
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = +[MCProfileConnection sharedConnection];
  [v5 removeObserver:self];

  v6.receiver = self;
  v6.super_class = COSGeneralSettingsController;
  [(COSGeneralSettingsController *)&v6 dealloc];
}

- (void)viewDidAppear:(BOOL)appear
{
  v9.receiver = self;
  v9.super_class = COSGeneralSettingsController;
  [(COSGeneralSettingsController *)&v9 viewDidAppear:appear];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v3 bundleURL];

  v5 = [_NSLocalizedStringResource alloc];
  v6 = +[NSLocale currentLocale];
  v7 = [v5 initWithKey:@"GENERAL" table:@"Settings" locale:v6 bundleURL:bundleURL];

  v8 = [NSURL URLWithString:@"bridge:root=GENERAL_LINK"];
  [BPSWatchSettingsNavigationDonation emitNavigationEventForSystemSettingWithIconSpecifierIdentifier:@"GENERAL_LINK" title:v7 localizedNavigationComponents:&__NSArray0__struct deepLink:v8];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(COSGeneralSettingsController *)self loadSpecifiersFromPlistName:@"General" target:self];
    v6 = +[NRPairedDeviceRegistry sharedInstance];
    v7 = +[NRPairedDeviceRegistry activePairedDeviceSelectorBlock];
    v8 = [v6 getAllDevicesWithArchivedAltAccountDevicesMatching:v7];
    firstObject = [v8 firstObject];

    if (+[COSPreferencesAppController hasUpdateAvailable])
    {
      v10 = [v5 specifierForID:@"SOFTWARE_UPDATE_LINK"];
      [v10 setProperty:&off_100281E58 forKey:PSBadgeNumberKey];
    }

    if (sub_100007C2C())
    {
      v11 = [v5 specifierForID:@"SOFTWARE_UPDATE_LINK"];
      [v5 removeObject:v11];

      v12 = [v5 specifierForID:@"AIRPLANE_AND_DND_GROUP_ID"];
      [v5 removeObject:v12];

      v13 = [v5 specifierForID:@"AIRPLANE_MODE_ID"];
      [v5 removeObject:v13];

      v14 = [v5 specifierForID:@"DO_NOT_DISTURB_ID"];
      [v5 removeObject:v14];

      v15 = [v5 specifierForID:@"FOCUS_ID"];
      [v5 removeObject:v15];

      v16 = [v5 specifierForID:@"USAGE_LINK"];
      [v5 removeObject:v16];

      v17 = [v5 specifierForID:@"ManagedConfigurationList"];
      [v5 removeObject:v17];

      v18 = [v5 specifierForID:@"RESET_ID"];
      [v5 removeObject:v18];
    }

    v19 = [[NSUUID alloc] initWithUUIDString:@"FFDA9C57-8508-4B50-B6D8-EEE862251FC0"];
    v20 = [firstObject supportsCapability:v19];

    if (v20)
    {
      v21 = @"DO_NOT_DISTURB_ID";
    }

    else
    {
      v21 = @"FOCUS_ID";
    }

    v22 = [v5 specifierForID:v21];
    [v5 removeObject:v22];

    v23 = +[MCProfileConnection sharedConnection];
    v24 = [v23 effectiveBoolValueForSetting:MCFeatureScreenShotAllowed];

    if (v24 == 2)
    {
      v25 = [v5 specifierForID:@"BUTTON_CHORD_CELL_ID"];
      [v5 removeObject:v25];

      activeWatch = [v5 specifierForID:@"BUTTON_CHORD_GROUP_ID"];
      [v5 removeObject:activeWatch];
    }

    else
    {
      v27 = +[UIApplication sharedApplication];
      activeWatch = [v27 activeWatch];

      v28 = [activeWatch valueForProperty:NRDevicePropertyIsInternalInstall];
      bOOLValue = [v28 BOOLValue];

      if (bOOLValue)
      {
        v30 = [v5 specifierForID:@"BUTTON_CHORD_CELL_ID"];
        [v30 setProperty:&__kCFBooleanTrue forKey:PSDefaultValueKey];
      }
    }

    v31 = [v5 specifierForID:@"LOGS_CELL_ID"];
    v32 = [NSNumber numberWithInt:!self->_logsAreDumping];
    [v31 setProperty:v32 forKey:PSEnabledKey];

    v33 = [v5 specifierForID:@"DICTATION_GROUP_ID"];
    if (!_os_feature_enabled_impl() || (+[COSGeneralSettingsController _dictationAutoPunctuationSupportedLanguages], v34 = objc_claimAutoreleasedReturnValue(), v34, !v34))
    {
      v35 = [v5 specifierForID:@"DICTATION_AUTO_PUNCTUATION_CELL_ID"];
      [v5 removeObject:v35];
    }

    [(COSGeneralSettingsController *)self _prepareDictationFooterForSpecifier:v33];
    if (PBShouldOfferBetterTogetherFlow())
    {
      v36 = pbb_bridge_log();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Hiding Reset Options for Retail Better Together device", v40, 2u);
      }

      v37 = [v5 specifierForID:@"RESET"];
      [v5 removeObject:v37];
    }

    v38 = *&self->super.BPSListController_opaque[v3];
    *&self->super.BPSListController_opaque[v3] = v5;

    v4 = *&self->super.BPSListController_opaque[v3];
  }

  return v4;
}

- (BOOL)allowLogCollection
{
  if (CFPreferencesGetAppBooleanValue(@"allowLogCollection", @"com.apple.Bridge", 0))
  {
    return 1;
  }

  v3 = +[UIDevice currentDevice];
  sf_isDeveloperModeEnabled = [v3 sf_isDeveloperModeEnabled];

  return sf_isDeveloperModeEnabled;
}

- (void)dumpLogs:(id)logs
{
  logsCopy = logs;
  if (!self->_logsAreDumping)
  {
    self->_logsAreDumping = 1;
    [(COSListController *)self reloadSpecifiers];
    PBDumpLogsWithBlock();
  }

  if (qword_1002BD6D0 != -1)
  {
    sub_10018C968();
  }

  dispatch_async(qword_1002BD6C8, &stru_10026CA78);
}

- (void)handleURL:(id)l withCompletion:(id)completion
{
  lCopy = l;
  [(COSListController *)self reloadSpecifiers];
  v6.receiver = self;
  v6.super_class = COSGeneralSettingsController;
  [(COSGeneralSettingsController *)&v6 handleURL:lCopy withCompletion:0];
}

- (void)setAutomaticDownloadsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  self->_alwaysInstall = [enabledCopy BOOLValue];
  v6 = +[ACXDeviceConnection sharedDeviceConnection];
  [v6 setAlwaysInstall:enabledCopy];

  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:@"COSAlwaysInstallSettingChangedNotification" object:0];
}

- (id)dictationEnabled
{
  sharedPreferences = [sub_1001318D4() sharedPreferences];
  nanoDictationEnabled = [sharedPreferences nanoDictationEnabled];

  return [NSNumber numberWithBool:nanoDictationEnabled];
}

- (void)setDictationEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[NSBundle mainBundle];
  v6 = v5;
  if (bOOLValue)
  {
    v7 = [v5 localizedStringForKey:@"DICTATION_ENABLE_TITLE" value:&stru_10026E598 table:@"General"];

    v8 = +[NSBundle mainBundle];
    v9 = [v8 localizedStringForKey:@"DICTATION_ENABLE_WARNING" value:&stru_10026E598 table:@"General"];

    v10 = +[NSBundle mainBundle];
    v11 = [v10 localizedStringForKey:@"DICTATION_ENABLE_TITLE" value:&stru_10026E598 table:@"General"];
    v12 = 0;
  }

  else
  {
    v7 = [v5 localizedStringForKey:@"DICTATION_DISABLE_TITLE" value:&stru_10026E598 table:@"General"];

    v13 = +[NSBundle mainBundle];
    v11 = [v13 localizedStringForKey:@"DICTATION_DISABLE_CONFIRMATION" value:&stru_10026E598 table:@"General"];

    sharedPreferences = [sub_1001318D4() sharedPreferences];
    LODWORD(v13) = [sharedPreferences nanoAssistantEnabled];

    v15 = +[NSBundle mainBundle];
    v10 = v15;
    if (v13)
    {
      v16 = @"DICTATION_DISABLE_WARNING_ASSISTANT_ENABLED";
    }

    else
    {
      v16 = @"DICTATION_DISABLE_WARNING_ASSISTANT_DISABLED";
    }

    v9 = [v15 localizedStringForKey:v16 value:&stru_10026E598 table:@"General"];
    v12 = 2;
  }

  v17 = [UIAlertController alertControllerWithTitle:v7 message:v9 preferredStyle:0];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_100131CF8;
  v23[3] = &unk_10026CA98;
  v24 = bOOLValue;
  v18 = [UIAlertAction actionWithTitle:v11 style:v12 handler:v23];
  [v17 addAction:v18];

  v19 = +[NSBundle mainBundle];
  v20 = [v19 localizedStringForKey:@"DICTATION_ENABLE_DISABLE_CANCEL" value:&stru_10026E598 table:@"General"];
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100131D4C;
  v22[3] = &unk_100268580;
  v22[4] = self;
  v21 = [UIAlertAction actionWithTitle:v20 style:1 handler:v22];
  [v17 addAction:v21];

  [(COSGeneralSettingsController *)self presentViewController:v17 animated:1 completion:0];
}

- (id)dictationAutoPunctuationEnabled
{
  sharedPreferences = [sub_1001318D4() sharedPreferences];
  nanoDictationAutoPunctuationEnabled = [sharedPreferences nanoDictationAutoPunctuationEnabled];

  return [NSNumber numberWithBool:nanoDictationAutoPunctuationEnabled];
}

- (void)setDictationAutoPunctuationEnabled:(id)enabled
{
  bOOLValue = [enabled BOOLValue];
  sharedPreferences = [sub_1001318D4() sharedPreferences];
  [sharedPreferences setNanoDictationAutoPunctuationEnabled:bOOLValue];
}

- (void)_prepareDictationFooterForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  sharedPreferences = [sub_1001318D4() sharedPreferences];
  nanoDictationEnabled = [sharedPreferences nanoDictationEnabled];

  if (nanoDictationEnabled)
  {
    selfCopy = self;
    v7 = +[COSGeneralSettingsController _enabledDictationLanguageCodes];
    sharedPreferences2 = [sub_1001318D4() sharedPreferences];
    nanoOfflineDictationStatus = [sharedPreferences2 nanoOfflineDictationStatus];

    v10 = objc_alloc_init(NSMutableArray);
    v11 = objc_alloc_init(NSMutableArray);
    v12 = objc_alloc_init(NSMutableArray);
    v13 = objc_alloc_init(NSMutableArray);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1001322A8;
    v45[3] = &unk_10026CAC0;
    v43 = nanoOfflineDictationStatus;
    v46 = v43;
    v14 = v10;
    v47 = v14;
    v15 = v13;
    v16 = v7;
    v17 = v15;
    v48 = v15;
    v18 = v12;
    v49 = v18;
    v19 = v11;
    v50 = v19;
    [v16 enumerateObjectsUsingBlock:v45];
    v20 = [COSGeneralSettingsController _displayNamesForLanguageIDs:v16];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"DICTATION_ON_DEVICE_ABOUT_LINK" value:&stru_10026E598 table:@"General"];

    v41 = v17;
    v42 = v14;
    v23 = [COSGeneralSettingsController _dictationPrivacyTextWithUnsupportedLanguages:v14 supportedInstalledLanguages:v17 supportedWaitingLanguages:v19 supportedInstallingLanguages:v18 andLanguageMapping:v20];
    v40 = v20;
    v24 = [COSGeneralSettingsController _pendingLanguagesFooterTextForWaitingLanguages:v19 installingLanguages:v18 andLanguageMapping:v20];
    v25 = [NSString stringWithFormat:@"%@ %@", v23, v22];

    if ([v24 length])
    {
      v26 = [NSString stringWithFormat:@"\n\n%@", v24];
      v27 = [v25 stringByAppendingString:v26];

      v25 = v27;
    }

    if (_os_feature_enabled_impl())
    {
      v28 = +[COSGeneralSettingsController _dictationAutoPunctuationSupportedLanguages];
      if ([v28 count])
      {
        v39 = v16;
        v29 = [COSGeneralSettingsController _displayNamesForLanguageIDs:v28];
        allObjects = [v28 allObjects];
        v31 = [COSGeneralSettingsController _footerTextForAutoPunctuationLanguages:allObjects withLanguageMapping:v29];

        if ([v31 length])
        {
          v32 = [NSString stringWithFormat:@"\n\n%@", v31];
          v38 = [v25 stringByAppendingString:v32];

          v25 = v38;
        }

        v16 = v39;
      }
    }

    v33 = objc_opt_class();
    v34 = NSStringFromClass(v33);
    [specifierCopy setProperty:v34 forKey:PSFooterCellClassGroupKey];

    [specifierCopy setProperty:v25 forKey:PSFooterHyperlinkViewTitleKey];
    v51.location = [v25 rangeOfString:v22];
    v35 = NSStringFromRange(v51);
    [specifierCopy setProperty:v35 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v36 = [NSValue valueWithNonretainedObject:selfCopy];
    [specifierCopy setProperty:v36 forKey:PSFooterHyperlinkViewTargetKey];

    v37 = NSStringFromSelector("presentPrivacySheet:");
    [specifierCopy setProperty:v37 forKey:PSFooterHyperlinkViewActionKey];
  }
}

- (void)presentPrivacySheet:(id)sheet
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

+ (id)_enabledDictationLanguageCodes
{
  v2 = +[UIKeyboardPreferencesController sharedPreferencesController];
  preferencesActions = [v2 preferencesActions];
  v4 = [preferencesActions valueForPreferenceKey:UIDictationLanguagesEnabled];

  v5 = [v4 keysOfEntriesPassingTest:&stru_10026CB00];

  return v5;
}

+ (id)_dictationAutoPunctuationSupportedLanguages
{
  v2 = +[COSGeneralSettingsController _enabledDictationLanguageCodes];
  sharedPreferences = [sub_1001318D4() sharedPreferences];
  nanoDictationAutoPunctuationSupportedLanguages = [sharedPreferences nanoDictationAutoPunctuationSupportedLanguages];

  v5 = objc_alloc_init(NSMutableSet);
  sharedPreferences2 = [sub_1001318D4() sharedPreferences];
  nanoLanguageCode = [sharedPreferences2 nanoLanguageCode];

  if (nanoLanguageCode)
  {
    sharedPreferences3 = [sub_1001318D4() sharedPreferences];
    if ([sharedPreferences3 nanoAssistantEnabled])
    {
      v9 = [nanoDictationAutoPunctuationSupportedLanguages containsObject:nanoLanguageCode];

      if (v9)
      {
        v10 = [nanoLanguageCode stringByReplacingOccurrencesOfString:@"-" withString:@"_"];

        [v5 addObject:v10];
        nanoLanguageCode = v10;
      }
    }

    else
    {
    }
  }

  v21 = nanoLanguageCode;
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = v2;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    v14 = 1;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v23 + 1) + 8 * i);
        v17 = [v16 stringByReplacingOccurrencesOfString:@"_" withString:{@"-", v21}];
        if ([nanoDictationAutoPunctuationSupportedLanguages containsObject:v17])
        {
          [v5 addObject:v16];
        }

        else
        {
          v14 = 0;
        }
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = 1;
  }

  if (![v5 count])
  {
    v19 = 0;
    v18 = v21;
    goto LABEL_24;
  }

  v18 = v21;
  if (v14)
  {
    [v5 removeAllObjects];
  }

  if (v5)
  {
    v19 = [NSSet setWithSet:v5];
LABEL_24:

    goto LABEL_26;
  }

  v19 = 0;
LABEL_26:

  return v19;
}

+ (id)_dictationPrivacyTextWithUnsupportedLanguages:(id)languages supportedInstalledLanguages:(id)installedLanguages supportedWaitingLanguages:(id)waitingLanguages supportedInstallingLanguages:(id)installingLanguages andLanguageMapping:(id)mapping
{
  languagesCopy = languages;
  installedLanguagesCopy = installedLanguages;
  waitingLanguagesCopy = waitingLanguages;
  installingLanguagesCopy = installingLanguages;
  mappingCopy = mapping;
  v16 = [languagesCopy count];
  v17 = [installedLanguagesCopy count];
  v18 = [waitingLanguagesCopy count];
  v19 = [installingLanguagesCopy count];
  if (!v17)
  {
    v20 = +[NSBundle mainBundle];
    v21 = v20;
    if (v16)
    {
      v22 = @"DICTATION_ON_DEVICE_NO_SUPPORTED_LANGUAGES";
    }

    else
    {
      v22 = @"DICTATION_ON_DEVICE_SUPPORT_PENDING_WITH_NO_LANGUAGE";
    }

    goto LABEL_20;
  }

  if (!&v18[v19 + v16])
  {
    v20 = +[NSBundle mainBundle];
    v21 = v20;
    v22 = @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_NO_LANGUAGE";
LABEL_20:
    v28 = [v20 localizedStringForKey:v22 value:&stru_10026E598 table:@"General"];
    goto LABEL_33;
  }

  v23 = +[NSBundle mainBundle];
  v24 = v23;
  if (v17 == 1)
  {
    v25 = @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE";
  }

  else
  {
    v25 = @"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGES";
  }

  v26 = [v23 localizedStringForKey:v25 value:&stru_10026E598 table:@"General"];

  v27 = [COSGeneralSettingsController _localizedListForLanguageCodes:installedLanguagesCopy andLanguageMapping:mappingCopy];
  v28 = [NSString stringWithFormat:v26, v27];

  v29 = [waitingLanguagesCopy arrayByAddingObjectsFromArray:installingLanguagesCopy];
  v30 = [v29 count];
  v31 = v30;
  v49 = v29;
  if (v16)
  {
    if (v30)
    {
      v32 = [v29 count];
      v33 = +[NSBundle mainBundle];
      v34 = v33;
      v35 = @"DICTATION_ON_DEVICE_UNSUPPORTED_LANGUAGES_AND_PENDING_LANGUAGES";
      if (v16 == 1)
      {
        v35 = @"DICTATION_ON_DEVICE_UNSUPPORTED_LANGUAGE_AND_PENDING_LANGUAGES";
      }

      v36 = @"DICTATION_ON_DEVICE_UNSUPPORTED_LANGUAGE_AND_PENDING_LANGUAGE";
      if (v16 != 1)
      {
        v36 = @"DICTATION_ON_DEVICE_UNSUPPORTED_LANGUAGES_AND_PENDING_LANGUAGE";
      }

      if (v32 <= 1)
      {
        v37 = v36;
      }

      else
      {
        v37 = v35;
      }

      v38 = [v33 localizedStringForKey:v37 value:&stru_10026E598 table:@"General"];

      v39 = [COSGeneralSettingsController _localizedListForLanguageCodes:languagesCopy andLanguageMapping:mappingCopy];
      v40 = [COSGeneralSettingsController _localizedListForLanguageCodes:v29 andLanguageMapping:mappingCopy];
      v21 = [NSString stringWithFormat:v38, v39, v40];

      goto LABEL_30;
    }

    v44 = +[NSBundle mainBundle];
    v45 = v44;
    if (v16 == 1)
    {
      v46 = @"DICTATION_ON_DEVICE_SUPPORT_WITH_UNSUPPORTED_LANGUAGE";
    }

    else
    {
      v46 = @"DICTATION_ON_DEVICE_SUPPORT_WITH_UNSUPPORTED_LANGUAGES";
    }

    v38 = [v44 localizedStringForKey:v46 value:&stru_10026E598 table:@"General"];

    v39 = [COSGeneralSettingsController _localizedListForLanguageCodes:languagesCopy andLanguageMapping:mappingCopy];
    [NSString stringWithFormat:v38, v39];
  }

  else
  {
    v41 = +[NSBundle mainBundle];
    v42 = v41;
    if (v31 >= 2)
    {
      v43 = @"DICTATION_ON_DEVICE_SUPPORT_PENDING_WITH_LANGUAGES";
    }

    else
    {
      v43 = @"DICTATION_ON_DEVICE_SUPPORT_PENDING_WITH_LANGUAGE";
    }

    v38 = [v41 localizedStringForKey:v43 value:&stru_10026E598 table:@"General"];

    v39 = [COSGeneralSettingsController _localizedListForLanguageCodes:v29 andLanguageMapping:mappingCopy];
    [NSString stringWithFormat:v38, v39];
  }
  v21 = ;
LABEL_30:

  if ([v21 length])
  {
    v47 = [NSString stringWithFormat:@"%@ %@", v28, v21];

    v28 = v47;
  }

LABEL_33:

  return v28;
}

+ (id)_pendingLanguagesFooterTextForWaitingLanguages:(id)languages installingLanguages:(id)installingLanguages andLanguageMapping:(id)mapping
{
  languagesCopy = languages;
  installingLanguagesCopy = installingLanguages;
  mappingCopy = mapping;
  if ([languagesCopy count])
  {
    v10 = [languagesCopy count];
    v11 = +[NSBundle mainBundle];
    v12 = v11;
    if (v10 >= 2)
    {
      v13 = @"DICTATION_ON_DEVICE_SUPPORT_WILL_DOWNLOAD_WITH_LANGUAGES";
    }

    else
    {
      v13 = @"DICTATION_ON_DEVICE_SUPPORT_WILL_DOWNLOAD_WITH_LANGUAGE";
    }

    v14 = [v11 localizedStringForKey:v13 value:&stru_10026E598 table:@"General"];
    v15 = languagesCopy;
LABEL_11:

    v19 = [COSGeneralSettingsController _localizedListForLanguageCodes:v15 andLanguageMapping:mappingCopy];
    v20 = [NSString stringWithFormat:v14, v19];

    goto LABEL_12;
  }

  if ([installingLanguagesCopy count])
  {
    v16 = [installingLanguagesCopy count];
    v17 = +[NSBundle mainBundle];
    v12 = v17;
    if (v16 >= 2)
    {
      v18 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING_WITH_LANGUAGES";
    }

    else
    {
      v18 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING_WITH_LANGUAGE";
    }

    v14 = [v17 localizedStringForKey:v18 value:&stru_10026E598 table:@"General"];
    v15 = installingLanguagesCopy;
    goto LABEL_11;
  }

  v20 = 0;
LABEL_12:

  return v20;
}

+ (id)_footerTextForAutoPunctuationLanguages:(id)languages withLanguageMapping:(id)mapping
{
  languagesCopy = languages;
  mappingCopy = mapping;
  if ([languagesCopy count])
  {
    v7 = [languagesCopy count];
    v8 = +[NSBundle mainBundle];
    v9 = v8;
    if (v7 >= 2)
    {
      v10 = @"DICTATION_AUTO_PUNCTUATION_AVAILABLE_WITH_LANGUAGES";
    }

    else
    {
      v10 = @"DICTATION_AUTO_PUNCTUATION_AVAILABLE_WITH_LANGUAGE";
    }

    v11 = [v8 localizedStringForKey:v10 value:&stru_10026E598 table:@"General"];

    v12 = [COSGeneralSettingsController _localizedListForLanguageCodes:languagesCopy andLanguageMapping:mappingCopy];
    v13 = [NSString stringWithFormat:v11, v12];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_localizedListForLanguageCodes:(id)codes andLanguageMapping:(id)mapping
{
  codesCopy = codes;
  mappingCopy = mapping;
  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [codesCopy count]);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = codesCopy;
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [mappingCopy objectForKey:{*(*(&v16 + 1) + 8 * i), v16}];
        if (v13 && ([v7 containsObject:v13] & 1) == 0)
        {
          [v7 addObject:v13];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = [NSListFormatter localizedStringByJoiningStrings:v7];

  return v14;
}

+ (id)_displayNamesForLanguageIDs:(id)ds
{
  dsCopy = ds;
  v4 = +[NSCountedSet set];
  v24 = +[NSMutableDictionary dictionaryWithCapacity:](NSMutableDictionary, "dictionaryWithCapacity:", [dsCopy count]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = dsCopy;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v30;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v30 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [NSLocale localeWithLocaleIdentifier:*(*(&v29 + 1) + 8 * i)];
        languageCode = [v10 languageCode];

        [v4 addObject:languageCode];
      }

      v7 = [v5 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v7);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = v5;
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v26;
    do
    {
      for (j = 0; j != v14; j = j + 1)
      {
        if (*v26 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v25 + 1) + 8 * j);
        v18 = [NSLocale localeWithLocaleIdentifier:v17];
        languageCode2 = [v18 languageCode];

        if ([v4 countForObject:languageCode2] > 1 || objc_msgSend(languageCode2, "isEqualToString:", @"pt"))
        {
          v20 = +[NSLocale currentLocale];
          v21 = [v20 localizedStringForLocaleIdentifier:v17];
        }

        else
        {
          v20 = +[NSLocale currentLocale];
          v21 = [v20 localizedStringForLanguageCode:languageCode2];
        }

        v22 = v21;

        if (v22)
        {
          [v24 setValue:v22 forKey:v17];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v14);
  }

  return v24;
}

@end