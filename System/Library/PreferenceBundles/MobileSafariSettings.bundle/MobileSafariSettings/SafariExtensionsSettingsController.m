@interface SafariExtensionsSettingsController
- (id)_adamIDsForInstalledAndCloudExtensions;
- (id)_adamIDsForInstalledExtensions;
- (id)_availableAppSpecifierWithLockupView:(id)a3;
- (id)_contentBlockerAndWebExtensionSpecifiers;
- (id)_contentBlockerManager;
- (id)_contentBlockerWrappers;
- (id)_shareAcrossDevicesSectionAndToggle;
- (id)_valueOfExtensionSpecifier:(id)a3;
- (id)_valueOfExtensionSyncSpecifier:(id)a3;
- (id)_webExtensionWrappers;
- (id)_webExtensionsController;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_cloudExtensionEligibilityStateDidChange:(id)a3;
- (void)_cloudExtensionStateOrPrimaryAppleAccountDidChange:(id)a3;
- (void)_extensionEnabledStateDidChange:(id)a3;
- (void)_filterExtensionAppLockupViews;
- (void)_managedConfigurationSettingsDidChange:(id)a3;
- (void)_moreExtensionsButtonTapped:(id)a3;
- (void)_reloadSpecifiersSoon:(BOOL)a3;
- (void)_setExtensionSyncValue:(id)a3 forSpecifier:(id)a4;
- (void)_updateLockupViews;
- (void)_updateRecommendedLockupViews;
- (void)contentBlockerManagerExtensionListDidChange:(id)a3;
- (void)extensionsControllerExtensionListDidChange:(id)a3;
@end

@implementation SafariExtensionsSettingsController

