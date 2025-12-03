@interface KeyboardController
+ (BOOL)_isLowStorageForOnDeviceDictationAsset;
+ (id)localizedDisplayNameForInputMode:(id)mode forDictation:(BOOL)dictation;
+ (id)localizedStringForGeneralKeyboardSpecifier;
+ (id)localizedStringForKeyboardController;
+ (id)singleActiveDisabledDictationLanguage;
+ (int64_t)compareUsingOrderInArray:(id)array withFirst:(id)first second:(id)second;
+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller;
+ (void)localizeAndSortPreferencesArray:(id)array;
- (BOOL)_supportsProKeyboard;
- (BOOL)feedbackFeatureEnabled;
- (KeyboardController)init;
- (NSArray)openShortcutsSpecifiers;
- (id)addAllPreferencesToArray:(id)array mapPreferenceToInputMode:(id)mode;
- (id)autoPunctuation:(id)punctuation;
- (id)bundle;
- (id)dictationEnabled:(id)enabled;
- (id)dictationHWShortcutSpecifier;
- (id)getProKeyboardSetting:(id)setting;
- (id)getReachableKeybordSetting:(id)setting;
- (id)groupPreferences:(id)preferences forMapping:(id)mapping inputModes:(id)modes;
- (id)hardwareKeyboardSpecifier;
- (id)loadAllKeyboardPreferences;
- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)string;
- (id)mergePreferences:(id)preferences inputModesToPreferences:(id)toPreferences;
- (id)pinyinDialect:(id)dialect;
- (id)reachableKeyboardSpecifier;
- (id)readAutocorrectionPreferenceValue:(id)value;
- (id)readCPDeleteWordPreferenceValue:(id)value;
- (id)readCPPreferenceValue:(id)value;
- (id)readCheckSpellingPreferenceValue:(id)value;
- (id)readKeyboardAllowPaddlePreferenceValue:(id)value;
- (id)readKeyboardInlineCompletionPreferenceValue:(id)value;
- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)value;
- (id)readKeyboardVisceralPreferenceValue:(id)value;
- (id)readPredictionPreferenceValue:(id)value;
- (id)readPreferenceValue:(id)value;
- (id)readSmartTypingPreferenceValue:(id)value;
- (id)selectSpecifier:(id)specifier;
- (id)shuangpinType:(id)type;
- (id)smartFullwidthSpace:(id)space;
- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)count inputModes:(id)modes;
- (id)specifiers;
- (id)wubiStandard:(id)standard;
- (void)_dismissConfirmationSheet;
- (void)addDictationItems:(id)items;
- (void)addEnabledExtensionSpecifiersToArray:(id)array;
- (void)addFeedbackItems:(id)items;
- (void)addFooterTextForDialectSpecifierForGroup:(id)group;
- (void)addFooterTextForStickers:(id)stickers;
- (void)addHardwareKeyboardAndShortcuts:(id)shortcuts;
- (void)dealloc;
- (void)dictationDisabledCancelled:(id)cancelled;
- (void)dictationDisabledConfirmed:(id)confirmed;
- (void)dictationEnabledCancelled:(id)cancelled;
- (void)dictationEnabledConfirmed:(id)confirmed;
- (void)dictationShortcutSubtitle:(id)subtitle;
- (void)disableLockedDownPreferencesForGroup:(id)group;
- (void)emitNavigationEventForRootController;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)launchManageStorage:(id)storage;
- (void)loadPreferenceForInputModeIdentifier:(id)identifier keyboardInputMode:(id)mode addNewPreferencesToArray:(id)array defaultPreferenceIdentifiers:(id)identifiers additionalPreferenceIdentifiers:(id)preferenceIdentifiers mapPreferenceToInputMode:(id)inputMode;
- (void)managedKeyboardSettingsDidChange;
- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)group;
- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)group;
- (void)offlineDictationStatusUpdated:(id)updated;
- (void)preferencesDidChange:(id)change;
- (void)presentPrivacySheet:(id)sheet;
- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)group;
- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)group;
- (void)setAutoPunctuation:(id)punctuation specifier:(id)specifier;
- (void)setAutocorrectionPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setCheckSpellingPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setDictationEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setKeyboardAllowPaddlePreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setKeyboardVisceralPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setPinyinDialect:(id)dialect specifier:(id)specifier;
- (void)setPredictionPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setProKeyboardSetting:(id)setting specifier:(id)specifier;
- (void)setReachableKeyboardSetting:(id)setting specifier:(id)specifier;
- (void)setShuangpinType:(id)type specifier:(id)specifier;
- (void)setSmartFullwidthSpace:(id)space specifier:(id)specifier;
- (void)setSmartTypingPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)setWubiStandard:(id)standard specifier:(id)specifier;
- (void)showDictationDisabledDialogForSpecifier:(id)specifier;
- (void)showDictationEnableDialogForSpecifier:(id)specifier;
@end

@implementation KeyboardController

- (void)offlineDictationStatusUpdated:(id)updated
{
  [(KeyboardController *)self setOfflineStatusForLanguage:updated];

  [(KeyboardController *)self reloadSpecifiers];
}

+ (BOOL)_isLowStorageForOnDeviceDictationAsset
{
  v4 = 0;
  v2 = [+[NSFileManager defaultManager](NSFileManager attributesOfFileSystemForPath:"attributesOfFileSystemForPath:error:" error:@"/private/var/MobileAsset/AssetsV2", &v4];
  if (v2)
  {
    v2 = [(NSDictionary *)v2 objectForKey:NSFileSystemFreeSize];
    if (v2)
    {
      LOBYTE(v2) = [(NSDictionary *)v2 unsignedLongLongValue]>> 22 < 0x7D;
    }
  }

  return v2;
}

- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)string
{
  v4 = +[NSCountedSet set];
  v25 = +[NSMutableArray array];
  v26 = +[NSMutableArray array];
  v27 = +[NSMutableArray array];
  v28 = +[NSMutableArray array];
  v5 = [+[TUIPreferencesController sharedPreferencesController](TUIPreferencesController "sharedPreferencesController")];
  v6 = [objc_msgSend(objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v29 = 0;
    v9 = *v35;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v35 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v34 + 1) + 8 * i);
        if ([objc_msgSend(v6 objectForKeyedSubscript:{objc_msgSend(v11, "identifier")), "BOOLValue"}])
        {
          [v11 identifier];
          UIKeyboardInputModeGetBaseLanguage();
          [v4 addObject:UIKeyboardInputModeGetBaseLanguage()];
          if (!-[NSDictionary objectForKeyedSubscript:](-[KeyboardController offlineStatusForLanguage](self, "offlineStatusForLanguage"), "objectForKeyedSubscript:", [objc_msgSend(v11 "identifier")]))
          {
            v12 = _AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode();
            if (v12)
            {
              [(NSDictionary *)[(KeyboardController *)self offlineStatusForLanguage] objectForKeyedSubscript:v12];
            }
          }

          if (AFOfflineDictationStatusStringIsHighQualityModelSupported())
          {
            ++v29;
            IsInstalled = AFOfflineDictationStatusStringIsInstalled();
            identifier = [v11 identifier];
            if (IsInstalled)
            {
              v15 = v26;
            }

            else
            {
              v15 = v27;
            }
          }

          else
          {
            identifier = [v11 identifier];
            v15 = v28;
          }

          [v15 addObject:identifier];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v8);
  }

  else
  {
    v29 = 0;
  }

  result = [v27 count];
  if (result)
  {
    if (![objc_opt_class() _isLowStorageForOnDeviceDictationAsset])
    {
      return 0;
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v17 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v31;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v31 != v19)
          {
            objc_enumerationMutation(v4);
          }

          v21 = *(*(&v30 + 1) + 8 * j);
          if ([v4 countForObject:v21] >= 2)
          {
            [v25 addObject:v21];
          }
        }

        v18 = [v4 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v18);
    }

    result = [v27 count];
    if (result)
    {
      if ([v28 count] || v29 >= 2)
      {
        v22 = [NSBundle bundleForClass:objc_opt_class()];
        if ([v27 count] < 2)
        {
          v23 = @"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE";
        }

        else
        {
          v23 = [@"DICTATION_ON_DEVICE_LOW_STORAGE_WITH_LANGUAGE" stringByAppendingString:@"S"];
        }

        result = [NSString stringWithFormat:[(NSBundle *)v22 localizedStringForKey:v23 value:&stru_49C80 table:@"Keyboard"], [KeyboardController localizedListForInputModes:v27 forDictation:1 duplicatedBaseLanguages:v25]];
        goto LABEL_42;
      }

      if (v29 == 1)
      {
        result = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_LOW_STORAGE", &stru_49C80, @"Keyboard"];
LABEL_42:
        if (string)
        {
          if (result)
          {
            return [result stringByAppendingFormat:@" %@", string];
          }
        }

        return result;
      }

      return 0;
    }
  }

  return result;
}

