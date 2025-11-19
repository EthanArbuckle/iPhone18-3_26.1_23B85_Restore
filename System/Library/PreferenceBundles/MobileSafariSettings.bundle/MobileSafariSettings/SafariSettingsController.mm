@interface SafariSettingsController
+ (SFExtensionsProfilesDataSource)extensionsProfilesDataSource;
+ (WBSPrivacyProxyAvailabilityManager)privacyProxyAvailabilityManager;
+ (WBTabGroupManager)tabGroupManager;
+ (id)_alertToDeleteBrowsingDataFiles:(id)a3 importedDataClassification:(int64_t)a4;
+ (id)_createTabGroupManagerForClearingHistory;
+ (id)_tabCollection;
+ (void)initialize;
- (BOOL)_areContentBlockersEnabled;
- (BOOL)_isCloudHistoryEnabled;
- (BOOL)isAutoFillAvailable:(id)a3;
- (BOOL)isBlockAllNewWebsiteDataRestricted:(id)a3;
- (BOOL)isFavoritesFolderRestricted:(id)a3;
- (BOOL)isLockedPrivateBrowsingRestricted:(id)a3;
- (BOOL)isTabBarAvailable:(id)a3;
- (BOOL)isTrackerProtectionRestricted:(id)a3;
- (SafariSettingsController)init;
- (id)_biometryNameForLockedPrivateBrowsingToggle;
- (id)_defaultWebExtensionController;
- (id)_hideInternetAddressDetailText;
- (id)_newTabsOpenWithSpecifier;
- (id)_specifierForClosingTabsAutomatically;
- (id)_specifierForEnablingBackgroundColorInTabBar;
- (id)_specifierForEnablingFavoritesBarIcons;
- (id)_specifierForEnablingPerSiteSettingSync;
- (id)_specifierForEnablingStandaloneTabBar;
- (id)_specifierForExportButton;
- (id)_specifierForHTTPSOnly;
- (id)_specifierForImportButton;
- (id)_specifierForNewDocumentShortcutBehavior;
- (id)_specifierForNewProfile;
- (id)_specifierForPrivateSearchEngine;
- (id)_specifierForPrivateSearchEngineToUseDefaultSearchEngineValue;
- (id)_specifierForProfile:(id)a3;
- (id)_specifierForProfileGroup;
- (id)_specifierForSearchFieldPosition;
- (id)_specifierForSelectingFavoritesBarButtonStyle;
- (id)_specifierForShowRecentSearchesToggle;
- (id)_tabOverrideTopLevelDetailString;
- (id)_valueForAutomaticallyDownloadReadingListItems;
- (id)_valueForClosingTabsAutomatically;
- (id)blockAllNewWebsiteDataEnabled;
- (id)favoritesFolderTitle;
- (id)inAppWebBrowsingSettingsFeatureDescriptionCell;
- (id)isBlockPopUpsEnabled:(id)a3;
- (id)isHideBarsWhileScrollingEnabled;
- (id)isSafariBrowsingAssistantEnabled:(id)a3;
- (id)isSafariFraudWarningEnabled:(id)a3;
- (id)privacyProxyAvailabilitySpecifier;
- (id)readPrivateBrowsingUsesNormalBrowsingSearchEngineToggle:(id)a3;
- (id)safariReadPrivateSearchEnginePreferenceValue:(id)a3;
- (id)siteSpecificSearchSettingsEnabledString;
- (id)specifiers;
- (id)specifiersForPerSitePreferencesForSettingsPersona:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)trackerProtectionEnabled;
- (unint64_t)clearHistoryViewController:(id)a3 numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a4;
- (void)_bookmarksDidReload:(id)a3;
- (void)_cancelBlockAllCookiesPrompt:(id)a3;
- (void)_clearNewTabOverrideIfNecessaryOnChange:(id)a3;
- (void)_confirmBlockAllCookies:(id)a3;
- (void)_copyFile:(id)a3 toFile:(id)a4;
- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)a3;
- (void)_fetchExportLocationWithCompletionHandler:(id)a3;
- (void)_hardwareKeyboardAvailabilityDidChange;
- (void)_hideInternetAddressChanged:(id)a3;
- (void)_importButtonTapped;
- (void)_mobileSafariChangedExtensionSettings;
- (void)_presentPrivacyFlowWithBundleIdentifier:(id)a3;
- (void)_primaryAppleAccountDidChange:(id)a3;
- (void)_safariClearHistoryAndDataAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifier:(id)a5 clearAllProfiles:(BOOL)a6 closeTabs:(BOOL)a7;
- (void)_setSafariAcceptCookiesForPolicy:(unint64_t)a3;
- (void)_setSafariPreferencesPerSiteSettingsSync:(id)a3 forSpecifier:(id)a4;
- (void)_setSearchEngineLocalizedTitlesForSearchEngineSpecifier:(id)a3;
- (void)_setUpPrivateSearchEngineVisibility:(BOOL)a3 forSpecifier:(id)a4 withPrivateEngineSpecifier:(id)a5;
- (void)_setValueForClosingTabsAutomatically:(id)a3;
- (void)_showExportSheetWithCompletionHandler:(id)a3;
- (void)_synchronizeNanoUserDefaults;
- (void)_updateDownloadsFolderTitle;
- (void)_updateOpenLinksSpecifier;
- (void)_updatePrivateSearchEngineSpecifier;
- (void)_updateSearchSpecifiers;
- (void)_updateSiriSuggestionsSpecifier;
- (void)_updateSpecifierForNewDocumentShortcutBehaviorIfNeeded;
- (void)_updateUserRestrictedState;
- (void)clearWebBrowsingData;
- (void)createEditProfileViewControllerDidChangeProfilesData:(id)a3;
- (void)dealloc;
- (void)handleURL:(id)a3 withCompletion:(id)a4;
- (void)importViewController:(id)a3 didDismissAfterSuccessfulImportingDataFromFileURL:(id)a4 importedDataClassification:(int64_t)a5;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4;
- (void)safariBrowsingAssistantToggled:(id)a3 forSpecifier:(id)a4;
- (void)safariClearHistoryAndData;
- (void)safariClearHistoryAndDataAndTabs;
- (void)safariFraudWarningsToggled:(id)a3 forSpecifier:(id)a4;
- (void)safariSetPrivateSearchEngine:(id)a3 forSpecifier:(id)a4;
- (void)safariToggleBlockAllNewWebsiteData:(id)a3 forSpecifier:(id)a4;
- (void)safariTogglePrivateBrowsingRequiresAuthentication:(id)a3 forSpecifier:(id)a4;
- (void)safariToggleTrackerProtection:(id)a3 forSpecifier:(id)a4;
- (void)setCookieStoragePolicy:(unint64_t)a3 andNotifySpecifierWithID:(id)a4;
- (void)setPrivateBrowsingToUseNormalBrowsingSearchEngineSelection:(id)a3 forSpecifier:(id)a4;
- (void)setSearchEngineInSpecifiers:(id)a3 forPrivateBrowsing:(BOOL)a4;
- (void)setSearchSuggestionsEnabled:(id)a3 forSpecifier:(id)a4;
- (void)setUpSearchSuggestionText:(BOOL)a3;
- (void)showClearHistoryAndDataConfirmation:(id)a3;
- (void)showCreateEditProfileSheet:(id)a3;
- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing;
- (void)willBecomeActive;
@end

@implementation SafariSettingsController

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  [(SafariSettingsController *)self reloadSpecifiers:a3];

  [(SafariSettingsController *)self _updateUserRestrictedState];
}

+ (void)initialize
{
  v2 = objc_opt_class();
  if (v2 == objc_opt_class())
  {
    screenTimeManagementStateDidChangeNotification = CFStringCreateWithCString(0, STManagementStateStateDidChange, 0x600u);
    screenTimePasscodeStateDidChangeNotification = CFStringCreateWithCString(0, STSettingsDidChangeNotification, 0x600u);
  }
}

- (SafariSettingsController)init
{
  v51.receiver = self;
  v51.super_class = SafariSettingsController;
  v2 = [(SafariSettingsController *)&v51 init];
  if (v2)
  {
    v3 = +[NSUserDefaults safari_browserDefaults];
    [v3 safari_registerMobileSafariDefaults];

    v4 = +[SafariSettingsFeatureManager sharedFeatureManager];
    featureManager = v2->_featureManager;
    v2->_featureManager = v4;

    v6 = +[WebBookmarkCollection safariBookmarkCollection];
    bookmarkCollection = v2->_bookmarkCollection;
    v2->_bookmarkCollection = v6;

    v8 = +[MCProfileConnection sharedConnection];
    profileConnection = v2->_profileConnection;
    v2->_profileConnection = v8;

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = +[NSUserDefaults safari_browserDefaults];
    [v11 safari_resetWebKitExperimentalFeaturesIfNeeded:v10];

    v12 = +[NSNotificationCenter defaultCenter];
    v13 = [objc_opt_class() privacyProxyAvailabilityManager];
    [v12 addObserver:v2 selector:"_hideInternetAddressChanged:" name:WBSPrivacyProxyChangeNotification object:v13];

    v14 = +[NSDistributedNotificationCenter defaultCenter];
    v15 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:SuppressSearchSuggestionsDefaultsKey];
    [v14 addObserver:v2 selector:"_updateSearchSpecifiers" name:v15 object:0];

    v16 = +[NSDistributedNotificationCenter defaultCenter];
    v17 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFJavaScriptCanOpenWindowsAutomaticallyDefaultsKey];
    [v16 addObserver:v2 selector:"_updateBlockPopUpsSpecifier" name:v17 object:0];

    v18 = +[NSDistributedNotificationCenter defaultCenter];
    v19 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:WBSUniversalSearchEnabledPreferenceKey];
    [v18 addObserver:v2 selector:"_updateSiriSuggestionsSpecifier" name:v19 object:0];

    v20 = +[NSDistributedNotificationCenter defaultCenter];
    v21 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFOpenLinksInBackgroundDefaultsKey];
    [v20 addObserver:v2 selector:"_updateOpenLinksSpecifier" name:v21 object:0];

    v22 = +[NSDistributedNotificationCenter defaultCenter];
    v23 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:WBSCloseTabsAutomaticallyDefaultsKey];
    [v22 addObserver:v2 selector:"_updateCloseTabsSpecifier" name:v23 object:0];

    v24 = +[NSDistributedNotificationCenter defaultCenter];
    v25 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFSearchEngineStringDefaultsKey];
    [v24 addObserver:v2 selector:"_updateSearchEngineSpecifier" name:v25 object:0];

    v26 = +[NSDistributedNotificationCenter defaultCenter];
    v27 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:_SFPrivateSearchEngineStringDefaultsKey];
    [v26 addObserver:v2 selector:"_updatePrivateSearchEngineSpecifier" name:v27 object:0];

    LOBYTE(v27) = _SFDeviceIsPad();
    v28 = +[NSDistributedNotificationCenter defaultCenter];
    if (v27)
    {
      v29 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:SFEnableStandaloneTabBarKey];
      [v28 addObserver:v2 selector:"_updateTabLayoutSpecifier" name:v29 object:0];
    }

    else
    {
      v30 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:SFShowTabBarDefaultsKey];
      [v28 addObserver:v2 selector:"_updateLandscapeTabBarSpecifier" name:v30 object:0];

      v28 = +[NSDistributedNotificationCenter defaultCenter];
      v29 = [NSUserDefaults safari_notificationNameForUserDefaultsKey:SFPreferredCapsuleLayoutStyleKey];
      [v28 addObserver:v2 selector:"_updateSearchPositionSpecifier" name:v29 object:0];
    }

    v31 = +[NSDistributedNotificationCenter defaultCenter];
    [v31 addObserver:v2 selector:"_mobileSafariChangedExtensionSettings" name:kMobileSafariChangedExtensionSettingsNotification object:0];

    v32 = [(SafariSettingsController *)v2 _defaultWebExtensionController];
    [v32 addObserver:v2];

    [v12 addObserver:v2 selector:"_clearNewTabOverrideIfNecessaryOnChange:" name:WBSExtensionWasRemovedNotification object:0];
    [v12 addObserver:v2 selector:"_clearNewTabOverrideIfNecessaryOnChange:" name:WBSExtensionEnabledStateDidChangeNotification object:0];
    [v12 addObserver:v2 selector:"_clearNewTabOverrideIfNecessaryOnChange:" name:WBSExtensionsWereDisabledNotification object:0];
    [v12 addObserver:v2 selector:"_newTabPageDidChangeRemotely:" name:WBSCloudExtensionNewTabPageDidChangeChangeNotification object:0];
    [v12 addObserver:v2 selector:"_bookmarksDidReload:" name:WebBookmarksDidReloadNotification object:0];
    [v12 addObserver:v2 selector:"_settingsDidEnterBackground" name:UIApplicationDidEnterBackgroundNotification object:0];
    if (_SFDeviceIsPad())
    {
      v33 = +[UIDevice currentDevice];
      v2->_hardwareKeyboardIsAvailable = [v33 _isHardwareKeyboardAvailable];

      [v12 addObserver:v2 selector:"_hardwareKeyboardAvailabilityDidChange" name:_UIDeviceHardwareKeyboardAvailabilityDidChangeNotification object:0];
    }

    v34 = +[NSUserDefaults safari_browserDefaults];
    [WBSWebExtensionNewTabOverridePreferencesManager migrateStorageToPerProfileFormatIfNecessaryWithDefaults:v34];

    v35 = [WBSWebExtensionSQLiteStoreMigrator alloc];
    v36 = +[NSUserDefaults safari_browserDefaults];
    v37 = +[NSFileManager defaultManager];
    v38 = [v37 safari_settingsDirectoryURL];
    v39 = [v35 initWithUserDefaults:v36 safariContainerSettingsDirectoryURL:v38];

    [v39 migrateSQLiteStorageToWebKitIfNecessary];
    v40 = [objc_opt_class() tabGroupManager];
    v41 = +[WBTabGroupSyncAgentProxy sharedProxy];
    [v40 addTabGroupObserver:v41];

    v42 = [objc_opt_class() tabGroupManager];
    [v42 addTabGroupObserver:v2];

    [v12 addObserver:v2 selector:"_managedBookmarksDidChange:" name:WBSManagedBookmarksDidChangeNotification object:0];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, webFilterSettingsDidChange, WBWebFilterSettingsDidChange, 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, screenTimeRestrictionsStateDidChange, screenTimeManagementStateDidChangeNotification, 0, 1024);
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, screenTimeRestrictionsStateDidChange, screenTimePasscodeStateDidChangeNotification, 0, 1024);
    objc_initWeak(&location, v2);
    v52 = objc_opt_class();
    v44 = [NSArray arrayWithObjects:&v52 count:1];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = __32__SafariSettingsController_init__block_invoke;
    v48[3] = &unk_8A470;
    objc_copyWeak(&v49, &location);
    v45 = [(SafariSettingsController *)v2 registerForTraitChanges:v44 withHandler:v48];

    v46 = v2;
    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  return v2;
}

void __32__SafariSettingsController_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reloadSpecifiers];
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
  v4 = [(SafariSettingsController *)self _defaultWebExtensionController];
  [v4 removeObserver:self];

  [v3 removeObserver:self name:WBSExtensionWasRemovedNotification object:0];
  [v3 removeObserver:self name:WBSExtensionEnabledStateDidChangeNotification object:0];
  [v3 removeObserver:self name:WBSExtensionsWereDisabledNotification object:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimeManagementStateDidChangeNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, screenTimePasscodeStateDidChangeNotification, 0);
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, WBWebFilterSettingsDidChange, 0);

  v6.receiver = self;
  v6.super_class = SafariSettingsController;
  [(SafariSettingsController *)&v6 dealloc];
}

