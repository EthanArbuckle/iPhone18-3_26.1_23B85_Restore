@interface COSSettingsListController
+ (id)sharedTopLevelIconsLazyLoadingQueue;
- (BOOL)displaySearchTab;
- (BOOL)searchBarShouldEndEditing:(id)a3;
- (BOOL)showPairingButton;
- (BOOL)wantsCustomControllerForRootSpecifierID:(id)a3;
- (BOOL)watchKitOneAppsEOL;
- (COSSettingsListController)init;
- (id)activeWatchOrFakeWatch;
- (id)additionalSpecifiers;
- (id)appIconForSpecifierIdentifier:(id)a3;
- (id)customControllerForBundlePath:(id)a3;
- (id)customControllerForRootSpecifierID:(id)a3;
- (id)fakeDevice;
- (id)filterForWatchInstalledApps:(id)a3;
- (id)filterSockPuppetApps:(id)a3;
- (id)freezeDryAppStates:(id)a3;
- (id)generalViewController;
- (id)sockPuppetApps;
- (id)specialCaseVictoryRow;
- (id)specifiers;
- (id)specifiersForWKApps:(id)a3;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)title;
- (id)wkAppSpinnerGroup;
- (int64_t)_groupIndexForGroup:(id)a3;
- (int64_t)searchResultsCollectionViewController:(id)a3 sortCategory1:(id)a4 sortCategory2:(id)a5;
- (void)_appStoreSpecifierTapped:(id)a3;
- (void)_hackToRemoveExtraSearchView;
- (void)_insertSpecifierIntoTableAndStash:(id)a3 atIndex:(unint64_t)a4 stashIndex:(unint64_t)a5 animated:(BOOL)a6;
- (void)_kickOffWatchKitAppReload;
- (void)_notifyNTKAboutActiveWatchSkipSetupCompletionCheck:(BOOL)a3;
- (void)_prepareDiscoveryIfNeeded;
- (void)_pushCustomControllerForPath:(id)a3 andTitle:(id)a4;
- (void)_refreshAppInstallationStatus;
- (void)_removeSpecifier:(id)a3 andInsertSpecifier:(id)a4 animated:(BOOL)a5;
- (void)_removeSpecifierFromTableAndStash:(id)a3 animated:(BOOL)a4;
- (void)_showDevicePicker:(id)a3;
- (void)_startSpinnerInSpecifier:(id)a3;
- (void)_stopSpinnerInSpecifier:(id)a3;
- (void)_storeReauthStepForTinkerFamilyMember:(id)a3 withWatchAKDevice:(id)a4 completion:(id)a5;
- (void)_updateDeviceManagementInformation;
- (void)addUnavailableAppsSectionIfNeeded;
- (void)appInstallErrorReceived:(id)a3;
- (void)compatibilityStateChanged:(id)a3;
- (void)ctCellularPlanInfoDidChange:(id)a3;
- (void)dealloc;
- (void)decorateSpecifierWithWKDetails:(id)a3 byIdentifier:(id)a4 andApplication:(id)a5;
- (void)deviceBecameActive:(id)a3;
- (void)deviceBecameInActive:(id)a3;
- (void)deviceBecamePaired:(id)a3;
- (void)deviceIsSetup:(id)a3;
- (void)didEnterBackground:(id)a3;
- (void)discoveredAdvertisingWatch:(id)a3;
- (void)facesViewControllerDidUpdateContent:(id)a3;
- (void)gatherAllWatchAppsWithCompletion:(id)a3;
- (void)groupLocallyAvailableAppsWithWatchOnlyApps:(id)a3 withStates:(id)a4 withCompletion:(id)a5;
- (void)indexSpecifiersIfNeeded;
- (void)insertAndDeleteSpecifiersForChanges:(id)a3;
- (void)insertContiguousSpecifiersForIndexing:(id)a3;
- (void)jumpToAppStoreWatchSection:(id)a3;
- (void)loadSpotlightSearchControllers;
- (void)loadView;
- (void)presentPairingFlowIfPossible;
- (void)presentSearchController:(id)a3;
- (void)presentSkippedPanes:(id)a3;
- (void)proceedWithStoreRepairForAccount:(id)a3 withWatchAKDevice:(id)a4 completion:(id)a5;
- (void)pushCustomControllerForRootSpecifierID:(id)a3;
- (void)refreshAppleAppGroupFooterState:(BOOL)a3;
- (void)reindexIfNeeded;
- (void)reloadApplicationForGreenfieldInstall:(id)a3;
- (void)reloadWatchKitApps:(id)a3;
- (void)removeContiguousSpecifiersFromIndexing:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)searchBar:(id)a3 textDidChange:(id)a4;
- (void)searchBarTextDidEndEditing:(id)a3;
- (void)searchResultsCollectionViewController:(id)a3 didSelectURL:(id)a4;
- (void)showDeviceSupervisionInfo;
- (void)skippedMiniFlowDidFinish:(id)a3;
- (void)startSpinnerInCellForSpecifier:(id)a3;
- (void)stopSpinner;
- (void)systemAppSpecifierProcessing:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5;
- (void)updateNavTitle;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)willEnterForeground:(id)a3;
@end

@implementation COSSettingsListController

- (COSSettingsListController)init
{
  v31.receiver = self;
  v31.super_class = COSSettingsListController;
  v2 = [(COSPreferencesListController *)&v31 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Bridge.SpotlightWorkQueue", 0);
    v4 = *(v2 + 310);
    *(v2 + 310) = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"reloadAppleWatchDetails:" name:@"COSAboutControllerUserDidChangeDeviceNameNotification" object:0];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"refreshSoftwareUpdateBadge:" name:@"com.apple.Bridge.badgeUpdate" object:0];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v2 selector:"deviceBecameActive:" name:NRPairedDeviceRegistryDeviceDidBecomeActive object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v2 selector:"deviceBecameInActive:" name:NRPairedDeviceRegistryDeviceDidBecomeInactive object:0];

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v2 selector:"deviceBecamePaired:" name:NRPairedDeviceRegistryDeviceDidPairNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v2 selector:"deviceIsSetup:" name:NRPairedDeviceRegistryDeviceIsSetupNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v2 selector:"compatibilityStateChanged:" name:NRPairedDeviceRegistryDeviceDidEnterCompatibilityStateNotification object:0];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v2 selector:"reloadApplicationForGreenfieldInstall:" name:NTKGreenfieldApplicationInstallBeganNotification object:0];

    v15 = +[NSNotificationCenter defaultCenter];
    [v15 addObserver:v2 selector:"facesViewControllerDidUpdateContent:" name:BPSNTKFacesViewControllerDidUpdateContentNotification object:0];

    v16 = +[NSNotificationCenter defaultCenter];
    [v16 addObserver:v2 selector:"appInstallErrorReceived:" name:@"COSAppInstallErrorNotification" object:0];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v2 selector:"reloadWatchKitApps:" name:@"COSAppListChangedNotification" object:0];

    v18 = +[NSNotificationCenter defaultCenter];
    [v18 addObserver:v2 selector:"reloadWatchKitApps:" name:ACXRemoteApplicationDatabaseResyncedDistributedNotification object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_1000706C8, ACXApplicationsUpdatedDarwinNotification, 0, 1024);
    v20 = +[MCProfileConnection sharedConnection];
    [v20 registerObserver:v2];

    v21 = @"/System/Library/NanoPreferenceBundles/Customization/NTKCustomization.bundle";
    v22 = +[NSFileManager defaultManager];
    v23 = [v22 fileExistsAtPath:v21];

    if ((sub_100008BAC() & 1) == 0 && v23)
    {
      v24 = [NSBundle bundleWithPath:v21];
      [v24 principalClass];
      v25 = objc_opt_new();
      v26 = *(v2 + 246);
      *(v2 + 246) = v25;
    }

    if ((sub_100008BAC() & 1) == 0)
    {
      v27 = [*(v2 + 246) facesViewController];
      v28 = *(v2 + 174);
      *(v2 + 174) = v27;
    }

    v2[160] = 1;
    v29 = [v2 table];
    [v29 setDelegate:v2];
  }

  return v2;
}

- (id)title
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"SETTINGS" value:&stru_10026E598 table:@"Localizable"];

  return v3;
}

- (void)loadView
{
  v3.receiver = self;
  v3.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v3 loadView];
  if (([UIApp devicePickerPresented] & 1) == 0)
  {
    [(COSSettingsListController *)self loadSpotlightSearchControllers];
  }
}

- (void)loadSpotlightSearchControllers
{
  if (![(COSSettingsListController *)self displaySearchTab]&& _os_feature_enabled_impl())
  {
    v3 = objc_alloc_init(COSSearchContainerViewController);
    [(COSSettingsListController *)self setSearchContainerViewController:v3];
  }

  v4 = +[COSSearchSuggestionsViewHost makeSearchSuggestionsViewController];
  [(COSSettingsListController *)self setSearchSuggestionsViewController:v4];

  v5 = objc_alloc_init(SUIKSearchResultsCollectionViewController);
  [(COSSettingsListController *)self setSpotlightResultsController:v5];

  v6 = [(COSSettingsListController *)self spotlightResultsController];
  [v6 setDelegate:self];

  if ([(COSSettingsListController *)self displaySearchTab]|| (_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = [PSKeyboardNavigationSearchController alloc];
    v8 = [(COSSettingsListController *)self spotlightResultsController];
  }

  else
  {
    v7 = [PSKeyboardNavigationSearchController alloc];
    v8 = [(COSSettingsListController *)self searchContainerViewController];
  }

  v9 = v8;
  v10 = [v7 initWithSearchResultsController:v8];
  [(COSSettingsListController *)self setSpotlightSearchController:v10];

  v11 = [(COSSettingsListController *)self spotlightSearchController];
  [v11 setSearchResultsUpdater:self];

  v12 = sub_10000AD54(@"SEARCH_SETTINGS_PLACEHOLDER");
  v13 = [(COSSettingsListController *)self spotlightSearchController];
  v14 = [v13 searchBar];
  [v14 setPlaceholder:v12];

  v15 = [(COSSettingsListController *)self spotlightSearchController];
  v16 = [v15 searchBar];
  [v16 setDelegate:self];

  v17 = [(COSSettingsListController *)self spotlightSearchController];
  [v17 setDelegate:self];

  v18 = [(COSSettingsListController *)self spotlightSearchController];
  [v18 setAdditionalSafeAreaInsets:{20.0, 0.0, 0.0, 0.0}];

  [(COSSettingsListController *)self setDefinesPresentationContext:1];
  if (![(COSSettingsListController *)self displaySearchTab])
  {
    v19 = [(COSSettingsListController *)self spotlightSearchController];
    v20 = [(COSSettingsListController *)self navigationItem];
    [v20 setSearchController:v19];
  }

  v21 = +[NSMutableSet set];
  [(COSSettingsListController *)self setSearchCategoriesWithoutIcons:v21];

  if ([(COSSettingsListController *)self displaySearchTab])
  {
    v22 = UIApp;

    [v22 refreshTabBar];
  }
}

- (BOOL)displaySearchTab
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {

    LOBYTE(v2) = _os_feature_enabled_impl();
  }

  return v2;
}

