@interface SafariPerSitePreferenceSettingsController
- (BOOL)_shouldShowOtherWebsitesSection;
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (id)_cancelBarButtonItem;
- (id)_clearAllSettingsSpecifier;
- (id)_defaultPreferenceValueForMultipleOptionSpecifier:(id)a3;
- (id)_deleteBarButtonItem;
- (id)_displayInformation;
- (id)_editableSpecifiersForDomains:(id)a3;
- (id)_fallbackPreferenceValue;
- (id)_getDefaultPreferenceValueForSpecifier:(id)a3;
- (id)_otherWebsitesSpecifier;
- (id)_preferenceSpecifierNamed:(id)a3 set:(SEL)a4 get:(SEL)a5;
- (id)_preferenceValueForSpecifier:(id)a3;
- (id)_preferenceValues;
- (id)_specifiersForDomains:(id)a3;
- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cancelPreferenceChangePendingConfirmation:(id)a3;
- (void)_clearAllSettings:(id)a3;
- (void)_clearSelectedDomains:(id)a3;
- (void)_clearSettingsForDomains:(id)a3;
- (void)_commitPreferenceChangePendingConfirmation:(id)a3;
- (void)_didRetrieveValue:(id)a3 forSpecifier:(id)a4;
- (void)_hideContentUnavailableView;
- (void)_loadDomains;
- (void)_setDefaultPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)_setPreferenceValue:(id)a3 forSpecifier:(id)a4;
- (void)_setPreferenceValueWithoutPrompting:(id)a3 forSpecifier:(id)a4;
- (void)_setUpConstantSpecifiers;
- (void)_setUpSpecifiersCachesIfNeeded;
- (void)_showContentUnavailableView;
- (void)_updateDeleteButtonEnabled;
- (void)reloadSpecifiers;
- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation SafariPerSitePreferenceSettingsController

- (id)loadSpecifiersFromPlistName:(id)a3 target:(id)a4 bundle:(id)a5
{
  if ([(SafariPerSitePreferenceSettingsController *)self isEditing:a3])
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
  v3 = [(SafariPerSitePreferenceSettingsController *)self editButtonItem];
  v4 = [(SafariPerSitePreferenceSettingsController *)self navigationItem];
  [v4 setRightBarButtonItem:v3];

  [(SafariPerSitePreferenceSettingsController *)self _loadDomains];
}

- (void)_showContentUnavailableView
{
  if (!self->_contentUnavailableView)
  {
    v16 = [(SafariPerSitePreferenceSettingsController *)self view];
    v3 = [_UIContentUnavailableView alloc];
    [v16 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v12 = SafariSettingsLocalizedString(@"No Configured Websites", @"Safari");
    v13 = [v3 initWithFrame:v12 title:0 style:{v5, v7, v9, v11}];
    contentUnavailableView = self->_contentUnavailableView;
    self->_contentUnavailableView = v13;

    [(_UIContentUnavailableView *)self->_contentUnavailableView setAutoresizingMask:18];
    [v16 addSubview:self->_contentUnavailableView];
    v15 = [(SafariPerSitePreferenceSettingsController *)self table];
    [v15 setHidden:1];
  }
}

- (void)_hideContentUnavailableView
{
  [(_UIContentUnavailableView *)self->_contentUnavailableView removeFromSuperview];
  contentUnavailableView = self->_contentUnavailableView;
  self->_contentUnavailableView = 0;

  v4 = [(SafariPerSitePreferenceSettingsController *)self table];
  [v4 setHidden:0];
}

- (void)_loadDomains
{
  objc_initWeak(&location, self);
  v3 = +[NSMutableDictionary dictionary];
  specifierToPreferenceValueCache = self->_specifierToPreferenceValueCache;
  self->_specifierToPreferenceValueCache = v3;

  v5 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v6 = [(SafariPerSitePreferenceSettingsController *)self preference];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __57__SafariPerSitePreferenceSettingsController__loadDomains__block_invoke;
  v7[3] = &unk_89EB8;
  objc_copyWeak(&v8, &location);
  [v5 getAllDomainsConfiguredForPreference:v6 usingBlock:v7];

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

- (id)_specifiersForDomains:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableArray array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = v4;
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

- (id)_editableSpecifiersForDomains:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v3;
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

- (id)_preferenceSpecifierNamed:(id)a3 set:(SEL)a4 get:(SEL)a5
{
  v8 = a3;
  v9 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
  v10 = [v9 displayOption];

  if (v10)
  {
    v24 = v8;
    v11 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:a4 get:a5 detail:objc_opt_class() cell:2 edit:0];
    v12 = +[NSMutableArray array];
    v13 = +[NSMutableArray array];
    v14 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v15 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v16 = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v25 + 1) + 8 * i);
          [v12 addObject:v21];
          v22 = [v14 localizedStringForValue:v21 inPreference:v15];
          [v13 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    [v11 setValues:v12 titles:v13];
    v8 = v24;
  }

  else
  {
    v11 = [PSSpecifier preferenceSpecifierNamed:v8 target:self set:a4 get:a5 detail:0 cell:6 edit:0];
  }

  return v11;
}

