@interface _SFPerSitePreferencesPopoverViewController
- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path;
- (SFBrowsingAssistantMenuSection)pageMenuSection;
- (_SFBrowserDocument)browserDocument;
- (_SFPerSitePreferencesPopoverViewController)initWithBrowserDocument:(id)document perSitePreferencesVendor:(id)vendor;
- (id)_generalPageSection;
- (id)_indexPathForView:(id)view;
- (id)_preferenceAtIndexPath:(id)path;
- (id)_preferenceRowIndexPathForCellAtIndexPath:(id)path;
- (id)_securePageSection;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)_didRetrieveValue:(id)value forPreference:(id)preference;
- (void)_initializePreferences;
- (void)_presentPrivacyToggledInGuestUserAlert;
- (void)_setPreferenceValue:(id)value forPreference:(id)preference;
- (void)reloadPreferences;
- (void)switchTableViewCell:(id)cell didChangeSwitchState:(BOOL)state;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
@end

@implementation _SFPerSitePreferencesPopoverViewController

- (_SFPerSitePreferencesPopoverViewController)initWithBrowserDocument:(id)document perSitePreferencesVendor:(id)vendor
{
  documentCopy = document;
  vendorCopy = vendor;
  v20.receiver = self;
  v20.super_class = _SFPerSitePreferencesPopoverViewController;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)&v20 initWithStyle:2];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_browserDocument, documentCopy);
    uRLForPerSitePreferences = [documentCopy URLForPerSitePreferences];
    safari_userVisibleHostWithoutWWWSubdomain = [uRLForPerSitePreferences safari_userVisibleHostWithoutWWWSubdomain];
    domain = v9->_domain;
    v9->_domain = safari_userVisibleHostWithoutWWWSubdomain;

    v9->_shouldShowSecurePagePreferences = [documentCopy isSecure];
    v9->_shouldShowLockdownPreference = [MEMORY[0x1E69C98B8] isLockdownModeEnabledForSafari];
    objc_storeStrong(&v9->_perSitePreferencesVendor, vendor);
    [(_SFPerSitePreferencesPopoverViewController *)v9 _initializePreferences];
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    preferenceToValueCache = v9->_preferenceToValueCache;
    v9->_preferenceToValueCache = dictionary;

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

        preferences = [*(*(&v15 + 1) + 8 * i) preferences];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __61___SFPerSitePreferencesPopoverViewController_pageMenuSection__block_invoke;
        v14[3] = &unk_1E8493AE8;
        v14[4] = self;
        v9 = [preferences safari_mapObjectsUsingBlock:v14];

        settings = [v3 settings];
        v11 = [settings arrayByAddingObjectsFromArray:v9];
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
  _generalPageSection = [(_SFPerSitePreferencesPopoverViewController *)self _generalPageSection];
  v4 = _generalPageSection;
  if (self->_shouldShowSecurePagePreferences)
  {
    _securePageSection = [(_SFPerSitePreferencesPopoverViewController *)self _securePageSection];
    v9[1] = _securePageSection;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];
    preferencesBySections = self->_preferencesBySections;
    self->_preferencesBySections = v6;
  }

  else
  {
    v10[0] = _generalPageSection;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    _securePageSection = self->_preferencesBySections;
    self->_preferencesBySections = v8;
  }
}

- (id)_securePageSection
{
  v15[2] = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  sharedUserMediaPermissionController = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor sharedUserMediaPermissionController];
  cameraMediaCapturePreference = [sharedUserMediaPermissionController cameraMediaCapturePreference];
  v15[0] = cameraMediaCapturePreference;
  microphoneMediaCapturePreference = [sharedUserMediaPermissionController microphoneMediaCapturePreference];
  v15[1] = microphoneMediaCapturePreference;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
  [array addObjectsFromArray:v7];

  sharedGeolocationPermissionManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor sharedGeolocationPermissionManager];
  geolocationPreference = [sharedGeolocationPermissionManager geolocationPreference];
  [array addObject:geolocationPreference];

  v10 = MEMORY[0x1E696AEC0];
  v11 = _WBSLocalizedString();
  v12 = [v10 stringWithFormat:v11, self->_domain];

  v13 = [[_SFPerSitePreferencesSection alloc] initWithTitle:v12 preferences:array];

  return v13;
}

