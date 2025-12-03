@interface COSSettingsListController
+ (id)sharedTopLevelIconsLazyLoadingQueue;
- (BOOL)displaySearchTab;
- (BOOL)searchBarShouldEndEditing:(id)editing;
- (BOOL)showPairingButton;
- (BOOL)wantsCustomControllerForRootSpecifierID:(id)d;
- (BOOL)watchKitOneAppsEOL;
- (COSSettingsListController)init;
- (id)activeWatchOrFakeWatch;
- (id)additionalSpecifiers;
- (id)appIconForSpecifierIdentifier:(id)identifier;
- (id)customControllerForBundlePath:(id)path;
- (id)customControllerForRootSpecifierID:(id)d;
- (id)fakeDevice;
- (id)filterForWatchInstalledApps:(id)apps;
- (id)filterSockPuppetApps:(id)apps;
- (id)freezeDryAppStates:(id)states;
- (id)generalViewController;
- (id)sockPuppetApps;
- (id)specialCaseVictoryRow;
- (id)specifiers;
- (id)specifiersForWKApps:(id)apps;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)title;
- (id)wkAppSpinnerGroup;
- (int64_t)_groupIndexForGroup:(id)group;
- (int64_t)searchResultsCollectionViewController:(id)controller sortCategory1:(id)category1 sortCategory2:(id)category2;
- (void)_appStoreSpecifierTapped:(id)tapped;
- (void)_hackToRemoveExtraSearchView;
- (void)_insertSpecifierIntoTableAndStash:(id)stash atIndex:(unint64_t)index stashIndex:(unint64_t)stashIndex animated:(BOOL)animated;
- (void)_kickOffWatchKitAppReload;
- (void)_notifyNTKAboutActiveWatchSkipSetupCompletionCheck:(BOOL)check;
- (void)_prepareDiscoveryIfNeeded;
- (void)_pushCustomControllerForPath:(id)path andTitle:(id)title;
- (void)_refreshAppInstallationStatus;
- (void)_removeSpecifier:(id)specifier andInsertSpecifier:(id)insertSpecifier animated:(BOOL)animated;
- (void)_removeSpecifierFromTableAndStash:(id)stash animated:(BOOL)animated;
- (void)_showDevicePicker:(id)picker;
- (void)_startSpinnerInSpecifier:(id)specifier;
- (void)_stopSpinnerInSpecifier:(id)specifier;
- (void)_storeReauthStepForTinkerFamilyMember:(id)member withWatchAKDevice:(id)device completion:(id)completion;
- (void)_updateDeviceManagementInformation;
- (void)addUnavailableAppsSectionIfNeeded;
- (void)appInstallErrorReceived:(id)received;
- (void)compatibilityStateChanged:(id)changed;
- (void)ctCellularPlanInfoDidChange:(id)change;
- (void)dealloc;
- (void)decorateSpecifierWithWKDetails:(id)details byIdentifier:(id)identifier andApplication:(id)application;
- (void)deviceBecameActive:(id)active;
- (void)deviceBecameInActive:(id)active;
- (void)deviceBecamePaired:(id)paired;
- (void)deviceIsSetup:(id)setup;
- (void)didEnterBackground:(id)background;
- (void)discoveredAdvertisingWatch:(id)watch;
- (void)facesViewControllerDidUpdateContent:(id)content;
- (void)gatherAllWatchAppsWithCompletion:(id)completion;
- (void)groupLocallyAvailableAppsWithWatchOnlyApps:(id)apps withStates:(id)states withCompletion:(id)completion;
- (void)indexSpecifiersIfNeeded;
- (void)insertAndDeleteSpecifiersForChanges:(id)changes;
- (void)insertContiguousSpecifiersForIndexing:(id)indexing;
- (void)jumpToAppStoreWatchSection:(id)section;
- (void)loadSpotlightSearchControllers;
- (void)loadView;
- (void)presentPairingFlowIfPossible;
- (void)presentSearchController:(id)controller;
- (void)presentSkippedPanes:(id)panes;
- (void)proceedWithStoreRepairForAccount:(id)account withWatchAKDevice:(id)device completion:(id)completion;
- (void)pushCustomControllerForRootSpecifierID:(id)d;
- (void)refreshAppleAppGroupFooterState:(BOOL)state;
- (void)reindexIfNeeded;
- (void)reloadApplicationForGreenfieldInstall:(id)install;
- (void)reloadWatchKitApps:(id)apps;
- (void)removeContiguousSpecifiersFromIndexing:(id)indexing;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)searchBar:(id)bar textDidChange:(id)change;
- (void)searchBarTextDidEndEditing:(id)editing;
- (void)searchResultsCollectionViewController:(id)controller didSelectURL:(id)l;
- (void)showDeviceSupervisionInfo;
- (void)skippedMiniFlowDidFinish:(id)finish;
- (void)startSpinnerInCellForSpecifier:(id)specifier;
- (void)stopSpinner;
- (void)systemAppSpecifierProcessing:(id)processing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)updateInstallProgressForApplication:(id)application progress:(double)progress installPhase:(int64_t)phase;
- (void)updateNavTitle;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)willEnterForeground:(id)foreground;
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
      facesViewController = [*(v2 + 246) facesViewController];
      v28 = *(v2 + 174);
      *(v2 + 174) = facesViewController;
    }

    v2[160] = 1;
    table = [v2 table];
    [table setDelegate:v2];
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

  spotlightResultsController = [(COSSettingsListController *)self spotlightResultsController];
  [spotlightResultsController setDelegate:self];

  if ([(COSSettingsListController *)self displaySearchTab]|| (_os_feature_enabled_impl() & 1) == 0)
  {
    v7 = [PSKeyboardNavigationSearchController alloc];
    spotlightResultsController2 = [(COSSettingsListController *)self spotlightResultsController];
  }

  else
  {
    v7 = [PSKeyboardNavigationSearchController alloc];
    spotlightResultsController2 = [(COSSettingsListController *)self searchContainerViewController];
  }

  v9 = spotlightResultsController2;
  v10 = [v7 initWithSearchResultsController:spotlightResultsController2];
  [(COSSettingsListController *)self setSpotlightSearchController:v10];

  spotlightSearchController = [(COSSettingsListController *)self spotlightSearchController];
  [spotlightSearchController setSearchResultsUpdater:self];

  v12 = sub_10000AD54(@"SEARCH_SETTINGS_PLACEHOLDER");
  spotlightSearchController2 = [(COSSettingsListController *)self spotlightSearchController];
  searchBar = [spotlightSearchController2 searchBar];
  [searchBar setPlaceholder:v12];

  spotlightSearchController3 = [(COSSettingsListController *)self spotlightSearchController];
  searchBar2 = [spotlightSearchController3 searchBar];
  [searchBar2 setDelegate:self];

  spotlightSearchController4 = [(COSSettingsListController *)self spotlightSearchController];
  [spotlightSearchController4 setDelegate:self];

  spotlightSearchController5 = [(COSSettingsListController *)self spotlightSearchController];
  [spotlightSearchController5 setAdditionalSafeAreaInsets:{20.0, 0.0, 0.0, 0.0}];

  [(COSSettingsListController *)self setDefinesPresentationContext:1];
  if (![(COSSettingsListController *)self displaySearchTab])
  {
    spotlightSearchController6 = [(COSSettingsListController *)self spotlightSearchController];
    navigationItem = [(COSSettingsListController *)self navigationItem];
    [navigationItem setSearchController:spotlightSearchController6];
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
  sharedInstance = [sub_10000DF9C() sharedInstance];
  [v3 addObserver:self selector:"ctCellularPlanInfoDidChange:" name:v7 object:sharedInstance];

  table = [(COSSettingsListController *)self table];
  [table registerClass:objc_opt_class() forHeaderFooterViewReuseIdentifier:@"COSGalleryHeaderIdentifier"];

  table2 = [(COSSettingsListController *)self table];
  [table2 setEstimatedSectionHeaderHeight:240.0];

  table3 = [(COSSettingsListController *)self table];
  [table3 setSectionHeaderHeight:UITableViewAutomaticDimension];

  if (*(&self->_isEnrolledAndSupervised + 6) && (sub_100008BAC() & 1) == 0)
  {
    [(COSSettingsListController *)self addChildViewController:*(&self->_isEnrolledAndSupervised + 6)];
    [*(&self->_isEnrolledAndSupervised + 6) didMoveToParentViewController:self];
  }

  navigationItem = [(COSSettingsListController *)self navigationItem];
  v13 = [UIBarButtonItem alloc];
  v14 = +[NSBundle mainBundle];
  v15 = [v14 localizedStringForKey:@"PICKER_BUTTON" value:&stru_10026E598 table:@"Localizable"];
  v16 = [v13 initWithTitle:v15 style:0 target:self action:"_showDevicePicker:"];
  [navigationItem setLeftBarButtonItem:v16];

  table4 = [(COSSettingsListController *)self table];
  v18 = objc_opt_class();
  v19 = +[BPSLinkCell cellReuseIdentifier];
  [table4 registerClass:v18 forCellReuseIdentifier:v19];

  table5 = [(COSSettingsListController *)self table];
  v21 = objc_opt_class();
  v22 = +[BPSBadgedTableCell cellReuseIdentifier];
  [table5 registerClass:v21 forCellReuseIdentifier:v22];

  table6 = [(COSSettingsListController *)self table];
  v24 = objc_opt_class();
  v25 = +[COSApplicationLinkCell cellReuseIdentifier];
  [table6 registerClass:v24 forCellReuseIdentifier:v25];
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
  specifiers = [(COSPreferencesListController *)&v115 specifiers];
  v99 = [specifiers mutableCopy];

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
        identifier = [v28 identifier];
        if ([identifier isEqualToString:@"INTERNAL_SETTINGS"])
        {
          goto LABEL_30;
        }

        identifier2 = [v28 identifier];
        v31 = [identifier2 isEqualToString:@"CARRIER_SETTINGS"];

        if ((v31 & 1) == 0 && [v28 cellType] == 1)
        {
          v32 = [v28 propertyForKey:v26];
          v33 = v32 == 0;

          if (v33)
          {
            v34 = [NSNumber numberWithBool:1];
            [v28 setProperty:v34 forKey:v100];

            identifier = BPSWatchAppBundleIDForSettingsBundleSpecifier();
            [v28 setProperty:identifier forKey:v26];
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

  activeWatchOrFakeWatch = [(COSSettingsListController *)val activeWatchOrFakeWatch];
  v38 = [[NSUUID alloc] initWithUUIDString:@"E81D5008-B450-487E-9A35-6029799E6588"];
  v39 = [activeWatchOrFakeWatch supportsCapability:v38];

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

  v48 = [activeWatchOrFakeWatch valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v48 BOOLValue];

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

  topLevelSpecifiers = [v50 topLevelSpecifiers];
  v57 = +[BPSFollowUpController skippedSetupPaneClassesForCurrentDevice];
  v98 = v57;
  if (v57 && [v57 count])
  {
    v58 = [PSSpecifier groupSpecifierWithID:@"SKIPPED_PANES_GROUP"];
    v59 = sub_10000AD54(@"SKIPPED_PANES_ROW_TITLE");
    if (bOOLValue)
    {
      tinkerUserName = [UIApp tinkerUserName];
      v61 = +[NSBundle mainBundle];
      v62 = [v61 localizedStringForKey:@"SKIPPED_PANES_ROW_TITLE_NAME_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v63 = [NSString stringWithFormat:v62, tinkerUserName];

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
    v67 = [topLevelSpecifiers arrayByAddingObjectsFromArray:v66];

    topLevelSpecifiers = v67;
    if ((bOOLValue & 1) == 0)
    {
      goto LABEL_60;
    }

LABEL_63:
    if (v66 && [v66 count])
    {
      v69 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v66 count]);
      [obja insertObjects:v66 atIndexes:v69];
    }

    tinkerUserName2 = [UIApp tinkerUserName];
    if ([tinkerUserName2 length])
    {
      v70 = [(COSSettingsListController *)val specifierForID:@"APPLE_APP_GROUP_ID"];
      v71 = +[NSBundle mainBundle];
      v72 = [v71 localizedStringForKey:@"TINKER_APP_INSTALL_FOR_USER_%@" value:&stru_10026E598 table:@"Localizable-tinker"];
      v73 = [NSString stringWithFormat:v72, tinkerUserName2];
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
  if (bOOLValue)
  {
    goto LABEL_63;
  }

LABEL_60:
  if (![topLevelSpecifiers count])
  {
    goto LABEL_73;
  }

  tinkerUserName2 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [topLevelSpecifiers count]);
  [obja insertObjects:topLevelSpecifiers atIndexes:tinkerUserName2];
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

    enrolledOrganizationName = [(COSSettingsListController *)val enrolledOrganizationName];

    +[NSBundle mainBundle];
    if (enrolledOrganizationName)
      v83 = {;
      v84 = [v83 localizedStringForKey:@"DEVICE_MANAGEMENT_INFO_WITH_ORG_%@" value:&stru_10026E598 table:@"Localizable-yorktown"];
      enrolledOrganizationName2 = [(COSSettingsListController *)val enrolledOrganizationName];
      v86 = [NSString stringWithFormat:v84, enrolledOrganizationName2];
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
  displayDevice = [UIApp displayDevice];
  if (displayDevice)
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

    v8 = [displayDevice valueForProperty:@"isPaired"];
    bOOLValue = [v8 BOOLValue];

    if (bOOLValue)
    {
      sockPuppetApps = [(COSSettingsListController *)self sockPuppetApps];
      [v3 addObjectsFromArray:sockPuppetApps];
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
  navigationItem = [(COSSettingsListController *)self navigationItem];
  [navigationItem _setLargeTitleTwoLineMode:1];
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
    displayDevice = [UIApp displayDevice];
    v5 = [[NSUUID alloc] initWithUUIDString:@"A309A9D3-F806-4E30-909A-2D301780A8EB"];
    v3 = [displayDevice supportsCapability:v5];
  }

  return v3;
}

- (void)_refreshAppInstallationStatus
{
  v3 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  if (BPSDeviceHasStandaloneAppsCapability())
  {
    objc_initWeak(&location, self);
    displayDevice = [UIApp displayDevice];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100078058;
    v5[3] = &unk_1002683A8;
    objc_copyWeak(&v6, &location);
    sub_10002DA20(displayDevice, @"com.apple.DeepBreathing", v5);

    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

- (void)_updateDeviceManagementInformation
{
  displayDevice = [UIApp displayDevice];
  v4 = [displayDevice valueForProperty:NRDevicePropertyMDMManagementState];
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
  devices = [v2 devices];

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
  obj = devices;
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

- (void)_showDevicePicker:(id)picker
{
  pickerCopy = picker;
  [(COSSettingsListController *)self setSpotlightSearchController:0];
  [(COSSettingsListController *)self setSpotlightResultsController:0];
  [(COSSettingsListController *)self setSearchSuggestionsViewController:0];
  [(COSSettingsListController *)self setSearchContainerViewController:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [pickerCopy identifier];
    v5 = [identifier isEqualToString:@"FAMILY_WATCHES_ID"];
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

- (void)systemAppSpecifierProcessing:(id)processing
{
  processingCopy = processing;
  activeWatchOrFakeWatch = [(COSSettingsListController *)self activeWatchOrFakeWatch];
  v5 = [activeWatchOrFakeWatch valueForProperty:NRDevicePropertyIsAltAccount];
  bOOLValue = [v5 BOOLValue];

  v6 = [processingCopy specifierForID:@"com.apple.HeartRateSettings"];
  v46 = v6;
  v7 = v6;
  if (v6)
  {
    [v6 setProperty:@"Bridge-HeartIcon" forKey:@"squareIconName"];
    [v7 setProperty:@"Bridge-HeartIcon" forKey:PSLazyIconAppID];
    [v7 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  }

  v8 = [processingCopy specifierForID:@"com.apple.MessagesBridgeSettings"];
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
    v12 = [processingCopy specifierForID:@"com.apple.MessagesBridgeSettings"];
    [processingCopy removeObject:v12];
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
    v13 = processingCopy;
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
    v22 = [processingCopy specifierForID:@"com.apple.NanoBooks.BridgeSettings"];
    [processingCopy removeObject:v22];

    v23 = [processingCopy specifierForID:@"com.apple.private.PodcastsBridgeSettings"];
    [processingCopy removeObject:v23];

    v24 = [processingCopy specifierForID:@"com.apple.tincan.settings"];
    [processingCopy removeObject:v24];

    v25 = [processingCopy specifierForID:@"com.apple.weatherbridgesettings"];
    [processingCopy removeObject:v25];

    v26 = [processingCopy specifierForID:@"com.apple.StocksBridgeSettings"];
    [processingCopy removeObject:v26];

    v27 = [processingCopy specifierForID:@"com.apple.NanoMailBridgeSettings"];
    [processingCopy removeObject:v27];

    v28 = [processingCopy specifierForID:@"com.apple.NanoMapsBridgeSettings"];
    [processingCopy removeObject:v28];

    v29 = [processingCopy specifierForID:@"com.apple.NanoMusicBridgeSettings"];
    [processingCopy removeObject:v29];

    v30 = [processingCopy specifierForID:@"com.apple.NanoCalendarBridgeSettings"];
    [processingCopy removeObject:v30];

    v31 = [processingCopy specifierForID:@"com.apple.NanoClockBridgeSettings"];
    [processingCopy removeObject:v31];

    v32 = [processingCopy specifierForID:@"com.apple.HealthSettings"];
    [processingCopy removeObject:v32];

    v33 = [processingCopy specifierForID:@"com.apple.DeepBreathingSettings"];
    [processingCopy removeObject:v33];

    v34 = [processingCopy specifierForID:@"com.apple.PhoneBridgeSettings"];
    [processingCopy removeObject:v34];

    v35 = [processingCopy specifierForID:@"com.apple.MindSettings"];
    [processingCopy removeObject:v35];

    v36 = [processingCopy specifierForID:@"com.apple.NanoTipsBridgeSettings"];
    [processingCopy removeObject:v36];

    v37 = [processingCopy specifierForID:@"com.apple.NanoMenstrualCyclesCompanionSettings"];
    [processingCopy removeObject:v37];

    v38 = [processingCopy specifierForID:@"com.apple.findmy"];
    [processingCopy removeObject:v38];
  }

  if (sub_100007C2C())
  {
    v39 = [processingCopy specifierForID:@"com.apple.BridgeHealthSettings"];
    [processingCopy removeObject:v39];

    v40 = [processingCopy specifierForID:@"SOS_MODE_ID"];
    [processingCopy removeObject:v40];

    v41 = [processingCopy specifierForID:@"PASSCODE_ID"];
    [processingCopy removeObject:v41];
  }

  if (bOOLValue)
  {
    v42 = [processingCopy specifierForID:@"com.apple.BridgeAppStoreDaemonSettings"];
    [v42 setControllerLoadAction:"_appStoreSpecifierTapped:"];
  }

  objc_destroyWeak(&v53);
  objc_destroyWeak(&location);
}

- (void)_appStoreSpecifierTapped:(id)tapped
{
  tappedCopy = tapped;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v28 = "[COSSettingsListController _appStoreSpecifierTapped:]";
    v29 = 2112;
    v30 = tappedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s app store specifier call back: %@", buf, 0x16u);
  }

  [(COSSettingsListController *)self _startSpinnerInSpecifier:tappedCopy];
  v6 = [tappedCopy propertyForKey:PSLazilyLoadedBundleKey];
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
  v11 = tappedCopy;
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
  cachedTinkerAKDevice = [v15 cachedTinkerAKDevice];

  v17 = +[BPSTinkerSupport sharedInstance];
  cachedTinkerFamilyMemeber = [v17 cachedTinkerFamilyMemeber];

  if (cachedTinkerAKDevice && cachedTinkerFamilyMemeber)
  {
    (v14[2])(v14, cachedTinkerFamilyMemeber, cachedTinkerAKDevice, 0);
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

- (void)_storeReauthStepForTinkerFamilyMember:(id)member withWatchAKDevice:(id)device completion:(id)completion
{
  memberCopy = member;
  deviceCopy = device;
  completionCopy = completion;
  v11 = pbb_accountsignin_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[COSSettingsListController _storeReauthStepForTinkerFamilyMember:withWatchAKDevice:completion:]";
    v24 = 2112;
    v25 = memberCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%s Found: %@", buf, 0x16u);
  }

  v12 = [COSTinkerAppStoreAuthHelper satelliteStoreAccountForFamilyMember:memberCopy];
  objc_initWeak(buf, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100071964;
  v16[3] = &unk_100269BA8;
  v13 = completionCopy;
  v20 = v13;
  objc_copyWeak(&v21, buf);
  v14 = v12;
  v17 = v14;
  v15 = deviceCopy;
  v18 = v15;
  selfCopy = self;
  [COSiTunesStoreAuthController repairDialogsForActiveDeviceWithCompletion:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);
}

- (void)proceedWithStoreRepairForAccount:(id)account withWatchAKDevice:(id)device completion:(id)completion
{
  completionCopy = completion;
  deviceCopy = device;
  accountCopy = account;
  v11 = objc_alloc_init(COSTinkerAppStoreAuthHelperContext);
  [(COSTinkerAppStoreAuthHelperContext *)v11 setPresentingViewController:self];
  [(COSTinkerAppStoreAuthHelperContext *)v11 setSatelliteAKDevice:deviceCopy];

  [(COSTinkerAppStoreAuthHelperContext *)v11 setSatelliteAppStoreAccount:accountCopy];
  v12 = [[COSTinkerAppStoreAuthHelper alloc] initWithContext:v11];
  v13 = *(&self->_enrolledOrganizationName + 6);
  *(&self->_enrolledOrganizationName + 6) = &v12->super.isa;

  v14 = *(&self->_enrolledOrganizationName + 6);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100071EBC;
  v16[3] = &unk_100269470;
  v17 = completionCopy;
  v15 = completionCopy;
  [v14 authenticateWithCompletion:v16];
}

- (void)_startSpinnerInSpecifier:(id)specifier
{
  if (specifier)
  {
    v3 = [specifier propertyForKey:PSTableCellKey];
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

- (void)_stopSpinnerInSpecifier:(id)specifier
{
  specifierCopy = specifier;
  if (specifierCopy)
  {
    v4 = pbb_bridge_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315138;
      v8 = "[COSSettingsListController _stopSpinnerInSpecifier:]";
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%s app store specifier stopping", &v7, 0xCu);
    }

    v5 = [specifierCopy propertyForKey:PSTableCellKey];
    if (v5)
    {
      v6 = [specifierCopy propertyForKey:PSControlKey];
      [v5 setAccessoryView:v6];
    }
  }
}

- (void)_notifyNTKAboutActiveWatchSkipSetupCompletionCheck:(BOOL)check
{
  if (check || (+[UIApplication sharedApplication](UIApplication, "sharedApplication"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isInSetupFlow], v4, !v5))
  {
    v7 = +[NRPairedDeviceRegistry sharedInstance];
    compatibilityState = [v7 compatibilityState];

    if (compatibilityState - 3 > 2)
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
      activeWatchOrFakeWatch = [(COSSettingsListController *)self activeWatchOrFakeWatch];
      v10 = pbb_bridge_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 136315394;
        v13 = "[COSSettingsListController _notifyNTKAboutActiveWatchSkipSetupCompletionCheck:]";
        v14 = 2112;
        v15 = activeWatchOrFakeWatch;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%s %@", &v12, 0x16u);
      }

      [objc_opt_class() setDisplayDevice:activeWatchOrFakeWatch];
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

- (void)jumpToAppStoreWatchSection:(id)section
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
  subviews = [*&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__table] subviews];
  v3 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
        objc_enumerationMutation(subviews);
      }

      v7 = *(*(&v9 + 1) + 8 * v6);
      if ([v7 isMemberOfClass:objc_opt_class()])
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [subviews countByEnumeratingWithState:&v9 objects:v13 count:16];
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
    subviews = v8;
  }

LABEL_12:
}

- (void)viewWillAppear:(BOOL)appear
{
  v10.receiver = self;
  v10.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v10 viewWillAppear:appear];
  [(COSSettingsListController *)self updateNavTitle];
  navigationItem = [(COSSettingsListController *)self navigationItem];
  v5 = [UIBarButtonItem alloc];
  v6 = +[NSBundle mainBundle];
  v7 = [v6 localizedStringForKey:@"PICKER_BUTTON" value:&stru_10026E598 table:@"Localizable"];
  v8 = [v5 initWithTitle:v7 style:0 target:self action:"_showDevicePicker:"];
  [navigationItem setLeftBarButtonItem:v8];

  [(COSSettingsListController *)self _refreshAppInstallationStatus];
  [(COSSettingsListController *)self _updateDeviceManagementInformation];
  v9 = +[BPSTinkerSupport sharedInstance];
  [v9 fetchFamilyDetails];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = COSSettingsListController;
  [(COSSettingsListController *)&v6 viewWillDisappear:disappear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self name:PPDeviceWasDiscoveredNotification object:0];

  v5 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v5 end];
}

- (void)viewDidAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = COSSettingsListController;
  [(COSPreferencesListController *)&v5 viewDidAppear:appear];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"discoveredAdvertisingWatch:" name:PPDeviceWasDiscoveredNotification object:0];

  [(COSSettingsListController *)self _prepareDiscoveryIfNeeded];
}

- (void)willEnterForeground:(id)foreground
{
  v4 = +[UIApplication sharedApplication];
  if ([v4 isInSetupFlow])
  {
  }

  else
  {
    navigationController = [(COSSettingsListController *)self navigationController];
    topViewController = [navigationController topViewController];

    if (topViewController == self)
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
  isInSetupFlow = [v8 isInSetupFlow];

  if ((isInSetupFlow & 1) == 0)
  {
    [(COSSettingsListController *)self _kickOffWatchKitAppReload];
    v10 = UIApp;

    [v10 performDeviceSpecificRepairStepsForActiveDevice];
  }
}

- (void)didEnterBackground:(id)background
{
  if ([(COSSettingsListController *)self hasRowsPendingInstallation])
  {

    [(COSSettingsListController *)self setShouldRefreshRowsOnForegroundEvent:1];
  }
}

- (void)presentSkippedPanes:(id)panes
{
  panesCopy = panes;
  if (*(&self->_fuPrefsController + 6))
  {
    v5 = pbb_bridge_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Already presenting mini-flow. skipping", buf, 2u);
    }

    table = [(COSSettingsListController *)self table];
    table2 = [(COSSettingsListController *)self table];
    indexPathForSelectedRow = [table2 indexPathForSelectedRow];
    [table deselectRowAtIndexPath:indexPathForSelectedRow animated:1];
  }

  else
  {
    v9 = +[BPSFollowUpController skippedSetupPaneClassesForCurrentDevice];
    table = v9;
    if (v9 && [v9 count])
    {
      v10 = +[COSSetupController loadBundleControllerClasses];
      v11 = [[COSSkippedMiniFlowController alloc] initWithSkippedControllerClassNames:table];
      v12 = *(&self->_fuPrefsController + 6);
      *(&self->_fuPrefsController + 6) = v11;

      [*(&self->_fuPrefsController + 6) setFlowDelegate:self];
      currentController = [*(&self->_fuPrefsController + 6) currentController];

      if (currentController)
      {
        objc_initWeak(buf, self);
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100072ECC;
        v32[3] = &unk_100269BF0;
        objc_copyWeak(&v33, buf);
        v14 = objc_retainBlock(v32);
        activeWatch = [UIApp activeWatch];
        v16 = [activeWatch valueForProperty:NRDevicePropertyIsAltAccount];
        bOOLValue = [v16 BOOLValue];

        if (bOOLValue)
        {
          v18 = +[BPSTinkerSupport sharedInstance];
          cachedTinkerFamilyMemeber = [v18 cachedTinkerFamilyMemeber];

          if (cachedTinkerFamilyMemeber)
          {
            (v14[2])(v14, cachedTinkerFamilyMemeber, 0);
          }

          else
          {
            [(COSSettingsListController *)self _startSpinnerInSpecifier:panesCopy];
            v23 = +[BPSTinkerSupport sharedInstance];
            v25 = _NSConcreteStackBlock;
            v26 = 3221225472;
            v27 = sub_100073028;
            v28 = &unk_100269C40;
            objc_copyWeak(&v31, buf);
            v29 = panesCopy;
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

    table2 = [(COSSettingsListController *)self table:v25];
    indexPathForSelectedRow = [(COSSettingsListController *)self table];
    v8IndexPathForSelectedRow = [indexPathForSelectedRow indexPathForSelectedRow];
    [table2 deselectRowAtIndexPath:v8IndexPathForSelectedRow animated:1];
  }
}

- (void)skippedMiniFlowDidFinish:(id)finish
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

- (void)discoveredAdvertisingWatch:(id)watch
{
  watchCopy = watch;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = watchCopy;
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

- (BOOL)wantsCustomControllerForRootSpecifierID:(id)d
{
  dCopy = d;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = sub_10007A374();
  allKeys = [v4 allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        if ([*(*(&v10 + 1) + 8 * i) isEqualToString:dCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)pushCustomControllerForRootSpecifierID:(id)d
{
  dCopy = d;
  v5 = sub_10007A374();
  v6 = [v5 objectForKey:dCopy];

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
      v9 = dCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Failed to push controller for rootSpecifierID: %@!", &v8, 0xCu);
    }
  }
}

- (id)customControllerForRootSpecifierID:(id)d
{
  dCopy = d;
  v5 = sub_10007A374();
  v6 = [v5 objectForKey:dCopy];

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
      v11 = dCopy;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to to get controller for rootSpecifierID: %@!", &v10, 0xCu);
    }

    v7 = 0;
  }

  return v7;
}

- (id)customControllerForBundlePath:(id)path
{
  pathCopy = path;
  v4 = [NSBundle bundleWithPath:pathCopy];
  v5 = pbb_bridge_log();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = pathCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found Bundle: %@!", &v11, 0xCu);
    }

    v7 = objc_alloc_init([v4 principalClass]);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      viewControllers = [v7 viewControllers];
      firstObject = [viewControllers firstObject];
    }

    else
    {
      firstObject = v7;
    }
  }

  else
  {
    if (v6)
    {
      v11 = 138412290;
      v12 = pathCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Did Not Find %@", &v11, 0xCu);
    }

    firstObject = objc_alloc_init(PSViewController);
  }

  return firstObject;
}

- (void)_pushCustomControllerForPath:(id)path andTitle:(id)title
{
  title = [(COSSettingsListController *)self customControllerForBundlePath:path, title];
  splitViewController = [(COSSettingsListController *)self splitViewController];
  [splitViewController showInitialViewController:title];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(COSSettingsListController *)self specifierAtIndex:[(COSSettingsListController *)self indexForIndexPath:pathCopy]];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"CELLULAR_ID"];
  if ((v10 & 1) == 0)
  {
    [(COSSettingsListController *)self stopSpinner];
    self->_navigateWhenReceivingCellularPlanResult = 0;
  }

  if ([(COSSettingsListController *)self wantsCustomControllerForRootSpecifierID:identifier])
  {
    [(COSSettingsListController *)self pushCustomControllerForRootSpecifierID:identifier];
  }

  else if ([identifier isEqual:@"FAMILY_WATCHES_ID"])
  {
    [(COSSettingsListController *)self _showDevicePicker:v8];
    [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
  }

  else if (v10)
  {
    sharedInstance = [sub_10000DF9C() sharedInstance];
    cellularPlanIsSetUp = [sharedInstance cellularPlanIsSetUp];

    if (cellularPlanIsSetUp)
    {
      [(COSPreferencesListController *)&v17 tableView:viewCopy didSelectRowAtIndexPath:pathCopy, v16.receiver, v16.super_class, self, COSSettingsListController];
    }

    else
    {
      self->_navigateWhenReceivingCellularPlanResult = 1;
      [viewCopy deselectRowAtIndexPath:pathCopy animated:1];
      v13 = [(COSSettingsListController *)self indexForIndexPath:pathCopy];
      v14 = [*&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__specifiers] objectAtIndex:v13];
      [(COSSettingsListController *)self startSpinnerInCellForSpecifier:v14];
      sharedInstance2 = [sub_10000DF9C() sharedInstance];
      [sharedInstance2 updateCellularPlansWithFetch:0];
    }
  }

  else
  {
    [(COSPreferencesListController *)&v16 tableView:viewCopy didSelectRowAtIndexPath:pathCopy, self, COSSettingsListController, v17.receiver, v17.super_class];
  }
}

- (void)ctCellularPlanInfoDidChange:(id)change
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100073B14;
  block[3] = &unk_1002682F0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)startSpinnerInCellForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  [(COSSettingsListController *)self stopSpinner];
  v7 = [(NSMutableArray *)specifierCopy propertyForKey:PSTableCellKey];
  if (v7)
  {
    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 startAnimating];
    [v7 setForceHideDisclosureIndicator:1];
    [v7 setAccessoryView:v5];
  }

  v6 = *(&self->_stashedWatchKitAppsState + 6);
  *(&self->_stashedWatchKitAppsState + 6) = specifierCopy;
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
  displayDevice = [UIApp displayDevice];
  if (displayDevice)
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

- (void)decorateSpecifierWithWKDetails:(id)details byIdentifier:(id)identifier andApplication:(id)application
{
  detailsCopy = details;
  identifierCopy = identifier;
  applicationCopy = application;
  v10 = sub_1000742DC(applicationCopy);
  companionAppBundleID = [applicationCopy companionAppBundleID];
  bundleIdentifier = [applicationCopy bundleIdentifier];
  v13 = *(&self->_searchCategoriesWithoutIcons + 6);
  bundleIdentifier2 = [applicationCopy bundleIdentifier];
  v22 = [v13 objectForKey:bundleIdentifier2];

  v21 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [applicationCopy applicationMode]);
  v24 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [applicationCopy isBetaApp]);
  watchKitVersion = [applicationCopy watchKitVersion];
  teamID = [applicationCopy teamID];
  isLocallyAvailable = [applicationCopy isLocallyAvailable];
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
  [v19 setSectionID:bundleIdentifier];
  [detailsCopy setName:v10];
  [detailsCopy setProperty:@"Root" forKey:PSPlistNameKey];
  [detailsCopy setProperty:companionAppBundleID forKey:PSIDKey];
  [detailsCopy setProperty:companionAppBundleID forKey:PSAppSettingsBundleIDKey];
  [detailsCopy setProperty:identifierCopy forKey:PSLazyIconAppID];
  [detailsCopy setProperty:identifierCopy forKey:@"COSSockPuppetAppBundleIDKey"];
  [detailsCopy setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
  [detailsCopy setProperty:v19 forKey:BPSNotificationAppBBSectionInfo];
  [detailsCopy setProperty:v22 forKey:@"COSSockPuppetInstallationState"];
  [detailsCopy setProperty:v21 forKey:@"applicationMode"];
  v20 = [NSNumber numberWithBool:isLocallyAvailable];
  [detailsCopy setProperty:v20 forKey:@"locallyAvailable"];

  [detailsCopy setProperty:v24 forKey:@"COSApplicationIsBeta"];
  [detailsCopy setProperty:objc_opt_class() forKey:PSCellClassKey];
  [detailsCopy setProperty:watchKitVersion forKey:@"COSSockPuppetWatchKitVersionKey"];
  [detailsCopy setProperty:teamID forKey:@"COSSockPuppetAppTeamIDKey"];
}

