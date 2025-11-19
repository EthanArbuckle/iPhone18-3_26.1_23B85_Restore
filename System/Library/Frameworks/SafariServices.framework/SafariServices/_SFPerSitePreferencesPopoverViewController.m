@interface _SFPerSitePreferencesPopoverViewController
- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4;
- (SFBrowsingAssistantMenuSection)pageMenuSection;
- (_SFBrowserDocument)browserDocument;
- (_SFPerSitePreferencesPopoverViewController)initWithBrowserDocument:(id)a3 perSitePreferencesVendor:(id)a4;
- (id)_generalPageSection;
- (id)_indexPathForView:(id)a3;
- (id)_preferenceAtIndexPath:(id)a3;
- (id)_preferenceRowIndexPathForCellAtIndexPath:(id)a3;
- (id)_securePageSection;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)_didRetrieveValue:(id)a3 forPreference:(id)a4;
- (void)_initializePreferences;
- (void)_presentPrivacyToggledInGuestUserAlert;
- (void)_setPreferenceValue:(id)a3 forPreference:(id)a4;
- (void)reloadPreferences;
- (void)switchTableViewCell:(id)a3 didChangeSwitchState:(BOOL)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
@end

@implementation _SFPerSitePreferencesPopoverViewController

- (_SFPerSitePreferencesPopoverViewController)initWithBrowserDocument:(id)a3 perSitePreferencesVendor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v20.receiver = self;
  v20.super_class = _SFPerSitePreferencesPopoverViewController;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)&v20 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserDocument, v6);
    v10 = [v6 URLForPerSitePreferences];
    v11 = [v10 safari_userVisibleHostWithoutWWWSubdomain];
    domain = v9->_domain;
    v9->_domain = v11;

    v9->_shouldShowSecurePagePreferences = [v6 isSecure];
    v9->_shouldShowLockdownPreference = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
    objc_storeStrong(&v9->_perSitePreferencesVendor, a4);
    [(_SFPerSitePreferencesPopoverViewController *)v9 _initializePreferences];
    v13 = [MEMORY[0x1E695DF90] dictionary];
    preferenceToValueCache = v9->_preferenceToValueCache;
    v9->_preferenceToValueCache = v13;

    v15 = MEMORY[0x1E696AEC0];
    v16 = _WBSLocalizedString();
    v17 = [v15 stringWithFormat:v16, v9->_domain];
    [(_SFPerSitePreferencesPopoverViewController *)v9 setTitle:v17];

    v18 = v9;
  }

  return v9;
}

- (SFBrowsingAssistantMenuSection)pageMenuSection
{
  v20 = *MEMORY[0x1E69E9840];
  if (!self->_preferencesBySections)
  {
    [(_SFPerSitePreferencesPopoverViewController *)self _initializePreferences];
  }

  v3 = [MEMORY[0x1E69B1AE8] websiteSettingsSectionForDomain:self->_domain];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_preferencesBySections;
  v4 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = [*(*(&v15 + 1) + 8 * i) preferences];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __61___SFPerSitePreferencesPopoverViewController_pageMenuSection__block_invoke;
        v14[3] = &unk_1E8493AE8;
        v14[4] = self;
        v9 = [v8 safari_mapObjectsUsingBlock:v14];

        v10 = [v3 settings];
        v11 = [v10 arrayByAddingObjectsFromArray:v9];
        [v3 setSettings:v11];
      }

      v5 = [(NSArray *)obj countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }

  return v3;
}

- (void)_initializePreferences
{
  v10[1] = *MEMORY[0x1E69E9840];
  v3 = [(_SFPerSitePreferencesPopoverViewController *)self _generalPageSection];
  v4 = v3;
  if (self->_shouldShowSecurePagePreferences)
  {
    v5 = [(_SFPerSitePreferencesPopoverViewController *)self _securePageSection];
    v9[1] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    preferencesBySections = self->_preferencesBySections;
    self->_preferencesBySections = v6;
  }

  else
  {
    v10[0] = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = self->_preferencesBySections;
    self->_preferencesBySections = v8;
  }
}

- (id)_securePageSection
{
  v15[2] = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor sharedUserMediaPermissionController];
  v5 = [v4 cameraMediaCapturePreference];
  v15[0] = v5;
  v6 = [v4 microphoneMediaCapturePreference];
  v15[1] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [v3 addObjectsFromArray:v7];

  v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor sharedGeolocationPermissionManager];
  v9 = [v8 geolocationPreference];
  [v3 addObject:v9];

  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 stringWithFormat:v11, self->_domain];

  v13 = [[_SFPerSitePreferencesSection alloc] initWithTitle:v12 preferences:v3];

  return v13;
}

