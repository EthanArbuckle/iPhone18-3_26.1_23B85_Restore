@interface ISApplicationLanguageController
- (id)defaultLanguage;
- (id)languageSpecifiersFrom:(id)a3 forGroup:(id)a4 sorted:(BOOL)a5;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation ISApplicationLanguageController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v48 = OBJC_IVAR___PSListController__specifiers;
    v47 = objc_alloc_init(NSMutableArray);
    v4 = [*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier] propertyForKey:@"bundleID"];
    [(ISApplicationLanguageController *)self setBundleIdentifier:v4];

    v49 = self;
    v5 = [(ISApplicationLanguageController *)self bundleIdentifier];
    v6 = [LSApplicationProxy applicationProxyForIdentifier:v5];

    v51 = v6;
    v7 = [v6 bundleURL];
    v8 = [NSBundle bundleWithURL:v7];

    v9 = [NSMutableOrderedSet alloc];
    v52 = v8;
    v10 = [v8 normalizedLocalizations];
    v50 = [v9 initWithArray:v10];

    v11 = objc_alloc_init(NSMutableOrderedSet);
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v12 = +[NSLocale preferredLanguages];
    v13 = [v12 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v54;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v54 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v53 + 1) + 8 * i);
          v18 = [v52 normalizedLocalizations];
          v57 = v17;
          v19 = [NSArray arrayWithObjects:&v57 count:1];
          v20 = [NSBundle preferredLocalizationsFromArray:v18 forPreferences:v19];
          [v11 addObjectsFromArray:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v14);
    }

    v21 = [v11 array];
    [v50 removeObjectsInArray:v21];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SUGGESTED_LANGUAGES" value:&stru_35798 table:@"InternationalSettings"];
    v24 = [PSSpecifier groupSpecifierWithID:@"PREFERRED_LANGUAGE" name:v23];
    [(ISApplicationLanguageController *)v49 setSuggestedLanguageGroup:v24];

    v25 = [(ISApplicationLanguageController *)v49 suggestedLanguageGroup];
    v26 = PSIsRadioGroupKey;
    [v25 setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SUGGESTED_LANGUAGE_INFO" value:&stru_35798 table:@"InternationalSettings"];
    v29 = [v51 localizedName];
    v30 = [v51 localizedName];
    v31 = [NSString localizedStringWithFormat:v28, v29, v30];

    v32 = [(ISApplicationLanguageController *)v49 suggestedLanguageGroup];
    [v32 setProperty:v31 forKey:PSFooterTextGroupKey];

    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"OTHER_LANGUAGES" value:&stru_35798 table:@"InternationalSettings"];
    v35 = [PSSpecifier groupSpecifierWithID:@"OTHER_LANGUAGES" name:v34];
    [(ISApplicationLanguageController *)v49 setOtherLanguageGroup:v35];

    v36 = [(ISApplicationLanguageController *)v49 otherLanguageGroup];
    [v36 setProperty:&__kCFBooleanTrue forKey:v26];

    if ([v11 count])
    {
      v37 = [(ISApplicationLanguageController *)v49 suggestedLanguageGroup];
      [v47 addObject:v37];

      v38 = [v11 array];
      v39 = [(ISApplicationLanguageController *)v49 suggestedLanguageGroup];
      v40 = [(ISApplicationLanguageController *)v49 languageSpecifiersFrom:v38 forGroup:v39 sorted:0];
      [v47 addObjectsFromArray:v40];
    }

    if ([v50 count])
    {
      v41 = [(ISApplicationLanguageController *)v49 otherLanguageGroup];
      [v47 addObject:v41];

      v42 = [v50 array];
      v43 = [(ISApplicationLanguageController *)v49 otherLanguageGroup];
      v44 = [(ISApplicationLanguageController *)v49 languageSpecifiersFrom:v42 forGroup:v43 sorted:1];
      [v47 addObjectsFromArray:v44];
    }

    v45 = *&v49->PSListController_opaque[v48];
    *&v49->PSListController_opaque[v48] = v47;

    v3 = *&v49->PSListController_opaque[v48];
  }

  return v3;
}

- (id)languageSpecifiersFrom:(id)a3 forGroup:(id)a4 sorted:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v41 = a4;
  v45 = objc_opt_new();
  v9 = [v8 mutableCopy];
  v48 = self;
  v46 = [(ISApplicationLanguageController *)self defaultLanguage];
  v39 = v8;
  if (v5)
  {
    [v9 sortUsingComparator:&stru_35198];
  }

  else
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v10 = v9;
    v11 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v54;
LABEL_5:
      v14 = 0;
      while (1)
      {
        if (*v54 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v53 + 1) + 8 * v14);
        v16 = [IntlUtility normalizedLanguageIDFromString:v15];
        v17 = [v16 isEqualToString:v46];

        if (v17)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v53 objects:v58 count:16];
          if (v12)
          {
            goto LABEL_5;
          }

          goto LABEL_14;
        }
      }

      v18 = v15;

      if (!v18)
      {
        goto LABEL_15;
      }

      [v10 removeObject:v18];
      [v10 insertObject:v18 atIndex:0];
      v10 = v18;
    }

LABEL_14:
  }