- (KeyboardController)init
{
  v10.receiver = self;
  v10.super_class = KeyboardController;
  v2 = [(KeyboardController *)&v10 init];
  if (v2)
  {
    v2->_dictionaryController = objc_alloc_init(TIUserWordsManager);
    +[UIKeyboardImpl sharedInstance];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_592C, [NSString stringWithUTF8String:kGSEventHardwareKeyboardAvailabilityChangedNotification], 0, 0);
    v4 = +[NSNotificationCenter defaultCenter];
    [(NSNotificationCenter *)v4 addObserver:v2 selector:"preferencesDidChange:" name:TIPreferencesControllerChangedNotification object:0];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:v2 name:"_dismissConfirmationSheet" object:UIApplicationDidEnterBackgroundNotification, 0];
    v5 = +[NSNotificationCenter defaultCenter];
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v6 = qword_56910;
    v19 = qword_56910;
    if (!qword_56910)
    {
      v11 = _NSConcreteStackBlock;
      v12 = 3221225472;
      v13 = sub_B840;
      v14 = &unk_48E88;
      v15 = &v16;
      v7 = sub_B890();
      v8 = dlsym(v7, "MCKeyboardSettingsChangedNotification");
      *(v15[1] + 24) = v8;
      qword_56910 = *(v15[1] + 24);
      v6 = v17[3];
    }

    _Block_object_dispose(&v16, 8);
    if (!v6)
    {
      sub_2C26C();
    }

    [(NSNotificationCenter *)v5 addObserver:v2 selector:"managedKeyboardSettingsDidChange" name:*v6 object:0];
    if (qword_56900 != -1)
    {
      sub_2C244();
    }

    if (AFOfflineDictationCapable())
    {
      v2->_dictationOfflineStatusObserver = [[DictationOfflineStatusObserver alloc] initWithDelegate:v2];
    }
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, [NSString stringWithUTF8String:kGSEventHardwareKeyboardAvailabilityChangedNotification], 0);
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", self];

  v4.receiver = self;
  v4.super_class = KeyboardController;
  [(KeyboardController *)&v4 dealloc];
}

- (id)bundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

- (id)readPreferenceValue:(id)value
{
  v5 = PSKeyNameKey;
  if ([objc_msgSend(value propertyForKey:{PSKeyNameKey), "isEqualToString:", @"KanaFlick"}])
  {
    v6 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (![objc_msgSend(value propertyForKey:{v5), "isEqualToString:", @"KanaLeftToRight"}])
    {
      v8.receiver = self;
      v8.super_class = KeyboardController;
      return [(KeyboardController *)&v8 readPreferenceValue:value];
    }

    v6 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return [NSNumber numberWithInt:v6];
}

- (void)setKeyboardPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v7 = [specifier propertyForKey:PSKeyNameKey];
  if (([v7 isEqualToString:@"KanaLeftToRight"] & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KanaFlick"))
  {
    v8 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
    if (v8)
    {
      v9 = v8;
      v10 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
      if (v10 < [v9 count])
      {
        v11 = [v9 objectAtIndex:v10];
        v12 = [v7 isEqualToString:@"KanaLeftToRight"];
        [value BOOLValue];
        if (v12)
        {
          [v11 _containsSubstring:@"Flick"];
        }

        else
        {
          [v11 _containsSubstring:@"RTL"];
        }

        [v9 replaceObjectAtIndex:v10 withObject:UIKeyboardInputModeWithNewSWLayout()];
        [TIKeyboardListController setInputModes:v9];
      }
    }
  }

  else
  {
    if ([v7 isEqualToString:@"KeyboardPrediction"])
    {
      v13 = +[TIPreferencesController sharedPreferencesController];
      [v13 setValue:value forPreferenceKey:TIKeyboardShowPredictionBarPreference];
    }

    else if ([v7 isEqualToString:@"KeyboardAssistant"] && (objc_msgSend(value, "BOOLValue") & 1) == 0)
    {
      UIKeyboardGetCurrentInputMode();
      UIKeyboardInputModeGetNormalizedIdentifier();
      TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    else if ([v7 isEqualToString:UIKBInputGesturesEnabled])
    {
      TIStatisticGetKey();
      [value BOOLValue];
      TIStatisticScalarSetBoolean();
    }

    if (([v7 isEqualToString:@"KeyboardAutocapitalization"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardAutocorrection") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPeriodShortcut") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathEnabled") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPrediction") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardInlineCompletion") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SpaceConfirmation") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KeyboardCapsLock"))
    {
      [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
    }

    else
    {
      [PSRootController setPreferenceValue:value specifier:specifier];
    }
  }

  v14 = PSIDKey;
  if ([objc_msgSend(specifier propertyForKey:{PSIDKey), "isEqualToString:", @"KeyboardContinuousPathEnabled"}])
  {
    v15 = [(KeyboardController *)self containsSpecifier:[(KeyboardController *)self deleteWordSpecifier]];
    if (![value BOOLValue] || (v15 & 1) != 0)
    {
      if (([value BOOLValue] & 1) == 0 && ((v15 ^ 1) & 1) == 0)
      {
        -[KeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [-[KeyboardController specifiers](self "specifiers")]);
        [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self deleteWordSpecifier] animated:1];
      }
    }

    else
    {
      [(KeyboardController *)self deleteWordSpecifierIndex];
      deleteWordSpecifierIndex = [(KeyboardController *)self deleteWordSpecifierIndex];
      v17 = [-[KeyboardController specifiers](self "specifiers")];
      deleteWordSpecifier = [(KeyboardController *)self deleteWordSpecifier];
      if (deleteWordSpecifierIndex >= v17)
      {
        [(KeyboardController *)self addSpecifier:deleteWordSpecifier animated:1];
      }

      else
      {
        [(KeyboardController *)self insertSpecifier:deleteWordSpecifier atIndex:[(KeyboardController *)self deleteWordSpecifierIndex] animated:1];
      }
    }
  }

  if ([objc_msgSend(specifier propertyForKey:{v14), "isEqualToString:", @"KeyboardPrediction"}])
  {
    v19 = [(KeyboardController *)self containsSpecifier:[(KeyboardController *)self inlineCompletionSpecifier]];
    if (![value BOOLValue] || (v19 & 1) != 0)
    {
      if (([value BOOLValue] & 1) == 0 && ((v19 ^ 1) & 1) == 0)
      {
        -[KeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [-[KeyboardController specifiers](self "specifiers")]);
        [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self inlineCompletionSpecifier] animated:1];
      }
    }

    else
    {
      [(KeyboardController *)self inlineCompletionSpecifierIndex];
      inlineCompletionSpecifierIndex = [(KeyboardController *)self inlineCompletionSpecifierIndex];
      v21 = [-[KeyboardController specifiers](self "specifiers")];
      inlineCompletionSpecifier = [(KeyboardController *)self inlineCompletionSpecifier];
      if (inlineCompletionSpecifierIndex >= v21)
      {
        [(KeyboardController *)self addSpecifier:inlineCompletionSpecifier animated:1];
      }

      else
      {
        [(KeyboardController *)self insertSpecifier:inlineCompletionSpecifier atIndex:[(KeyboardController *)self inlineCompletionSpecifierIndex] animated:1];
      }
    }
  }

  v23 = PSDefaultsKey;
  if ([objc_msgSend(specifier propertyForKey:{PSDefaultsKey), "isEqualToString:", @"com.apple.InputModePreferences"}])
  {
    v24 = @"AppleKeyboardsInputModeChangedNotification";
  }

  else if ([objc_msgSend(specifier propertyForKey:{v23), "isEqualToString:", @"com.apple.keyboard.ContinuousPath"}])
  {
    v24 = @"AppleKeyboardsContinuousPathSettingsChangedNotification";
  }

  else if ([objc_msgSend(specifier propertyForKey:{v23), "isEqualToString:", @"com.apple.keyboard.predictive"}])
  {
    v24 = @"AppleKeyboardsPredictiveChangedNotification";
  }

  else
  {
    v24 = @"AppleKeyboardsSettingsChangedNotification";
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, v24, 0, 0, 1u);
}

- (id)readAutocorrectionPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardAutocorrectionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readPredictionPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardPredictionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardInlineCompletionPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardInlineCompletionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardMathExpressionCompletionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardAllowPaddlePreferenceValue:(id)value
{
  [value propertyForKey:PSKeyNameKey];
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardAllowPaddlePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCheckSpellingPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardCheckSpellingPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardContinuousPathEnabledPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPDeleteWordPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardContinuousPathDeleteWholeWordPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setAutocorrectionPreferenceValue:(id)value forSpecifier:(id)specifier
{
  if (![(KeyboardController *)self feedbackFeatureEnabled:value]|| !sub_B9FC())
  {
    goto LABEL_8;
  }

  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = sub_496C;
  v6 = qword_56940;
  v15 = sub_497C;
  v16 = qword_56940;
  if (!qword_56940)
  {
    sub_B9FC();
    v12[5] = objc_getClass("TUIFeedbackController");
    qword_56940 = v12[5];
    v6 = v12[5];
  }

  _Block_object_dispose(&v11, 8);
  if (objc_opt_respondsToSelector())
  {
    +[TIFeedbackUtil getSupportedFeedbackLanguages];
    controller = [v6 controller];
    v8 = [controller shouldCompleteStudyWithPreferenceValue:{objc_msgSend(value, "BOOLValue")}];
    v9 = +[TIPreferencesController sharedPreferencesController];
    [v9 setValue:value forPreferenceKey:TIKeyboardAutocorrectionPreference];
    if (v8)
    {
      [controller completeStudyWithFinalPreferenceValue:objc_msgSend(value parentController:{"BOOLValue"), self}];
    }
  }

  else
  {
LABEL_8:
    v10 = +[TIPreferencesController sharedPreferencesController];
    [v10 setValue:value forPreferenceKey:TIKeyboardAutocorrectionPreference];
  }
}

- (BOOL)feedbackFeatureEnabled
{
  if (qword_56930 != -1)
  {
    sub_2C2D4();
  }

  if (byte_56928 == 1)
  {
    v2 = [objc_msgSend([NSUserDefaults alloc] initWithSuiteName:{@"com.apple.keyboard", "BOOLForKey:", @"feedbackFeatureEnabled"}];
  }

  else
  {
    v2 = 0;
  }

  if (IXACanLogMessageAtLevel())
  {
    v3 = IXAFeedbackLogFacility();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      sub_2C2E8(v2, v3);
    }
  }

  return v2;
}

- (void)setPredictionPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:value];
  [v5 setValue:value forPreferenceKey:TIKeyboardPredictionPreference];
  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = TIKeyboardShowPredictionBarPreference;

  [v6 setValue:value forPreferenceKey:v7];
}

- (void)setKeyboardAllowPaddlePreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:value];
  v6 = TIKeyboardAllowPaddlePreference;

  [v5 setValue:value forPreferenceKey:v6];
}