+ (id)_tabCollection
{
  if (_tabCollection_once != -1)
  {
    +[SafariSettingsController _tabCollection];
  }

  v3 = _tabCollection_tabCollection;

  return v3;
}

void __42__SafariSettingsController__tabCollection__block_invoke(id a1)
{
  v1 = [WBTabCollection alloc];
  v4 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  v2 = [v1 initWithConfiguration:v4 openDatabase:1];
  v3 = _tabCollection_tabCollection;
  _tabCollection_tabCollection = v2;
}

+ (WBTabGroupManager)tabGroupManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __43__SafariSettingsController_tabGroupManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (tabGroupManager_once != -1)
  {
    dispatch_once(&tabGroupManager_once, block);
  }

  v2 = tabGroupManager_tabGroupManager;

  return v2;
}

void __43__SafariSettingsController_tabGroupManager__block_invoke(uint64_t a1)
{
  v2 = [WBTabGroupManager alloc];
  v3 = *(a1 + 32);
  v6 = [objc_opt_class() _tabCollection];
  v4 = [v2 initWithCollection:v6];
  v5 = tabGroupManager_tabGroupManager;
  tabGroupManager_tabGroupManager = v4;
}

+ (id)_createTabGroupManagerForClearingHistory
{
  v2 = [WBTabGroupManager alloc];
  v3 = [WBTabCollection alloc];
  v4 = +[WBCollectionConfiguration safariTabCollectionConfiguration];
  v5 = [v3 initWithConfiguration:v4 openDatabase:1];
  v6 = [v2 initWithCollection:v5];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [v6 windowStates];
  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [v6 registerWindowState:*(*(&v13 + 1) + 8 * i)];
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (SFExtensionsProfilesDataSource)extensionsProfilesDataSource
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__SafariSettingsController_extensionsProfilesDataSource__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (extensionsProfilesDataSource_once != -1)
  {
    dispatch_once(&extensionsProfilesDataSource_once, block);
  }

  v2 = extensionsProfilesDataSource_dataSource;

  return v2;
}

void __56__SafariSettingsController_extensionsProfilesDataSource__block_invoke(uint64_t a1)
{
  v2 = [SFExtensionsProfilesDataSource alloc];
  v5 = [*(a1 + 32) tabGroupManager];
  v3 = [v2 initWithTabGroupManager:v5];
  v4 = extensionsProfilesDataSource_dataSource;
  extensionsProfilesDataSource_dataSource = v3;
}

- (id)_defaultWebExtensionController
{
  v2 = [objc_opt_class() extensionsProfilesDataSource];
  v3 = [v2 profileServerIDToWebExtensionsControllers];
  v4 = [v3 objectForKeyedSubscript:WBSDefaultProfileIdentifier];

  return v4;
}

+ (WBSPrivacyProxyAvailabilityManager)privacyProxyAvailabilityManager
{
  if (privacyProxyAvailabilityManager_once != -1)
  {
    +[SafariSettingsController privacyProxyAvailabilityManager];
  }

  v3 = privacyProxyAvailabilityManager_availabilityManager;

  return v3;
}

void __59__SafariSettingsController_privacyProxyAvailabilityManager__block_invoke(id a1)
{
  privacyProxyAvailabilityManager_availabilityManager = objc_alloc_init(WBSPrivacyProxyAvailabilityManager);

  _objc_release_x1();
}

- (id)inAppWebBrowsingSettingsFeatureDescriptionCell
{
  v3 = [(SafariSettingsController *)self traitCollection];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(SafariSettingsController *)self traitCollection];
    v5 = [v4 pe_isSettingsFeatureDescriptionCellSupported];

    if (!v5)
    {
      v7 = 0;
      goto LABEL_7;
    }

    +[NSBundle safari_isMobileSafariInstalled];
    v3 = _WBSLocalizedString();
    v6 = _WBSLocalizedString();
    v7 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    [v7 setIdentifier:@"PLACARD"];
    [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
    [v7 setProperty:v6 forKey:PSTableCellSubtitleTextKey];
    [v7 setProperty:@"com.apple.graphic-icon.web-browsing" forKey:PSIconUTTypeIdentifierKey];
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

- (id)privacyProxyAvailabilitySpecifier
{
  v3 = [objc_opt_class() privacyProxyAvailabilityManager];
  v4 = [v3 isPrivacyProxyFreeTierAvailable];

  if (v4)
  {
    v5 = SafariSettingsLocalizedString(@"Hide Internet Address Title", @"Safari");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:"_hideInternetAddressDetailText" detail:objc_opt_class() cell:2 edit:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_specifierForPrivateSearchEngine
{
  v3 = SafariSettingsLocalizedString(@"Private Search Engine", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"safariSetPrivateSearchEngine:forSpecifier:" get:"safariReadPrivateSearchEnginePreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  v7[0] = PSIDKey;
  v7[1] = PSContainerBundleIDKey;
  v8[0] = @"PRIVATE_SEARCH_ENGINE_SETTING";
  v8[1] = @"com.apple.mobilesafarishared";
  v7[2] = PSDefaultsKey;
  v7[3] = PSDefaultValueKey;
  v8[2] = @"com.apple.mobilesafarishared";
  v8[3] = @"Default";
  v7[4] = PSKeyNameKey;
  v8[4] = _SFPrivateSearchEngineStringDefaultsKey;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v4 setProperties:v5];

  return v4;
}

- (void)safariSetPrivateSearchEngine:(id)a3 forSpecifier:(id)a4
{
  v6 = a4;
  v8 = a3;
  [(SafariSettingsController *)self _setSearchEngineLocalizedTitlesForSearchEngineSpecifier:v6];
  [PSRootController setPreferenceValue:v8 specifier:v6];

  if ([v8 isEqualToString:@"Default"])
  {
    v7 = 0;
  }

  else
  {
    v7 = v8;
  }

  [(SafariSettingsListController *)self setSafariSharedDefaultsValue:v7 forKey:_SFPrivateSearchEngineStringDefaultsKey];
}

- (id)safariReadPrivateSearchEnginePreferenceValue:(id)a3
{
  v3 = [(SafariSettingsListController *)self safariSharedDefaultsValueForKey:_SFPrivateSearchEngineStringDefaultsKey];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = @"Default";
  }

  v6 = v5;

  return v5;
}

- (id)_specifierForShowRecentSearchesToggle
{
  v3 = _WBSLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  v7[0] = PSIDKey;
  v7[1] = PSContainerBundleIDKey;
  v8[0] = @"SHOW_RECENT_SEARCHES";
  v8[1] = @"com.apple.mobilesafari";
  v7[2] = PSDefaultsKey;
  v7[3] = PSKeyNameKey;
  v8[2] = @"com.apple.mobilesafari";
  v8[3] = @"ShowRecentSearches";
  v7[4] = PSDefaultValueKey;
  v8[4] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v4 setProperties:v5];

  return v4;
}

- (id)_specifierForPrivateSearchEngineToUseDefaultSearchEngineValue
{
  v3 = SafariSettingsLocalizedString(@"Also Use in Private Browsing", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPrivateBrowsingToUseNormalBrowsingSearchEngineSelection:forSpecifier:" get:"readPrivateBrowsingUsesNormalBrowsingSearchEngineToggle:" detail:0 cell:6 edit:0];

  v7[0] = PSIDKey;
  v7[1] = PSContainerBundleIDKey;
  v8[0] = @"PRIVATE_BROWSING_USES_NORMAL_BROWSING_SEARCH_ENGINE_SELECTION";
  v8[1] = @"com.apple.mobilesafarishared";
  v7[2] = PSDefaultsKey;
  v7[3] = PSKeyNameKey;
  v8[2] = @"com.apple.mobilesafarishared";
  v8[3] = @"PrivateBrowsingUsesNormalBrowsingSearchEngineSelection";
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v4 setProperties:v5];

  return v4;
}

- (void)_setUpPrivateSearchEngineVisibility:(BOOL)a3 forSpecifier:(id)a4 withPrivateEngineSpecifier:(id)a5
{
  v6 = a3;
  v25 = a4;
  v8 = a5;
  v9 = [(SafariSettingsController *)self specifierForID:@"SEARCH_SUGGESTION_SETTING"];
  v10 = [(SafariSettingsController *)self readPreferenceValue:v9];

  if (v6)
  {
    v11 = [(SafariSettingsController *)self specifierForID:@"SEARCH_ENGINE_SETTING"];
    v12 = [(SafariSettingsController *)self readPreferenceValue:v11];

    v13 = [(SafariSettingsController *)self specifierForID:@"SEARCH_ENGINE_SETTING"];
    v14 = [v13 performGetter];
    [(SafariSettingsController *)self safariSetPrivateSearchEngine:v14 forSpecifier:v8];

    -[SafariSettingsController setUpSearchSuggestionText:](self, "setUpSearchSuggestionText:", [v10 BOOLValue]);
    v15 = [(SafariSettingsController *)self specifierForID:@"SEARCH"];
    [(SafariSettingsController *)self reloadSpecifier:v15 animated:1];

    v16 = +[NSUserDefaults safari_browserDefaults];
    v17 = WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey;
    [v16 setObject:v12 forKey:WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey];

    v18 = +[NSUserDefaults safari_browserDefaults];
    v19 = [v18 stringForKey:v17];
    [(SafariSettingsController *)self safariSetPrivateSearchEngine:v19 forSpecifier:v8];

    [(SafariSettingsController *)self removeSpecifier:v8 animated:1];
  }

  else
  {
    v20 = +[NSUserDefaults safari_browserDefaults];
    v21 = [v20 stringForKey:WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey];
    if (v21)
    {
      [(SafariSettingsController *)self safariSetPrivateSearchEngine:v21 forSpecifier:v8];
    }

    else
    {
      v22 = +[_SFSearchEngineController sharedInstance];
      v23 = [v22 defaultSearchEngineNameForPrivateBrowsing:1];
      [(SafariSettingsController *)self safariSetPrivateSearchEngine:v23 forSpecifier:v8];
    }

    -[SafariSettingsController setUpSearchSuggestionText:](self, "setUpSearchSuggestionText:", [v10 BOOLValue]);
    v24 = [(SafariSettingsController *)self specifierForID:@"SEARCH"];
    [(SafariSettingsController *)self reloadSpecifier:v24 animated:0];

    [(SafariSettingsController *)self insertSpecifier:v8 afterSpecifier:v25 animated:1];
  }
}

- (void)setPrivateBrowsingToUseNormalBrowsingSearchEngineSelection:(id)a3 forSpecifier:(id)a4
{
  v12 = a3;
  v6 = a4;
  [(SafariSettingsController *)self setPreferenceValue:v12 specifier:v6];
  v7 = [(SafariSettingsController *)self specifierForID:@"PRIVATE_SEARCH_ENGINE_SETTING"];
  v8 = [v12 BOOLValue];
  if (v7)
  {
    [(SafariSettingsController *)self _setUpPrivateSearchEngineVisibility:v8 forSpecifier:v6 withPrivateEngineSpecifier:v7];
  }

  else
  {
    v9 = [(SafariSettingsController *)self _specifierForPrivateSearchEngine];
    [(SafariSettingsController *)self _setUpPrivateSearchEngineVisibility:v8 forSpecifier:v6 withPrivateEngineSpecifier:v9];
  }

  if (([v12 BOOLValue] & 1) == 0)
  {
    v10 = [(SafariSettingsController *)self specifiers];
    v11 = [v10 mutableCopy];
    [(SafariSettingsController *)self setSearchEngineInSpecifiers:v11 forPrivateBrowsing:1];
  }
}

- (id)readPrivateBrowsingUsesNormalBrowsingSearchEngineToggle:(id)a3
{
  v3 = [(SafariSettingsController *)self readPreferenceValue:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &__kCFBooleanTrue;
  }

  v6 = v5;

  return v5;
}

- (void)setSearchEngineInSpecifiers:(id)a3 forPrivateBrowsing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v17 = v6;
  if (v4)
  {
    v7 = [v6 specifierForID:@"PRIVATE_SEARCH_ENGINE_SETTING"];
    [(SafariSettingsController *)self _setSearchEngineLocalizedTitlesForSearchEngineSpecifier:v7];
    [v7 setProperty:@"Default" forKey:PSDefaultValueKey];
  }

  else
  {
    v7 = [v6 specifierForID:@"SEARCH_ENGINE_SETTING"];
    [(SafariSettingsController *)self _setSearchEngineLocalizedTitlesForSearchEngineSpecifier:v7];
    v8 = +[_SFSearchEngineController sharedInstance];
    v9 = [v8 defaultSearchEngineNameForPrivateBrowsing:0];
    [v7 setProperty:v9 forKey:PSDefaultValueKey];
  }

  v10 = [v7 propertyForKey:PSKeyNameKey];
  v11 = [(SafariSettingsListController *)self safariSharedDefaultsValueForKey:v10];
  if (v11)
  {
    v12 = +[_SFSearchEngineController sharedInstance];
    v13 = [v12 searchEngineNames];
    v14 = [v13 indexOfObject:v11];

    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      [(SafariSettingsListController *)self setSafariSharedDefaultsValue:0 forKey:v10];
      [(SafariSettingsListController *)self synchronizeSafariSharedDefaults];
    }

    v15 = [(SafariSettingsController *)self readPreferenceValue:v7];
    v16 = +[NSUserDefaults safari_browserDefaults];
    [v16 setObject:v15 forKey:WBSLastPrivateSearchEngineStringExplicitlyChosenByUserKey];
  }
}

- (void)_setSearchEngineLocalizedTitlesForSearchEngineSpecifier:(id)a3
{
  v3 = a3;
  +[_SFSearchEngineController loadSystemLanguageProperties];
  v4 = +[_SFSearchEngineController sharedInstance];
  v5 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [v4 enginesAvailableForUnifiedFieldSearching];
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

        v11 = [*(*(&v16 + 1) + 8 * v10) displayName];
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  v12 = [v5 copy];
  v13 = [v4 searchEngineNames];
  v14 = [v13 copy];
  v15 = [v12 copy];
  [v3 setValues:v14 titles:v12 shortTitles:v15];
}

