@interface ISApplicationLanguageController
- (id)defaultLanguage;
- (id)languageSpecifiersFrom:(id)from forGroup:(id)group sorted:(BOOL)sorted;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

    selfCopy = self;
    bundleIdentifier = [(ISApplicationLanguageController *)self bundleIdentifier];
    v6 = [LSApplicationProxy applicationProxyForIdentifier:bundleIdentifier];

    v51 = v6;
    bundleURL = [v6 bundleURL];
    v8 = [NSBundle bundleWithURL:bundleURL];

    v9 = [NSMutableOrderedSet alloc];
    v52 = v8;
    normalizedLocalizations = [v8 normalizedLocalizations];
    v50 = [v9 initWithArray:normalizedLocalizations];

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
          normalizedLocalizations2 = [v52 normalizedLocalizations];
          v57 = v17;
          v19 = [NSArray arrayWithObjects:&v57 count:1];
          v20 = [NSBundle preferredLocalizationsFromArray:normalizedLocalizations2 forPreferences:v19];
          [v11 addObjectsFromArray:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v53 objects:v58 count:16];
      }

      while (v14);
    }

    array = [v11 array];
    [v50 removeObjectsInArray:array];

    v22 = [NSBundle bundleForClass:objc_opt_class()];
    v23 = [v22 localizedStringForKey:@"SUGGESTED_LANGUAGES" value:&stru_35798 table:@"InternationalSettings"];
    v24 = [PSSpecifier groupSpecifierWithID:@"PREFERRED_LANGUAGE" name:v23];
    [(ISApplicationLanguageController *)selfCopy setSuggestedLanguageGroup:v24];

    suggestedLanguageGroup = [(ISApplicationLanguageController *)selfCopy suggestedLanguageGroup];
    v26 = PSIsRadioGroupKey;
    [suggestedLanguageGroup setProperty:&__kCFBooleanTrue forKey:PSIsRadioGroupKey];

    v27 = [NSBundle bundleForClass:objc_opt_class()];
    v28 = [v27 localizedStringForKey:@"SUGGESTED_LANGUAGE_INFO" value:&stru_35798 table:@"InternationalSettings"];
    localizedName = [v51 localizedName];
    localizedName2 = [v51 localizedName];
    v31 = [NSString localizedStringWithFormat:v28, localizedName, localizedName2];

    suggestedLanguageGroup2 = [(ISApplicationLanguageController *)selfCopy suggestedLanguageGroup];
    [suggestedLanguageGroup2 setProperty:v31 forKey:PSFooterTextGroupKey];

    v33 = [NSBundle bundleForClass:objc_opt_class()];
    v34 = [v33 localizedStringForKey:@"OTHER_LANGUAGES" value:&stru_35798 table:@"InternationalSettings"];
    v35 = [PSSpecifier groupSpecifierWithID:@"OTHER_LANGUAGES" name:v34];
    [(ISApplicationLanguageController *)selfCopy setOtherLanguageGroup:v35];

    otherLanguageGroup = [(ISApplicationLanguageController *)selfCopy otherLanguageGroup];
    [otherLanguageGroup setProperty:&__kCFBooleanTrue forKey:v26];

    if ([v11 count])
    {
      suggestedLanguageGroup3 = [(ISApplicationLanguageController *)selfCopy suggestedLanguageGroup];
      [v47 addObject:suggestedLanguageGroup3];

      array2 = [v11 array];
      suggestedLanguageGroup4 = [(ISApplicationLanguageController *)selfCopy suggestedLanguageGroup];
      v40 = [(ISApplicationLanguageController *)selfCopy languageSpecifiersFrom:array2 forGroup:suggestedLanguageGroup4 sorted:0];
      [v47 addObjectsFromArray:v40];
    }

    if ([v50 count])
    {
      otherLanguageGroup2 = [(ISApplicationLanguageController *)selfCopy otherLanguageGroup];
      [v47 addObject:otherLanguageGroup2];

      array3 = [v50 array];
      otherLanguageGroup3 = [(ISApplicationLanguageController *)selfCopy otherLanguageGroup];
      v44 = [(ISApplicationLanguageController *)selfCopy languageSpecifiersFrom:array3 forGroup:otherLanguageGroup3 sorted:1];
      [v47 addObjectsFromArray:v44];
    }

    v45 = *&selfCopy->PSListController_opaque[v48];
    *&selfCopy->PSListController_opaque[v48] = v47;

    v3 = *&selfCopy->PSListController_opaque[v48];
  }

  return v3;
}