- (void)setCheckSpellingPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:value];
  v6 = TIKeyboardCheckSpellingPreference;

  [v5 setValue:value forPreferenceKey:v6];
}

- (id)readSmartTypingPreferenceValue:(id)value
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TISmartQuotesEnabledPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartTypingPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:value];
  [v5 setValue:value forPreferenceKey:TISmartQuotesEnabledPreference];
  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = TISmartDashesEnabledPreference;

  [v6 setValue:value forPreferenceKey:v7];
}

+ (id)singleActiveDisabledDictationLanguage
{
  v2 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if ([(NSArray *)v2 count]== &dword_0 + 1 && (v3 = +[TIInputModeController sharedInputModeController], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [v3 defaultDictationLanguagesForKeyboardLanguage:{-[NSArray firstObject](v2, "firstObject")}];
    if (!v4)
    {
      firstObject = [(NSArray *)v2 firstObject];
      v4 = [NSArray arrayWithObjects:&firstObject count:1];
    }
  }

  else
  {
    v4 = v2;
  }

  if ([(NSArray *)v4 count]== &dword_0 + 1)
  {
    v5 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    result = [objc_msgSend(v5 valueForPreferenceKey:{UIDictationLanguagesEnabled), "objectForKeyedSubscript:", -[NSArray firstObject](v4, "firstObject")}];
    if (!result)
    {
      return result;
    }

    if (([result BOOLValue] & 1) == 0)
    {
      return [(NSArray *)v4 firstObject];
    }
  }

  return 0;
}

- (id)dictationEnabled:(id)enabled
{
  if (sub_4DC4())
  {
    v3 = [objc_opt_class() singleActiveDisabledDictationLanguage] == 0;
  }

  else
  {
    v3 = 0;
  }

  return [NSNumber numberWithBool:v3];
}

- (void)showDictationEnableDialogForSpecifier:(id)specifier
{
  [specifier setConfirmationAction:"dictationEnabledConfirmed:"];
  [specifier setConfirmationCancelAction:"dictationEnabledCancelled:"];
  v4 = AFDeviceHighestLanguageModelCapabilityIdentifier();
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4 == 10)
  {
    v6 = @"DICTATION_ENABLE_PROMPT_ON_DEVICE_DICTATION_CAPABLE";
  }

  else
  {
    v6 = @"DICTATION_ENABLE_PROMPT";
  }

  v13 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_49C80 table:@"Keyboard"];
  if ([+[UIDevice sf_isiPad] currentDevice]
  {
    v7 = @"DICTATION_ENABLE_TITLE_IPAD";
  }

  else
  {
    v7 = @"DICTATION_ENABLE_TITLE_IPHONE";
  }

  v8 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v7, &stru_49C80, @"Keyboard"];
  v9 = PSConfirmationTitleKey;
  v10 = PSConfirmationPromptKey;
  v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ENABLE_OK", &stru_49C80, @"Keyboard"];
  [specifier setupWithDictionary:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v8, v9, v13, v10, v11, PSConfirmationOKKey, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ENABLE_CANCEL", &stru_49C80, @"Keyboard", PSConfirmationCancelKey, 0)}];
  sf_isiPad = [+[UIDevice currentDevice](UIDevice sf_isiPad];

  [(KeyboardController *)self showConfirmationViewForSpecifier:specifier useAlert:sf_isiPad swapAlertButtons:0];
}

- (void)showDictationDisabledDialogForSpecifier:(id)specifier
{
  v4 = [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  [+[NRPairedDeviceRegistry sharedInstance](NRPairedDeviceRegistry isPaired];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  if (v4)
  {
    v6 = @"DICTATION_DISABLE_PROMPT_SIRI_ENABLED";
  }

  else
  {
    v6 = @"DICTATION_DISABLE_PROMPT_SIRI_DISABLED";
  }

  v13 = [(NSBundle *)v5 localizedStringForKey:v6 value:&stru_49C80 table:@"Keyboard"];
  [specifier setConfirmationAction:"dictationDisabledConfirmed:"];
  [specifier setConfirmationCancelAction:"dictationDisabledCancelled:"];
  if ([+[UIDevice sf_isiPad] currentDevice]
  {
    v7 = @"DICTATION_DISABLE_TITLE_IPAD";
  }

  else
  {
    v7 = @"DICTATION_DISABLE_TITLE_IPHONE";
  }

  v8 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v7, &stru_49C80, @"Keyboard"];
  v9 = PSConfirmationTitleKey;
  v10 = PSConfirmationPromptKey;
  v11 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_DISABLE_OK", &stru_49C80, @"Keyboard"];
  [specifier setupWithDictionary:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v8, v9, v13, v10, v11, PSConfirmationOKKey, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_DISABLE_CANCEL", &stru_49C80, @"Keyboard", PSConfirmationCancelKey, 0)}];
  sf_isiPad = [+[UIDevice currentDevice](UIDevice sf_isiPad];

  [(KeyboardController *)self showConfirmationViewForSpecifier:specifier useAlert:sf_isiPad swapAlertButtons:0];
}

- (void)setDictationEnabled:(id)enabled forSpecifier:(id)specifier
{
  if ([enabled BOOLValue])
  {

    [(KeyboardController *)self showDictationEnableDialogForSpecifier:specifier];
  }

  else if ([+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")])
  {

    [(KeyboardController *)self showDictationDisabledDialogForSpecifier:specifier];
  }

  else
  {

    [(KeyboardController *)self dictationDisabledConfirmed:specifier];
  }
}

- (void)dictationEnabledConfirmed:(id)confirmed
{
  confirmedCopy = confirmed;
  [confirmed setConfirmationAction:0];
  [(PSSpecifier *)confirmedCopy setConfirmationCancelAction:0];
  singleActiveDisabledDictationLanguage = [objc_opt_class() singleActiveDisabledDictationLanguage];
  if (singleActiveDisabledDictationLanguage)
  {
    v6 = singleActiveDisabledDictationLanguage;
    [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    if (objc_opt_respondsToSelector())
    {
      v8 = v6;
      v9 = &__kCFBooleanTrue;
      [objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
      [objc_msgSend(+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController "sharedPreferencesController")];
    }
  }

  [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  dictationAutoPunctuationSpecifier = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
  if (dictationAutoPunctuationSpecifier)
  {
    confirmedCopy = dictationAutoPunctuationSpecifier;
  }

  if ([(KeyboardController *)self dictationLanguageSpecifier])
  {
    [(KeyboardController *)self insertSpecifier:[(KeyboardController *)self dictationLanguageSpecifier] afterSpecifier:confirmedCopy animated:1];
    confirmedCopy = [(KeyboardController *)self dictationLanguageSpecifier];
  }

  if ([(KeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KeyboardController *)self insertSpecifier:[(KeyboardController *)self dictationHardwareShortcutSpecifier] afterSpecifier:confirmedCopy animated:1];
    [(KeyboardController *)self dictationHardwareShortcutSpecifier];
  }

  [(KeyboardController *)self reloadSpecifiers];
}

- (void)dictationEnabledCancelled:(id)cancelled
{
  [objc_msgSend(cancelled propertyForKey:{PSControlKey), "setOn:animated:", 0, 1}];
  [cancelled setConfirmationAction:0];

  [cancelled setConfirmationCancelAction:0];
}

- (void)dictationDisabledConfirmed:(id)confirmed
{
  [confirmed setConfirmationAction:0];
  [confirmed setConfirmationCancelAction:0];
  [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  if ([(KeyboardController *)self dictationLanguageSpecifier])
  {
    [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self dictationLanguageSpecifier] animated:1];
  }

  if ([(KeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self dictationHardwareShortcutSpecifier] animated:1];
  }

  [(KeyboardController *)self reloadSpecifiers];
}

- (void)dictationDisabledCancelled:(id)cancelled
{
  [objc_msgSend(cancelled propertyForKey:{PSControlKey), "setOn:animated:", 1, 1}];
  [cancelled setConfirmationAction:0];

  [cancelled setConfirmationCancelAction:0];
}

- (void)_dismissConfirmationSheet
{
  [(KeyboardController *)self presentedViewController];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(KeyboardController *)self dismissViewControllerAnimated:0 completion:0];
  }

  [(KeyboardController *)self reloadSpecifierID:@"Dictation" animated:0];
}

- (void)presentPrivacySheet:(id)sheet
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (void)launchManageStorage:(id)storage
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];

  [v3 openSensitiveURL:v4 withOptions:0 error:0];
}

- (id)shuangpinType:(id)type
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIShuangpinTypePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setShuangpinType:(id)type specifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:type];
  [v5 setValue:type forPreferenceKey:TIShuangpinTypePreference];

  TIUpdateShuangpinSWLayout();
}

- (id)pinyinDialect:(id)dialect
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIPinyinDialectPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setPinyinDialect:(id)dialect specifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:dialect];
  [v5 setValue:dialect forPreferenceKey:TIPinyinDialectPreference];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
}

- (id)wubiStandard:(id)standard
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIWubiStandardPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setWubiStandard:(id)standard specifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:standard];
  v6 = TIWubiStandardPreference;

  [v5 setValue:standard forPreferenceKey:v6];
}