- (id)specifiers
{
  v2 = *&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v2)
  {
    v3 = v2;
    goto LABEL_89;
  }

  v4 = self;
  v129 = OBJC_IVAR___PSListController__specifiers;
  v5 = [(SafariSettingsController *)self loadSpecifiersFromPlistName:@"Safari" target:self];
  v6 = [v5 indexOfSpecifierWithID:@"CLEAR_HISTORY_AND_DATA"];
  v7 = [(SafariSettingsController *)v4 specifiersForPerSitePreferencesForSettingsPersona:0];
  v8 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v6 + 1, [v7 count]);
  [v5 insertObjects:v7 atIndexes:v8];

  v130 = [v5 specifierForID:@"SEARCH_SUGGESTION_SETTING"];
  v9 = [(SafariSettingsController *)v4 readPreferenceValue:?];
  v10 = [v5 specifierForID:@"SEARCH"];
  searchGroupSettingsSpecifier = v4->_searchGroupSettingsSpecifier;
  v4->_searchGroupSettingsSpecifier = v10;

  v128 = v9;
  -[SafariSettingsController setUpSearchSuggestionText:](v4, "setUpSearchSuggestionText:", [v9 BOOLValue]);
  v12 = [v5 specifierForID:@"PRIVACY"];
  v13 = localizedPrivacyButtonTitleForBundleIdentifier(@"com.apple.onboarding.safari");
  [v12 setProperty:v13 forKey:PSFooterHyperlinkViewTitleKey];
  v126 = v13;
  v153.length = [v13 length];
  v153.location = 0;
  v14 = NSStringFromRange(v153);
  [v12 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v15 = [NSValue valueWithNonretainedObject:v4];
  [v12 setProperty:v15 forKey:PSFooterHyperlinkViewTargetKey];

  v127 = v12;
  [v12 setProperty:@"showPrivacyExplanationSheet:" forKey:PSFooterHyperlinkViewActionKey];
  v16 = [v5 specifierForID:@"TABS"];
  v17 = SafariSettingsLocalizedString(@"Tabs Group Footer Text", @"Safari");
  v18 = PSFooterTextGroupKey;
  v125 = v16;
  [v16 setProperty:v17 forKey:PSFooterTextGroupKey];

  v19 = [v5 indexOfSpecifierWithID:@"ALWAYS_SHOW_BOOKMARKS_BAR"];
  if (_SFDeviceIsPad() && v19 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = [(SafariSettingsController *)v4 _specifierForSelectingFavoritesBarButtonStyle];
    [v5 insertObject:v20 atIndex:v19 + 1];
  }

  v21 = [(SafariSettingsController *)v4 isTabBarAvailable:0];
  v22 = +[UIDevice currentDevice];
  v23 = [v22 userInterfaceIdiom];

  v131 = v7;
  if (v23 == &dword_0 + 1)
  {
    v24 = [(SafariSettingsController *)v4 _specifierForEnablingStandaloneTabBar];
    if (v24)
    {
      v25 = [v5 indexOfSpecifierWithID:@"TABS"];
      v26 = [(SafariSettingsController *)v4 _specifierForEnablingStandaloneTabBar];
      [v5 insertObject:v26 atIndex:v25 + 1];

      v27 = 2;
    }

    else
    {
      v27 = 1;
    }

LABEL_14:
    v32 = [v5 indexOfSpecifierWithID:@"SHOW_TAB_BAR"];
    if (v32 != 0x7FFFFFFFFFFFFFFFLL)
    {
      [v5 removeObjectAtIndex:v32];
    }

    v31 = 0;
    v30 = [v5 indexOfSpecifierWithID:@"TABS"] + v27;
    if (v23 == &dword_0 + 1)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if ((v21 & 1) == 0)
  {
    v27 = 1;
    goto LABEL_14;
  }

  v28 = [v5 specifierForID:@"SHOW_TAB_BAR"];
  v29 = SafariSettingsLocalizedString(@"iPhone Tab Bar Title", @"TabBar");
  [v28 setName:v29];

  v30 = [v5 indexOfSpecifierWithID:@"TABS"] + 1;
  v31 = 1;
LABEL_17:
  v33 = [(SafariSettingsController *)v4 _specifierForSearchFieldPosition];
  [v33 setIdentifier:@"SEARCH_POSITION"];
  if (v33)
  {
    [v5 insertObject:v33 atIndex:v30++];
  }

LABEL_20:
  v34 = [v5 indexOfSpecifierWithID:@"SHOW_TAB_BAR"];
  if ((v31 & (v34 != 0x7FFFFFFFFFFFFFFFLL)) != 0)
  {
    v35 = v34 + 1;
  }

  else
  {
    v35 = v30;
  }

  v36 = [(SafariSettingsController *)v4 _specifierForEnablingBackgroundColorInTabBar];
  [v5 insertObject:v36 atIndex:v35];

  [v5 removeObjectAtIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"ACCESSIBILITY"}];
  if (_SFDeviceIsPad() && v4->_hardwareKeyboardIsAvailable)
  {
    v37 = [(SafariSettingsController *)v4 _specifierForNewDocumentShortcutBehavior];
    [v5 insertObject:v37 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"OPEN_LINKS_IN_BACKGROUND_IPAD"}];
  }

  v38 = +[WBSManagedNewTabPageController sharedController];
  v39 = [v38 managedNewTabPageState];

  v40 = [(SafariSettingsController *)v4 _newTabsOpenWithSpecifier];
  newTabOverrideSettingsSpecifier = v4->_newTabOverrideSettingsSpecifier;
  v4->_newTabOverrideSettingsSpecifier = v40;

  if (v39)
  {
    v42 = [(SafariSettingsController *)v4 _specifierForClosingTabsAutomatically];
    [v5 insertObject:v42 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];

    v43 = [PSSpecifier groupSpecifierWithID:@"NEW_TABS_OPEN_WITH"];
    v44 = _WBSLocalizedString();
    [v43 setProperty:v44 forKey:v18];

    [v5 insertObject:v43 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];
    v45 = v4->_newTabOverrideSettingsSpecifier;
  }

  else
  {
    v46 = v4->_newTabOverrideSettingsSpecifier;
    if (v46)
    {
      [v5 insertObject:v46 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];
    }

    v45 = [(SafariSettingsController *)v4 _specifierForClosingTabsAutomatically];
    v43 = v45;
  }

  [v5 insertObject:v45 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];

  v136 = v5;
  if (+[WBSFeatureAvailability isSafariProfilesEnabled])
  {
    v47 = [(SafariSettingsController *)v4 _specifierForProfileGroup];
    [v5 insertObject:v47 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];

    v48 = [(SafariSettingsController *)v4 _specifierForNewProfile];
    [v5 insertObject:v48 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"PRIVACY"}];

    v49 = [v5 indexOfSpecifierWithID:@"NEW_PROFILE"];
    v50 = [objc_opt_class() tabGroupManager];
    v51 = v18;
    if ([v50 hasMultipleProfiles])
    {
      v52 = [v50 profiles];
    }

    else
    {
      v52 = &__NSArray0__struct;
    }

    v145 = 0u;
    v146 = 0u;
    v143 = 0u;
    v144 = 0u;
    v53 = v52;
    v54 = [v53 countByEnumeratingWithState:&v143 objects:v151 count:16];
    if (v54)
    {
      v55 = v54;
      v56 = *v144;
      do
      {
        v57 = 0;
        v58 = v49;
        do
        {
          if (*v144 != v56)
          {
            objc_enumerationMutation(v53);
          }

          v59 = [(SafariSettingsController *)v4 _specifierForProfile:*(*(&v143 + 1) + 8 * v57)];
          v49 = v58 + 1;
          [v136 insertObject:v59 atIndex:v58];

          v57 = v57 + 1;
          ++v58;
        }

        while (v55 != v57);
        v55 = [v53 countByEnumeratingWithState:&v143 objects:v151 count:16];
      }

      while (v55);
    }

    v5 = v136;
    v18 = v51;
  }

  v60 = SafariSettingsLocalizedString(@"Downloads", @"Safari");
  v61 = [PSSpecifier preferenceSpecifierNamed:v60 target:v4 set:0 get:"_downloadsFolderTitle" detail:objc_opt_class() cell:2 edit:0];
  downloadsSettingsSpecifier = v4->_downloadsSettingsSpecifier;
  v4->_downloadsSettingsSpecifier = v61;

  v134 = PSIDKey;
  [(PSSpecifier *)v4->_downloadsSettingsSpecifier setProperty:@"DOWNLOADS" forKey:?];
  [v5 insertObject:v4->_downloadsSettingsSpecifier atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"TABS"}];
  [(SafariSettingsController *)v4 _updateDownloadsFolderTitle];
  v63 = [(SafariSettingsController *)v4 privacyProxyAvailabilitySpecifier];
  hideInternetAddressSettingsSpecifier = v4->_hideInternetAddressSettingsSpecifier;
  v4->_hideInternetAddressSettingsSpecifier = v63;

  v65 = v4->_hideInternetAddressSettingsSpecifier;
  if (v65)
  {
    [v5 insertObject:v65 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"TRACKER_PROTECTION"}];
  }

  if (+[WBSFeatureAvailability isLockedPrivateBrowsingEnabled])
  {
    v66 = [(SafariSettingsController *)v4 _biometryNameForLockedPrivateBrowsingToggle];
    v67 = [PSSpecifier preferenceSpecifierNamed:v66 target:v4 set:"safariTogglePrivateBrowsingRequiresAuthentication:forSpecifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
    lockedPrivateBrowingSettingsSpecifier = v4->_lockedPrivateBrowingSettingsSpecifier;
    v4->_lockedPrivateBrowingSettingsSpecifier = v67;

    v69 = v4->_lockedPrivateBrowingSettingsSpecifier;
    v149[0] = PSContainerBundleIDKey;
    v149[1] = PSDefaultsKey;
    v150[0] = @"com.apple.mobilesafari";
    v150[1] = @"com.apple.mobilesafari";
    v150[2] = WBSPrivateBrowsingRequiresAuthenticationPreferenceKey;
    v149[2] = PSKeyNameKey;
    v149[3] = @"safariRestricted";
    v70 = NSStringFromSelector("isLockedPrivateBrowsingRestricted:");
    v150[3] = v70;
    v71 = [NSDictionary dictionaryWithObjects:v150 forKeys:v149 count:4];
    [(PSSpecifier *)v69 setProperties:v71];

    if (v4->_hideInternetAddressSettingsSpecifier)
    {
      v72 = 2;
    }

    else
    {
      v72 = 1;
    }

    [v5 insertObject:v4->_lockedPrivateBrowingSettingsSpecifier atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"TRACKER_PROTECTION"}];
  }

  if (+[WBSBrowsingAssistantController isAvailableInCurrentLocale])
  {
    v73 = SafariSettingsLocalizedString(@"Highlights", @"Safari");
    v74 = [PSSpecifier preferenceSpecifierNamed:v73 target:v4 set:"safariBrowsingAssistantToggled:forSpecifier:" get:"isSafariBrowsingAssistantEnabled:" detail:0 cell:6 edit:0];

    [v5 insertObject:v74 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"WARN_ABOUT_FRAUDULENT_WEBSITES"}];
  }

  v75 = [(SafariSettingsController *)v4 _specifierForHTTPSOnly];
  [v5 insertObject:v75 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"WARN_ABOUT_FRAUDULENT_WEBSITES"}];

  v76 = SafariSettingsLocalizedString(@"Extensions Title", @"Extensions");
  v77 = [PSSpecifier preferenceSpecifierNamed:v76 target:v4 set:0 get:0 detail:objc_opt_class() cell:2 edit:0];
  webExtensionSettingsSpecifier = v4->_webExtensionSettingsSpecifier;
  v4->_webExtensionSettingsSpecifier = v77;

  [(PSSpecifier *)v4->_webExtensionSettingsSpecifier setProperty:@"WEB_EXTENSIONS" forKey:v134];
  [v5 insertObject:v4->_webExtensionSettingsSpecifier atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"DOWNLOADS"}];
  v132 = v4;
  if (isInternalInstall())
  {
    v79 = +[NSUserDefaults safari_browserDefaults];
    v80 = [v79 BOOLForKey:@"DebugIncludeSafariInternalSettingsShortcut"];

    if (v80)
    {
      v124 = v18;
      v141 = 0u;
      v142 = 0u;
      v139 = 0u;
      v140 = 0u;
      obj = [&off_90DA0 reverseObjectEnumerator];
      v81 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
      if (v81)
      {
        v82 = v81;
        v83 = *v140;
        do
        {
          for (i = 0; i != v82; i = i + 1)
          {
            if (*v140 != v83)
            {
              objc_enumerationMutation(obj);
            }

            v85 = *(*(&v139 + 1) + 8 * i);
            v86 = UISystemRootDirectory();
            v147[0] = v86;
            v147[1] = @"AppleInternal";
            v147[2] = @"Library";
            v147[3] = @"PreferenceBundles";
            v87 = [v85 objectAtIndexedSubscript:1];
            v147[4] = v87;
            v88 = [NSArray arrayWithObjects:v147 count:5];

            v89 = [NSURL fileURLWithPathComponents:v88];
            v90 = [NSBundle bundleWithURL:v89];

            if (v90)
            {
              v91 = [v85 objectAtIndexedSubscript:0];
              v92 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", v91, 0, 0, 0, [v90 principalClass], 1, 0);

              [v92 setProperty:@"SAFARI_INTERNAL" forKey:v134];
              [v136 insertObject:v92 atIndex:{objc_msgSend(v136, "indexOfSpecifierWithID:", @"ADVANCED"}];
            }
          }

          v82 = [obj countByEnumeratingWithState:&v139 objects:v148 count:16];
        }

        while (v82);
      }

      v4 = v132;
      v5 = v136;
      v18 = v124;
    }
  }

  [(SafariSettingsController *)v4 setSearchEngineInSpecifiers:v5 forPrivateBrowsing:0];
  v93 = [(SafariSettingsController *)v4 _specifierForPrivateSearchEngineToUseDefaultSearchEngineValue];
  [v5 insertObject:v93 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"SEARCH_ENGINE_SETTING"}];
  v135 = [v93 performGetter];
  if (([v135 BOOLValue] & 1) == 0)
  {
    v94 = [(SafariSettingsController *)v132 _specifierForPrivateSearchEngine];
    [v5 insertObject:v94 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"SEARCH_ENGINE_SETTING"}];

    [(SafariSettingsController *)v132 setSearchEngineInSpecifiers:v5 forPrivateBrowsing:1];
    v95 = [v5 specifierForID:@"SEARCH_SUGGESTION_SETTING"];
    v96 = [(SafariSettingsController *)v132 readPreferenceValue:v95];

    -[SafariSettingsController setUpSearchSuggestionText:](v132, "setUpSearchSuggestionText:", [v96 BOOLValue]);
  }

  if ((_SFDeviceIsPad() & 1) == 0)
  {
    v97 = [(SafariSettingsController *)v132 _specifierForShowRecentSearchesToggle];
    [v5 insertObject:v97 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"SIRI_SUGGESTIONS"}];
  }

  v98 = [v5 specifierForID:@"HISTORY_AND_WEBSITE_DATA"];
  v99 = _WBSLocalizedString();
  [v98 setName:v99];

  if ((_isHistoryClearingEnabled & 1) == 0)
  {
    v100 = _WBSLocalizedString();
    [v98 setProperty:v100 forKey:v18];
  }

  v101 = [(SafariSettingsController *)v132 _specifierForImportButton];
  [v5 insertObject:v101 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"CLEAR_HISTORY_AND_DATA"}];

  v102 = [(SafariSettingsController *)v132 _specifierForExportButton];
  [v5 insertObject:v102 atIndex:{objc_msgSend(v5, "indexOfSpecifierWithID:", @"CLEAR_HISTORY_AND_DATA"}];

  [NSSet setWithObjects:@"BLOCK_ALL_NEW_COOKIES", @"PRIVATE_CLICK_MEASUREMENT", @"APPLE_PAY_DISCLOSURE_ALLOWED", 0];
  v137[0] = _NSConcreteStackBlock;
  v137[1] = 3221225472;
  v137[2] = __38__SafariSettingsController_specifiers__block_invoke;
  v103 = v137[3] = &unk_8A4F8;
  v138 = v103;
  [v5 safari_removeObjectsPassingTest:v137];
  if (!v132->_systemPolicyForApp)
  {
    v104 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.mobilesafari"];
    systemPolicyForApp = v132->_systemPolicyForApp;
    v132->_systemPolicyForApp = v104;
  }

  if ([AUSystemSettingsSpecifiersProvider instancesRespondToSelector:"initWithApplicationBundleIdentifier:"])
  {
    systemDefaultBrowserPolicyProvider = v132->_systemDefaultBrowserPolicyProvider;
    if (!systemDefaultBrowserPolicyProvider)
    {
      v107 = [[AUSystemSettingsSpecifiersProvider alloc] initWithApplicationBundleIdentifier:@"com.apple.mobilesafari"];
      v108 = v132->_systemDefaultBrowserPolicyProvider;
      v132->_systemDefaultBrowserPolicyProvider = v107;

      systemDefaultBrowserPolicyProvider = v132->_systemDefaultBrowserPolicyProvider;
    }

    v109 = [(AUSystemSettingsSpecifiersProvider *)systemDefaultBrowserPolicyProvider specifiers];
    v110 = [v109 safari_firstObjectPassingTest:&__block_literal_global_324];
    if (v110)
    {
      v111 = 0x800000;
    }

    else
    {
      v111 = 545259520;
    }
  }

  else
  {
    v110 = 0;
    v111 = 545259520;
  }

  v112 = [(PSSystemPolicyForApp *)v132->_systemPolicyForApp specifiersForPolicyOptions:v111 force:0];
  if (v110)
  {
    v113 = [PSSpecifier groupSpecifierWithID:@"DEFAULT_BROWSER_GROUP_SPECIFIER_ID"];
    v114 = [v112 arrayByAddingObject:v113];

    v112 = [v114 arrayByAddingObject:v110];
  }

  v115 = [(PSSystemPolicyForApp *)v132->_systemPolicyForApp specifiersForPolicyOptions:0x2000000 force:0];
  if ([v115 count])
  {
    v116 = [v112 arrayByAddingObjectsFromArray:v115];

    v112 = v116;
  }

  v117 = [v112 count];
  if (v117)
  {
    v118 = [NSIndexSet indexSetWithIndexesInRange:0, v117];
    [v136 insertObjects:v112 atIndexes:v118];
  }

  [(SafariSettingsListController *)v132 updateRestrictionsForSpecifiers:v136];
  v119 = +[WBSManagedNewTabPageController sharedController];
  v120 = [v119 managedNewTabPageState];

  if (v120)
  {
    [(PSSpecifier *)v132->_newTabOverrideSettingsSpecifier setProperty:&__kCFBooleanFalse forKey:PSEnabledKey];
  }

  v121 = *&v132->super.PSListController_opaque[v129];
  *&v132->super.PSListController_opaque[v129] = v136;
  v122 = v136;

  v3 = *&v132->super.PSListController_opaque[v129];
LABEL_89:

  return v3;
}

