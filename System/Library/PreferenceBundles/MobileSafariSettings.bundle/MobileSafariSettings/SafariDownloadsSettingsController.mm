@interface SafariDownloadsSettingsController
- (id)_downloadSettings;
- (id)_itemManager;
- (id)_specifiersForDownloadExpirationInterval;
- (id)specifiers;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_setDefaultDownloadsLocationItem:(id)a3;
- (void)_setDownloadsLocationForProviderDomain:(id)a3;
- (void)_showFolderPicker;
- (void)_updateFooterWithProviderDomain:(id)a3;
- (void)_updateSelectedFolder;
- (void)_updateSpecifiersWithProviderDomains:(id)a3;
- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
@end

@implementation SafariDownloadsSettingsController

- (id)_downloadSettings
{
  downloadSettings = self->_downloadSettings;
  if (!downloadSettings)
  {
    v4 = objc_alloc_init(DOCDownloadSettings);
    v5 = self->_downloadSettings;
    self->_downloadSettings = v4;

    downloadSettings = self->_downloadSettings;
  }

  v6 = downloadSettings;

  return v6;
}

- (id)_itemManager
{
  itemManager = self->_itemManager;
  if (!itemManager)
  {
    v4 = objc_alloc_init(FPItemManager);
    v5 = self->_itemManager;
    self->_itemManager = v4;

    itemManager = self->_itemManager;
  }

  v6 = itemManager;

  return v6;
}

- (id)_specifiersForDownloadExpirationInterval
{
  v3 = [PSSpecifier groupSpecifierWithID:@"DownloadExpirationIntervalGroup"];
  v4 = SafariSettingsLocalizedString(@"Downloads Expiration Interval Title", @"Downloads");
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  v15[0] = PSContainerBundleIDKey;
  v15[1] = PSDefaultValueKey;
  v16[0] = @"com.apple.mobilesafari";
  v16[1] = &off_90C70;
  v15[2] = PSDefaultsKey;
  v15[3] = PSIDKey;
  v16[2] = @"com.apple.mobilesafari";
  v16[3] = @"DOWNLOADS_EXPIRATION_INTERVAL";
  v15[4] = PSKeyNameKey;
  v16[4] = _SFDownloadExpirationIntervalDefaultsKey;
  v6 = [NSDictionary dictionaryWithObjects:v16 forKeys:v15 count:5];
  [v5 setProperties:v6];

  v7 = SafariSettingsLocalizedString(@"Downloads Expiration Interval - 1 Day", @"Downloads");
  v14[0] = v7;
  v8 = SafariSettingsLocalizedString(@"Downloads Expiration Interval - Upon Successful Download", @"Downloads");
  v14[1] = v8;
  v9 = SafariSettingsLocalizedString(@"Downloads Expiration Interval - Manually", @"Downloads");
  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];

  [v5 setValues:&off_90D40 titles:v10];
  v13[0] = v3;
  v13[1] = v5;
  v11 = [NSArray arrayWithObjects:v13 count:2];

  return v11;
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
    objc_initWeak(&location, self);
    v6 = +[NSMutableArray array];
    v7 = SafariSettingsLocalizedString(@"Downloads Folder Setting Header", @"Downloads");
    v8 = [PSSpecifier groupSpecifierWithName:v7];
    downloadsFolderGroupSpecifier = self->_downloadsFolderGroupSpecifier;
    self->_downloadsFolderGroupSpecifier = v8;

    [v6 addObject:self->_downloadsFolderGroupSpecifier];
    v10 = SafariSettingsLocalizedString(@"Other Button Title", @"Downloads");
    v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:0 get:0 detail:0 cell:3 edit:0];
    selectOtherFolderSpecifier = self->_selectOtherFolderSpecifier;
    self->_selectOtherFolderSpecifier = v11;

    [(PSSpecifier *)self->_selectOtherFolderSpecifier setAccessibilityIdentifier:@"OtherFolderButton"];
    [(PSSpecifier *)self->_selectOtherFolderSpecifier setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v13 = self->_selectOtherFolderSpecifier;
    if (blankImage_onceToken != -1)
    {
      [SafariDownloadsSettingsController specifiers];
    }

    v14 = blankImage_image;
    [(PSSpecifier *)v13 setProperty:v14 forKey:PSIconImageKey];

    [v6 addObject:self->_selectOtherFolderSpecifier];
    v15 = [(SafariDownloadsSettingsController *)self _specifiersForDownloadExpirationInterval];
    [v6 addObjectsFromArray:v15];

    objc_storeStrong(&self->super.PSListController_opaque[v2], v6);
    [(SafariDownloadsSettingsController *)self reload];
    v16 = [(SafariDownloadsSettingsController *)self _downloadSettings];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = __47__SafariDownloadsSettingsController_specifiers__block_invoke;
    v18[3] = &unk_89C10;
    objc_copyWeak(&v19, &location);
    [v16 fetchProvidersSuitableForDownloads:v18];

    v4 = *&self->super.PSListController_opaque[v2];
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }

  return v4;
}

