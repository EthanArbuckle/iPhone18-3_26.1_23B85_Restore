@interface DictationFooterView
+ (id)dictationAutoPunctuationText;
- (DictationFooterView)initWithSpecifier:(id)a3;
- (id)explanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4 lowStorage:(BOOL)a5;
- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4;
@end

@implementation DictationFooterView

- (DictationFooterView)initWithSpecifier:(id)a3
{
  v23.receiver = self;
  v23.super_class = DictationFooterView;
  v4 = [(DictationFooterView *)&v23 initWithSpecifier:?];
  if (v4)
  {
    v5 = [a3 target];
    v6 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_ABOUT_LINK", &stru_49C80, @"Keyboard"];
    v7 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_MANAGE_STORAGE_LINK", &stru_49C80, @"Keyboard"];
    v8 = +[DictationFooterView dictationAutoPunctuationText];
    v9 = v6;
    if ([v8 length])
    {
      v9 = [NSString stringWithFormat:@"%@ %@", v8, v6];
    }

    [(DictationFooterView *)v4 setText:v9];
    v10 = [v5 lowStorageOnDeviceAssetStringWithLinkString:v7];
    v11 = AFDeviceHighestLanguageModelCapabilityIdentifier();
    v12 = [v5 offlineStatusForLanguage];
    if (v11 == 10)
    {
      v13 = [(DictationFooterView *)v4 explanationSuffixTextWithOfflineDictationStatus:v12 privacyLinkText:v9 lowStorage:v10 != 0];
    }

    else
    {
      v13 = [(DictationFooterView *)v4 offlineExplanationSuffixTextWithOfflineDictationStatus:v12 privacyLinkText:v9];
    }

    v14 = v13;
    if (v13)
    {
      [(DictationFooterView *)v4 setText:v13];
    }

    v15 = [(DictationFooterView *)v4 text];
    if (v10)
    {
      -[DictationFooterView setText:](v4, "setText:", [v15 stringByAppendingFormat:@"\n\n%@", v10]);
      v16 = [(DictationFooterView *)v4 text];
      [a3 setProperty:v16 forKey:PSFooterTextGroupKey];
      v17 = [-[DictationFooterView text](v4 "text")];
      [a3 addFooterHyperlinkWithRange:v17 target:v18 action:{v5, "presentPrivacySheet:"}];
      v19 = &selRef_launchManageStorage_;
    }

    else
    {
      [a3 setProperty:v15 forKey:PSFooterTextGroupKey];
      v19 = &selRef_presentPrivacySheet_;
      v7 = v6;
    }

    v20 = [-[DictationFooterView text](v4 "text")];
    [a3 addFooterHyperlinkWithRange:v20 target:v21 action:{v5, *v19}];
    [(DictationFooterView *)v4 refreshContentsWithSpecifier:a3];
  }

  return v4;
}

- (id)offlineExplanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3052000000;
  v21 = sub_496C;
  v22 = sub_497C;
  v23 = +[NSMutableSet set];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_4988;
  v13[3] = &unk_48FB8;
  v13[4] = &v18;
  v13[5] = &v14;
  [a3 enumerateKeysAndObjectsUsingBlock:v13];
  if ([v19[5] count])
  {
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    if ([v19[5] count] < 2)
    {
      v7 = @"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE";
    }

    else
    {
      v7 = [@"DICTATION_OFFLINE_EXPLANATION_SUFFIX_INSTALLED_WITH_LANGUAGE" stringByAppendingString:@"S"];
    }

    v11 = [(NSBundle *)v6 localizedStringForKey:v7 value:&stru_49C80 table:@"Keyboard"];
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", v11, +[KeyboardController localizedListForInputModes:forDictation:duplicatedBaseLanguages:](KeyboardController, "localizedListForInputModes:forDictation:duplicatedBaseLanguages:", [v19[5] allObjects], 1, 0));
    if (v9)
    {
      goto LABEL_9;
    }
  }

  else if (*(v15 + 24) == 1)
  {
    v8 = [NSBundle bundleForClass:objc_opt_class()];
    v9 = [(NSBundle *)v8 localizedStringForKey:SFLocalizableWAPIStringKeyForKey() value:&stru_49C80 table:@"Keyboard"];
    if (v9)
    {
LABEL_9:
      v10 = [NSString stringWithFormat:@"%@ %@", v9, a4];
      goto LABEL_10;
    }
  }

  v10 = 0;
LABEL_10:
  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
  return v10;
}

