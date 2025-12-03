@interface TIDictationLanguageListController
+ (id)isSmartLanguageSelectionEnabled;
+ (int64_t)numberOfEnabledEntries:(id)entries;
- (TIDictationLanguageListController)init;
- (id)dictationFooterText;
- (id)dictationLanguagesSpecifiers;
- (id)isSLSEnabled:(id)enabled;
- (id)onDeviceDictationLanguagesSpecifiers;
- (id)onDeviceNotCapableDictationLanguagesSpecifiers;
- (id)slsDictationLanguagesSpecifiers;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view classicDictationCellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view enhancedDictationCellForRowAtIndexPath:(id)path;
- (void)dealloc;
- (void)emitNavigationEventForDictationLanguageListController;
- (void)handleSmartLanguageSelectionOnDictationLanguageToggle:(BOOL)toggle enabledDictationLanguages:(id)languages specifier:(id)specifier;
- (void)offlineDictationStatusUpdated:(id)updated;
- (void)presentPrivacySheet:(id)sheet;
- (void)setSLSEnabled:(id)enabled specifier:(id)specifier;
- (void)toggleDictationLanguage:(id)language;
- (void)toggleSLSEnabled:(id)enabled;
- (void)updateDownloadingProgressForAsset:(id)asset stalled:(BOOL)stalled;
- (void)updateDownloadingStateForAsset:(id)asset success:(BOOL)success;
- (void)viewDidLoad;
@end

@implementation TIDictationLanguageListController

- (void)offlineDictationStatusUpdated:(id)updated
{
  [(TIDictationLanguageListController *)self setOfflineStatusForLanguage:updated];

  [(TIDictationLanguageListController *)self reloadSpecifiers];
}

- (TIDictationLanguageListController)init
{
  v4.receiver = self;
  v4.super_class = TIDictationLanguageListController;
  v2 = [(TIDictationLanguageListController *)&v4 init];
  if (v2 && AFOfflineDictationCapable())
  {
    [(TIDictationLanguageListController *)v2 setDictaionOfflineStatusObserver:[[DictationOfflineStatusObserver alloc] initWithDelegate:v2]];
    [(TIDictationLanguageListController *)v2 setAssetIdToLanguages:+[NSMutableDictionary dictionary]];
    [(TIDictationLanguageListController *)v2 setTrackingDownloadStatusForAssetsIDs:+[NSMutableSet set]];
    [(TIDictationLanguageListController *)v2 setOnDeviceLocalesDownloading:+[NSMutableSet set]];
  }

  return v2;
}

- (void)dealloc
{
  [(TIDictationLanguageListController *)self setOfflineStatusForLanguage:0];
  [(TIDictationLanguageListController *)self setDictaionOfflineStatusObserver:0];
  [(TIDictationLanguageListController *)self setAssetIdToLanguages:0];
  [(TIDictationLanguageListController *)self setTrackingDownloadStatusForAssetsIDs:0];
  [(TIDictationLanguageListController *)self setOnDeviceLocalesDownloading:0];
  v3.receiver = self;
  v3.super_class = TIDictationLanguageListController;
  [(TIDictationLanguageListController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = TIDictationLanguageListController;
  [(TIDictationLanguageListController *)&v4 viewDidLoad];
  v3 = OBJC_IVAR___PSListController__table;
  [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] setEstimatedSectionHeaderHeight:0.0];
  [*&self->PSListController_opaque[v3] setEstimatedSectionFooterHeight:0.0];
}

- (void)emitNavigationEventForDictationLanguageListController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard/DictationSettings"];
  v4 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  -[TIDictationLanguageListController pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:](self, "pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:title:localizedNavigationComponents:deepLink:", @"com.apple.graphic-icon.keyboard", [[_NSLocalizedStringResource alloc] initWithKey:@"KEYBOARDS_SHORT" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}], +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 2), v3);
}

+ (int64_t)numberOfEnabledEntries:(id)entries
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [entries allKeys];
  v5 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = 0;
  v8 = *v12;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v12 != v8)
      {
        objc_enumerationMutation(allKeys);
      }

      v7 += [objc_msgSend(entries objectForKeyedSubscript:{*(*(&v11 + 1) + 8 * i)), "BOOLValue"}];
    }

    v6 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  }

  while (v6);
  return v7;
}

+ (id)isSmartLanguageSelectionEnabled
{
  v2 = [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];

  return [NSNumber numberWithBool:v2];
}