- (id)smartFullwidthSpace:(id)space
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TISmartFullwidthSpacePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartFullwidthSpace:(id)space specifier:(id)specifier
{
  v5 = [TIPreferencesController sharedPreferencesController:space];
  v6 = TISmartFullwidthSpacePreference;

  [v5 setValue:space forPreferenceKey:v6];
}

+ (id)localizedStringForGeneralKeyboardSpecifier
{
  result = qword_568F8;
  if (!qword_568F8)
  {
    v3 = [NSBundle bundleWithIdentifier:@"com.apple.GeneralSettingsUI"];
    if (v3)
    {
      result = [[_NSLocalizedStringResource alloc] initWithKey:@"Keyboard" table:@"General" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](v3, "bundleURL")}];
    }

    else
    {
      result = +[KeyboardController localizedStringForKeyboardController];
    }

    qword_568F8 = result;
  }

  return result;
}

+ (id)localizedStringForKeyboardController
{
  result = qword_568F0;
  if (!qword_568F0)
  {
    result = [[_NSLocalizedStringResource alloc] initWithKey:@"KEYBOARDS" table:@"Keyboard" locale:+[NSLocale currentLocale](NSLocale bundleURL:{"currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")}];
    qword_568F0 = result;
  }

  return result;
}

- (void)emitNavigationEventForRootController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/Keyboard"];
  v4 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
  [(KeyboardController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.keyboard" title:+[KeyboardController localizedNavigationComponents:"localizedStringForKeyboardController"]deepLink:[NSArray arrayWithObjects:&v4 count:1], v3];
}

+ (void)emitNavigationEventForSpecifier:(id)specifier viewController:(id)controller
{
  v6 = objc_opt_class();
  if ([v6 isSubclassOfClass:objc_opt_class()])
  {
    identifier = [specifier identifier];
    if (identifier)
    {
      v8 = identifier;
      v9 = [NSURL URLWithString:[NSString stringWithFormat:@"settings-navigation://com.apple.Settings.General/Keyboard/%@", identifier]];
      v13[0] = @"ReachableKeyboard";
      v13[1] = @"HardwareKeyboard";
      v14[0] = @"REACHABLE_KEYBOARD";
      v14[1] = @"Hardware Keyboard";
      v10 = [[NSDictionary dictionaryWithObjects:v13 forKeys:2 count:?], "objectForKeyedSubscript:", v8];
      if (v10)
      {
        v11 = v10;
        v12 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
        [controller pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.keyboard" title:objc_msgSend([_NSLocalizedStringResource alloc] localizedNavigationComponents:"initWithKey:table:locale:bundleURL:" deepLink:{v11, @"Keyboard", +[NSLocale currentLocale](NSLocale, "currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v12, 2), v9}];
      }
    }
  }
}