- (id)_generalPageSection
{
  array = [MEMORY[0x1E695DF70] array];
  requestDesktopSitePreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor requestDesktopSitePreferenceManager];
  requestDesktopSitePreference = [requestDesktopSitePreferenceManager requestDesktopSitePreference];
  [array addObject:requestDesktopSitePreference];

  automaticReaderActivationManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor automaticReaderActivationManager];
  readerPreference = [automaticReaderActivationManager readerPreference];
  [array addObject:readerPreference];

  contentBlockersPreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor contentBlockersPreferenceManager];
  if ([contentBlockersPreferenceManager hasEnabledContentBlockers])
  {
    contentBlockersPreference = [contentBlockersPreferenceManager contentBlockersPreference];
    [array addObject:contentBlockersPreference];
  }

  if (self->_shouldShowLockdownPreference)
  {
    lockdownModePreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor lockdownModePreferenceManager];
    lockdownPreference = [lockdownModePreferenceManager lockdownPreference];
    [array addObject:lockdownPreference];
  }

  WeakRetained = objc_loadWeakRetained(&self->_browserDocument);
  browserHasMultipleProfiles = [WeakRetained browserHasMultipleProfiles];

  if (browserHasMultipleProfiles)
  {
    profilePreferenceManager = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor profilePreferenceManager];
    profilePreference = [profilePreferenceManager profilePreference];
    [array addObject:profilePreference];
  }

  v16 = MEMORY[0x1E696AEC0];
  v17 = _WBSLocalizedString();
  v18 = [v16 stringWithFormat:v17, self->_domain];

  v19 = [[_SFPerSitePreferencesSection alloc] initWithTitle:v18 preferences:array];

  return v19;
}

- (void)viewDidLayoutSubviews
{
  v10.receiver = self;
  v10.super_class = _SFPerSitePreferencesPopoverViewController;
  [(_SFPerSitePreferencesPopoverViewController *)&v10 viewDidLayoutSubviews];
  if ([(_SFPerSitePreferencesPopoverViewController *)self _isInPopoverPresentation])
  {
    navigationItem = [(_SFPerSitePreferencesPopoverViewController *)self navigationItem];
    v4 = navigationItem;
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

    navigationItem = [(_SFPerSitePreferencesPopoverViewController *)self navigationItem];
    v4 = navigationItem;
    v5 = doneButton;
  }

  [navigationItem sf_setPreferredDismissOrDoneButtonItem:v5];
}

- (void)reloadPreferences
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  preferenceToValueCache = self->_preferenceToValueCache;
  self->_preferenceToValueCache = dictionary;

  [(_SFPerSitePreferencesPopoverViewController *)self _initializePreferences];
  tableView = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
  [tableView reloadData];
}

- (id)_indexPathForView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    v5 = viewCopy;
    while (1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

      superview = [v5 superview];

      v5 = superview;
      if (!superview)
      {
        goto LABEL_5;
      }
    }

    tableView = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
    v7 = [tableView indexPathForCell:v5];
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

- (void)_setPreferenceValue:(id)value forPreference:(id)preference
{
  valueCopy = value;
  preferenceCopy = preference;
  objc_initWeak(&location, self);
  v8 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:preferenceCopy];
  mEMORY[0x1E69C8810] = [MEMORY[0x1E69C8810] sharedLogger];
  identifier = [preferenceCopy identifier];
  [mEMORY[0x1E69C8810] didModifyPerSitePreferencesWithPreferenceIdentifier:identifier modificationLevel:1 type:0 method:1];

  [(NSMutableDictionary *)self->_preferenceToValueCache setObject:valueCopy forKeyedSubscript:preferenceCopy];
  objc_initWeak(&from, v8);
  domain = self->_domain;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __80___SFPerSitePreferencesPopoverViewController__setPreferenceValue_forPreference___block_invoke;
  v12[3] = &unk_1E8493B10;
  objc_copyWeak(&v13, &location);
  objc_copyWeak(&v14, &from);
  [v8 setValue:valueCopy ofPreference:preferenceCopy forDomain:domain completionHandler:v12];
  objc_destroyWeak(&v14);
  objc_destroyWeak(&v13);
  objc_destroyWeak(&from);

  objc_destroyWeak(&location);
}