- (id)_webExtensionsController
{
  v2 = +[SafariSettingsController extensionsProfilesDataSource];
  v3 = [v2 profileServerIDToWebExtensionsControllers];
  v4 = [v3 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v4;
}

- (id)_contentBlockerManager
{
  v2 = +[SafariSettingsController extensionsProfilesDataSource];
  v3 = [v2 profileServerIDToContentBlockerManagers];
  v4 = [v3 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v4;
}

void __53__SafariExtensionsSettingsController_viewWillAppear___block_invoke(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __53__SafariExtensionsSettingsController_viewWillAppear___block_invoke_2;
  v2[3] = &unk_8A588;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

_BYTE *__53__SafariExtensionsSettingsController_viewWillAppear___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 147) = *(a1 + 40);
  v2 = +[WBSCloudExtensionStateManager sharedManager];
  v3 = [v2 manateeState];

  *(*(a1 + 32) + 148) = v3 < 2;
  v4 = *(a1 + 32);
  if (v4[147] == 1)
  {
    v5 = v4[148];
  }

  else
  {
    v5 = 0;
  }

  v4[146] = v5 & 1;
  v6 = +[WBSManagedExtensionsController sharedController];
  v7 = [v6 hasAnyExtensionManagement];

  if (v7)
  {
    *(*(a1 + 32) + 146) = 0;
  }

  result = *(a1 + 32);
  if (result[146] == 1)
  {

    return [result reloadSpecifiers];
  }

  return result;
}

- (id)specifiers
{
  v2 = OBJC_IVAR___PSListController__specifiers;
  v3 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    v7 = [(SafariExtensionsSettingsController *)self _contentBlockerAndWebExtensionSpecifiers];
    [v6 addObjectsFromArray:v7];

    v8 = +[WBSManagedFeatureAvailability sharedInstance];
    v9 = [v8 shouldHideExtensionDiscovery];

    if ((v9 & 1) == 0 && [(NSArray *)self->_filteredExtensionAppLockupViews count])
    {
      v10 = [PSSpecifier groupSpecifierWithID:@"AvailableExtensionsGroup"];
      v11 = SafariSettingsLocalizedString(@"On Other Devices Header", @"Extensions");
      [v10 setName:v11];

      [v6 addObject:v10];
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v12 = self->_filteredExtensionAppLockupViews;
      v13 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v40;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v40 != v15)
            {
              objc_enumerationMutation(v12);
            }

            v17 = [(SafariExtensionsSettingsController *)self _availableAppSpecifierWithLockupView:*(*(&v39 + 1) + 8 * i)];
            [v6 addObject:v17];
          }

          v14 = [(NSArray *)v12 countByEnumeratingWithState:&v39 objects:v44 count:16];
        }

        while (v14);
      }
    }

    if (self->_safariSyncEnabled)
    {
      v18 = [(SafariExtensionsSettingsController *)self _shareAcrossDevicesSectionAndToggle];
      [v6 addObjectsFromArray:v18];
    }

    if ((v9 & 1) == 0)
    {
      if ([(NSArray *)self->_filteredRecommendedAppLockupViews count]|| self->_waitingForLockupViews)
      {
        v19 = [PSSpecifier groupSpecifierWithID:@"RecommendedExtensionsGroup"];
        v20 = v19;
        if (self->_waitingForLockupViews)
        {
          [v19 setName:&stru_8BB60];
        }

        else
        {
          v21 = _WBSLocalizedString();
          [v20 setName:v21];
        }

        [v6 addObject:v20];
        if (self->_waitingForLockupViews)
        {
          v22 = [PSSpecifier preferenceSpecifierNamed:&stru_8BB60 target:0 set:0 get:0 detail:0 cell:13 edit:0];
          [(NSArray *)v22 setProperty:objc_opt_class() forKey:PSCellClassKey];
          [(NSArray *)v22 setProperty:@"SPINNER_CELL" forKey:PSIDKey];
          [v6 addObject:v22];
        }

        else
        {
          v37 = 0u;
          v38 = 0u;
          v35 = 0u;
          v36 = 0u;
          v22 = self->_filteredRecommendedAppLockupViews;
          v23 = [(NSArray *)v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(v22);
                }

                v27 = [(SafariExtensionsSettingsController *)self _availableAppSpecifierWithLockupView:*(*(&v35 + 1) + 8 * j)];
                [v6 addObject:v27];
              }

              v24 = [(NSArray *)v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }
        }
      }

      v28 = [PSSpecifier groupSpecifierWithID:@"WebExtensionsMoreExtensionsButtonGroup"];
      [v6 addObject:v28];
      v29 = [PSSpecifier alloc];
      v30 = SafariSettingsLocalizedString(@"More Extensions Button Title", @"Extensions");
      v31 = [v29 initWithName:v30 target:self set:0 get:0 detail:0 cell:13 edit:0];

      [v31 setButtonAction:"_moreExtensionsButtonTapped:"];
      [v6 addObject:v31];
    }

    v32 = [v6 copy];
    v33 = *&self->super.PSListController_opaque[v2];
    *&self->super.PSListController_opaque[v2] = v32;

    v4 = *&self->super.PSListController_opaque[v2];
  }

  return v4;
}

- (id)_shareAcrossDevicesSectionAndToggle
{
  v3 = +[NSMutableArray array];
  v4 = [PSSpecifier groupSpecifierWithID:@"ExtensionSyncEnabledGroup"];
  [v3 addObject:v4];
  v5 = _WBSLocalizedString();
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:"_setExtensionSyncValue:forSpecifier:" get:"_valueOfExtensionSyncSpecifier:" detail:0 cell:6 edit:0];

  v7 = +[WBSManagedExtensionsController sharedController];
  v8 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v7 hasAnyExtensionManagement] ^ 1);
  [v6 setProperty:v8 forKey:PSEnabledKey];

  [v6 setProperty:&__kCFBooleanTrue forKey:PSAllowMultilineTitleKey];
  [v3 addObject:v6];
  v9 = [v3 copy];

  return v9;
}