- (void)_setPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariPerSitePreferenceSettingsController *)self preference];
  v9 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v10 = [_SFPerSitePreferencesUtilities preferenceValueForPSSpecifierValue:v6 specifier:v7 preference:v8 preferenceManager:v9];

  if (v10)
  {
    v11 = [(SafariPerSitePreferenceSettingsController *)self _preferenceValueForSpecifier:v7];
    v12 = [(SafariPerSitePreferenceSettingsController *)self confirmationPromptStringsForSpecifierChangeIfNeeded:v7 fromValue:v11 toValue:v10];

    if (v12)
    {
      objc_initWeak(&location, self);
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = __78__SafariPerSitePreferenceSettingsController__setPreferenceValue_forSpecifier___block_invoke;
      v16[3] = &unk_89EE0;
      objc_copyWeak(&v19, &location);
      v17 = v6;
      v18 = v7;
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
      [(SafariPerSitePreferenceSettingsController *)self _setPreferenceValueWithoutPrompting:v6 forSpecifier:v7];
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

- (void)_commitPreferenceChangePendingConfirmation:(id)a3
{
  preferenceChangePendingConfirmation = self->_preferenceChangePendingConfirmation;
  if (preferenceChangePendingConfirmation)
  {
    preferenceChangePendingConfirmation[2](preferenceChangePendingConfirmation, 1, a3);
    v5 = self->_preferenceChangePendingConfirmation;
    self->_preferenceChangePendingConfirmation = 0;
  }
}

- (void)_cancelPreferenceChangePendingConfirmation:(id)a3
{
  preferenceChangePendingConfirmation = self->_preferenceChangePendingConfirmation;
  if (preferenceChangePendingConfirmation)
  {
    preferenceChangePendingConfirmation[2](preferenceChangePendingConfirmation, 0, a3);
    v5 = self->_preferenceChangePendingConfirmation;
    self->_preferenceChangePendingConfirmation = 0;
  }
}

- (void)_setPreferenceValueWithoutPrompting:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 name];
  [(NSMutableDictionary *)self->_specifierToPreferenceValueCache setObject:v6 forKeyedSubscript:v8];
  objc_initWeak(&location, self);
  v9 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v10 = [(SafariPerSitePreferenceSettingsController *)self preference];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __94__SafariPerSitePreferenceSettingsController__setPreferenceValueWithoutPrompting_forSpecifier___block_invoke;
  v11[3] = &unk_89F08;
  objc_copyWeak(&v12, &location);
  [v9 setValue:v6 ofPreference:v10 forDomain:v8 completionHandler:v11];

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

- (id)_preferenceValueForSpecifier:(id)a3
{
  v4 = a3;
  v5 = [v4 name];
  v6 = [(NSMutableDictionary *)self->_specifierToPreferenceValueCache objectForKeyedSubscript:v5];
  if (v6)
  {
    v7 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v8 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v9 = [_SFPerSitePreferencesUtilities specifierValueForSpecifier:v4 preferenceValue:v6 preference:v7 preferenceManager:v8];
  }

  else
  {
    objc_initWeak(&location, self);
    v10 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v11 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = __74__SafariPerSitePreferenceSettingsController__preferenceValueForSpecifier___block_invoke;
    v13[3] = &unk_89F30;
    objc_copyWeak(&v15, &location);
    v14 = v4;
    [v10 getValueOfPreference:v11 forDomain:v5 withTimeout:0 usingBlock:v13];

    v9 = [(SafariPerSitePreferenceSettingsController *)self _fallbackPreferenceValue];

    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __74__SafariPerSitePreferenceSettingsController__preferenceValueForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRetrieveValue:v3 forSpecifier:*(a1 + 32)];
}

- (void)_setDefaultPreferenceValue:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariPerSitePreferenceSettingsController *)self preference];
  v9 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v10 = [_SFPerSitePreferencesUtilities preferenceValueForPSSpecifierValue:v6 specifier:v7 preference:v8 preferenceManager:v9];
  if (v10)
  {
    objc_initWeak(&location, self);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __85__SafariPerSitePreferenceSettingsController__setDefaultPreferenceValue_forSpecifier___block_invoke;
    v11[3] = &unk_89F58;
    v12 = v8;
    objc_copyWeak(&v14, &location);
    v13 = v10;
    [v9 setDefaultValue:v13 ofPreference:v12 completionHandler:v11];

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

- (id)_getDefaultPreferenceValueForSpecifier:(id)a3
{
  v4 = a3;
  specifierToPreferenceValueCache = self->_specifierToPreferenceValueCache;
  v6 = [v4 name];
  v7 = [(NSMutableDictionary *)specifierToPreferenceValueCache objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v9 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v10 = [_SFPerSitePreferencesUtilities specifierValueForSpecifier:v4 preferenceValue:v7 preference:v8 preferenceManager:v9];
  }

  else
  {
    objc_initWeak(&location, self);
    v11 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v12 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __84__SafariPerSitePreferenceSettingsController__getDefaultPreferenceValueForSpecifier___block_invoke;
    v14[3] = &unk_89F80;
    objc_copyWeak(&v16, &location);
    v15 = v4;
    [v11 getDefaultPreferenceValueForPreference:v12 completionHandler:v14];

    v10 = [(SafariPerSitePreferenceSettingsController *)self _fallbackPreferenceValue];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __84__SafariPerSitePreferenceSettingsController__getDefaultPreferenceValueForSpecifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didRetrieveValue:v3 forSpecifier:*(a1 + 32)];
}

- (void)_didRetrieveValue:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __76__SafariPerSitePreferenceSettingsController__didRetrieveValue_forSpecifier___block_invoke;
  block[3] = &unk_89CB0;
  v10 = a4;
  v11 = self;
  v12 = v6;
  v7 = v6;
  v8 = v10;
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

- (void)_clearSelectedDomains:(id)a3
{
  v4 = +[NSMutableSet set];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [(SafariPerSitePreferenceSettingsController *)self table];
  v6 = [v5 indexPathsForSelectedRows];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:*(*(&v13 + 1) + 8 * v10)];
        v12 = [v11 name];
        [v4 addObject:v12];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SafariPerSitePreferenceSettingsController *)self _clearSettingsForDomains:v4];
}