void __47__SafariDownloadsSettingsController_specifiers__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __47__SafariDownloadsSettingsController_specifiers__block_invoke_cold_1(v7);
    }
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __47__SafariDownloadsSettingsController_specifiers__block_invoke_75;
    v8[3] = &unk_89BE8;
    objc_copyWeak(&v10, (a1 + 32));
    v9 = v5;
    dispatch_async(&_dispatch_main_q, v8);

    objc_destroyWeak(&v10);
  }
}

void __47__SafariDownloadsSettingsController_specifiers__block_invoke_75(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _updateSpecifiersWithProviderDomains:*(a1 + 32)];
}

- (void)_updateSpecifiersWithProviderDomains:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v21;
    v8 = PSCellClassKey;
    v9 = PSIDKey;
    do
    {
      v10 = 0;
      do
      {
        if (*v21 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v20 + 1) + 8 * v10);
        v12 = DOCLocalizedDisplayName();
        v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:0 cell:3 edit:0];

        v14 = [v11 identifier];
        [v13 setAccessibilityIdentifier:v14];

        [v13 setProperty:objc_opt_class() forKey:v8];
        v15 = [v11 identifier];
        [v13 setProperty:v15 forKey:v9];

        v24 = @"providerDomain";
        v25 = v11;
        v16 = [NSDictionary dictionaryWithObjects:&v25 forKeys:&v24 count:1];
        [v13 setUserInfo:v16];

        [(NSMutableArray *)v4 addObject:v13];
        v10 = v10 + 1;
      }

      while (v6 != v10);
      v6 = [obj countByEnumeratingWithState:&v20 objects:v26 count:16];
    }

    while (v6);
  }

  [(SafariDownloadsSettingsController *)self insertContiguousSpecifiers:v4 atIndex:[(SafariDownloadsSettingsController *)self indexOfSpecifier:self->_selectOtherFolderSpecifier] animated:1];
  providerSpecifiers = self->_providerSpecifiers;
  self->_providerSpecifiers = v4;

  [(SafariDownloadsSettingsController *)self _updateSelectedFolder];
}

- (void)_updateSelectedFolder
{
  v3 = [(SafariDownloadsSettingsController *)self _downloadSettings];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke;
  v4[3] = &unk_89C38;
  v4[4] = self;
  [v3 fetchDefaultDownloadsLocationItem:v4];
}

void __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke_cold_1(v7);
    }

    v8 = *(a1 + 32);
    v9 = *(v8 + 184);
    *(v8 + 184) = 0;
  }

  else
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke_79;
    v10[3] = &unk_896A0;
    v10[4] = *(a1 + 32);
    v11 = v5;
    dispatch_async(&_dispatch_main_q, v10);
  }
}

void __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke_79(uint64_t a1)
{
  v2 = PSAccessoryKey;
  [*(*(a1 + 32) + 168) setProperty:&off_90B20 forKey:PSAccessoryKey];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) providerDomainID];
  v5 = [v3 specifierForID:v4];

  v6 = [v5 userInfo];
  v13 = [v6 mutableCopy];

  [v13 setObject:*(a1 + 40) forKeyedSubscript:@"providerItem"];
  [v5 setUserInfo:v13];
  [v5 setProperty:&off_90B08 forKey:v2];
  v7 = *(a1 + 32);
  v8 = *(v7 + 168);
  *(v7 + 168) = v5;
  v9 = v5;

  objc_storeStrong((*(a1 + 32) + 184), *(a1 + 40));
  v10 = *(a1 + 32);
  v11 = [v9 userInfo];
  v12 = [v11 objectForKeyedSubscript:@"providerDomain"];
  [v10 _updateFooterWithProviderDomain:v12];
}

