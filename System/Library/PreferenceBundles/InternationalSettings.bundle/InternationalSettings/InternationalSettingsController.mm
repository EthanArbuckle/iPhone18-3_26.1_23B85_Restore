@interface InternationalSettingsController
+ (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)components;
+ (id)formattedMoneyAndNumbers:(id)numbers;
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
+ (void)loadFormatExampleWithSpecifiers:(id)specifiers;
+ (void)loadRegionWithSpecifiers:(id)specifiers;
+ (void)mirrorToWatchIfNecessary;
+ (void)postNotificationForLanguageChange;
+ (void)setLanguage:(id)language;
+ (void)setPreferredLanguages:(id)languages;
+ (void)syncPreferencesAndPostNotificationForLanguageChange;
+ (void)syncPreferencesForLanguageOrLocaleChange;
+ (void)syncToCloudSettings;
+ (void)writeLanguageAndLocaleConfigurationIfNeededWithCompletion:(id)completion;
- (BOOL)isConfirmedLanguage:(id)language;
- (InternationalSettingsController)init;
- (id)calendar:(id)calendar;
- (id)currentCalendarDisplayString;
- (id)currentInflectionDisplayString;
- (id)currentRegionDisplayString:(id)string;
- (id)liveTextEnabled;
- (id)locale:(id)locale;
- (id)localizedLanguage:(id)language;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (void)changeLanguage:(id)language;
- (void)checkForDiscoveredLanguages;
- (void)dealloc;
- (void)emitNavigationEventForRootController;
- (void)inflectionSettingsViewController:(id)controller inflectionDidChange:(id)change;
- (void)recordConfirmedLanguage:(id)language accepted:(BOOL)accepted;
- (void)reloadLocale:(id)locale;
- (void)reloadOnLocaleChange;
- (void)setCalendar:(id)calendar specifier:(id)specifier;
- (void)setLiveTextEnabled:(id)enabled specifier:(id)specifier;
- (void)setLocaleOnly:(id)only;
- (void)showLanguageDiscoverySetupForDiscoveredLanguage:(id)language;
- (void)showLanguageSheet:(id)sheet;
- (void)showOfficialLanguageSheet:(id)sheet;
@end

@implementation InternationalSettingsController

- (InternationalSettingsController)init
{
  v10.receiver = self;
  v10.super_class = InternationalSettingsController;
  v2 = [(ISInternationalViewController *)&v10 init];
  v3 = objc_alloc_init(_TtC21InternationalSettings8Settings);
  settings = v2->_settings;
  v2->_settings = v3;

  v5 = objc_opt_new();
  reloadQueue = v2->_reloadQueue;
  v2->_reloadQueue = v5;

  [(NSOperationQueue *)v2->_reloadQueue setMaxConcurrentOperationCount:1];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 addObserver:v2 selector:"reloadOnLocaleChange" name:NSCurrentLocaleDidChangeNotification object:0];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:v2 selector:"logStatistics" name:UIApplicationDidEnterBackgroundNotification object:0];

  return v2;
}

- (void)reloadOnLocaleChange
{
  v3 = objc_alloc_init(NSBlockOperation);
  objc_initWeak(&location, v3);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_235C;
  v6[3] = &unk_34D98;
  objc_copyWeak(&v7, &location);
  v6[4] = self;
  [v3 addExecutionBlock:v6];
  reloadQueue = [(InternationalSettingsController *)self reloadQueue];
  [reloadQueue cancelAllOperations];

  reloadQueue2 = [(InternationalSettingsController *)self reloadQueue];
  [reloadQueue2 addOperation:v3];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

- (void)checkForDiscoveredLanguages
{
  if (_os_feature_enabled_impl())
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_25E4;
    v3[3] = &unk_34DC0;
    v3[4] = self;
    [IntlUtility checkForDiscoveredLanguages:v3];
  }
}