- (id)_generalPageSection
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
  v5 = [v4 requestDesktopSitePreference];
  [v3 addObject:v5];

  v6 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor automaticReaderActivationManager];
  v7 = [v6 readerPreference];
  [v3 addObject:v7];

  v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor contentBlockersPreferenceManager];
  if ([v8 hasEnabledContentBlockers])
  {
    v9 = [v8 contentBlockersPreference];
    [v3 addObject:v9];
  }

  if (self->_shouldShowLockdownPreference)
  {
    v10 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor lockdownModePreferenceManager];
    v11 = [v10 lockdownPreference];
    [v3 addObject:v11];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserDocument);
  v13 = [WeakRetained browserHasMultipleProfiles];

  if (v13)
  {
    v14 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor profilePreferenceManager];
    v15 = [v14 profilePreference];
    [v3 addObject:v15];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = _WBSLocalizedString();
  v18 = [v16 stringWithFormat:v17, self->_domain];

  v19 = [[_SFPerSitePreferencesSection alloc] initWithTitle:v18 preferences:v3];

  return v19;
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = _SFPerSitePreferencesPopoverViewController;
  [(_SFPerSitePreferencesPopoverViewController *)&v10 viewDidLayoutSubviews];
  if ([(_SFPerSitePreferencesPopoverViewController *)self _isInPopoverPresentation])
  {
    v3 = [(_SFPerSitePreferencesPopoverViewController *)self navigationItem];
    v4 = v3;
    v5 = 0;
  }

  else
  {
    doneButton = self->_doneButton;
    if (!doneButton)
    {
      v7 = objc_alloc(MEMORY[0x1E69DC708]);
      v8 = [v7 initWithBarButtonSystemItem:objc_msgSend(MEMORY[0x1E69DC708] target:"_sf_popoverDoneButtonItem") action:{self, sel__done_}];
      v9 = self->_doneButton;
      self->_doneButton = v8;

      doneButton = self->_doneButton;
    }

    v3 = [(_SFPerSitePreferencesPopoverViewController *)self navigationItem];
    v4 = v3;
    v5 = doneButton;
  }

  [v3 sf_setPreferredDismissOrDoneButtonItem:v5];
}

- (void)reloadPreferences
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  preferenceToValueCache = self->_preferenceToValueCache;
  self->_preferenceToValueCache = v3;

  [(_SFPerSitePreferencesPopoverViewController *)self _initializePreferences];
  v5 = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
  [v5 reloadData];
}

- (id)_indexPathForView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      v6 = [v5 superview];

      v5 = v6;
      if (!v6)
      {
        goto LABEL_5;
      }
    }

    v8 = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
    v7 = [v8 indexPathForCell:v5];
  }

  else
  {
LABEL_5:
    v7 = 0;
  }

  return v7;
}

- (void)_presentPrivacyToggledInGuestUserAlert
{
  v3 = MEMORY[0x1E69DC650];
  v4 = _WBSLocalizedString();
  v5 = _WBSLocalizedString();
  v9 = [v3 alertControllerWithTitle:v4 message:v5 preferredStyle:1];

  v6 = MEMORY[0x1E69DC648];
  v7 = _WBSLocalizedString();
  v8 = [v6 actionWithTitle:v7 style:0 handler:0];
  [v9 addAction:v8];

  [(_SFPerSitePreferencesPopoverViewController *)self presentViewController:v9 animated:1 completion:0];
}

- (void)_setPreferenceValue:(id)a3 forPreference:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v7];
  v9 = [MEMORY[0x1E69C8810] sharedLogger];
  v10 = [v7 identifier];
  [v9 didModifyPerSitePreferencesWithPreferenceIdentifier:v10 modificationLevel:1 type:0 method:1];

  [(NSMutableDictionary *)self->_preferenceToValueCache setObject:v6 forKeyedSubscript:v7];
  objc_initWeak(&from, v8);
  domain = self->_domain;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___SFPerSitePreferencesPopoverViewController__setPreferenceValue_forPreference___block_invoke;
  v12[3] = &unk_1E8493B10;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v8 setValue:v6 ofPreference:v7 forDomain:domain completionHandler:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (void)_didRetrieveValue:(id)a3 forPreference:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = [(NSMutableDictionary *)self->_preferenceToValueCache objectForKeyedSubscript:v6];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_preferenceToValueCache setObject:v9 forKeyedSubscript:v6];
    v8 = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
    [v8 reloadData];
  }
}

- (id)_preferenceRowIndexPathForCellAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_expandedRowIndexPath && (v6 = [v4 section], v6 == -[NSIndexPath section](self->_expandedRowIndexPath, "section")) && (v7 = objc_msgSend(v5, "row"), v8 = -[NSIndexPath row](self->_expandedRowIndexPath, "row"), v7 > v8))
  {
    numberOfValuesInExpandedPreference = self->_numberOfValuesInExpandedPreference;
    if (v7 >= numberOfValuesInExpandedPreference + v8)
    {
      v10 = [MEMORY[0x1E696AC88] indexPathForRow:v7 - numberOfValuesInExpandedPreference inSection:v6];
    }

    else
    {
      v10 = self->_expandedRowIndexPath;
    }
  }

  else
  {
    v10 = v5;
  }

  v11 = v10;

  return v11;
}

- (id)_preferenceAtIndexPath:(id)a3
{
  preferencesBySections = self->_preferencesBySections;
  v4 = a3;
  v5 = -[NSArray objectAtIndexedSubscript:](preferencesBySections, "objectAtIndexedSubscript:", [v4 section]);
  v6 = [v5 preferences];
  v7 = [v4 row];

  v8 = [v6 objectAtIndexedSubscript:v7];

  return v8;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = [(NSArray *)self->_preferencesBySections objectAtIndexedSubscript:a4];
  v7 = [v6 preferences];
  v8 = [v7 count];

  expandedRowIndexPath = self->_expandedRowIndexPath;
  if (expandedRowIndexPath && [(NSIndexPath *)expandedRowIndexPath section]== a4)
  {
    v8 += self->_numberOfValuesInExpandedPreference;
  }

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = [(NSArray *)self->_preferencesBySections objectAtIndexedSubscript:a4];
  v5 = [v4 title];

  return v5;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:v7];
  v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v8];
  v10 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v9];
  v11 = [v10 displayOption];
  v12 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v9];
  v13 = [(NSMutableDictionary *)self->_preferenceToValueCache objectForKeyedSubscript:v9];
  if (!v13)
  {
    objc_initWeak(&location, self);
    domain = self->_domain;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __78___SFPerSitePreferencesPopoverViewController_tableView_cellForRowAtIndexPath___block_invoke;
    v47[3] = &unk_1E8493B38;
    objc_copyWeak(&v49, &location);
    v48 = v9;
    [v12 getValueOfPreference:v48 forDomain:domain withTimeout:0 usingBlock:v47];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
    v13 = 0;
  }

  if (v11 == 1)
  {
    v44 = v12;
    expandedRowIndexPath = self->_expandedRowIndexPath;
    if (expandedRowIndexPath && (v20 = -[NSIndexPath section](expandedRowIndexPath, "section"), v20 == [v7 section]) && (v21 = objc_msgSend(v7, "row"), v21 > -[NSIndexPath row](self->_expandedRowIndexPath, "row")) && (v22 = objc_msgSend(v7, "row"), v22 <= self->_numberOfValuesInExpandedPreference + -[NSIndexPath row](self->_expandedRowIndexPath, "row")))
    {
      v46 = v6;
      v15 = [v6 dequeueReusableCellWithIdentifier:@"expandedMultipleChoiceOptionTableViewCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"expandedMultipleChoiceOptionTableViewCell"];
        v32 = [(SFSwitchTableViewCell *)v15 textLabel];
        [v32 setNumberOfLines:0];

        v33 = [(SFSwitchTableViewCell *)v15 imageView];
        v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
        [v33 setImage:v34];

        v35 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
        [v33 setPreferredSymbolConfiguration:v35];

        [v33 setHidden:1];
      }

      v36 = [v7 row];
      v37 = v36 + ~[v8 row];
      v38 = 15.0;
      if (v37 != self->_numberOfValuesInExpandedPreference - 1)
      {
        v38 = 44.0;
      }

      [(SFSwitchTableViewCell *)v15 setSeparatorInset:0.0, v38, 0.0, 0.0];
      v12 = v44;
      v43 = [v44 valuesForPreference:v9];
      v39 = [v43 objectAtIndexedSubscript:v37];
      v40 = [v44 localizedStringForValue:v39 inPreference:v9];
      v41 = [(SFSwitchTableViewCell *)v15 textLabel];
      [v41 setText:v40];

      LODWORD(v41) = [v13 isEqual:v39];
      v42 = [(SFSwitchTableViewCell *)v15 imageView];
      [v42 setHidden:v41 ^ 1];

      v6 = v46;
    }

    else
    {
      v45 = v8;
      v23 = v6;
      v15 = [v6 dequeueReusableCellWithIdentifier:@"multipleChoiceTableViewCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"multipleChoiceTableViewCell"];
        [(SFSwitchTableViewCell *)v15 setSelectionStyle:0];
        v24 = [(SFSwitchTableViewCell *)v15 textLabel];
        [v24 setNumberOfLines:0];
      }

      v25 = [v10 localizedDisplayName];
      v26 = [(SFSwitchTableViewCell *)v15 textLabel];
      [v26 setText:v25];

      if (v13)
      {
        v27 = [v12 localizedStringForValue:v13 inPreference:v9];
      }

      else
      {
        v27 = &stru_1F4FE9E38;
      }

      v28 = [(SFSwitchTableViewCell *)v15 detailTextLabel];
      [v28 setText:v27];

      if (v13)
      {
      }

      if ([v7 isEqual:self->_expandedRowIndexPath])
      {
        [v23 tintColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }
      v29 = ;
      v30 = [(SFSwitchTableViewCell *)v15 detailTextLabel];
      [v30 setTextColor:v29];

      v6 = v23;
      v8 = v45;
    }
  }

  else if (v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = [v6 dequeueReusableCellWithIdentifier:@"toggleOptionTableViewCell"];
    if (!v15)
    {
      v15 = [[SFSwitchTableViewCell alloc] initWithReuseIdentifier:@"toggleOptionTableViewCell"];
      [(SFSwitchTableViewCell *)v15 setDelegate:self];
      [(SFSwitchTableViewCell *)v15 setSelectionStyle:0];
      v16 = [(SFSwitchTableViewCell *)v15 textLabel];
      [v16 setNumberOfLines:0];
    }

    v17 = [v10 localizedDisplayName];
    v18 = [(SFSwitchTableViewCell *)v15 textLabel];
    [v18 setText:v17];

    if (v13)
    {
      [(SFSwitchTableViewCell *)v15 setSwitchOn:[_SFPerSitePreferencesUtilities isBinaryPreferenceValueOn:v13 preference:v9 preferenceManager:v12]];
    }
  }

  return v15;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:v7];
  v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v8];
  v10 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v9];
  v11 = [v10 displayOption];

  if (v11 == 1)
  {
    v51 = v9;
    if ([v8 isEqual:self->_expandedRowIndexPath] && (objc_msgSend(v7, "isEqual:", self->_expandedRowIndexPath) & 1) == 0)
    {
      v46 = [v7 row];
      v44 = ~[(NSIndexPath *)self->_expandedRowIndexPath row];
      v37 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v9];
      v48 = [v37 valuesForPreference:v9];

      v38 = [MEMORY[0x1E695DF70] arrayWithCapacity:self->_numberOfValuesInExpandedPreference + 1];
      if ((self->_numberOfValuesInExpandedPreference & 0x8000000000000000) == 0)
      {
        v39 = -1;
        do
        {
          v40 = [MEMORY[0x1E696AC88] indexPathForRow:++v39 + objc_msgSend(v8 inSection:{"row"), objc_msgSend(v8, "section")}];
          [v38 addObject:v40];
        }

        while (v39 < self->_numberOfValuesInExpandedPreference);
      }

      v41 = [v48 objectAtIndexedSubscript:v46 + v44];
      v9 = v51;
      [(_SFPerSitePreferencesPopoverViewController *)self _setPreferenceValue:v41 forPreference:v51];

      v42 = MEMORY[0x1E69DD250];
      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __80___SFPerSitePreferencesPopoverViewController_tableView_didSelectRowAtIndexPath___block_invoke;
      v52[3] = &unk_1E848F548;
      v53 = v6;
      v54 = v38;
      v43 = v38;
      [v42 performWithoutAnimation:v52];
    }

    else
    {
      [v6 beginUpdates];
      v12 = [(NSIndexPath *)self->_expandedRowIndexPath isEqual:v7];
      v13 = v12;
      v14 = &OBJC_IVAR____SFFormAutoFillController__uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
      v49 = v7;
      v50 = v6;
      if (self->_expandedRowIndexPath)
      {
        v47 = v12;
        v15 = [v6 cellForRowAtIndexPath:?];
        v16 = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v45 = v15;
        v17 = [v15 detailTextLabel];
        [v17 setTextColor:v16];

        v18 = [(NSIndexPath *)self->_expandedRowIndexPath section];
        v19 = [(NSIndexPath *)self->_expandedRowIndexPath row];
        v20 = [MEMORY[0x1E695DF70] array];
        if (self->_numberOfValuesInExpandedPreference >= 1)
        {
          v21 = 0;
          v22 = v19 + 1;
          do
          {
            v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 + v21 inSection:v18];
            [v20 addObject:v23];

            ++v21;
          }

          while (v21 < self->_numberOfValuesInExpandedPreference);
        }

        v6 = v50;
        [v50 deleteRowsAtIndexPaths:v20 withRowAnimation:0];

        expandedRowIndexPath = self->_expandedRowIndexPath;
        v9 = v51;
        v13 = v47;
        v14 = &OBJC_IVAR____SFFormAutoFillController__uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
      }

      else
      {
        expandedRowIndexPath = 0;
      }

      self->_expandedRowIndexPath = 0;

      v25 = v14[525];
      *(&self->super.super.super.super.isa + v25) = 0;
      if ((v13 & 1) == 0)
      {
        v26 = [v6 cellForRowAtIndexPath:v7];
        v27 = [v6 tintColor];
        v28 = [v26 detailTextLabel];
        [v28 setTextColor:v27];

        objc_storeStrong(&self->_expandedRowIndexPath, v8);
        v29 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v9];
        v30 = [v29 valuesForPreference:v9];
        *(&self->super.super.super.super.isa + v25) = [v30 count];

        v31 = [(NSIndexPath *)self->_expandedRowIndexPath section];
        v32 = [(NSIndexPath *)self->_expandedRowIndexPath row];
        v33 = [MEMORY[0x1E695DF70] array];
        if (*(&self->super.super.super.super.isa + v25) >= 1)
        {
          v34 = 0;
          v35 = v32 + 1;
          do
          {
            v36 = [MEMORY[0x1E696AC88] indexPathForRow:v35 + v34 inSection:v31];
            [v33 addObject:v36];

            ++v34;
          }

          while (v34 < *(&self->super.super.super.super.isa + v25));
        }

        v6 = v50;
        [v50 insertRowsAtIndexPaths:v33 withRowAnimation:0];

        v7 = v49;
        v9 = v51;
      }

      [v6 endUpdates];
    }
  }
}