- (void)_updateFooterWithProviderDomain:(id)a3
{
  v9 = a3;
  v4 = [v9 providerID];
  if ([v9 isiCloudDriveProvider])
  {
    v5 = @"iCloud Footer Text";
LABEL_5:
    v6 = SafariSettingsLocalizedString(v5, @"Downloads");
    goto LABEL_7;
  }

  if ([v4 isEqualToString:DOCDocumentSourceIdentifierLocal])
  {
    v5 = @"Local Footer Text";
    goto LABEL_5;
  }

  v7 = SafariSettingsLocalizedString(@"Other Provider Footer Text", @"Downloads");
  v8 = DOCLocalizedDisplayName();
  v6 = [NSString stringWithFormat:v7, v8];

LABEL_7:
  [(PSSpecifier *)self->_downloadsFolderGroupSpecifier setProperty:v6 forKey:PSFooterTextGroupKey];
  [(SafariDownloadsSettingsController *)self reloadSpecifier:self->_downloadsFolderGroupSpecifier animated:1];
}

- (void)_setDownloadsLocationForProviderDomain:(id)a3
{
  v4 = a3;
  v5 = [(SafariDownloadsSettingsController *)self _downloadSettings];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __76__SafariDownloadsSettingsController__setDownloadsLocationForProviderDomain___block_invoke;
  v7[3] = &unk_89C60;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 setDefaultDownloadsItemForProviderDomain:v6 completionHandler:v7];
}

void __76__SafariDownloadsSettingsController__setDownloadsLocationForProviderDomain___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__SafariDownloadsSettingsController__setDownloadsLocationForProviderDomain___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v6 = +[WBSAnalyticsLogger sharedLogger];
    v7 = [*(a1 + 32) identifier];
    [v6 didSetDownloadFolderToProviderWithIdentifier:v7 isDefaultFolder:1];

    [*(a1 + 40) _updateSelectedFolder];
  }
}

- (void)_setDefaultDownloadsLocationItem:(id)a3
{
  v4 = a3;
  v5 = [(SafariDownloadsSettingsController *)self _downloadSettings];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __70__SafariDownloadsSettingsController__setDefaultDownloadsLocationItem___block_invoke;
  v7[3] = &unk_89C88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  [v5 setDefaultDownloadsLocationItem:v6 completionHandler:v7];
}

void __70__SafariDownloadsSettingsController__setDefaultDownloadsLocationItem___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __76__SafariDownloadsSettingsController__setDownloadsLocationForProviderDomain___block_invoke_cold_1(v5);
    }
  }

  else
  {
    v6 = +[WBSAnalyticsLogger sharedLogger];
    v7 = [*(a1 + 32) providerDomainID];
    [v6 didSetDownloadFolderToProviderWithIdentifier:v7 isDefaultFolder:{objc_msgSend(*(a1 + 32), "folderType") == &dword_4}];

    [*(a1 + 40) _updateSelectedFolder];
  }
}

- (void)_showFolderPicker
{
  v3 = [UIDocumentPickerViewController alloc];
  v11 = kUTTypeFolder;
  v4 = [NSArray arrayWithObjects:&v11 count:1];
  v5 = [v3 initWithDocumentTypes:v4 inMode:1];

  [v5 setDelegate:self];
  [v5 setAllowsMultipleSelection:0];
  if (objc_opt_respondsToSelector())
  {
    [v5 _setForPickingDownloadsFolder:1];
  }

  if (self->_cachedDownloadsLocationItem)
  {
    v6 = [(SafariDownloadsSettingsController *)self _itemManager];
    cachedDownloadsLocationItem = self->_cachedDownloadsLocationItem;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __54__SafariDownloadsSettingsController__showFolderPicker__block_invoke;
    v8[3] = &unk_89CD8;
    v9 = v5;
    v10 = self;
    [v6 fetchURLForItem:cachedDownloadsLocationItem completionHandler:v8];
  }

  else
  {
    [(SafariDownloadsSettingsController *)self presentViewController:v5 animated:1 completion:0];
  }
}