id __38__SafariSettingsController_specifiers__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

BOOL __38__SafariSettingsController_specifiers__block_invoke_2(id a1, PSSpecifier *a2)
{
  v2 = [(PSSpecifier *)a2 identifier];
  v3 = [v2 isEqual:@"com.apple.settings.DefaultBrowser"];

  return v3;
}

- (void)handleURL:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 safari_stringForKey:@"action"];
  if ([v8 isEqualToString:@"showExportSheet"])
  {
    [(SafariSettingsController *)self _showExportSheetWithCompletionHandler:v7];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SafariSettingsController;
    [(SafariSettingsController *)&v9 handleURL:v6 withCompletion:v7];
  }
}

- (id)_newTabsOpenWithSpecifier
{
  v3 = [(SafariSettingsController *)self _defaultWebExtensionController];
  v4 = [v3 tabOverridePreferencesManager];
  v5 = [v4 sortedComposedIdentifiersForExtensionsWithOverridePages];
  v6 = [v5 count];

  v7 = +[WBSManagedNewTabPageController sharedController];
  v8 = [v7 managedNewTabPageState];

  if (!(v8 | v6))
  {
    return 0;
  }

  v10 = [PSSpecifier alloc];
  v11 = SafariSettingsLocalizedString(@"New Tab Override Title", @"Extensions");
  if (v8)
  {
    v12 = 0;
    v13 = -1;
  }

  else
  {
    v12 = objc_opt_class();
    v13 = 2;
  }

  v14 = v8 == 0;
  v9 = [v10 initWithName:v11 target:self set:0 get:"_tabOverrideTopLevelDetailString" detail:v12 cell:v13 edit:0];

  v20 = @"profileID";
  v15 = [(SafariSettingsController *)self _defaultWebExtensionController];
  v16 = [v15 profileServerID];
  v21 = v16;
  v17 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  [v9 setUserInfo:v17];

  [v9 setProperty:@"NEW_TAB_OVERRIDE" forKey:PSIDKey];
  v18 = [NSNumber numberWithBool:v14];
  [v9 setProperty:v18 forKey:PSEnabledKey];

  return v9;
}

- (void)_updateDownloadsFolderTitle
{
  downloadSettings = self->_downloadSettings;
  if (!downloadSettings)
  {
    v4 = objc_alloc_init(DOCDownloadSettings);
    v5 = self->_downloadSettings;
    self->_downloadSettings = v4;

    downloadSettings = self->_downloadSettings;
  }

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke;
  v6[3] = &unk_89C38;
  v6[4] = self;
  [(DOCDownloadSettings *)downloadSettings fetchDefaultDownloadsLocationItem:v6];
}

void __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 providerDomainID], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = WBS_LOG_CHANNEL_PREFIXDownloads();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_cold_2(v7, v6);
    }
  }

  else
  {
    v13 = 0;
    v9 = [FPProviderDomain providerDomainForItem:v5 error:&v13];
    v6 = v13;
    if (v6)
    {
      v10 = WBS_LOG_CHANNEL_PREFIXDownloads();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_cold_1(v10, v6);
      }
    }

    else
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_354;
      block[3] = &unk_896A0;
      block[4] = *(a1 + 32);
      v12 = v9;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

id __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_354(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = DOCLocalizedDisplayName();
  v4 = *(a1 + 32);
  v5 = *(v4 + 232);
  *(v4 + 232) = v3;

  v6 = *(a1 + 32);
  v7 = v6[31];

  return [v6 reloadSpecifier:v7 animated:1];
}

- (BOOL)isFavoritesFolderRestricted:(id)a3
{
  v3 = +[WBWebFilterSettings sharedWebFilterSettings];
  v4 = [v3 usesAllowedSitesOnly];

  return v4;
}

- (id)favoritesFolderTitle
{
  if (!self->_managedBookmarksController)
  {
    v3 = objc_alloc_init(WBSManagedBookmarksController);
    managedBookmarksController = self->_managedBookmarksController;
    self->_managedBookmarksController = v3;
  }

  v5 = +[NSUserDefaults safari_browserDefaults];
  if ([v5 BOOLForKey:WBSFavoritesFolderIsTopLevelManagedBookmarksFolderKey])
  {
    v6 = [(WBSManagedBookmarksController *)self->_managedBookmarksController managedBookmarks];

    if (v6)
    {
      v7 = [(WBSManagedBookmarksController *)self->_managedBookmarksController topLevelBookmarksFolderTitle];
      goto LABEL_8;
    }
  }

  else
  {
  }

  v8 = [(WebBookmarkCollection *)self->_bookmarkCollection favoritesFolder];
  v7 = [v8 localizedTitle];

LABEL_8:

  return v7;
}

- (void)_bookmarksDidReload:(id)a3
{
  v4 = [(SafariSettingsController *)self specifierForID:@"FAVORITES_FOLDER"];
  [(SafariSettingsController *)self reloadSpecifier:v4];
}

void __43__SafariSettingsController_viewWillAppear___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[23] resume];
    dispatch_resume(v2[24]);
    WeakRetained = v2;
  }
}

void __43__SafariSettingsController_viewWillAppear___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    WeakRetained[225] = [v4 count] != 0;
    [WeakRetained reloadSpecifiers];
  }
}

void __43__SafariSettingsController_viewWillAppear___block_invoke_3(uint64_t a1, char a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __43__SafariSettingsController_viewWillAppear___block_invoke_4;
  v2[3] = &unk_8A588;
  v2[4] = *(a1 + 32);
  v3 = a2;
  dispatch_async(&_dispatch_main_q, v2);
}

_BYTE *__43__SafariSettingsController_viewWillAppear___block_invoke_4(uint64_t a1)
{
  *(*(a1 + 32) + 224) = *(a1 + 40);
  result = *(a1 + 32);
  if (result[224] == 1)
  {
    return [result reloadSpecifiers];
  }

  return result;
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = SafariSettingsController;
  [(SafariSettingsController *)&v3 willBecomeActive];
  [(SafariSettingsController *)self reloadSpecifierID:@"CLEAR_HISTORY_AND_DATA"];
}

- (void)_updateUserRestrictedState
{
  objc_initWeak(&location, self);
  featureManager = self->_featureManager;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __54__SafariSettingsController__updateUserRestrictedState__block_invoke;
  v7[3] = &unk_89F08;
  objc_copyWeak(&v8, &location);
  [(SafariSettingsFeatureManager *)featureManager determineIfHistoryClearingIsAvailableWithCompletionHandler:v7];
  v4 = self->_featureManager;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __54__SafariSettingsController__updateUserRestrictedState__block_invoke_3;
  v5[3] = &unk_89F08;
  objc_copyWeak(&v6, &location);
  [(SafariSettingsFeatureManager *)v4 determineIfScreenTimePasscodeIsSetWithCompletionHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __54__SafariSettingsController__updateUserRestrictedState__block_invoke(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __54__SafariSettingsController__updateUserRestrictedState__block_invoke_2;
  v3[3] = &unk_8A5B0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void __54__SafariSettingsController__updateUserRestrictedState__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _isHistoryClearingEnabled = *(a1 + 40);
    v3 = WeakRetained;
    [WeakRetained reloadSpecifierID:@"CLEAR_HISTORY_AND_DATA"];
    WeakRetained = v3;
  }
}

void __54__SafariSettingsController__updateUserRestrictedState__block_invoke_3(uint64_t a1, char a2)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __54__SafariSettingsController__updateUserRestrictedState__block_invoke_4;
  v3[3] = &unk_8A5B0;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = a2;
  dispatch_async(&_dispatch_main_q, v3);
  objc_destroyWeak(&v4);
}

void __54__SafariSettingsController__updateUserRestrictedState__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    _isScreenTimePasscodeEnabled = *(a1 + 40);
    v3 = WeakRetained;
    [WeakRetained reloadSpecifierID:@"CLEAR_HISTORY_AND_DATA"];
    WeakRetained = v3;
  }
}

- (void)updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing
{
  objc_initWeak(&location, self);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = __104__SafariSettingsController_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke;
  v3[3] = &unk_8A600;
  objc_copyWeak(&v4, &location);
  [(SafariSettingsController *)self _determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:v3];
  objc_destroyWeak(&v4);
  objc_destroyWeak(&location);
}

void __104__SafariSettingsController_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __104__SafariSettingsController_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke_2;
  block[3] = &unk_8A5D8;
  objc_copyWeak(v8, (a1 + 32));
  v9 = a3;
  v8[1] = a4;
  v10 = a2;
  dispatch_async(&_dispatch_main_q, block);
  objc_destroyWeak(v8);
}

void __104__SafariSettingsController_updateBiometricAuthenticationAndPasscodeAvailabilityForLockedPrivateBrowsing__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = +[NSUserDefaults safari_browserDefaults];
    [v3 setBool:*(a1 + 48) forKey:WBSBiometricAuthenticationIsAvailablePreferenceKey];
    [v3 setInteger:*(a1 + 40) forKey:WBSBiometricAuthenticationTypeIfAvailablePreferenceKey];
    [v3 setBool:*(a1 + 49) forKey:WBSPasscodeIsAvailablePreferenceKey];
    [v4 reloadSpecifiers];

    WeakRetained = v4;
  }
}

- (void)_determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __111__SafariSettingsController__determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler___block_invoke;
  block[3] = &unk_8A628;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

uint64_t __111__SafariSettingsController__determineIfAuthenticationIsAvailableForLockedPrivateBrowsingWithCompletionHandler___block_invoke(uint64_t a1)
{
  +[_SFSettingsAuthentication authenticationRequiresPasscode];
  +[_SFSettingsAuthentication biometryTypeCurrentlyAvailableForDevice];
  v2 = *(*(a1 + 32) + 16);

  return v2();
}

- (id)isSafariFraudWarningEnabled:(id)a3
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 safari_warnAboutFraudulentWebsites]);

  return v4;
}

- (void)safariFraudWarningsToggled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  [PSRootController setPreferenceValue:v6 specifier:a4];
  v7 = [NSUserDefaults alloc];
  v8 = _SFSafeBrowsingPreferencesPlistPath();
  v11 = [v7 initWithSuiteName:v8];

  v9 = [v6 BOOLValue];
  [v11 setBool:v9 forKey:SSBSafeBrowsingEnabledDefaultsKey];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, SSBSafeBrowsingEnabledStateDidChangeNotification, 0, 0, 0);
  [(SafariSettingsController *)self _synchronizeNanoUserDefaults];
}

- (id)isSafariBrowsingAssistantEnabled:(id)a3
{
  v3 = +[WBSBrowsingAssistantController hasUserConsent];

  return [NSNumber numberWithBool:v3];
}

- (void)safariBrowsingAssistantToggled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  [PSRootController setPreferenceValue:v6 specifier:a4];
  LODWORD(a4) = [v6 BOOLValue];

  if (a4)
  {
    v7 = &off_90BB0;
  }

  else
  {
    v7 = &off_90BC8;
  }

  v8 = BrowsingAssistantConsentStateKey;

  [(SafariSettingsListController *)self setSafariDefaultsValue:v7 forKey:v8];
}

- (void)_copyFile:(id)a3 toFile:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = +[NSFileManager defaultManager];
    [v8 _web_removeFileOnlyAtPath:v7];
    v12 = 0;
    v9 = [v8 copyItemAtPath:v5 toPath:v7 error:&v12];
    v10 = v12;
    v11 = v10;
    if ((v9 & 1) == 0)
    {
      NSLog(@"Failed to copy Default Safari image file '%@' to '%@', with error: %@", v5, v7, v10);
    }
  }
}

- (void)_synchronizeNanoUserDefaults
{
  if (!_synchronizeNanoUserDefaults_syncManager_0)
  {
    v3 = objc_alloc_init(NPSManager);
    v4 = _synchronizeNanoUserDefaults_syncManager_0;
    _synchronizeNanoUserDefaults_syncManager_0 = v3;
  }

  [(SafariSettingsListController *)self synchronizeSafariDefaults];
  v5 = _synchronizeNanoUserDefaults_syncManager_0;
  v6 = [NSSet setWithObjects:_SFNanoBlockAllCookiesEnabledKey, _SFWarnAboutFraudulentWebsitesDefaultsKey, 0];
  [v5 synchronizeUserDefaultsDomain:@"com.apple.mobilesafari" keys:v6 container:@"com.apple.mobilesafari"];
}

- (BOOL)isTabBarAvailable:(id)a3
{
  v3 = +[UIScreen mainScreen];
  [v3 bounds];
  v6 = [_SFFeatureAvailability isTabBarAvailableForScreenSize:v4, v5];

  return v6;
}

- (void)safariTogglePrivateBrowsingRequiresAuthentication:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 BOOLValue])
  {
    [PSRootController setPreferenceValue:v6 specifier:v7];
    [(SafariSettingsListController *)self setSafariDefaultsValue:v6 forKey:WBSPrivateBrowsingRequiresAuthenticationPreferenceKey];
  }

  else
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = __91__SafariSettingsController_safariTogglePrivateBrowsingRequiresAuthentication_forSpecifier___block_invoke;
    v8[3] = &unk_8A650;
    v9 = v7;
    v10 = self;
    v11 = v6;
    [_SFSettingsAuthentication authenticateForSettings:self allowAuthenticationReuse:0 completionHandler:v8];
  }
}

id __91__SafariSettingsController_safariTogglePrivateBrowsingRequiresAuthentication_forSpecifier___block_invoke(void *a1, char a2)
{
  if (a2)
  {
    [PSRootController setPreferenceValue:a1[6] specifier:a1[4]];
    v3 = a1[5];
    v4 = a1[6];
    v5 = WBSPrivateBrowsingRequiresAuthenticationPreferenceKey;

    return [v3 setSafariDefaultsValue:v4 forKey:v5];
  }

  else
  {
    [PSRootController setPreferenceValue:&__kCFBooleanTrue specifier:a1[4]];
    v7 = a1[5];
    v8 = v7[32];

    return [v7 reloadSpecifier:v8 animated:1];
  }
}