- (id)_availableAppSpecifierWithLockupView:(id)a3
{
  v3 = a3;
  v4 = [PSSpecifier preferenceSpecifierNamed:0 target:0 set:0 get:0 detail:0 cell:3 edit:0];
  [v4 setProperty:objc_opt_class() forKey:PSCellClassKey];
  v5 = [NSNumber numberWithDouble:UITableViewAutomaticDimension];
  [v4 setObject:v5 forKeyedSubscript:PSTableCellHeightKey];

  [v4 setUserInfo:v3];

  return v4;
}

- (id)_contentBlockerAndWebExtensionSpecifiers
{
  v36 = +[NSMutableArray array];
  v29 = [PSSpecifier groupSpecifierWithID:@"WebExtensionHeaderSpecifier"];
  v3 = SafariSettingsLocalizedString(@"Extensions List Header", @"Extensions");
  [v29 setName:v3];

  v4 = SafariSettingsLocalizedString(@"Extensions Footer Text", @"Extensions");
  [v29 setProperty:v4 forKey:PSFooterTextGroupKey];

  [v36 addObject:v29];
  v5 = [(SafariExtensionsSettingsController *)self _webExtensionWrappers];
  v6 = [(SafariExtensionsSettingsController *)self _contentBlockerWrappers];
  v7 = [v5 arrayByAddingObjectsFromArray:v6];
  v28 = [v7 sortedArrayUsingSelector:"localizedCompare:"];

  if ([v28 count])
  {
    v38 = [(SafariExtensionsSettingsController *)self _webExtensionsController];
    v35 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v38 parentalControlsAreEnabledForExtensions] ^ 1);
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v28;
    v37 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
    if (v37)
    {
      v34 = *v45;
      v30 = kISImageDescriptorTableUIName;
      v33 = PSIconImageKey;
      v31 = PSUseModernLayoutKey;
      v32 = PSEnabledKey;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v45 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v44 + 1) + 8 * i);
          v10 = [v9 displayName];
          if ([v9 contentBlockerHasSameNameAsWebExtensionFromSameApp:obj])
          {
            v11 = SafariSettingsLocalizedString(@"%@ — Content Blocker", @"Extensions");
            v12 = [v9 displayName];
            v13 = [NSString stringWithFormat:v11, v12];

            v10 = v13;
          }

          v14 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v10, self, 0, "_valueOfExtensionSpecifier:", [v9 settingsPermissionClass], 2, 0);
          objc_initWeak(&location, self);
          v15 = [v9 extension];
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = __78__SafariExtensionsSettingsController__contentBlockerAndWebExtensionSpecifiers__block_invoke;
          v40[3] = &unk_8A408;
          v40[4] = v9;
          objc_copyWeak(&v42, &location);
          v16 = v14;
          v41 = v16;
          [v38 _isExtensionBlockedByBlocklist:v15 completionHandler:v40];

          if ([v9 isContentBlocker])
          {
            goto LABEL_12;
          }

          v17 = [v9 extension];
          v18 = [v38 webExtensionForExtension:v17];

          if (!v18)
          {
            goto LABEL_12;
          }

          v19 = [v18 preferencesIcon];
          v20 = [ISImageDescriptor imageDescriptorNamed:v30];
          [v20 size];
          v21 = [WBSImageUtilities resizedImage:v19 withSize:?];

          if (!v21)
          {
LABEL_12:
            v22 = [v9 extension];
            v23 = [v22 _plugIn];
            v24 = [v23 uuid];
            v25 = [LSPlugInKitProxy pluginKitProxyForUUID:v24];

            v21 = [UIImage _iconForResourceProxy:v25 format:0];
          }

          [v16 setProperty:v21 forKey:v33];
          [v16 setProperty:v35 forKey:v32];
          [v16 setProperty:&__kCFBooleanTrue forKey:v31];
          [v16 setUserInfo:v9];
          [v36 addObject:v16];

          objc_destroyWeak(&v42);
          objc_destroyWeak(&location);
        }

        v37 = [obj countByEnumeratingWithState:&v44 objects:v48 count:16];
      }

      while (v37);
    }
  }

  else
  {
    v26 = SafariSettingsLocalizedString(@"Extensions List Header - No Extensions Available", @"Extensions");
    [v29 setName:v26];
  }

  return v36;
}