- (id)explanationSuffixTextWithOfflineDictationStatus:(id)a3 privacyLinkText:(id)a4 lowStorage:(BOOL)a5
{
  v8 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if ([(NSArray *)v8 count]== &dword_0 + 1 && (v9 = +[TIInputModeController sharedInputModeController], (objc_opt_respondsToSelector() & 1) != 0))
  {
    v10 = [v9 defaultDictationLanguagesForKeyboardLanguage:{-[NSArray firstObject](v8, "firstObject")}];
    if (!v10)
    {
      v30 = [(NSArray *)v8 firstObject];
      v10 = [NSArray arrayWithObjects:&v30 count:1];
    }
  }

  else
  {
    v10 = v8;
  }

  if (-[NSArray count](v10, "count") == &dword_0 + 1 && sub_4DC4() && [objc_msgSend(+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")])
  {
    v11 = [-[NSArray firstObject](v10 "firstObject")];
    v12 = _AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode();
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = v11;
    }

    [a3 objectForKeyedSubscript:v13];
    if (AFOfflineDictationStatusStringIsHighQualityModelSupported())
    {
      IsInstalled = AFOfflineDictationStatusStringIsInstalled();
      IsInstalling = AFOfflineDictationStatusStringIsInstalling();
      v16 = AFOfflineDictationStatusStringIsOnDeviceSearchSupported();
      if (IsInstalled)
      {
        if (v16)
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES_NO_SEARCH";
        }

        else
        {
          v17 = @"DICTATION_ON_DEVICE_SERVER_SOMETIMES";
        }

        v18 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_PRIVATE_PROCESSING", &stru_49C80, @"Keyboard"];
        v28 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:v17, &stru_49C80, @"Keyboard"];
        v29 = a4;
        v27 = v18;
        v19 = @"%@ %@ %@";
        goto LABEL_28;
      }

      v22 = [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER_WHEN_NECESSARY", &stru_49C80, @"Keyboard"];
      v23 = v22;
      if (IsInstalling)
      {
        if (!a5)
        {
          v24 = [NSBundle bundleForClass:objc_opt_class()];
          v25 = @"DICTATION_ON_DEVICE_SUPPORT_DOWNLOADING";
LABEL_27:
          v28 = a4;
          v29 = [(NSBundle *)v24 localizedStringForKey:v25 value:&stru_49C80 table:@"Keyboard"];
          v27 = v23;
          v19 = @"%@ %@\n\n%@";
          goto LABEL_28;
        }
      }

      else if (!a5)
      {
        v26 = [NSBundle bundleForClass:objc_opt_class()];
        v25 = SFLocalizableWAPIStringKeyForKey();
        v24 = v26;
        goto LABEL_27;
      }

      v27 = v22;
      v28 = a4;
      v19 = @"%@ %@";
LABEL_28:
      v20 = [NSString stringWithFormat:v19, v27, v28, v29];
      return v20;
    }

    v20 = [NSString stringWithFormat:@"%@ %@", [[NSBundle bundleForClass:?]value:"localizedStringForKey:value:table:" table:@"DICTATION_ON_DEVICE_SERVER", &stru_49C80, @"Keyboard"], a4, v29];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

+ (id)dictationAutoPunctuationText
{
  +[AFPreferences sharedPreferences];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = +[NSMutableArray array];
  v3 = +[NSCountedSet set];
  v4 = +[NSMutableArray array];
  v5 = [objc_msgSend(+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")];
  v6 = +[NSArray array];
  v7 = [+[UIKeyboardInputModeController sharedInputModeController](UIKeyboardInputModeController "sharedInputModeController")];
  if ((sub_4DC4() & (v7 != 0)) != 0)
  {
    v6 = v7;
  }

  if (v5 && [+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")] && !-[NSArray containsObject:](v6, "containsObject:", v5))
  {
    v6 = [(NSArray *)v6 arrayByAddingObject:v5];
  }

  v27 = v2;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v8 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    v26 = 1;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v32 + 1) + 8 * i);
        [v3 addObject:UIKeyboardInputModeGetBaseLanguage()];
        v13 = [v12 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
        v14 = _AFPreferencesReplacementLanguageForLocalRecognizerLanguageCode();
        if (v14)
        {
          v13 = v14;
        }

        if ([objc_msgSend(+[AFPreferences sharedPreferences](AFPreferences "sharedPreferences")])
        {
          [v27 addObject:v12];
        }

        else
        {
          v26 = 0;
        }
      }

      v9 = [(NSArray *)v6 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  else
  {
    v26 = 1;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v16 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(v3);
        }

        v20 = *(*(&v28 + 1) + 8 * j);
        if ([v3 countForObject:v20] >= 2)
        {
          [v4 addObject:v20];
        }
      }

      v17 = [v3 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  v21 = [v27 count];
  v22 = (v21 == 0) | v26;
  if (v21)
  {
    v23 = &stru_49C80;
  }

  else
  {
    v23 = 0;
  }

  if ((v22 & 1) == 0)
  {
    v24 = [NSBundle bundleForClass:objc_opt_class()];
    if ([v27 count] < 2)
    {
      v25 = @"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE";
    }

    else
    {
      v25 = [@"DICTATION_AUTO_PUNCTUATION_EXPLANATION_SUFFIX_WITH_LANGUAGE" stringByAppendingString:@"S"];
    }

    v23 = [NSString stringWithFormat:[(NSBundle *)v24 localizedStringForKey:v25 value:&stru_49C80 table:@"Keyboard"], [KeyboardController localizedListForInputModes:v27 forDictation:1 duplicatedBaseLanguages:v4]];
  }

  return v23;
}

@end