- (BOOL)tableView:(id)a3 canFocusRowAtIndexPath:(id)a4
{
  v5 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:a4];
  v6 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v5];
  v7 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v6];
  v8 = [v7 displayOption];

  return v8 != 0;
}

- (void)switchTableViewCell:(id)a3 didChangeSwitchState:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
  v8 = [v7 indexPathForCell:v6];

  if (v8)
  {
    v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:v8];
    v10 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v9];

    v11 = [v10 identifier];
    v12 = WBSIsEqual();

    if (v12)
    {
      v13 = !v4;
    }

    else
    {
      v13 = 0;
    }

    if (v13)
    {
      v16 = MEMORY[0x1E69DC650];
      v17 = MEMORY[0x1E696AEC0];
      v18 = _WBSLocalizedString();
      v19 = [v17 localizedStringWithFormat:v18, self->_domain];
      v20 = _WBSLocalizedString();
      v21 = [v16 alertControllerWithTitle:v19 message:v20 preferredStyle:1];

      v22 = MEMORY[0x1E69DC648];
      v23 = _WBSLocalizedString();
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __87___SFPerSitePreferencesPopoverViewController_switchTableViewCell_didChangeSwitchState___block_invoke;
      v31[3] = &unk_1E848FBF8;
      v32 = v6;
      v24 = [v22 actionWithTitle:v23 style:1 handler:v31];
      [v21 addAction:v24];

      v25 = MEMORY[0x1E69DC648];
      v26 = _WBSLocalizedString();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __87___SFPerSitePreferencesPopoverViewController_switchTableViewCell_didChangeSwitchState___block_invoke_2;
      v28[3] = &unk_1E8493B60;
      v28[4] = self;
      v30 = v4;
      v29 = v10;
      v27 = [v25 actionWithTitle:v26 style:2 handler:v28];
      [v21 addAction:v27];

      [(_SFPerSitePreferencesPopoverViewController *)self presentViewController:v21 animated:1 completion:0];
    }

    else
    {
      v14 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v10];
      v15 = [_SFPerSitePreferencesUtilities preferenceValueForBoolValue:v4 preference:v10 preferenceManager:v14];
      [(_SFPerSitePreferencesPopoverViewController *)self _setPreferenceValue:v15 forPreference:v10];
    }
  }
}

- (_SFBrowserDocument)browserDocument
{
  WeakRetained = objc_loadWeakRetained(&self->_browserDocument);

  return WeakRetained;
}

@end