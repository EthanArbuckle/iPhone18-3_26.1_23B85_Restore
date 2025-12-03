@interface SafariPerSitePreferenceSettingsController
- (BOOL)_shouldShowOtherWebsitesSection;
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (id)_cancelBarButtonItem;
- (id)_clearAllSettingsSpecifier;
- (id)_defaultPreferenceValueForMultipleOptionSpecifier:(id)specifier;
- (id)_deleteBarButtonItem;
- (id)_displayInformation;
- (id)_editableSpecifiersForDomains:(id)domains;
- (id)_fallbackPreferenceValue;
- (id)_getDefaultPreferenceValueForSpecifier:(id)specifier;
- (id)_otherWebsitesSpecifier;
- (id)_preferenceSpecifierNamed:(id)named set:(SEL)set get:(SEL)get;
- (id)_preferenceValueForSpecifier:(id)specifier;
- (id)_preferenceValues;
- (id)_specifiersForDomains:(id)domains;
- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_cancelPreferenceChangePendingConfirmation:(id)confirmation;
- (void)_clearAllSettings:(id)settings;
- (void)_clearSelectedDomains:(id)domains;
- (void)_clearSettingsForDomains:(id)domains;
- (void)_commitPreferenceChangePendingConfirmation:(id)confirmation;
- (void)_didRetrieveValue:(id)value forSpecifier:(id)specifier;
- (void)_hideContentUnavailableView;
- (void)_loadDomains;
- (void)_setDefaultPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)_setPreferenceValue:(id)value forSpecifier:(id)specifier;
- (void)_setPreferenceValueWithoutPrompting:(id)prompting forSpecifier:(id)specifier;
- (void)_setUpConstantSpecifiers;
- (void)_setUpSpecifiersCachesIfNeeded;
- (void)_showContentUnavailableView;
- (void)_updateDeleteButtonEnabled;
- (void)reloadSpecifiers;
- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation SafariPerSitePreferenceSettingsController

- (id)loadSpecifiersFromPlistName:(id)name target:(id)target bundle:(id)bundle
{
  if ([(SafariPerSitePreferenceSettingsController *)self isEditing:name])
  {
    v6 = [(NSArray *)self->_editableSpecifiers mutableCopy];
    [v6 addObjectsFromArray:self->_cachedClearAllSettingsSectionSpecifiers];
  }

  else
  {
    v6 = +[NSMutableArray array];
    if ([(NSOrderedSet *)self->_configuredWebsites count])
    {
      [v6 safari_addObjectUnlessNil:self->_cachedWebsiteSectionHeaderSpecifier];
      [v6 addObjectsFromArray:self->_websiteSpecifiers];
    }

    [v6 safari_addObjectsFromArrayUnlessNil:self->_cachedOtherWebsitesSectionSpecifiers];
  }

  return v6;
}

- (void)reloadSpecifiers
{
  [(SafariPerSitePreferenceSettingsController *)self _setUpSpecifiersCachesIfNeeded];
  if ([(NSOrderedSet *)self->_configuredWebsites count])
  {
    v3 = [(SafariPerSitePreferenceSettingsController *)self _specifiersForDomains:self->_configuredWebsites];
    websiteSpecifiers = self->_websiteSpecifiers;
    self->_websiteSpecifiers = v3;

    v5 = [(SafariPerSitePreferenceSettingsController *)self _editableSpecifiersForDomains:self->_configuredWebsites];
    editableSpecifiers = self->_editableSpecifiers;
    self->_editableSpecifiers = v5;
  }

  v7.receiver = self;
  v7.super_class = SafariPerSitePreferenceSettingsController;
  [(SafariPerSitePreferenceSettingsController *)&v7 reloadSpecifiers];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = SafariPerSitePreferenceSettingsController;
  [(SafariPerSitePreferenceSettingsController *)&v5 viewDidLoad];
  editButtonItem = [(SafariPerSitePreferenceSettingsController *)self editButtonItem];
  navigationItem = [(SafariPerSitePreferenceSettingsController *)self navigationItem];
  [navigationItem setRightBarButtonItem:editButtonItem];

  [(SafariPerSitePreferenceSettingsController *)self _loadDomains];
}