- (id)dictationFooterText
{
  v3 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  v5 = [NSMutableSet setWithArray:v4];
  v28 = 0;
  v29 = &v28;
  v30 = 0x3052000000;
  v31 = sub_14DE4;
  v32 = sub_14DF4;
  v33 = +[NSMutableSet set];
  v22 = 0;
  v23 = &v22;
  v24 = 0x3052000000;
  v25 = sub_14DE4;
  v26 = sub_14DF4;
  v27 = +[NSMutableSet set];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3052000000;
  v19 = sub_14DE4;
  v20 = sub_14DF4;
  v21 = +[NSMutableSet set];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_14E00;
  v15[3] = &unk_49340;
  v15[4] = v5;
  v15[5] = &v22;
  v15[6] = &v28;
  v15[7] = &v16;
  [(NSDictionary *)[(TIDictationLanguageListController *)self offlineStatusForLanguage] enumerateKeysAndObjectsUsingBlock:v15];
  if ([v23[5] count])
  {
    v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_HIGH_QUALITY_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGES", &stru_49C80, @"Keyboard"];
    v7 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v6, +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", [v23[5] allObjects], 1, 0));
  }

  else
  {
    v7 = &stru_49C80;
  }

  if ([v29[5] count])
  {
    v8 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGES", &stru_49C80, @"Keyboard"];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v8, +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", [v29[5] allObjects], 1, 0));
    if ([(__CFString *)v7 length])
    {
      v10 = @"\n\n";
    }

    else
    {
      v10 = &stru_49C80;
    }

    v7 = [(__CFString *)v7 stringByAppendingFormat:@"%@%@", v10, v9];
  }

  if ([v23[5] count])
  {
    [(NSMutableSet *)v5 minusSet:v23[5]];
  }

  if ([v29[5] count])
  {
    [(NSMutableSet *)v5 minusSet:v29[5]];
  }

  if ([(NSMutableSet *)v5 count]&& (![(NSMutableSet *)v5 isEqual:v17[5]]|| [(__CFString *)v7 length]))
  {
    v11 = [NSString stringWithFormat:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ONLINE_EXPLANATION_SUFFIX_NOT_INSTALLED_WITH_LANGUAGES", &stru_49C80, @"Dictation"], [KeyboardController localizedListForInputModes:[(NSMutableSet *)v5 allObjects] forDictation:1 duplicatedBaseLanguages:0]];
    if ([(__CFString *)v7 length])
    {
      v12 = @"\n\n";
    }

    else
    {
      v12 = &stru_49C80;
    }

    v7 = [(__CFString *)v7 stringByAppendingFormat:@"%@%@", v12, v11];
  }

  if (!-[__CFString length](v7, "length") && [v17[5] count])
  {
    v13 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = [(NSBundle *)v13 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"];
  }

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);
  return v7;
}