- (void)showLanguageDiscoverySetupForDiscoveredLanguage:(id)language
{
  languageCopy = language;
  if ([languageCopy length])
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_2908;
    v5[3] = &unk_34EA0;
    v6 = languageCopy;
    selfCopy = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)recordConfirmedLanguage:(id)language accepted:(BOOL)accepted
{
  acceptedCopy = accepted;
  languageCopy = language;
  v5 = @"IPLanguageDiscoveryRejectedLanguages";
  if (acceptedCopy)
  {
    v5 = @"IPLanguageDiscoveryAcceptedLanguages";
  }

  v6 = v5;
  v7 = CFPreferencesCopyAppValue(v6, kCFPreferencesAnyApplication);
  v8 = v7;
  v9 = &__NSArray0__struct;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  if (([v10 containsObject:languageCopy] & 1) == 0)
  {
    v11 = [v10 arrayByAddingObject:languageCopy];

    CFPreferencesSetAppValue(v6, v11, kCFPreferencesAnyApplication);
    v10 = v11;
  }
}

- (BOOL)isConfirmedLanguage:(id)language
{
  languageCopy = language;
  v4 = CFPreferencesCopyAppValue(@"IPLanguageDiscoveryAcceptedLanguages", kCFPreferencesAnyApplication);
  if ([v4 containsObject:languageCopy])
  {
    v5 = 1;
  }

  else
  {
    v6 = CFPreferencesCopyAppValue(@"IPLanguageDiscoveryRejectedLanguages", kCFPreferencesAnyApplication);
    v5 = [v6 containsObject:languageCopy];
  }

  return v5;
}

- (void)showLanguageSheet:(id)sheet
{
  sheetCopy = sheet;
  v5 = objc_alloc_init(ISDeviceLanguageSetupController);
  [(ISDeviceLanguageSetupController *)v5 setParentController:self];
  [(ISDeviceLanguageSetupController *)v5 setSpecifier:sheetCopy];
  objc_storeWeak(&sheetCopy[OBJC_IVAR___PSSpecifier_target], self);

  [(InternationalSettingsController *)self showController:v5];
}

- (void)showOfficialLanguageSheet:(id)sheet
{
  sheetCopy = sheet;
  initWithOfficialLanguages = [(ISLanguageSetupController *)[ISDeviceLanguageSetupController alloc] initWithOfficialLanguages];
  [(ISDeviceLanguageSetupController *)initWithOfficialLanguages setParentController:self];
  [(ISDeviceLanguageSetupController *)initWithOfficialLanguages setSpecifier:sheetCopy];
  objc_storeWeak(&sheetCopy[OBJC_IVAR___PSSpecifier_target], self);

  [(InternationalSettingsController *)self showController:initWithOfficialLanguages];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = InternationalSettingsController;
  [(InternationalSettingsController *)&v4 dealloc];
}