void __78__SafariExtensionsSettingsController__contentBlockerAndWebExtensionSpecifiers__block_invoke(id *a1, int a2)
{
  v4 = [a1[4] isContentBlocker];
  if (a2)
  {
    if ((v4 & 1) == 0)
    {
      v5[0] = _NSConcreteStackBlock;
      v5[1] = 3221225472;
      v5[2] = __78__SafariExtensionsSettingsController__contentBlockerAndWebExtensionSpecifiers__block_invoke_2;
      v5[3] = &unk_89BE8;
      objc_copyWeak(&v7, a1 + 6);
      v6 = a1[5];
      dispatch_async(&_dispatch_main_q, v5);

      objc_destroyWeak(&v7);
    }
  }
}

void __78__SafariExtensionsSettingsController__contentBlockerAndWebExtensionSpecifiers__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained removeSpecifier:*(a1 + 32)];
    WeakRetained = v3;
  }
}

- (id)_webExtensionWrappers
{
  v3 = [(SafariExtensionsSettingsController *)self _webExtensionsController];
  v4 = [v3 extensions];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __59__SafariExtensionsSettingsController__webExtensionWrappers__block_invoke;
  v8[3] = &unk_8A378;
  v9 = v3;
  v5 = v3;
  v6 = [v4 safari_mapAndFilterObjectsUsingBlock:v8];

  self->_showingExtensions = [v6 count] != 0;

  return v6;
}

id __59__SafariExtensionsSettingsController__webExtensionWrappers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) webExtensionForExtension:a2];
  v4 = [v3 composedIdentifier];
  v5 = [SFExtensionWrapper extensionWrapperForWebExtensionWithComposedIdentifier:v4 webExtensionsController:*(a1 + 32)];

  return v5;
}

- (id)_contentBlockerWrappers
{
  v3 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(SafariExtensionsSettingsController *)self _contentBlockerManager];
    v6 = [v5 extensions];
    *buf = 138477827;
    v22 = v6;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_INFO, "Creating content blocker wrappers for: %{private}@", buf, 0xCu);
  }

  v7 = [(SafariExtensionsSettingsController *)self _webExtensionsController];
  v8 = [(SafariExtensionsSettingsController *)self _contentBlockerManager];
  v9 = [v8 extensions];
  v10 = [v9 allObjects];
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = __61__SafariExtensionsSettingsController__contentBlockerWrappers__block_invoke;
  v18 = &unk_8A3A0;
  v19 = v7;
  v20 = self;
  v11 = v7;
  v12 = [v10 safari_mapAndFilterObjectsUsingBlock:&v15];

  v13 = WBS_LOG_CHANNEL_PREFIXExtensions();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v22 = v12;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_INFO, "Created content blocker wrappers: %{private}@", buf, 0xCu);
  }

  self->_showingContentBlockers = [v12 count] != 0;

  return v12;
}

id __61__SafariExtensionsSettingsController__contentBlockerWrappers__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) composedIdentifierForExtensionStateForExtension:a2];
  v4 = [*(a1 + 40) _contentBlockerManager];
  v5 = [SFExtensionWrapper extensionWrapperForContentBlockerWithComposedIdentifier:v3 contentBlockerManager:v4];

  return v5;
}