- (void)viewDidLoad
{
  v27.receiver = self;
  v27.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v27 viewDidLoad];
  v3 = +[NSNotificationCenter defaultCenter];
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v4 = qword_1002BD480;
  v36 = qword_1002BD480;
  if (!qword_1002BD480)
  {
    v28 = _NSConcreteStackBlock;
    v29 = 3221225472;
    v30 = sub_10007A2B0;
    v31 = &unk_1002680D0;
    v32 = &v33;
    v5 = sub_10000DDBC();
    v6 = dlsym(v5, "NPHCellularPlanInfoDidChangeNotification");
    *(v32[1] + 24) = v6;
    qword_1002BD480 = *(v32[1] + 24);
    v4 = v34[3];
  }

  _Block_object_dispose(&v33, 8);
  if (!v4)
  {
    v26 = sub_100186904();
    _Block_object_dispose(&v33, 8);
    _Unwind_Resume(v26);
  }

  v7 = *v4;
  v8 = [sub_10000DF9C() sharedInstance];
  [v3 addObserver:self selector:"ctCellularPlanInfoDidChange:" name:v7 object:v8];

  v9 = [(COSSettingsListController *)self table];
  [v9 registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"COSGalleryHeaderIdentifier"];

  v10 = [(COSSettingsListController *)self table];
  [v10 setEstimatedSectionHeaderHeight:240.0];

  v11 = [(COSSettingsListController *)self table];
  [v11 setSectionHeaderHeight:UITableViewAutomaticDimension];

  if (*(&self->_isEnrolledAndSupervised + 6) && (sub_100008BAC() & 1) == 0)
  {
    [(COSSettingsListController *)self addChildViewController:*(&self->_isEnrolledAndSupervised + 6)];
    [*(&self->_isEnrolledAndSupervised + 6) didMoveToParentViewController:self];
  }

  v12 = [(COSSettingsListController *)self navigationItem];
  v13 = [UIBarButtonItem alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"PICKER_BUTTON" value:&stru_10026E598 table:@"Localizable"];
  v16 = [v13 initWithTitle:v15 style:0 target:self action:"_showDevicePicker:"];
  [v12 setLeftBarButtonItem:v16];

  v17 = [(COSSettingsListController *)self table];
  v18 = objc_opt_class();
  v19 = +[BPSLinkCell cellReuseIdentifier];
  [v17 registerClass:v18 forCellReuseIdentifier:v19];

  v20 = [(COSSettingsListController *)self table];
  v21 = objc_opt_class();
  v22 = +[BPSBadgedTableCell cellReuseIdentifier];
  [v20 registerClass:v21 forCellReuseIdentifier:v22];

  v23 = [(COSSettingsListController *)self table];
  v24 = objc_opt_class();
  v25 = +[COSApplicationLinkCell cellReuseIdentifier];
  [v23 registerClass:v24 forCellReuseIdentifier:v25];
}

- (id)specifiers
{
  v3 = *&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (v3)
  {
    goto LABEL_85;
  }

  v95 = OBJC_IVAR___PSListController__specifiers;
  val = self;
  v115.receiver = self;
  v115.super_class = COSSettingsListController;
  v4 = [(COSPreferencesListController *)&v115 specifiers];
  v99 = [v4 mutableCopy];

  if (v99)
  {
    if (!sub_10000D61C())
    {
      v5 = [v99 specifierForID:@"FAMILY_WATCHES_GROUP_ID"];
      v6 = [v99 specifierForID:@"FAMILY_WATCHES_ID"];
      [v99 removeObject:v5];
      [v99 removeObject:v6];
    }

    if (+[COSPreferencesAppController hasUpdateAvailable])
    {
      v7 = [v99 specifierForID:@"GENERAL_LINK"];
      [v7 setProperty:&off_100281AE0 forKey:PSBadgeNumberKey];
    }

    v113 = 0u;
    v114 = 0u;
    v112 = 0u;
    v111 = 0u;
    obj = v99;
    v8 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
    if (v8)
    {
      v9 = *v112;
      v10 = PSLazyIconLoadingCustomQueue;
      v11 = PSLazyIconAppID;
      v12 = PSLazyIconLoading;
      v13 = PSCellClassKey;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v112 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v111 + 1) + 8 * i);
          v16 = [v15 propertyForKey:@"squareIconName"];
          if (v16)
          {
            v17 = +[COSSettingsListController sharedTopLevelIconsLazyLoadingQueue];
            [v15 setProperty:v17 forKey:v10];

            [v15 setProperty:v16 forKey:v11];
            [v15 setProperty:&__kCFBooleanTrue forKey:v12];
            [v15 setProperty:objc_opt_class() forKey:v13];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v111 objects:v118 count:16];
      }

      while (v8);
    }

    if (sub_100009A74())
    {
      v18 = +[NSFileManager defaultManager];
      v19 = [v18 fileExistsAtPath:@"/AppleInternal/Library/NanoPreferenceBundles/General/CompanionSetupSettings.bundle"];

      if (v19)
      {
        if ((sub_100007C2C() & 1) == 0 && (sub_10000D3B4() & 1) == 0)
        {
          +[COSSetupController debugLiveActivities];
        }
      }
    }

    v20 = @"/System/Library/NanoPreferenceBundles/Customization/NTKCustomization.bundle";
    v21 = +[NSFileManager defaultManager];
    v22 = [v21 fileExistsAtPath:v20];

    if ((v22 & 1) == 0)
    {
      v23 = [obj specifierForID:@"NTK_CUSTOMIZATION_ID"];
      [obj removeObject:v23];
    }
  }

  [(COSSettingsListController *)val updateNavTitle];
  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  obja = v99;
  v24 = [obja countByEnumeratingWithState:&v107 objects:v117 count:16];
  if (v24)
  {
    v25 = *v108;
    v26 = PSLazyIconAppID;
    v100 = PSLazyIconLoading;
    v97 = PSCellClassKey;
    do
    {
      v27 = 0;
      do
      {
        if (*v108 != v25)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v107 + 1) + 8 * v27);
        v29 = [v28 identifier];
        if ([v29 isEqualToString:@"INTERNAL_SETTINGS"])
        {
          goto LABEL_30;
        }

        v30 = [v28 identifier];
        v31 = [v30 isEqualToString:@"CARRIER_SETTINGS"];

        if ((v31 & 1) == 0 && [v28 cellType] == 1)
        {
          v32 = [v28 propertyForKey:v26];
          v33 = v32 == 0;

          if (v33)
          {
            v34 = [NSNumber numberWithBool:1];
            [v28 setProperty:v34 forKey:v100];

            v29 = BPSWatchAppBundleIDForSettingsBundleSpecifier();
            [v28 setProperty:v29 forKey:v26];
            v35 = BPSIsIconForBundleIDRemote();
            if (([v35 BOOLValue] & 1) == 0)
            {
              v36 = BPSLocalIconName();
              [v28 setProperty:v36 forKey:@"squareIconName"];
            }

            [v28 setProperty:objc_opt_class() forKey:v97];

LABEL_30:
          }
        }

        v27 = v27 + 1;
      }

      while (v24 != v27);
      v37 = [obja countByEnumeratingWithState:&v107 objects:v117 count:16];
      v24 = v37;
    }

    while (v37);
  }

  v101 = [(COSSettingsListController *)val activeWatchOrFakeWatch];
  v38 = [[NSUUID alloc] initWithUUIDString:@"E81D5008-B450-487E-9A35-6029799E6588"];
  v39 = [v101 supportsCapability:v38];

  if (v39)
  {
    v40 = @"APP_LAYOUT_ID";
  }

  else
  {
    v40 = @"APP_VIEW_ID";
  }

  v41 = [obja indexOfSpecifierWithID:v40];
  if (v41 < [obja count])
  {
    [obja removeObjectAtIndex:v41];
  }

  v42 = sub_10000DB38();
  if (v42 || !PBIsInternalInstall())
  {
    goto LABEL_49;
  }

  if (sub_10000D61C())
  {
    v42 = [PSSpecifier groupSpecifierWithID:@"UNAVAILABLE_APPS_GROUP_ID"];
    [v42 setProperty:@"It appears that your paired Satellite-Paired Watch is not active. This will be fixed soon (see 46906937).\n\nThis means connectivity will not function until you connect manually to your device; tap the 'all watches' button above and select the device you'd like to make active." forKey:PSFooterTextGroupKey];
    [obja insertObject:v42 atIndex:0];
    v43 = [PSSpecifier preferenceSpecifierNamed:@"Internal-Only: No Device Active" target:0 set:0 get:0 detail:0 cell:4 edit:0];
    [obja insertObject:v43 atIndex:1];

LABEL_49:
  }

  if (-[COSSettingsListController watchKitOneAppsEOL](val, "watchKitOneAppsEOL") && [0 count])
  {
    v44 = [PSSpecifier groupSpecifierWithID:@"UNAVAILABLE_APPS_GROUP_ID"];
    [obja addObject:v44];
    v45 = +[NSBundle mainBundle];
    v46 = [v45 localizedStringForKey:@"UNAVAILABLE_APPS" value:&stru_10026E598 table:@"Localizable"];
    v47 = [PSSpecifier preferenceSpecifierNamed:v46 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    [obja addObject:v47];
  }

  v48 = [v101 valueForProperty:NRDevicePropertyIsAltAccount];
  v49 = [v48 BOOLValue];

  v94 = +[BPSFollowUpController baseDomainIdentifier];
  v50 = *(&val->_customizationController + 6);
  if (!v50)
  {
    v51 = [[FLTopLevelViewModel alloc] initWithBundleIdentifier:v94 clientIdentifier:0];
    v52 = [[FLPreferencesController alloc] initWithViewModel:v51];
    v53 = *(&val->_customizationController + 6);
    *(&val->_customizationController + 6) = v52;

    v54 = sub_10000AD54(@"APPLE_WATCH_SETUP_SUGGESTIONS");
    [v51 setLocalizedDeviceRowTitle:v54];

    [*(&val->_customizationController + 6) setListViewController:?];
    objc_initWeak(location, val);
    v55 = *(&val->_customizationController + 6);
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_10007084C;
    v104[3] = &unk_100268430;
    objc_copyWeak(&v105, location);
    [v55 setItemChangeObserver:v104];
    objc_destroyWeak(&v105);
    objc_destroyWeak(location);

    v50 = *(&val->_customizationController + 6);
  }

  v56 = [v50 topLevelSpecifiers];
  v57 = +[BPSFollowUpController skippedSetupPaneClassesForCurrentDevice];
  v98 = v57;
  if (v57 && [v57 count])
  {
    v58 = [PSSpecifier groupSpecifierWithID:@"SKIPPED_PANES_GROUP"];
    v59 = sub_10000AD54(@"SKIPPED_PANES_ROW_TITLE");
    if (v49)
    {
      v60 = [UIApp tinkerUserName];
      v61 = +[NSBundle mainBundle];
      v62 = [v61 localizedStringForKey:@"SKIPPED_PANES_ROW_TITLE_NAME_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v63 = [NSString stringWithFormat:v62, v60];

      v59 = v63;
    }

    v64 = [PSSpecifier preferenceSpecifierNamed:v59 target:val set:0 get:0 detail:0 cell:1 edit:0];
    [v64 setProperty:objc_opt_class() forKey:PSCellClassKey];
    v65 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v98 count]);
    [v64 setProperty:v65 forKey:PSBadgeNumberKey];

    [v64 setControllerLoadAction:"presentSkippedPanes:"];
    [v64 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    v116[0] = v58;
    v116[1] = v64;
    v66 = [NSArray arrayWithObjects:v116 count:2];
    v67 = [v56 arrayByAddingObjectsFromArray:v66];

    v56 = v67;
    if ((v49 & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_63:
    if (v66 && [v66 count])
    {
      v69 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v66 count]);
      [obja insertObjects:v66 atIndexes:v69];
    }

    v68 = [UIApp tinkerUserName];
    if ([v68 length])
    {
      v70 = [(COSSettingsListController *)val specifierForID:@"APPLE_APP_GROUP_ID"];
      v71 = +[NSBundle mainBundle];
      v72 = [v71 localizedStringForKey:@"TINKER_APP_INSTALL_FOR_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v73 = [NSString stringWithFormat:v72, v68];
      [v70 setProperty:v73 forKey:PSFooterTextGroupKey];
    }

    else
    {
      v70 = pbb_bridge_log();
      if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(location[0]) = 0;
        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_DEFAULT, "Tinker user name had zero length!", location, 2u);
      }
    }

    goto LABEL_72;
  }

  v66 = 0;
  if (v49)
  {
    goto LABEL_63;
  }

