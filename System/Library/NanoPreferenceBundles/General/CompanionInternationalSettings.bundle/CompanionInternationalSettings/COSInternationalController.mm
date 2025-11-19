@interface COSInternationalController
+ (id)currentLocale;
+ (id)deviceLanguageIdentifier;
+ (id)preferredLanguages;
- (COSInternationalController)init;
- (id)calendar:(id)a3;
- (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)a3;
- (id)currentInflectionDisplayString;
- (id)defaultCalendarForLocaleID:(id)a3;
- (id)effectiveCalendarFromLocale:(id)a3;
- (id)localizedDeviceDisplayLanguageNameFromPreferredLanguages:(id)a3;
- (id)localizedMirroringDetailFooter;
- (id)localizedRegionNameForLocale:(id)a3;
- (id)numberingSystemSpecifier;
- (id)numberingSystemsValues;
- (id)regionForCurrentLocale:(id)a3;
- (id)selectSpecifier:(id)a3;
- (id)specifiers;
- (id)specifiersInCustomSection;
- (id)validateLocale:(id)a3;
- (void)addNumberingSystemSpecifier:(id)a3;
- (void)changeLanguage:(id)a3;
- (void)handleLocalesInfo:(id)a3 error:(id)a4;
- (void)inflectionSettingsViewController:(id)a3 inflectionDidChange:(id)a4;
- (void)queryGizmoForLocalesInfo;
- (void)reloadNumberingSystemSpecifier;
- (void)setCalendar:(id)a3 specifier:(id)a4;
- (void)setLanguage:(id)a3;
- (void)setLocaleOnly:(id)a3;
- (void)setPreferredLanguages:(id)a3;
- (void)startSpinnerInCellForSpecifier:(id)a3;
- (void)stopSpinner;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation COSInternationalController

- (COSInternationalController)init
{
  v11.receiver = self;
  v11.super_class = COSInternationalController;
  v2 = [(ISInternationalViewController *)&v11 init];
  if (v2)
  {
    v3 = [COSMirrorController mirrorControllerWithInternationalController:v2];
    [(COSInternationalController *)v2 setMirrorController:v3];

    v4 = [[COSLanguageSelector alloc] initWithInternationalController:v2];
    [(COSInternationalController *)v2 setLanguageSelector:v4];

    v5 = [[COSLocaleSelector alloc] initWithInternationalController:v2];
    [(COSInternationalController *)v2 setLocaleSelector:v5];

    v6 = [[COSInflectionSelector alloc] initWithInternationalController:v2];
    [(COSInternationalController *)v2 setInflectionSelector:v6];

    v7 = [[COSScriptSelector alloc] initWithInternationalController:v2];
    [(COSInternationalController *)v2 setScriptSelector:v7];

    v8 = objc_opt_new();
    nssManager = v2->_nssManager;
    v2->_nssManager = v8;

    [(COSInternationalController *)v2 queryGizmoForLocalesInfo];
  }

  return v2;
}