- (id)_valueOfExtensionSpecifier:(id)a3
{
  v3 = [a3 userInfo];
  v4 = [v3 isEnabled];
  if (v4 && [v3 isEnabledInAllNamedProfiles])
  {
    v5 = @"On Text";
LABEL_8:
    v9 = SafariSettingsLocalizedString(v5, @"Extensions");
    goto LABEL_19;
  }

  if (([v3 isEnabledInAnyProfile] & 1) == 0)
  {
    v5 = @"Off Text";
    goto LABEL_8;
  }

  v6 = [v3 enabledNamedProfiles];
  if (v6)
  {
    v7 = [v3 enabledNamedProfiles];
    v8 = [v7 mutableCopy];
  }

  else
  {
    v8 = +[NSMutableArray array];
  }

  if (v4)
  {
    v10 = +[SafariSettingsController tabGroupManager];
    v11 = [v10 defaultProfile];
    [v8 insertObject:v11 atIndex:0];
  }

  if ([v8 count] == &dword_0 + 1)
  {
    v12 = [v8 firstObject];
    v9 = [v12 title];
  }

  else
  {
    v13 = [v8 count];
    v12 = [v8 objectAtIndexedSubscript:0];
    v14 = [v12 title];
    v15 = [v8 objectAtIndexedSubscript:1];
    v16 = [v15 title];
    v17 = v16;
    if (v13 == &dword_0 + 2)
    {
      [NSString stringWithFormat:@"%@, %@", v14, v16, v19];
    }

    else
    {
      +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@, %@, +%lu", v14, v16, [v8 count] - 2);
    }
    v9 = ;
  }

LABEL_19:

  return v9;
}

- (void)_moreExtensionsButtonTapped:(id)a3
{
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v3 = [NSURL URLWithString:appStoreSafariExtensionsCategoryURLString];
  [v4 openURL:v3 withOptions:0];
}

- (id)_valueOfExtensionSyncSpecifier:(id)a3
{
  v3 = +[WBSCloudExtensionStateManager sharedManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isExtensionSyncEnabled]);

  return v4;
}

- (void)_setExtensionSyncValue:(id)a3 forSpecifier:(id)a4
{
  v4 = [a3 BOOLValue];
  v5 = +[WBSCloudExtensionStateManager sharedManager];
  [v5 setExtensionSyncEnabled:v4];
}

- (void)_updateLockupViews
{
  v3 = +[WBSManagedFeatureAvailability sharedInstance];
  v4 = [v3 shouldHideExtensionDiscovery];

  if (v4)
  {
    if ([(NSArray *)self->_filteredExtensionAppLockupViews count])
    {
      v5 = 1;
    }

    else
    {
      v5 = [(NSArray *)self->_filteredRecommendedAppLockupViews count]!= 0;
    }

    extensionAppLockupViews = self->_extensionAppLockupViews;
    self->_extensionAppLockupViews = 0;

    filteredExtensionAppLockupViews = self->_filteredExtensionAppLockupViews;
    self->_filteredExtensionAppLockupViews = 0;

    recommendedAppLockupViews = self->_recommendedAppLockupViews;
    self->_recommendedAppLockupViews = 0;

    filteredRecommendedAppLockupViews = self->_filteredRecommendedAppLockupViews;
    self->_filteredRecommendedAppLockupViews = 0;

    if (v5)
    {

      [(SafariExtensionsSettingsController *)self reloadSpecifiers];
    }
  }

  else if (!self->_waitingForLockupViews)
  {
    self->_waitingForLockupViews = 1;
    v6 = +[WBSCloudExtensionStateManager sharedManager];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __56__SafariExtensionsSettingsController__updateLockupViews__block_invoke;
    v11[3] = &unk_897B8;
    v11[4] = self;
    [v6 getLockupViewsForAppsOnOtherDevicesWithCompletionHandler:v11];
  }
}

void __56__SafariExtensionsSettingsController__updateLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (([v6 isEqual:*(*(a1 + 32) + 152)] & 1) == 0)
  {
    v3 = [v6 copy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 152);
    *(v4 + 152) = v3;

    [*(a1 + 32) _filterExtensionAppLockupViews];
    [*(a1 + 32) reloadSpecifiers];
    [*(a1 + 32) _updateRecommendedLockupViews];
  }
}