- (id)languageSpecifiersFrom:(id)from forGroup:(id)group sorted:(BOOL)sorted
{
  sortedCopy = sorted;
  fromCopy = from;
  groupCopy = group;
  v45 = objc_opt_new();
  v9 = [fromCopy mutableCopy];
  selfCopy = self;
  defaultLanguage = [(ISApplicationLanguageController *)self defaultLanguage];
  v39 = fromCopy;
  if (sortedCopy)
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
        v17 = [v16 isEqualToString:defaultLanguage];

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
          v30 = [PSSpecifier preferenceSpecifierNamed:v29 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
          [v30 setProperty:v22 forKey:@"PSLanguageCodeKey"];
          [v30 setProperty:objc_opt_class() forKey:v44];
          v31 = [IntlUtility normalizedLanguageIDFromString:v22];
          v32 = [v31 isEqualToString:defaultLanguage];

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

          bundleIdentifier = [(ISApplicationLanguageController *)selfCopy bundleIdentifier];
          v36 = [IntlUtility preferredLanguageForBundleID:bundleIdentifier];
          v37 = [v22 isEqual:v36];

          if (v37)
          {
            [groupCopy setProperty:v30 forKey:v40];
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
  bundleIdentifier = [(ISApplicationLanguageController *)self bundleIdentifier];
  v3 = [NSBundle bundleWithIdentifier:bundleIdentifier];

  v4 = +[NSLocale preferredLanguages];
  localizations = [v3 localizations];
  v6 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v4];
  firstObject = [v6 firstObject];

  v8 = [IntlUtility normalizedLanguageIDFromString:firstObject];

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    section = [pathCopy section];
    v25 = 2048;
    v26 = [pathCopy row];
    _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[ISApplicationLanguageController] Per-app language setting did select row at index path [%ld, %ld].", buf, 0x16u);
  }

  v22.receiver = self;
  v22.super_class = ISApplicationLanguageController;
  [(ISApplicationLanguageController *)&v22 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v8 = [(ISApplicationLanguageController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  }

  v10 = [(ISApplicationLanguageController *)self getGroupSpecifierForSpecifier:v9];
  suggestedLanguageGroup = [(ISApplicationLanguageController *)self suggestedLanguageGroup];
  if (v10 == suggestedLanguageGroup)
  {
    [(ISApplicationLanguageController *)self otherLanguageGroup];
  }

  else
  {
    [(ISApplicationLanguageController *)self suggestedLanguageGroup];
  }
  v12 = ;

  v13 = [v10 propertyForKey:PSIsRadioGroupKey];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    suggestedLanguageGroup2 = [(ISApplicationLanguageController *)self suggestedLanguageGroup];
    v16 = PSRadioGroupCheckedSpecifierKey;
    [suggestedLanguageGroup2 removePropertyForKey:PSRadioGroupCheckedSpecifierKey];

    otherLanguageGroup = [(ISApplicationLanguageController *)self otherLanguageGroup];
    [otherLanguageGroup removePropertyForKey:v16];

    v18 = [v9 propertyForKey:@"PSLanguageCodeKey"];
    [v10 setProperty:v9 forKey:v16];
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      bundleIdentifier = [(ISApplicationLanguageController *)self bundleIdentifier];
      *buf = 138543618;
      section = v18;
      v25 = 2114;
      v26 = bundleIdentifier;
      _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[ISApplicationLanguageController] Per-app language setting about to set language to [%{public}@] for [%{public}@].", buf, 0x16u);
    }

    bundleIdentifier2 = [(ISApplicationLanguageController *)self bundleIdentifier];
    [IntlUtility setPreferredLanguage:v18 forBundleID:bundleIdentifier2];
  }

  [(ISApplicationLanguageController *)self reloadSpecifier:v12];
  WeakRetained = objc_loadWeakRetained(&self->PSListController_opaque[OBJC_IVAR___PSViewController__parentController]);
  [WeakRetained reloadSpecifier:*&self->PSListController_opaque[OBJC_IVAR___PSViewController__specifier]];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v21.receiver = self;
  v21.super_class = ISApplicationLanguageController;
  pathCopy = path;
  v7 = [(ISApplicationLanguageController *)&v21 tableView:view cellForRowAtIndexPath:pathCopy];
  v8 = [(ISApplicationLanguageController *)self indexForIndexPath:pathCopy];

  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
    v10 = [(ISApplicationLanguageController *)self getGroupSpecifierForSpecifier:v9];
    v11 = [v10 propertyForKey:PSIsRadioGroupKey];
    bOOLValue = [v11 BOOLValue];

    if (bOOLValue)
    {
      v13 = [v9 propertyForKey:@"PSLanguageCodeKey"];
      v14 = [NSAttributedString alloc];
      textLabel = [v7 textLabel];
      text = [textLabel text];
      v22 = kCTLanguageAttributeName;
      v23 = v13;
      v17 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v18 = [v14 initWithString:text attributes:v17];

      textLabel2 = [v7 textLabel];
      [textLabel2 setAttributedText:v18];
    }
  }

  return v7;
}

@end