- (void)preferencesDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7B00;
  block[3] = &unk_490C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)managedKeyboardSettingsDidChange
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7C60;
  block[3] = &unk_490C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)disableLockedDownPreferencesForGroup:(id)group
{
  v4 = [group specifierForID:@"KeyboardAutocorrection"];
  if (v4)
  {
    v5 = v4;
    v6 = +[TIPreferencesController sharedPreferencesController];
    if ([v6 isPreferenceKeyLockedDown:TIKeyboardAutocorrectionPreference])
    {
      [v5 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v7 = [group specifierForID:@"KeyboardPrediction"];
  if (v7)
  {
    v8 = v7;
    v9 = +[TIPreferencesController sharedPreferencesController];
    if ([v9 isPreferenceKeyLockedDown:TIKeyboardPredictionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [group specifierForID:@"KeyboardInlineCompletion"];
    v10 = +[TIPreferencesController sharedPreferencesController];
    if ([v10 isPreferenceKeyLockedDown:TIKeyboardInlineCompletionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [group specifierForID:@"KeyboardMathExpressionCompletion"];
    v11 = +[TIPreferencesController sharedPreferencesController];
    if ([v11 isPreferenceKeyLockedDown:TIKeyboardMathExpressionCompletionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  else
  {
    [group specifierForID:@"KeyboardInlineCompletion"];
    [group specifierForID:@"KeyboardMathExpressionCompletion"];
  }

  v12 = [group specifierForID:@"KeyboardCheckSpelling"];
  if (v12)
  {
    v13 = v12;
    v14 = +[TIPreferencesController sharedPreferencesController];
    if ([v14 isPreferenceKeyLockedDown:TIKeyboardCheckSpellingPreference])
    {
      [v13 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v15 = [group specifierForID:@"SmartTyping"];
  if (v15)
  {
    v16 = v15;
    v17 = +[TIPreferencesController sharedPreferencesController];
    if ([v17 isPreferenceKeyLockedDown:TISmartQuotesEnabledPreference])
    {
      [v16 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v18 = [group specifierForID:@"KeyboardContinuousPathEnabled"];
  if (v18)
  {
    v19 = v18;
    v20 = +[TIPreferencesController sharedPreferencesController];
    if ([v20 isPreferenceKeyLockedDown:TIKeyboardContinuousPathEnabledPreference])
    {
      v21 = PSEnabledKey;

      [v19 setProperty:&__kCFBooleanFalse forKey:v21];
    }
  }
}

- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)group
{
  v4 = [group specifierForID:@"KeyboardAllowPaddle"];
  if (v4)
  {
    v5 = v4;
    if ([group specifierForID:@"KEYBOARD_TITLE"])
    {
      [group removeObject:v5];
      if ((sub_80FC() & 1) == 0)
      {

        [group addObject:v5];
      }
    }
  }
}

- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  [(KeyboardController *)self moveCharacterPreviewPreferenceToEndForGroup:?];
  v4 = [group specifierForID:@"KeyboardPeriodShortcut"];
  if (v4)
  {
    v5 = v4;
    v6 = [group specifierForID:@"KEYBOARD_TITLE"];
    if (v6)
    {
      [v6 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION", &stru_49C80, @"Keyboard", PSFooterTextGroupKey}];
      [group removeObject:v5];

      [group addObject:v5];
    }
  }
}

- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)group
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sharedInputModeController = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v5 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(sharedInputModeController);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([UIKeyboardInputModeGetVariant() isEqualToString:@"Shuangpin"])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = [group specifierForID:@"ShuangpinType"];
    if (v10)
    {
      [group removeObject:v10];
    }
  }
}

- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)group
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sharedInputModeController = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v5 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(sharedInputModeController);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([UIKeyboardInputModeGetVariant() isEqualToString:@"Pinyin"])
      {
        if ([UIKeyboardInputModeGetRegion() isEqualToString:@"Hans"])
        {
          break;
        }
      }

      if (v6 == ++v8)
      {
        v6 = [sharedInputModeController countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v10 = [group specifierForID:@"PinyinDialect"];
    if (v10)
    {
      [group removeObject:v10];
    }
  }
}

- (void)addFooterTextForDialectSpecifierForGroup:(id)group
{
  v3 = [group specifierForID:@"PinyinDialect"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [(NSBundle *)v5 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Preferences_pinyin"];
    v7 = PSStaticTextMessageKey;

    [v4 setProperty:v6 forKey:v7];
  }
}

- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  v4 = [group specifierForID:@"KEYBOARD_TITLE"];
  if (v4)
  {
    v5 = v4;
    v6 = PSFooterTextGroupKey;
    if (![v4 propertyForKey:PSFooterTextGroupKey])
    {
      v7 = [group specifierForID:@"SpaceConfirmation"];
      if (v7)
      {
        v8 = v7;
        [v5 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SPACE_CONFIRMATION_EXPLANATION", &stru_49C80, @"Keyboard", v6}];
        [group removeObject:v8];

        [group addObject:v8];
      }
    }
  }
}

- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)group
{
  v5 = [group specifierForID:@"Dictation"];
  if (v5)
  {
    v6 = v5;
    v7 = [group specifierForID:@"KEYBOARD_TITLE"];
    if (v7)
    {
      v8 = v7;
      v9 = [group specifierForID:@"KeyboardPeriodShortcut"];
      if (v9 | [group specifierForID:@"SpaceConfirmation"])
      {
        if ([v8 name])
        {
          v10 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_GROUP_TITLE", &stru_49C80, @"Keyboard"];
        }

        else
        {
          v10 = 0;
        }

        v8 = [PSSpecifier groupSpecifierWithID:@"DICTATION_GROUP_TITLE" name:v10];
        [group addObject:v8];
      }

      [group removeObject:v6];
      [group addObject:v6];
      [v8 setTarget:self];
      v11 = PSFooterCellClassGroupKey;

      [v8 setProperty:@"DictationFooterView" forKey:v11];
    }
  }
}

+ (void)localizeAndSortPreferencesArray:(id)array
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [array countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(array);
        }

        [*(*(&v8 + 1) + 8 * v7) setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v8 + 1) + 8 * v7), "name"), &stru_49C80, @"Keyboard"}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [array countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [array sortedArrayUsingComparator:&stru_49100];
}

+ (id)localizedDisplayNameForInputMode:(id)mode forDictation:(BOOL)dictation
{
  if (dictation)
  {
    v5 = TUIDictationTitle();
    if ([v5 length] && !objc_msgSend(v5, "isEqualToString:", mode))
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([UIKeyboardInputModeGetVariant() length])
  {
    v5 = TUIKeyboardTitle();
  }

  NormalizedIdentifier = UIKeyboardInputModeGetNormalizedIdentifier();
  if (![v5 length])
  {
    v5 = TUIKeyboardTitle();
  }

  if (![v5 length] || objc_msgSend(NormalizedIdentifier, "isEqualToString:", v5))
  {
    v5 = [+[NSLocale currentLocale](NSLocale localizedStringForLanguage:"localizedStringForLanguage:context:" context:UIKeyboardInputModeGetLanguage(), 3];
  }

  [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  return v5;
}

+ (int64_t)compareUsingOrderInArray:(id)array withFirst:(id)first second:(id)second
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    v11 = 1;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(array);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isEqualToString:first] && !objc_msgSend(v13, "isEqualToString:", second))
        {
          return -1;
        }

        if ([v13 isEqualToString:second] && !objc_msgSend(v13, "isEqualToString:", first))
        {
          return v11;
        }

        if ([v13 isEqualToString:first] && (objc_msgSend(v13, "isEqualToString:", second) & 1) != 0)
        {
          return 0;
        }
      }

      v9 = [array countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return [first localizedStandardCompare:second];
}

- (void)loadPreferenceForInputModeIdentifier:(id)identifier keyboardInputMode:(id)mode addNewPreferencesToArray:(id)array defaultPreferenceIdentifiers:(id)identifiers additionalPreferenceIdentifiers:(id)preferenceIdentifiers mapPreferenceToInputMode:(id)inputMode
{
  v14 = TIGetInputModeProperties();
  if (!-[UIDevice sf_isiPad](+[UIDevice currentDevice](UIDevice, "currentDevice"), "sf_isiPad") || (v15 = [v14 objectForKey:@"Preferences-iPad"]) == 0)
  {
    v15 = [v14 objectForKey:@"Preferences"];
  }

  v57 = 0;
  if (AFDictationRestricted())
  {
    v16 = 0;
  }

  else
  {
    v16 = +[AFDictationConnection dictationIsSupportedForLanguageCode:error:](AFDictationConnection, "dictationIsSupportedForLanguageCode:error:", [mode languageWithRegion], &v57);
  }

  identifierCopy = identifier;
  identifierCopy2 = identifier;
  [NSArray arrayWithObjects:&identifierCopy2 count:1];
  v17 = UIKeyboardPredictionEnabledForInputModes();
  if (v14)
  {
    v40 = [objc_msgSend(v14 objectForKey:{@"UIKeyboardInlineCompletion", "BOOLValue"}];
    obj = UIKeyboardDeviceSupportsSplit();
    v18 = [objc_msgSend(v14 objectForKey:{TIInputModePropertiesCPEnabledKey), "BOOLValue"}] ^ 1;
    v19 = [objc_msgSend(v14 objectForKey:{@"KeyboardCPAllowsDeleteWord", "BOOLValue"}] ^ 1;
  }

  else
  {
    v18 = 1;
    obj = UIKeyboardDeviceSupportsSplit();
    v40 = 0;
    v19 = 1;
  }

  v43 = v19;
  inputModeCopy = inputMode;
  if (v15)
  {
    v20 = [v15 mutableCopy];
    if (UIKeyboardCheckSpellingPossibleForInputMode())
    {
      [v20 addObject:@"KeyboardCheckSpelling"];
      if (!v16)
      {
LABEL_13:
        if (!v17)
        {
LABEL_21:
          if ((v18 & 1) == 0)
          {
            [v20 addObject:@"KeyboardContinuousPathEnabled"];
            if ((v43 & 1) == 0)
            {
              [v20 addObject:@"KeyboardContinuousPathDeleteWholeWord"];
            }
          }

          if (UIKeyboardDeviceSupportsSplit())
          {
            [v20 addObject:@"RivenKeyboard"];
          }

          [v20 addObject:{@"KeyboardAssistant", inputModeCopy}];
          [v20 addObject:@"KeyboardAllowPaddle"];
          [v20 addObject:@"GesturesEnabled"];
          goto LABEL_27;
        }

LABEL_19:
        [v20 addObject:{@"KeyboardPrediction", inputModeCopy}];
        if (v40)
        {
          [v20 addObject:@"KeyboardInlineCompletion"];
        }

        goto LABEL_21;
      }
    }

    else if (!v16)
    {
      goto LABEL_13;
    }

    [v20 addObject:{@"Dictation", inputMode}];
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ([identifierCopy isEqualToString:@"emoji"])
  {
    v20 = +[NSMutableArray array];
    goto LABEL_27;
  }

  v20 = [identifiers mutableCopy];
  if (UIKeyboardCheckSpellingPossibleForInputMode())
  {
    if (v16)
    {
      goto LABEL_55;
    }
  }

  else
  {
    [v20 removeObject:@"KeyboardCheckSpelling"];
    if (v16)
    {
LABEL_55:
      if (v17)
      {
        goto LABEL_56;
      }

      goto LABEL_60;
    }
  }

  [v20 removeObject:{@"Dictation", inputMode}];
  if (v17)
  {
LABEL_56:
    if (v40)
    {
      goto LABEL_62;
    }

    goto LABEL_61;
  }

LABEL_60:
  [v20 removeObject:{@"KeyboardPrediction", inputModeCopy}];
LABEL_61:
  [v20 removeObject:{@"KeyboardInlineCompletion", inputModeCopy}];
LABEL_62:
  if ((obj & 1) == 0)
  {
    [v20 removeObject:@"RivenKeyboard"];
  }

  if (v18)
  {
    [v20 removeObject:@"KeyboardContinuousPathEnabled"];
  }

  else if (!v43)
  {
    goto LABEL_27;
  }

  [v20 removeObject:{@"KeyboardContinuousPathDeleteWholeWord", inputModeCopy}];
LABEL_27:
  v21 = +[NSMutableArray array];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v22 = [v20 countByEnumeratingWithState:&v53 objects:v60 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v54;
    do
    {
      for (i = 0; i != v23; i = i + 1)
      {
        if (*v54 != v24)
        {
          objc_enumerationMutation(v20);
        }

        v26 = *(*(&v53 + 1) + 8 * i);
        if ([v26 hasPrefix:@"!"])
        {
          [v21 addObject:v26];
          [v21 addObject:{objc_msgSend(v26, "substringFromIndex:", 1)}];
        }
      }

      v23 = [v20 countByEnumeratingWithState:&v53 objects:v60 count:16];
    }

    while (v23);
  }

  [v20 removeObjectsInArray:v21];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  obja = [v14 objectForKey:@"AdditionalPreferencesPlist"];
  v44 = [obja countByEnumeratingWithState:&v49 objects:v59 count:16];
  if (v44)
  {
    v41 = *v50;
    do
    {
      for (j = 0; j != v44; j = j + 1)
      {
        if (*v50 != v41)
        {
          objc_enumerationMutation(obja);
        }

        v28 = [(KeyboardController *)self loadSpecifiersFromPlistName:*(*(&v49 + 1) + 8 * j) target:self];
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v29 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
        if (v29)
        {
          v30 = v29;
          v31 = *v46;
          do
          {
            for (k = 0; k != v30; k = k + 1)
            {
              if (*v46 != v31)
              {
                objc_enumerationMutation(v28);
              }

              v33 = *(*(&v45 + 1) + 8 * k);
              identifier = [v33 identifier];
              [v20 addObject:identifier];
              if (([preferenceIdentifiers containsObject:identifier] & 1) == 0)
              {
                [array addObject:v33];
                [preferenceIdentifiers addObject:identifier];
              }
            }

            v30 = [v28 countByEnumeratingWithState:&v45 objects:v58 count:16];
          }

          while (v30);
        }
      }

      v44 = [obja countByEnumeratingWithState:&v49 objects:v59 count:16];
    }

    while (v44);
  }

  [v36 setObject:v20 forKey:identifierCopy];
}

- (id)mergePreferences:(id)preferences inputModesToPreferences:(id)toPreferences
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_93CC;
  v22[3] = &unk_49128;
  v22[4] = preferences;
  v6 = [preferences indexesOfObjectsPassingTest:v22];
  if (![v6 count])
  {
    return preferences;
  }

  v7 = [preferences mutableCopy];
  v8 = +[NSMutableArray array];
  v9 = [preferences objectsAtIndexes:v6];
  v10 = +[NSMutableSet set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(v9);
        }

        v15 = *(*(&v18 + 1) + 8 * i);
        [v10 addObjectsFromArray:v15];
        [v8 addObjectsFromArray:{objc_msgSend(toPreferences, "objectForKey:", v15)}];
      }

      v12 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  [toPreferences removeObjectsForKeys:v9];
  [v7 removeObjectsAtIndexes:v6];
  allObjects = [v10 allObjects];
  [v7 insertObject:allObjects atIndex:0];
  [toPreferences setObject:v8 forKey:allObjects];
  return v7;
}

- (id)addAllPreferencesToArray:(id)array mapPreferenceToInputMode:(id)mode
{
  v16 = [array valueForKey:@"identifier"];
  v4 = +[NSMutableSet set];
  v5 = +[NSMutableSet set];
  v6 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        normalizedIdentifier = [v12 normalizedIdentifier];
        Variant = UIKeyboardInputModeGetVariant();
        if (!Variant)
        {
          Variant = UIKeyboardInputModeGetBaseLanguage();
        }

        if (![v5 member:Variant])
        {
          [v5 addObject:Variant];
          [v6 addObject:normalizedIdentifier];
          [(KeyboardController *)self loadPreferenceForInputModeIdentifier:normalizedIdentifier keyboardInputMode:v12 addNewPreferencesToArray:array defaultPreferenceIdentifiers:v16 additionalPreferenceIdentifiers:v4 mapPreferenceToInputMode:mode];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)groupPreferences:(id)preferences forMapping:(id)mapping inputModes:(id)modes
{
  v7 = +[NSMutableDictionary dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [preferences countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(preferences);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        identifier = [v12 identifier];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_9938;
        v32[3] = &unk_49150;
        v32[4] = identifier;
        v14 = [mapping keysOfEntriesPassingTest:v32];
        if ([v14 count])
        {
          v15 = [v7 objectForKeyedSubscript:v14];
          if (!v15)
          {
            v15 = +[NSMutableArray array];
            [v7 setObject:v15 forKey:v14];
          }

          [v15 addObject:v12];
        }
      }

      v9 = [preferences countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v9);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [v7 allKeys];
  v16 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        allObjects = [v20 allObjects];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_9948;
        v27[3] = &unk_49178;
        v27[4] = modes;
        v22 = [allObjects sortedArrayUsingComparator:v27];
        v23 = [v7 objectForKey:v20];
        [v7 removeObjectForKey:v20];
        [v7 setObject:v23 forKey:v22];
      }

      v17 = [obj countByEnumeratingWithState:&v28 objects:v37 count:16];
    }

    while (v17);
  }

  return v7;
}

- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)count inputModes:(id)modes
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_99E4;
  v5[3] = &unk_491A0;
  v5[4] = modes;
  return [objc_msgSend(count "allKeys")];
}

- (id)loadAllKeyboardPreferences
{
  v3 = [(KeyboardController *)self loadSpecifiersFromPlistName:@"Preferences_base" target:self];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = +[NSMutableDictionary dictionary];
  v6 = [(KeyboardController *)self addAllPreferencesToArray:v4 mapPreferenceToInputMode:v5];
  v7 = [(KeyboardController *)self groupPreferences:v4 forMapping:v5 inputModes:v6];
  if (![objc_msgSend(v7 "allKeys")])
  {
    return 0;
  }

  v8 = [(KeyboardController *)self sortPreferencesKeysByInputModeOrderAndCount:v7 inputModes:v6];
  v9 = [(KeyboardController *)self mergePreferences:v8 inputModesToPreferences:v7];
  v24 = +[NSMutableArray array];
  v22 = [v8 count];
  v21 = [v9 count];
  v10 = [v6 count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v9;
  v11 = [v9 countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v26;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [v7 objectForKey:v16];
        if (v10 >= 2)
        {
          if (v13)
          {
            v18 = [KeyboardController localizedListForInputModes:v16 forDictation:0 duplicatedBaseLanguages:0];
            goto LABEL_14;
          }

          if (v22 == v21)
          {
            v18 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"All Keyboards", &stru_49C80, @"Keyboard"];
LABEL_14:
            v19 = v18;
          }

          else
          {
            v19 = 0;
          }

          v13 = 1;
          goto LABEL_17;
        }

        v19 = 0;
LABEL_17:
        [KeyboardController localizeAndSortPreferencesArray:v17];
        [v17 insertObject:+[PSSpecifier groupSpecifierWithID:name:](PSSpecifier atIndex:{"groupSpecifierWithID:name:", @"KEYBOARD_TITLE", v19), 0}];
        if ([v16 count] == &dword_0 + 1)
        {
          [v16 firstObject];
          if ([UIKeyboardInputModeGetVariant() isEqualToString:@"Pinyin"])
          {
            [(KeyboardController *)self removeShuangpinPreferenceIfNotApplicableForGroup:v17];
            [(KeyboardController *)self removeDialectPreferenceIfNotApplicableForGroup:v17];
            [(KeyboardController *)self moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:v17];
          }
        }

        [(KeyboardController *)self addFooterTextForDialectSpecifierForGroup:v17];
        [(KeyboardController *)self disableLockedDownPreferencesForGroup:v17];
        [(KeyboardController *)self movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:v17];
        [(KeyboardController *)self moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:v17];
        [v24 addObjectsFromArray:v17];
      }

      v12 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v12);
  }

  return v24;
}

- (void)addHardwareKeyboardAndShortcuts:(id)shortcuts
{
  v5 = [shortcuts specifierForID:@"KEYBOARDS"];
  if (v5 && GSEventIsHardwareKeyboardAttached())
  {
    [shortcuts ps_insertObject:-[KeyboardController hardwareKeyboardSpecifier](self afterObject:{"hardwareKeyboardSpecifier"), v5}];
  }

  v6 = [shortcuts specifierForID:@"Hardware Keyboard"];
  openShortcutsSpecifiers = [(KeyboardController *)self openShortcutsSpecifiers];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [shortcuts ps_insertObjectsFromArray:openShortcutsSpecifiers afterObject:v8];
  lastObject = [(NSArray *)openShortcutsSpecifiers lastObject];
  if (lastObject)
  {
    v5 = lastObject;
  }

  if ([(KeyboardController *)self _supportsReachableKeyboard])
  {
    reachableKeyboardSpecifier = [(KeyboardController *)self reachableKeyboardSpecifier];
    [shortcuts ps_insertObject:reachableKeyboardSpecifier afterObject:v5];
    v5 = reachableKeyboardSpecifier;
  }

  if ([(KeyboardController *)self _supportsProKeyboard])
  {
    proKeyboardSpecifier = [(KeyboardController *)self proKeyboardSpecifier];

    [shortcuts ps_insertObject:proKeyboardSpecifier afterObject:v5];
  }
}

- (void)addFeedbackItems:(id)items
{
  if (sub_80FC())
  {
    if (![items specifierForID:@"ReachableKeyboard"] && !objc_msgSend(items, "specifierForID:", @"HardwareKeyboard") && !objc_msgSend(items, "specifierForID:", @"USER_DICTIONARY"))
    {
      [items specifierForID:@"KEYBOARDS"];
    }

    v10 = [PSSpecifier groupSpecifierWithID:@"FEEDBACK_TITLE" name:0];
    itemsCopy = items;
    [items ps_insertObject:? afterObject:?];
    v5 = [(KeyboardController *)self loadSpecifiersFromPlistName:@"Preferences_feedback" target:self];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        v9 = 0;
        do
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v12 + 1) + 8 * v9) setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v12 + 1) + 8 * v9), "name"), &stru_49C80, @"Keyboard"}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [itemsCopy ps_insertObjectsFromArray:v5 afterObject:v10];
  }
}