- (void)_updateRecommendedLockupViews
{
  if ([(NSArray *)self->_recommendedAppLockupViews count])
  {
    self->_waitingForLockupViews = 0;
    [(SafariExtensionsSettingsController *)self _filterExtensionAppLockupViews];

    [(SafariExtensionsSettingsController *)self reloadSpecifiers];
  }

  else
  {
    v3 = +[WBSASCLockupViewGenerator sharedGenerator];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = __67__SafariExtensionsSettingsController__updateRecommendedLockupViews__block_invoke;
    v4[3] = &unk_897B8;
    v4[4] = self;
    [v3 getAvailableAppsFromAppStoreExtensionEditorialContentWithCompletionHandler:v4];
  }
}

void __67__SafariExtensionsSettingsController__updateRecommendedLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[WBSASCLockupViewGenerator sharedGenerator];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __67__SafariExtensionsSettingsController__updateRecommendedLockupViews__block_invoke_2;
  v5[3] = &unk_897B8;
  v5[4] = *(a1 + 32);
  [v4 generateLockupViewsForAvailableApps:v3 lockupViewType:2 maintainRequestedOrderOfApps:1 completionHandler:v5];
}

void __67__SafariExtensionsSettingsController__updateRecommendedLockupViews__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 149) = 0;
  v7 = v3;
  if (([v3 isEqual:*(*(a1 + 32) + 168)] & 1) == 0)
  {
    v4 = [v7 copy];
    v5 = *(a1 + 32);
    v6 = *(v5 + 168);
    *(v5 + 168) = v4;

    [*(a1 + 32) _filterExtensionAppLockupViews];
    [*(a1 + 32) reloadSpecifiers];
  }
}

- (id)_adamIDsForInstalledAndCloudExtensions
{
  v3 = objc_alloc_init(NSMutableSet);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = self->_extensionAppLockupViews;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v15 + 1) + 8 * i) lockup];
        v10 = [v9 id];
        v11 = [v10 stringValue];
        [v3 safari_addObjectUnlessNil:v11];
      }

      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [(SafariExtensionsSettingsController *)self _adamIDsForInstalledExtensions];
  v13 = [v12 setByAddingObjectsFromSet:v3];

  return v13;
}

- (id)_adamIDsForInstalledExtensions
{
  v3 = objc_alloc_init(NSMutableSet);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = [(SafariExtensionsSettingsController *)self _webExtensionWrappers];
  v5 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v24 + 1) + 8 * i) extension];
        v10 = [v9 safari_containingAppAdamID];
        [v3 safari_addObjectUnlessNil:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v6);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = [(SafariExtensionsSettingsController *)self _contentBlockerWrappers];
  v12 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (j = 0; j != v13; j = j + 1)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * j) extension];
        v17 = [v16 safari_containingAppAdamID];
        [v3 safari_addObjectUnlessNil:v17];
      }

      v13 = [v11 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v13);
  }

  v18 = [v3 copy];

  return v18;
}

- (void)_filterExtensionAppLockupViews
{
  v3 = [(SafariExtensionsSettingsController *)self _adamIDsForInstalledExtensions];
  extensionAppLockupViews = self->_extensionAppLockupViews;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __68__SafariExtensionsSettingsController__filterExtensionAppLockupViews__block_invoke;
  v15[3] = &unk_8B270;
  v16 = v3;
  v5 = v3;
  v6 = [(NSArray *)extensionAppLockupViews safari_filterObjectsUsingBlock:v15];
  filteredExtensionAppLockupViews = self->_filteredExtensionAppLockupViews;
  self->_filteredExtensionAppLockupViews = v6;

  v8 = [(SafariExtensionsSettingsController *)self _adamIDsForInstalledAndCloudExtensions];
  recommendedAppLockupViews = self->_recommendedAppLockupViews;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __68__SafariExtensionsSettingsController__filterExtensionAppLockupViews__block_invoke_2;
  v13[3] = &unk_8B270;
  v14 = v8;
  v10 = v8;
  v11 = [(NSArray *)recommendedAppLockupViews safari_filterObjectsUsingBlock:v13];
  filteredRecommendedAppLockupViews = self->_filteredRecommendedAppLockupViews;
  self->_filteredRecommendedAppLockupViews = v11;
}