- (void)reloadLocale:(id)locale
{
  localeCopy = locale;
  numberingSystemsValues = [(ISInternationalViewController *)self numberingSystemsValues];
  v5 = [numberingSystemsValues count];

  v6 = [localeCopy specifierForID:@"NUMBERING_SYSTEM"];
  v7 = v6;
  if (v5 < 2)
  {
    if (v6)
    {
      [(InternationalSettingsController *)self setNumberingSystemSpecifier:v6];
      [localeCopy removeObject:v7];
    }
  }

  else if (!v6)
  {
    numberingSystemSpecifier = [(InternationalSettingsController *)self numberingSystemSpecifier];

    if (numberingSystemSpecifier)
    {
      v9 = [localeCopy indexOfSpecifierWithID:@"CALENDAR"];
      if (v9 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v9 = [localeCopy count];
      }

      numberingSystemSpecifier2 = [(InternationalSettingsController *)self numberingSystemSpecifier];
      [localeCopy insertObject:numberingSystemSpecifier2 atIndex:v9];
    }
  }

  [objc_opt_class() loadRegionWithSpecifiers:localeCopy];
  [objc_opt_class() loadFormatExampleWithSpecifiers:localeCopy];
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] || [(InternationalSettingsController *)self shouldReloadSpecifiers])
  {
    v24 = v3;
    v4 = [(InternationalSettingsController *)self loadSpecifiersFromPlistName:@"InternationalSettings" target:self];
    v5 = [v4 mutableCopy];

    settings = [(InternationalSettingsController *)self settings];
    temperatureUnitSpecifier = [settings temperatureUnitSpecifier];
    v25[0] = temperatureUnitSpecifier;
    settings2 = [(InternationalSettingsController *)self settings];
    measurementSystemSpecifier = [settings2 measurementSystemSpecifier];
    v25[1] = measurementSystemSpecifier;
    settings3 = [(InternationalSettingsController *)self settings];
    firstWeekdaySpecifier = [settings3 firstWeekdaySpecifier];
    v25[2] = firstWeekdaySpecifier;
    v8 = objc_alloc_init(_TtC21InternationalSettings17DateFormatSetting);
    dateFormatSpecifier = [(DateFormatSetting *)v8 dateFormatSpecifier];
    v25[3] = dateFormatSpecifier;
    settings4 = [(InternationalSettingsController *)self settings];
    numberFormatSpecifier = [settings4 numberFormatSpecifier];
    v25[4] = numberFormatSpecifier;
    v12 = [NSArray arrayWithObjects:v25 count:5];
    v13 = [v5 specifierForID:@"CALENDAR"];
    [v5 ps_insertObjectsFromArray:v12 afterObject:v13];

    if ((+[_NSAttributedStringGrammarInflection canSelectUserInflection]& 1) == 0)
    {
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"INFLECTION_GROUP"}];
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"INFLECTION_CELL"}];
    }

    if ((MGGetBoolAnswer() & 1) == 0)
    {
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"LIVE_TEXT_GROUP"}];
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"LIVE_TEXT_CELL"}];
    }

    v3 = v24;
    if ([v5 count])
    {
      [(ISInternationalViewController *)self addLanguagesToSpecifiers:v5];
    }

    [(InternationalSettingsController *)self reloadLocale:v5];
    v14 = *&self->super.PSListController_opaque[v24];
    *&self->super.PSListController_opaque[v24] = v5;

    table = [(InternationalSettingsController *)self table];
    isEditing = [table isEditing];

    if ((isEditing & 1) == 0)
    {
      table2 = [(InternationalSettingsController *)self table];
      [table2 reloadData];
    }

    self->_shouldReloadSpecifiers = 0;
  }

  v18 = *&self->super.PSListController_opaque[v3];

  return v18;
}

- (id)localizedLanguage:(id)language
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = +[NSLocale _deviceLanguage];
  v5 = [v3 localizedStringForKey:v4 value:&stru_35798 table:@"InternationalSettings"];

  return v5;
}

+ (void)setLanguage:(id)language
{
  languageCopy = language;
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  [NSLocale setPreferredLanguageAndUpdateLocale:languageCopy];
  v6 = objc_opt_class();

  [v6 syncPreferencesAndPostNotificationForLanguageChange];
}

+ (void)syncPreferencesAndPostNotificationForLanguageChange
{
  [self syncPreferencesForLanguageOrLocaleChange];

  [self postNotificationForLanguageChange];
}

+ (void)syncPreferencesForLanguageOrLocaleChange
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 beginBackgroundTaskWithName:@"com.apple.InternationalSettings.setLanguagesToIdMS" expirationHandler:0];

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_36F0;
  v5[3] = &unk_34EC0;
  v5[4] = v4;
  [self writeLanguageAndLocaleConfigurationIfNeededWithCompletion:v5];
  [self mirrorToWatchIfNecessary];
  [self syncToCloudSettings];
}

+ (void)syncToCloudSettings
{
  sharedCloudSettingsManager = [sub_379C() sharedCloudSettingsManager];
  [sharedCloudSettingsManager writeToCloudSettings:&off_36DF0 forStore:@"com.apple.cloudsettings.international"];
}