LABEL_60:
  if (![v56 count])
  {
    goto LABEL_73;
  }

  v68 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v56 count]);
  [obja insertObjects:v56 atIndexes:v68];
LABEL_72:

LABEL_73:
  [(COSSettingsListController *)val notifyNTKAboutActiveWatch];
  if (!BPSDeviceHasCapabilityForString() || ![(COSSettingsListController *)val isBreatheAppInstalled]&& ([COSTinkerHealthSharingSetupDelegate tinkerDevice]_0(), v74 = objc_claimAutoreleasedReturnValue(), HasStandaloneAppsCapability = BPSDeviceHasStandaloneAppsCapability(), v74, HasStandaloneAppsCapability))
  {
    v76 = [obja specifierForID:@"com.apple.DeepBreathingSettings"];
    [obja removeObject:v76];
  }

  [(COSSettingsListController *)val systemAppSpecifierProcessing:obja];
  if (sub_100007C2C())
  {
    v77 = [obja specifierForID:@"PASSCODE_ID"];
    [obja removeObject:v77];
  }

  v78 = [obja specifierForID:@"PAIRED_WATCH_GROUP_ID"];
  [obja removeObject:v78];

  if ([(COSSettingsListController *)val isEnrolledAndSupervised])
  {
    v79 = [PSSpecifier groupSpecifierWithID:@"DEVICE_MANAGEMENT_GROUP_ID"];
    v80 = +[NSBundle mainBundle];
    v81 = [v80 localizedStringForKey:@"LEARN_MORE_ABOUT_SUPERVISION" value:&stru_10026E598 table:@"Localizable-yorktown"];

    v82 = [(COSSettingsListController *)val enrolledOrganizationName];

    +[NSBundle mainBundle];
    if (v82)
      v83 = {;
      v84 = [v83 localizedStringForKey:@"DEVICE_MANAGEMENT_INFO_WITH_ORG_%@" value:&stru_10026E598 table:@"Localizable-yorktown"];
      v85 = [(COSSettingsListController *)val enrolledOrganizationName];
      v86 = [NSString stringWithFormat:v84, v85];
    }

    else
      v83 = {;
      v86 = [v83 localizedStringForKey:@"DEVICE_MANAGEMENT_INFO" value:&stru_10026E598 table:@"Localizable-yorktown"];
    }

    v87 = [NSString stringWithFormat:@"%@ %@", v86, v81];
    v88 = objc_opt_class();
    v89 = NSStringFromClass(v88);
    [v79 setProperty:v89 forKey:PSFooterCellClassGroupKey];

    [v79 setProperty:v87 forKey:PSFooterHyperlinkViewTitleKey];
    v120.location = [v87 rangeOfString:v81];
    v90 = NSStringFromRange(v120);
    [v79 setProperty:v90 forKey:PSFooterHyperlinkViewLinkRangeKey];

    v91 = [NSValue valueWithNonretainedObject:val];
    [v79 setProperty:v91 forKey:PSFooterHyperlinkViewTargetKey];

    [v79 setProperty:@"showDeviceSupervisionInfo" forKey:PSFooterHyperlinkViewActionKey];
    [obja insertObject:v79 atIndex:0];
  }

  v92 = *&val->super.super.BPSListController_opaque[v95];
  *&val->super.super.BPSListController_opaque[v95] = obja;

  v3 = *&val->super.super.BPSListController_opaque[v95];
LABEL_85:

  return v3;
}

- (id)additionalSpecifiers
{
  v3 = +[NSMutableArray array];
  v4 = [UIApp displayDevice];
  if (v4)
  {
    if ((BPSDeviceHasCapabilityForString() & 1) == 0)
    {
      v5 = +[PSSpecifier emptyGroupSpecifier];
      [v5 setIdentifier:@"VICTORY_GROUP_ID"];
      v6 = [(COSSettingsListController *)self localizedPrefsStringForString:@"VICTORY_ROW_TITLE"];
      v7 = [PSSpecifier preferenceSpecifierNamed:v6 target:self set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      [v7 setIdentifier:@"VICTORY_ROW_ID"];
      [v7 setProperty:objc_opt_class() forKey:PSCellClassKey];
      [v3 addObject:v5];
      [v3 addObject:v7];
    }

    v8 = [v4 valueForProperty:@"isPaired"];
    v9 = [v8 BOOLValue];

    if (v9)
    {
      v10 = [(COSSettingsListController *)self sockPuppetApps];
      [v3 addObjectsFromArray:v10];
    }
  }

  return v3;
}

- (void)reindexIfNeeded
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000F1EC;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

+ (id)sharedTopLevelIconsLazyLoadingQueue
{
  v2 = qword_1002BD468;
  if (!qword_1002BD468)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    v4 = qword_1002BD468;
    qword_1002BD468 = v3;

    [qword_1002BD468 setMaxConcurrentOperationCount:8];
    v2 = qword_1002BD468;
  }

  return v2;
}

- (void)updateNavTitle
{
  v3 = sub_10000AD54(@"MY_WATCH");
  v4 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[COSSettingsListController updateNavTitle]";
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s activeWatch: %@", &v9, 0x16u);
  }

  if (v4)
  {
    v6 = [UIApp cachedNameForDevice:v4];

    v3 = v6;
  }

  v7 = pbb_bridge_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "[COSSettingsListController updateNavTitle]";
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s setting nav title to: %@", &v9, 0x16u);
  }

  [(COSSettingsListController *)self setTitle:v3];
  v8 = [(COSSettingsListController *)self navigationItem];
  [v8 _setLargeTitleTwoLineMode:1];
}

- (id)activeWatchOrFakeWatch
{
  if ([UIApp launchedToTest])
  {
    [(COSSettingsListController *)self fakeDevice];
  }

  else
  {
    [UIApp displayDevice];
  }
  v3 = ;

  return v3;
}

- (id)fakeDevice
{
  v2 = [NRDevice alloc];
  v3 = dispatch_get_global_queue(-2, 0);
  v4 = [v2 initWithQueue:v3];

  [v4 setValue:&off_100281AE0 forProperty:@"COSIsActiveHack"];
  [v4 setValue:&off_100281AE0 forProperty:NRDevicePropertyIsActive];
  [v4 setValue:@"Watch1 forProperty:{1", NRDevicePropertyProductType}];
  v9 = &off_100281AF8;
  v10 = &off_100281B10;
  v5 = [NSDictionary dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  [v4 setValue:v5 forProperty:NRDevicePropertyDmin];

  [v4 setValue:@"fakeWatch" forProperty:NRDevicePropertyName];
  [v4 setValue:&__kCFBooleanTrue forProperty:NRDevicePropertyIsPaired];
  v6 = [NSDate dateWithTimeIntervalSinceReferenceDate:1000.0];
  [v4 setValue:v6 forProperty:NRDevicePropertyPairedDate];

  v7 = [[NSUUID alloc] initWithUUIDString:@"431078C9-5856-4EE3-BD2D-DCA0D02CE82C"];
  [v4 setValue:v7 forProperty:NRDevicePropertyPairingID];

  return v4;
}

- (BOOL)watchKitOneAppsEOL
{
  v2 = +[NSUserDefaults standardUserDefaults];
  if ([v2 BOOLForKey:@"COSTestUnavailableApps"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [UIApp displayDevice];
    v5 = [[NSUUID alloc] initWithUUIDString:@"A309A9D3-F806-4E30-909A-2D301780A8EB"];
    v3 = [v4 supportsCapability:v5];
  }

  return v3;
}

- (void)_refreshAppInstallationStatus
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  if (BPSDeviceHasStandaloneAppsCapability())
  {
    objc_initWeak(&location, self);
    v4 = [UIApp displayDevice];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100078058;
    v5[3] = &unk_1002683A8;
    objc_copyWeak(&v6, &location);
    sub_10002DA20(v4, @"com.apple.DeepBreathing", v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateDeviceManagementInformation
{
  v3 = [UIApp displayDevice];
  v4 = [v3 valueForProperty:NRDevicePropertyMDMManagementState];
  v5 = [v4 unsignedIntegerValue] & 3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v11 = "[COSSettingsListController _updateDeviceManagementInformation]";
    v12 = 1024;
    v13 = v5 == 3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s enrolledAndSupervised: %{BOOL}d", buf, 0x12u);
  }

  if ((v5 == 3) != [(COSSettingsListController *)self isEnrolledAndSupervised])
  {
    [(COSSettingsListController *)self setIsEnrolledAndSupervised:v5 == 3];
    if ([(COSSettingsListController *)self isEnrolledAndSupervised])
    {
      objc_initWeak(buf, self);
      v7 = dispatch_get_global_queue(25, 0);
      v8[0] = _NSConcreteStackBlock;
      v8[1] = 3221225472;
      v8[2] = sub_1000799CC;
      v8[3] = &unk_100268458;
      objc_copyWeak(&v9, buf);
      v8[4] = self;
      dispatch_async(v7, v8);

      objc_destroyWeak(&v9);
      objc_destroyWeak(buf);
    }

    else
    {
      [(COSSettingsListController *)self setEnrolledOrganizationName:0];
      [(COSListController *)self reloadSpecifiers];
    }
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v3 viewDidLayoutSubviews];
  if (!self->super._didFirstLoad)
  {
    self->super._didFirstLoad = 1;
  }
}

- (void)indexSpecifiersIfNeeded
{
  objc_initWeak(&location, self);
  v3 = *(&self->_watchAppInstallStates + 6);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000F2A0;
  v4[3] = &unk_100268430;
  objc_copyWeak(&v5, &location);
  dispatch_async(v3, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)_prepareDiscoveryIfNeeded
{
  if (![(COSSettingsListController *)self showPairingButton])
  {
    v2 = +[PPDiscoveryManager sharedDiscoveryManager];
    [v2 setSignalLimitOverride:PPDiscoveryLimitBridge];

    v3 = +[PPDiscoveryManager sharedDiscoveryManager];
    [v3 begin];
  }
}

- (BOOL)showPairingButton
{
  if (!self->_receivedDiscoveryResult)
  {
    return 0;
  }

  v2 = +[NRDeviceDiscoveryController sharedInstance];
  v3 = [v2 devices];

  v4 = +[NRPairedDeviceRegistry sharedInstance];
  v5 = [v4 getAllDevicesWithArchivedAltAccountDevicesMatching:&stru_100269BC8];

  v6 = objc_opt_new();
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v34;
    v11 = _NRDevicePropertyBluetoothIdentifier;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [*(*(&v33 + 1) + 8 * i) valueForProperty:v11];
        [v6 addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v9);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v3;
  v14 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v30;
    v17 = NRDevicePropertyIsPaired;
    v27 = _NRDevicePropertyBluetoothIdentifier;
    while (2)
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v30 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v29 + 1) + 8 * j);
        v20 = [v19 valueForProperty:{v17, v27}];
        if ([v20 BOOLValue])
        {
        }

        else
        {
          v21 = [v19 valueForProperty:v27];
          v22 = [v6 containsObject:v21];

          if ((v22 & 1) == 0)
          {
            v24 = pbb_bridge_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v38 = v19;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "There's an advertising Watch nearby: %@", buf, 0xCu);
            }

            v25 = +[PPDiscoveryManager sharedDiscoveryManager];
            [v25 end];

            v23 = 1;
            goto LABEL_24;
          }
        }
      }

      v15 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v15)
      {
        continue;
      }

      break;
    }
  }

  v23 = 0;