uint64_t __68__SafariExtensionsSettingsController__filterExtensionAppLockupViews__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lockup];
  v4 = [v3 id];
  v5 = [v4 stringValue];
  LODWORD(v2) = [v2 containsObject:v5];

  return v2 ^ 1;
}

uint64_t __68__SafariExtensionsSettingsController__filterExtensionAppLockupViews__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 lockup];
  v4 = [v3 id];
  v5 = [v4 stringValue];
  LODWORD(v2) = [v2 containsObject:v5];

  return v2 ^ 1;
}

- (void)_reloadSpecifiersSoon:(BOOL)a3
{
  if (a3)
  {
    objc_initWeak(&location, self);
    [(NSTimer *)self->_reloadSpecifiersTimer invalidate];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __60__SafariExtensionsSettingsController__reloadSpecifiersSoon___block_invoke;
    v6[3] = &unk_8AF20;
    objc_copyWeak(&v7, &location);
    v4 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:v6 block:0.5];
    reloadSpecifiersTimer = self->_reloadSpecifiersTimer;
    self->_reloadSpecifiersTimer = v4;

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {

    [(SafariExtensionsSettingsController *)self reloadSpecifiers];
  }
}

void __60__SafariExtensionsSettingsController__reloadSpecifiersSoon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained reloadSpecifiers];
    WeakRetained = v2;
  }
}

- (void)_managedConfigurationSettingsDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __77__SafariExtensionsSettingsController__managedConfigurationSettingsDidChange___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

id __77__SafariExtensionsSettingsController__managedConfigurationSettingsDidChange___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _reloadSpecifiersSoon:0];
  v2 = *(a1 + 32);

  return [v2 _updateLockupViews];
}

- (void)_extensionEnabledStateDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__SafariExtensionsSettingsController__extensionEnabledStateDidChange___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudExtensionStateOrPrimaryAppleAccountDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __89__SafariExtensionsSettingsController__cloudExtensionStateOrPrimaryAppleAccountDidChange___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudExtensionEligibilityStateDidChange:(id)a3
{
  v4 = +[WBSCloudExtensionStateManager sharedManager];
  self->_manateeAvailable = [v4 manateeState] == &dword_0 + 1;

  v5 = self->_primaryAccountHasSafariSyncEnabled && self->_manateeAvailable;
  v6 = v5;
  if (self->_safariSyncEnabled != v6)
  {
    self->_safariSyncEnabled = v6;

    [(SafariExtensionsSettingsController *)self reloadSpecifiers];
  }
}

- (void)contentBlockerManagerExtensionListDidChange:(id)a3
{
  [(SafariExtensionsSettingsController *)self _reloadSpecifiersSoon:self->_showingContentBlockers];

  [(SafariExtensionsSettingsController *)self _updateLockupViews];
}

- (void)extensionsControllerExtensionListDidChange:(id)a3
{
  [(SafariExtensionsSettingsController *)self _reloadSpecifiersSoon:self->_showingExtensions];

  [(SafariExtensionsSettingsController *)self _updateLockupViews];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = SafariExtensionsSettingsController;
  v7 = [(SafariExtensionsSettingsController *)&v15 tableView:v6 cellForRowAtIndexPath:a4];
  v8 = [v7 textLabel];
  [v8 setNumberOfLines:2];

  v9 = [v7 detailTextLabel];
  [v9 setNumberOfLines:2];

  v10 = [v7 detailTextLabel];
  [v10 setLineBreakMode:5];

  [v7 frame];
  Width = CGRectGetWidth(v17);
  if (Width != 0.0)
  {
    v12 = Width + Width / -3.0;
    v13 = [v7 textLabel];
    [v13 setPreferredMaxLayoutWidth:v12];
  }

  [v6 setSelfSizingInvalidation:2];

  return v7;
}

@end