+ (void)writeLanguageAndLocaleConfigurationIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  sharedManager = [sub_3964() sharedManager];
  isSharedIPad = [sharedManager isSharedIPad];

  if (isSharedIPad)
  {
    v6 = dispatch_get_global_queue(0, 0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_3A44;
    block[3] = &unk_34F10;
    v8 = completionCopy;
    dispatch_async(v6, block);
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

+ (void)postNotificationForLanguageChange
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
  v3 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v3, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
  v4 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(v4, @"com.apple.language.changed", 0, 0, 1u);

  dispatch_async(&_dispatch_main_q, &stru_34F30);
}

+ (void)mirrorToWatchIfNecessary
{
  if (PSIsNanoMirroringDomain() && (COSActivePairingIsTinker() & 1) == 0)
  {
    v8 = [[COSLanguageSelector alloc] initWithInternationalController:0];
    v2 = +[NSLocale preferredLanguages];
    [(COSLanguageSelector *)v8 setLanguages:v2];

    v3 = [[COSLocaleSelector alloc] initWithInternationalController:0];
    v4 = +[NSLocale preferredLocale];
    localeIdentifier = [v4 localeIdentifier];
    [(COSLocaleSelector *)v3 setLocale:localeIdentifier];

    v6 = [[COSInflectionSelector alloc] initWithInternationalController:0];
    v7 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
    [(COSInflectionSelector *)v6 setInflection:v7];

    [(COSInflectionSelector *)v6 setCanShareInflectionWithApps:+[_NSAttributedStringGrammarInflection _thirdPartyApplicationsCanAccessUserInflection]];
  }
}

- (id)currentInflectionDisplayString
{
  v2 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
  localizedShortDescription = [v2 localizedShortDescription];

  return localizedShortDescription;
}

- (id)selectSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v10.receiver = self;
  v10.super_class = InternationalSettingsController;
  v5 = [(InternationalSettingsController *)&v10 selectSpecifier:specifierCopy];
  detailControllerClass = [specifierCopy detailControllerClass];
  if (detailControllerClass == objc_opt_class())
  {
    v7 = v5;
    v8 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
    [v7 setInflection:v8];

    [v7 setCanShareInflection:{+[_NSAttributedStringGrammarInflection _thirdPartyApplicationsCanAccessUserInflection](_NSAttributedStringGrammarInflection, "_thirdPartyApplicationsCanAccessUserInflection")}];
    [v7 setDelegate:self];
  }

  [InternationalSettingsController emitNavigationEventForSpecifier:specifierCopy viewController:v5];

  return v5;
}

- (void)inflectionSettingsViewController:(id)controller inflectionDidChange:(id)change
{
  changeCopy = change;
  v9 = +[BMStreams discoverabilitySignal];
  v6 = [[BMDiscoverabilitySignalEvent alloc] initWithIdentifier:@"com.apple.InternationalSettings.inflection-set" bundleID:@"com.apple.InternationalSettings" context:0];
  source = [v9 source];
  [source sendEvent:v6];

  [changeCopy _setAsGlobalUserInflection];
  [(InternationalSettingsController *)self reloadSpecifiers];
  sharedCloudSettingsManager = [sub_379C() sharedCloudSettingsManager];
  [sharedCloudSettingsManager writeToCloudSettings:&off_36E08 forStore:@"com.apple.cloudsettings.international"];

  [objc_opt_class() syncPreferencesForLanguageOrLocaleChange];
}

- (id)locale:(id)locale
{
  localeCopy = locale;
  v5 = [(InternationalSettingsController *)self specifierForID:@"LOCALE"];
  if (v5 != localeCopy)
  {
    sub_20A74();
  }

  v6 = [localeCopy propertyForKey:PSValueKey];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSLocale currentLocale];
  }

  v9 = v8;

  return v9;
}

- (id)currentRegionDisplayString:(id)string
{
  stringCopy = string;
  v4 = +[NSLocale _deviceLanguage];
  v5 = [NSLocale localeWithLocaleIdentifier:v4];
  v6 = [stringCopy propertyForKey:@"country"];

  v7 = [v5 localizedStringForRegion:v6 context:3 short:0];

  return v7;
}

- (void)setCalendar:(id)calendar specifier:(id)specifier
{
  calendarCopy = calendar;
  v4 = +[NSLocale currentLocale];
  localeIdentifier = [v4 localeIdentifier];

  v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];
  v8 = [IntlUtility defaultCalendarForLocaleID:localeIdentifier];
  if ([v8 isEqual:calendarCopy])
  {
    [v7 removeObjectForKey:@"calendar"];
  }

  else
  {
    [v7 setObject:calendarCopy forKey:@"calendar"];
  }

  if (([v6 isEqual:v7] & 1) == 0)
  {
    v9 = [NSLocale canonicalLocaleIdentifierFromComponents:v7];

    [NSLocale setLocaleOnly:v9];
    [objc_opt_class() syncPreferencesForLanguageOrLocaleChange];
    localeIdentifier = v9;
  }
}