- (void)addDictationItems:(id)items
{
  v5 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v6 = [items specifierForID:@"Dictation"];
  if ([v5 count] == &dword_0 + 1)
  {
    v7 = +[TIInputModeController sharedInputModeController];
    if (objc_opt_respondsToSelector())
    {
      v5 = [v7 defaultDictationLanguagesForKeyboardLanguage:{objc_msgSend(v5, "firstObject")}];
    }
  }

  if ([v5 count] < 2)
  {
    [(KeyboardController *)self setDictationLanguageSpecifier:0];
  }

  else
  {
    v8 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Dictation Languages", &stru_49C80, @"Dictation"];
    [(KeyboardController *)self setDictationLanguageSpecifier:[PSSpecifier preferenceSpecifierNamed:v8 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0]];
    dictationLanguageSpecifier = [(KeyboardController *)self dictationLanguageSpecifier];
    [(PSSpecifier *)dictationLanguageSpecifier setProperty:@"DictationSettings" forKey:PSIDKey];
    if (v6 && sub_4DC4())
    {
      [items ps_insertObject:-[KeyboardController dictationLanguageSpecifier](self afterObject:{"dictationLanguageSpecifier"), v6}];
    }
  }

  if (_os_feature_enabled_impl())
  {
    [(KeyboardController *)self setDictationAutoPunctuationSpecifier:[PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Auto-Punctuation" target:&stru_49C80 set:@"Dictation"] get:self detail:"setAutoPunctuation:specifier:" cell:"autoPunctuation:" edit:0, 6, 0]];
    dictationAutoPunctuationSpecifier = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
    [(PSSpecifier *)dictationAutoPunctuationSpecifier setProperty:@"AutoPunctuationSetting" forKey:PSIDKey];
    if (+[DictationFooterView dictationAutoPunctuationText])
    {
      [items ps_insertObject:-[KeyboardController dictationAutoPunctuationSpecifier](self afterObject:{"dictationAutoPunctuationSpecifier"), v6}];
    }
  }

  if (v6 && sub_4DC4() && GSEventIsHardwareKeyboardAttached())
  {
    [(KeyboardController *)self setDictationHardwareShortcutSpecifier:[(KeyboardController *)self dictationHWShortcutSpecifier]];
    if ([(KeyboardController *)self dictationLanguageSpecifier])
    {
      dictationHardwareShortcutSpecifier = [(KeyboardController *)self dictationHardwareShortcutSpecifier];
      dictationLanguageSpecifier2 = [(KeyboardController *)self dictationLanguageSpecifier];
      itemsCopy3 = items;
      v14 = dictationHardwareShortcutSpecifier;
    }

    else
    {
      dictationAutoPunctuationSpecifier2 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
      dictationHardwareShortcutSpecifier2 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];
      if (dictationAutoPunctuationSpecifier2)
      {
        dictationLanguageSpecifier2 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
        itemsCopy3 = items;
        v14 = dictationHardwareShortcutSpecifier2;
      }

      else
      {
        itemsCopy3 = items;
        v14 = dictationHardwareShortcutSpecifier2;
        dictationLanguageSpecifier2 = v6;
      }
    }

    [itemsCopy3 ps_insertObject:v14 afterObject:dictationLanguageSpecifier2];
  }
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSAppListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = [(KeyboardController *)self loadSpecifiersFromPlistName:@"Preferences" target:self];
    if (![v4 count])
    {
      v5 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS", &stru_49C80, @"Keyboard"];
      v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"keyboardsValue:" detail:objc_opt_class() cell:2 edit:0];
      [v6 setProperty:@"KEYBOARDS" forKey:PSIDKey];
      [v4 addObject:v6];
    }

    if (v4)
    {
      loadAllKeyboardPreferences = [(KeyboardController *)self loadAllKeyboardPreferences];
      if (loadAllKeyboardPreferences)
      {
        [v4 addObjectsFromArray:loadAllKeyboardPreferences];
      }

      if ((MGGetBoolAnswer() & 1) == 0 && !CFPreferencesGetAppBooleanValue(@"force-international", @"com.apple.keyboard.preferences", 0))
      {
        [v4 removeObject:{objc_msgSend(v4, "specifierForID:", @"KEYBOARDS"}];
      }

      [(KeyboardController *)self addHardwareKeyboardAndShortcuts:v4];
      [(KeyboardController *)self addFeedbackItems:v4];
      [(KeyboardController *)self addEnabledExtensionSpecifiersToArray:v4];
      [(KeyboardController *)self addFooterTextForStickers:v4];
      [(KeyboardController *)self addDictationItems:v4];
      -[KeyboardController setDeleteWordSpecifier:](self, "setDeleteWordSpecifier:", [v4 specifierForID:@"KeyboardContinuousPathDeleteWholeWord"]);
      v8 = [v4 specifierForID:@"KeyboardContinuousPathEnabled"];
      if (!v8 || ([-[KeyboardController readCPPreferenceValue:](self readCPPreferenceValue:{v8), "BOOLValue"}] & 1) == 0)
      {
        -[KeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [v4 indexOfObject:{-[KeyboardController deleteWordSpecifier](self, "deleteWordSpecifier")}]);
        [v4 removeObject:{-[KeyboardController deleteWordSpecifier](self, "deleteWordSpecifier")}];
      }

      -[KeyboardController setInlineCompletionSpecifier:](self, "setInlineCompletionSpecifier:", [v4 specifierForID:@"KeyboardInlineCompletion"]);
      v9 = [v4 specifierForID:@"KeyboardPrediction"];
      if (!v9 || ([-[KeyboardController readPredictionPreferenceValue:](self readPredictionPreferenceValue:{v9), "BOOLValue"}] & 1) == 0)
      {
        -[KeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [v4 indexOfObject:{-[KeyboardController inlineCompletionSpecifier](self, "inlineCompletionSpecifier")}]);
        [v4 removeObject:{-[KeyboardController inlineCompletionSpecifier](self, "inlineCompletionSpecifier")}];
      }

      *&self->PSAppListController_opaque[v3] = v4;
      [(KeyboardController *)self setTitle:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"KEYBOARDS", &stru_49C80, @"Keyboard"]];
      [(KeyboardController *)self setSpecifierID:@"Keyboard"];
      self->_needsReloadSpecifiers = 0;
    }
  }

  return *&self->PSAppListController_opaque[v3];
}