- (void)queryGizmoForLocalesInfo
{
  objc_initWeak(&location, self);
  nssManager = self->_nssManager;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_AA0C;
  v4[3] = &unk_28D70;
  objc_copyWeak(&v5, &location);
  [(NSSManager *)nssManager getLocalesInfo:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)handleLocalesInfo:(id)a3 error:(id)a4
{
  v27 = a3;
  v6 = a4;
  self->_hasFetchedLocalesInfo = 1;
  if (!v27 || v6)
  {
    self->_errorHasOccurred = 1;
    NSLog(@"Error has occured: %@", v6);
    systemLanguages = self->_systemLanguages;
    self->_systemLanguages = 0;

    availableLocaleIdentifiers = self->_availableLocaleIdentifiers;
    self->_availableLocaleIdentifiers = 0;

    numberingSystems = self->_numberingSystems;
    self->_numberingSystems = 0;

    supportedCalendars = self->_supportedCalendars;
    self->_supportedCalendars = 0;

    defaultCalendars = self->_defaultCalendars;
    self->_defaultCalendars = 0;

    BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();
  }

  else
  {
    self->_errorHasOccurred = 0;
    v7 = [v27 objectForKeyedSubscript:kNSSLocalesInfoSystemLanguagesKey];
    v8 = self->_systemLanguages;
    self->_systemLanguages = v7;

    v9 = [v27 objectForKeyedSubscript:kNSSLocalesInfoAvailableLocaleIdentifiers];
    v10 = self->_availableLocaleIdentifiers;
    self->_availableLocaleIdentifiers = v9;

    v11 = [v27 objectForKeyedSubscript:kNSSLocalesInfoDefaultNumberingSystems];
    v12 = self->_numberingSystems;
    self->_numberingSystems = v11;

    v13 = [v27 objectForKeyedSubscript:kNSSLocalesInfoSupportedCalendars];
    v14 = self->_supportedCalendars;
    self->_supportedCalendars = v13;

    v15 = [v27 objectForKeyedSubscript:kNSSLocalesInfoDefaultCalendars];
    v16 = self->_defaultCalendars;
    self->_defaultCalendars = v15;

    if (self->_remoteLoadingSpecifier)
    {
      v17 = [(COSInternationalController *)self indexPathForSpecifier:?];
      v18 = [(COSInternationalController *)self table];
      [(COSInternationalController *)self tableView:v18 didSelectRowAtIndexPath:v17];
    }

    [(COSInternationalController *)self reloadNumberingSystemSpecifier];
    v19 = [(COSInternationalController *)self specifierForID:@"CALENDAR"];
    [(COSInternationalController *)self reloadSpecifier:v19];

    v20 = [(COSInternationalController *)self mirrorController];
    v21 = [v20 shouldShowMirroringAsEnabled];

    if (v21)
    {
      [(COSInternationalController *)self reloadSpecifiers];
    }
  }

  [(COSInternationalController *)self stopSpinner];
}

- (void)addNumberingSystemSpecifier:(id)a3
{
  v7 = a3;
  v4 = [(COSInternationalController *)self numberingSystemsValues];
  v5 = [v4 count];

  if (v5 >= 2)
  {
    v6 = [(COSInternationalController *)self numberingSystemSpecifier];
    [v7 insertObject:v6 atIndex:{objc_msgSend(v7, "indexOfSpecifierWithID:", @"LOCALE"}];
  }
}

- (void)reloadNumberingSystemSpecifier
{
  v3 = [(COSInternationalController *)self specifierForID:@"NUMBERING_SYSTEM"];
  v4 = [(COSInternationalController *)self numberingSystemsValues];
  v5 = [v4 count];

  if (v5 < 2)
  {
    if (v3)
    {
      [(COSInternationalController *)self removeSpecifierID:@"NUMBERING_SYSTEM"];
    }
  }

  else
  {
    v6 = [(COSInternationalController *)self mirrorController];
    v7 = [v6 shouldShowMirroringAsEnabled];

    if ((v7 & 1) == 0 && !v3)
    {
      v8 = [(COSInternationalController *)self numberingSystemSpecifier];
      [(COSInternationalController *)self insertSpecifier:v8 afterSpecifierID:@"LOCALE" animated:1];
    }
  }

  v9 = [(COSInternationalController *)self specifierForID:@"NUMBERING_SYSTEM"];

  [(COSInternationalController *)self reloadSpecifier:v9];
}

- (id)numberingSystemSpecifier
{
  v2 = [PSSpecifier preferenceSpecifierNamed:@"NUMBERING_SYSTEM" target:self set:"setNumberingSystem:specifier:" get:"numberingSystem:" detail:objc_opt_class() cell:2 edit:0];
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"NUMBERING_SYSTEM" value:&stru_28F98 table:@"CompanionCustom"];
  [v2 setName:v4];

  [v2 setIdentifier:@"NUMBERING_SYSTEM"];
  [v2 setProperty:@"numberingSystemsTitles" forKey:PSTitlesDataSourceKey];
  [v2 setProperty:@"numberingSystemsValues" forKey:PSValuesDataSourceKey];

  return v2;
}

- (id)validateLocale:(id)a3
{
  v4 = a3;
  v5 = [NSLocale componentsFromLocaleIdentifier:v4];
  v6 = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

  if ([(NSArray *)self->_availableLocaleIdentifiers containsObject:v6])
  {
    v7 = v4;
  }

  else
  {
    v8 = [(COSLanguageSelector *)self->_languageSelector appleLanguages];
    if (![v8 count])
    {
      sub_1A794();
    }

    v20 = v6;
    v21 = v4;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v23;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v23 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v22 + 1) + 8 * i);
          v15 = [NSLocale componentsFromLocaleIdentifier:v14, v20];
          v16 = [v15 objectForKeyedSubscript:NSLocaleLanguageCode];

          if ([(NSArray *)self->_availableLocaleIdentifiers containsObject:v16])
          {
            v4 = v21;
            v7 = [NSLocale canonicalLocaleIdentifier:v21 withNewLanguageIdentifier:v14];

            goto LABEL_14;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(COSLocaleSelector *)self->_localeSelector currentLocale];
    v18 = [v17 localeIdentifier];
    v7 = [NSLocale canonicalLocaleIdentifierFromString:v18];

    v4 = v21;
LABEL_14:
    v6 = v20;
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COSInternationalController *)self indexForIndexPath:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  v10 = [v9 identifier];
  if ([v10 isEqualToString:@"MIRROR_MY_COMPANION_ID"])
  {
  }

  else
  {
    v11 = [v9 identifier];
    v12 = [v11 isEqualToString:@"CUSTOM_ID"];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  v13 = [v9 identifier];
  v14 = [v13 isEqualToString:@"MIRROR_MY_COMPANION_ID"];

  v15 = [(COSInternationalController *)self mirrorController];
  [v15 setMirrorSettings:v14];

  if (v14)
  {
    v16 = [(COSInternationalController *)self languageSelector];
    v17 = +[NSLocale preferredLanguages];
    [v16 setLanguages:v17];

    v18 = [(COSInternationalController *)self localeSelector];
    v19 = +[NSLocale preferredLocale];
    v20 = [v19 localeIdentifier];
    [v18 setLocale:v20];

    v21 = [(COSInternationalController *)self inflectionSelector];
    v22 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
    [v21 setInflection:v22];

    v23 = [(COSInternationalController *)self inflectionSelector];
    [v23 setCanShareInflectionWithApps:{+[_NSAttributedStringGrammarInflection _thirdPartyApplicationsCanAccessUserInflection](_NSAttributedStringGrammarInflection, "_thirdPartyApplicationsCanAccessUserInflection")}];

    v24 = [(COSInternationalController *)self navigationItem];
    [v24 setRightBarButtonItem:0];
LABEL_9:

    goto LABEL_10;
  }

  v25 = [objc_opt_class() preferredLanguages];
  v26 = [v25 count];

  if (v26 >= 2)
  {
    v24 = [(COSInternationalController *)self editButtonItem];
    v27 = [(COSInternationalController *)self navigationItem];
    [v27 setRightBarButtonItem:v24];

    goto LABEL_9;
  }

LABEL_10:
  [(COSInternationalController *)self reloadSpecifiers];
LABEL_11:
  if (self->_hasFetchedLocalesInfo && !self->_errorHasOccurred)
  {
    [(COSInternationalController *)self stopSpinner];
    v28.receiver = self;
    v28.super_class = COSInternationalController;
    [(COSInternationalController *)&v28 tableView:v6 didSelectRowAtIndexPath:v7];
  }

  else
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    [(COSInternationalController *)self startSpinnerInCellForSpecifier:v9];
    if (self->_errorHasOccurred)
    {
      [(COSInternationalController *)self queryGizmoForLocalesInfo];
    }
  }