- (void)_clearAllSettings:(id)a3
{
  v4 = [(NSOrderedSet *)self->_configuredWebsites set];
  [(SafariPerSitePreferenceSettingsController *)self _clearSettingsForDomains:v4];
}

- (void)_clearSettingsForDomains:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  v6 = [(SafariPerSitePreferenceSettingsController *)self preference];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__SafariPerSitePreferenceSettingsController__clearSettingsForDomains___block_invoke;
  v7[3] = &unk_89F08;
  objc_copyWeak(&v8, &location);
  [v5 removePreferenceValuesForDomains:v4 fromPreference:v6 completionHandler:v7];

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
    v4 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v5 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v6 = [v4 valuesForPreference:v5];
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
    v4 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
    v5 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v6 = [v4 valuesForPreference:v5];
    v7 = [v6 firstObject];
    v8 = self->_cachedFallbackPreferenceValue;
    self->_cachedFallbackPreferenceValue = v7;

    cachedFallbackPreferenceValue = self->_cachedFallbackPreferenceValue;
  }

  return cachedFallbackPreferenceValue;
}

- (id)_displayInformation
{
  cachedDisplayInformation = self->_cachedDisplayInformation;
  if (!cachedDisplayInformation)
  {
    v4 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v5 = [_SFPerSitePreferenceDisplayInformation displayInformationForPerSitePreference:v4];
    v6 = self->_cachedDisplayInformation;
    self->_cachedDisplayInformation = v5;

    cachedDisplayInformation = self->_cachedDisplayInformation;
  }

  return cachedDisplayInformation;
}