- (void)_showContentUnavailableView
{
  if (!self->_contentUnavailableView)
  {
    view = [(SafariPerSitePreferenceSettingsController *)self view];
    v3 = [_UIContentUnavailableView alloc];
    [view bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = SafariSettingsLocalizedString(@"No Configured Websites", @"Safari");
    v13 = [v3 initWithFrame:v12 title:0 style:{v5, v7, v9, v11}];
    contentUnavailableView = self->_contentUnavailableView;
    self->_contentUnavailableView = v13;

    [(_UIContentUnavailableView *)self->_contentUnavailableView setAutoresizingMask:18];
    [view addSubview:self->_contentUnavailableView];
    table = [(SafariPerSitePreferenceSettingsController *)self table];
    [table setHidden:1];
  }
}

- (void)_hideContentUnavailableView
{
  [(_UIContentUnavailableView *)self->_contentUnavailableView removeFromSuperview];
  contentUnavailableView = self->_contentUnavailableView;
  self->_contentUnavailableView = 0;

  table = [(SafariPerSitePreferenceSettingsController *)self table];
  [table setHidden:0];
}

- (void)_loadDomains
{
  objc_initWeak(&location, self);
  v3 = +[NSMutableDictionary dictionary];
  specifierToPreferenceValueCache = self->_specifierToPreferenceValueCache;
  self->_specifierToPreferenceValueCache = v3;

  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  preference = [(SafariPerSitePreferenceSettingsController *)self preference];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__SafariPerSitePreferenceSettingsController__loadDomains__block_invoke;
  v7[3] = &unk_89EB8;
  objc_copyWeak(&v8, &location);
  [preferenceManager getAllDomainsConfiguredForPreference:preference usingBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __57__SafariPerSitePreferenceSettingsController__loadDomains__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[NSMutableOrderedSet alloc] initWithSet:v3];

  [v4 sortUsingComparator:&__block_literal_global_5];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __57__SafariPerSitePreferenceSettingsController__loadDomains__block_invoke_3;
  v6[3] = &unk_89BE8;
  objc_copyWeak(&v8, (a1 + 32));
  v7 = v4;
  v5 = v4;
  dispatch_async(&_dispatch_main_q, v6);

  objc_destroyWeak(&v8);
}

void __57__SafariPerSitePreferenceSettingsController__loadDomains__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [*(a1 + 32) count];
    objc_storeStrong(WeakRetained + 17, *(a1 + 32));
    v3 = [WeakRetained editButtonItem];
    [v3 setEnabled:v2 != 0];

    if (v2 || ([WeakRetained _shouldShowOtherWebsitesSection] & 1) != 0)
    {
      [WeakRetained _hideContentUnavailableView];
    }

    else
    {
      [WeakRetained _showContentUnavailableView];
    }

    [WeakRetained reloadSpecifiers];
  }
}