LABEL_17:
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] || [(COSInternationalController *)self shouldReloadSpecifiers])
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [(COSInternationalController *)self loadSpecifiersFromPlistName:@"Companion" target:self bundle:v4];

    v6 = [v5 specifierForID:BPSMirrorGroupID];
    v7 = [(COSInternationalController *)self mirrorController];
    v8 = [v7 shouldShowMirroringAsEnabled];

    if (v8)
    {
      v9 = [v5 specifierForID:BPSMirrorSwitchID];
      [v6 setProperty:v9 forKey:PSRadioGroupCheckedSpecifierKey];
      v10 = [(COSInternationalController *)self localizedMirroringDetailFooter];
      [v6 setProperty:v10 forKey:PSFooterTextGroupKey];

      v11 = [(COSInternationalController *)self navigationItem];
      [v11 setRightBarButtonItem:0];
    }

    else
    {
      if (COSActivePairingIsTinker())
      {
        [v5 removeAllObjects];
      }

      else
      {
        v12 = [v5 specifierForID:BPSMirrorSwitchCustomID];
        [v6 setProperty:v12 forKey:PSRadioGroupCheckedSpecifierKey];
      }

      v9 = [(COSInternationalController *)self specifiersInCustomSection];
      [v5 addObjectsFromArray:v9];
      v13 = [objc_opt_class() preferredLanguages];
      v14 = [v13 count];

      if (v14 < 2)
      {
        v15 = [(COSInternationalController *)self navigationItem];
        [v15 setRightBarButtonItem:0];
      }

      else
      {
        v15 = [(COSInternationalController *)self editButtonItem];
        v16 = [(COSInternationalController *)self navigationItem];
        [v16 setRightBarButtonItem:v15];
      }

      [(ISInternationalViewController *)self addLanguagesToSpecifiers:v5];
      if (self->_hasFetchedLocalesInfo)
      {
        [(COSInternationalController *)self addNumberingSystemSpecifier:v5];
      }
    }

    v17 = *&self->super.PSListController_opaque[v3];
    *&self->super.PSListController_opaque[v3] = v5;
  }

  v18 = *&self->super.PSListController_opaque[v3];

  return v18;
}