- (id)specifiersForWKApps:(id)apps
{
  appsCopy = apps;
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
  [appsCopy enumerateKeysAndObjectsUsingBlock:v23];
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

- (int64_t)_groupIndexForGroup:(id)group
{
  v4 = 0x7FFFFFFFFFFFFFFFLL;
  [(COSSettingsListController *)self getGroup:&v4 row:0 ofSpecifier:group];
  return v4;
}

- (void)refreshAppleAppGroupFooterState:(BOOL)state
{
  v8 = [(COSSettingsListController *)self specifierForID:@"APPLE_APP_GROUP_ID"];
  v4 = [(COSSettingsListController *)self _groupIndexForGroup:?];
  if (v4 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = v4;
    table = [(COSSettingsListController *)self table];
    v7 = [NSIndexSet indexSetWithIndex:v5];
    [table _reloadSectionHeaderFooters:v7 withRowAnimation:100];
  }
}

- (id)filterSockPuppetApps:(id)apps
{
  appsCopy = apps;
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
  [appsCopy enumerateKeysAndObjectsUsingBlock:v20];
  if ([(COSSettingsListController *)self watchKitOneAppsEOL])
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    allKeys = [0 allKeys];
    v8 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
    if (v8)
    {
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(allKeys);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v6 objectForKey:v11];

          if (v12)
          {
            [v6 removeObjectForKey:v11];
          }
        }

        v8 = [allKeys countByEnumeratingWithState:&v16 objects:v24 count:16];
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

- (id)filterForWatchInstalledApps:(id)apps
{
  appsCopy = apps;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000753D8;
  v9[3] = &unk_100269CB8;
  v9[4] = self;
  v5 = objc_opt_new();
  v10 = v5;
  [appsCopy enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v10;
  v7 = v5;

  return v5;
}

- (void)_kickOffWatchKitAppReload
{
  v3 = +[UIApplication sharedApplication];
  isInSetupFlow = [v3 isInSetupFlow];

  if (isInSetupFlow)
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
      _forceComplexTopLevel = [v9 _forceComplexTopLevel];

      if (_forceComplexTopLevel)
      {
        _pptApps = [(COSSettingsListController *)self _pptApps];
        (*(v5 + 16))(v5, _pptApps, 0, 0);
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
            pairingID = [v12 pairingID];
            *buf = 138543362;
            v20 = pairingID;
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

- (void)insertAndDeleteSpecifiersForChanges:(id)changes
{
  changesCopy = changes;
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = NSKeyedUnarchiver_ptr;
  *&v9 = 138412290;
  v49 = v9;
  v50 = changesCopy;
LABEL_2:
  v51 = v7;
  while (v7 < [changesCopy count] || v7 < objc_msgSend(*(&self->_sockPuppetAppMapping + 6), "count"))
  {

    if (v7 >= [changesCopy count])
    {
      v6 = 0;
    }

    else
    {
      v6 = [changesCopy objectAtIndex:v7];
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
      v36 = [changesCopy subarrayWithRange:{v7, objc_msgSend(changesCopy, "count") - v7}];
      v37 = [v35 arrayWithArray:v36];

      lastObject = [*(&self->_sockPuppetAppMapping + 6) lastObject];
      identifier = [lastObject identifier];
      v40 = [(COSSettingsListController *)self indexOfSpecifierID:identifier];

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
      lastObject = v44;
      v45 = [lastObject countByEnumeratingWithState:&v52 objects:v63 count:16];
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
              objc_enumerationMutation(lastObject);
            }

            [(COSSettingsListController *)self _removeSpecifierFromTableAndStash:*(*(&v52 + 1) + 8 * i) animated:1];
          }

          v46 = [lastObject countByEnumeratingWithState:&v52 objects:v63 count:16];
        }

        while (v46);
      }

      v37 = lastObject;
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
      identifier2 = [v6 identifier];
      identifier3 = [v5 identifier];
      *buf = 138412546;
      v60 = identifier2;
      v61 = 2112;
      v62 = identifier3;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "New specifier: %@ and old one: %@ differ, adjusting list", buf, 0x16u);
    }

    name = [v6 name];
    name2 = [v5 name];
    v15 = [name isEqualToString:name2];

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

      identifier4 = [v6 identifier];
      v19 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Available_Apps_Section_Title"];
      v20 = [identifier4 isEqualToString:v19];

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
        identifier5 = [v5 identifier];
        v24 = [(COSSettingsListController *)self localizedPrefsStringForString:@"Available_Apps_Section_Title"];
        v25 = [identifier5 isEqualToString:v24];

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

      changesCopy = v50;
      v7 = v51;
      firstObject = [v17 firstObject];
      v29 = [firstObject isEqual:v6];

      if (v29)
      {
        identifier6 = [v5 identifier];
        v31 = [(COSSettingsListController *)self indexOfSpecifierID:identifier6];

        [(COSSettingsListController *)self _insertSpecifierIntoTableAndStash:v6 atIndex:v31 stashIndex:v51 animated:1];
        v32 = pbb_bridge_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          identifier7 = [v6 identifier];
          *buf = 138412546;
          v60 = identifier7;
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

- (void)_removeSpecifier:(id)specifier andInsertSpecifier:(id)insertSpecifier animated:(BOOL)animated
{
  animatedCopy = animated;
  insertSpecifierCopy = insertSpecifier;
  specifierCopy = specifier;
  identifier = [specifierCopy identifier];
  v10 = [(COSSettingsListController *)self indexOfSpecifierID:identifier];

  v11 = [*(&self->_sockPuppetAppMapping + 6) indexOfObject:specifierCopy];
  [(COSSettingsListController *)self _removeSpecifierFromTableAndStash:specifierCopy animated:animatedCopy];

  [(COSSettingsListController *)self _insertSpecifierIntoTableAndStash:insertSpecifierCopy atIndex:v10 stashIndex:v11 animated:animatedCopy];
}

- (void)_removeSpecifierFromTableAndStash:(id)stash animated:(BOOL)animated
{
  animatedCopy = animated;
  stashCopy = stash;
  identifier = [stashCopy identifier];
  [(COSSettingsListController *)self removeSpecifierID:identifier animated:animatedCopy];

  [*(&self->_sockPuppetAppMapping + 6) removeObject:stashCopy];
}

- (void)_insertSpecifierIntoTableAndStash:(id)stash atIndex:(unint64_t)index stashIndex:(unint64_t)stashIndex animated:(BOOL)animated
{
  animatedCopy = animated;
  v10 = *(&self->_sockPuppetAppMapping + 6);
  stashCopy = stash;
  [v10 insertObject:stashCopy atIndex:stashIndex];
  [(COSSettingsListController *)self insertSpecifier:stashCopy atIndex:index animated:animatedCopy];
}

- (void)gatherAllWatchAppsWithCompletion:(id)completion
{
  completionCopy = completion;
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
  selfCopy = self;
  v16 = completionCopy;
  v9 = completionCopy;
  v10 = v7;
  v11 = v5;
  [v8 enumerateInstalledApplicationsOnPairedDevice:v6 withBlock:v12];
}

- (void)groupLocallyAvailableAppsWithWatchOnlyApps:(id)apps withStates:(id)states withCompletion:(id)completion
{
  appsCopy = apps;
  statesCopy = states;
  completionCopy = completion;
  v10 = sub_10000DB38();
  v11 = +[ACXDeviceConnection sharedDeviceConnection];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100076D20;
  v15[3] = &unk_100269D80;
  v16 = appsCopy;
  v17 = statesCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = statesCopy;
  v14 = appsCopy;
  [v11 enumerateLocallyAvailableApplicationsForPairedDevice:v10 options:1 withBlock:v15];
}

- (id)freezeDryAppStates:(id)states
{
  statesCopy = states;
  v4 = +[NSMutableArray array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = statesCopy;
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

        identifier = [v10 identifier];
        [v11 setIdentifier:identifier];

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

- (void)appInstallErrorReceived:(id)received
{
  userInfo = [received userInfo];
  v5 = [userInfo objectForKey:@"COSAppInstallErrorKey"];

  if (v5)
  {
    domain = [v5 domain];
    v7 = [domain isEqualToString:@"ACXUserPresentableErrorDomain"];

    if (v7)
    {
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100077308;
      v9[3] = &unk_100268358;
      v10 = v5;
      selfCopy = self;
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

- (void)reloadWatchKitApps:(id)apps
{
  appsCopy = apps;
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    name = [appsCopy name];
    v7 = 138412290;
    v8 = name;
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
    wkAppSpinnerGroup = v4;
  }

  else
  {
    wkAppSpinnerGroup = [(COSSettingsListController *)self wkAppSpinnerGroup];
  }

  v6 = wkAppSpinnerGroup;
  [v3 addObjectsFromArray:wkAppSpinnerGroup];

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
      specifiers = [(COSSettingsListController *)self specifiers];
      -[COSSettingsListController insertContiguousSpecifiers:atIndex:](self, "insertContiguousSpecifiers:atIndex:", v9, [specifiers count]);
    }
  }
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  if (section)
  {
    v15.receiver = self;
    v15.super_class = COSSettingsListController;
    v7 = [(COSSettingsListController *)&v15 tableView:viewCopy viewForHeaderInSection:section];
  }

  else
  {
    activeWatchOrFakeWatch = [(COSSettingsListController *)self activeWatchOrFakeWatch];
    v9 = [activeWatchOrFakeWatch valueForProperty:NRDevicePropertyIsAltAccount];
    bOOLValue = [v9 BOOLValue];

    HasCapabilityForString = BPSDeviceHasCapabilityForString();
    v12 = sub_100008BAC();
    v7 = 0;
    if (*(&self->_isEnrolledAndSupervised + 6) && (v12 & 1) == 0 && (bOOLValue & 1) == 0 && HasCapabilityForString)
    {
      v7 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:@"COSGalleryHeaderIdentifier"];
      view = [*(&self->_isEnrolledAndSupervised + 6) view];
      [v7 setGalleryView:view];
    }
  }

  return v7;
}

- (void)facesViewControllerDidUpdateContent:(id)content
{
  v3 = *&self->super.super.BPSListController_opaque[OBJC_IVAR___PSListController__table];
  v4 = [NSIndexSet indexSetWithIndex:0];
  [v3 _reloadSectionHeaderFooters:v4 withRowAnimation:5];
}

- (void)reloadApplicationForGreenfieldInstall:(id)install
{
  installCopy = install;
  userInfo = [installCopy userInfo];
  v6 = [userInfo objectForKey:NTKGreenfieldApplicationInstallBeganNotificationAppKey];

  userInfo2 = [installCopy userInfo];

  v8 = [userInfo2 objectForKey:NTKGreenfieldApplicationInstallBeganNotificationInstallStateKey];
  integerValue = [v8 integerValue];

  v10 = [(COSSettingsListController *)self specifierForID:v6];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 propertyForKey:@"COSSockPuppetInstallationState"];
    integerValue2 = [v12 integerValue];

    if (integerValue != integerValue2)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100077B5C;
      block[3] = &unk_100269DA8;
      selfCopy = self;
      v17 = integerValue;
      v15 = v11;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)deviceBecameInActive:(id)active
{
  safeToPopToSettingsRootController = [UIApp safeToPopToSettingsRootController];
  v5 = pbb_bridge_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    navigationController = [(COSSettingsListController *)self navigationController];
    topViewController = [navigationController topViewController];
    v15 = 136446722;
    v16 = "[COSSettingsListController deviceBecameInActive:]";
    v17 = 1024;
    v18 = safeToPopToSettingsRootController;
    v19 = 2112;
    v20 = topViewController;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}s: safeToPopToSettingsRootController: %{BOOL}d, topViewController: %@", &v15, 0x1Cu);
  }

  navigationController2 = [(COSSettingsListController *)self navigationController];
  topViewController2 = [navigationController2 topViewController];
  v10 = (topViewController2 != self) & safeToPopToSettingsRootController;

  if (v10 == 1)
  {
    navigationController3 = [(COSSettingsListController *)self navigationController];
    v12 = [navigationController3 popToRootViewControllerAnimated:1];

    v13 = sub_100009AB4();
    v14 = [v13 count];

    if (v14)
    {
      [(COSSettingsListController *)self _showDevicePicker:0];
    }
  }
}