LABEL_24:

  return v23;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v5 = +[MCProfileConnection sharedConnection];
  [v5 unregisterObserver:self];

  v6.receiver = self;
  v6.super_class = COSSettingsListController;
  [(COSPreferencesListController *)&v6 dealloc];
}

- (void)_showDevicePicker:(id)a3
{
  v6 = a3;
  [(COSSettingsListController *)self setSpotlightSearchController:0];
  [(COSSettingsListController *)self setSpotlightResultsController:0];
  [(COSSettingsListController *)self setSearchSuggestionsViewController:0];
  [(COSSettingsListController *)self setSearchContainerViewController:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v6 identifier];
    v5 = [v4 isEqualToString:@"FAMILY_WATCHES_ID"];
  }

  else
  {
    v5 = 0;
  }

  [UIApp presentDevicePicker:v5];
  if ([(COSSettingsListController *)self displaySearchTab])
  {
    [UIApp refreshTabBar];
  }
}

- (void)systemAppSpecifierProcessing:(id)a3
{
  v4 = a3;
  v47 = [(COSSettingsListController *)self activeWatchOrFakeWatch];
  v5 = [v47 valueForProperty:NRDevicePropertyIsAltAccount];
  v43 = [v5 BOOLValue];

  v6 = [v4 specifierForID:@"com.apple.HeartRateSettings"];
  v46 = v6;
  v7 = v6;
  if (v6)
  {
    [v6 setProperty:@"Bridge-HeartIcon" forKey:@"squareIconName"];
    [v7 setProperty:@"Bridge-HeartIcon" forKey:PSLazyIconAppID];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  }

  v8 = [v4 specifierForID:@"com.apple.MessagesBridgeSettings"];
  v45 = v8;
  v9 = v8;
  if (v8)
  {
    [v8 setProperty:@"messages-80" forKey:@"squareIconName"];
    [v9 setProperty:@"messages-80" forKey:PSLazyIconAppID];
    [v9 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  }

  v10 = +[MCProfileConnection sharedConnection];
  v11 = [v10 effectiveBoolValueForSetting:MCFeatureChatAllowed];

  if (v11 == 2)
  {
    v12 = [v4 specifierForID:@"com.apple.MessagesBridgeSettings"];
    [v4 removeObject:v12];
  }

  objc_initWeak(&location, self);
  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_100070FB0;
  v52[3] = &unk_100268260;
  objc_copyWeak(&v53, &location);
  v44 = objc_retainBlock(v52);
  if ((BPSStockholmSupportedInGizmoRegion() & 1) == 0)
  {
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v13 = v4;
    v14 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
    if (v14)
    {
      v15 = *v49;
      v16 = PSIDKey;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v49 != v15)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v48 + 1) + 8 * i);
          v19 = [v18 propertyForKey:v16];
          v20 = [v19 isEqual:@"com.apple.NanoPassbookBridgeSettings"];

          if (v20)
          {
            v21 = sub_10000AD54(@"NanoPassbookBridgeSettings_NoStockholm");
            [v18 setName:v21];

            goto LABEL_18;
          }
        }

        v14 = [v13 countByEnumeratingWithState:&v48 objects:v55 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  BPSRemoveHiddenAppsFromSpecifiers();
  if (BPSDeviceHasCapabilityForString())
  {
    v22 = [v4 specifierForID:@"com.apple.NanoBooks.BridgeSettings"];
    [v4 removeObject:v22];

    v23 = [v4 specifierForID:@"com.apple.private.PodcastsBridgeSettings"];
    [v4 removeObject:v23];

    v24 = [v4 specifierForID:@"com.apple.tincan.settings"];
    [v4 removeObject:v24];

    v25 = [v4 specifierForID:@"com.apple.weatherbridgesettings"];
    [v4 removeObject:v25];

    v26 = [v4 specifierForID:@"com.apple.StocksBridgeSettings"];
    [v4 removeObject:v26];

    v27 = [v4 specifierForID:@"com.apple.NanoMailBridgeSettings"];
    [v4 removeObject:v27];

    v28 = [v4 specifierForID:@"com.apple.NanoMapsBridgeSettings"];
    [v4 removeObject:v28];

    v29 = [v4 specifierForID:@"com.apple.NanoMusicBridgeSettings"];
    [v4 removeObject:v29];

    v30 = [v4 specifierForID:@"com.apple.NanoCalendarBridgeSettings"];
    [v4 removeObject:v30];

    v31 = [v4 specifierForID:@"com.apple.NanoClockBridgeSettings"];
    [v4 removeObject:v31];

    v32 = [v4 specifierForID:@"com.apple.HealthSettings"];
    [v4 removeObject:v32];

    v33 = [v4 specifierForID:@"com.apple.DeepBreathingSettings"];
    [v4 removeObject:v33];

    v34 = [v4 specifierForID:@"com.apple.PhoneBridgeSettings"];
    [v4 removeObject:v34];

    v35 = [v4 specifierForID:@"com.apple.MindSettings"];
    [v4 removeObject:v35];

    v36 = [v4 specifierForID:@"com.apple.NanoTipsBridgeSettings"];
    [v4 removeObject:v36];

    v37 = [v4 specifierForID:@"com.apple.NanoMenstrualCyclesCompanionSettings"];
    [v4 removeObject:v37];

    v38 = [v4 specifierForID:@"com.apple.findmy"];
    [v4 removeObject:v38];
  }

  if (sub_100007C2C())
  {
    v39 = [v4 specifierForID:@"com.apple.BridgeHealthSettings"];
    [v4 removeObject:v39];

    v40 = [v4 specifierForID:@"SOS_MODE_ID"];
    [v4 removeObject:v40];

    v41 = [v4 specifierForID:@"PASSCODE_ID"];
    [v4 removeObject:v41];
  }

  if (v43)
  {
    v42 = [v4 specifierForID:@"com.apple.BridgeAppStoreDaemonSettings"];
    [v42 setControllerLoadAction:"_appStoreSpecifierTapped:"];
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

- (void)_appStoreSpecifierTapped:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[COSSettingsListController _appStoreSpecifierTapped:]";
    v29 = 2112;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s app store specifier call back: %@", buf, 0x16u);
  }

  [(COSSettingsListController *)self _startSpinnerInSpecifier:v4];
  v6 = [v4 propertyForKey:PSLazilyLoadedBundleKey];
  v7 = [NSBundle bundleWithPath:v6];
  v8 = v7;
  if (v7)
  {
    v9 = objc_alloc_init([v7 principalClass]);
    if (v9)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = pbb_bridge_log();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v28 = "[COSSettingsListController _appStoreSpecifierTapped:]";
          v29 = 2112;
          v30 = v9;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s app store controller: %@", buf, 0x16u);
        }

        goto LABEL_13;
      }
    }
  }

  v10 = pbb_bridge_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v28 = "[COSSettingsListController _appStoreSpecifierTapped:]";
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s app store controller not found!", buf, 0xCu);
  }

  v9 = 0;
LABEL_13:

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100071474;
  v24[3] = &unk_100269AE0;
  v24[4] = self;
  v11 = v4;
  v25 = v11;
  v12 = v9;
  v26 = v12;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100071620;
  v22[3] = &unk_100269B30;
  v22[4] = self;
  v13 = objc_retainBlock(v24);
  v23 = v13;
  v14 = objc_retainBlock(v22);
  v15 = +[BPSTinkerSupport sharedInstance];
  v16 = [v15 cachedTinkerAKDevice];

  v17 = +[BPSTinkerSupport sharedInstance];
  v18 = [v17 cachedTinkerFamilyMemeber];

  if (v16 && v18)
  {
    (v14[2])(v14, v18, v16, 0);
  }

  else
  {
    v19 = +[BPSTinkerSupport sharedInstance];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10007175C;
    v20[3] = &unk_100269B58;
    v21 = v14;
    [v19 getActiveTinkerFamilyMemberDetailsWithCompletion:v20];
  }
}

- (void)_storeReauthStepForTinkerFamilyMember:(id)a3 withWatchAKDevice:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[COSSettingsListController _storeReauthStepForTinkerFamilyMember:withWatchAKDevice:completion:]";
    v24 = 2112;
    v25 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found: %@", buf, 0x16u);
  }

  v12 = [COSTinkerAppStoreAuthHelper satelliteStoreAccountForFamilyMember:v8];
  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100071964;
  v16[3] = &unk_100269BA8;
  v13 = v10;
  v20 = v13;
  objc_copyWeak(&v21, buf);
  v14 = v12;
  v17 = v14;
  v15 = v9;
  v18 = v15;
  v19 = self;
  [COSiTunesStoreAuthController repairDialogsForActiveDeviceWithCompletion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)proceedWithStoreRepairForAccount:(id)a3 withWatchAKDevice:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(COSTinkerAppStoreAuthHelperContext);
  [(COSTinkerAppStoreAuthHelperContext *)v11 setPresentingViewController:self];
  [(COSTinkerAppStoreAuthHelperContext *)v11 setSatelliteAKDevice:v9];

  [(COSTinkerAppStoreAuthHelperContext *)v11 setSatelliteAppStoreAccount:v10];
  v12 = [[COSTinkerAppStoreAuthHelper alloc] initWithContext:v11];
  v13 = *(&self->_enrolledOrganizationName + 6);
  *(&self->_enrolledOrganizationName + 6) = &v12->super.isa;

  v14 = *(&self->_enrolledOrganizationName + 6);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100071EBC;
  v16[3] = &unk_100269470;
  v17 = v8;
  v15 = v8;
  [v14 authenticateWithCompletion:v16];
}

- (void)_startSpinnerInSpecifier:(id)a3
{
  if (a3)
  {
    v3 = [a3 propertyForKey:PSTableCellKey];
    if (v3)
    {
      v5 = v3;
      v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [v4 startAnimating];
      [v5 setAccessoryView:v4];

      v3 = v5;
    }
  }
}