- (id)specifiersInCustomSection
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [(COSInternationalController *)self loadSpecifiersFromPlistName:@"CompanionCustom" target:self bundle:v3];

  v5 = [(COSInternationalController *)self languageSelector];
  v6 = [v5 appleLanguages];
  if (![_NSAttributedStringGrammarInflection _canSelectUserInflectionWithPreferredLanguages:v6])
  {

    goto LABEL_5;
  }

  v7 = COSActivePairingIsTinker();

  if (v7)
  {
LABEL_5:
    [v4 removeObjectAtIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"INFLECTION_GROUP"}];
    [v4 removeObjectAtIndex:{objc_msgSend(v4, "indexOfSpecifierWithID:", @"INFLECTION_CELL"}];
  }

  return v4;
}

- (void)startSpinnerInCellForSpecifier:(id)a3
{
  v4 = a3;
  [(COSInternationalController *)self stopSpinner];
  v8 = [v4 propertyForKey:PSTableCellKey];
  if (v8)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [v8 setForceHideDisclosureIndicator:1];
    [v8 setAccessoryView:v5];
    v6 = [v8 detailTextLabel];
    [v6 setHidden:1];

    [(COSInternationalController *)self reloadSpecifier:v4];
  }

  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  self->_remoteLoadingSpecifier = v4;
}

- (void)stopSpinner
{
  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  if (remoteLoadingSpecifier)
  {
    v6 = [(PSSpecifier *)remoteLoadingSpecifier propertyForKey:PSTableCellKey];
    [v6 setAccessoryView:0];
    [v6 setForceHideDisclosureIndicator:0];
    v4 = [v6 detailTextLabel];
    [v4 setHidden:0];

    v5 = self->_remoteLoadingSpecifier;
    self->_remoteLoadingSpecifier = 0;
  }
}

- (id)localizedDeviceDisplayLanguageNameFromPreferredLanguages:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() deviceLanguageFrom:v4];

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1A7C0();
  }

  v6 = [(COSInternationalController *)self localeSelector];
  v7 = [v6 currentLocale];
  v8 = [v7 regionCode];

  v9 = [NSLocale localeWithLocaleIdentifier:v5];
  v10 = [v9 regionCode];

  if ([v8 isEqualToString:v10])
  {
    v11 = [NSLocale baseLanguageFromLanguage:v5];

    v5 = v11;
  }

  v12 = [IPLanguage languageWithIdentifier:v5];
  v13 = [v12 localizedStringForName];

  return v13;
}

- (void)setLanguage:(id)a3
{
  v14 = a3;
  v4 = [NSLocale localeWithLocaleIdentifier:v14];
  v5 = [v4 regionCode];

  v6 = v14;
  if (!v5)
  {
    v7 = [(COSInternationalController *)self localeSelector];
    v8 = [v7 currentLocale];
    v9 = [v8 regionCode];
    v6 = [NSLocale languageFromLanguage:v14 byReplacingRegion:v9];
  }

  v10 = [(COSInternationalController *)self languageSelector];
  v11 = [v10 appleLanguages];

  v12 = [NSLocale languageArrayAfterSettingLanguage:v6 fallback:0 toLanguageArray:v11];
  if ([v12 count] && (objc_msgSend(v11, "isEqualToArray:", v12) & 1) == 0)
  {
    [(COSInternationalController *)self setPreferredLanguages:v12];
  }

  v13 = [(COSInternationalController *)self localeSelector];
  [v13 setLocaleFromLanguageIdentifier:v14];
}

