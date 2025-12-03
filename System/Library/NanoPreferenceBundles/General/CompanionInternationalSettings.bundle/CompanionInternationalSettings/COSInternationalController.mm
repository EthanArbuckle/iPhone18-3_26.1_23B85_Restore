@interface COSInternationalController
+ (id)currentLocale;
+ (id)deviceLanguageIdentifier;
+ (id)preferredLanguages;
- (COSInternationalController)init;
- (id)calendar:(id)calendar;
- (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)components;
- (id)currentInflectionDisplayString;
- (id)defaultCalendarForLocaleID:(id)d;
- (id)effectiveCalendarFromLocale:(id)locale;
- (id)localizedDeviceDisplayLanguageNameFromPreferredLanguages:(id)languages;
- (id)localizedMirroringDetailFooter;
- (id)localizedRegionNameForLocale:(id)locale;
- (id)numberingSystemSpecifier;
- (id)numberingSystemsValues;
- (id)regionForCurrentLocale:(id)locale;
- (id)selectSpecifier:(id)specifier;
- (id)specifiers;
- (id)specifiersInCustomSection;
- (id)validateLocale:(id)locale;
- (void)addNumberingSystemSpecifier:(id)specifier;
- (void)changeLanguage:(id)language;
- (void)handleLocalesInfo:(id)info error:(id)error;
- (void)inflectionSettingsViewController:(id)controller inflectionDidChange:(id)change;
- (void)queryGizmoForLocalesInfo;
- (void)reloadNumberingSystemSpecifier;
- (void)setCalendar:(id)calendar specifier:(id)specifier;
- (void)setLanguage:(id)language;
- (void)setLocaleOnly:(id)only;
- (void)setPreferredLanguages:(id)languages;
- (void)startSpinnerInCellForSpecifier:(id)specifier;
- (void)stopSpinner;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
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

- (void)handleLocalesInfo:(id)info error:(id)error
{
  infoCopy = info;
  errorCopy = error;
  self->_hasFetchedLocalesInfo = 1;
  if (!infoCopy || errorCopy)
  {
    self->_errorHasOccurred = 1;
    NSLog(@"Error has occured: %@", errorCopy);
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
    v7 = [infoCopy objectForKeyedSubscript:kNSSLocalesInfoSystemLanguagesKey];
    v8 = self->_systemLanguages;
    self->_systemLanguages = v7;

    v9 = [infoCopy objectForKeyedSubscript:kNSSLocalesInfoAvailableLocaleIdentifiers];
    v10 = self->_availableLocaleIdentifiers;
    self->_availableLocaleIdentifiers = v9;

    v11 = [infoCopy objectForKeyedSubscript:kNSSLocalesInfoDefaultNumberingSystems];
    v12 = self->_numberingSystems;
    self->_numberingSystems = v11;

    v13 = [infoCopy objectForKeyedSubscript:kNSSLocalesInfoSupportedCalendars];
    v14 = self->_supportedCalendars;
    self->_supportedCalendars = v13;

    v15 = [infoCopy objectForKeyedSubscript:kNSSLocalesInfoDefaultCalendars];
    v16 = self->_defaultCalendars;
    self->_defaultCalendars = v15;

    if (self->_remoteLoadingSpecifier)
    {
      v17 = [(COSInternationalController *)self indexPathForSpecifier:?];
      table = [(COSInternationalController *)self table];
      [(COSInternationalController *)self tableView:table didSelectRowAtIndexPath:v17];
    }

    [(COSInternationalController *)self reloadNumberingSystemSpecifier];
    v19 = [(COSInternationalController *)self specifierForID:@"CALENDAR"];
    [(COSInternationalController *)self reloadSpecifier:v19];

    mirrorController = [(COSInternationalController *)self mirrorController];
    shouldShowMirroringAsEnabled = [mirrorController shouldShowMirroringAsEnabled];

    if (shouldShowMirroringAsEnabled)
    {
      [(COSInternationalController *)self reloadSpecifiers];
    }
  }

  [(COSInternationalController *)self stopSpinner];
}