- (void)_didRetrieveValue:(id)value forPreference:(id)preference
{
  valueCopy = value;
  preferenceCopy = preference;
  v7 = [(NSMutableDictionary *)self->_preferenceToValueCache objectForKeyedSubscript:preferenceCopy];

  if (!v7)
  {
    [(NSMutableDictionary *)self->_preferenceToValueCache setObject:valueCopy forKeyedSubscript:preferenceCopy];
    tableView = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
    [tableView reloadData];
  }
}

- (id)_preferenceRowIndexPathForCellAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = pathCopy;
  if (self->_expandedRowIndexPath && (v6 = [pathCopy section], v6 == -[NSIndexPath section](self->_expandedRowIndexPath, "section")) && (v7 = objc_msgSend(v5, "row"), v8 = -[NSIndexPath row](self->_expandedRowIndexPath, "row"), v7 > v8))
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

- (id)_preferenceAtIndexPath:(id)path
{
  preferencesBySections = self->_preferencesBySections;
  pathCopy = path;
  v5 = -[NSArray objectAtIndexedSubscript:](preferencesBySections, "objectAtIndexedSubscript:", [pathCopy section]);
  preferences = [v5 preferences];
  v7 = [pathCopy row];

  v8 = [preferences objectAtIndexedSubscript:v7];

  return v8;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = [(NSArray *)self->_preferencesBySections objectAtIndexedSubscript:section];
  preferences = [v6 preferences];
  v8 = [preferences count];

  expandedRowIndexPath = self->_expandedRowIndexPath;
  if (expandedRowIndexPath && [(NSIndexPath *)expandedRowIndexPath section]== section)
  {
    v8 += self->_numberOfValuesInExpandedPreference;
  }

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = [(NSArray *)self->_preferencesBySections objectAtIndexedSubscript:section];
  title = [v4 title];

  return title;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:pathCopy];
  v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v8];
  v10 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v9];
  displayOption = [v10 displayOption];
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

  if (displayOption == 1)
  {
    v44 = v12;
    expandedRowIndexPath = self->_expandedRowIndexPath;
    if (expandedRowIndexPath && (v20 = -[NSIndexPath section](expandedRowIndexPath, "section"), v20 == [pathCopy section]) && (v21 = objc_msgSend(pathCopy, "row"), v21 > -[NSIndexPath row](self->_expandedRowIndexPath, "row")) && (v22 = objc_msgSend(pathCopy, "row"), v22 <= self->_numberOfValuesInExpandedPreference + -[NSIndexPath row](self->_expandedRowIndexPath, "row")))
    {
      v46 = viewCopy;
      v15 = [viewCopy dequeueReusableCellWithIdentifier:@"expandedMultipleChoiceOptionTableViewCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"expandedMultipleChoiceOptionTableViewCell"];
        textLabel = [(SFSwitchTableViewCell *)v15 textLabel];
        [textLabel setNumberOfLines:0];

        imageView = [(SFSwitchTableViewCell *)v15 imageView];
        v34 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"checkmark"];
        [imageView setImage:v34];

        v35 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDCF8] scale:1];
        [imageView setPreferredSymbolConfiguration:v35];

        [imageView setHidden:1];
      }

      v36 = [pathCopy row];
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
      textLabel2 = [(SFSwitchTableViewCell *)v15 textLabel];
      [textLabel2 setText:v40];

      LODWORD(textLabel2) = [v13 isEqual:v39];
      imageView2 = [(SFSwitchTableViewCell *)v15 imageView];
      [imageView2 setHidden:textLabel2 ^ 1];

      viewCopy = v46;
    }

    else
    {
      v45 = v8;
      v23 = viewCopy;
      v15 = [viewCopy dequeueReusableCellWithIdentifier:@"multipleChoiceTableViewCell"];
      if (!v15)
      {
        v15 = [objc_alloc(MEMORY[0x1E69DD028]) initWithStyle:1 reuseIdentifier:@"multipleChoiceTableViewCell"];
        [(SFSwitchTableViewCell *)v15 setSelectionStyle:0];
        textLabel3 = [(SFSwitchTableViewCell *)v15 textLabel];
        [textLabel3 setNumberOfLines:0];
      }

      localizedDisplayName = [v10 localizedDisplayName];
      textLabel4 = [(SFSwitchTableViewCell *)v15 textLabel];
      [textLabel4 setText:localizedDisplayName];

      if (v13)
      {
        v27 = [v12 localizedStringForValue:v13 inPreference:v9];
      }

      else
      {
        v27 = &stru_1F4FE9E38;
      }

      detailTextLabel = [(SFSwitchTableViewCell *)v15 detailTextLabel];
      [detailTextLabel setText:v27];

      if (v13)
      {
      }

      if ([pathCopy isEqual:self->_expandedRowIndexPath])
      {
        [v23 tintColor];
      }

      else
      {
        [MEMORY[0x1E69DC888] secondaryLabelColor];
      }
      v29 = ;
      detailTextLabel2 = [(SFSwitchTableViewCell *)v15 detailTextLabel];
      [detailTextLabel2 setTextColor:v29];

      viewCopy = v23;
      v8 = v45;
    }
  }

  else if (displayOption)
  {
    v15 = 0;
  }

  else
  {
    v15 = [viewCopy dequeueReusableCellWithIdentifier:@"toggleOptionTableViewCell"];
    if (!v15)
    {
      v15 = [[SFSwitchTableViewCell alloc] initWithReuseIdentifier:@"toggleOptionTableViewCell"];
      [(SFSwitchTableViewCell *)v15 setDelegate:self];
      [(SFSwitchTableViewCell *)v15 setSelectionStyle:0];
      textLabel5 = [(SFSwitchTableViewCell *)v15 textLabel];
      [textLabel5 setNumberOfLines:0];
    }

    localizedDisplayName2 = [v10 localizedDisplayName];
    textLabel6 = [(SFSwitchTableViewCell *)v15 textLabel];
    [textLabel6 setText:localizedDisplayName2];

    if (v13)
    {
      [(SFSwitchTableViewCell *)v15 setSwitchOn:[_SFPerSitePreferencesUtilities isBinaryPreferenceValueOn:v13 preference:v9 preferenceManager:v12]];
    }
  }

  return v15;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:pathCopy];
  v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v8];
  v10 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v9];
  displayOption = [v10 displayOption];

  if (displayOption == 1)
  {
    v51 = v9;
    if ([v8 isEqual:self->_expandedRowIndexPath] && (objc_msgSend(pathCopy, "isEqual:", self->_expandedRowIndexPath) & 1) == 0)
    {
      v46 = [pathCopy row];
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
      v53 = viewCopy;
      v54 = v38;
      v43 = v38;
      [v42 performWithoutAnimation:v52];
    }

    else
    {
      [viewCopy beginUpdates];
      v12 = [(NSIndexPath *)self->_expandedRowIndexPath isEqual:pathCopy];
      v13 = v12;
      v14 = &OBJC_IVAR____SFFormAutoFillController__uniqueIDOfFocusedPasswordElementWithAutomaticPassword;
      v49 = pathCopy;
      v50 = viewCopy;
      if (self->_expandedRowIndexPath)
      {
        v47 = v12;
        v15 = [viewCopy cellForRowAtIndexPath:?];
        secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
        v45 = v15;
        detailTextLabel = [v15 detailTextLabel];
        [detailTextLabel setTextColor:secondaryLabelColor];

        section = [(NSIndexPath *)self->_expandedRowIndexPath section];
        v19 = [(NSIndexPath *)self->_expandedRowIndexPath row];
        array = [MEMORY[0x1E695DF70] array];
        if (self->_numberOfValuesInExpandedPreference >= 1)
        {
          v21 = 0;
          v22 = v19 + 1;
          do
          {
            v23 = [MEMORY[0x1E696AC88] indexPathForRow:v22 + v21 inSection:section];
            [array addObject:v23];

            ++v21;
          }

          while (v21 < self->_numberOfValuesInExpandedPreference);
        }

        viewCopy = v50;
        [v50 deleteRowsAtIndexPaths:array withRowAnimation:0];

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
        v26 = [viewCopy cellForRowAtIndexPath:pathCopy];
        tintColor = [viewCopy tintColor];
        detailTextLabel2 = [v26 detailTextLabel];
        [detailTextLabel2 setTextColor:tintColor];

        objc_storeStrong(&self->_expandedRowIndexPath, v8);
        v29 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v9];
        v30 = [v29 valuesForPreference:v9];
        *(&self->super.super.super.super.isa + v25) = [v30 count];

        section2 = [(NSIndexPath *)self->_expandedRowIndexPath section];
        v32 = [(NSIndexPath *)self->_expandedRowIndexPath row];
        array2 = [MEMORY[0x1E695DF70] array];
        if (*(&self->super.super.super.super.isa + v25) >= 1)
        {
          v34 = 0;
          v35 = v32 + 1;
          do
          {
            v36 = [MEMORY[0x1E696AC88] indexPathForRow:v35 + v34 inSection:section2];
            [array2 addObject:v36];

            ++v34;
          }

          while (v34 < *(&self->super.super.super.super.isa + v25));
        }

        viewCopy = v50;
        [v50 insertRowsAtIndexPaths:array2 withRowAnimation:0];

        pathCopy = v49;
        v9 = v51;
      }

      [viewCopy endUpdates];
    }
  }
}