- (id)_specifiersForDomains:(id)domains
{
  domainsCopy = domains;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = domainsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(SafariPerSitePreferenceSettingsController *)self _preferenceSpecifierNamed:*(*(&v13 + 1) + 8 * i) set:"_setPreferenceValue:forSpecifier:" get:"_preferenceValueForSpecifier:", v13];
        [v5 addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)_editableSpecifiersForDomains:(id)domains
{
  domainsCopy = domains;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = domainsCopy;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [PSSpecifier preferenceSpecifierNamed:*(*(&v12 + 1) + 8 * i) target:0 set:0 get:0 detail:0 cell:3 edit:0];
        [v4 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  return v4;
}

- (id)_preferenceSpecifierNamed:(id)named set:(SEL)set get:(SEL)get
{
  namedCopy = named;
  _displayInformation = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
  displayOption = [_displayInformation displayOption];

  if (displayOption)
  {
    v24 = namedCopy;
    v11 = [PSSpecifier preferenceSpecifierNamed:namedCopy target:self set:set get:get detail:objc_opt_class() cell:2 edit:0];
    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    _preferenceValues = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
    v17 = [_preferenceValues countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(_preferenceValues);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          [v12 addObject:v21];
          v22 = [preferenceManager localizedStringForValue:v21 inPreference:preference];
          [v13 addObject:v22];
        }

        v18 = [_preferenceValues countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    [v11 setValues:v12 titles:v13];
    namedCopy = v24;
  }

  else
  {
    v11 = [PSSpecifier preferenceSpecifierNamed:namedCopy target:self set:set get:get detail:0 cell:6 edit:0];
  }

  return v11;
}

- (void)_setPreferenceValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  preference = [(SafariPerSitePreferenceSettingsController *)self preference];
  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v10 = [_SFPerSitePreferencesUtilities preferenceValueForPSSpecifierValue:valueCopy specifier:specifierCopy preference:preference preferenceManager:preferenceManager];

  if (v10)
  {
    v11 = [(SafariPerSitePreferenceSettingsController *)self _preferenceValueForSpecifier:specifierCopy];
    v12 = [(SafariPerSitePreferenceSettingsController *)self confirmationPromptStringsForSpecifierChangeIfNeeded:specifierCopy fromValue:v11 toValue:v10];

    if (v12)
    {
      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __78__SafariPerSitePreferenceSettingsController__setPreferenceValue_forSpecifier___block_invoke;
      v16[3] = &unk_89EE0;
      objc_copyWeak(&v19, &location);
      v17 = valueCopy;
      v18 = specifierCopy;
      v13 = objc_retainBlock(v16);
      preferenceChangePendingConfirmation = self->_preferenceChangePendingConfirmation;
      self->_preferenceChangePendingConfirmation = v13;

      v15 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
      [v15 setAccessibilityIdentifier:@"PerSitePreferenceChangeConfirmation"];
      [v15 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
      [v15 setupWithDictionary:v12];
      [v15 setConfirmationCancelAction:"_cancelPreferenceChangePendingConfirmation:"];
      [v15 setConfirmationAction:"_commitPreferenceChangePendingConfirmation:"];
      [(SafariPerSitePreferenceSettingsController *)self showConfirmationViewForSpecifier:v15 useAlert:1];

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }

    else
    {
      [(SafariPerSitePreferenceSettingsController *)self _setPreferenceValueWithoutPrompting:valueCopy forSpecifier:specifierCopy];
    }
  }
}

void __78__SafariPerSitePreferenceSettingsController__setPreferenceValue_forSpecifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    if (a2)
    {
      [WeakRetained _setPreferenceValueWithoutPrompting:*(a1 + 32) forSpecifier:*(a1 + 40)];
    }

    else
    {
      [WeakRetained reloadSpecifier:*(a1 + 40) animated:1];
    }

    WeakRetained = v5;
  }
}

- (void)_commitPreferenceChangePendingConfirmation:(id)confirmation
{
  preferenceChangePendingConfirmation = self->_preferenceChangePendingConfirmation;
  if (preferenceChangePendingConfirmation)
  {
    preferenceChangePendingConfirmation[2](preferenceChangePendingConfirmation, 1, confirmation);
    v5 = self->_preferenceChangePendingConfirmation;
    self->_preferenceChangePendingConfirmation = 0;
  }
}

- (void)_cancelPreferenceChangePendingConfirmation:(id)confirmation
{
  preferenceChangePendingConfirmation = self->_preferenceChangePendingConfirmation;
  if (preferenceChangePendingConfirmation)
  {
    preferenceChangePendingConfirmation[2](preferenceChangePendingConfirmation, 0, confirmation);
    v5 = self->_preferenceChangePendingConfirmation;
    self->_preferenceChangePendingConfirmation = 0;
  }
}

