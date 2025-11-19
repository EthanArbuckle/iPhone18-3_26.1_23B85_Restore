@interface KeyboardController
+ (BOOL)_isLowStorageForOnDeviceDictationAsset;
+ (id)localizedDisplayNameForInputMode:(id)a3 forDictation:(BOOL)a4;
+ (id)localizedStringForGeneralKeyboardSpecifier;
+ (id)localizedStringForKeyboardController;
+ (id)singleActiveDisabledDictationLanguage;
+ (int64_t)compareUsingOrderInArray:(id)a3 withFirst:(id)a4 second:(id)a5;
+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4;
+ (void)localizeAndSortPreferencesArray:(id)a3;
- (BOOL)_supportsProKeyboard;
- (BOOL)feedbackFeatureEnabled;
- (KeyboardController)init;
- (NSArray)openShortcutsSpecifiers;
- (id)addAllPreferencesToArray:(id)a3 mapPreferenceToInputMode:(id)a4;
- (id)autoPunctuation:(id)a3;
- (id)bundle;
- (id)dictationEnabled:(id)a3;
- (id)dictationHWShortcutSpecifier;
- (id)getProKeyboardSetting:(id)a3;
- (id)getReachableKeybordSetting:(id)a3;
- (id)groupPreferences:(id)a3 forMapping:(id)a4 inputModes:(id)a5;
- (id)hardwareKeyboardSpecifier;
- (id)loadAllKeyboardPreferences;
- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)a3;
- (id)mergePreferences:(id)a3 inputModesToPreferences:(id)a4;
- (id)pinyinDialect:(id)a3;
- (id)reachableKeyboardSpecifier;
- (id)readAutocorrectionPreferenceValue:(id)a3;
- (id)readCPDeleteWordPreferenceValue:(id)a3;
- (id)readCPPreferenceValue:(id)a3;
- (id)readCheckSpellingPreferenceValue:(id)a3;
- (id)readKeyboardAllowPaddlePreferenceValue:(id)a3;
- (id)readKeyboardInlineCompletionPreferenceValue:(id)a3;
- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)a3;
- (id)readKeyboardVisceralPreferenceValue:(id)a3;
- (id)readPredictionPreferenceValue:(id)a3;
- (id)readPreferenceValue:(id)a3;
- (id)readSmartTypingPreferenceValue:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)shuangpinType:(id)a3;
- (id)smartFullwidthSpace:(id)a3;
- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)a3 inputModes:(id)a4;
- (id)specifiers;
- (id)wubiStandard:(id)a3;
- (void)_dismissConfirmationSheet;
- (void)addDictationItems:(id)a3;
- (void)addEnabledExtensionSpecifiersToArray:(id)a3;
- (void)addFeedbackItems:(id)a3;
- (void)addFooterTextForDialectSpecifierForGroup:(id)a3;
- (void)addFooterTextForStickers:(id)a3;
- (void)addHardwareKeyboardAndShortcuts:(id)a3;
- (void)dealloc;
- (void)dictationDisabledCancelled:(id)a3;
- (void)dictationDisabledConfirmed:(id)a3;
- (void)dictationEnabledCancelled:(id)a3;
- (void)dictationEnabledConfirmed:(id)a3;
- (void)dictationShortcutSubtitle:(id)a3;
- (void)disableLockedDownPreferencesForGroup:(id)a3;
- (void)emitNavigationEventForRootController;
- (void)hardwareKeyboardAvailabilityChanged;
- (void)launchManageStorage:(id)a3;
- (void)loadPreferenceForInputModeIdentifier:(id)a3 keyboardInputMode:(id)a4 addNewPreferencesToArray:(id)a5 defaultPreferenceIdentifiers:(id)a6 additionalPreferenceIdentifiers:(id)a7 mapPreferenceToInputMode:(id)a8;
- (void)managedKeyboardSettingsDidChange;
- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)a3;
- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)a3;
- (void)offlineDictationStatusUpdated:(id)a3;
- (void)preferencesDidChange:(id)a3;
- (void)presentPrivacySheet:(id)a3;
- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)a3;
- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)a3;
- (void)setAutoPunctuation:(id)a3 specifier:(id)a4;
- (void)setAutocorrectionPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setCheckSpellingPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setDictationEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setKeyboardAllowPaddlePreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setKeyboardVisceralPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setPinyinDialect:(id)a3 specifier:(id)a4;
- (void)setPredictionPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setProKeyboardSetting:(id)a3 specifier:(id)a4;
- (void)setReachableKeyboardSetting:(id)a3 specifier:(id)a4;
- (void)setShuangpinType:(id)a3 specifier:(id)a4;
- (void)setSmartFullwidthSpace:(id)a3 specifier:(id)a4;
- (void)setSmartTypingPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)setWubiStandard:(id)a3 specifier:(id)a4;
- (void)showDictationDisabledDialogForSpecifier:(id)a3;
- (void)showDictationEnableDialogForSpecifier:(id)a3;
@end

@implementation KeyboardController