- (id)_biometryNameForLockedPrivateBrowsingToggle
{
  v2 = [(SafariSettingsListController *)self safariDefaultsValueForKey:WBSBiometricAuthenticationTypeIfAvailablePreferenceKey];
  objc_opt_class();
  v3 = @"Require Passcode to Unlock Private Browsing";
  if (objc_opt_isKindOfClass())
  {
    v4 = [v2 intValue];
    v5 = @"Require Face ID to Unlock Private Browsing";
    if (v4 != 2)
    {
      v5 = @"Require Passcode to Unlock Private Browsing";
    }

    if (v4 == 1)
    {
      v3 = @"Require Touch ID to Unlock Private Browsing";
    }

    else
    {
      v3 = v5;
    }
  }

  v6 = SafariSettingsLocalizedString(v3, @"Safari");

  return v6;
}

- (id)_specifierForEnablingFavoritesBarIcons
{
  v3 = SafariSettingsLocalizedString(@"Show Icons in Favorites Bar", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  v7[0] = PSContainerBundleIDKey;
  v7[1] = PSDefaultsKey;
  v8[0] = @"com.apple.mobilesafari";
  v8[1] = @"com.apple.mobilesafari";
  v7[2] = PSKeyNameKey;
  v7[3] = PSDefaultValueKey;
  v8[2] = SFShowsIconsInFavoritesBarKey;
  v8[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v4 setProperties:v5];

  return v4;
}

- (id)_specifierForSelectingFavoritesBarButtonStyle
{
  v3 = SafariSettingsLocalizedString(@"Favorites Bar Appearance", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  v5 = SafariSettingsLocalizedString(@"Show Icons and Text", @"Safari");
  v13[0] = v5;
  v6 = SafariSettingsLocalizedString(@"Show Icons Only", @"Safari");
  v13[1] = v6;
  v7 = SafariSettingsLocalizedString(@"Show Text Only", @"Safari");
  v13[2] = v7;
  v8 = [NSArray arrayWithObjects:v13 count:3];
  [v4 setValues:&off_90DB8 titles:v8];

  v11[0] = PSContainerBundleIDKey;
  v11[1] = PSDefaultsKey;
  v12[0] = @"com.apple.mobilesafari";
  v12[1] = @"com.apple.mobilesafari";
  v11[2] = PSKeyNameKey;
  v11[3] = PSDefaultValueKey;
  v12[2] = SFBookmarkButtonStyleInFavoritesBarKey;
  v12[3] = &off_90BE0;
  v9 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
  [v4 setProperties:v9];

  return v4;
}

- (id)_specifierForEnablingPerSiteSettingSync
{
  v3 = SafariSettingsLocalizedString(@"Per Site Setting Sync Toggle", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"_setSafariPreferencesPerSiteSettingsSync:forSpecifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];

  v7[0] = PSContainerBundleIDKey;
  v7[1] = PSDefaultsKey;
  v8[0] = @"com.apple.mobilesafari";
  v8[1] = @"com.apple.mobilesafari";
  v7[2] = PSKeyNameKey;
  v7[3] = PSDefaultValueKey;
  v8[2] = WBSEnablePerSiteSettingsSyncPreferenceKey;
  v8[3] = &__kCFBooleanTrue;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v4 setProperties:v5];

  return v4;
}

- (void)_setSafariPreferencesPerSiteSettingsSync:(id)a3 forSpecifier:(id)a4
{
  v5 = [a3 BOOLValue];
  v6 = WBSEnablePerSiteSettingsSyncPreferenceKey;
  if (v5)
  {
    [(SafariSettingsListController *)self setSafariDefaultsValue:&__kCFBooleanTrue forKey:WBSEnablePerSiteSettingsSyncPreferenceKey];
    v7 = +[WBSSafariBookmarksSyncAgentProxy sharedProxy];
    [v7 syncUpSafariPerSiteSettingsSyncWithCompletion:&__block_literal_global_440];

    v8 = +[WBSSafariBookmarksSyncAgentProxy sharedProxy];
    [v8 syncDownSafariPerSiteSettingsSyncWithCompletion:&__block_literal_global_442];
  }

  else
  {

    [(SafariSettingsListController *)self setSafariDefaultsValue:&__kCFBooleanFalse forKey:v6];
  }
}

- (id)specifiersForPerSitePreferencesForSettingsPersona:(int64_t)a3
{
  v5 = +[NSMutableArray array];
  v6 = SafariSettingsLocalizedString(@"Websites Group Title", @"Safari");
  v7 = [PSSpecifier groupSpecifierWithName:v6];
  [v5 addObject:v7];

  if (self->_safariSyncEnabled)
  {
    v8 = [(SafariSettingsController *)self _specifierForEnablingPerSiteSettingSync];
    [v5 addObject:v8];

    v9 = [PSSpecifier groupSpecifierWithID:@"SPACE_CELL_FOR_PER_SITE_SETTINGS_SYNC_TOGGLE"];
    [v5 addObject:v9];
  }

  v10 = SafariSettingsLocalizedString(@"Page Zoom", @"Safari");
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v11];

  v12 = SafariSettingsLocalizedString(@"Request Desktop Website", @"Safari");
  v13 = [PSSpecifier preferenceSpecifierNamed:v12 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v13];

  v14 = SafariSettingsLocalizedString(@"Reader", @"Safari");
  v15 = [PSSpecifier preferenceSpecifierNamed:v14 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v15];

  if (!a3)
  {
    if (+[WBSFeatureAvailability isSafariProfilesEnabled])
    {
      v16 = [objc_opt_class() tabGroupManager];
      v17 = [v16 hasMultipleProfiles];

      if (v17)
      {
        v18 = SafariSettingsLocalizedString(@"Profiles Title", @"Profiles");
        v19 = [PSSpecifier preferenceSpecifierNamed:v18 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
        [v5 addObject:v19];
      }
    }
  }

  if ([(SafariSettingsController *)self _areContentBlockersEnabled])
  {
    v20 = SafariSettingsLocalizedString(@"Content Blockers", @"Safari");
    v21 = [PSSpecifier preferenceSpecifierNamed:v20 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v5 addObject:v21];
  }

  if (self->_shouldShowLockdownModeSection)
  {
    v22 = SafariSettingsLocalizedString(@"Lockdown Mode", @"SafariLockdownMode");
    v23 = [PSSpecifier preferenceSpecifierNamed:v22 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v5 addObject:v23];
  }

  v24 = SafariSettingsLocalizedString(@"Camera", @"Safari");
  v25 = [PSSpecifier preferenceSpecifierNamed:v24 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v25];

  v26 = SafariSettingsLocalizedString(@"Microphone", @"Safari");
  v27 = [PSSpecifier preferenceSpecifierNamed:v26 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v27];

  v28 = SafariSettingsLocalizedString(@"Location", @"Safari");
  v29 = [PSSpecifier preferenceSpecifierNamed:v28 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v5 addObject:v29];

  return v5;
}

- (id)_specifierForProfileGroup
{
  v2 = SafariSettingsLocalizedString(@"Profiles Title", @"Profiles");
  v3 = [PSSpecifier groupSpecifierWithID:@"PROFILES" name:v2];

  [v3 setIdentifier:@"PROFILES"];
  v4 = [objc_opt_class() tabGroupManager];
  v5 = [v4 hasMultipleProfiles];
  v6 = @"Profiles Footer Text No Profile";
  if (v5)
  {
    v6 = @"Profiles Footer Text";
  }

  v7 = v6;

  v11 = PSFooterTextGroupKey;
  v8 = SafariSettingsLocalizedString(v7, @"Profiles");

  v12 = v8;
  v9 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
  [v3 setProperties:v9];

  return v3;
}

- (id)_specifierForProfile:(id)a3
{
  v4 = a3;
  v5 = [v4 title];
  v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:self set:0 get:0 detail:objc_opt_class() cell:2 edit:0];

  v7 = objc_alloc_init(SafariProfileSettingsUserInfo);
  [(SafariProfileSettingsUserInfo *)v7 setProfile:v4];
  [(SafariProfileSettingsUserInfo *)v7 setDelegate:self];
  v8 = [objc_opt_class() tabGroupManager];
  [(SafariProfileSettingsUserInfo *)v7 setTabGroupManager:v8];

  [v6 setUserInfo:v7];
  v9 = [v4 identifier];

  v10 = [@"PROFILE_" stringByAppendingString:v9];
  [v6 setIdentifier:v10];

  return v6;
}

- (id)_specifierForNewProfile
{
  v3 = SafariSettingsLocalizedString(@"New Profile Title", @"Profiles");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setButtonAction:"showCreateEditProfileSheet:"];
  [v4 setIdentifier:@"NEW_PROFILE"];

  return v4;
}

- (id)_specifierForSearchFieldPosition
{
  v3 = +[UIDevice safari_mainScreenClass];
  v4 = 0;
  if (v3 <= 1)
  {
    if (v3 <= 1)
    {
      v4 = @"HomeButton";
    }
  }

  else
  {
    if (v3 == (&dword_0 + 2))
    {
      v5 = +[WBSFeatureAvailability isSolariumEnabled];
      v6 = @"WideNotch";
    }

    else
    {
      if (v3 != (&dword_0 + 3))
      {
        if (v3 == &dword_4)
        {
          v4 = @"DynamicIsland";
        }

        goto LABEL_13;
      }

      v5 = +[WBSFeatureAvailability isSolariumEnabled];
      v6 = @"NarrowNotch";
    }

    if (v5)
    {
      v6 = @"Notch";
    }

    v4 = v6;
  }

LABEL_13:
  if (+[WBSFeatureAvailability isSolariumEnabled])
  {
    v7 = @"Bottom-%@";
  }

  else
  {
    v7 = @"BottomSearchField-%@";
  }

  v8 = [NSString stringWithFormat:v7, v4];
  v9 = [SafariSettingsVisualPickerImageButtonConfiguration alloc];
  v10 = SafariSettingsLocalizedString(@"Bottom", @"TabBar");
  v31 = v8;
  v11 = [(SafariSettingsVisualPickerImageButtonConfiguration *)v9 initWithTitle:v10 preferenceValue:&off_90BB0 imageName:v8];

  if (+[WBSFeatureAvailability isSolariumEnabled])
  {
    v12 = @"Split-%@";
  }

  else
  {
    v12 = @"TopSearchField-%@";
  }

  v13 = [NSString stringWithFormat:v12, v4];
  v14 = [SafariSettingsVisualPickerImageButtonConfiguration alloc];
  v15 = SafariSettingsLocalizedString(@"Top", @"TabBar");
  v16 = [(SafariSettingsVisualPickerImageButtonConfiguration *)v14 initWithTitle:v15 preferenceValue:&off_90BC8 imageName:v13];

  v32[0] = v11;
  v32[1] = v16;
  v17 = [NSArray arrayWithObjects:v32 count:2];
  v18 = [NSMutableArray arrayWithArray:v17];

  if (+[WBSFeatureAvailability isSolariumEnabled])
  {
    v30 = [NSString stringWithFormat:@"Compact-%@", v4];
    v19 = [SafariSettingsVisualPickerImageButtonConfiguration alloc];
    SafariSettingsLocalizedString(@"Compact", @"TabBar");
    v21 = v20 = self;
    v22 = [(SafariSettingsVisualPickerImageButtonConfiguration *)v19 initWithTitle:v21 preferenceValue:&off_90BF8 imageName:v30];

    v23 = [(SafariSettingsController *)v20 traitCollection];
    v24 = [v23 preferredContentSizeCategory];
    v25 = [(SafariSettingsController *)v20 view];
    SFCapsuleCollectionViewMaximumContentSizeCategoryForMinibar();
    v27 = v26 = v11;
    [(SafariSettingsVisualPickerImageButtonConfiguration *)v22 setEnabled:UIContentSizeCategoryCompareToCategory(v24, v27) != NSOrderedDescending];

    v11 = v26;
    [v18 insertObject:v22 atIndex:0];
  }

  v28 = [SafariVisualPickerSettingsTableCell visualPickerSpecifierWithButtons:v18 preferenceDomain:@"com.apple.mobilesafari" preferenceKey:SFPreferredCapsuleLayoutStyleKey];

  return v28;
}

- (id)_specifierForEnablingBackgroundColorInTabBar
{
  v3 = SafariSettingsLocalizedString(@"Allow Website Tinting", @"TabBar");
  v4 = +[UIDevice currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5 == &dword_0 + 1)
  {
    v6 = SafariSettingsLocalizedString(@"Show Color in Tab Bar", @"TabBar");

    v3 = v6;
  }

  v7 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
  v10[0] = PSContainerBundleIDKey;
  v10[1] = PSDefaultsKey;
  v11[0] = @"com.apple.mobilesafari";
  v11[1] = @"com.apple.mobilesafari";
  v10[2] = PSDefaultValueKey;
  v10[3] = PSKeyNameKey;
  v11[2] = &__kCFBooleanFalse;
  v11[3] = SFDisableBackgroundColorInTabBarKey;
  v10[4] = PSNegateValueKey;
  v11[4] = &__kCFBooleanTrue;
  v8 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:5];
  [v7 setProperties:v8];

  return v7;
}

- (id)_specifierForNewDocumentShortcutBehavior
{
  v3 = SafariSettingsLocalizedString(@"When Using New Keyboard Shortcut", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:objc_opt_class() cell:2 edit:0];

  v12[0] = PSContainerBundleIDKey;
  v12[1] = PSDefaultsKey;
  v13[0] = @"com.apple.mobilesafari";
  v13[1] = @"com.apple.mobilesafari";
  v12[2] = PSDefaultValueKey;
  v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[SFFeatureManager defaultNewDocumentShortcutBehavior]);
  v13[2] = v5;
  v13[3] = @"NEW_DOCUMENT_SHORTCUT_BEHAVIOR";
  v12[3] = PSIDKey;
  v12[4] = PSKeyNameKey;
  v13[4] = SFNewDocumentShortcutBehaviorKey;
  v6 = [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:5];
  [v4 setProperties:v6];

  v7 = SafariSettingsLocalizedString(@"Open Tab", @"Safari");
  v11[0] = v7;
  v8 = SafariSettingsLocalizedString(@"Open Window", @"Safari");
  v11[1] = v8;
  v9 = [NSArray arrayWithObjects:v11 count:2];
  [v4 setValues:&off_90DD0 titles:v9];

  return v4;
}

- (void)_updateSpecifierForNewDocumentShortcutBehaviorIfNeeded
{
  if (self->_needsUpdateSpecifierForNewDocumentShortcutBehavior)
  {
    self->_needsUpdateSpecifierForNewDocumentShortcutBehavior = 0;
    v3 = OBJC_IVAR___PSListController__specifiers;
    v4 = [*&self->super.PSListController_opaque[OBJC_IVAR___PSListController__specifiers] indexOfSpecifierWithID:@"NEW_DOCUMENT_SHORTCUT_BEHAVIOR"];
    hardwareKeyboardIsAvailable = self->_hardwareKeyboardIsAvailable;
    if (hardwareKeyboardIsAvailable && v4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = [*&self->super.PSListController_opaque[v3] indexOfSpecifierWithID:@"OPEN_LINKS_IN_BACKGROUND_IPAD"];
      v8 = [(SafariSettingsController *)self _specifierForNewDocumentShortcutBehavior];
      [(SafariSettingsController *)self insertSpecifier:v8 atIndex:v7 + 1 animated:1];
    }

    else if (!hardwareKeyboardIsAvailable && v4 != 0x7FFFFFFFFFFFFFFFLL)
    {

      [(SafariSettingsController *)self removeSpecifierAtIndex:v4 animated:1];
    }
  }
}

- (void)_hardwareKeyboardAvailabilityDidChange
{
  v3 = +[UIDevice currentDevice];
  self->_hardwareKeyboardIsAvailable = [v3 _isHardwareKeyboardAvailable];

  self->_needsUpdateSpecifierForNewDocumentShortcutBehavior = 1;
  objc_initWeak(&location, self);
  v4 = dispatch_time(0, 400000000);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __66__SafariSettingsController__hardwareKeyboardAvailabilityDidChange__block_invoke;
  v5[3] = &unk_8A560;
  objc_copyWeak(&v6, &location);
  dispatch_after(v4, &_dispatch_main_q, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __66__SafariSettingsController__hardwareKeyboardAvailabilityDidChange__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSpecifierForNewDocumentShortcutBehaviorIfNeeded];
}