- (void)setSLSEnabled:(id)enabled specifier:(id)specifier
{
  [+[AFPreferences sharedPreferences](AFPreferences sharedPreferences];

  [(TIDictationLanguageListController *)self reloadSpecifiers];
}

- (id)isSLSEnabled:(id)enabled
{
  v3 = objc_opt_class();

  return [v3 isSmartLanguageSelectionEnabled];
}

- (id)dictationLanguagesSpecifiers
{
  v17 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v17)
  {
    v15 = OBJC_IVAR___PSListController__specifiers;
    [(TIDictationLanguageListController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation Languages", &stru_49C80, @"Dictation"]];
    v17 = objc_alloc_init(NSMutableArray);
    v3 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
    v4 = [objc_msgSend(objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v3;
    v5 = [v3 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v19;
      v8 = PSIDKey;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * i);
          v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v10 displayName], self, 0, 0, 0, 3, 0);
          [v11 setButtonAction:"toggleDictationLanguage:"];
          [v11 setProperty:objc_msgSend(v10 forKey:{"identifier"), v8}];
          [v11 setProperty:v4 forKey:@"enabledDictationLanguages"];
          [v17 addObject:v11];
        }

        v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    v12 = [PSSpecifier groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
    dictationFooterText = [(TIDictationLanguageListController *)self dictationFooterText];
    [v12 setProperty:dictationFooterText forKey:PSFooterTextGroupKey];
    [v17 insertObject:v12 atIndex:0];
    *&self->PSListController_opaque[v15] = v17;
  }

  return v17;
}

- (id)slsDictationLanguagesSpecifiers
{
  v31 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v31)
  {
    v26 = OBJC_IVAR___PSListController__specifiers;
    [(TIDictationLanguageListController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation Languages", &stru_49C80, @"Dictation"]];
    v31 = objc_alloc_init(NSMutableArray);
    v29 = +[NSMutableArray array];
    v3 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
    v4 = [objc_msgSend(objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    v5 = [objc_msgSend(+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
    selfCopy = self;
    v25 = [objc_opt_class() numberOfEnabledEntries:v4];
    if (![v5 count])
    {
      [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v6 = [v3 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v6)
    {
      v7 = v6;
      v28 = *v33;
      v8 = PSIDKey;
      v9 = PSTitleKey;
      obj = v3;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v33 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v32 + 1) + 8 * i);
          v12 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v11 displayName], selfCopy, 0, 0, 0, 3, 0);
          [v12 setButtonAction:"toggleDictationLanguage:"];
          [v12 setProperty:objc_msgSend(v11 forKey:{"identifier"), v8}];
          [v12 setProperty:v4 forKey:@"enabledDictationLanguages"];
          [v31 addObject:v12];
          v13 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v11 displayName], selfCopy, 0, 0, 0, 3, 0);
          [v13 setButtonAction:"toggleSLSEnabled:"];
          [v13 setProperty:objc_msgSend(v11 forKey:{"identifier"), v9}];
          [v29 addObject:v13];
        }

        v3 = obj;
        v7 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v7);
    }

    if ([v3 count] >= 2)
    {
      if (v25 >= 2)
      {
        v14 = [PSSpecifier groupSpecifierWithID:@"SLS_TOGGLE" name:0];
        [v31 addObject:v14];
        v15 = [PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Automatic-Language-Detection" target:&stru_49C80 set:@"Dictation"] get:selfCopy detail:"setSLSEnabled:specifier:" cell:"isSLSEnabled:" edit:0, 6, 0];
        [v15 setProperty:@"SLS Toggle Switch" forKey:PSIDKey];
        v16 = [objc_msgSend(objc_opt_class() "isSmartLanguageSelectionEnabled")];
        v17 = [NSBundle bundleForClass:objc_opt_class()];
        if (v16)
        {
          v18 = @"SLS_TOGGLE_ON_EXPLANATION";
        }

        else
        {
          v18 = @"SLS_TOGGLE_OFF_EXPLANATION";
        }

        v19 = [(NSBundle *)v17 localizedStringForKey:v18 value:&stru_49C80 table:@"Dictation"];
        [v14 setProperty:+[NSString stringWithFormat:](NSString forKey:{"stringWithFormat:", @"%@\n\n%@", v19, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SLS_EXPLANATION_SUFFIX", &stru_49C80, @"Dictation", PSFooterTextGroupKey}];
        [v31 addObject:v15];
      }

      if ([v3 count] < 5)
      {
        v20 = 0;
      }

      else
      {
        v20 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation", &stru_49C80, @"Dictation"];
      }

      v21 = [PSSpecifier groupSpecifierWithID:@"DICTATION_LANGUAGES" name:v20];
      dictationFooterText = [(TIDictationLanguageListController *)selfCopy dictationFooterText];
      [v21 setProperty:dictationFooterText forKey:PSFooterTextGroupKey];
      [v31 insertObject:v21 atIndex:0];
    }

    if ([objc_msgSend(objc_opt_class() "isSmartLanguageSelectionEnabled")] && objc_msgSend(v3, "count") >= 5 && v25 >= 2)
    {
      v23 = [PSSpecifier groupSpecifierWithID:@"SLS_LANGUAGES" name:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Auto-Detection", &stru_49C80, @"Dictation"]];
      [v23 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SLS_FOOTER_TEXT", &stru_49C80, @"Dictation", PSFooterTextGroupKey}];
      [v31 addObject:v23];
      [v31 addObjectsFromArray:v29];
    }

    *&selfCopy->PSListController_opaque[v26] = v31;
  }

  return v31;
}

- (void)updateDownloadingProgressForAsset:(id)asset stalled:(BOOL)stalled
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_158DC;
  block[3] = &unk_49368;
  block[4] = self;
  block[5] = asset;
  stalledCopy = stalled;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateDownloadingStateForAsset:(id)asset success:(BOOL)success
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_15AAC;
  block[3] = &unk_49368;
  block[4] = self;
  block[5] = asset;
  successCopy = success;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)onDeviceDictationLanguagesSpecifiers
{
  selfCopy = self;
  result = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (result)
  {
    return result;
  }

  v82 = OBJC_IVAR___PSListController__specifiers;
  [(TIDictationLanguageListController *)selfCopy setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation Languages", &stru_49C80, @"Dictation"]];
  v4 = objc_alloc_init(NSMutableArray);
  v92 = +[NSCountedSet set];
  v5 = +[NSMutableArray array];
  v87 = +[NSMutableArray array];
  v85 = +[NSMutableSet set];
  v86 = +[NSMutableArray array];
  v89 = +[NSMutableArray array];
  v6 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
  v7 = [objc_msgSend(objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  v81 = [PSSpecifier groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
  [v4 addObject:?];
  v8 = +[NSMutableSet set];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obj = v6;
  v9 = [v6 countByEnumeratingWithState:&v110 objects:v117 count:16];
  v80 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
  v94 = selfCopy;
  v83 = v5;
  v84 = v4;
  v90 = v8;
  if (!v9)
  {
    v91 = 0;
    goto LABEL_35;
  }

  v10 = v9;
  v91 = 0;
  v11 = *v111;
  v12 = PSIDKey;
  v88 = 1;
  do
  {
    v13 = 0;
    do
    {
      if (*v111 != v11)
      {
        objc_enumerationMutation(obj);
      }

      v14 = *(*(&v110 + 1) + 8 * v13);
      v15 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v14 displayName], selfCopy, 0, 0, 0, 3, 0);
      [v15 setButtonAction:"toggleDictationLanguage:"];
      [v15 setProperty:objc_msgSend(v14 forKey:{"identifier"), v12}];
      [v15 setProperty:v7 forKey:@"enabledDictationLanguages"];
      [v4 addObject:v15];
      if ([objc_msgSend(v7 objectForKeyedSubscript:{objc_msgSend(v14, "identifier")), "BOOLValue"}])
      {
        [v14 identifier];
        UIKeyboardInputModeGetBaseLanguage();
        [v92 addObject:UIKeyboardInputModeGetBaseLanguage()];
        if (!-[NSDictionary objectForKeyedSubscript:](-[TIDictationLanguageListController offlineStatusForLanguage](selfCopy, "offlineStatusForLanguage"), "objectForKeyedSubscript:", [objc_msgSend(v14 "identifier")]))
        {
          v16 = _AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode();
          if (v16)
          {
            [(NSDictionary *)[(TIDictationLanguageListController *)v94 offlineStatusForLanguage] objectForKeyedSubscript:v16];
          }
        }

        if (!AFOfflineDictationStatusStringIsHighQualityModelSupported())
        {
          identifier = [v14 identifier];
          v18 = v89;
          goto LABEL_15;
        }

        ++v91;
        if (AFOfflineDictationStatusStringIsInstalled())
        {
          [v87 addObject:{objc_msgSend(v14, "identifier")}];
          v88 &= AFOfflineDictationStatusStringIsOnDeviceSearchSupported();
          goto LABEL_16;
        }

        if (!AFOfflineDictationStatusStringIsInstalling())
        {
          identifier = [v14 identifier];
          v18 = v86;
LABEL_15:
          [v18 addObject:identifier];
LABEL_16:
          selfCopy = v94;
          goto LABEL_17;
        }

        v19 = -[NSMutableSet containsObject:](-[TIDictationLanguageListController onDeviceLocalesDownloading](v94, "onDeviceLocalesDownloading"), "containsObject:", [v14 identifier]);
        identifier2 = [v14 identifier];
        if (v19)
        {
          v21 = v85;
        }

        else
        {
          v21 = v86;
        }

        [v21 addObject:identifier2];
        v22 = AFOfflineDictationStatusStringAssetId();
        if (v22)
        {
          v23 = v22;
          [v90 addObject:v22];
          v24 = [(NSMutableDictionary *)[(TIDictationLanguageListController *)v94 assetIdToLanguages] objectForKeyedSubscript:v23];
          if (!v24)
          {
            v24 = +[NSMutableSet set];
            [(NSMutableDictionary *)[(TIDictationLanguageListController *)v94 assetIdToLanguages] setObject:v24 forKeyedSubscript:v23];
          }

          [v24 addObject:{objc_msgSend(v14, "identifier")}];
          selfCopy = v94;
        }

        else
        {
          selfCopy = v94;
        }

        v4 = v84;
      }

LABEL_17:
      v13 = v13 + 1;
    }

    while (v10 != v13);
    v25 = [obj countByEnumeratingWithState:&v110 objects:v117 count:16];
    v10 = v25;
  }

  while (v25);
  v26 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES";
  if (v88)
  {
    v26 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
  }

  v80 = v26;
  v5 = v83;
  v8 = v90;
LABEL_35:
  v27 = v92;
  if ([v8 count])
  {
    [v8 minusSet:{-[TIDictationLanguageListController trackingDownloadStatusForAssetsIDs](selfCopy, "trackingDownloadStatusForAssetsIDs")}];
    if ([v8 count])
    {
      v108 = 0u;
      v109 = 0u;
      v106 = 0u;
      v107 = 0u;
      allObjects = [v8 allObjects];
      v29 = [allObjects countByEnumeratingWithState:&v106 objects:v116 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v107;
        do
        {
          for (i = 0; i != v30; i = i + 1)
          {
            if (*v107 != v31)
            {
              objc_enumerationMutation(allObjects);
            }

            v33 = *(*(&v106 + 1) + 8 * i);
            [(NSMutableSet *)[(TIDictationLanguageListController *)v94 trackingDownloadStatusForAssetsIDs] addObject:v33];
            [v8 removeObject:v33];
            v34 = [objc_msgSend(-[NSMutableDictionary objectForKeyedSubscript:](-[TIDictationLanguageListController assetIdToLanguages](v94 "assetIdToLanguages")];
            if (v34)
            {
              v35 = v34;
              v36 = [TIWeakRefHolder weakRefHolderWithObject:v94];
              v37 = sub_16EE4();
              systemClientId = [sub_16EE4() systemClientId];
              v104[5] = v33;
              v105[0] = _NSConcreteStackBlock;
              v105[1] = 3221225472;
              v105[2] = sub_16FB8;
              v105[3] = &unk_49390;
              v105[4] = v36;
              v105[5] = v33;
              v104[0] = _NSConcreteStackBlock;
              v104[1] = 3221225472;
              v104[2] = sub_16FFC;
              v104[3] = &unk_493B8;
              v104[4] = v36;
              v39 = v37;
              v8 = v90;
              [v39 fetchAssetsForLanguage:v35 clientIdentifier:systemClientId urgent:0 forceUpgrade:0 detailedProgress:v105 completion:v104];
            }
          }

          v30 = [allObjects countByEnumeratingWithState:&v106 objects:v116 count:16];
        }

        while (v30);
      }

      v102 = 0u;
      v103 = 0u;
      v100 = 0u;
      v101 = 0u;
      v40 = [v8 countByEnumeratingWithState:&v100 objects:v115 count:16];
      selfCopy = v94;
      v5 = v83;
      v27 = v92;
      if (v40)
      {
        v41 = v40;
        v42 = *v101;
        do
        {
          for (j = 0; j != v41; j = j + 1)
          {
            if (*v101 != v42)
            {
              objc_enumerationMutation(v8);
            }

            [(NSMutableDictionary *)[(TIDictationLanguageListController *)v94 assetIdToLanguages] removeObjectForKey:*(*(&v100 + 1) + 8 * j)];
          }

          v41 = [v8 countByEnumeratingWithState:&v100 objects:v115 count:16];
        }

        while (v41);
      }
    }
  }

  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v44 = [v27 countByEnumeratingWithState:&v96 objects:v114 count:16];
  if (v44)
  {
    v45 = v44;
    v46 = *v97;
    do
    {
      for (k = 0; k != v45; k = k + 1)
      {
        if (*v97 != v46)
        {
          objc_enumerationMutation(v27);
        }

        v48 = *(*(&v96 + 1) + 8 * k);
        if ([v27 countForObject:v48] >= 2)
        {
          [v5 addObject:v48];
        }
      }

      v45 = [v27 countByEnumeratingWithState:&v96 objects:v114 count:16];
    }

    while (v45);
  }

  v49 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_49C80, @"Keyboard"];
  if (!v91)
  {
    v52 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER", &stru_49C80, @"Keyboard"];
    goto LABEL_70;
  }

  if (![v89 count])
  {
    if (v91 == 1)
    {
      if ([v85 count])
      {
        v53 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_49C80, @"Keyboard"];
        v55 = [NSBundle bundleForClass:objc_opt_class()];
        v56 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING";
LABEL_75:
        v57 = [(NSBundle *)v55 localizedStringForKey:v56 value:&stru_49C80 table:@"Keyboard"];
        goto LABEL_93;
      }

      v68 = [v87 count];
      v69 = [NSBundle bundleForClass:objc_opt_class()];
      if (!v68)
      {
        v53 = [(NSBundle *)v69 localizedStringForKey:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY" value:&stru_49C80 table:@"Keyboard"];
        v79 = [NSBundle bundleForClass:objc_opt_class()];
        v56 = SFLocalizableWAPIStringKeyForKey();
        v55 = v79;
        goto LABEL_75;
      }

      v52 = [(NSString *)[(NSBundle *)v69 localizedStringForKey:@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING" value:&stru_49C80 table:@"Keyboard"] stringByAppendingFormat:@" %@", [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v80, &stru_49C80, @"Keyboard"]];
    }

    else
    {
      if (![v87 count] && !objc_msgSend(v85, "count"))
      {
        goto LABEL_84;
      }

      if ([v85 count])
      {
        if (![v87 count])
        {
          goto LABEL_91;
        }

        v63 = [NSBundle bundleForClass:objc_opt_class()];
        v64 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v63, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", [v87 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v87, 1, v5));
        v51 = [(NSString *)v64 stringByAppendingFormat:@" %@", [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_SOMETIMES", &stru_49C80, @"Keyboard"]];
LABEL_92:
        v53 = v51;
        v74 = [NSBundle bundleForClass:objc_opt_class()];
        v57 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v74, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING_WITH_LANGUAGE", [v85 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", objc_msgSend(v85, "allObjects"), 1, v5));
        goto LABEL_93;
      }

      v70 = [v86 count];
      v71 = [NSBundle bundleForClass:objc_opt_class()];
      if (v70)
      {
        v72 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v71, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", [v87 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v87, 1, v5));
        v53 = [(NSString *)v72 stringByAppendingFormat:@" %@", [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_SOMETIMES", &stru_49C80, @"Keyboard"]];
        v73 = [NSBundle bundleForClass:objc_opt_class()];
        LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [v86 count], @"_WIFI");
        v66 = [(NSBundle *)v73 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"];
        v67 = v86;
        goto LABEL_90;
      }

      v52 = [NSString stringWithFormat:@"%@ %@", [(NSBundle *)v71 localizedStringForKey:@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING" value:&stru_49C80 table:@"Keyboard"], [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v80, &stru_49C80, @"Keyboard"]];
    }

LABEL_70:
    v53 = v52;
    goto LABEL_71;
  }

  if ([v87 count] || objc_msgSend(v85, "count"))
  {
    if ([v85 count])
    {
      if ([v87 count])
      {
        v50 = [NSBundle bundleForClass:objc_opt_class()];
        v51 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v50, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", [v87 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v87, 1, v5));
        goto LABEL_92;
      }

LABEL_91:
      v51 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_49C80, @"Keyboard"];
      goto LABEL_92;
    }

    v95 = [v86 count];
    v58 = [NSBundle bundleForClass:objc_opt_class()];
    v59 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v58, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING_WITH_LANGUAGE", [v87 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v87, 1, v5));
    v60 = [NSBundle bundleForClass:objc_opt_class()];
    v53 = -[NSString stringByAppendingFormat:](v59, "stringByAppendingFormat:", @" %@", +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v60, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SERVER_SOMETIMES_WITH_LANGUAGE", [v89 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v89, 1, v5)));
    if (v95)
    {
      v61 = [NSBundle bundleForClass:objc_opt_class()];
      LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [v86 count], @"_WIFI");
      v62 = [NSString stringWithFormat:[(NSBundle *)v61 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"], [KeyboardController localizedListForInputModes:v86 forDictation:1 duplicatedBaseLanguages:v5]];
      goto LABEL_94;
    }

LABEL_71:
    v54 = [(NSString *)v53 stringByAppendingFormat:@" %@", v49];
LABEL_96:
    v76 = v54;
    goto LABEL_97;
  }

LABEL_84:
  v53 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_49C80, @"Keyboard"];
  v65 = [NSBundle bundleForClass:objc_opt_class()];
  LocStringKeyBasedOnLanguageCount(@"DICTATION_ON_DEVICE_SUPPORT_DOWNLOAD_WITH_LANGUAGE", [v86 count], @"_WIFI");
  v66 = [(NSBundle *)v65 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"];
  v67 = v86;
LABEL_90:
  v57 = [NSString stringWithFormat:v66, [KeyboardController localizedListForInputModes:v67 forDictation:1 duplicatedBaseLanguages:v5]];
LABEL_93:
  v62 = v57;
LABEL_94:
  v75 = [(NSString *)v53 stringByAppendingFormat:@" %@", v49];
  v76 = v75;
  if (v62)
  {
    v54 = [(NSString *)v75 stringByAppendingFormat:@"\n\n%@", v62];
    goto LABEL_96;
  }

LABEL_97:
  v77 = objc_opt_class();
  [v81 setProperty:NSStringFromClass(v77) forKey:PSFooterCellClassGroupKey];
  [v81 setProperty:v76 forKey:PSFooterHyperlinkViewTitleKey];
  v118.location = [(NSString *)v76 rangeOfString:v49];
  [v81 setProperty:NSStringFromRange(v118) forKey:PSFooterHyperlinkViewLinkRangeKey];
  v78 = [NSValue valueWithNonretainedObject:selfCopy];
  [v81 setProperty:v78 forKey:PSFooterHyperlinkViewTargetKey];
  [v81 setProperty:NSStringFromSelector("presentPrivacySheet:") forKey:PSFooterHyperlinkViewActionKey];
  result = v84;
  *&selfCopy->PSListController_opaque[v82] = v84;
  return result;
}

- (void)presentPrivacySheet:(id)sheet
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (id)onDeviceNotCapableDictationLanguagesSpecifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v29 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v29)
  {
    [(TIDictationLanguageListController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation Languages", &stru_49C80, @"Dictation"]];
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
    v6 = [objc_msgSend(objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    v28 = +[NSCountedSet set];
    +[NSMutableArray array];
    v27 = +[NSMutableArray array];
    v7 = [PSSpecifier groupSpecifierWithID:@"DICTATION_LANGUAGES" name:0];
    v29 = v4;
    [v4 addObject:v7];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v8 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v8)
    {
      v9 = v8;
      v25 = v7;
      v26 = v2;
      v10 = 0;
      v11 = *v31;
      v12 = PSIDKey;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v31 != v11)
          {
            objc_enumerationMutation(v5);
          }

          v14 = *(*(&v30 + 1) + 8 * i);
          v15 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", [v14 displayName], self, 0, 0, 0, 3, 0);
          [v15 setButtonAction:"toggleDictationLanguage:"];
          [v15 setProperty:objc_msgSend(v14 forKey:{"identifier"), v12}];
          [v15 setProperty:v6 forKey:@"enabledDictationLanguages"];
          [v29 addObject:v15];
          if ([objc_msgSend(v6 objectForKeyedSubscript:{objc_msgSend(v14, "identifier")), "BOOLValue"}])
          {
            [v14 identifier];
            UIKeyboardInputModeGetBaseLanguage();
            [v28 addObject:UIKeyboardInputModeGetBaseLanguage()];
            if (-[NSDictionary objectForKeyedSubscript:](-[TIDictationLanguageListController offlineStatusForLanguage](self, "offlineStatusForLanguage"), "objectForKeyedSubscript:", [objc_msgSend(v14 "identifier")]))
            {
              ++v10;
              if (AFOfflineDictationStatusStringIsInstalled())
              {
                [v27 addObject:{objc_msgSend(v14, "identifier")}];
              }
            }
          }
        }

        v9 = [v5 countByEnumeratingWithState:&v30 objects:v34 count:16];
      }

      while (v9);
      v16 = v10 == 0;
      v7 = v25;
      v2 = v26;
    }

    else
    {
      v16 = 1;
    }

    v17 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_49C80, @"Keyboard"];
    v18 = [NSString stringWithFormat:@"%@ %@", [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER", &stru_49C80, @"Keyboard"], v17];
    if (v16)
    {
      goto LABEL_19;
    }

    if ([v27 count])
    {
      v19 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", -[NSBundle localizedStringForKey:value:table:](v19, "localizedStringForKey:value:table:", LocStringKeyBasedOnLanguageCount(@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE", [v27 count], 0), &stru_49C80, @"Keyboard"), +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", v27, 1, 0));
      if (!v20)
      {
LABEL_19:
        v21 = objc_opt_class();
        [v7 setProperty:NSStringFromClass(v21) forKey:PSFooterCellClassGroupKey];
        [v7 setProperty:v18 forKey:PSFooterHyperlinkViewTitleKey];
        v35.location = [(NSString *)v18 rangeOfString:v17];
        [v7 setProperty:NSStringFromRange(v35) forKey:PSFooterHyperlinkViewLinkRangeKey];
        v22 = [NSValue valueWithNonretainedObject:self];
        [v7 setProperty:v22 forKey:PSFooterHyperlinkViewTargetKey];
        [v7 setProperty:NSStringFromSelector("presentPrivacySheet:") forKey:PSFooterHyperlinkViewActionKey];
        *&self->PSListController_opaque[v2] = v29;
        return v29;
      }
    }

    else
    {
      v24 = [NSBundle bundleForClass:objc_opt_class()];
      v20 = [(NSBundle *)v24 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"];
      if (!v20)
      {
        goto LABEL_19;
      }
    }

    v18 = [(NSString *)v18 stringByAppendingFormat:@"\n\n%@", v20];
    goto LABEL_19;
  }

  return v29;
}

- (id)specifiers
{
  if (_os_feature_enabled_impl())
  {

    return [(TIDictationLanguageListController *)self slsDictationLanguagesSpecifiers];
  }

  else if (AFDeviceHighestLanguageModelCapabilityIdentifier() == 10)
  {

    return [(TIDictationLanguageListController *)self onDeviceDictationLanguagesSpecifiers];
  }

  else
  {

    return [(TIDictationLanguageListController *)self onDeviceNotCapableDictationLanguagesSpecifiers];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  if (_os_feature_enabled_impl())
  {

    return [(TIDictationLanguageListController *)self tableView:view classicDictationCellForRowAtIndexPath:path];
  }

  else
  {

    return [(TIDictationLanguageListController *)self tableView:view enhancedDictationCellForRowAtIndexPath:path];
  }
}

- (id)tableView:(id)view enhancedDictationCellForRowAtIndexPath:(id)path
{
  v15.receiver = self;
  v15.super_class = TIDictationLanguageListController;
  v6 = [(TIDictationLanguageListController *)&v15 tableView:view cellForRowAtIndexPath:?];
  v7 = [(TIDictationLanguageListController *)self specifierAtIndex:[(TIDictationLanguageListController *)self indexForIndexPath:path]];
  v8 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  v9 = [objc_opt_class() numberOfEnabledEntries:{objc_msgSend(v8, "valueForPreferenceKey:", UIDictationLanguagesEnabled)}];
  +[UIKeyboardInputModeController sharedInputModeController];
  if (objc_opt_respondsToSelector())
  {
    v10 = +[UIKeyboardInputModeController sharedInputModeController];
    v11 = [v10 isDictationLanguageEnabled:{objc_msgSend(v7, "propertyForKey:", PSIDKey)}];
    [v6 setChecked:v11];
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v9 == 1)
  {
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  [v6 setUserInteractionEnabled:v12];
  if (v12)
  {
    [objc_msgSend(v6 "titleLabel")];
    [v6 setSelectionStyle:3];
    v13 = 0;
  }

  else
  {
    [objc_msgSend(v6 "titleLabel")];
    [v6 setSelectionStyle:0];
    v13 = +[UIColor systemGrayColor];
  }

  [v6 setTintColor:v13];
  return v6;
}

- (id)tableView:(id)view classicDictationCellForRowAtIndexPath:(id)path
{
  v43.receiver = self;
  v43.super_class = TIDictationLanguageListController;
  v6 = [(TIDictationLanguageListController *)&v43 tableView:view cellForRowAtIndexPath:?];
  v7 = [(TIDictationLanguageListController *)self specifierAtIndex:[(TIDictationLanguageListController *)self indexForIndexPath:path]];
  v8 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  v9 = [v8 valueForPreferenceKey:UIDictationLanguagesEnabled];
  if (![path section])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    allKeys = [v9 allKeys];
    v13 = [allKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v40;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v40 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 += [objc_msgSend(v9 objectForKeyedSubscript:{*(*(&v39 + 1) + 8 * i)), "BOOLValue"}];
        }

        v14 = [allKeys countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v14);
      v18 = v15 == 1;
    }

    else
    {
      v18 = 0;
    }

    +[UIKeyboardInputModeController sharedInputModeController];
    if (objc_opt_respondsToSelector())
    {
      v26 = +[UIKeyboardInputModeController sharedInputModeController];
      v27 = [v26 isDictationLanguageEnabled:{objc_msgSend(v7, "propertyForKey:", PSIDKey)}];
      [v6 setChecked:v27];
      [v6 setUserInteractionEnabled:v27 & v18 ^ 1];
      if (((v27 & v18 ^ 1) & 1) == 0)
      {
LABEL_35:
        [objc_msgSend(v6 "titleLabel")];
        [v6 setSelectionStyle:0];
        v28 = +[UIColor systemGrayColor];
        goto LABEL_28;
      }
    }

    else
    {
      [v6 setUserInteractionEnabled:1];
    }

LABEL_26:
    [objc_msgSend(v6 "titleLabel")];
    v10 = v6;
    v11 = 3;
    goto LABEL_27;
  }

  if ([path section] == &dword_0 + 1)
  {
    [objc_msgSend(v6 "titleLabel")];
    v10 = v6;
    v11 = 0;
LABEL_27:
    [v10 setSelectionStyle:v11];
    v28 = 0;
LABEL_28:
    [v6 setTintColor:v28];
    return v6;
  }

  if ([path section] == &dword_0 + 2)
  {
    [v6 setSelectionStyle:3];
    v19 = [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    allKeys2 = [v19 allKeys];
    v21 = [allKeys2 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = 0;
      v24 = *v36;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v36 != v24)
          {
            objc_enumerationMutation(allKeys2);
          }

          v23 += [objc_msgSend(v19 objectForKeyedSubscript:{*(*(&v35 + 1) + 8 * j)), "BOOLValue"}];
        }

        v22 = [allKeys2 countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v22);
    }

    else
    {
      v23 = 0;
    }

    v30 = [v7 propertyForKey:PSTitleKey];
    if (v19)
    {
      v31 = v30;
      [v6 setChecked:{objc_msgSend(objc_msgSend(v19, "objectForKeyedSubscript:", v30), "BOOLValue")}];
      v32 = [objc_msgSend(v9 objectForKeyedSubscript:{v31), "BOOLValue"}];
      v33 = [objc_msgSend(v19 objectForKeyedSubscript:{v31), "BOOLValue"}];
      v34 = v23 != 2;
      if (!v33)
      {
        v34 = ((v23 & 0xFFFFFFFE) == 2) & v32;
      }

      if (v34 != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_26;
    }
  }

  return v6;
}

- (void)toggleSLSEnabled:(id)enabled
{
  v5 = [enabled propertyForKey:PSTableCellKey];
  isChecked = [v5 isChecked];
  v7 = [enabled propertyForKey:PSTitleKey];
  v8 = [objc_msgSend(+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = 0;
    v13 = *v19;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(allKeys);
        }

        v12 += [objc_msgSend(v8 objectForKeyedSubscript:{*(*(&v18 + 1) + 8 * i)), "BOOLValue"}];
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  else
  {
    v12 = 0;
  }

  v15 = (v12 - 4) < 0xFFFFFFFD;
  if (isChecked)
  {
    v15 = v12 == 2;
  }

  if (!v15)
  {
    v16 = [objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    if (isChecked)
    {
      [v5 setChecked:isChecked ^ 1];
      v17 = +[UIColor grayColor];
    }

    else
    {
      if (![objc_msgSend(v16 objectForKeyedSubscript:{v7), "BOOLValue"}])
      {
        return;
      }

      [v5 setChecked:isChecked ^ 1];
      v17 = +[UIColor blackColor];
    }

    [objc_msgSend(v5 "titleLabel")];
    [v8 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", isChecked ^ 1), v7}];
    [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
    [*&self->PSListController_opaque[OBJC_IVAR___PSListController__table] reloadData];
  }
}

- (void)handleSmartLanguageSelectionOnDictationLanguageToggle:(BOOL)toggle enabledDictationLanguages:(id)languages specifier:(id)specifier
{
  toggleCopy = toggle;
  v8 = [objc_msgSend(+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  v9 = [specifier propertyForKey:PSIDKey];
  v10 = [objc_opt_class() numberOfEnabledEntries:languages];
  if (toggleCopy)
  {
    if (![objc_msgSend(v8 objectForKeyedSubscript:{v9), "BOOLValue"}])
    {
      return;
    }

    [v8 setObject:+[NSNumber numberWithBool:](NSNumber forKeyedSubscript:{"numberWithBool:", 0), v9}];
    if (v10 == &dword_0 + 2)
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      allKeys = [v8 allKeys];
      v12 = [allKeys countByEnumeratingWithState:&v40 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v41;
        do
        {
          for (i = 0; i != v13; i = i + 1)
          {
            if (*v41 != v14)
            {
              objc_enumerationMutation(allKeys);
            }

            [v8 setObject:&__kCFBooleanFalse forKeyedSubscript:*(*(&v40 + 1) + 8 * i)];
          }

          v13 = [allKeys countByEnumeratingWithState:&v40 objects:v46 count:16];
        }

        while (v13);
      }
    }

    else if (v10 >= 3 && [objc_opt_class() numberOfEnabledEntries:v8] <= 1)
    {
      v25 = [objc_msgSend(languages keysOfEntriesPassingTest:{&stru_493F8), "mutableCopy"}];
      [v25 intersectSet:{objc_msgSend(v8, "keysOfEntriesPassingTest:", &stru_49418)}];
      [v25 removeObject:v9];
      v26 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v27 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v37;
        while (2)
        {
          for (j = 0; j != v28; j = j + 1)
          {
            if (*v37 != v29)
            {
              objc_enumerationMutation(v26);
            }

            v31 = *(*(&v36 + 1) + 8 * j);
            if ([v25 containsObject:{objc_msgSend(v31, "identifier")}])
            {
              identifier = [v31 identifier];
              v22 = &__kCFBooleanTrue;
              v23 = v8;
              goto LABEL_23;
            }
          }

          v28 = [v26 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_24;
  }

  v16 = [objc_opt_class() numberOfEnabledEntries:v8];
  if (v10 == &dword_0 + 1)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    allKeys2 = [languages allKeys];
    v18 = [allKeys2 countByEnumeratingWithState:&v32 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v33;
      do
      {
        for (k = 0; k != v19; k = k + 1)
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(allKeys2);
          }

          [v8 setObject:objc_msgSend(languages forKeyedSubscript:{"objectForKeyedSubscript:", *(*(&v32 + 1) + 8 * k)), *(*(&v32 + 1) + 8 * k)}];
        }

        v19 = [allKeys2 countByEnumeratingWithState:&v32 objects:v44 count:16];
      }

      while (v19);
    }
  }

  if (v16 <= 3 && v10 >= 1)
  {
    v22 = [NSNumber numberWithBool:1];
    v23 = v8;
    identifier = v9;
LABEL_23:
    [v23 setObject:v22 forKeyedSubscript:identifier];
LABEL_24:
    [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  }
}

- (void)toggleDictationLanguage:(id)language
{
  v5 = [language propertyForKey:PSTableCellKey];
  isChecked = [v5 isChecked];
  v7 = [language propertyForKey:@"enabledDictationLanguages"];
  if (_os_feature_enabled_impl())
  {
    [(TIDictationLanguageListController *)self handleSmartLanguageSelectionOnDictationLanguageToggle:isChecked enabledDictationLanguages:v7 specifier:language];
  }

  [v5 setChecked:isChecked ^ 1];
  v8 = [NSNumber numberWithInt:isChecked ^ 1];
  [v7 setObject:v8 forKey:{objc_msgSend(language, "propertyForKey:", PSIDKey)}];
  [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  if (objc_opt_respondsToSelector())
  {
    [objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  }

  [+[CloudSettingsManager sharedCloudSettingsManager](CloudSettingsManager "sharedCloudSettingsManager")];

  [(TIDictationLanguageListController *)self reloadSpecifiers];
}

@end