- (void)setPreferredLanguages:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableOrderedSet orderedSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [IntlUtility normalizedLanguageIDFromString:*(*(&v16 + 1) + 8 * v10), v16];
        if ([v11 length])
        {
          [v5 addObject:v11];
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    v12 = [(COSInternationalController *)self languageSelector];
    v13 = [v5 array];
    [v12 setLanguages:v13];

    [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  }

  v14 = [(COSInternationalController *)self localeSelector];
  v15 = [v5 firstObject];
  [v14 setLocaleFromLanguageIdentifier:v15];
}

- (void)setLocaleOnly:(id)a3
{
  v4 = a3;
  v5 = [(COSInternationalController *)self localeSelector];
  [v5 setLocaleOnly:v4];
}

- (id)currentInflectionDisplayString
{
  v2 = [(COSInternationalController *)self inflectionSelector];
  v3 = [v2 currentInflection];
  v4 = [v3 localizedShortDescription];

  return v4;
}

- (id)selectSpecifier:(id)a3
{
  v12.receiver = self;
  v12.super_class = COSInternationalController;
  v4 = a3;
  v5 = [(COSInternationalController *)&v12 selectSpecifier:v4];
  v6 = [v4 detailControllerClass];

  if (v6 == objc_opt_class())
  {
    v7 = v5;
    v8 = [(COSInternationalController *)self inflectionSelector];
    v9 = [v8 currentInflection];
    [v7 setInflection:v9];

    v10 = [(COSInternationalController *)self inflectionSelector];
    [v7 setCanShareInflection:{objc_msgSend(v10, "canShareInflectionWithApps")}];

    [v7 setDelegate:self];
  }

  return v5;
}

- (void)inflectionSettingsViewController:(id)a3 inflectionDidChange:(id)a4
{
  v5 = a4;
  v6 = [(COSInternationalController *)self inflectionSelector];
  [v6 setInflection:v5];

  [(COSInternationalController *)self reloadSpecifiers];
}

- (id)localizedRegionNameForLocale:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 regionCode];
  }

  else
  {
    v5 = 0;
  }

  if (![(__CFString *)v5 length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1A848();
    }

    v5 = @"US";
  }

  v6 = +[NSLocale currentLocale];
  v7 = [v6 localizedStringForRegion:v5 context:3 short:0];

  return v7;
}

- (id)regionForCurrentLocale:(id)a3
{
  v4 = [(COSInternationalController *)self localeSelector];
  v5 = [v4 currentLocale];

  v6 = [(COSInternationalController *)self localizedRegionNameForLocale:v5];

  return v6;
}

- (void)setCalendar:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v6 = [(COSInternationalController *)self localeSelector];
  [v6 setLocaleFromCalendarID:v5];
}

- (id)effectiveCalendarFromLocale:(id)a3
{
  v4 = a3;
  v5 = [v4 localeIdentifier];
  v6 = [NSLocale componentsFromLocaleIdentifier:v5];

  v7 = [v6 objectForKey:@"calendar"];
  if (!v7)
  {
    v8 = [v4 localeIdentifier];
    v7 = [(COSInternationalController *)self defaultCalendarForLocaleID:v8];
  }

  if (![(NSArray *)self->_supportedCalendars containsObject:v7])
  {
    v9 = NSCalendarIdentifierGregorian;

    v7 = v9;
  }

  return v7;
}

- (id)calendar:(id)a3
{
  v4 = [(COSInternationalController *)self localeSelector];
  v5 = [v4 currentLocale];
  v6 = [(COSInternationalController *)self effectiveCalendarFromLocale:v5];

  return v6;
}