- (BOOL)tableView:(id)view canFocusRowAtIndexPath:(id)path
{
  v5 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:path];
  v6 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v5];
  v7 = [_SFPerSitePreferencePopoverDisplayInformation popoverDisplayInformationForPerSitePreference:v6];
  displayOption = [v7 displayOption];

  return displayOption != 0;
}

- (void)switchTableViewCell:(id)cell didChangeSwitchState:(BOOL)state
{
  stateCopy = state;
  cellCopy = cell;
  tableView = [(_SFPerSitePreferencesPopoverViewController *)self tableView];
  v8 = [tableView indexPathForCell:cellCopy];

  if (v8)
  {
    v9 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceRowIndexPathForCellAtIndexPath:v8];
    v10 = [(_SFPerSitePreferencesPopoverViewController *)self _preferenceAtIndexPath:v9];

    identifier = [v10 identifier];
    v12 = WBSIsEqual();

    if (v12)
    {
      v13 = !stateCopy;
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
      v32 = cellCopy;
      v24 = [v22 actionWithTitle:v23 style:1 handler:v31];
      [v21 addAction:v24];

      v25 = MEMORY[0x1E69DC648];
      v26 = _WBSLocalizedString();
      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __87___SFPerSitePreferencesPopoverViewController_switchTableViewCell_didChangeSwitchState___block_invoke_2;
      v28[3] = &unk_1E8493B60;
      v28[4] = self;
      v30 = stateCopy;
      v29 = v10;
      v27 = [v25 actionWithTitle:v26 style:2 handler:v28];
      [v21 addAction:v27];

      [(_SFPerSitePreferencesPopoverViewController *)self presentViewController:v21 animated:1 completion:0];
    }

    else
    {
      v14 = [(_SFPerSitePreferencesVendor *)self->_perSitePreferencesVendor managerForPreference:v10];
      v15 = [_SFPerSitePreferencesUtilities preferenceValueForBoolValue:stateCopy preference:v10 preferenceManager:v14];
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