void __54__SafariDownloadsSettingsController__showFolderPicker__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __54__SafariDownloadsSettingsController__showFolderPicker__block_invoke_2;
  block[3] = &unk_89CB0;
  v6 = *(a1 + 32);
  v7 = v3;
  v8 = *(a1 + 40);
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);
}

id __54__SafariDownloadsSettingsController__showFolderPicker__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setDirectoryURL:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 presentViewController:v3 animated:1 completion:0];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v15.receiver = self;
  v15.super_class = SafariDownloadsSettingsController;
  v6 = a4;
  v7 = [(SafariDownloadsSettingsController *)&v15 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SafariDownloadsSettingsController *)self specifierAtIndexPath:v6, v15.receiver, v15.super_class];

  [v7 setIsAccessibilityElement:1];
  v9 = [v8 accessibilityIdentifier];
  [v7 setAccessibilityIdentifier:v9];

  v10 = [v8 properties];
  v11 = [v10 objectForKeyedSubscript:PSIDKey];
  v12 = [v11 isEqualToString:@"DOWNLOADS_EXPIRATION_INTERVAL"];

  if (v12)
  {
    v13 = [v7 textLabel];
    [v13 setNumberOfLines:0];
  }

  return v7;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(SafariDownloadsSettingsController *)self specifierAtIndexPath:v7];
  v9 = v8;
  if (v8 == self->_selectOtherFolderSpecifier)
  {
    [v6 deselectRowAtIndexPath:v7 animated:1];
    [(SafariDownloadsSettingsController *)self _showFolderPicker];
  }

  else
  {
    v10 = [(PSSpecifier *)v8 userInfo];
    v11 = [v10 objectForKeyedSubscript:@"providerDomain"];

    if (v11)
    {
      [(SafariDownloadsSettingsController *)self _setDownloadsLocationForProviderDomain:v11];
    }

    v12.receiver = self;
    v12.super_class = SafariDownloadsSettingsController;
    [(SafariSettingsListController *)&v12 tableView:v6 didSelectRowAtIndexPath:v7];
  }
}

- (void)documentPicker:(id)a3 didPickDocumentsAtURLs:(id)a4
{
  v5 = a4;
  if ([v5 count])
  {
    v6 = [(SafariDownloadsSettingsController *)self _itemManager];
    v7 = [v5 firstObject];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = __75__SafariDownloadsSettingsController_documentPicker_didPickDocumentsAtURLs___block_invoke;
    v9[3] = &unk_89C60;
    v10 = v5;
    v11 = self;
    [v6 fetchItemForURL:v7 completionHandler:v9];
  }

  else
  {
    v8 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [SafariDownloadsSettingsController documentPicker:v8 didPickDocumentsAtURLs:?];
    }
  }
}

void __75__SafariDownloadsSettingsController_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 40) _setDefaultDownloadsLocationItem:a2];
  }

  else
  {
    v6 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __75__SafariDownloadsSettingsController_documentPicker_didPickDocumentsAtURLs___block_invoke_cold_1(a1, v6);
    }
  }
}

void __47__SafariDownloadsSettingsController_specifiers__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_0, v1, OS_LOG_TYPE_FAULT, "Fetching file provider domains failed: %{public}@", v4, 0xCu);
}

void __58__SafariDownloadsSettingsController__updateSelectedFolder__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to fetch default downloads location item: %{public}@", v6, v7, v8, v9, v10);
}

void __76__SafariDownloadsSettingsController__setDownloadsLocationForProviderDomain___block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Setting default downloads location item failed: %{public}@", v6, v7, v8, v9, v10);
}

void __75__SafariDownloadsSettingsController_documentPicker_didPickDocumentsAtURLs___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v2 firstObject];
  objc_claimAutoreleasedReturnValue();
  v4 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  v5 = 138478083;
  v6 = v2;
  v7 = 2114;
  v8 = v4;
  _os_log_error_impl(&dword_0, v3, OS_LOG_TYPE_ERROR, "Could not fetch FPItem for URL %{private}@: %{public}@", &v5, 0x16u);
}

@end