- (void)addNumberingSystemSpecifier:(id)specifier
{
  specifierCopy = specifier;
  numberingSystemsValues = [(COSInternationalController *)self numberingSystemsValues];
  v5 = [numberingSystemsValues count];

  if (v5 >= 2)
  {
    numberingSystemSpecifier = [(COSInternationalController *)self numberingSystemSpecifier];
    [specifierCopy insertObject:numberingSystemSpecifier atIndex:{objc_msgSend(specifierCopy, "indexOfSpecifierWithID:", @"LOCALE"}];
  }
}

- (void)reloadNumberingSystemSpecifier
{
  v3 = [(COSInternationalController *)self specifierForID:@"NUMBERING_SYSTEM"];
  numberingSystemsValues = [(COSInternationalController *)self numberingSystemsValues];
  v5 = [numberingSystemsValues count];

  if (v5 < 2)
  {
    if (v3)
    {
      [(COSInternationalController *)self removeSpecifierID:@"NUMBERING_SYSTEM"];
    }
  }

  else
  {
    mirrorController = [(COSInternationalController *)self mirrorController];
    shouldShowMirroringAsEnabled = [mirrorController shouldShowMirroringAsEnabled];

    if ((shouldShowMirroringAsEnabled & 1) == 0 && !v3)
    {
      numberingSystemSpecifier = [(COSInternationalController *)self numberingSystemSpecifier];
      [(COSInternationalController *)self insertSpecifier:numberingSystemSpecifier afterSpecifierID:@"LOCALE" animated:1];
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

- (id)validateLocale:(id)locale
{
  localeCopy = locale;
  v5 = [NSLocale componentsFromLocaleIdentifier:localeCopy];
  v6 = [v5 objectForKeyedSubscript:NSLocaleLanguageCode];

  if ([(NSArray *)self->_availableLocaleIdentifiers containsObject:v6])
  {
    v7 = localeCopy;
  }

  else
  {
    appleLanguages = [(COSLanguageSelector *)self->_languageSelector appleLanguages];
    if (![appleLanguages count])
    {
      sub_1A794();
    }

    v20 = v6;
    v21 = localeCopy;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v9 = appleLanguages;
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
            localeCopy = v21;
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

    currentLocale = [(COSLocaleSelector *)self->_localeSelector currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];
    v7 = [NSLocale canonicalLocaleIdentifierFromString:localeIdentifier];

    localeCopy = v21;
LABEL_14:
    v6 = v20;
  }

  return v7;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(COSInternationalController *)self indexForIndexPath:pathCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  v9 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v8];
  identifier = [v9 identifier];
  if ([identifier isEqualToString:@"MIRROR_MY_COMPANION_ID"])
  {
  }

  else
  {
    identifier2 = [v9 identifier];
    v12 = [identifier2 isEqualToString:@"CUSTOM_ID"];

    if (!v12)
    {
      goto LABEL_11;
    }
  }

  identifier3 = [v9 identifier];
  v14 = [identifier3 isEqualToString:@"MIRROR_MY_COMPANION_ID"];

  mirrorController = [(COSInternationalController *)self mirrorController];
  [mirrorController setMirrorSettings:v14];

  if (v14)
  {
    languageSelector = [(COSInternationalController *)self languageSelector];
    v17 = +[NSLocale preferredLanguages];
    [languageSelector setLanguages:v17];

    localeSelector = [(COSInternationalController *)self localeSelector];
    v19 = +[NSLocale preferredLocale];
    localeIdentifier = [v19 localeIdentifier];
    [localeSelector setLocale:localeIdentifier];

    inflectionSelector = [(COSInternationalController *)self inflectionSelector];
    v22 = +[_NSAttributedStringGrammarInflection _currentGlobalUserInflection];
    [inflectionSelector setInflection:v22];

    inflectionSelector2 = [(COSInternationalController *)self inflectionSelector];
    [inflectionSelector2 setCanShareInflectionWithApps:{+[_NSAttributedStringGrammarInflection _thirdPartyApplicationsCanAccessUserInflection](_NSAttributedStringGrammarInflection, "_thirdPartyApplicationsCanAccessUserInflection")}];

    navigationItem = [(COSInternationalController *)self navigationItem];
    [navigationItem setRightBarButtonItem:0];
LABEL_9:

    goto LABEL_10;
  }

  preferredLanguages = [objc_opt_class() preferredLanguages];
  v26 = [preferredLanguages count];

  if (v26 >= 2)
  {
    navigationItem = [(COSInternationalController *)self editButtonItem];
    navigationItem2 = [(COSInternationalController *)self navigationItem];
    [navigationItem2 setRightBarButtonItem:navigationItem];

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
    [(COSInternationalController *)&v28 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  }

  else
  {
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
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
    mirrorController = [(COSInternationalController *)self mirrorController];
    shouldShowMirroringAsEnabled = [mirrorController shouldShowMirroringAsEnabled];

    if (shouldShowMirroringAsEnabled)
    {
      specifiersInCustomSection = [v5 specifierForID:BPSMirrorSwitchID];
      [v6 setProperty:specifiersInCustomSection forKey:PSRadioGroupCheckedSpecifierKey];
      localizedMirroringDetailFooter = [(COSInternationalController *)self localizedMirroringDetailFooter];
      [v6 setProperty:localizedMirroringDetailFooter forKey:PSFooterTextGroupKey];

      navigationItem = [(COSInternationalController *)self navigationItem];
      [navigationItem setRightBarButtonItem:0];
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

      specifiersInCustomSection = [(COSInternationalController *)self specifiersInCustomSection];
      [v5 addObjectsFromArray:specifiersInCustomSection];
      preferredLanguages = [objc_opt_class() preferredLanguages];
      v14 = [preferredLanguages count];

      if (v14 < 2)
      {
        navigationItem2 = [(COSInternationalController *)self navigationItem];
        [navigationItem2 setRightBarButtonItem:0];
      }

      else
      {
        navigationItem2 = [(COSInternationalController *)self editButtonItem];
        navigationItem3 = [(COSInternationalController *)self navigationItem];
        [navigationItem3 setRightBarButtonItem:navigationItem2];
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

  languageSelector = [(COSInternationalController *)self languageSelector];
  appleLanguages = [languageSelector appleLanguages];
  if (![_NSAttributedStringGrammarInflection _canSelectUserInflectionWithPreferredLanguages:appleLanguages])
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

- (void)startSpinnerInCellForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(COSInternationalController *)self stopSpinner];
  v8 = [specifierCopy propertyForKey:PSTableCellKey];
  if (v8)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [v8 setForceHideDisclosureIndicator:1];
    [v8 setAccessoryView:v5];
    detailTextLabel = [v8 detailTextLabel];
    [detailTextLabel setHidden:1];

    [(COSInternationalController *)self reloadSpecifier:specifierCopy];
  }

  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  self->_remoteLoadingSpecifier = specifierCopy;
}

- (void)stopSpinner
{
  remoteLoadingSpecifier = self->_remoteLoadingSpecifier;
  if (remoteLoadingSpecifier)
  {
    v6 = [(PSSpecifier *)remoteLoadingSpecifier propertyForKey:PSTableCellKey];
    [v6 setAccessoryView:0];
    [v6 setForceHideDisclosureIndicator:0];
    detailTextLabel = [v6 detailTextLabel];
    [detailTextLabel setHidden:0];

    v5 = self->_remoteLoadingSpecifier;
    self->_remoteLoadingSpecifier = 0;
  }
}

- (id)localizedDeviceDisplayLanguageNameFromPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = [objc_opt_class() deviceLanguageFrom:languagesCopy];

  if (!v5 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    sub_1A7C0();
  }

  localeSelector = [(COSInternationalController *)self localeSelector];
  currentLocale = [localeSelector currentLocale];
  regionCode = [currentLocale regionCode];

  v9 = [NSLocale localeWithLocaleIdentifier:v5];
  regionCode2 = [v9 regionCode];

  if ([regionCode isEqualToString:regionCode2])
  {
    v11 = [NSLocale baseLanguageFromLanguage:v5];

    v5 = v11;
  }

  v12 = [IPLanguage languageWithIdentifier:v5];
  localizedStringForName = [v12 localizedStringForName];

  return localizedStringForName;
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  v4 = [NSLocale localeWithLocaleIdentifier:languageCopy];
  regionCode = [v4 regionCode];

  v6 = languageCopy;
  if (!regionCode)
  {
    localeSelector = [(COSInternationalController *)self localeSelector];
    currentLocale = [localeSelector currentLocale];
    regionCode2 = [currentLocale regionCode];
    v6 = [NSLocale languageFromLanguage:languageCopy byReplacingRegion:regionCode2];
  }

  languageSelector = [(COSInternationalController *)self languageSelector];
  appleLanguages = [languageSelector appleLanguages];

  v12 = [NSLocale languageArrayAfterSettingLanguage:v6 fallback:0 toLanguageArray:appleLanguages];
  if ([v12 count] && (objc_msgSend(appleLanguages, "isEqualToArray:", v12) & 1) == 0)
  {
    [(COSInternationalController *)self setPreferredLanguages:v12];
  }

  localeSelector2 = [(COSInternationalController *)self localeSelector];
  [localeSelector2 setLocaleFromLanguageIdentifier:languageCopy];
}

- (void)setPreferredLanguages:(id)languages
{
  languagesCopy = languages;
  v5 = +[NSMutableOrderedSet orderedSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = languagesCopy;
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
    languageSelector = [(COSInternationalController *)self languageSelector];
    array = [v5 array];
    [languageSelector setLanguages:array];

    [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  }

  localeSelector = [(COSInternationalController *)self localeSelector];
  firstObject = [v5 firstObject];
  [localeSelector setLocaleFromLanguageIdentifier:firstObject];
}

- (void)setLocaleOnly:(id)only
{
  onlyCopy = only;
  localeSelector = [(COSInternationalController *)self localeSelector];
  [localeSelector setLocaleOnly:onlyCopy];
}

- (id)currentInflectionDisplayString
{
  inflectionSelector = [(COSInternationalController *)self inflectionSelector];
  currentInflection = [inflectionSelector currentInflection];
  localizedShortDescription = [currentInflection localizedShortDescription];

  return localizedShortDescription;
}

- (id)selectSpecifier:(id)specifier
{
  v12.receiver = self;
  v12.super_class = COSInternationalController;
  specifierCopy = specifier;
  v5 = [(COSInternationalController *)&v12 selectSpecifier:specifierCopy];
  detailControllerClass = [specifierCopy detailControllerClass];

  if (detailControllerClass == objc_opt_class())
  {
    v7 = v5;
    inflectionSelector = [(COSInternationalController *)self inflectionSelector];
    currentInflection = [inflectionSelector currentInflection];
    [v7 setInflection:currentInflection];

    inflectionSelector2 = [(COSInternationalController *)self inflectionSelector];
    [v7 setCanShareInflection:{objc_msgSend(inflectionSelector2, "canShareInflectionWithApps")}];

    [v7 setDelegate:self];
  }

  return v5;
}

- (void)inflectionSettingsViewController:(id)controller inflectionDidChange:(id)change
{
  changeCopy = change;
  inflectionSelector = [(COSInternationalController *)self inflectionSelector];
  [inflectionSelector setInflection:changeCopy];

  [(COSInternationalController *)self reloadSpecifiers];
}

- (id)localizedRegionNameForLocale:(id)locale
{
  localeCopy = locale;
  v4 = localeCopy;
  if (localeCopy)
  {
    regionCode = [localeCopy regionCode];
  }

  else
  {
    regionCode = 0;
  }

  if (![(__CFString *)regionCode length])
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
    {
      sub_1A848();
    }

    regionCode = @"US";
  }

  v6 = +[NSLocale currentLocale];
  v7 = [v6 localizedStringForRegion:regionCode context:3 short:0];

  return v7;
}

- (id)regionForCurrentLocale:(id)locale
{
  localeSelector = [(COSInternationalController *)self localeSelector];
  currentLocale = [localeSelector currentLocale];

  v6 = [(COSInternationalController *)self localizedRegionNameForLocale:currentLocale];

  return v6;
}

- (void)setCalendar:(id)calendar specifier:(id)specifier
{
  calendarCopy = calendar;
  localeSelector = [(COSInternationalController *)self localeSelector];
  [localeSelector setLocaleFromCalendarID:calendarCopy];
}

- (id)effectiveCalendarFromLocale:(id)locale
{
  localeCopy = locale;
  localeIdentifier = [localeCopy localeIdentifier];
  v6 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier];

  v7 = [v6 objectForKey:@"calendar"];
  if (!v7)
  {
    localeIdentifier2 = [localeCopy localeIdentifier];
    v7 = [(COSInternationalController *)self defaultCalendarForLocaleID:localeIdentifier2];
  }

  if (![(NSArray *)self->_supportedCalendars containsObject:v7])
  {
    v9 = NSCalendarIdentifierGregorian;

    v7 = v9;
  }

  return v7;
}

- (id)calendar:(id)calendar
{
  localeSelector = [(COSInternationalController *)self localeSelector];
  currentLocale = [localeSelector currentLocale];
  v6 = [(COSInternationalController *)self effectiveCalendarFromLocale:currentLocale];

  return v6;
}

- (id)defaultCalendarForLocaleID:(id)d
{
  dCopy = d;
  v5 = [NSLocale localeWithLocaleIdentifier:dCopy];
  regionCode = [v5 regionCode];

  if (!regionCode || (defaultCalendars = self->_defaultCalendars, [@"*_" stringByAppendingString:regionCode], v8 = objc_claimAutoreleasedReturnValue(), -[NSDictionary objectForKeyedSubscript:](defaultCalendars, "objectForKeyedSubscript:", v8), v9 = objc_claimAutoreleasedReturnValue(), v8, !v9))
  {
    v10 = [NSLocale componentsFromLocaleIdentifier:dCopy];
    v11 = objc_opt_new();
    v12 = [v10 objectForKeyedSubscript:NSLocaleLanguageCode];
    [v11 setObject:v12 forKeyedSubscript:NSLocaleLanguageCode];

    if (regionCode)
    {
      [v11 setObject:regionCode forKeyedSubscript:NSLocaleCountryCode];
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

- (id)canonicalLocaleIdentifierWithValidCalendarForComponents:(id)components
{
  componentsCopy = components;
  v5 = [NSLocale canonicalLocaleIdentifierFromComponents:componentsCopy];
  v6 = [(COSInternationalController *)self defaultCalendarForLocaleID:v5];
  v7 = [componentsCopy objectForKey:@"calendar"];

  if (v7)
  {
    v8 = [componentsCopy objectForKey:@"calendar"];
    v9 = [v8 isEqualToString:v6];

    if (!v9)
    {
      goto LABEL_7;
    }

    [componentsCopy removeObjectForKey:@"calendar"];
  }

  else
  {
    if ([(NSArray *)self->_supportedCalendars containsObject:v6])
    {
      goto LABEL_7;
    }

    [componentsCopy setObject:NSCalendarIdentifierGregorian forKey:@"calendar"];
  }

  v10 = [NSLocale canonicalLocaleIdentifierFromComponents:componentsCopy];

  v5 = v10;
LABEL_7:

  return v5;
}

- (id)numberingSystemsValues
{
  localeSelector = [(COSInternationalController *)self localeSelector];
  currentLocale = [localeSelector currentLocale];
  localeIdentifier = [currentLocale localeIdentifier];

  if ([localeIdentifier isEqualToString:@"root"])
  {
    v6 = 0;
  }

  else
  {
    while (1)
    {
      numberingSystems = [(COSInternationalController *)self numberingSystems];
      v6 = [numberingSystems objectForKeyedSubscript:localeIdentifier];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v8 = [IntlUtility parentLocaleIdentifierForIdentifier:localeIdentifier];

      localeIdentifier = v8;
      if ([v8 isEqualToString:@"root"])
      {
        v6 = 0;
        localeIdentifier = v8;
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

  selfCopy = self;
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
          regionCode = [v22 regionCode];

          v24 = [NSLocale localeWithLocaleIdentifier:v21];
          regionCode2 = [v24 regionCode];

          if (regionCode2)
          {
            regionCode3 = [v24 regionCode];
          }

          else
          {
            regionCode3 = regionCode;
          }

          v27 = regionCode3;
          v28 = v21;
          if ([v27 isEqualToString:regionCode])
          {
            v29 = [NSLocale baseLanguageFromLanguage:v28];

            v28 = v29;
          }

          v30 = [IPLanguage languageWithIdentifier:v28];
          localizedStringForName = [v30 localizedStringForName];
          [v65 appendFormat:@"• %@\n", localizedStringForName];
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
    localizedShortDescription = [v32 localizedShortDescription];
    v35 = [NSBundle bundleForClass:objc_opt_class()];
    v36 = [v35 localizedStringForKey:@"INFLECTION" value:&stru_28F98 table:@"InternationalSettings"];
    [v14 appendFormat:v8, v36, localizedShortDescription];
  }

  v37 = +[NSLocale preferredLocale];
  v38 = selfCopy;
  v39 = [(COSInternationalController *)selfCopy localizedRegionNameForLocale:v37];
  v40 = [NSBundle bundleForClass:objc_opt_class()];
  v41 = [v40 localizedStringForKey:@"LOCALE" value:&stru_28F98 table:@"InternationalSettings"];
  [v14 appendFormat:v8, v41, v39];

  localeIdentifier = [v37 localeIdentifier];
  v43 = [IntlUtility numberingSystemsForLocaleID:localeIdentifier];

  if ([v43 count] >= 2)
  {
    localeIdentifier2 = [v37 localeIdentifier];
    v45 = [NSLocale componentsFromLocaleIdentifier:localeIdentifier2];

    v46 = [v45 objectForKey:@"numbers"];
    if (!v46)
    {
      localeIdentifier3 = [v37 localeIdentifier];
      v46 = [IntlUtility defaultNumberingSystemForLocaleID:localeIdentifier3];
    }

    localeIdentifier4 = [v37 localeIdentifier];
    v49 = [IntlUtility shortDisplayNameForNumberingSystemWithIdentifier:v46 localeIdentifier:localeIdentifier4];

    v50 = [NSBundle bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"NUMBERING_SYSTEM" value:&stru_28F98 table:@"InternationalSettings"];
    [v65 appendFormat:v63, v51, v49];

    v38 = selfCopy;
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
  appleLanguages = [(COSLanguageSelector *)v2 appleLanguages];

  return appleLanguages;
}

+ (id)currentLocale
{
  v2 = [[COSLocaleSelector alloc] initWithInternationalController:0];
  currentLocale = [(COSLocaleSelector *)v2 currentLocale];

  return currentLocale;
}

+ (id)deviceLanguageIdentifier
{
  preferredLanguages = [self preferredLanguages];
  v4 = [self deviceLanguageFrom:preferredLanguages];

  return v4;
}

- (void)changeLanguage:(id)language
{
  languageSelector = [(COSInternationalController *)self languageSelector];
  updatedAppleLanguages = [(ISInternationalViewController *)self updatedAppleLanguages];
  [languageSelector setLanguages:updatedAppleLanguages];

  localeSelector = [(COSInternationalController *)self localeSelector];
  updatedAppleLanguages2 = [(ISInternationalViewController *)self updatedAppleLanguages];
  firstObject = [updatedAppleLanguages2 firstObject];
  [localeSelector setLocaleFromLanguageIdentifier:firstObject];

  [(ISInternationalViewController *)self setUpdatedAppleLanguages:0];
  [(ISInternationalViewController *)self setEditing:0 animated:1];

  [(COSInternationalController *)self reloadSpecifiers];
}

@end