- (void)_stopSpinnerInSpecifier:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[COSSettingsListController _stopSpinnerInSpecifier:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s app store specifier stopping", &v7, 0xCu);
    }

    v5 = [v3 propertyForKey:PSTableCellKey];
    if (v5)
    {
      v6 = [v3 propertyForKey:PSControlKey];
      [v5 setAccessoryView:v6];
    }
  }
}

- (void)_notifyNTKAboutActiveWatchSkipSetupCompletionCheck:(BOOL)a3
{
  if (a3 || (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isInSetupFlow], v4, !v5))
  {
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    v8 = [v7 compatibilityState];

    if (v8 - 3 > 2)
    {
      v11 = pbb_bridge_log();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315138;
        v13 = "[COSSettingsListController _notifyNTKAboutActiveWatchSkipSetupCompletionCheck:]";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s nil", &v12, 0xCu);
      }

      [objc_opt_class() setDisplayDevice:0];
    }

    else
    {
      v9 = [(COSSettingsListController *)self activeWatchOrFakeWatch];
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[COSSettingsListController _notifyNTKAboutActiveWatchSkipSetupCompletionCheck:]";
        v14 = 2112;
        v15 = v9;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s %@", &v12, 0x16u);
      }

      [objc_opt_class() setDisplayDevice:v9];
    }
  }

  else
  {
    v6 = pbb_bridge_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "skip notifying NTK as we are in pairing. ", &v12, 2u);
    }
  }
}

- (void)jumpToAppStoreWatchSection:(id)a3
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[COSSettingsListController jumpToAppStoreWatchSection:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  v4 = [NSURL URLWithString:@"itms-apps://?action=watchCategory"];
  BPSOpenSensitiveURLAsync();
}

- (void)presentPairingFlowIfPossible
{
  v2 = +[UIApplication sharedApplication];
  [v2 presentNewPairingFlowIfPossible];
}

- (void)_hackToRemoveExtraSearchView
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [*&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__table] subviews];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v10 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if ([v7 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }

    v8 = v7;

    if (!v8)
    {
      return;
    }

    [v8 removeFromSuperview];
    v2 = v8;
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v10 viewWillAppear:a3];
  [(COSSettingsListController *)self updateNavTitle];
  v4 = [(COSSettingsListController *)self navigationItem];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PICKER_BUTTON" value:&stru_10026E598 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"_showDevicePicker:"];
  [v4 setLeftBarButtonItem:v8];

  [(COSSettingsListController *)self _refreshAppInstallationStatus];
  [(COSSettingsListController *)self _updateDeviceManagementInformation];
  v9 = +[BPSTinkerSupport sharedInstance];
  [v9 fetchFamilyDetails];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v6 viewWillDisappear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PPDeviceWasDiscoveredNotification object:0];

  v5 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v5 end];
}

- (void)viewDidAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = COSSettingsListController;
  [(COSPreferencesListController *)&v5 viewDidAppear:a3];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"discoveredAdvertisingWatch:" name:PPDeviceWasDiscoveredNotification object:0];

  [(COSSettingsListController *)self _prepareDiscoveryIfNeeded];
}

- (void)willEnterForeground:(id)a3
{
  v4 = +[UIApplication sharedApplication];
  if ([v4 isInSetupFlow])
  {
  }

  else
  {
    v5 = [(COSSettingsListController *)self navigationController];
    v6 = [v5 topViewController];

    if (v6 == self)
    {
      [(COSSettingsListController *)self _prepareDiscoveryIfNeeded];
    }
  }

  if ([(COSSettingsListController *)self shouldRefreshRowsOnForegroundEvent])
  {
    [(COSSettingsListController *)self setShouldRefreshRowsOnForegroundEvent:0];
    v7 = +[NSNotificationCenter defaultCenter];
    [v7 postNotificationName:@"COSInstallProgressNotificationName" object:0];
  }

  v8 = +[UIApplication sharedApplication];
  v9 = [v8 isInSetupFlow];

  if ((v9 & 1) == 0)
  {
    [(COSSettingsListController *)self _kickOffWatchKitAppReload];
    v10 = UIApp;

    [v10 performDeviceSpecificRepairStepsForActiveDevice];
  }
}

- (void)didEnterBackground:(id)a3
{
  if ([(COSSettingsListController *)self hasRowsPendingInstallation])
  {

    [(COSSettingsListController *)self setShouldRefreshRowsOnForegroundEvent:1];
  }
}

- (void)presentSkippedPanes:(id)a3
{
  v4 = a3;
  if (*(&self->_fuPrefsController + 6))
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Already presenting mini-flow. skipping", buf, 2u);
    }

    v6 = [(COSSettingsListController *)self table];
    v7 = [(COSSettingsListController *)self table];
    v8 = [v7 indexPathForSelectedRow];
    [v6 deselectRowAtIndexPath:v8 animated:1];
  }

  else
  {
    v9 = +[BPSFollowUpController skippedSetupPaneClassesForCurrentDevice];
    v6 = v9;
    if (v9 && [v9 count])
    {
      v10 = +[COSSetupController loadBundleControllerClasses];
      v11 = [[COSSkippedMiniFlowController alloc] initWithSkippedControllerClassNames:v6];
      v12 = *(&self->_fuPrefsController + 6);
      *(&self->_fuPrefsController + 6) = v11;

      [*(&self->_fuPrefsController + 6) setFlowDelegate:self];
      v13 = [*(&self->_fuPrefsController + 6) currentController];

      if (v13)
      {
        objc_initWeak(buf, self);
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100072ECC;
        v32[3] = &unk_100269BF0;
        objc_copyWeak(&v33, buf);
        v14 = objc_retainBlock(v32);
        v15 = [UIApp activeWatch];
        v16 = [v15 valueForProperty:NRDevicePropertyIsAltAccount];
        v17 = [v16 BOOLValue];

        if (v17)
        {
          v18 = +[BPSTinkerSupport sharedInstance];
          v19 = [v18 cachedTinkerFamilyMemeber];

          if (v19)
          {
            (v14[2])(v14, v19, 0);
          }

          else
          {
            [(COSSettingsListController *)self _startSpinnerInSpecifier:v4];
            v23 = +[BPSTinkerSupport sharedInstance];
            v25 = _NSConcreteStackBlock;
            v26 = 3221225472;
            v27 = sub_100073028;
            v28 = &unk_100269C40;
            objc_copyWeak(&v31, buf);
            v29 = v4;
            v30 = v14;
            [v23 getActiveTinkerFamilyMemberDetailsWithCompletion:&v25];

            objc_destroyWeak(&v31);
          }
        }

        else
        {
          [(COSSettingsListController *)self presentViewController:*(&self->_fuPrefsController + 6) animated:1 completion:0];
        }

        objc_destroyWeak(&v33);
        objc_destroyWeak(buf);
      }

      else
      {
        v21 = pbb_bridge_log();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(buf[0]) = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Tried to present skipped panes but none could be initialized, aborting skipped mini-flow", buf, 2u);
        }

        v22 = *(&self->_fuPrefsController + 6);
        *(&self->_fuPrefsController + 6) = 0;
      }
    }

    else
    {
      v20 = pbb_bridge_log();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf[0]) = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Tried to present skipped panes but none were found", buf, 2u);
      }
    }

    v7 = [(COSSettingsListController *)self table:v25];
    v8 = [(COSSettingsListController *)self table];
    v24 = [v8 indexPathForSelectedRow];
    [v7 deselectRowAtIndexPath:v24 animated:1];
  }
}

- (void)skippedMiniFlowDidFinish:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Skipped mini flow did finish, reloading root settings specifiers", v6, 2u);
  }

  v5 = *(&self->_fuPrefsController + 6);
  *(&self->_fuPrefsController + 6) = 0;

  [(COSListController *)self reloadSpecifiers];
}

- (void)discoveredAdvertisingWatch:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "discoveredAdvertisingWatch: %@", &v7, 0xCu);
  }

  self->_receivedDiscoveryResult = 1;
  v6 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v6 end];
}

- (id)generalViewController
{
  v3 = [(COSSettingsListController *)self specifierForID:@"GENERAL_LINK"];
  v4 = [(COSSettingsListController *)self selectSpecifier:v3];

  return v4;
}

- (BOOL)wantsCustomControllerForRootSpecifierID:(id)a3
{
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = sub_10007A374();
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v5);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:v3])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)pushCustomControllerForRootSpecifierID:(id)a3
{
  v4 = a3;
  v5 = sub_10007A374();
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    [(COSSettingsListController *)self _pushCustomControllerForPath:v6 andTitle:0];
  }

  else
  {
    v7 = pbb_bridge_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to push controller for rootSpecifierID: %@!", &v8, 0xCu);
    }
  }
}

- (id)customControllerForRootSpecifierID:(id)a3
{
  v4 = a3;
  v5 = sub_10007A374();
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [(COSSettingsListController *)self customControllerForBundlePath:v6];
  }

  else
  {
    v8 = pbb_bridge_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to to get controller for rootSpecifierID: %@!", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)customControllerForBundlePath:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleWithPath:v3];
  v5 = pbb_bridge_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found Bundle: %@!", &v11, 0xCu);
    }

    v7 = objc_alloc_init([v4 principalClass]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [v7 viewControllers];
      v9 = [v8 firstObject];
    }

    else
    {
      v9 = v7;
    }
  }

  else
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did Not Find %@", &v11, 0xCu);
    }

    v9 = objc_alloc_init(PSViewController);
  }

  return v9;
}

- (void)_pushCustomControllerForPath:(id)a3 andTitle:(id)a4
{
  v6 = [(COSSettingsListController *)self customControllerForBundlePath:a3, a4];
  v5 = [(COSSettingsListController *)self splitViewController];
  [v5 showInitialViewController:v6];
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(COSSettingsListController *)self specifierAtIndex:[(COSSettingsListController *)self indexForIndexPath:v7]];
  v9 = [v8 identifier];
  v10 = [v9 isEqualToString:@"CELLULAR_ID"];
  if ((v10 & 1) == 0)
  {
    [(COSSettingsListController *)self stopSpinner];
    self->_navigateWhenReceivingCellularPlanResult = 0;
  }

  if ([(COSSettingsListController *)self wantsCustomControllerForRootSpecifierID:v9])
  {
    [(COSSettingsListController *)self pushCustomControllerForRootSpecifierID:v9];
  }

  else if ([v9 isEqual:@"FAMILY_WATCHES_ID"])
  {
    [(COSSettingsListController *)self _showDevicePicker:v8];
    [v6 deselectRowAtIndexPath:v7 animated:1];
  }

  else if (v10)
  {
    v11 = [sub_10000DF9C() sharedInstance];
    v12 = [v11 cellularPlanIsSetUp];

    if (v12)
    {
      [(COSPreferencesListController *)&v17 tableView:v6 didSelectRowAtIndexPath:v7, v16.receiver, v16.super_class, self, COSSettingsListController];
    }

    else
    {
      self->_navigateWhenReceivingCellularPlanResult = 1;
      [v6 deselectRowAtIndexPath:v7 animated:1];
      v13 = [(COSSettingsListController *)self indexForIndexPath:v7];
      v14 = [*&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v13];
      [(COSSettingsListController *)self startSpinnerInCellForSpecifier:v14];
      v15 = [sub_10000DF9C() sharedInstance];
      [v15 updateCellularPlansWithFetch:0];
    }
  }

  else
  {
    [(COSPreferencesListController *)&v16 tableView:v6 didSelectRowAtIndexPath:v7, self, COSSettingsListController, v17.receiver, v17.super_class];
  }
}