- (id)calendar:(id)calendar
{
  calendarCopy = calendar;
  v5 = [(InternationalSettingsController *)self specifierForID:@"CALENDAR"];
  if (v5 != calendarCopy)
  {
    sub_20AA0();
  }

  v6 = [calendarCopy propertyForKey:PSValueKey];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v9 = +[NSLocale currentLocale];
    localeIdentifier = [v9 localeIdentifier];

    v11 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];
    v8 = [v11 objectForKey:@"calendar"];
    if (!v8)
    {
      v8 = [IntlUtility defaultCalendarForLocaleID:localeIdentifier];
    }
  }

  return v8;
}

- (id)liveTextEnabled
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 objectForKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

  if (v3)
  {
    bOOLValue = [v3 BOOLValue];
  }

  else
  {
    v5 = +[NSLocale _deviceLanguage];
    v10 = v5;
    v6 = [NSArray arrayWithObjects:&v10 count:1];
    v7 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_36E38 forPreferredLanguages:v6];

    bOOLValue = [v7 count] != 0;
  }

  v8 = [NSNumber numberWithBool:bOOLValue];

  return v8;
}

- (void)setLiveTextEnabled:(id)enabled specifier:(id)specifier
{
  specifierCopy = specifier;
  bOOLValue = [enabled BOOLValue];
  if (!bOOLValue)
  {
    goto LABEL_3;
  }

  v8 = +[NSLocale _deviceLanguage];
  v49 = v8;
  v9 = [NSArray arrayWithObjects:&v49 count:1];
  v10 = [NSLocale matchedLanguagesFromAvailableLanguages:&off_36E38 forPreferredLanguages:v9];

  v11 = [v10 count];
  if (!v11)
  {
    v40 = specifierCopy;
    selfCopy = self;
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    sharedCloudSettingsManager = [v15 localizedStringForKey:@"LIVE_TEXT_ALERT_MESSAGE_%@" value:&stru_35798 table:@"InternationalSettings"];

    v16 = objc_opt_new();
    v17 = [v16 supportedRecognitionLanguagesAndReturnError:0];

    v18 = +[NSMutableOrderedSet orderedSet];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v45;
      do
      {
        v23 = 0;
        do
        {
          if (*v45 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [NSLocale localeWithLocaleIdentifier:*(*(&v44 + 1) + 8 * v23)];
          languageCode = [v24 languageCode];

          v26 = +[NSLocale currentLocale];
          v27 = [v26 localizedStringForLanguage:languageCode context:5];

          [v18 addObject:v27];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v21);
    }

    [v18 sortUsingComparator:&stru_34F70];
    array = [v18 array];
    v39 = [NSListFormatter localizedStringByJoiningStrings:array];

    v38 = [NSString localizedStringWithFormat:sharedCloudSettingsManager, v39];
    v29 = [NSBundle bundleForClass:objc_opt_class()];
    v30 = [v29 localizedStringForKey:@"LIVE_TEXT_ALERT_TITLE" value:&stru_35798 table:@"InternationalSettings"];
    v31 = [UIAlertController alertControllerWithTitle:v30 message:v38 preferredStyle:1];

    v32 = [NSBundle bundleForClass:objc_opt_class()];
    v33 = [v32 localizedStringForKey:@"LIVE_TEXT_CANCEL" value:&stru_35798 table:@"InternationalSettings"];
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_4D28;
    v42[3] = &unk_34F98;
    v42[4] = selfCopy;
    v43 = v40;
    v34 = [UIAlertAction actionWithTitle:v33 style:1 handler:v42];

    specifierCopy = v40;
    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"LIVE_TEXT_TURN_ON" value:&stru_35798 table:@"InternationalSettings"];
    v37 = [UIAlertAction actionWithTitle:v36 style:0 handler:&stru_34FD8];

    [v31 addAction:v34];
    [v31 addAction:v37];
    [v31 setPreferredAction:v37];
    [(InternationalSettingsController *)selfCopy presentViewController:v31 animated:1 completion:0];
  }

  else
  {
LABEL_3:
    v12 = +[NSUserDefaults standardUserDefaults];
    v13 = [NSNumber numberWithBool:bOOLValue];
    [v12 setObject:v13 forKey:@"AppleLiveTextEnabled" inDomain:NSGlobalDomain];

    sharedCloudSettingsManager = [sub_379C() sharedCloudSettingsManager];
    [sharedCloudSettingsManager writeToCloudSettings:&off_36E20 forStore:@"com.apple.cloudsettings.international"];
  }
}