- (void)_setPreferenceValueWithoutPrompting:(id)prompting forSpecifier:(id)specifier
{
  promptingCopy = prompting;
  specifierCopy = specifier;
  name = [specifierCopy name];
  [(NSMutableDictionary *)self->_specifierToPreferenceValueCache setObject:promptingCopy forKeyedSubscript:name];
  objc_initWeak(&location, self);
  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  preference = [(SafariPerSitePreferenceSettingsController *)self preference];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __94__SafariPerSitePreferenceSettingsController__setPreferenceValueWithoutPrompting_forSpecifier___block_invoke;
  v11[3] = &unk_89F08;
  objc_copyWeak(&v12, &location);
  [preferenceManager setValue:promptingCopy ofPreference:preference forDomain:name completionHandler:v11];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

void __94__SafariPerSitePreferenceSettingsController__setPreferenceValueWithoutPrompting_forSpecifier___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = +[WBSAnalyticsLogger sharedLogger];
    v5 = [WeakRetained preference];
    v6 = [v5 identifier];
    [v4 didModifyPerSitePreferencesWithPreferenceIdentifier:v6 modificationLevel:1 type:0 method:2];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __94__SafariPerSitePreferenceSettingsController__setPreferenceValueWithoutPrompting_forSpecifier___block_invoke_2;
    block[3] = &unk_895D8;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (id)_preferenceValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  name = [specifierCopy name];
  v6 = [(NSMutableDictionary *)self->_specifierToPreferenceValueCache objectForKeyedSubscript:name];
  if (v6)
  {
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    _fallbackPreferenceValue = [_SFPerSitePreferencesUtilities specifierValueForSpecifier:specifierCopy preferenceValue:v6 preference:preference preferenceManager:preferenceManager];
  }

  else
  {
    objc_initWeak(&location, self);
    preferenceManager2 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    preference2 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __74__SafariPerSitePreferenceSettingsController__preferenceValueForSpecifier___block_invoke;
    v13[3] = &unk_89F30;
    objc_copyWeak(&v15, &location);
    v14 = specifierCopy;
    [preferenceManager2 getValueOfPreference:preference2 forDomain:name withTimeout:0 usingBlock:v13];

    _fallbackPreferenceValue = [(SafariPerSitePreferenceSettingsController *)self _fallbackPreferenceValue];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return _fallbackPreferenceValue;
}

void __74__SafariPerSitePreferenceSettingsController__preferenceValueForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRetrieveValue:v3 forSpecifier:*(a1 + 32)];
}

- (void)_setDefaultPreferenceValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  specifierCopy = specifier;
  preference = [(SafariPerSitePreferenceSettingsController *)self preference];
  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v10 = [_SFPerSitePreferencesUtilities preferenceValueForPSSpecifierValue:valueCopy specifier:specifierCopy preference:preference preferenceManager:preferenceManager];
  if (v10)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __85__SafariPerSitePreferenceSettingsController__setDefaultPreferenceValue_forSpecifier___block_invoke;
    v11[3] = &unk_89F58;
    v12 = preference;
    objc_copyWeak(&v14, &location);
    v13 = v10;
    [preferenceManager setDefaultValue:v13 ofPreference:v12 completionHandler:v11];

    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __85__SafariPerSitePreferenceSettingsController__setDefaultPreferenceValue_forSpecifier___block_invoke(id *a1, int a2)
{
  if (a2)
  {
    v3 = +[WBSAnalyticsLogger sharedLogger];
    v4 = [a1[4] identifier];
    [v3 didModifyPerSitePreferencesWithPreferenceIdentifier:v4 modificationLevel:0 type:0 method:2];
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = __85__SafariPerSitePreferenceSettingsController__setDefaultPreferenceValue_forSpecifier___block_invoke_2;
    v7[3] = &unk_896A0;
    v7[4] = WeakRetained;
    v8 = a1[5];
    dispatch_async(&_dispatch_main_q, v7);
  }
}

id __85__SafariPerSitePreferenceSettingsController__setDefaultPreferenceValue_forSpecifier___block_invoke_2(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 232), *(a1 + 40));
  v2 = +[NSMutableDictionary dictionary];
  v3 = *(a1 + 32);
  v4 = *(v3 + 216);
  *(v3 + 216) = v2;

  [*(a1 + 32) notifyPerSitePreferenceValueDidChange];
  v5 = *(a1 + 32);

  return [v5 reloadSpecifiers];
}

- (id)_getDefaultPreferenceValueForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  specifierToPreferenceValueCache = self->_specifierToPreferenceValueCache;
  name = [specifierCopy name];
  v7 = [(NSMutableDictionary *)specifierToPreferenceValueCache objectForKeyedSubscript:name];

  if (v7)
  {
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    _fallbackPreferenceValue = [_SFPerSitePreferencesUtilities specifierValueForSpecifier:specifierCopy preferenceValue:v7 preference:preference preferenceManager:preferenceManager];
  }

  else
  {
    objc_initWeak(&location, self);
    preferenceManager2 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    preference2 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __84__SafariPerSitePreferenceSettingsController__getDefaultPreferenceValueForSpecifier___block_invoke;
    v14[3] = &unk_89F80;
    objc_copyWeak(&v16, &location);
    v15 = specifierCopy;
    [preferenceManager2 getDefaultPreferenceValueForPreference:preference2 completionHandler:v14];

    _fallbackPreferenceValue = [(SafariPerSitePreferenceSettingsController *)self _fallbackPreferenceValue];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return _fallbackPreferenceValue;
}