- (void)offlineDictationStatusUpdated:(id)a3
{
  [(KeyboardController *)self setOfflineStatusForLanguage:a3];

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

- (id)lowStorageOnDeviceAssetStringWithLinkString:(id)a3
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
            v14 = [v11 identifier];
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
            v14 = [v11 identifier];
            v15 = v28;
          }

          [v15 addObject:v14];
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
        if (a3)
        {
          if (result)
          {
            return [result stringByAppendingFormat:@" %@", a3];
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

- (id)readPreferenceValue:(id)a3
{
  v5 = PSKeyNameKey;
  if ([objc_msgSend(a3 propertyForKey:{PSKeyNameKey), "isEqualToString:", @"KanaFlick"}])
  {
    v6 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (![objc_msgSend(a3 propertyForKey:{v5), "isEqualToString:", @"KanaLeftToRight"}])
    {
      v8.receiver = self;
      v8.super_class = KeyboardController;
      return [(KeyboardController *)&v8 readPreferenceValue:a3];
    }

    v6 = [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")] == 0x7FFFFFFFFFFFFFFFLL;
  }

  return [NSNumber numberWithInt:v6];
}

- (void)setKeyboardPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v7 = [a4 propertyForKey:PSKeyNameKey];
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
        [a3 BOOLValue];
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
      [v13 setValue:a3 forPreferenceKey:TIKeyboardShowPredictionBarPreference];
    }

    else if ([v7 isEqualToString:@"KeyboardAssistant"] && (objc_msgSend(a3, "BOOLValue") & 1) == 0)
    {
      UIKeyboardGetCurrentInputMode();
      UIKeyboardInputModeGetNormalizedIdentifier();
      TIStatisticGetKeyForInputMode();
      TIStatisticScalarIncrement();
    }

    else if ([v7 isEqualToString:UIKBInputGesturesEnabled])
    {
      TIStatisticGetKey();
      [a3 BOOLValue];
      TIStatisticScalarSetBoolean();
    }

    if (([v7 isEqualToString:@"KeyboardAutocapitalization"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardAutocorrection") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPeriodShortcut") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathEnabled") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardContinuousPathDeleteWholeWord") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardPrediction") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"KeyboardInlineCompletion") & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"SpaceConfirmation") & 1) != 0 || objc_msgSend(v7, "isEqualToString:", @"KeyboardCapsLock"))
    {
      [+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")];
    }

    else
    {
      [PSRootController setPreferenceValue:a3 specifier:a4];
    }
  }

  v14 = PSIDKey;
  if ([objc_msgSend(a4 propertyForKey:{PSIDKey), "isEqualToString:", @"KeyboardContinuousPathEnabled"}])
  {
    v15 = [(KeyboardController *)self containsSpecifier:[(KeyboardController *)self deleteWordSpecifier]];
    if (![a3 BOOLValue] || (v15 & 1) != 0)
    {
      if (([a3 BOOLValue] & 1) == 0 && ((v15 ^ 1) & 1) == 0)
      {
        -[KeyboardController setDeleteWordSpecifierIndex:](self, "setDeleteWordSpecifierIndex:", [-[KeyboardController specifiers](self "specifiers")]);
        [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self deleteWordSpecifier] animated:1];
      }
    }

    else
    {
      [(KeyboardController *)self deleteWordSpecifierIndex];
      v16 = [(KeyboardController *)self deleteWordSpecifierIndex];
      v17 = [-[KeyboardController specifiers](self "specifiers")];
      v18 = [(KeyboardController *)self deleteWordSpecifier];
      if (v16 >= v17)
      {
        [(KeyboardController *)self addSpecifier:v18 animated:1];
      }

      else
      {
        [(KeyboardController *)self insertSpecifier:v18 atIndex:[(KeyboardController *)self deleteWordSpecifierIndex] animated:1];
      }
    }
  }

  if ([objc_msgSend(a4 propertyForKey:{v14), "isEqualToString:", @"KeyboardPrediction"}])
  {
    v19 = [(KeyboardController *)self containsSpecifier:[(KeyboardController *)self inlineCompletionSpecifier]];
    if (![a3 BOOLValue] || (v19 & 1) != 0)
    {
      if (([a3 BOOLValue] & 1) == 0 && ((v19 ^ 1) & 1) == 0)
      {
        -[KeyboardController setInlineCompletionSpecifierIndex:](self, "setInlineCompletionSpecifierIndex:", [-[KeyboardController specifiers](self "specifiers")]);
        [(KeyboardController *)self removeSpecifier:[(KeyboardController *)self inlineCompletionSpecifier] animated:1];
      }
    }

    else
    {
      [(KeyboardController *)self inlineCompletionSpecifierIndex];
      v20 = [(KeyboardController *)self inlineCompletionSpecifierIndex];
      v21 = [-[KeyboardController specifiers](self "specifiers")];
      v22 = [(KeyboardController *)self inlineCompletionSpecifier];
      if (v20 >= v21)
      {
        [(KeyboardController *)self addSpecifier:v22 animated:1];
      }

      else
      {
        [(KeyboardController *)self insertSpecifier:v22 atIndex:[(KeyboardController *)self inlineCompletionSpecifierIndex] animated:1];
      }
    }
  }

  v23 = PSDefaultsKey;
  if ([objc_msgSend(a4 propertyForKey:{PSDefaultsKey), "isEqualToString:", @"com.apple.InputModePreferences"}])
  {
    v24 = @"AppleKeyboardsInputModeChangedNotification";
  }

  else if ([objc_msgSend(a4 propertyForKey:{v23), "isEqualToString:", @"com.apple.keyboard.ContinuousPath"}])
  {
    v24 = @"AppleKeyboardsContinuousPathSettingsChangedNotification";
  }

  else if ([objc_msgSend(a4 propertyForKey:{v23), "isEqualToString:", @"com.apple.keyboard.predictive"}])
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

- (id)readAutocorrectionPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardAutocorrectionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readPredictionPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardPredictionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardInlineCompletionPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardInlineCompletionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardMathExpressionCompletionPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardMathExpressionCompletionPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readKeyboardAllowPaddlePreferenceValue:(id)a3
{
  [a3 propertyForKey:PSKeyNameKey];
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardAllowPaddlePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCheckSpellingPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardCheckSpellingPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardContinuousPathEnabledPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (id)readCPDeleteWordPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIKeyboardContinuousPathDeleteWholeWordPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setAutocorrectionPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  if (![(KeyboardController *)self feedbackFeatureEnabled:a3]|| !sub_B9FC())
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
    v7 = [v6 controller];
    v8 = [v7 shouldCompleteStudyWithPreferenceValue:{objc_msgSend(a3, "BOOLValue")}];
    v9 = +[TIPreferencesController sharedPreferencesController];
    [v9 setValue:a3 forPreferenceKey:TIKeyboardAutocorrectionPreference];
    if (v8)
    {
      [v7 completeStudyWithFinalPreferenceValue:objc_msgSend(a3 parentController:{"BOOLValue"), self}];
    }
  }

  else
  {
LABEL_8:
    v10 = +[TIPreferencesController sharedPreferencesController];
    [v10 setValue:a3 forPreferenceKey:TIKeyboardAutocorrectionPreference];
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

- (void)setPredictionPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  [v5 setValue:a3 forPreferenceKey:TIKeyboardPredictionPreference];
  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = TIKeyboardShowPredictionBarPreference;

  [v6 setValue:a3 forPreferenceKey:v7];
}

- (void)setKeyboardAllowPaddlePreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  v6 = TIKeyboardAllowPaddlePreference;

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (void)setCheckSpellingPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  v6 = TIKeyboardCheckSpellingPreference;

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (id)readSmartTypingPreferenceValue:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TISmartQuotesEnabledPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartTypingPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  [v5 setValue:a3 forPreferenceKey:TISmartQuotesEnabledPreference];
  v6 = +[TIPreferencesController sharedPreferencesController];
  v7 = TISmartDashesEnabledPreference;

  [v6 setValue:a3 forPreferenceKey:v7];
}

+ (id)singleActiveDisabledDictationLanguage
{
  v2 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if ([(NSArray *)v2 count]== &dword_0 + 1 && (v3 = +[TIInputModeController sharedInputModeController], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v4 = [v3 defaultDictationLanguagesForKeyboardLanguage:{-[NSArray firstObject](v2, "firstObject")}];
    if (!v4)
    {
      v7 = [(NSArray *)v2 firstObject];
      v4 = [NSArray arrayWithObjects:&v7 count:1];
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

- (id)dictationEnabled:(id)a3
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

- (void)showDictationEnableDialogForSpecifier:(id)a3
{
  [a3 setConfirmationAction:"dictationEnabledConfirmed:"];
  [a3 setConfirmationCancelAction:"dictationEnabledCancelled:"];
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
  [a3 setupWithDictionary:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v8, v9, v13, v10, v11, PSConfirmationOKKey, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_ENABLE_CANCEL", &stru_49C80, @"Keyboard", PSConfirmationCancelKey, 0)}];
  v12 = [+[UIDevice currentDevice](UIDevice sf_isiPad];

  [(KeyboardController *)self showConfirmationViewForSpecifier:a3 useAlert:v12 swapAlertButtons:0];
}

- (void)showDictationDisabledDialogForSpecifier:(id)a3
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
  [a3 setConfirmationAction:"dictationDisabledConfirmed:"];
  [a3 setConfirmationCancelAction:"dictationDisabledCancelled:"];
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
  [a3 setupWithDictionary:{+[NSDictionary dictionaryWithObjectsAndKeys:](NSDictionary, "dictionaryWithObjectsAndKeys:", v8, v9, v13, v10, v11, PSConfirmationOKKey, -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"DICTATION_DISABLE_CANCEL", &stru_49C80, @"Keyboard", PSConfirmationCancelKey, 0)}];
  v12 = [+[UIDevice currentDevice](UIDevice sf_isiPad];

  [(KeyboardController *)self showConfirmationViewForSpecifier:a3 useAlert:v12 swapAlertButtons:0];
}

- (void)setDictationEnabled:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {

    [(KeyboardController *)self showDictationEnableDialogForSpecifier:a4];
  }

  else if ([+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")])
  {

    [(KeyboardController *)self showDictationDisabledDialogForSpecifier:a4];
  }

  else
  {

    [(KeyboardController *)self dictationDisabledConfirmed:a4];
  }
}

- (void)dictationEnabledConfirmed:(id)a3
{
  v3 = a3;
  [a3 setConfirmationAction:0];
  [(PSSpecifier *)v3 setConfirmationCancelAction:0];
  v5 = [objc_opt_class() singleActiveDisabledDictationLanguage];
  if (v5)
  {
    v6 = v5;
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
  v7 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
  if (v7)
  {
    v3 = v7;
  }

  if ([(KeyboardController *)self dictationLanguageSpecifier])
  {
    [(KeyboardController *)self insertSpecifier:[(KeyboardController *)self dictationLanguageSpecifier] afterSpecifier:v3 animated:1];
    v3 = [(KeyboardController *)self dictationLanguageSpecifier];
  }

  if ([(KeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    [(KeyboardController *)self insertSpecifier:[(KeyboardController *)self dictationHardwareShortcutSpecifier] afterSpecifier:v3 animated:1];
    [(KeyboardController *)self dictationHardwareShortcutSpecifier];
  }

  [(KeyboardController *)self reloadSpecifiers];
}

- (void)dictationEnabledCancelled:(id)a3
{
  [objc_msgSend(a3 propertyForKey:{PSControlKey), "setOn:animated:", 0, 1}];
  [a3 setConfirmationAction:0];

  [a3 setConfirmationCancelAction:0];
}

- (void)dictationDisabledConfirmed:(id)a3
{
  [a3 setConfirmationAction:0];
  [a3 setConfirmationCancelAction:0];
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

- (void)dictationDisabledCancelled:(id)a3
{
  [objc_msgSend(a3 propertyForKey:{PSControlKey), "setOn:animated:", 1, 1}];
  [a3 setConfirmationAction:0];

  [a3 setConfirmationCancelAction:0];
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

- (void)presentPrivacySheet:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.siri"];
  [v4 setPresentingViewController:self];

  [v4 present];
}

- (void)launchManageStorage:(id)a3
{
  v3 = +[LSApplicationWorkspace defaultWorkspace];
  v4 = [NSURL URLWithString:@"prefs:root=General&path=STORAGE_MGMT"];

  [v3 openSensitiveURL:v4 withOptions:0 error:0];
}

- (id)shuangpinType:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIShuangpinTypePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setShuangpinType:(id)a3 specifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  [v5 setValue:a3 forPreferenceKey:TIShuangpinTypePreference];

  TIUpdateShuangpinSWLayout();
}

- (id)pinyinDialect:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIPinyinDialectPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setPinyinDialect:(id)a3 specifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  [v5 setValue:a3 forPreferenceKey:TIPinyinDialectPreference];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleKeyboardsPreferencesChangedNotification", 0, 0, 1u);
}

- (id)wubiStandard:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TIWubiStandardPreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setWubiStandard:(id)a3 specifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  v6 = TIWubiStandardPreference;

  [v5 setValue:a3 forPreferenceKey:v6];
}

- (id)smartFullwidthSpace:(id)a3
{
  v3 = +[TIPreferencesController sharedPreferencesController];
  v4 = TISmartFullwidthSpacePreference;

  return [v3 valueForPreferenceKey:v4];
}

- (void)setSmartFullwidthSpace:(id)a3 specifier:(id)a4
{
  v5 = [TIPreferencesController sharedPreferencesController:a3];
  v6 = TISmartFullwidthSpacePreference;

  [v5 setValue:a3 forPreferenceKey:v6];
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

+ (void)emitNavigationEventForSpecifier:(id)a3 viewController:(id)a4
{
  v6 = objc_opt_class();
  if ([v6 isSubclassOfClass:objc_opt_class()])
  {
    v7 = [a3 identifier];
    if (v7)
    {
      v8 = v7;
      v9 = [NSURL URLWithString:[NSString stringWithFormat:@"settings-navigation://com.apple.Settings.General/Keyboard/%@", v7]];
      v13[0] = @"ReachableKeyboard";
      v13[1] = @"HardwareKeyboard";
      v14[0] = @"REACHABLE_KEYBOARD";
      v14[1] = @"Hardware Keyboard";
      v10 = [[NSDictionary dictionaryWithObjects:v13 forKeys:2 count:?], "objectForKeyedSubscript:", v8];
      if (v10)
      {
        v11 = v10;
        v12 = +[KeyboardController localizedStringForGeneralKeyboardSpecifier];
        [a4 pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.keyboard" title:objc_msgSend([_NSLocalizedStringResource alloc] localizedNavigationComponents:"initWithKey:table:locale:bundleURL:" deepLink:{v11, @"Keyboard", +[NSLocale currentLocale](NSLocale, "currentLocale"), -[NSBundle bundleURL](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "bundleURL")), +[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v12, 2), v9}];
      }
    }
  }
}

- (void)preferencesDidChange:(id)a3
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

- (void)disableLockedDownPreferencesForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KeyboardAutocorrection"];
  if (v4)
  {
    v5 = v4;
    v6 = +[TIPreferencesController sharedPreferencesController];
    if ([v6 isPreferenceKeyLockedDown:TIKeyboardAutocorrectionPreference])
    {
      [v5 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v7 = [a3 specifierForID:@"KeyboardPrediction"];
  if (v7)
  {
    v8 = v7;
    v9 = +[TIPreferencesController sharedPreferencesController];
    if ([v9 isPreferenceKeyLockedDown:TIKeyboardPredictionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [a3 specifierForID:@"KeyboardInlineCompletion"];
    v10 = +[TIPreferencesController sharedPreferencesController];
    if ([v10 isPreferenceKeyLockedDown:TIKeyboardInlineCompletionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }

    [a3 specifierForID:@"KeyboardMathExpressionCompletion"];
    v11 = +[TIPreferencesController sharedPreferencesController];
    if ([v11 isPreferenceKeyLockedDown:TIKeyboardMathExpressionCompletionPreference])
    {
      [v8 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  else
  {
    [a3 specifierForID:@"KeyboardInlineCompletion"];
    [a3 specifierForID:@"KeyboardMathExpressionCompletion"];
  }

  v12 = [a3 specifierForID:@"KeyboardCheckSpelling"];
  if (v12)
  {
    v13 = v12;
    v14 = +[TIPreferencesController sharedPreferencesController];
    if ([v14 isPreferenceKeyLockedDown:TIKeyboardCheckSpellingPreference])
    {
      [v13 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v15 = [a3 specifierForID:@"SmartTyping"];
  if (v15)
  {
    v16 = v15;
    v17 = +[TIPreferencesController sharedPreferencesController];
    if ([v17 isPreferenceKeyLockedDown:TISmartQuotesEnabledPreference])
    {
      [v16 setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
    }
  }

  v18 = [a3 specifierForID:@"KeyboardContinuousPathEnabled"];
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

- (void)moveCharacterPreviewPreferenceToEndForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KeyboardAllowPaddle"];
  if (v4)
  {
    v5 = v4;
    if ([a3 specifierForID:@"KEYBOARD_TITLE"])
    {
      [a3 removeObject:v5];
      if ((sub_80FC() & 1) == 0)
      {

        [a3 addObject:v5];
      }
    }
  }
}

- (void)movePeriodShortcutPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  [(KeyboardController *)self moveCharacterPreviewPreferenceToEndForGroup:?];
  v4 = [a3 specifierForID:@"KeyboardPeriodShortcut"];
  if (v4)
  {
    v5 = v4;
    v6 = [a3 specifierForID:@"KEYBOARD_TITLE"];
    if (v6)
    {
      [v6 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"PERIOD_SHORTCUT_DESCRIPTION", &stru_49C80, @"Keyboard", PSFooterTextGroupKey}];
      [a3 removeObject:v5];

      [a3 addObject:v5];
    }
  }
}

- (void)removeShuangpinPreferenceIfNotApplicableForGroup:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v11 + 1) + 8 * v8);
      if ([UIKeyboardInputModeGetVariant() isEqualToString:@"Shuangpin"])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v10 = [a3 specifierForID:@"ShuangpinType"];
    if (v10)
    {
      [a3 removeObject:v10];
    }
  }
}

- (void)removeDialectPreferenceIfNotApplicableForGroup:(id)a3
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
        objc_enumerationMutation(v4);
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
        v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
    v10 = [a3 specifierForID:@"PinyinDialect"];
    if (v10)
    {
      [a3 removeObject:v10];
    }
  }
}

- (void)addFooterTextForDialectSpecifierForGroup:(id)a3
{
  v3 = [a3 specifierForID:@"PinyinDialect"];
  if (v3)
  {
    v4 = v3;
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = [(NSBundle *)v5 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Preferences_pinyin"];
    v7 = PSStaticTextMessageKey;

    [v4 setProperty:v6 forKey:v7];
  }
}

- (void)moveSpaceConfirmationPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  v4 = [a3 specifierForID:@"KEYBOARD_TITLE"];
  if (v4)
  {
    v5 = v4;
    v6 = PSFooterTextGroupKey;
    if (![v4 propertyForKey:PSFooterTextGroupKey])
    {
      v7 = [a3 specifierForID:@"SpaceConfirmation"];
      if (v7)
      {
        v8 = v7;
        [v5 setProperty:-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle forKey:{"bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"SPACE_CONFIRMATION_EXPLANATION", &stru_49C80, @"Keyboard", v6}];
        [a3 removeObject:v8];

        [a3 addObject:v8];
      }
    }
  }
}

- (void)moveEnableDictationPreferenceToEndAndAddFooterTextForGroup:(id)a3
{
  v5 = [a3 specifierForID:@"Dictation"];
  if (v5)
  {
    v6 = v5;
    v7 = [a3 specifierForID:@"KEYBOARD_TITLE"];
    if (v7)
    {
      v8 = v7;
      v9 = [a3 specifierForID:@"KeyboardPeriodShortcut"];
      if (v9 | [a3 specifierForID:@"SpaceConfirmation"])
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
        [a3 addObject:v8];
      }

      [a3 removeObject:v6];
      [a3 addObject:v6];
      [v8 setTarget:self];
      v11 = PSFooterCellClassGroupKey;

      [v8 setProperty:@"DictationFooterView" forKey:v11];
    }
  }
}

+ (void)localizeAndSortPreferencesArray:(id)a3
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(a3);
        }

        [*(*(&v8 + 1) + 8 * v7) setName:{-[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", objc_msgSend(*(*(&v8 + 1) + 8 * v7), "name"), &stru_49C80, @"Keyboard"}];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [a3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [a3 sortedArrayUsingComparator:&stru_49100];
}

+ (id)localizedDisplayNameForInputMode:(id)a3 forDictation:(BOOL)a4
{
  if (a4)
  {
    v5 = TUIDictationTitle();
    if ([v5 length] && !objc_msgSend(v5, "isEqualToString:", a3))
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

+ (int64_t)compareUsingOrderInArray:(id)a3 withFirst:(id)a4 second:(id)a5
{
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
          objc_enumerationMutation(a3);
        }

        v13 = *(*(&v15 + 1) + 8 * i);
        if ([v13 isEqualToString:a4] && !objc_msgSend(v13, "isEqualToString:", a5))
        {
          return -1;
        }

        if ([v13 isEqualToString:a5] && !objc_msgSend(v13, "isEqualToString:", a4))
        {
          return v11;
        }

        if ([v13 isEqualToString:a4] && (objc_msgSend(v13, "isEqualToString:", a5) & 1) != 0)
        {
          return 0;
        }
      }

      v9 = [a3 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return [a4 localizedStandardCompare:a5];
}

- (void)loadPreferenceForInputModeIdentifier:(id)a3 keyboardInputMode:(id)a4 addNewPreferencesToArray:(id)a5 defaultPreferenceIdentifiers:(id)a6 additionalPreferenceIdentifiers:(id)a7 mapPreferenceToInputMode:(id)a8
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
    v16 = +[AFDictationConnection dictationIsSupportedForLanguageCode:error:](AFDictationConnection, "dictationIsSupportedForLanguageCode:error:", [a4 languageWithRegion], &v57);
  }

  v37 = a3;
  v61 = a3;
  [NSArray arrayWithObjects:&v61 count:1];
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
  v35 = a8;
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

          [v20 addObject:{@"KeyboardAssistant", v35}];
          [v20 addObject:@"KeyboardAllowPaddle"];
          [v20 addObject:@"GesturesEnabled"];
          goto LABEL_27;
        }

LABEL_19:
        [v20 addObject:{@"KeyboardPrediction", v35}];
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

    [v20 addObject:{@"Dictation", a8}];
    if (!v17)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ([v37 isEqualToString:@"emoji"])
  {
    v20 = +[NSMutableArray array];
    goto LABEL_27;
  }

  v20 = [a6 mutableCopy];
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

  [v20 removeObject:{@"Dictation", a8}];
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
  [v20 removeObject:{@"KeyboardPrediction", v35}];
LABEL_61:
  [v20 removeObject:{@"KeyboardInlineCompletion", v35}];
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

  [v20 removeObject:{@"KeyboardContinuousPathDeleteWholeWord", v35}];
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
              v34 = [v33 identifier];
              [v20 addObject:v34];
              if (([a7 containsObject:v34] & 1) == 0)
              {
                [a5 addObject:v33];
                [a7 addObject:v34];
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

  [v36 setObject:v20 forKey:v37];
}

- (id)mergePreferences:(id)a3 inputModesToPreferences:(id)a4
{
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_93CC;
  v22[3] = &unk_49128;
  v22[4] = a3;
  v6 = [a3 indexesOfObjectsPassingTest:v22];
  if (![v6 count])
  {
    return a3;
  }

  v7 = [a3 mutableCopy];
  v8 = +[NSMutableArray array];
  v9 = [a3 objectsAtIndexes:v6];
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
        [v8 addObjectsFromArray:{objc_msgSend(a4, "objectForKey:", v15)}];
      }

      v12 = [v9 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v12);
  }

  [a4 removeObjectsForKeys:v9];
  [v7 removeObjectsAtIndexes:v6];
  v16 = [v10 allObjects];
  [v7 insertObject:v16 atIndex:0];
  [a4 setObject:v8 forKey:v16];
  return v7;
}

- (id)addAllPreferencesToArray:(id)a3 mapPreferenceToInputMode:(id)a4
{
  v16 = [a3 valueForKey:@"identifier"];
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
        v13 = [v12 normalizedIdentifier];
        Variant = UIKeyboardInputModeGetVariant();
        if (!Variant)
        {
          Variant = UIKeyboardInputModeGetBaseLanguage();
        }

        if (![v5 member:Variant])
        {
          [v5 addObject:Variant];
          [v6 addObject:v13];
          [(KeyboardController *)self loadPreferenceForInputModeIdentifier:v13 keyboardInputMode:v12 addNewPreferencesToArray:a3 defaultPreferenceIdentifiers:v16 additionalPreferenceIdentifiers:v4 mapPreferenceToInputMode:a4];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v9);
  }

  return v6;
}

- (id)groupPreferences:(id)a3 forMapping:(id)a4 inputModes:(id)a5
{
  v7 = +[NSMutableDictionary dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v8 = [a3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
          objc_enumerationMutation(a3);
        }

        v12 = *(*(&v33 + 1) + 8 * i);
        v13 = [v12 identifier];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_9938;
        v32[3] = &unk_49150;
        v32[4] = v13;
        v14 = [a4 keysOfEntriesPassingTest:v32];
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

      v9 = [a3 countByEnumeratingWithState:&v33 objects:v38 count:16];
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
        v21 = [v20 allObjects];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_9948;
        v27[3] = &unk_49178;
        v27[4] = a5;
        v22 = [v21 sortedArrayUsingComparator:v27];
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

- (id)sortPreferencesKeysByInputModeOrderAndCount:(id)a3 inputModes:(id)a4
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_99E4;
  v5[3] = &unk_491A0;
  v5[4] = a4;
  return [objc_msgSend(a3 "allKeys")];
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

- (void)addHardwareKeyboardAndShortcuts:(id)a3
{
  v5 = [a3 specifierForID:@"KEYBOARDS"];
  if (v5 && GSEventIsHardwareKeyboardAttached())
  {
    [a3 ps_insertObject:-[KeyboardController hardwareKeyboardSpecifier](self afterObject:{"hardwareKeyboardSpecifier"), v5}];
  }

  v6 = [a3 specifierForID:@"Hardware Keyboard"];
  v7 = [(KeyboardController *)self openShortcutsSpecifiers];
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v5;
  }

  [a3 ps_insertObjectsFromArray:v7 afterObject:v8];
  v9 = [(NSArray *)v7 lastObject];
  if (v9)
  {
    v5 = v9;
  }

  if ([(KeyboardController *)self _supportsReachableKeyboard])
  {
    v10 = [(KeyboardController *)self reachableKeyboardSpecifier];
    [a3 ps_insertObject:v10 afterObject:v5];
    v5 = v10;
  }

  if ([(KeyboardController *)self _supportsProKeyboard])
  {
    v11 = [(KeyboardController *)self proKeyboardSpecifier];

    [a3 ps_insertObject:v11 afterObject:v5];
  }
}

- (void)addFeedbackItems:(id)a3
{
  if (sub_80FC())
  {
    if (![a3 specifierForID:@"ReachableKeyboard"] && !objc_msgSend(a3, "specifierForID:", @"HardwareKeyboard") && !objc_msgSend(a3, "specifierForID:", @"USER_DICTIONARY"))
    {
      [a3 specifierForID:@"KEYBOARDS"];
    }

    v10 = [PSSpecifier groupSpecifierWithID:@"FEEDBACK_TITLE" name:0];
    v11 = a3;
    [a3 ps_insertObject:? afterObject:?];
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

    [v11 ps_insertObjectsFromArray:v5 afterObject:v10];
  }
}

- (void)addDictationItems:(id)a3
{
  v5 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  v6 = [a3 specifierForID:@"Dictation"];
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
    v9 = [(KeyboardController *)self dictationLanguageSpecifier];
    [(PSSpecifier *)v9 setProperty:@"DictationSettings" forKey:PSIDKey];
    if (v6 && sub_4DC4())
    {
      [a3 ps_insertObject:-[KeyboardController dictationLanguageSpecifier](self afterObject:{"dictationLanguageSpecifier"), v6}];
    }
  }

  if (_os_feature_enabled_impl())
  {
    [(KeyboardController *)self setDictationAutoPunctuationSpecifier:[PSSpecifier preferenceSpecifierNamed:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"Auto-Punctuation" target:&stru_49C80 set:@"Dictation"] get:self detail:"setAutoPunctuation:specifier:" cell:"autoPunctuation:" edit:0, 6, 0]];
    v10 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
    [(PSSpecifier *)v10 setProperty:@"AutoPunctuationSetting" forKey:PSIDKey];
    if (+[DictationFooterView dictationAutoPunctuationText])
    {
      [a3 ps_insertObject:-[KeyboardController dictationAutoPunctuationSpecifier](self afterObject:{"dictationAutoPunctuationSpecifier"), v6}];
    }
  }

  if (v6 && sub_4DC4() && GSEventIsHardwareKeyboardAttached())
  {
    [(KeyboardController *)self setDictationHardwareShortcutSpecifier:[(KeyboardController *)self dictationHWShortcutSpecifier]];
    if ([(KeyboardController *)self dictationLanguageSpecifier])
    {
      v11 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];
      v12 = [(KeyboardController *)self dictationLanguageSpecifier];
      v13 = a3;
      v14 = v11;
    }

    else
    {
      v15 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
      v16 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];
      if (v15)
      {
        v12 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
        v13 = a3;
        v14 = v16;
      }

      else
      {
        v13 = a3;
        v14 = v16;
        v12 = v6;
      }
    }

    [v13 ps_insertObject:v14 afterObject:v12];
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
      v7 = [(KeyboardController *)self loadAllKeyboardPreferences];
      if (v7)
      {
        [v4 addObjectsFromArray:v7];
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

- (void)addFooterTextForStickers:(id)a3
{
  +[NSMutableArray array];
  v4 = [a3 specifierForID:@"ShowStickers"];
  v5 = [a3 indexOfSpecifierWithID:@"ShowStickers"];
  if (v4 && v5 != 0x7FFFFFFFFFFFFFFFLL && v5)
  {
    v6 = [a3 objectAtIndex:v5 - 1];
    v7 = [PSSpecifier specifierWithSpecifier:v6];
    [(PSSpecifier *)v7 setProperty:[[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"SHOW_STICKERS_DESCRIPTION" forKey:&stru_49C80, @"Keyboard"], PSFooterTextGroupKey];
    [a3 ps_insertObject:v7 afterObject:v6];

    [a3 removeObject:v6];
  }
}

- (void)addEnabledExtensionSpecifiersToArray:(id)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController sharedInputModeController];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v5);
        }

        [a3 addObjectsFromArray:{+[TIAddExtensionKeyboardController specifiersForExtensionInputMode:parentSpecifier:](TIAddExtensionKeyboardController, "specifiersForExtensionInputMode:parentSpecifier:", *(*(&v10 + 1) + 8 * v9), -[KeyboardController specifier](self, "specifier"))}];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)autoPunctuation:(id)a3
{
  v3 = [+[AFPreferences sharedPreferences](AFPreferences sharedPreferences];

  return [NSNumber numberWithBool:v3];
}

- (void)setAutoPunctuation:(id)a3 specifier:(id)a4
{
  v5 = [AFPreferences sharedPreferences:a3];
  v6 = [a3 BOOLValue];

  [v5 setDictationAutoPunctuationEnabled:v6];
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

- (void)dictationShortcutSubtitle:(id)a3
{
  v5 = +[TIDictationShortcutController attributedTitleForDictationShortcutValue:](TIDictationShortcutController, "attributedTitleForDictationShortcutValue:", [objc_msgSend(+[TIPreferencesController sharedPreferencesController](TIPreferencesController "sharedPreferencesController")]);
  v6 = [-[KeyboardController cachedCellForSpecifier:](self cachedCellForSpecifier:{a3), "valueLabel"}];

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
      v4 = [(KeyboardController *)self dictationLanguageSpecifier];
    }

    else
    {
      if (![(KeyboardController *)self dictationAutoPunctuationSpecifier])
      {
LABEL_15:
        v6 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];

        [(KeyboardController *)self insertSpecifier:v6 afterSpecifier:v3 animated:1];
        return;
      }

      v4 = [(KeyboardController *)self dictationAutoPunctuationSpecifier];
    }

    v3 = v4;
    goto LABEL_15;
  }

  [(KeyboardController *)self removeSpecifierID:@"HardwareKeyboard" animated:1];
  if ([(KeyboardController *)self dictationHardwareShortcutSpecifier])
  {
    v5 = [(KeyboardController *)self dictationHardwareShortcutSpecifier];

    [(KeyboardController *)self removeSpecifier:v5 animated:1];
  }
}

- (id)getReachableKeybordSetting:(id)a3
{
  v3 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController sharedPreferencesController];

  return [NSNumber numberWithInteger:v3];
}

- (void)setReachableKeyboardSetting:(id)a3 specifier:(id)a4
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:a3];
  v6 = [a3 integerValue];

  [v5 setHandBias:v6];
}

- (id)selectSpecifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = KeyboardController;
  v4 = [(KeyboardController *)&v6 selectSpecifier:?];
  [KeyboardController emitNavigationEventForSpecifier:a3 viewController:v4];
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

- (id)readKeyboardVisceralPreferenceValue:(id)a3
{
  v3 = [+[UIKeyboardPreferencesController sharedPreferencesController](UIKeyboardPreferencesController sharedPreferencesController] != 0;

  return [NSNumber numberWithInt:v3];
}

- (void)setKeyboardVisceralPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:a3];
  v6 = [a3 BOOLValue];

  [v5 setVisceral:v6];
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

- (id)getProKeyboardSetting:(id)a3
{
  v3 = +[UIKeyboardPreferencesController sharedPreferencesController];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return &__kCFBooleanFalse;
  }

  v4 = [v3 enableProKeyboard];

  return [NSNumber numberWithBool:v4];
}

- (void)setProKeyboardSetting:(id)a3 specifier:(id)a4
{
  v5 = [UIKeyboardPreferencesController sharedPreferencesController:a3];
  if (objc_opt_respondsToSelector())
  {
    v6 = [a3 BOOLValue];

    [v5 setEnableProKeyboard:v6];
  }
}

- (NSArray)openShortcutsSpecifiers
{
  if (self->_openShortcutsSpecifiers || (v3 = -[NSBundle localizedStringForKey:value:table:](+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"USER_DICTIONARY", &stru_49C80, @"Keyboard"), v4 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v3, 0, 0, 0, objc_opt_class(), 2, 0), [v4 setProperty:@"USER_DICTIONARY" forKey:PSIDKey], result = objc_msgSend([NSArray alloc], "initWithObjects:", +[PSSpecifier groupSpecifierWithName:](PSSpecifier, "groupSpecifierWithName:", &stru_49C80), v4, 0), (self->_openShortcutsSpecifiers = result) != 0))
  {
    v6 = [objc_msgSend(sub_7D18() "sharedConnection")];
    v7 = [(NSArray *)self->_openShortcutsSpecifiers lastObject];
    v8 = [NSNumber numberWithBool:v6];
    [v7 setProperty:v8 forKey:PSEnabledKey];
    return self->_openShortcutsSpecifiers;
  }

  return result;
}

@end