- (id)currentCalendarDisplayString
{
  v2 = +[ISInternationalLocaleRepresentation sharedInstance];
  calendarIdentifier = [v2 calendarIdentifier];

  uppercaseString = [calendarIdentifier uppercaseString];
  v5 = [uppercaseString stringByAppendingString:@"_CALENDAR"];

  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:v5 value:&stru_35798 table:@"InternationalCalendar"];

  v8 = v7;
  v9 = v8;
  if ([UIApp userInterfaceLayoutDirection] != &dword_0 + 1)
  {
    goto LABEL_13;
  }

  v10 = +[ISInternationalLocaleRepresentation sharedInstance];
  calendarDirectionality = [v10 calendarDirectionality];

  if (calendarDirectionality == &dword_0 + 1)
  {
    v12 = @"CALENDAR_DIRECTIONALITY_LEFT_TO_RIGHT";
  }

  else
  {
    if (calendarDirectionality != &dword_0 + 2)
    {
      v14 = 0;
      goto LABEL_8;
    }

    v12 = @"CALENDAR_DIRECTIONALITY_RIGHT_TO_LEFT";
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_35798 table:@"InternationalCalendar"];

LABEL_8:
  v9 = v8;
  if ([v14 length])
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"CALENDAR_TYPE_PLUS_DIRECTIONALITY_FORMAT" value:&stru_35798 table:@"InternationalCalendar"];

    v9 = v8;
    if ([v16 length])
    {
      v9 = [NSString stringWithFormat:v16, v8, v14];
    }
  }

LABEL_13:

  return v9;
}

+ (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)components
{
  componentsCopy = components;
  v4 = [NSLocale canonicalLocaleIdentifierFromComponents:componentsCopy];
  v5 = [IntlUtility defaultCalendarForLocaleID:v4];
  v6 = [componentsCopy objectForKey:@"calendar"];

  if (v6)
  {
    v7 = [componentsCopy objectForKey:@"calendar"];
    v8 = [v7 isEqualToString:v5];

    if (!v8)
    {
      goto LABEL_7;
    }

    [componentsCopy removeObjectForKey:@"calendar"];
  }

  else
  {
    v9 = +[IntlUtility supportedCalendars];
    v10 = [v9 containsObject:v5];

    if (v10)
    {
      goto LABEL_7;
    }

    [componentsCopy setObject:NSCalendarIdentifierGregorian forKey:@"calendar"];
  }

  v11 = [NSLocale canonicalLocaleIdentifierFromComponents:componentsCopy];

  v4 = v11;
LABEL_7:

  return v4;
}

+ (id)formattedMoneyAndNumbers:(id)numbers
{
  v3 = objc_alloc_init(NSNumberFormatter);
  [v3 setNumberStyle:2];
  v4 = [v3 stringFromNumber:&off_36E80];
  [v3 setNumberStyle:1];
  v5 = [v3 stringFromNumber:&off_36E90];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 localizedStringForKey:@"DISPLAY_SAMPLE_MONEY_%@_AND_NUMBER_%@" value:&stru_35798 table:@"InternationalSettings"];
  v8 = [NSString stringWithFormat:v7, v4, v5];

  return v8;
}

- (void)changeLanguage:(id)language
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  v6 = [(ISInternationalViewController *)self topLanguageFromArray:updatedAppleLanguages];
  [NSLocale setLocaleAfterLanguageChange:v6];

  v7 = objc_opt_class();
  updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];
  [v7 setPreferredLanguages:updatedAppleLanguages2];

  v9 = +[ISInternationalLocaleRepresentation sharedInstance];
  [v9 setCalendarDirectionality:0];

  deviceLanguageIdentifier = [objc_opt_class() deviceLanguageIdentifier];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_53BC;
  v11[3] = &unk_34DE8;
  v11[4] = self;
  [(InternationalSettingsController *)self showUpdatingLanguageViewWithLocalizationStringKey:@"CHANGE_UI_LANGUAGE_TEXT" languageIdentifier:deviceLanguageIdentifier completionBlock:v11];

  [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
}