void __84__SafariPerSitePreferenceSettingsController__getDefaultPreferenceValueForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRetrieveValue:v3 forSpecifier:*(a1 + 32)];
}

- (void)_didRetrieveValue:(id)value forSpecifier:(id)specifier
{
  valueCopy = value;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__SafariPerSitePreferenceSettingsController__didRetrieveValue_forSpecifier___block_invoke;
  block[3] = &unk_89CB0;
  specifierCopy = specifier;
  selfCopy = self;
  v12 = valueCopy;
  v7 = valueCopy;
  v8 = specifierCopy;
  dispatch_async(&_dispatch_main_q, block);
}

void __76__SafariPerSitePreferenceSettingsController__didRetrieveValue_forSpecifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) name];
  v3 = [*(*(a1 + 40) + 216) objectForKeyedSubscript:v2];

  if (v3)
  {
    goto LABEL_14;
  }

  [*(*(a1 + 40) + 216) setObject:*(a1 + 48) forKeyedSubscript:v2];
  v4 = [*(a1 + 40) _displayInformation];
  if ([v4 displayOption] != &dword_0 + 1)
  {

    goto LABEL_13;
  }

  v5 = *(a1 + 32);
  v6 = *(*(a1 + 40) + 176);

  if (v5 != v6)
  {
LABEL_13:
    [*(a1 + 40) reloadSpecifierID:v2];
    goto LABEL_14;
  }

  v7 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = *(*(a1 + 40) + 192);
  v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(a1 + 40) indexPathForSpecifier:{*(*(&v15 + 1) + 8 * v12), v15}];
        [v7 addObject:v13];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  v14 = [*(a1 + 40) table];
  [v14 reloadRowsAtIndexPaths:v7 withRowAnimation:5];

LABEL_14:
}

- (void)_clearSelectedDomains:(id)domains
{
  v4 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  table = [(SafariPerSitePreferenceSettingsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];

  v7 = [indexPathsForSelectedRows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedRows);
        }

        v11 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:*(*(&v13 + 1) + 8 * v10)];
        name = [v11 name];
        [v4 addObject:name];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedRows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SafariPerSitePreferenceSettingsController *)self _clearSettingsForDomains:v4];
}

- (void)_clearAllSettings:(id)settings
{
  v4 = [(NSOrderedSet *)self->_configuredWebsites set];
  [(SafariPerSitePreferenceSettingsController *)self _clearSettingsForDomains:v4];
}

- (void)_clearSettingsForDomains:(id)domains
{
  domainsCopy = domains;
  objc_initWeak(&location, self);
  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  preference = [(SafariPerSitePreferenceSettingsController *)self preference];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__SafariPerSitePreferenceSettingsController__clearSettingsForDomains___block_invoke;
  v7[3] = &unk_89F08;
  objc_copyWeak(&v8, &location);
  [preferenceManager removePreferenceValuesForDomains:domainsCopy fromPreference:preference completionHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __70__SafariPerSitePreferenceSettingsController__clearSettingsForDomains___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained && a2)
  {
    v4 = +[WBSAnalyticsLogger sharedLogger];
    v5 = [WeakRetained preference];
    v6 = [v5 identifier];
    [v4 didModifyPerSitePreferencesWithPreferenceIdentifier:v6 modificationLevel:1 type:1 method:2];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __70__SafariPerSitePreferenceSettingsController__clearSettingsForDomains___block_invoke_2;
    block[3] = &unk_895D8;
    block[4] = WeakRetained;
    dispatch_async(&_dispatch_main_q, block);
  }
}

id __70__SafariPerSitePreferenceSettingsController__clearSettingsForDomains___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) notifyPerSitePreferenceValueDidChange];
  [*(a1 + 32) setEditing:0 animated:1];
  v2 = *(a1 + 32);

  return [v2 _loadDomains];
}

- (id)_preferenceValues
{
  cachedPreferenceValues = self->_cachedPreferenceValues;
  if (!cachedPreferenceValues)
  {
    preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    v6 = [preferenceManager valuesForPreference:preference];
    v7 = self->_cachedPreferenceValues;
    self->_cachedPreferenceValues = v6;

    cachedPreferenceValues = self->_cachedPreferenceValues;
  }

  return cachedPreferenceValues;
}