- (void)ctCellularPlanInfoDidChange:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073B14;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startSpinnerInCellForSpecifier:(id)a3
{
  v4 = a3;
  [(COSSettingsListController *)self stopSpinner];
  v7 = [(NSMutableArray *)v4 propertyForKey:PSTableCellKey];
  if (v7)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [v7 setForceHideDisclosureIndicator:1];
    [v7 setAccessoryView:v5];
  }

  v6 = *(&self->_stashedWatchKitAppsState + 6);
  *(&self->_stashedWatchKitAppsState + 6) = v4;
}

- (void)stopSpinner
{
  v3 = *(&self->_stashedWatchKitAppsState + 6);
  if (v3)
  {
    v5 = [v3 propertyForKey:PSTableCellKey];
    [v5 setAccessoryView:0];
    [v5 setForceHideDisclosureIndicator:0];
    v4 = *(&self->_stashedWatchKitAppsState + 6);
    *(&self->_stashedWatchKitAppsState + 6) = 0;
  }
}

- (id)specialCaseVictoryRow
{
  v2 = [UIApp displayDevice];
  if (v2)
  {
    v3 = sub_1000E64B8();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)wkAppSpinnerGroup
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073E48;
  block[3] = &unk_1002682F0;
  block[4] = self;
  if (qword_1002BD478 != -1)
  {
    dispatch_once(&qword_1002BD478, block);
  }

  return qword_1002BD470;
}

- (void)decorateSpecifierWithWKDetails:(id)a3 byIdentifier:(id)a4 andApplication:(id)a5
{
  v8 = a3;
  v25 = a4;
  v9 = a5;
  v10 = sub_1000742DC(v9);
  v11 = [v9 companionAppBundleID];
  v12 = [v9 bundleIdentifier];
  v13 = *(&self->_searchCategoriesWithoutIcons + 6);
  v14 = [v9 bundleIdentifier];
  v22 = [v13 objectForKey:v14];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v9 applicationMode]);
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v9 isBetaApp]);
  v23 = [v9 watchKitVersion];
  v15 = [v9 teamID];
  v16 = [v9 isLocallyAvailable];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2050000000;
  v17 = qword_1002BD4A8;
  v30 = qword_1002BD4A8;
  if (!qword_1002BD4A8)
  {
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_10007A490;
    v26[3] = &unk_1002680D0;
    v26[4] = &v27;
    sub_10007A490(v26);
    v17 = v28[3];
  }

  v18 = v17;
  _Block_object_dispose(&v27, 8);
  v19 = objc_alloc_init(v17);
  [v19 setSectionID:v12];
  [v8 setName:v10];
  [v8 setProperty:@"Root" forKey:PSPlistNameKey];
  [v8 setProperty:v11 forKey:PSIDKey];
  [v8 setProperty:v11 forKey:PSAppSettingsBundleIDKey];
  [v8 setProperty:v25 forKey:PSLazyIconAppID];
  [v8 setProperty:v25 forKey:@"COSSockPuppetAppBundleIDKey"];
  [v8 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [v8 setProperty:v19 forKey:BPSNotificationAppBBSectionInfo];
  [v8 setProperty:v22 forKey:@"COSSockPuppetInstallationState"];
  [v8 setProperty:v21 forKey:@"applicationMode"];
  v20 = [NSNumber numberWithBool:v16];
  [v8 setProperty:v20 forKey:@"locallyAvailable"];

  [v8 setProperty:v24 forKey:@"COSApplicationIsBeta"];
  [v8 setProperty:objc_opt_class() forKey:PSCellClassKey];
  [v8 setProperty:v23 forKey:@"COSSockPuppetWatchKitVersionKey"];
  [v8 setProperty:v15 forKey:@"COSSockPuppetAppTeamIDKey"];
}

- (id)specifiersForWKApps:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = *(&self->_nothingSelectedController + 6);
  *(&self->_nothingSelectedController + 6) = v5;

  v7 = +[NSMutableArray array];
  v8 = +[NSMutableArray array];
  v9 = +[NSMutableArray array];
  v10 = +[MCProfileConnection sharedConnection];
  v11 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 effectiveBoolValueForSetting:@"allowAppInstallation"] != 2);

  [(COSSettingsListController *)self setHasRowsPendingInstallation:0];
  objc_initWeak(&location, self);
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000747BC;
  v23[3] = &unk_100269C68;
  v23[4] = self;
  objc_copyWeak(&v28, &location);
  v12 = v7;
  v24 = v12;
  v13 = v8;
  v25 = v13;
  v14 = v11;
  v26 = v14;
  v15 = v9;
  v27 = v15;
  [v4 enumerateKeysAndObjectsUsingBlock:v23];
  if (!self->_showAppSections)
  {
    if (![v12 count])
    {
      goto LABEL_9;
    }

    [v12 sortUsingSelector:"titleCompare:"];
    v18 = +[PSSpecifier emptyGroupSpecifier];
    [v12 insertObject:v18 atIndex:0];
    goto LABEL_8;
  }

  if ([v13 count])
  {
    [v13 sortUsingSelector:"titleCompare:"];
    v16 = +[PSSpecifier emptyGroupSpecifier];
    v17 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Installed_Apps_Section_Title"];
    [v16 setName:v17];

    [v13 insertObject:v16 atIndex:0];
    [v12 addObjectsFromArray:v13];
  }

  if ([v15 count])
  {
    [v15 sortUsingSelector:"titleCompare:"];
    v18 = +[PSSpecifier emptyGroupSpecifier];
    v19 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Available_Apps_Section_Title"];
    [v18 setName:v19];

    [v15 insertObject:v18 atIndex:0];
    [v12 addObjectsFromArray:v15];
LABEL_8:
  }

LABEL_9:
  v20 = v27;
  v21 = v12;

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);

  return v21;
}

- (int64_t)_groupIndexForGroup:(id)a3
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  [(COSSettingsListController *)self getGroup:&v4 row:0 ofSpecifier:a3];
  return v4;
}

- (void)refreshAppleAppGroupFooterState:(BOOL)a3
{
  v8 = [(COSSettingsListController *)self specifierForID:@"APPLE_APP_GROUP_ID"];
  v4 = [(COSSettingsListController *)self _groupIndexForGroup:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    v6 = [(COSSettingsListController *)self table];
    v7 = [NSIndexSet indexSetWithIndex:v5];
    [v6 _reloadSectionHeaderFooters:v7 withRowAnimation:100];
  }
}

- (id)filterSockPuppetApps:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  objc_initWeak(&location, self);
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10007520C;
  v20[3] = &unk_100269C90;
  v20[4] = self;
  objc_copyWeak(&v22, &location);
  v6 = v5;
  v21 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v20];
  if ([(COSSettingsListController *)self watchKitOneAppsEOL])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [0 allKeys];
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKey:v11];

          if (v12)
          {
            [v6 removeObjectForKey:v11];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v16 objects:v24 count:16];
      }

      while (v8);
    }
  }

  v13 = v21;
  v14 = v6;

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  return v14;
}

- (id)filterForWatchInstalledApps:(id)a3
{
  v4 = a3;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000753D8;
  v9[3] = &unk_100269CB8;
  v9[4] = self;
  v5 = objc_opt_new();
  v10 = v5;
  [v4 enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)_kickOffWatchKitAppReload
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 isInSetupFlow];

  if (v4)
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Skipping app reload as we are in pairing", buf, 2u);
    }
  }

  else
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000757B4;
    v18[3] = &unk_100269D30;
    v18[4] = self;
    v5 = objc_retainBlock(v18);
    v6 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
    HasCapabilityForString = BPSDeviceHasCapabilityForString();

    if (HasCapabilityForString)
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Skip showing Guardian Apps while connected to Tinker Device", buf, 2u);
      }

      (*(v5 + 16))(v5, 0, 0, 0);
    }

    else
    {
      v9 = +[UIApplication sharedApplication];
      v10 = [v9 _forceComplexTopLevel];

      if (v10)
      {
        v11 = [(COSSettingsListController *)self _pptApps];
        (*(v5 + 16))(v5, v11, 0, 0);
      }

      else
      {
        v12 = sub_10002DFFC();
        v13 = pbb_bridge_log();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
        if (v12)
        {
          if (v14)
          {
            v15 = [v12 pairingID];
            *buf = 138543362;
            v20 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Kick off App Reload for %{public}@...", buf, 0xCu);
          }

          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100075EA4;
          block[3] = &unk_100268C18;
          block[4] = self;
          v17 = v5;
          dispatch_async(&_dispatch_main_q, block);
        }

        else
        {
          if (v14)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Skip App Reload since we have no active device.", buf, 2u);
          }
        }
      }
    }
  }
}

- (void)insertAndDeleteSpecifiersForChanges:(id)a3
{
  v4 = a3;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = NSKeyedUnarchiver_ptr;
  *&v9 = 138412290;
  v49 = v9;
  v50 = v4;
LABEL_2:
  v51 = v7;
  while (v7 < [v4 count] || v7 < objc_msgSend(*(&self->_sockPuppetAppMapping + 6), "count"))
  {

    if (v7 >= [v4 count])
    {
      v6 = 0;
    }

    else
    {
      v6 = [v4 objectAtIndex:v7];
    }

    if (v7 >= [*(&self->_sockPuppetAppMapping + 6) count])
    {
      v5 = 0;
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v5 = [*(&self->_sockPuppetAppMapping + 6) objectAtIndex:v7];
      if (!v6)
      {
        goto LABEL_13;
      }
    }

    if (!v5)
    {
      v34 = pbb_bridge_log();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "New set of specifiers is longer than the old set, appending new specifiers", buf, 2u);
      }

      v35 = v8[192];
      v36 = [v4 subarrayWithRange:{v7, objc_msgSend(v4, "count") - v7}];
      v37 = [v35 arrayWithArray:v36];

      v38 = [*(&self->_sockPuppetAppMapping + 6) lastObject];
      v39 = [v38 identifier];
      v40 = [(COSSettingsListController *)self indexOfSpecifierID:v39];

      [(COSPreferencesListController *)self insertContiguousSpecifiers:v37 atIndex:v40 + 1 animated:1];
      goto LABEL_46;
    }