+ (void)setPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v4 = +[NSMutableOrderedSet orderedSet];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = languagesCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [IntlUtility normalizedLanguageIDFromString:*(*(&v14 + 1) + 8 * v9), v14];
        if ([v10 length])
        {
          [v4 addObject:v10];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v7);
  }

  if ([v4 count])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      array = [v4 array];
      v12 = +[NSLocale preferredLanguages];
      *buf = 138543618;
      v19 = array;
      v20 = 2114;
      v21 = v12;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Setting preferred languages to %{public}@. Current languages is %{public}@.", buf, 0x16u);
    }

    array2 = [v4 array];
    [NSLocale setPreferredLanguages:array2];
  }
}

- (void)setLocaleOnly:(id)only
{
  [NSLocale setLocaleOnly:only];
  v3 = objc_opt_class();

  [v3 syncPreferencesForLanguageOrLocaleChange];
}

- (void)emitNavigationEventForRootController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/INTERNATIONAL"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"INTERNATIONAL" table:@"InternationalSettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"GENERAL" table:@"InternationalSettings" locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(InternationalSettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.language" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller
{
  specifierCopy = specifier;
  controllerCopy = controller;
  v7 = objc_opt_class();
  if ([v7 isSubclassOfClass:objc_opt_class()])
  {
    v8 = controllerCopy;
    identifier = [specifierCopy identifier];
    if (identifier)
    {
      v10 = [NSString stringWithFormat:@"settings-navigation://com.apple.Settings.General/INTERNATIONAL/%@", identifier];
      v11 = [NSURL URLWithString:v10];
      v33[0] = @"CALENDAR";
      v33[1] = @"TEMPERATURE_UNIT";
      v33[2] = @"MEASUREMENT_SYSTEM";
      v33[3] = @"FIRST_WEEKDAY";
      v33[4] = @"DATE_FORMAT";
      v33[5] = @"NUMBER_FORMAT";
      v12 = [NSArray arrayWithObjects:v33 count:6];
      if ([v12 containsObject:identifier])
      {
        v29 = v11;
        v13 = [_NSLocalizedStringResource alloc];
        v14 = +[NSLocale currentLocale];
        v31 = v8;
        v15 = [NSBundle bundleForClass:objc_opt_class()];
        bundleURL = [v15 bundleURL];
        v28 = [v13 initWithKey:@"GENERAL" table:@"InternationalSettings" locale:v14 bundleURL:bundleURL];

        v17 = [_NSLocalizedStringResource alloc];
        v18 = +[NSLocale currentLocale];
        v19 = [NSBundle bundleForClass:objc_opt_class()];
        [v19 bundleURL];
        v20 = v30 = v10;
        v21 = [v17 initWithKey:@"INTERNATIONAL" table:@"InternationalSettings" locale:v18 bundleURL:v20];

        v11 = v29;
        v22 = [_NSLocalizedStringResource alloc];
        v23 = +[NSLocale currentLocale];
        v24 = [NSBundle bundleForClass:objc_opt_class()];
        bundleURL2 = [v24 bundleURL];
        v26 = [v22 initWithKey:identifier table:@"InternationalSettings" locale:v23 bundleURL:bundleURL2];

        v8 = v31;
        v32[0] = v28;
        v32[1] = v21;
        v27 = [NSArray arrayWithObjects:v32 count:2];
        [v31 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.language" title:v26 localizedNavigationComponents:v27 deepLink:v29];

        v10 = v30;
      }
    }
  }
}

+ (void)loadRegionWithSpecifiers:(id)specifiers
{
  specifiersCopy = specifiers;
  sub_1AA84(specifiersCopy);
}

+ (void)loadFormatExampleWithSpecifiers:(id)specifiers
{
  swift_getObjCClassMetadata();
  specifiersCopy = specifiers;
  sub_1A578(specifiersCopy);
}

@end