- (id)_defaultPreferenceValueForMultipleOptionSpecifier:(id)a3
{
  v4 = a3;
  cachedOtherWebsitesMultipleChoiceSpecifiers = self->_cachedOtherWebsitesMultipleChoiceSpecifiers;
  if (cachedOtherWebsitesMultipleChoiceSpecifiers && (v6 = [(NSArray *)cachedOtherWebsitesMultipleChoiceSpecifiers indexOfObject:v4], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    v9 = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
    v7 = [v9 objectAtIndexedSubscript:v8];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_shouldShowOtherWebsitesSection
{
  v3 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SafariPerSitePreferenceSettingsController *)self preference];
    v5 = [v3 preferenceDoesNotHaveForOtherWebsitesDefault:v4] ^ 1;
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
      v4 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
      v5 = [v4 displayOption];

      if (v5 == &dword_0 + 1)
      {
        if ([(NSOrderedSet *)self->_configuredWebsites count])
        {
          v6 = SafariSettingsLocalizedString(@"Other Websites", @"Safari");
        }

        else
        {
          v16 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
          v6 = [v16 localizedAllWebsiteSettingsTitle];
        }

        v17 = [PSSpecifier groupSpecifierWithID:@"OTHER_WEBSITES_GROUP" name:v6];
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
        if (v5)
        {
LABEL_15:
          self->_hadConfiguredWebsites = v3;
          self->_didSetUpSpecifierCaches = 1;
          return;
        }

        if ([(NSOrderedSet *)self->_configuredWebsites count])
        {
          v6 = 0;
          v7 = @"Other Websites";
        }

        else
        {
          v8 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
          v6 = [v8 localizedSiteSpecificSettingsTitle];

          v7 = @"All Websites";
        }

        v9 = SafariSettingsLocalizedString(v7, @"Safari");
        v10 = [(SafariPerSitePreferenceSettingsController *)self _preferenceSpecifierNamed:v9 set:"_setDefaultPreferenceValue:forSpecifier:" get:"_getDefaultPreferenceValueForSpecifier:"];
        v11 = self->_cachedOtherWebsitesSpecifier;
        self->_cachedOtherWebsitesSpecifier = v10;

        cachedOtherWebsitesSectionSpecifiers = [PSSpecifier groupSpecifierWithID:@"OTHER_WEBSITES_GROUP" name:v6];
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
    v3 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
    v4 = [v3 localizedSiteSpecificSettingsTitle];
    v5 = [PSSpecifier groupSpecifierWithID:@"CONFIGURED_WEBSITES" name:v4];
    cachedWebsiteSectionHeaderSpecifier = self->_cachedWebsiteSectionHeaderSpecifier;
    self->_cachedWebsiteSectionHeaderSpecifier = v5;

    v7 = SafariSettingsLocalizedString(@"Clear All Settings", @"Safari");
    v8 = [PSConfirmationSpecifier preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:0 cell:13 edit:0];
    cachedClearAllSettingsSpecifier = self->_cachedClearAllSettingsSpecifier;
    self->_cachedClearAllSettingsSpecifier = v8;

    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    v10 = SafariSettingsLocalizedString(@"Clear All Settings", @"Safari");
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setTitle:v10];

    v11 = [v3 localizedClearAllSettingsPrompt];
    [(PSConfirmationSpecifier *)self->_cachedClearAllSettingsSpecifier setPrompt:v11];

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

    v18 = [(SafariPerSitePreferenceSettingsController *)self _displayInformation];
    v19 = [v18 displayOption];

    if (v19 == &dword_0 + 1)
    {
      v33 = v3;
      v20 = +[NSMutableArray array];
      v21 = [(SafariPerSitePreferenceSettingsController *)self preferenceManager];
      v22 = [(SafariPerSitePreferenceSettingsController *)self preference];
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v32 = self;
      v23 = [(SafariPerSitePreferenceSettingsController *)self _preferenceValues];
      v24 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
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
              objc_enumerationMutation(v23);
            }

            v28 = [v21 localizedStringForValue:*(*(&v34 + 1) + 8 * v27) inPreference:v22];
            v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:0 cell:3 edit:0];
            [v20 addObject:v29];

            v27 = v27 + 1;
          }

          while (v25 != v27);
          v25 = [v23 countByEnumeratingWithState:&v34 objects:v38 count:16];
        }

        while (v25);
      }

      v30 = [v20 copy];
      cachedOtherWebsitesMultipleChoiceSpecifiers = v32->_cachedOtherWebsitesMultipleChoiceSpecifiers;
      v32->_cachedOtherWebsitesMultipleChoiceSpecifiers = v30;

      v3 = v33;
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
  v6 = [(SafariPerSitePreferenceSettingsController *)self table];
  v3 = [v6 indexPathsForSelectedRows];
  v4 = [v3 count] != 0;
  v5 = [(SafariPerSitePreferenceSettingsController *)self _deleteBarButtonItem];
  [v5 setEnabled:v4];
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v10.receiver = self;
  v10.super_class = SafariPerSitePreferenceSettingsController;
  v5 = [(SafariPerSitePreferenceSettingsController *)&v10 tableView:a3 cellForRowAtIndexPath:a4];
  v6 = [v5 specifier];
  v7 = [(SafariPerSitePreferenceSettingsController *)self _defaultPreferenceValueForMultipleOptionSpecifier:v6];

  if (v7)
  {
    v8 = [(SafariPerSitePreferenceSettingsController *)self _getDefaultPreferenceValueForSpecifier:self->_cachedOtherWebsitesSpecifier];
    [v5 setChecked:{objc_msgSend(v7, "isEqual:", v8)}];
  }

  return v5;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v5 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:a4];
  v6 = [(SafariPerSitePreferenceSettingsController *)self _otherWebsitesSpecifier];
  if (v5 == v6)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(SafariPerSitePreferenceSettingsController *)self _clearAllSettingsSpecifier];
    v8 = v5 != v7;
  }

  return v8;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariPerSitePreferenceSettingsController *)self specifierAtIndexPath:v7];
  if (![v6 isEditing] || (-[SafariPerSitePreferenceSettingsController _clearAllSettingsSpecifier](self, "_clearAllSettingsSpecifier"), v9 = objc_claimAutoreleasedReturnValue(), v9, v8 == v9))
  {
    v10 = [(SafariPerSitePreferenceSettingsController *)self _defaultPreferenceValueForMultipleOptionSpecifier:v8];
    if (v10)
    {
      [(SafariPerSitePreferenceSettingsController *)self _setDefaultPreferenceValue:v10 forSpecifier:self->_cachedOtherWebsitesSpecifier];
      [v6 deselectRowAtIndexPath:v7 animated:1];
    }

    else
    {
      v11.receiver = self;
      v11.super_class = SafariPerSitePreferenceSettingsController;
      [(SafariPerSitePreferenceSettingsController *)&v11 tableView:v6 didSelectRowAtIndexPath:v7];
    }
  }

  else
  {
    [(SafariPerSitePreferenceSettingsController *)self _updateDeleteButtonEnabled];
  }
}

- (void)tableView:(id)a3 didDeselectRowAtIndexPath:(id)a4
{
  if ([a3 isEditing])
  {

    [(SafariPerSitePreferenceSettingsController *)self _updateDeleteButtonEnabled];
  }
}

@end