- (id)_specifierForClosingTabsAutomatically
{
  v3 = SafariSettingsLocalizedString(@"Close Tabs", @"Safari");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"_setValueForClosingTabsAutomatically:" get:"_valueForClosingTabsAutomatically" detail:objc_opt_class() cell:2 edit:0];

  v12 = PSIDKey;
  v13 = @"CLOSE_TABS";
  v5 = [NSDictionary dictionaryWithObjects:&v13 forKeys:&v12 count:1];
  [v4 setProperties:v5];

  v6 = +[NSMutableArray array];
  v7 = +[NSMutableArray array];
  for (i = 0; i != 4; ++i)
  {
    v9 = [NSNumber numberWithUnsignedInteger:i];
    [v6 addObject:v9];

    v10 = WBSAutomaticTabClosingIntervalSettingsTitle();
    [v7 addObject:v10];
  }

  [v4 setValues:v6 titles:v7];

  return v4;
}

- (id)_specifierForEnablingStandaloneTabBar
{
  if ((+[WBSFeatureAvailability isSolariumEnabled]& 1) != 0)
  {
    v2 = 0;
  }

  else
  {
    v3 = [SafariSettingsVisualPickerImageButtonConfiguration alloc];
    v4 = SafariSettingsLocalizedString(@"Separate Tab Bar", @"TabBar");
    v5 = [(SafariSettingsVisualPickerImageButtonConfiguration *)v3 initWithTitle:v4 preferenceValue:&__kCFBooleanTrue imageName:@"SeparateTabBar"];

    v6 = [SafariSettingsVisualPickerImageButtonConfiguration alloc];
    v7 = SafariSettingsLocalizedString(@"Compact Tab Bar", @"TabBar");
    v8 = [(SafariSettingsVisualPickerImageButtonConfiguration *)v6 initWithTitle:v7 preferenceValue:&__kCFBooleanFalse imageName:@"CompactTabBar"];

    v2 = [SafariVisualPickerSettingsTableCell visualPickerSpecifierWithLeadingButton:v5 trailingButton:v8 preferenceDomain:@"com.apple.mobilesafari" preferenceKey:SFEnableStandaloneTabBarKey];
  }

  return v2;
}

- (id)_specifierForHTTPSOnly
{
  v3 = _WBSLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:6 edit:0];
  v7[0] = PSContainerBundleIDKey;
  v7[1] = PSDefaultsKey;
  v8[0] = @"com.apple.mobilesafari";
  v8[1] = @"com.apple.mobilesafari";
  v7[2] = PSKeyNameKey;
  v7[3] = PSIDKey;
  v8[2] = SFUseHTTPSOnlyKey;
  v8[3] = @"WARN_ABOUT_INSECURE_CONNECTIONS";
  v7[4] = PSDefaultValueKey;
  v8[4] = &__kCFBooleanFalse;
  v5 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:5];
  [v4 setProperties:v5];

  return v4;
}

- (id)_specifierForImportButton
{
  v3 = _WBSLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"IMPORT_BUTTON"];
  [v4 setButtonAction:"_importButtonTapped"];

  return v4;
}

- (void)_importButtonTapped
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = __47__SafariSettingsController__importButtonTapped__block_invoke;
  v2[3] = &unk_8A6B8;
  v2[4] = self;
  [(SafariSettingsController *)self _fetchExportLocationWithCompletionHandler:v2];
}

void __47__SafariSettingsController__importButtonTapped__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v7 = [[SafariImportViewController alloc] initWithLocationToScanForExports:a2 folderURLToScanForExports:v5];

  [(SafariImportViewController *)v7 setDelegate:*(a1 + 32)];
  v6 = [[UINavigationController alloc] initWithRootViewController:v7];
  [v6 setModalPresentationStyle:2];
  [*(a1 + 32) presentViewController:v6 animated:1 completion:0];
}

- (void)importViewController:(id)a3 didDismissAfterSuccessfulImportingDataFromFileURL:(id)a4 importedDataClassification:(int64_t)a5
{
  v7 = a4;
  v8 = objc_opt_class();
  v11 = v7;
  v9 = [NSArray arrayWithObjects:&v11 count:1];

  v10 = [v8 _alertToDeleteBrowsingDataFiles:v9 importedDataClassification:a5];

  [(SafariSettingsController *)self presentViewController:v10 animated:1 completion:0];
}

+ (id)_alertToDeleteBrowsingDataFiles:(id)a3 importedDataClassification:(int64_t)a4
{
  v5 = a3;
  v6 = [v5 firstObject];
  v7 = [v6 lastPathComponent];

  v8 = _WBSLocalizedString();
  v9 = [NSString localizedStringWithFormat:v8, v7];

  if (a4 > 2)
  {
    v10 = 0;
  }

  else
  {
    v10 = _WBSLocalizedString();
  }

  v11 = [UIAlertController alertControllerWithTitle:v9 message:v10 preferredStyle:1];
  v12 = _WBSLocalizedString();
  v13 = [UIAlertAction actionWithTitle:v12 style:1 handler:&__block_literal_global_625];
  [v11 addAction:v13];

  v14 = _WBSLocalizedString();
  v15 = [NSString stringWithFormat:v14, v7];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __87__SafariSettingsController__alertToDeleteBrowsingDataFiles_importedDataClassification___block_invoke_2;
  v19[3] = &unk_896F0;
  v20 = v5;
  v16 = v5;
  v17 = [UIAlertAction actionWithTitle:v15 style:2 handler:v19];
  [v11 addAction:v17];

  return v11;
}

void __87__SafariSettingsController__alertToDeleteBrowsingDataFiles_importedDataClassification___block_invoke_2(uint64_t a1)
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v2)
  {
    v4 = v2;
    v5 = *v17;
    *&v3 = 138478083;
    v14 = v3;
    do
    {
      v6 = 0;
      do
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v16 + 1) + 8 * v6);
        v8 = +[NSFileManager defaultManager];
        v15 = 0;
        v9 = [v8 removeItemAtURL:v7 error:&v15];
        v10 = v15;

        if ((v9 & 1) == 0)
        {
          v11 = WBS_LOG_CHANNEL_PREFIXExport();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
          {
            v12 = v11;
            v13 = [v10 safari_privacyPreservingDescription];
            *buf = v14;
            v21 = v7;
            v22 = 2114;
            v23 = v13;
            _os_log_debug_impl(&dword_0, v12, OS_LOG_TYPE_DEBUG, "Error deleting %{private}@ after file import with error %{public}@", buf, 0x16u);
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v1 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v4);
  }
}

- (id)_specifierForExportButton
{
  v3 = _WBSLocalizedString();
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:self set:0 get:0 detail:0 cell:13 edit:0];

  [v4 setIdentifier:@"EXPORT_BUTTON"];
  [v4 setButtonAction:"_exportButtonTapped"];

  return v4;
}

- (void)_showExportSheetWithCompletionHandler:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = __66__SafariSettingsController__showExportSheetWithCompletionHandler___block_invoke;
  v4[3] = &unk_8A720;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(SafariSettingsController *)v5 _fetchExportLocationWithCompletionHandler:v4];
}

void __66__SafariSettingsController__showExportSheetWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [[SafariExportViewController alloc] initWithExportLocation:a2];
  v3 = [[UINavigationController alloc] initWithRootViewController:v4];
  [v3 setModalPresentationStyle:2];
  [*(a1 + 32) presentViewController:v3 animated:1 completion:*(a1 + 40)];
}

- (void)_fetchExportLocationWithCompletionHandler:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(DOCDownloadSettings);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke;
  v6[3] = &unk_8A748;
  v7 = v3;
  v5 = v3;
  [v4 fetchDefaultDownloadsLocationItem:v6];
}

void __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke_2;
  block[3] = &unk_89D68;
  v8 = a2;
  v9 = a3;
  v10 = *(a1 + 32);
  v5 = v9;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

void __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2 || *(a1 + 40))
  {
    v3 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke_2_cold_1(a1, v3);
    }

    v2 = *(a1 + 32);
  }

  v4 = [v2 providerDomainID];
  v5 = [v4 hasPrefix:@"com.apple.FileProvider.LocalStorage"];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [*(a1 + 32) providerDomainID];
    v8 = [v7 hasPrefix:@"com.apple.CloudDocs.iCloudDriveFileProvider"];

    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v6 = 2;
    }
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 32) fileURL];
  (*(v9 + 16))(v9, v6, v10);
}

- (id)_valueForClosingTabsAutomatically
{
  v2 = +[WBSAutomaticTabClosingUtilities automaticTabClosingInterval];

  return [NSNumber numberWithUnsignedInteger:v2];
}

- (void)_setValueForClosingTabsAutomatically:(id)a3
{
  v3 = [a3 integerValue];

  [WBSAutomaticTabClosingUtilities setAutomaticTabClosingInterval:v3];
}

- (id)_valueForAutomaticallyDownloadReadingListItems
{
  v2 = [(SafariSettingsListController *)self safariDefaultsValueForKey:_SFAutomaticallyArchiveReadingListItemsEnabledKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 BOOLValue]);
  }

  else
  {
    v3 = &__kCFBooleanFalse;
  }

  return v3;
}

- (BOOL)isLockedPrivateBrowsingRestricted:(id)a3
{
  v3 = [(SafariSettingsListController *)self safariDefaultsValueForKey:WBSPasscodeIsAvailablePreferenceKey];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 BOOLValue] ^ 1;
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (void)setUpSearchSuggestionText:(BOOL)a3
{
  v3 = a3;
  v19 = localizedPrivacyButtonTitleForBundleIdentifier(@"com.apple.onboarding.sirisuggestions");
  searchGroupSettingsSpecifier = self->_searchGroupSettingsSpecifier;
  v6 = [NSValue valueWithNonretainedObject:self];
  [(PSSpecifier *)searchGroupSettingsSpecifier setProperty:v6 forKey:PSFooterHyperlinkViewTargetKey];

  [(PSSpecifier *)self->_searchGroupSettingsSpecifier setProperty:@"showSearchExplanationSheet:" forKey:PSFooterHyperlinkViewActionKey];
  v7 = [(SafariSettingsController *)self safariReadPrivateSearchEnginePreferenceValue:0];
  if ([v7 isEqualToString:@"Default"])
  {
    v8 = [(SafariSettingsListController *)self safariSharedDefaultsValueForKey:_SFSearchEngineStringDefaultsKey];

    v7 = v8;
  }

  v9 = +[_SFSearchEngineController sharedInstance];
  v10 = [v9 engineInfoFor:v7];
  v11 = [v10 shortName];

  if ([v11 isEqualToString:WBSSearchProviderShortNameGoogle])
  {
    v12 = !v3;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    [(PSSpecifier *)self->_searchGroupSettingsSpecifier setProperty:v19 forKey:PSFooterHyperlinkViewTitleKey];
    v13 = self->_searchGroupSettingsSpecifier;
    v21.length = [v19 length];
    v21.location = 0;
    v14 = NSStringFromRange(v21);
    [(PSSpecifier *)v13 setProperty:v14 forKey:PSFooterHyperlinkViewLinkRangeKey];
  }

  else
  {
    v14 = SafariSettingsLocalizedString(@"Search Suggestions Explanation Footer Description", @"Safari");
    v15 = [NSString stringWithFormat:@"%@ %@", v14, v19];
    [(PSSpecifier *)self->_searchGroupSettingsSpecifier setProperty:v15 forKey:PSFooterHyperlinkViewTitleKey];
    v16 = self->_searchGroupSettingsSpecifier;
    v17 = [v14 length];
    v22.length = [v19 length];
    v22.location = v17 + 1;
    v18 = NSStringFromRange(v22);
    [(PSSpecifier *)v16 setProperty:v18 forKey:PSFooterHyperlinkViewLinkRangeKey];
  }
}

- (void)setSearchSuggestionsEnabled:(id)a3 forSpecifier:(id)a4
{
  v6 = a3;
  [(SafariSettingsController *)self setPreferenceValue:v6 specifier:a4];
  v7 = [v6 BOOLValue];

  [(SafariSettingsController *)self setUpSearchSuggestionText:v7];
  searchGroupSettingsSpecifier = self->_searchGroupSettingsSpecifier;

  [(SafariSettingsController *)self reloadSpecifier:searchGroupSettingsSpecifier];
}

- (void)showClearHistoryAndDataConfirmation:(id)a3
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __64__SafariSettingsController_showClearHistoryAndDataConfirmation___block_invoke;
  v9[3] = &unk_895D8;
  v9[4] = self;
  v4 = objc_retainBlock(v9);
  if ((+[NSBundle safari_isMobileSafariInstalled]& 1) != 0)
  {
    v5 = [SFClearHistoryViewController alloc];
    v6 = [objc_opt_class() tabGroupManager];
    v7 = [v5 initWithTabGroupManager:v6 activeProfileIdentifier:0];

    [v7 setDelegate:self];
    v8 = [[UINavigationController alloc] initWithRootViewController:v7];
    [(SafariSettingsController *)self presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    (v4[2])(v4);
  }
}

void __64__SafariSettingsController_showClearHistoryAndDataConfirmation___block_invoke(uint64_t a1)
{
  v2 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:*(a1 + 32) set:0 get:0 detail:0 cell:-1 edit:0];
  [v2 setAccessibilityIdentifier:@"ClearHistoryAndDataConfirmationView"];
  if ([*(a1 + 32) _isCloudHistoryEnabled])
  {
    v3 = @"Clear History and Data Prompt iCloud Enabled";
  }

  else
  {
    v3 = @"Clear History and Data Prompt";
  }

  v4 = SafariSettingsLocalizedString(v3, @"Safari");
  v9[0] = PSConfirmationTitleKey;
  v5 = SafariSettingsLocalizedString(@"Clear History and Data Prompt Button Title", @"Safari");
  v10[0] = v5;
  v10[1] = v4;
  v9[1] = PSConfirmationPromptKey;
  v9[2] = PSConfirmationOKKey;
  v6 = SafariSettingsLocalizedString(@"Clear", @"Safari");
  v10[2] = v6;
  v9[3] = PSConfirmationCancelKey;
  v7 = SafariSettingsLocalizedString(@"Cancel", @"Safari");
  v10[3] = v7;
  v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v2 setupWithDictionary:v8];

  [v2 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
  [v2 setConfirmationAction:"safariClearHistoryAndData"];
  [*(a1 + 32) showConfirmationViewForSpecifier:v2];
}

- (void)safariClearHistoryAndData
{
  if ((+[NSBundle safari_isMobileSafariInstalled]& 1) != 0)
  {
    if ((+[WBSFeatureAvailability isSafariProfilesEnabled]& 1) == 0)
    {
      v4 = +[NSDate distantPast];
      v3 = +[NSDate now];
      [(SafariSettingsController *)self _safariClearHistoryAndDataAddedAfterDate:v4 beforeDate:v3 profileIdentifier:WBSDefaultProfileIdentifier clearAllProfiles:0 closeTabs:0];
    }
  }

  else
  {

    [(SafariSettingsController *)self clearWebBrowsingData];
  }
}

- (void)safariClearHistoryAndDataAndTabs
{
  if ((+[WBSFeatureAvailability isSafariProfilesEnabled]& 1) == 0)
  {
    v4 = +[NSDate distantPast];
    v3 = +[NSDate now];
    [(SafariSettingsController *)self _safariClearHistoryAndDataAddedAfterDate:v4 beforeDate:v3 profileIdentifier:WBSDefaultProfileIdentifier clearAllProfiles:0 closeTabs:1];
  }
}