- (void)addFooterTextForStickers:(id)stickers
{
  +[NSMutableArray array];
  v4 = [stickers specifierForID:@"ShowStickers"];
  v5 = [stickers indexOfSpecifierWithID:@"ShowStickers"];
  if (v4 && v5 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v6 = [stickers objectAtIndex:v5 - 1];
    v7 = [PSSpecifier specifierWithSpecifier:v6];
    [(PSSpecifier *)v7 setProperty:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SHOW_STICKERS_DESCRIPTION" forKey:&stru_49C80, @"Keyboard"], PSFooterTextGroupKey];
    [stickers ps_insertObject:v7 afterObject:v6];

    [stickers removeObject:v6];
  }
}

- (void)addEnabledExtensionSpecifiersToArray:(id)array
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sharedInputModeController = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v6 = [sharedInputModeController countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(sharedInputModeController);
        }

        [array addObjectsFromArray:{+[TIAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](TIAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", *(*(&v10 + 1) + 8 * v9), -[KeyboardController specifier](self, "specifier"))}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [sharedInputModeController countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)autoPunctuation:(id)punctuation
{
  sharedPreferences = [+[AFPreferences sharedPreferences](AFPreferences sharedPreferences];

  return [NSNumber numberWithBool:sharedPreferences];
}

- (void)setAutoPunctuation:(id)punctuation specifier:(id)specifier
{
  v5 = [AFPreferences sharedPreferences:punctuation];
  bOOLValue = [punctuation BOOLValue];

  [v5 setDictationAutoPunctuationEnabled:bOOLValue];
}

- (id)hardwareKeyboardSpecifier
{
  v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Hardware Keyboard", &stru_49C80, @"Keyboard"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  [v4 setProperty:@"HardwareKeyboard" forKey:PSIDKey];
  return v4;
}

- (id)dictationHWShortcutSpecifier
{
  v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_SHORTCUT", &stru_49C80, @"Dictation"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:"dictationShortcutSubtitle:" detail:objc_opt_class() cell:2 edit:0];
  [v4 setProperty:@"DictationHWShortcut" forKey:PSIDKey];
  return v4;
}

- (void)dictationShortcutSubtitle:(id)subtitle
{
  v5 = +[TIDictationShortcutController attributedTitleForDictationShortcutValue:](TIDictationShortcutController, "attributedTitleForDictationShortcutValue:", [objc_msgSend(+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")]);
  v6 = [-[KeyboardController cachedCellForSpecifier:](self cachedCellForSpecifier:{subtitle), "valueLabel"}];

  [v6 setAttributedText:v5];
}

- (void)hardwareKeyboardAvailabilityChanged
{
  if (GSEventIsHardwareKeyboardAttached())
  {
    if (![(KeyboardController *)self specifierForID:@"HardwareKeyboard"])
    {
      [(KeyboardController *)self insertSpecifier:[(KeyboardController *)self hardwareKeyboardSpecifier] afterSpecifierID:@"KEYBOARDS" animated:1];
    }

    if (![(KeyboardController *)self dictationHardwareShortcutSpecifier])
    {
      [(KeyboardController *)self setDictationHardwareShortcutSpecifier:[(KeyboardController *)self dictationHWShortcutSpecifier]];
    }

    v3 = [(KeyboardController *)self specifierForID:@"Dictation"];
    if ([(KeyboardController *)self dictationLanguageSpecifier])
    {
      dictationLanguageSpecifier = [(KeyboardController *)self dictationLanguageSpecifier];
    }

    else
    {
      if (![(KeyboardController *)self dictationAutoPunctuationSpecifier])
      {
LABEL_15:
        dictationHardwareShortcutSpecifier = [(KeyboardController *)self dictationHardwareShortcutSpecifier];

        [(KeyboardController *)self insertSpecifier:dictationHardwareShortcutSpecifier afterSpecifier:v3 animated:1];
        return;
      }

      dictationLanguageSpecifier = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
    }

    v3 = dictationLanguageSpecifier;
    goto LABEL_15;
  }

  [(KeyboardController *)self removeSpecifierID:@"HardwareKeyboard" animated:1];
  if ([(KeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    dictationHardwareShortcutSpecifier2 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];

    [(KeyboardController *)self removeSpecifier:dictationHardwareShortcutSpecifier2 animated:1];
  }
}

- (id)getReachableKeybordSetting:(id)setting
{
  sharedPreferencesController = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController sharedPreferencesController];

  return [NSNumber numberWithInteger:sharedPreferencesController];
}

- (void)setReachableKeyboardSetting:(id)setting specifier:(id)specifier
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:setting];
  integerValue = [setting integerValue];

  [v5 setHandBias:integerValue];
}

- (id)selectSpecifier:(id)specifier
{
  v6.receiver = self;
  v6.super_class = KeyboardController;
  v4 = [(KeyboardController *)&v6 selectSpecifier:?];
  [KeyboardController emitNavigationEventForSpecifier:specifier viewController:v4];
  return v4;
}

- (id)reachableKeyboardSpecifier
{
  v3 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"REACHABLE_KEYBOARD", &stru_49C80, @"Keyboard"];
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setReachableKeyboardSetting:specifier:" get:"getReachableKeybordSetting:" detail:objc_opt_class() cell:2 edit:0];
  [v4 setProperty:@"ReachableKeyboard" forKey:PSIDKey];
  [v4 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"REACHABLE_EXPLANATION", &stru_49C80, @"Keyboard", PSStaticTextMessageKey}];
  v6[0] = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"REACHABLE_OPTION_NONE", &stru_49C80, @"Keyboard"];
  v6[1] = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"REACHABLE_OPTION_LEFT", &stru_49C80, @"Keyboard"];
  v6[2] = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"REACHABLE_OPTION_RIGHT", &stru_49C80, @"Keyboard"];
  [v4 setValues:&off_4D658 titles:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", v6, 3)}];
  return v4;
}

- (id)readKeyboardVisceralPreferenceValue:(id)value
{
  v3 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController sharedPreferencesController] != 0;

  return [NSNumber numberWithInt:v3];
}

- (void)setKeyboardVisceralPreferenceValue:(id)value forSpecifier:(id)specifier
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:value];
  bOOLValue = [value BOOLValue];

  [v5 setVisceral:bOOLValue];
}