LABEL_13:
    if (v5 && !v6)
    {
      v41 = pbb_bridge_log();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "New set of specifiers is shorter than the old set, removing extra specifiers", buf, 2u);
      }

      v42 = v8[192];
      v43 = [*(&self->_sockPuppetAppMapping + 6) subarrayWithRange:{v7, objc_msgSend(*(&self->_sockPuppetAppMapping + 6), "count") - v7}];
      v44 = [v42 arrayWithArray:v43];

      v54 = 0u;
      v55 = 0u;
      v52 = 0u;
      v53 = 0u;
      v38 = v44;
      v45 = [v38 countByEnumeratingWithState:&v52 objects:v63 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v53;
        do
        {
          for (i = 0; i != v46; i = i + 1)
          {
            if (*v53 != v47)
            {
              objc_enumerationMutation(v38);
            }

            [(COSSettingsListController *)self _removeSpecifierFromTableAndStash:*(*(&v52 + 1) + 8 * i) animated:1];
          }

          v46 = [v38 countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v46);
      }

      v37 = v38;
      v6 = v5;
LABEL_46:

      v5 = v37;
      break;
    }

    if (sub_100076630(v6, v5))
    {
      ++v7;
      goto LABEL_2;
    }

    v10 = pbb_bridge_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v6 identifier];
      v12 = [v5 identifier];
      *buf = 138412546;
      v60 = v11;
      v61 = 2112;
      v62 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New specifier: %@ and old one: %@ differ, adjusting list", buf, 0x16u);
    }

    v13 = [v6 name];
    v14 = [v5 name];
    v15 = [v13 isEqualToString:v14];

    if (v15)
    {
      [(COSSettingsListController *)self _removeSpecifier:v5 andInsertSpecifier:v6 animated:0];
      v8 = NSKeyedUnarchiver_ptr;
    }

    else
    {
      v58[0] = v6;
      v58[1] = v5;
      v16 = [NSArray arrayWithObjects:v58 count:2];
      v17 = [NSMutableArray arrayWithArray:v16];

      v18 = [v6 identifier];
      v19 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Available_Apps_Section_Title"];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        v57[0] = v5;
        v57[1] = v6;
        v21 = [NSArray arrayWithObjects:v57 count:2];
        v22 = [NSMutableArray arrayWithArray:v21];

        v17 = v22;
        v8 = NSKeyedUnarchiver_ptr;
      }

      else
      {
        v23 = [v5 identifier];
        v24 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Available_Apps_Section_Title"];
        v25 = [v23 isEqualToString:v24];

        if (v25)
        {
          v56[0] = v6;
          v56[1] = v5;
          v8 = NSKeyedUnarchiver_ptr;
          v26 = [NSArray arrayWithObjects:v56 count:2];
          v27 = [NSMutableArray arrayWithArray:v26];

          v17 = v27;
        }

        else
        {
          [v17 sortUsingSelector:"titleCompare:"];
          v8 = NSKeyedUnarchiver_ptr;
        }
      }

      v4 = v50;
      v7 = v51;
      v28 = [v17 firstObject];
      v29 = [v28 isEqual:v6];

      if (v29)
      {
        v30 = [v5 identifier];
        v31 = [(COSSettingsListController *)self indexOfSpecifierID:v30];

        [(COSSettingsListController *)self _insertSpecifierIntoTableAndStash:v6 atIndex:v31 stashIndex:v51 animated:1];
        v32 = pbb_bridge_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          v33 = [v6 identifier];
          *buf = 138412546;
          v60 = v33;
          v61 = 2048;
          v62 = v31;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "New app list has an additional specifier %@ to be inserted at index %lu", buf, 0x16u);
        }

        v8 = NSKeyedUnarchiver_ptr;
      }

      else
      {
        [(COSSettingsListController *)self _removeSpecifierFromTableAndStash:v5 animated:1];
        v32 = pbb_bridge_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v49;
          v60 = v5;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Old app list has an additional specifier, removing %@", buf, 0xCu);
        }
      }
    }
  }
}

- (void)_removeSpecifier:(id)a3 andInsertSpecifier:(id)a4 animated:(BOOL)a5
{
  v5 = a5;
  v12 = a4;
  v8 = a3;
  v9 = [v8 identifier];
  v10 = [(COSSettingsListController *)self indexOfSpecifierID:v9];

  v11 = [*(&self->_sockPuppetAppMapping + 6) indexOfObject:v8];
  [(COSSettingsListController *)self _removeSpecifierFromTableAndStash:v8 animated:v5];

  [(COSSettingsListController *)self _insertSpecifierIntoTableAndStash:v12 atIndex:v10 stashIndex:v11 animated:v5];
}

- (void)_removeSpecifierFromTableAndStash:(id)a3 animated:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v6 = [v7 identifier];
  [(COSSettingsListController *)self removeSpecifierID:v6 animated:v4];

  [*(&self->_sockPuppetAppMapping + 6) removeObject:v7];
}

- (void)_insertSpecifierIntoTableAndStash:(id)a3 atIndex:(unint64_t)a4 stashIndex:(unint64_t)a5 animated:(BOOL)a6
{
  v6 = a6;
  v10 = *(&self->_sockPuppetAppMapping + 6);
  v11 = a3;
  [v10 insertObject:v11 atIndex:a5];
  [(COSSettingsListController *)self insertSpecifier:v11 atIndex:a4 animated:v6];
}

- (void)gatherAllWatchAppsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = sub_10000DB38();
  v7 = objc_alloc_init(NSMutableDictionary);
  v8 = +[ACXDeviceConnection sharedDeviceConnection];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100076A7C;
  v12[3] = &unk_100269D58;
  v13 = v5;
  v14 = v7;
  v15 = self;
  v16 = v4;
  v9 = v4;
  v10 = v7;
  v11 = v5;
  [v8 enumerateInstalledApplicationsOnPairedDevice:v6 withBlock:v12];
}

- (void)groupLocallyAvailableAppsWithWatchOnlyApps:(id)a3 withStates:(id)a4 withCompletion:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = sub_10000DB38();
  v11 = +[ACXDeviceConnection sharedDeviceConnection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100076D20;
  v15[3] = &unk_100269D80;
  v16 = v7;
  v17 = v8;
  v18 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  [v11 enumerateLocallyAvailableApplicationsForPairedDevice:v10 options:1 withBlock:v15];
}

- (id)freezeDryAppStates:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = v3;
  v5 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    v8 = PSEnabledKey;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", 0, 0, 0, 0, 0, [v10 cellType], 0);
        if ([v10 cellType])
        {
          v12 = [v10 propertyForKey:@"COSSockPuppetInstallationState"];
          [v11 setProperty:v12 forKey:@"COSSockPuppetInstallationState"];
        }

        v13 = [v10 identifier];
        [v11 setIdentifier:v13];

        v14 = [v10 propertyForKey:v8];
        [v11 setProperty:v14 forKey:v8];

        [v4 addObject:v11];
      }

      v6 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  return v4;
}

- (void)appInstallErrorReceived:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKey:@"COSAppInstallErrorKey"];

  if (v5)
  {
    v6 = [v5 domain];
    v7 = [v6 isEqualToString:@"ACXUserPresentableErrorDomain"];

    if (v7)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100077308;
      v9[3] = &unk_100268358;
      v10 = v5;
      v11 = self;
      dispatch_async(&_dispatch_main_q, v9);
      v8 = v10;
    }

    else
    {
      v8 = pbb_bridge_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v5;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "AppConduit installation error is not presentable: %@", buf, 0xCu);
      }
    }
  }
}

- (void)reloadWatchKitApps:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 name];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "reloading watch kit apps on notification: %@", &v7, 0xCu);
  }

  [(COSSettingsListController *)self _kickOffWatchKitAppReload];
}

- (id)sockPuppetApps
{
  [(COSSettingsListController *)self _kickOffWatchKitAppReload];
  v3 = +[NSMutableArray array];
  v4 = *(&self->_sockPuppetAppMapping + 6);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = [(COSSettingsListController *)self wkAppSpinnerGroup];
  }

  v6 = v5;
  [v3 addObjectsFromArray:v5];

  return v3;
}

- (void)addUnavailableAppsSectionIfNeeded
{
  if (-[COSSettingsListController watchKitOneAppsEOL](self, "watchKitOneAppsEOL") && [0 count])
  {
    v3 = [(COSSettingsListController *)self specifierForID:@"UNAVAILABLE_APPS_GROUP_ID"];
    v4 = [(COSSettingsListController *)self containsSpecifier:v3];

    if ((v4 & 1) == 0)
    {
      v5 = [PSSpecifier groupSpecifierWithID:@"UNAVAILABLE_APPS_GROUP_ID"];
      v6 = +[NSBundle mainBundle];
      v7 = [v6 localizedStringForKey:@"UNAVAILABLE_APPS" value:&stru_10026E598 table:@"Localizable"];
      v8 = [PSSpecifier preferenceSpecifierNamed:v7 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

      v11[0] = v5;
      v11[1] = v8;
      v9 = [NSArray arrayWithObjects:v11 count:2];
      v10 = [(COSSettingsListController *)self specifiers];
      -[COSSettingsListController insertContiguousSpecifiers:atIndex:](self, "insertContiguousSpecifiers:atIndex:", v9, [v10 count]);
    }
  }
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  if (a4)
  {
    v15.receiver = self;
    v15.super_class = COSSettingsListController;
    v7 = [(COSSettingsListController *)&v15 tableView:v6 viewForHeaderInSection:a4];
  }

  else
  {
    v8 = [(COSSettingsListController *)self activeWatchOrFakeWatch];
    v9 = [v8 valueForProperty:NRDevicePropertyIsAltAccount];
    v10 = [v9 BOOLValue];

    HasCapabilityForString = BPSDeviceHasCapabilityForString();
    v12 = sub_100008BAC();
    v7 = 0;
    if (*(&self->_isEnrolledAndSupervised + 6) && (v12 & 1) == 0 && (v10 & 1) == 0 && HasCapabilityForString)
    {
      v7 = [v6 dequeueReusableHeaderFooterViewWithIdentifier:@"COSGalleryHeaderIdentifier"];
      v13 = [*(&self->_isEnrolledAndSupervised + 6) view];
      [v7 setGalleryView:v13];
    }
  }

  return v7;
}

- (void)facesViewControllerDidUpdateContent:(id)a3
{
  v3 = *&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__table];
  v4 = [NSIndexSet indexSetWithIndex:0];
  [v3 _reloadSectionHeaderFooters:v4 withRowAnimation:5];
}

- (void)reloadApplicationForGreenfieldInstall:(id)a3
{
  v4 = a3;
  v5 = [v4 userInfo];
  v6 = [v5 objectForKey:NTKGreenfieldApplicationInstallBeganNotificationAppKey];

  v7 = [v4 userInfo];

  v8 = [v7 objectForKey:NTKGreenfieldApplicationInstallBeganNotificationInstallStateKey];
  v9 = [v8 integerValue];

  v10 = [(COSSettingsListController *)self specifierForID:v6];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 propertyForKey:@"COSSockPuppetInstallationState"];
    v13 = [v12 integerValue];

    if (v9 != v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100077B5C;
      block[3] = &unk_100269DA8;
      v16 = self;
      v17 = v9;
      v15 = v11;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)deviceBecameInActive:(id)a3
{
  v4 = [UIApp safeToPopToSettingsRootController];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(COSSettingsListController *)self navigationController];
    v7 = [v6 topViewController];
    v15 = 136446722;
    v16 = "[COSSettingsListController deviceBecameInActive:]";
    v17 = 1024;
    v18 = v4;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: safeToPopToSettingsRootController: %{BOOL}d, topViewController: %@", &v15, 0x1Cu);
  }

  v8 = [(COSSettingsListController *)self navigationController];
  v9 = [v8 topViewController];
  v10 = (v9 != self) & v4;

  if (v10 == 1)
  {
    v11 = [(COSSettingsListController *)self navigationController];
    v12 = [v11 popToRootViewControllerAnimated:1];

    v13 = sub_100009AB4();
    v14 = [v13 count];

    if (v14)
    {
      [(COSSettingsListController *)self _showDevicePicker:0];
    }
  }
}