- (id)_fallbackPreferenceValue
{
  cachedFallbackPreferenceValue = self->_cachedFallbackPreferenceValue;
  if (!cachedFallbackPreferenceValue)
  {
    preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    v6 = [preferenceManager valuesForPreference:preference];
    firstObject = [v6 firstObject];
    v8 = self->_cachedFallbackPreferenceValue;
    self->_cachedFallbackPreferenceValue = firstObject;

    cachedFallbackPreferenceValue = self->_cachedFallbackPreferenceValue;
  }

  return cachedFallbackPreferenceValue;
}

- (id)_displayInformation
{
  cachedDisplayInformation = self->_cachedDisplayInformation;
  if (!cachedDisplayInformation)
  {
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    v5 = [_SFPerSitePreferenceDisplayInformation displayInformationForPerSitePreference:preference];
    v6 = self->_cachedDisplayInformation;
    self->_cachedDisplayInformation = v5;

    cachedDisplayInformation = self->_cachedDisplayInformation;
  }

  return cachedDisplayInformation;
}

- (id)_defaultPreferenceValueForMultipleOptionSpecifier:(id)specifier
{
  specifierCopy = specifier;
  cachedOtherWebsitesMultipleChoiceSpecifiers = self->_cachedOtherWebsitesMultipleChoiceSpecifiers;
  if (cachedOtherWebsitesMultipleChoiceSpecifiers && (v6 = [(NSArray *)cachedOtherWebsitesMultipleChoiceSpecifiers indexOfObject:specifierCopy], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    _preferenceValues = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
    v7 = [_preferenceValues objectAtIndexedSubscript:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldShowOtherWebsitesSection
{
  preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  if (objc_opt_respondsToSelector())
  {
    preference = [(SafariPerSitePreferenceSettingsController *)self preference];
    v5 = [preferenceManager preferenceDoesNotHaveForOtherWebsitesDefault:preference] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  return v5;
}

- (void)_setUpSpecifiersCachesIfNeeded
{
  v3 = [(NSOrderedSet *)self->_configuredWebsites count]!= 0;
  if (self->_hadConfiguredWebsites != v3 || !self->_didSetUpSpecifierCaches)
  {
    [(SafariPerSitePreferenceSettingsController *)self _setUpConstantSpecifiers];
    if ([(SafariPerSitePreferenceSettingsController *)self _shouldShowOtherWebsitesSection])
    {
      _displayInformation = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
      displayOption = [_displayInformation displayOption];

      if (displayOption == &dword_0 + 1)
      {
        if ([(NSOrderedSet *)self->_configuredWebsites count])
        {
          localizedAllWebsiteSettingsTitle = SafariSettingsLocalizedString(@"Other Websites", @"Safari");
        }

        else
        {
          _displayInformation2 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
          localizedAllWebsiteSettingsTitle = [_displayInformation2 localizedAllWebsiteSettingsTitle];
        }

        v17 = [PSSpecifier groupSpecifierWithID:@"OTHER_WEBSITES_GROUP" name:localizedAllWebsiteSettingsTitle];
        cachedOtherWebsitesSpecifier = self->_cachedOtherWebsitesSpecifier;
        self->_cachedOtherWebsitesSpecifier = v17;

        v20 = self->_cachedOtherWebsitesSpecifier;
        v9 = [NSArray arrayWithObjects:&v20 count:1];
        v19 = [v9 arrayByAddingObjectsFromArray:self->_cachedOtherWebsitesMultipleChoiceSpecifiers];
        cachedOtherWebsitesSectionSpecifiers = self->_cachedOtherWebsitesSectionSpecifiers;
        self->_cachedOtherWebsitesSectionSpecifiers = v19;
      }

      else
      {
        if (displayOption)
        {
LABEL_15:
          self->_hadConfiguredWebsites = v3;
          self->_didSetUpSpecifierCaches = 1;
          return;
        }

        if ([(NSOrderedSet *)self->_configuredWebsites count])
        {
          localizedAllWebsiteSettingsTitle = 0;
          v7 = @"Other Websites";
        }

        else
        {
          _displayInformation3 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
          localizedAllWebsiteSettingsTitle = [_displayInformation3 localizedSiteSpecificSettingsTitle];

          v7 = @"All Websites";
        }

        v9 = SafariSettingsLocalizedString(v7, @"Safari");
        v10 = [(SafariPerSitePreferenceSettingsController *)self _preferenceSpecifierNamed:v9 set:"_setDefaultPreferenceValue:forSpecifier:" get:"_getDefaultPreferenceValueForSpecifier:"];
        v11 = self->_cachedOtherWebsitesSpecifier;
        self->_cachedOtherWebsitesSpecifier = v10;

        cachedOtherWebsitesSectionSpecifiers = [PSSpecifier groupSpecifierWithID:@"OTHER_WEBSITES_GROUP" name:localizedAllWebsiteSettingsTitle];
        v13 = self->_cachedOtherWebsitesSpecifier;
        v21[0] = cachedOtherWebsitesSectionSpecifiers;
        v21[1] = v13;
        v14 = [NSArray arrayWithObjects:v21 count:2];
        v15 = self->_cachedOtherWebsitesSectionSpecifiers;
        self->_cachedOtherWebsitesSectionSpecifiers = v14;
      }

      goto LABEL_15;
    }
  }
}

- (void)_setUpConstantSpecifiers
{
  if (!self->_cachedWebsiteSectionHeaderSpecifier)
  {
    _displayInformation = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
    localizedSiteSpecificSettingsTitle = [_displayInformation localizedSiteSpecificSettingsTitle];
    v5 = [PSSpecifier groupSpecifierWithID:@"CONFIGURED_WEBSITES" name:localizedSiteSpecificSettingsTitle];
    cachedWebsiteSectionHeaderSpecifier = self->_cachedWebsiteSectionHeaderSpecifier;
    self->_cachedWebsiteSectionHeaderSpecifier = v5;

    v7 = SafariSettingsLocalizedString(@"Clear All Settings", @"Safari");
    v8 = [PSConfirmationSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
    cachedClearAllSettingsSpecifier = self->_cachedClearAllSettingsSpecifier;
    self->_cachedClearAllSettingsSpecifier = v8;

    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    v10 = SafariSettingsLocalizedString(@"Clear All Settings", @"Safari");
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setTitle:v10];

    localizedClearAllSettingsPrompt = [_displayInformation localizedClearAllSettingsPrompt];
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setPrompt:localizedClearAllSettingsPrompt];

    v12 = SafariSettingsLocalizedString(@"Clear", @"Safari");
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setOkButton:v12];

    v13 = SafariSettingsLocalizedString(@"Cancel", @"Safari");
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setCancelButton:v13];

    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setConfirmationAction:"_clearAllSettings:"];
    v14 = [PSSpecifier groupSpecifierWithID:@"CLEAR_ALL_SETTINGS_GROUP" name:0];
    v15 = self->_cachedClearAllSettingsSpecifier;
    v39[0] = v14;
    v39[1] = v15;
    v16 = [NSArray arrayWithObjects:v39 count:2];
    cachedClearAllSettingsSectionSpecifiers = self->_cachedClearAllSettingsSectionSpecifiers;
    self->_cachedClearAllSettingsSectionSpecifiers = v16;

    _displayInformation2 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
    displayOption = [_displayInformation2 displayOption];

    if (displayOption == &dword_0 + 1)
    {
      v33 = _displayInformation;
      v20 = +[NSMutableArray array];
      preferenceManager = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
      preference = [(SafariPerSitePreferenceSettingsController *)self preference];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      selfCopy = self;
      _preferenceValues = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
      v24 = [_preferenceValues countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v35;
        do
        {
          v27 = 0;
          do
          {
            if (*v35 != v26)
            {
              objc_enumerationMutation(_preferenceValues);
            }

            v28 = [preferenceManager localizedStringForValue:*(*(&v34 + 1) + 8 * v27) inPreference:preference];
            v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];
            [v20 addObject:v29];

            v27 = v27 + 1;
          }

          while (v25 != v27);
          v25 = [_preferenceValues countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v25);
      }

      v30 = [v20 copy];
      cachedOtherWebsitesMultipleChoiceSpecifiers = selfCopy->_cachedOtherWebsitesMultipleChoiceSpecifiers;
      selfCopy->_cachedOtherWebsitesMultipleChoiceSpecifiers = v30;

      _displayInformation = v33;
    }
  }
}

- (id)_clearAllSettingsSpecifier
{
  [(SafariPerSitePreferenceSettingsController *)self _setUpSpecifiersCachesIfNeeded];
  cachedClearAllSettingsSpecifier = self->_cachedClearAllSettingsSpecifier;

  return cachedClearAllSettingsSpecifier;
}

- (id)_otherWebsitesSpecifier
{
  [(SafariPerSitePreferenceSettingsController *)self _setUpSpecifiersCachesIfNeeded];
  cachedOtherWebsitesSpecifier = self->_cachedOtherWebsitesSpecifier;

  return cachedOtherWebsitesSpecifier;
}

- (id)_deleteBarButtonItem
{
  cachedDeleteBarButtonItem = self->_cachedDeleteBarButtonItem;
  if (!cachedDeleteBarButtonItem)
  {
    v4 = [UIBarButtonItem alloc];
    v5 = SafariSettingsLocalizedString(@"Delete", @"Safari");
    v6 = [v4 initWithTitle:v5 style:7 target:self action:"_clearSelectedDomains:"];
    v7 = self->_cachedDeleteBarButtonItem;
    self->_cachedDeleteBarButtonItem = v6;

    v8 = +[UIColor systemRedColor];
    [(UIBarButtonItem *)self->_cachedDeleteBarButtonItem setTintColor:v8];

    cachedDeleteBarButtonItem = self->_cachedDeleteBarButtonItem;
  }

  return cachedDeleteBarButtonItem;
}

- (void)_updateDeleteButtonEnabled
{
  table = [(SafariPerSitePreferenceSettingsController *)self table];
  indexPathsForSelectedRows = [table indexPathsForSelectedRows];
  v4 = [indexPathsForSelectedRows count] != 0;
  _deleteBarButtonItem = [(SafariPerSitePreferenceSettingsController *)self _deleteBarButtonItem];
  [_deleteBarButtonItem setEnabled:v4];
}

- (id)_cancelBarButtonItem
{
  cachedCancelBarButtonItem = self->_cachedCancelBarButtonItem;
  if (!cachedCancelBarButtonItem)
  {
    v4 = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:1 target:self action:"_cancelEditing:"];
    v5 = self->_cachedCancelBarButtonItem;
    self->_cachedCancelBarButtonItem = v4;

    cachedCancelBarButtonItem = self->_cachedCancelBarButtonItem;
  }

  return cachedCancelBarButtonItem;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v10.receiver = self;
  v10.super_class = SafariPerSitePreferenceSettingsController;
  v5 = [(SafariPerSitePreferenceSettingsController *)&v10 tableView:view cellForRowAtIndexPath:path];
  specifier = [v5 specifier];
  v7 = [(SafariPerSitePreferenceSettingsController *)self _defaultPreferenceValueForMultipleOptionSpecifier:specifier];

  if (v7)
  {
    v8 = [(SafariPerSitePreferenceSettingsController *)self _getDefaultPreferenceValueForSpecifier:self->_cachedOtherWebsitesSpecifier];
    [v5 setChecked:{objc_msgSend(v7, "isEqual:", v8)}];
  }

  return v5;
}

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v5 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:path];
  _otherWebsitesSpecifier = [(SafariPerSitePreferenceSettingsController *)self _otherWebsitesSpecifier];
  if (v5 == _otherWebsitesSpecifier)
  {
    v8 = 0;
  }

  else
  {
    _clearAllSettingsSpecifier = [(SafariPerSitePreferenceSettingsController *)self _clearAllSettingsSpecifier];
    v8 = v5 != _clearAllSettingsSpecifier;
  }

  return v8;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:pathCopy];
  if (![viewCopy isEditing] || (-[SafariPerSitePreferenceSettingsController _clearAllSettingsSpecifier](self, "_clearAllSettingsSpecifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8 == v9))
  {
    v10 = [(SafariPerSitePreferenceSettingsController *)self _defaultPreferenceValueForMultipleOptionSpecifier:v8];
    if (v10)
    {
      [(SafariPerSitePreferenceSettingsController *)self _setDefaultPreferenceValue:v10 forSpecifier:self->_cachedOtherWebsitesSpecifier];
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SafariPerSitePreferenceSettingsController;
      [(SafariPerSitePreferenceSettingsController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
    }
  }

  else
  {
    [(SafariPerSitePreferenceSettingsController *)self _updateDeleteButtonEnabled];
  }
}

- (void)tableView:(id)view didDeselectRowAtIndexPath:(id)path
{
  if ([view isEditing])
  {

    [(SafariPerSitePreferenceSettingsController *)self _updateDeleteButtonEnabled];
  }
}

@end