- (void)deviceBecameActive:(id)active
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

- (void)deviceBecamePaired:(id)paired
{
  v3 = pbb_bridge_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 136446210;
    v5 = "[COSSettingsListController deviceBecamePaired:]";
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}s", &v4, 0xCu);
  }
}

- (void)deviceIsSetup:(id)setup
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

- (void)compatibilityStateChanged:(id)changed
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

- (void)scrollViewWillBeginDragging:(id)dragging
{
  v3 = +[PPDiscoveryManager sharedDiscoveryManager];
  [v3 end];
}

- (void)removeContiguousSpecifiersFromIndexing:(id)indexing
{
  indexingCopy = indexing;
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
  v9 = indexingCopy;
  v7 = indexingCopy;
  objc_copyWeak(&v10, buf);
  dispatch_async(v6, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (void)insertContiguousSpecifiersForIndexing:(id)indexing
{
  indexingCopy = indexing;
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
  v9 = indexingCopy;
  v7 = indexingCopy;
  objc_copyWeak(&v10, buf);
  dispatch_async(v6, v8);
  objc_destroyWeak(&v10);

  objc_destroyWeak(buf);
}

- (void)searchResultsCollectionViewController:(id)controller didSelectURL:(id)l
{
  lCopy = l;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    absoluteString = [lCopy absoluteString];
    *buf = 138412290;
    v12 = absoluteString;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[url absoluteString] -> %@", buf, 0xCu);
  }

  if ([(COSSettingsListController *)self displaySearchTab])
  {
    BPSOpenSensitiveURLAsync();
  }

  else
  {
    [UIApp processURL:lCopy animated:1 fromSearch:1];
    absoluteString2 = [lCopy absoluteString];
    v9 = [absoluteString2 hasPrefix:@"bridge:root=(null)"];

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

- (int64_t)searchResultsCollectionViewController:(id)controller sortCategory1:(id)category1 sortCategory2:(id)category2
{
  category2Copy = category2;
  v8 = [NSNumber numberWithInteger:[(COSSettingsListController *)self indexOfSpecifierID:category1]];
  v9 = [(COSSettingsListController *)self indexOfSpecifierID:category2Copy];

  v10 = [NSNumber numberWithInteger:v9];
  v11 = [v8 compare:v10];

  return v11;
}

- (id)appIconForSpecifierIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (identifierCopy && (-[COSSettingsListController searchCategoriesWithoutIcons](self, "searchCategoriesWithoutIcons"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 containsObject:identifierCopy], v5, (v6 & 1) == 0))
  {
    v8 = [(COSSettingsListController *)self specifierForID:identifierCopy];
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
              traitCollection = [v29 traitCollection];
              [traitCollection displayScale];
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
                  v51 = identifierCopy;
                  v52 = 2112;
                  v53 = v9;
                  _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Timed out looking for category %@ search icon for %@, never looking again...", buf, 0x16u);
                }

                searchCategoriesWithoutIcons = [(COSSettingsListController *)self searchCategoriesWithoutIcons];
                [searchCategoriesWithoutIcons addObject:identifierCopy];
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

- (void)searchBarTextDidEndEditing:(id)editing
{
  if (([(COSSettingsListController *)self isFirstResponder]& 1) == 0)
  {

    [(COSSettingsListController *)self becomeFirstResponder];
  }
}

- (BOOL)searchBarShouldEndEditing:(id)editing
{
  spotlightResultsController = [(COSSettingsListController *)self spotlightResultsController];
  collectionView = [spotlightResultsController collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];
  firstObject = [indexPathsForSelectedItems firstObject];

  if (firstObject)
  {
    spotlightResultsController2 = [(COSSettingsListController *)self spotlightResultsController];
    [spotlightResultsController2 showSelectedSearchResult];
  }

  return firstObject == 0;
}

- (void)searchBar:(id)bar textDidChange:(id)change
{
  barCopy = bar;
  v6 = pbb_bridge_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[COSSettingsListController searchBar:textDidChange:]";
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s", &v10, 0xCu);
  }

  if (![(COSSettingsListController *)self displaySearchTab]&& _os_feature_enabled_impl())
  {
    text = [barCopy text];
    v8 = [text length];

    v9 = &OBJC_IVAR___COSSettingsListController__spotlightResultsController;
    if (!v8)
    {
      v9 = &OBJC_IVAR___COSSettingsListController__searchSuggestionsViewController;
    }

    [*(&self->_skippedMiniFlowController + 6) presentController:*&self->super.super.BPSListController_opaque[*v9]];
  }
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
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
  v8 = controllerCopy;
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

- (void)updateInstallProgressForApplication:(id)application progress:(double)progress installPhase:(int64_t)phase
{
  if ((phase - 1) <= 1)
  {
    v6 = progress * 0.54;
    v7 = progress * 0.46 + 54.0;
    if (phase == 1)
    {
      v8 = v6;
    }

    else
    {
      v8 = v7;
    }

    applicationCopy = application;
    v10 = +[NSNotificationCenter defaultCenter];
    v15[0] = applicationCopy;
    v14[0] = @"appid";
    v14[1] = @"progress";
    v11 = [NSNumber numberWithDouble:v8];
    v15[1] = v11;
    v14[2] = @"phase";
    v12 = [NSNumber numberWithInteger:phase];
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

- (void)presentSearchController:(id)controller
{
  controllerCopy = controller;
  if (![(COSSettingsListController *)self displaySearchTab])
  {
    if (_os_feature_enabled_impl())
    {
      [controllerCopy setShowsSearchResultsController:1];
      searchBar = [controllerCopy searchBar];
      text = [searchBar text];
      v6 = [text length];

      if (!v6)
      {
        [*(&self->_skippedMiniFlowController + 6) presentController:*(&self->_spotlightSearchController + 6)];
      }
    }
  }
}

@end