- (void)deviceBecameActive:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136446210;
    v7 = "[COSSettingsListController deviceBecameActive:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v6, 0xCu);
  }

  v5 = +[BPSLinkCell _iconCache];
  [v5 removeAllObjects];

  [(COSSettingsListController *)self _refreshAppInstallationStatus];
  [(COSSettingsListController *)self _updateDeviceManagementInformation];
  [(COSListController *)self reloadSpecifiers];
  [(COSSettingsListController *)self notifyNTKAboutActiveWatch];
}

- (void)deviceBecamePaired:(id)a3
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[COSSettingsListController deviceBecamePaired:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (void)deviceIsSetup:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[COSSettingsListController deviceIsSetup:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(COSSettingsListController *)self _notifyNTKAboutActiveWatchSkipSetupCompletionCheck:1];
}

- (void)compatibilityStateChanged:(id)a3
{
  v4 = pbb_bridge_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = "[COSSettingsListController compatibilityStateChanged:]";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }

  [(COSSettingsListController *)self notifyNTKAboutActiveWatch];
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 end];
}

- (void)removeContiguousSpecifiersFromIndexing:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[COSSettingsListController removeContiguousSpecifiersFromIndexing:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = *(&self->_watchAppInstallStates + 6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10007846C;
  v8[3] = &unk_100269DD0;
  v9 = v4;
  v7 = v4;
  objc_copyWeak(&v10, buf);
  dispatch_async(v6, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (void)insertContiguousSpecifiersForIndexing:(id)a3
{
  v4 = a3;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v12 = "[COSSettingsListController insertContiguousSpecifiersForIndexing:]";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = *(&self->_watchAppInstallStates + 6);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000787DC;
  v8[3] = &unk_100269DD0;
  v9 = v4;
  v7 = v4;
  objc_copyWeak(&v10, buf);
  dispatch_async(v6, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (void)searchResultsCollectionViewController:(id)a3 didSelectURL:(id)a4
{
  v5 = a4;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v5 absoluteString];
    *buf = 138412290;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[url absoluteString] -> %@", buf, 0xCu);
  }

  if ([(COSSettingsListController *)self displaySearchTab])
  {
    BPSOpenSensitiveURLAsync();
  }

  else
  {
    [UIApp processURL:v5 animated:1 fromSearch:1];
    v8 = [v5 absoluteString];
    v9 = [v8 hasPrefix:@"bridge:root=(null)"];

    if (v9)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100078B90;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (int64_t)searchResultsCollectionViewController:(id)a3 sortCategory1:(id)a4 sortCategory2:(id)a5
{
  v7 = a5;
  v8 = [NSNumber numberWithInteger:[(COSSettingsListController *)self indexOfSpecifierID:a4]];
  v9 = [(COSSettingsListController *)self indexOfSpecifierID:v7];

  v10 = [NSNumber numberWithInteger:v9];
  v11 = [v8 compare:v10];

  return v11;
}

- (id)appIconForSpecifierIdentifier:(id)a3
{
  v4 = a3;
  if (v4 && (-[COSSettingsListController searchCategoriesWithoutIcons](self, "searchCategoriesWithoutIcons"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:v4], v5, (v6 & 1) == 0))
  {
    v8 = [(COSSettingsListController *)self specifierForID:v4];
    v9 = [v8 propertyForKey:PSLazyIconAppID];
    v7 = [v8 propertyForKey:PSIconImageKey];
    if (!v7)
    {
      v10 = +[BPSLinkCell _iconCache];
      v7 = [v10 objectForKey:v9];

      if (!v7)
      {
        v11 = [v8 propertyForKey:@"squareIconName"];
        if (v11)
        {
          v12 = [UIImage imageNamed:v11];
          v7 = BPSCreateRoundedGizmoAppIconForSquareImage();
        }

        else if (v9)
        {
          if ([v9 isEqualToString:@"VICTORY_ROW_ID"])
          {
            v14 = [NSBundle bundleForClass:objc_opt_class()];
            v15 = [UIImage imageNamed:@"VictoryIcon" inBundle:v14];

            v7 = BPSCreateRoundedGizmoAppIconForSquareImage();
          }

          else
          {
            v7 = 0;
          }

          if ([v9 isEqualToString:@"VICTORY_TRAINING_CLUB_ROW_ID"])
          {
            v16 = [NSBundle bundleForClass:objc_opt_class()];
            v17 = [UIImage imageNamed:@"NTCIcon" inBundle:v16];

            v18 = BPSCreateRoundedGizmoAppIconForSquareImage();

            v7 = v18;
          }

          else
          {
            v19 = [v8 propertyForKey:PSLazilyLoadedBundleKey];
            v40 = [NSBundle bundleWithPath:v19];
            if (v40)
            {
              v20 = +[UIScreen mainScreen];
              [v20 scale];
              v21 = @"@2x";
              if (v22 > 2.0)
              {
                v21 = @"@3x";
              }

              v23 = v21;

              v24 = [@"BridgeSettingsIcon" stringByAppendingString:v23];

              v25 = [v40 pathForResource:v24 ofType:@".png"];

              if (v25)
              {
                v26 = [UIImage imageWithContentsOfFile:v25];
                if (v26)
                {
                  v27 = BPSCreateRoundedGizmoAppIconForSquareImage();

                  v7 = v27;
                }
              }
            }

            if (!v7)
            {
              v37 = v19;
              v44 = 0;
              v45 = &v44;
              v46 = 0x3032000000;
              v47 = sub_100008C0C;
              v48 = sub_100009CF8;
              v49 = 0;
              dsema = dispatch_semaphore_create(0);
              v28 = +[NanoResourceGrabber sharedInstance];
              v29 = +[UIScreen mainScreen];
              v30 = [v29 traitCollection];
              [v30 displayScale];
              if (v31 <= 2.0)
              {
                v32 = 47;
              }

              else
              {
                v32 = 48;
              }

              v33 = dispatch_get_global_queue(0, 0);
              v41[0] = _NSConcreteStackBlock;
              v41[1] = 3221225472;
              v41[2] = sub_100079270;
              v41[3] = &unk_100269DF8;
              v43 = &v44;
              dsemaa = dsema;
              v42 = dsemaa;
              [v28 getIconForBundleID:v9 iconVariant:v32 queue:v33 block:v41 timeout:0.1];

              v19 = v37;
              v34 = dispatch_time(0, 100000000);
              if (dispatch_semaphore_wait(dsemaa, v34) >= 1)
              {
                v35 = pbb_bridge_log();
                if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR) && os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  v51 = v4;
                  v52 = 2112;
                  v53 = v9;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Timed out looking for category %@ search icon for %@, never looking again...", buf, 0x16u);
                }

                v36 = [(COSSettingsListController *)self searchCategoriesWithoutIcons];
                [v36 addObject:v4];
              }

              v7 = v45[5];

              _Block_object_dispose(&v44, 8);
            }
          }
        }

        else
        {
          v7 = 0;
        }
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)searchBarTextDidEndEditing:(id)a3
{
  if (([(COSSettingsListController *)self isFirstResponder]& 1) == 0)
  {

    [(COSSettingsListController *)self becomeFirstResponder];
  }
}

- (BOOL)searchBarShouldEndEditing:(id)a3
{
  v4 = [(COSSettingsListController *)self spotlightResultsController];
  v5 = [v4 collectionView];
  v6 = [v5 indexPathsForSelectedItems];
  v7 = [v6 firstObject];

  if (v7)
  {
    v8 = [(COSSettingsListController *)self spotlightResultsController];
    [v8 showSelectedSearchResult];
  }

  return v7 == 0;
}

- (void)searchBar:(id)a3 textDidChange:(id)a4
{
  v5 = a3;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[COSSettingsListController searchBar:textDidChange:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  if (![(COSSettingsListController *)self displaySearchTab]&& _os_feature_enabled_impl())
  {
    v7 = [v5 text];
    v8 = [v7 length];

    v9 = &OBJC_IVAR___COSSettingsListController__spotlightResultsController;
    if (!v8)
    {
      v9 = &OBJC_IVAR___COSSettingsListController__searchSuggestionsViewController;
    }

    [*(&self->_skippedMiniFlowController + 6) presentController:*&self->super.super.BPSListController_opaque[*v9]];
  }
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000796D8;
  v21[3] = &unk_1002692A0;
  objc_copyWeak(&v22, &location);
  v5 = objc_retainBlock(v21);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_100079744;
  v19[3] = &unk_100269E20;
  objc_copyWeak(&v20, &location);
  v6 = objc_retainBlock(v19);
  v7 = *(&self->_watchAppInstallStates + 6);
  v12 = _NSConcreteStackBlock;
  v13 = 3221225472;
  v14 = sub_10007979C;
  v15 = &unk_100269E48;
  v8 = v4;
  v16 = v8;
  v9 = v5;
  v17 = v9;
  v10 = v6;
  v18 = v10;
  dispatch_async(v7, &v12);
  v11 = [(COSSettingsListController *)self spotlightResultsController:v12];
  [v11 searchQueryStarted];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)updateInstallProgressForApplication:(id)a3 progress:(double)a4 installPhase:(int64_t)a5
{
  if ((a5 - 1) <= 1)
  {
    v6 = a4 * 0.54;
    v7 = a4 * 0.46 + 54.0;
    if (a5 == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    v9 = a3;
    v10 = +[NSNotificationCenter defaultCenter];
    v15[0] = v9;
    v14[0] = @"appid";
    v14[1] = @"progress";
    v11 = [NSNumber numberWithDouble:v8];
    v15[1] = v11;
    v14[2] = @"phase";
    v12 = [NSNumber numberWithInteger:a5];
    v15[2] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:3];

    [v10 postNotificationName:@"COSInstallProgressNotificationName" object:v13];
  }
}

- (void)showDeviceSupervisionInfo
{
  v3 = +[NSBundle mainBundle];
  if (MGGetBoolAnswer())
  {
    v4 = @"DEVICE_SUPERVISION_INFO_WLAN";
  }

  else
  {
    v4 = @"DEVICE_SUPERVISION_INFO";
  }

  v7 = [v3 localizedStringForKey:v4 value:&stru_10026E598 table:@"DeviceSupervisionInfo-yorktown"];

  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"LEARN_MORE_ABOUT_SUPERVISION_SHEET_TITLE" value:&stru_10026E598 table:@"Localizable-yorktown"];
  [PSAboutHTMLSheetViewController presentAboutSheetTitled:v6 HTMLContent:v7 fromViewController:self];
}

- (void)presentSearchController:(id)a3
{
  v7 = a3;
  if (![(COSSettingsListController *)self displaySearchTab])
  {
    if (_os_feature_enabled_impl())
    {
      [v7 setShowsSearchResultsController:1];
      v4 = [v7 searchBar];
      v5 = [v4 text];
      v6 = [v5 length];

      if (!v6)
      {
        [*(&self->_skippedMiniFlowController + 6) presentController:*(&self->_spotlightSearchController + 6)];
      }
    }
  }
}

@end