- (id)defaultCalendarForLocaleID:(id)a3
{
  v4 = a3;
  v5 = [NSLocale localeWithLocaleIdentifier:v4];
  v6 = [v5 regionCode];

  if (!v6 || (defaultCalendars = self->_defaultCalendars, [@"*_" stringByAppendingString:v6], v8 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](defaultCalendars, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [NSLocale componentsFromLocaleIdentifier:v4];
    v11 = objc_opt_new();
    v12 = [v10 objectForKeyedSubscript:NSLocaleLanguageCode];
    [v11 setObject:v12 forKeyedSubscript:NSLocaleLanguageCode];

    if (v6)
    {
      [v11 setObject:v6 forKeyedSubscript:NSLocaleCountryCode];
    }

    v13 = [v10 objectForKeyedSubscript:NSLocaleScriptCode];

    if (v13)
    {
      v14 = [v10 objectForKeyedSubscript:NSLocaleScriptCode];
      [v11 setObject:v14 forKeyedSubscript:NSLocaleScriptCode];
    }

    v15 = [v10 objectForKeyedSubscript:NSLocaleVariantCode];

    if (v15)
    {
      v16 = [v10 objectForKeyedSubscript:NSLocaleVariantCode];
      [v11 setObject:v16 forKeyedSubscript:NSLocaleVariantCode];
    }

    v17 = [NSLocale canonicalLocaleIdentifierFromComponents:v11];
    v9 = [(NSDictionary *)self->_defaultCalendars objectForKeyedSubscript:v17];

    if (!v9)
    {
      v9 = NSCalendarIdentifierGregorian;
    }
  }

  return v9;
}

- (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)a3
{
  v4 = a3;
  v5 = [NSLocale canonicalLocaleIdentifierFromComponents:v4];
  v6 = [(COSInternationalController *)self defaultCalendarForLocaleID:v5];
  v7 = [v4 objectForKey:@"calendar"];

  if (v7)
  {
    v8 = [v4 objectForKey:@"calendar"];
    v9 = [v8 isEqualToString:v6];

    if (!v9)
    {
      goto LABEL_7;
    }

    [v4 removeObjectForKey:@"calendar"];
  }

  else
  {
    if ([(NSArray *)self->_supportedCalendars containsObject:v6])
    {
      goto LABEL_7;
    }

    [v4 setObject:NSCalendarIdentifierGregorian forKey:@"calendar"];
  }

  v10 = [NSLocale canonicalLocaleIdentifierFromComponents:v4];

  v5 = v10;
LABEL_7:

  return v5;
}

- (id)numberingSystemsValues
{
  v3 = [(COSInternationalController *)self localeSelector];
  v4 = [v3 currentLocale];
  v5 = [v4 localeIdentifier];

  if ([v5 isEqualToString:@"root"])
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      v7 = [(COSInternationalController *)self numberingSystems];
      v6 = [v7 objectForKeyedSubscript:v5];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v8 = [IntlUtility parentLocaleIdentifierForIdentifier:v5];

      v5 = v8;
      if ([v8 isEqualToString:@"root"])
      {
        v6 = 0;
        v5 = v8;
        break;
      }
    }
  }

  return v6;
}