- (BOOL)_supportsProKeyboard
{
  if (qword_56918 != -1)
  {
    sub_2C3B8();
  }

  v2 = [objc_msgSend(+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
  if (v2)
  {
    v3 = +[UIDevice currentDevice];

    LOBYTE(v2) = [(UIDevice *)v3 sf_isiPad];
  }

  return v2;
}

- (id)getProKeyboardSetting:(id)setting
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return &__kCFBooleanFalse;
  }

  enableProKeyboard = [v3 enableProKeyboard];

  return [NSNumber numberWithBool:enableProKeyboard];
}

- (void)setProKeyboardSetting:(id)setting specifier:(id)specifier
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:setting];
  if (objc_opt_respondsToSelector())
  {
    bOOLValue = [setting BOOLValue];

    [v5 setEnableProKeyboard:bOOLValue];
  }
}

- (NSArray)openShortcutsSpecifiers
{
  if (self->_openShortcutsSpecifiers || (v3 = -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"USER_DICTIONARY", &stru_49C80, @"Keyboard"), v4 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v3, 0, 0, 0, objc_opt_class(), 2, 0), [v4 setProperty:@"USER_DICTIONARY" forKey:PSIDKey], result = objc_msgSend([NSArray alloc], "initWithObjects:", +[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", &stru_49C80), v4, 0), (self->_openShortcutsSpecifiers = result) != 0))
  {
    v6 = [objc_msgSend(sub_7D18() "sharedConnection")];
    lastObject = [(NSArray *)self->_openShortcutsSpecifiers lastObject];
    v8 = [NSNumber numberWithBool:v6];
    [lastObject setProperty:v8 forKey:PSEnabledKey];
    return self->_openShortcutsSpecifiers;
  }

  return result;
}

@end