- (void)_safariClearHistoryAndDataAddedAfterDate:(id)a3 beforeDate:(id)a4 profileIdentifier:(id)a5 clearAllProfiles:(BOOL)a6 closeTabs:(BOOL)a7
{
  v7 = a7;
  v74 = a6;
  v80 = a3;
  v75 = a4;
  v79 = a5;
  group = dispatch_group_create();
  v10 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "Clearing history and data", buf, 2u);
  }

  v11 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [SafariSettingsController _safariClearHistoryAndDataAddedAfterDate:beforeDate:profileIdentifier:clearAllProfiles:closeTabs:];
  }

  killSafari();
  v12 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [SafariSettingsController _safariClearHistoryAndDataAddedAfterDate:beforeDate:profileIdentifier:clearAllProfiles:closeTabs:];
  }

  killSafariViewService();
  v72 = [WBSettingsTask taskForDeletingHistoryAfterDate:v80 beforeDate:v75 forProfileIdentifier:v79 clearAllProfiles:v74];
  v13 = +[SafariSettingsTaskHandler sharedHandler];
  [v13 enqueueTask:v72];

  v78 = [objc_opt_class() _createTabGroupManagerForClearingHistory];
  if (v7)
  {
    if (v74)
    {
      v14 = [v78 allProfileIdentifiers];
      [v78 closeAllTabsInProfilesWithIdentifiers:v14];

      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v15 = [v78 allNamedProfileIdentifiers];
      v16 = [v15 countByEnumeratingWithState:&v97 objects:v103 count:16];
      if (v16)
      {
        v17 = *v98;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v98 != v17)
            {
              objc_enumerationMutation(v15);
            }

            v19 = *(*(&v97 + 1) + 8 * i);
            v20 = +[_SFBrowserSavedState sharedBrowserSavedState];
            [v20 clearSavedTabsForProfileWithIdentifier:v19 closingDatabase:0];
          }

          v16 = [v15 countByEnumeratingWithState:&v97 objects:v103 count:16];
        }

        while (v16);
      }

      v21 = +[_SFBrowserSavedState sharedBrowserSavedState];
      [v21 clearSavedTabsForProfileWithIdentifier:WBSDefaultProfileIdentifier closingDatabase:1];
    }

    else
    {
      v22 = [NSSet setWithObject:v79];
      [v78 closeAllTabsInProfilesWithIdentifiers:v22];

      v21 = +[_SFBrowserSavedState sharedBrowserSavedState];
      [v21 clearSavedTabsForProfileWithIdentifier:v79 closingDatabase:1];
    }
  }

  v77 = +[NSDate distantPast];
  if (v74)
  {
    [v78 allProfileIdentifiers];
  }

  else
  {
    [NSSet setWithObject:v79];
  }
  v23 = ;
  v24 = +[_SFBrowserSavedState sharedBrowserSavedState];
  [v24 readRecentlyClosedTabsState];

  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  obj = v23;
  v25 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
  if (v25)
  {
    v26 = *v94;
    do
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v94 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v28 = *(*(&v93 + 1) + 8 * j);
        v29 = +[_SFBrowserSavedState sharedBrowserSavedState];
        [v29 clearRecentlyClosedTabsForProfileWithIdentifier:v28];

        v30 = +[WBSSiriIntelligenceDonor sharedInstance];
        [v30 removeAllCoreSpotlightTabDataDonatedBySafariForProfileWithIdentifier:v79];

        v31 = SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(v28);
        if (v31)
        {
          v32 = SafariFrequentlyVisitedSitesBannedURLStoreURLForProfileWithIdentifier(v28);
          v33 = [[WBSFrequentlyVisitedSitesBannedURLStore alloc] initWithStoreURL:v31 history:0];
          v34 = [FrequentlyVisitedSitesController alloc];
          v35 = +[WebBookmarkCollection safariBookmarkCollection];
          v36 = [v78 tabCollection];
          v37 = [(FrequentlyVisitedSitesController *)v34 initWithBookmarkCollection:v35 history:0 bannedURLStore:v33 tabCollection:v36 profileIdentifier:v28];
          [(FrequentlyVisitedSitesController *)v37 clearFrequentlyVisitedSites];

          if ([v80 isEqualToDate:v77])
          {
            [v33 removeAllURLStrings];
            [WBSDigitalHealthManager deleteAllUsageHistoryWithProfileIdentifier:v28];
          }

          else
          {
            [WBSDigitalHealthManager deleteUsageHistoryFromDate:v80 toDate:v75 profileIdentifier:v28];
          }

          v38 = +[WBSIgnoredSiriSuggestedSitesController sharedController];
          [v38 removeIgnoredSiriSuggestedSitesInProfile:v28 afterDate:v80];
        }
      }

      v25 = [obj countByEnumeratingWithState:&v93 objects:v102 count:16];
    }

    while (v25);
  }

  +[WBSParsecDSession clearAllParsecFeedbackAndEngagedCompletions];
  [WBSPrivacyReportData clearCachedDataForProfilesWithIdentifiers:obj];
  v39 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
  {
    [SafariSettingsController _safariClearHistoryAndDataAddedAfterDate:beforeDate:profileIdentifier:clearAllProfiles:closeTabs:];
  }

  v40 = +[WBSBiomeDonationManager sharedManager];
  [v40 clearEventsDonatedSinceDate:v80];

  v41 = objc_alloc_init(_SFRecentWebSearchesController);
  [v41 clearRecentSearches];
  v42 = [v79 isEqualToString:WBSDefaultProfileIdentifier];
  if ((v42 | v74) == 1)
  {
    v43 = objc_alloc_init(SBSApplicationService);
    [v43 deleteSnapshotsForApplicationIdentifier:@"com.apple.mobilesafari"];
    [v43 invalidate];
    v44 = +[SFStoreBannerTracker sharedTracker];
    [v44 clear];

    v45 = +[SFHighlightBannerTracker sharedTracker];
    [v45 clear];

    v46 = +[WBSQuickWebsiteSearchController sharedController];
    [v46 clearWithCompletionHandler:0];

    v47 = +[WBSPasswordWarningStore sharedStore];
    [v47 clearStoreSynchronously];

    v48 = +[WBSGeneratedPasswordStore sharedStore];
    [v48 synchronouslyRemoveGeneratedPasswordsNewerThanDate:v77];

    +[WBSAppLink clearSavedSettings];
    v49 = +[_SFGeolocationPermissionManager sharedManager];
    [v49 removeAllTemporaryPermissions];

    v50 = [_SFSiteMetadataManager alloc];
    v51 = _SFSafariIconImageCacheDirectoryPath();
    v52 = [NSURL fileURLWithPath:v51 isDirectory:1];
    v53 = [v50 initWithInjectedBundleURL:0 imageCacheDirectoryURL:v52 cacheIsReadOnly:1 metadataType:32];

    [v53 emptyProviderCaches];
    v92 = 0;
    if (!SecTrustFlushResponseCache())
    {
      v54 = v92;
      v55 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_FAULT))
      {
        [SafariSettingsController _safariClearHistoryAndDataAddedAfterDate:v55 beforeDate:v54 profileIdentifier:? clearAllProfiles:? closeTabs:?];
      }
    }

    [(SafariSettingsListController *)self setSafariDefaultsValue:0 forKey:_SFSafariHighLevelDomainsAndPortsToUseOnlyAvailableIdentityWithoutPromptingSettingsKey];
    [(SafariSettingsListController *)self setSafariDefaultsValue:0 forKey:SFStartPageCachedNumberOfTrackersKey];
    [(SafariSettingsListController *)self synchronizeSafariDefaults];
    [(SafariSettingsListController *)self postDistributedNotificationNamed:@"com.apple.mobilesafari.ClearHistory"];
    if (v42)
    {
      v56 = v74;
      if (!v74)
      {
        v56 = [v78 hasMultipleProfiles] ^ 1;
      }
    }

    else
    {
      v56 = v74;
    }

    self->_recentlyClearedHistoryAndWebSiteData = v56;
    [(SafariSettingsController *)self reloadSpecifierID:@"CLEAR_HISTORY_AND_DATA"];
    *buf = 0;
    v87 = buf;
    v88 = 0x3032000000;
    v89 = __Block_byref_object_copy__0;
    v90 = __Block_byref_object_dispose__0;
    v91 = [[_SFDownloadManager alloc] initAsReadonly:1];
    dispatch_group_enter(groupa);
    v57 = *(v87 + 5);
    v82[0] = _NSConcreteStackBlock;
    v82[1] = 3221225472;
    v82[2] = __125__SafariSettingsController__safariClearHistoryAndDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke;
    v82[3] = &unk_8A770;
    v85 = buf;
    v58 = v77;
    v83 = v58;
    v59 = groupa;
    v84 = v59;
    [v57 getDownloadsWithCompletionHandler:v82];
    v60 = [WBSAllowedLegacyTLSHostManager alloc];
    v61 = +[NSUserDefaults safari_browserDefaults];
    v62 = [v60 initWithBrowserDefaults:v61];

    [v62 clearAllLegacyTLSHosts];
    v63 = +[WBSCertificateBypassManager sharedManager];
    [v63 clearCertificateBypassesCreatedAfterDate:v58];

    v64 = +[UIWebGeolocationPolicyDecider sharedPolicyDecider];
    [v64 clearSafariCache];

    v65 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
    v101 = WBSPerSitePreferenceNameAppInfoOverlay;
    v66 = [NSArray arrayWithObjects:&v101 count:1];
    [v65 removeAllPreferenceValuesFromPreferences:v66 completionHandler:0];

    v67 = +[NSFileManager defaultManager];
    v68 = _SFSafariTemporaryDirectoryPath();
    v69 = [NSURL fileURLWithPath:v68 isDirectory:1];
    [v67 safari_removeContentsOfDirectory:v69];

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __125__SafariSettingsController__safariClearHistoryAndDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke_2;
    block[3] = &unk_895D8;
    block[4] = self;
    dispatch_group_notify(v59, &_dispatch_main_q, block);

    _Block_object_dispose(buf, 8);
  }
}

void __125__SafariSettingsController__safariClearHistoryAndDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke(void *a1)
{
  [*(*(a1[6] + 8) + 40) removeDownloadsStartedAfterDate:a1[4]];
  v2 = +[NSFileManager defaultManager];
  v3 = [*(*(a1[6] + 8) + 40) downloadsRootURL];
  [v2 removeItemAtURL:v3 error:0];

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = a1[5];

  dispatch_group_leave(v6);
}

id __125__SafariSettingsController__safariClearHistoryAndDataAddedAfterDate_beforeDate_profileIdentifier_clearAllProfiles_closeTabs___block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished clearing history and website data", v4, 2u);
  }

  return [*(a1 + 32) postDistributedNotificationNamed:@"com.apple.mobilesafari.ClearHistoryAndWebsiteData"];
}

- (void)clearWebBrowsingData
{
  v3 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Clearing web browsing data", buf, 2u);
  }

  v4 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SafariSettingsController _safariClearHistoryAndDataAddedAfterDate:beforeDate:profileIdentifier:clearAllProfiles:closeTabs:];
  }

  killSafariViewService();
  v5 = +[SFStoreBannerTracker sharedTracker];
  [v5 clear];

  v6 = +[SFHighlightBannerTracker sharedTracker];
  [v6 clear];

  v7 = +[NSDate distantPast];
  v8 = +[WBSPasswordWarningStore sharedStore];
  [v8 clearStoreSynchronously];

  v9 = +[WBSGeneratedPasswordStore sharedStore];
  [v9 synchronouslyRemoveGeneratedPasswordsNewerThanDate:v7];

  +[WBSAppLink clearSavedSettings];
  v10 = +[_SFGeolocationPermissionManager sharedManager];
  [v10 removeAllTemporaryPermissions];

  v11 = +[UIWebGeolocationPolicyDecider sharedPolicyDecider];
  [v11 clearSafariCache];

  self->_recentlyClearedHistoryAndWebSiteData = 1;
  [(SafariSettingsController *)self reloadSpecifierID:@"CLEAR_HISTORY_AND_DATA"];
  v12 = dispatch_group_create();
  *buf = 0;
  v24 = buf;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__0;
  v27 = __Block_byref_object_dispose__0;
  v28 = [[_SFDownloadManager alloc] initAsReadonly:1];
  dispatch_group_enter(v12);
  v13 = *(v24 + 5);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __48__SafariSettingsController_clearWebBrowsingData__block_invoke;
  v19[3] = &unk_8A770;
  v22 = buf;
  v14 = v7;
  v20 = v14;
  v15 = v12;
  v21 = v15;
  [v13 getDownloadsWithCompletionHandler:v19];
  v16 = +[WBSPerSitePreferencesSQLiteStore sharedStore];
  v29 = WBSPerSitePreferenceNameAppInfoOverlay;
  v17 = [NSArray arrayWithObjects:&v29 count:1];
  [v16 removeAllPreferenceValuesFromPreferences:v17 completionHandler:0];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __48__SafariSettingsController_clearWebBrowsingData__block_invoke_2;
  v18[3] = &unk_895D8;
  v18[4] = self;
  dispatch_group_notify(v15, &_dispatch_main_q, v18);

  _Block_object_dispose(buf, 8);
}

void __48__SafariSettingsController_clearWebBrowsingData__block_invoke(void *a1)
{
  [*(*(a1[6] + 8) + 40) removeDownloadsStartedAfterDate:a1[4]];
  v2 = +[NSFileManager defaultManager];
  v3 = [*(*(a1[6] + 8) + 40) downloadsRootURL];
  [v2 removeItemAtURL:v3 error:0];

  v4 = *(a1[6] + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = 0;

  v6 = a1[5];

  dispatch_group_leave(v6);
}

id __48__SafariSettingsController_clearWebBrowsingData__block_invoke_2(uint64_t a1)
{
  v2 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_DEFAULT, "Finished clearing website data", v4, 2u);
  }

  return [*(a1 + 32) postDistributedNotificationNamed:@"com.apple.mobilesafari.ClearHistoryAndWebsiteData"];
}

- (BOOL)isAutoFillAvailable:(id)a3
{
  if ((+[UIApplication isRunningInStoreDemoMode]& 1) != 0)
  {
    return 0;
  }

  featureManager = self->_featureManager;

  return [(SafariSettingsFeatureManager *)featureManager isAutoFillAvailable];
}

- (id)isHideBarsWhileScrollingEnabled
{
  v2 = +[SFFeatureManager isHideBarsWhileScrollingEnabled];

  return [NSNumber numberWithBool:v2];
}

- (BOOL)_isCloudHistoryEnabled
{
  v2 = [(SafariSettingsFeatureManager *)self->_featureManager isCloudHistorySyncAvailable];
  if (v2)
  {
    v3 = objc_alloc_init(ACAccountStore);
    v4 = [v3 aa_primaryAppleAccount];
    v5 = [v4 isEnabledForDataclass:kAccountDataclassBookmarks];

    LOBYTE(v2) = v5;
  }

  return v2;
}

- (id)siteSpecificSearchSettingsEnabledString
{
  v2 = [(SafariSettingsListController *)self safariDefaultsValueForKey:@"DisableWebsiteSpecificSearch"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    v4 = @"Off";
  }

  else
  {
    v4 = @"On";
  }

  v5 = SafariSettingsLocalizedString(v4, @"Safari");

  return v5;
}

- (id)isBlockPopUpsEnabled:(id)a3
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v3 safari_javaScriptCanOpenWindowsAutomatically] ^ 1);

  return v4;
}