- (id)localizedMirroringDetailFooter
{
  v3 = +[NSLocale preferredLanguages];
  v4 = [v3 count];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = v5;
  if (v4 <= 1)
  {
    v7 = @"FOOTER_LINE_FORMAT_WITH_BULLET";
  }

  else
  {
    v7 = @"FOOTER_LINE_FORMAT";
  }

  v8 = [v5 localizedStringForKey:v7 value:&stru_28F98 table:@"Companion"];

  v61 = self;
  v9 = [(COSInternationalController *)self localizedDeviceDisplayLanguageNameFromPreferredLanguages:v3];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"LANGUAGE" value:&stru_28F98 table:@"InternationalSettings"];
  v12 = v11;
  if (v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = &stru_28F98;
  }

  v60 = v9;
  v14 = [NSMutableString stringWithFormat:v8, v11, v13];

  v62 = v3;
  v63 = v8;
  v65 = v14;
  if ([v3 count] >= 2)
  {
    [v14 appendString:@"\n"];
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"PREFERRED_LANGUAGES" value:&stru_28F98 table:@"InternationalSettings"];
    [v14 appendFormat:v8, v16, &stru_28F98];

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    obj = v3;
    v17 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v67;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v67 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v66 + 1) + 8 * i);
          v22 = +[NSLocale preferredLocale];
          v23 = [v22 regionCode];

          v24 = [NSLocale localeWithLocaleIdentifier:v21];
          v25 = [v24 regionCode];

          if (v25)
          {
            v26 = [v24 regionCode];
          }

          else
          {
            v26 = v23;
          }

          v27 = v26;
          v28 = v21;
          if ([v27 isEqualToString:v23])
          {
            v29 = [NSLocale baseLanguageFromLanguage:v28];

            v28 = v29;
          }

          v30 = [IPLanguage languageWithIdentifier:v28];
          v31 = [v30 localizedStringForName];
          [v65 appendFormat:@"• %@\n", v31];
        }

        v18 = [obj countByEnumeratingWithState:&v66 objects:v70 count:16];
      }

      while (v18);
    }

    v14 = v65;
    [v65 appendString:@"\n"];
    v8 = v63;
  }

  v32 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
  v33 = v32;
  if (v32)
  {
    v34 = [v32 localizedShortDescription];
    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"INFLECTION" value:&stru_28F98 table:@"InternationalSettings"];
    [v14 appendFormat:v8, v36, v34];
  }

  v37 = +[NSLocale preferredLocale];
  v38 = v61;
  v39 = [(COSInternationalController *)v61 localizedRegionNameForLocale:v37];
  v40 = [NSBundle bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"LOCALE" value:&stru_28F98 table:@"InternationalSettings"];
  [v14 appendFormat:v8, v41, v39];

  v42 = [v37 localeIdentifier];
  v43 = [IntlUtility numberingSystemsForLocaleID:v42];

  if ([v43 count] >= 2)
  {
    v44 = [v37 localeIdentifier];
    v45 = [NSLocale componentsFromLocaleIdentifier:v44];

    v46 = [v45 objectForKey:@"numbers"];
    if (!v46)
    {
      v47 = [v37 localeIdentifier];
      v46 = [IntlUtility defaultNumberingSystemForLocaleID:v47];
    }

    v48 = [v37 localeIdentifier];
    v49 = [IntlUtility shortDisplayNameForNumberingSystemWithIdentifier:v46 localeIdentifier:v48];

    v50 = [NSBundle bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"NUMBERING_SYSTEM" value:&stru_28F98 table:@"InternationalSettings"];
    [v65 appendFormat:v63, v51, v49];

    v38 = v61;
  }

  if (qword_30308[0] != -1)
  {
    sub_1A8D0();
  }

  v52 = [NSBundle bundleForClass:objc_opt_class()];
  v53 = qword_30300;
  v54 = [(COSInternationalController *)v38 effectiveCalendarFromLocale:v37];
  v55 = [v53 objectForKeyedSubscript:v54];
  v56 = [v52 localizedStringForKey:v55 value:&stru_28F98 table:@"InternationalCalendar"];

  v57 = [NSBundle bundleForClass:objc_opt_class()];
  v58 = [v57 localizedStringForKey:@"CALENDAR" value:&stru_28F98 table:@"InternationalSettings"];
  [v65 appendFormat:v63, v58, v56];

  return v65;
}

+ (id)preferredLanguages
{
  v2 = [[COSLanguageSelector alloc] initWithInternationalController:0];
  v3 = [(COSLanguageSelector *)v2 appleLanguages];

  return v3;
}

+ (id)currentLocale
{
  v2 = [[COSLocaleSelector alloc] initWithInternationalController:0];
  v3 = [(COSLocaleSelector *)v2 currentLocale];

  return v3;
}

+ (id)deviceLanguageIdentifier
{
  v3 = [a1 preferredLanguages];
  v4 = [a1 deviceLanguageFrom:v3];

  return v4;
}

- (void)changeLanguage:(id)a3
{
  v4 = [(COSInternationalController *)self languageSelector];
  v5 = [(ISInternationalViewController *)self updatedAppleLanguages];
  [v4 setLanguages:v5];

  v6 = [(COSInternationalController *)self localeSelector];
  v7 = [(ISInternationalViewController *)self updatedAppleLanguages];
  v8 = [v7 firstObject];
  [v6 setLocaleFromLanguageIdentifier:v8];

  [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  [(ISInternationalViewController *)self setEditing:0 animated:1];

  [(COSInternationalController *)self reloadSpecifiers];
}

@end