LABEL_15:
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v9;
  v19 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v19)
  {
    v20 = v19;
    v47 = *v50;
    v44 = PSCellClassKey;
    v43 = PSTableCellSubtitleTextKey;
    v40 = PSRadioGroupCheckedSpecifierKey;
    do
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v50 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v49 + 1) + 8 * i);
        v23 = +[NSLocale _deviceLanguage];
        v24 = [NSLocale localeWithLocaleIdentifier:v23];
        v25 = [v24 localizedStringForLanguage:v22 context:3];

        v26 = [NSLocale localeWithLocaleIdentifier:v22];
        v27 = [IntlUtility canCapitalizeAutonymForLanguage:v22];
        v28 = 3;
        if (v27)
        {
          if (+[IntlUtility forceCapitalizationInLanguageLists])
          {
            v28 = 4;
          }

          else
          {
            v28 = 3;
          }
        }

        v29 = [v26 localizedStringForLanguage:v22 context:v28];
        if (v29)
        {
          v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:v48 set:0 get:0 detail:0 cell:3 edit:0];
          [v30 setProperty:v22 forKey:@"PSLanguageCodeKey"];
          [v30 setProperty:objc_opt_class() forKey:v44];
          v31 = [IntlUtility normalizedLanguageIDFromString:v22];
          v32 = [v31 isEqualToString:v46];

          if (v32)
          {
            v33 = [NSBundle bundleForClass:objc_opt_class()];
            v34 = [v33 localizedStringForKey:@"DEFAULT_LANGUAGE" value:&stru_35798 table:@"InternationalSettings"];
            [v30 setProperty:v34 forKey:v43];
          }

          else
          {
            [v30 setProperty:v25 forKey:v43];
          }

          v35 = [(ISApplicationLanguageController *)v48 bundleIdentifier];
          v36 = [IntlUtility preferredLanguageForBundleID:v35];
          v37 = [v22 isEqual:v36];

          if (v37)
          {
            [v41 setProperty:v30 forKey:v40];
          }

          [v45 addObject:v30];
        }
      }

      v20 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
    }

    while (v20);
  }

  return v45;
}

- (id)defaultLanguage
{
  v2 = [(ISApplicationLanguageController *)self bundleIdentifier];
  v3 = [NSBundle bundleWithIdentifier:v2];

  v4 = +[NSLocale preferredLanguages];
  v5 = [v3 localizations];
  v6 = [NSBundle preferredLocalizationsFromArray:v5 forPreferences:v4];
  v7 = [v6 firstObject];

  v8 = [IntlUtility normalizedLanguageIDFromString:v7];

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v24 = [v7 section];
    v25 = 2048;
    v26 = [v7 row];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[ISApplicationLanguageController] Per-app language setting did select row at index path [%ld, %ld].", buf, 0x16u);
  }

  v22.receiver = self;
  v22.super_class = ISApplicationLanguageController;
  [(ISApplicationLanguageController *)&v22 tableView:v6 didSelectRowAtIndexPath:v7];
  v8 = [(ISApplicationLanguageController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [(ISApplicationLanguageController *)self getGroupSpecifierForSpecifier:v9];
  v11 = [(ISApplicationLanguageController *)self suggestedLanguageGroup];
  if (v10 == v11)
  {
    [(ISApplicationLanguageController *)self otherLanguageGroup];
  }

  else
  {
    [(ISApplicationLanguageController *)self suggestedLanguageGroup];
  }
  v12 = ;

  v13 = [v10 propertyForKey:PSIsRadioGroupKey];
  v14 = [v13 BOOLValue];

  if (v14)
  {
    v15 = [(ISApplicationLanguageController *)self suggestedLanguageGroup];
    v16 = PSRadioGroupCheckedSpecifierKey;
    [v15 removePropertyForKey:PSRadioGroupCheckedSpecifierKey];

    v17 = [(ISApplicationLanguageController *)self otherLanguageGroup];
    [v17 removePropertyForKey:v16];

    v18 = [v9 propertyForKey:@"PSLanguageCodeKey"];
    [v10 setProperty:v9 forKey:v16];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [(ISApplicationLanguageController *)self bundleIdentifier];
      *buf = 138543618;
      v24 = v18;
      v25 = 2114;
      v26 = v19;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[ISApplicationLanguageController] Per-app language setting about to set language to [%{public}@] for [%{public}@].", buf, 0x16u);
    }

    v20 = [(ISApplicationLanguageController *)self bundleIdentifier];
    [IntlUtility setPreferredLanguage:v18 forBundleID:v20];
  }

  [(ISApplicationLanguageController *)self reloadSpecifier:v12];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v21.receiver = self;
  v21.super_class = ISApplicationLanguageController;
  v6 = a4;
  v7 = [(ISApplicationLanguageController *)&v21 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(ISApplicationLanguageController *)self indexForIndexPath:v6];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v10 = [(ISApplicationLanguageController *)self getGroupSpecifierForSpecifier:v9];
    v11 = [v10 propertyForKey:PSIsRadioGroupKey];
    v12 = [v11 BOOLValue];

    if (v12)
    {
      v13 = [v9 propertyForKey:@"PSLanguageCodeKey"];
      v14 = [NSAttributedString alloc];
      v15 = [v7 textLabel];
      v16 = [v15 text];
      v22 = kCTLanguageAttributeName;
      v23 = v13;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = [v14 initWithString:v16 attributes:v17];

      v19 = [v7 textLabel];
      [v19 setAttributedText:v18];
    }
  }

  return v7;
}

@end