- (BOOL)isTrackerProtectionRestricted:(id)a3
{
  v4 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v5 = [v4 webui_safariCookieAcceptPolicyEnumValue];

  if (v5 == &dword_0 + 1)
  {
    return 1;
  }

  v7 = [(MCProfileConnection *)self->_profileConnection valueRestrictionForFeature:MCFeatureSafariAcceptCookies];
  v8 = v7;
  if (v7)
  {
    [v7 floatValue];
    v6 = v9 <= 1.5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackerProtectionEnabled
{
  v2 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v3 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 webui_trackerProtectionEnabled]);

  return v3;
}

- (void)setCookieStoragePolicy:(unint64_t)a3 andNotifySpecifierWithID:(id)a4
{
  v6 = a4;
  [(SafariSettingsController *)self _setSafariAcceptCookiesForPolicy:a3];
  v7 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  [v7 webui_applySafariCookieAcceptPolicy];

  v8 = [(SafariSettingsController *)self specifierForID:v6];

  [(SafariSettingsController *)self reloadSpecifier:v8];
  v9 = webuiCookieAcceptPolicyPreferencesKey;

  [(SafariSettingsListController *)self postDistributedNotificationNamed:v9];
}

- (void)safariToggleTrackerProtection:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  [(SafariSettingsController *)self setCookieStoragePolicy:v5 andNotifySpecifierWithID:@"BLOCK_ALL_NEW_COOKIES"];
}

- (BOOL)isBlockAllNewWebsiteDataRestricted:(id)a3
{
  v3 = [(MCProfileConnection *)self->_profileConnection valueRestrictionForFeature:MCFeatureSafariAcceptCookies];
  v4 = v3;
  if (v3)
  {
    [v3 floatValue];
    v6 = v5 == 0.0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)blockAllNewWebsiteDataEnabled
{
  v2 = +[NSHTTPCookieStorage sharedHTTPCookieStorage];
  v3 = [v2 webui_safariCookieAcceptPolicyEnumValue];

  return [NSNumber numberWithInt:v3 == &dword_0 + 1];
}

- (void)safariToggleBlockAllNewWebsiteData:(id)a3 forSpecifier:(id)a4
{
  if ([a3 BOOLValue])
  {
    v5 = [PSConfirmationSpecifier preferenceSpecifierNamed:&stru_8BB60 target:self set:0 get:0 detail:0 cell:-1 edit:0];
    v11[0] = PSConfirmationTitleKey;
    v6 = SafariSettingsLocalizedString(@"Are you sure you want to block all cookies?", @"Safari");
    v12[0] = v6;
    v11[1] = PSConfirmationPromptKey;
    v7 = SafariSettingsLocalizedString(@"Websites may not work if you do this. It will remove existing cookies and website data. Safari will quit and your tabs will be reloaded.", @"Safari");
    v12[1] = v7;
    v11[2] = PSConfirmationOKKey;
    v8 = SafariSettingsLocalizedString(@"Block All", @"Safari");
    v12[2] = v8;
    v11[3] = PSConfirmationCancelKey;
    v9 = SafariSettingsLocalizedString(@"Cancel", @"Safari");
    v12[3] = v9;
    v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:4];
    [v5 setupWithDictionary:v10];

    [v5 setProperty:&__kCFBooleanTrue forKey:PSConfirmationDestructiveKey];
    [v5 setConfirmationAction:"_confirmBlockAllCookies:"];
    [v5 setConfirmationCancelAction:"_cancelBlockAllCookiesPrompt:"];
    [(SafariSettingsController *)self showConfirmationViewForSpecifier:v5 useAlert:1];
  }

  else
  {

    [(SafariSettingsController *)self _updateBlockAllNewWebsiteDataPolicyToBlockAllWebsiteData:0];
  }
}

- (void)_confirmBlockAllCookies:(id)a3
{
  [(SafariSettingsController *)self _updateBlockAllNewWebsiteDataPolicyToBlockAllWebsiteData:1];
  v3 = WBAllWebsiteDataProfileIdentifier;

  [SafariStorageSettingsController deleteAllDataForProfileWithIdentifier:v3];
}

- (void)_cancelBlockAllCookiesPrompt:(id)a3
{
  v4 = [(SafariSettingsController *)self specifierForID:@"BLOCK_ALL_NEW_COOKIES"];
  [(SafariSettingsController *)self reloadSpecifier:v4];
}

- (void)_setSafariAcceptCookiesForPolicy:(unint64_t)a3
{
  v3 = 0.0;
  if (a3 == 2)
  {
    *&v3 = 1.5;
  }

  if (!a3)
  {
    *&v3 = 2.0;
  }

  profileConnection = self->_profileConnection;
  v5 = [NSNumber numberWithFloat:v3];
  [(MCProfileConnection *)profileConnection setValue:v5 forSetting:MCFeatureSafariAcceptCookies];
}

- (BOOL)_areContentBlockersEnabled
{
  if (+[NSBundle safari_isMobileSafariInstalled])
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v3 = self->_contentBlockerExtensions;
    v23 = [(NSArray *)v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v23)
    {
      v4 = *v33;
      v22 = *v33;
      do
      {
        for (i = 0; i != v23; i = i + 1)
        {
          if (*v33 != v4)
          {
            objc_enumerationMutation(v3);
          }

          v6 = *(*(&v32 + 1) + 8 * i);
          v7 = [objc_opt_class() extensionsProfilesDataSource];
          v8 = [v7 profileServerIDToContentBlockerManagers];

          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v9 = v8;
          v10 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v29;
            while (2)
            {
              for (j = 0; j != v11; j = j + 1)
              {
                if (*v29 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = [v9 objectForKeyedSubscript:{*(*(&v28 + 1) + 8 * j), v22}];
                v15 = [v14 extensionIsEnabled:v6];

                if (v15)
                {

                  goto LABEL_28;
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v28 objects:v37 count:16];
              if (v11)
              {
                continue;
              }

              break;
            }
          }

          v4 = v22;
        }

        v23 = [(NSArray *)v3 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v23);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [objc_opt_class() extensionsProfilesDataSource];
    v17 = [v16 profileServerIDToWebExtensionsControllers];
    v3 = [v17 allValues];

    v18 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v18)
    {
      v19 = *v25;
LABEL_19:
      v20 = 0;
      while (1)
      {
        if (*v25 != v19)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v24 + 1) + 8 * v20) anyWebExtensionContentBlockerEnabled])
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [(NSArray *)v3 countByEnumeratingWithState:&v24 objects:v36 count:16];
          if (v18)
          {
            goto LABEL_19;
          }

          goto LABEL_29;
        }
      }

LABEL_28:
      LOBYTE(v18) = 1;
    }

LABEL_29:
  }

  else
  {
    LOBYTE(v18) = 0;
  }

  return v18;
}

- (void)_updateSearchSpecifiers
{
  v3 = +[NSUserDefaults safari_browserDefaults];
  v4 = [v3 BOOLForKey:SuppressSearchSuggestionsDefaultsKey];

  [(SafariSettingsController *)self setUpSearchSuggestionText:v4 ^ 1];
  searchGroupSettingsSpecifier = self->_searchGroupSettingsSpecifier;

  [(SafariSettingsController *)self reloadSpecifier:searchGroupSettingsSpecifier];
}

- (void)_updateSiriSuggestionsSpecifier
{
  if ([(SafariSettingsController *)self areSiriSuggestionsSupported])
  {

    [(SafariSettingsController *)self reloadSpecifierID:@"SIRI_SUGGESTIONS" animated:1];
  }
}

- (void)_updateOpenLinksSpecifier
{
  if (_SFDeviceIsPad())
  {
    v3 = @"OPEN_LINKS_IN_BACKGROUND_IPAD";
  }

  else
  {
    v3 = @"OPEN_LINKS_IN_BACKGROUND_IPHONE";
  }

  [(SafariSettingsController *)self reloadSpecifierID:v3];
}

- (void)_updatePrivateSearchEngineSpecifier
{
  [(SafariSettingsController *)self reloadSpecifierID:@"PRIVATE_SEARCH_ENGINE_SETTING"];

  [(SafariSettingsController *)self _updateSearchSpecifiers];
}

- (void)_mobileSafariChangedExtensionSettings
{
  v2 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "Safari has updated Extensions.plist", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [objc_opt_class() extensionsProfilesDataSource];
  v4 = [v3 profileServerIDToWebExtensionsControllers];
  v5 = [v4 allValues];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) extensionSettingsWereUpdatedExternallyFromSettingsApp:0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (id)_tabOverrideTopLevelDetailString
{
  v2 = [(SafariSettingsController *)self _defaultWebExtensionController];
  v3 = [SafariNewTabOverrideSettingsController topLevelDetailStringWithWebExtensionsController:v2];

  return v3;
}

- (void)_clearNewTabOverrideIfNecessaryOnChange:(id)a3
{
  v4 = [(SafariSettingsController *)self _defaultWebExtensionController];
  v5 = [SafariNewTabOverrideSettingsController canUseCurrentNewTabOverrideSelectionWithWebExtensionsController:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(SafariSettingsController *)self _defaultWebExtensionController];
    v7 = [v6 tabOverridePreferencesManager];
    v8 = +[NSUserDefaults safari_browserDefaults];
    [v7 clearNewTabBehaviorInDefaults:v8 fromUserGesture:0];

    [(SafariSettingsController *)self reloadSpecifiers];
  }
}

- (void)_hideInternetAddressChanged:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __56__SafariSettingsController__hideInternetAddressChanged___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

void *__56__SafariSettingsController__hideInternetAddressChanged___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[25])
  {
    return [result reloadSpecifier:?];
  }

  return result;
}

- (id)_hideInternetAddressDetailText
{
  v2 = [objc_opt_class() privacyProxyAvailabilityManager];
  v3 = [v2 isPrivacyProxyOnInICloudSettings];

  v4 = [objc_opt_class() privacyProxyAvailabilityManager];
  v5 = [v4 state];

  if (!v5)
  {
    v7 = @"Hide Internet Address Off Item Title";
LABEL_10:
    v8 = SafariSettingsLocalizedString(v7, @"Safari");
    goto LABEL_12;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = @"Hide Internet Address Trackers List Item Title";
LABEL_6:
    if (v3)
    {
      v7 = v6;
    }

    else
    {
      v7 = @"Hide Internet Address From Trackers List Item Title";
    }

    goto LABEL_10;
  }

  if (v5 == &dword_0 + 2)
  {
    v6 = @"Hide Internet Address Trackers and Websites List Item Title";
    goto LABEL_6;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

- (void)_presentPrivacyFlowWithBundleIdentifier:(id)a3
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:a3];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)showCreateEditProfileSheet:(id)a3
{
  v4 = a3;
  v9 = objc_alloc_init(CreateEditProfileViewController);
  v5 = [v4 userInfo];

  v6 = objc_alloc_init(SafariProfileSettingsUserInfo);
  [(SafariProfileSettingsUserInfo *)v6 setProfile:v5];
  [(SafariProfileSettingsUserInfo *)v6 setDelegate:self];
  v7 = [objc_opt_class() tabGroupManager];
  [(SafariProfileSettingsUserInfo *)v6 setTabGroupManager:v7];

  [(CreateEditProfileViewController *)v9 setUserInfo:v6];
  if (v5)
  {
    v8 = [(SafariSettingsController *)self navigationController];
    [v8 pushViewController:v9 animated:1];
  }

  else
  {
    v8 = [[UINavigationController alloc] initWithRootViewController:v9];
    [v8 setModalPresentationStyle:2];
    [(SafariSettingsController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)createEditProfileViewControllerDidChangeProfilesData:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __81__SafariSettingsController_createEditProfileViewControllerDidChangeProfilesData___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (unint64_t)clearHistoryViewController:(id)a3 numberOfTabsToBeClosedForProfilesWithIdentifiers:(id)a4
{
  v4 = a4;
  v5 = [objc_opt_class() _createTabGroupManagerForClearingHistory];
  v6 = [v5 numberOfTabsToBeClosedForProfilesWithIdentifiers:v4];

  return v6;
}

- (void)tabGroupManager:(id)a3 didRemoveProfileWithIdentifier:(id)a4
{
  v4 = [a3 profileWithIdentifier:a4];
  v5 = [v4 identifierForExtensions];

  if (v5)
  {
    v6 = WBS_LOG_CHANNEL_PREFIXWebExtensions();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v13 = 138477827;
      v14 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_INFO, "Profile with server ID %{private}@ was deleted, updating controller map to make sure state is deleted", &v13, 0xCu);
    }

    v7 = [objc_opt_class() extensionsProfilesDataSource];
    v8 = [v7 profileServerIDToWebExtensionsControllers];
    v9 = [v8 objectForKeyedSubscript:v5];

    v10 = [objc_opt_class() extensionsProfilesDataSource];
    v11 = [v10 profileServerIDToContentBlockerManagers];
    v12 = [v11 objectForKeyedSubscript:v5];
  }
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = [(SafariSettingsController *)self specifierAtIndexPath:a5];
  v8 = [v7 identifier];
  v9 = [v8 isEqualToString:@"SIRI_SUGGESTIONS"];

  if (v9)
  {
    v10 = [(SafariSettingsController *)self areSiriSuggestionsSupported];
    v11 = [v12 accessoryView];
    [v11 setEnabled:v10];
    if (!v10)
    {
      [v11 setOn:0];
    }
  }
}

- (void)_primaryAppleAccountDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __58__SafariSettingsController__primaryAppleAccountDidChange___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)queryControllerDidUpdate:(id)a3 resultDifference:(id)a4
{
  v5 = a3;
  discoveryNotificationQueue = self->_discoveryNotificationQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __70__SafariSettingsController_queryControllerDidUpdate_resultDifference___block_invoke;
  v8[3] = &unk_896A0;
  v9 = v5;
  v10 = self;
  v7 = v5;
  dispatch_async(discoveryNotificationQueue, v8);
}

void __70__SafariSettingsController_queryControllerDidUpdate_resultDifference___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) extensionIdentities];
  v3 = [v2 safari_mapObjectsUsingBlock:&__block_literal_global_748];

  objc_initWeak(&location, *(a1 + 40));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __70__SafariSettingsController_queryControllerDidUpdate_resultDifference___block_invoke_3;
  block[3] = &unk_89BE8;
  objc_copyWeak(&v7, &location);
  v6 = v3;
  v4 = v3;
  dispatch_async(&_dispatch_main_q, block);

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __70__SafariSettingsController_queryControllerDidUpdate_resultDifference___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v5 = WeakRetained;
    v3 = [*(a1 + 32) copy];
    v4 = v5[22];
    v5[22] = v3;

    [v5 reloadSpecifiers];
    WeakRetained = v5;
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v12.receiver = self;
  v12.super_class = SafariSettingsController;
  v6 = a4;
  v7 = [(SafariSettingsController *)&v12 tableView:a3 cellForRowAtIndexPath:v6];
  v8 = [(SafariSettingsController *)self specifierAtIndexPath:v6, v12.receiver, v12.super_class];

  v9 = [v8 identifier];
  LODWORD(v6) = [v9 isEqualToString:@"SIRI_AND_SEARCH"];

  v10 = [v7 textLabel];
  [v10 setNumberOfLines:v6];

  return v7;
}

void __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Failed to determine provider domain for downloads folder: %{public}@", v7, v8, v9, v10, v11);
}

void __55__SafariSettingsController__updateDownloadsFolderTitle__block_invoke_cold_2(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Failed to fetch default downloads location item: %{public}@", v7, v8, v9, v10, v11);
}

void __70__SafariSettingsController__fetchExportLocationWithCompletionHandler___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  v3 = a2;
  v4 = [v2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Unable to fetch the user's default Download location: %{public}@", v7, v8, v9, v10, v11);
}

- (void)_safariClearHistoryAndDataAddedAfterDate:(void *)a1 beforeDate:(void *)a2 profileIdentifier:clearAllProfiles:closeTabs:.cold.4(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_0, v3, OS_LOG_TYPE_FAULT, "Clearing OCSP cache failed with error: %{public}@", v5, 0xCu);
}

@end