@interface BKSettingsController
+ (id)_audioBookSkipSettingsDurationNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6;
+ (id)acknowledgementsSectionSpecifier;
+ (id)specifierForSkipBackwardWithTarget:(id)a3;
+ (id)specifierForSkipForwardWithTarget:(id)a3;
- (BKSettingsController)init;
- (BOOL)_currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled;
- (BOOL)_isGlobalICloudDriveEnabled;
- (BOOL)_isLiverpoolTCCEnabled;
- (BOOL)_isSignedInToICloud;
- (BOOL)_isSignedInToITunes;
- (BOOL)_isSyncSectionEnabled;
- (BOOL)_isSyncSectionForCloudKitEnabled;
- (BOOL)_isSyncSectionForICloudDriveEnabled;
- (BOOL)_isUbiquityTCCEnabled;
- (BOOL)_shouldShowCellularDataSwitch;
- (id)_allowAutomaticDownloadsForPurchasesFromOtherDevices:(id)a3;
- (id)_cellularAllowAutomaticDownloads:(id)a3;
- (id)_cellularDataSettingForSpecifier:(id)a3;
- (id)_cellularSettings;
- (id)_customSwitchSpecifierNamed:(id)a3 keyName:(id)a4 defaultValue:(id)a5 get:(SEL)a6 set:(SEL)a7 inAppGroup:(BOOL)a8;
- (id)_formattedNetworkLimitAndReloadIfNeeded;
- (id)_getICloudDriveEnabled:(id)a3;
- (id)_pageTurnStyleOptionNamed:(id)a3 keyName:(id)a4 defaultValue:(id)a5;
- (id)_specifierWithTitle:(id)a3 customCell:(id)a4 set:(SEL)a5 get:(SEL)a6;
- (id)readSyncSectionForCloudKitPreferenceValue:(id)a3;
- (id)readSyncSectionForICloudDrivePreferenceValue:(id)a3;
- (id)specifiers;
- (int64_t)_isServiceEnabled:(__CFString *)a3;
- (void)_addAcknowledgementsSectionSpecifiersToArray:(id)a3;
- (void)_addAudiobooksExternalControlsSpecifiersToArray:(id)a3;
- (void)_addAudiobooksSectionSpecifiersToArray:(id)a3;
- (void)_addAutomaticDownloadsSectionSpecifiersToArray:(id)a3;
- (void)_addCellularSectionSpecifiersToArray:(id)a3;
- (void)_addClearReadingGoalsDataSpecifiersToArray:(id)a3;
- (void)_addPrivacySection:(id)a3;
- (void)_addReadingGoalsSectionSpecifiersToArray:(id)a3;
- (void)_addReadingInIBooksSectionSpecifiersToArray:(id)a3;
- (void)_addReadingMenuSectionSpecifiersToArray:(id)a3;
- (void)_addSearchingSection:(id)a3;
- (void)_addSyncingSectionSpecifiersToArray:(id)a3;
- (void)_clearReadingGoalsData:(id)a3;
- (void)_donateSettingsNavigationEvent;
- (void)_iCloudAccountAvailabilityChangedNotification:(id)a3;
- (void)_loadNetworkLimitAndReloadIfNeeded;
- (void)_lowPowerModeChangedNotification:(id)a3;
- (void)_networkChangedNotification:(id)a3;
- (void)_reloadAutomaticDownloadsSection;
- (void)_reloadCellularDataSection;
- (void)_reloadForLowPowerModeChange;
- (void)_resetAllowedOnlineContent:(id)a3;
- (void)_resetAnalyticsUserID:(id)a3;
- (void)_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:(id)a3 specifier:(id)a4;
- (void)_setCellularAllowAutomaticDownloads:(id)a3 specifier:(id)a4;
- (void)_setICloudDriveEnabled:(id)a3 specifier:(id)a4;
- (void)_setIsAppGroupSpecifier:(id)a3;
- (void)_setReadingNowEnabled:(id)a3 specifier:(id)a4;
- (void)_setService:(__CFString *)a3 enabled:(BOOL)a4;
- (void)_toggleReadingGoals:(id)a3 specifier:(id)a4;
- (void)_updateAutomaticDownloadsSection;
- (void)_updateCellularDataGroupSpecifierFooterText:(id)a3;
- (void)_updateSyncingSectionSpecifiers;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)dealloc;
- (void)selectExternalControlPreference:(id)a3;
- (void)showPrivacyExplanationSheet:(id)a3;
- (void)viewDidLoad;
@end

@implementation BKSettingsController

- (BKSettingsController)init
{
  v32.receiver = self;
  v32.super_class = BKSettingsController;
  v2 = [(BKSettingsController *)&v32 init];
  if (v2)
  {
    v3 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.iBooks"];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v3;

    v5 = +[BUAccountsProvider sharedProvider];
    [v5 addObserver:v2 accountTypes:1];

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"_iCloudAccountAvailabilityChangedNotification:" name:NSUbiquityIdentityDidChangeNotification object:0];

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"_networkChangedNotification:" name:BUNetworkMonitorInterfaceDidChangeNotification object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_lowPowerModeChangedNotification:" name:NSProcessInfoPowerStateDidChangeNotification object:0];

    v9 = [BUNetworkMonitor alloc];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("BKSettingsController.networkMonitorQueue", v10);
    v12 = [v9 initWithQueue:v11];
    networkMonitor = v2->_networkMonitor;
    v2->_networkMonitor = v12;

    v2->_isNetworkConnected = 0;
    [(BUNetworkMonitor *)v2->_networkMonitor start];
    v14 = +[NSProcessInfo processInfo];
    v2->_isLowPowerMode = [v14 isLowPowerModeEnabled];

    v15 = [[CHSTimelineController alloc] initWithExtensionBundleIdentifier:@"com.apple.iBooks.BooksWidget" kind:@"BooksWidget"];
    timelineController = v2->_timelineController;
    v2->_timelineController = v15;

    v17 = +[BUAppGroup books];
    v18 = [v17 userDefaults];
    v19 = [v18 objectForKey:@"BKReadingGoalsUserDefaultsKey"];

    if (!v19)
    {
      v20 = +[NSUserDefaults standardUserDefaults];
      v21 = [v20 objectForKey:@"BKReadingGoalsUserDefaultsKey"];

      v22 = +[BUAppGroup books];
      v23 = [v22 userDefaults];
      [v23 setObject:v21 forKey:@"BKReadingGoalsUserDefaultsKey"];

      v24 = +[NSUserDefaults standardUserDefaults];
      [v24 removeObjectForKey:@"BKReadingGoalsUserDefaultsKey"];
    }

    v25 = [(BKSettingsController *)v2 _standardSwitchSpecifierNamed:@"New Specifier" keyName:@"BKIncludeBookStoreResultsInSearch" defaultValue:0];
    v31.receiver = v2;
    v31.super_class = BKSettingsController;
    v26 = [(BKSettingsController *)&v31 readPreferenceValue:v25];
    if (!v26 || (objc_opt_respondsToSelector() & 1) == 0)
    {
      v27 = [(BKSettingsController *)v2 _standardSwitchSpecifierNamed:@"Old Specifier" keyName:@"BKExcludeBookStoreResultsInSearch" defaultValue:0];
      v28 = [(BKSettingsController *)v2 readPreferenceValue:v27];
      if (objc_opt_respondsToSelector())
      {
        v29 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v28 BOOLValue] ^ 1);
      }

      else
      {
        v29 = &__kCFBooleanTrue;
      }

      [(BKSettingsController *)v2 setPreferenceValue:v29 specifier:v25];
      [(BKSettingsController *)v2 setPreferenceValue:0 specifier:v27];
    }
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BUAccountsProvider sharedProvider];
  [v4 removeObserver:self accountTypes:1];

  v5.receiver = self;
  v5.super_class = BKSettingsController;
  [(BKSettingsController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = BKSettingsController;
  [(BKSettingsController *)&v5 viewDidLoad];
  v3 = BKSettingsBundle();
  v4 = [v3 localizedStringForKey:@"Books" value:&stru_14E68 table:@"Settings"];
  [(BKSettingsController *)self setTitle:v4];
}

- (void)_reloadForLowPowerModeChange
{
  v3 = +[NSProcessInfo processInfo];
  self->_isLowPowerMode = [v3 isLowPowerModeEnabled];

  [(BKSettingsController *)self _reloadAutomaticDownloadsSection];
}

- (void)_reloadAutomaticDownloadsSection
{
  [(BKSettingsController *)self _updateAutomaticDownloadsSection];
  if (self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier)
  {

    [(BKSettingsController *)self reloadSpecifier:?];
  }
}

- (void)_reloadCellularDataSection
{
  if (self->_cellularDataGroupSpecifier)
  {
    [(BKSettingsController *)self _updateCellularDataGroupSpecifierFooterText:?];
    [(BKSettingsController *)self reloadSpecifier:self->_cellularDataGroupSpecifier];
  }

  if (self->_cellularDownloadsSpecifier)
  {

    [(BKSettingsController *)self reloadSpecifier:?];
  }
}

- (void)_networkChangedNotification:(id)a3
{
  v4 = [(BUNetworkMonitor *)self->_networkMonitor isConnected];
  v5 = v4;
  if (v4 && !self->_isNetworkConnected)
  {
    [(BKSettingsController *)self _loadSizeLimitsIfNeeded];
  }

  self->_isNetworkConnected = v5;
}

- (void)_lowPowerModeChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_55C8;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_customSwitchSpecifierNamed:(id)a3 keyName:(id)a4 defaultValue:(id)a5 get:(SEL)a6 set:(SEL)a7 inAppGroup:(BOOL)a8
{
  v8 = a8;
  v14 = a5;
  v15 = a4;
  v16 = [PSSpecifier preferenceSpecifierNamed:a3 target:self set:a7 get:a6 detail:0 cell:6 edit:0];
  [v16 setObject:v15 forKeyedSubscript:PSKeyNameKey];

  [v16 setObject:v14 forKeyedSubscript:PSDefaultValueKey];
  [v16 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  [v16 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  if (v8)
  {
    [(BKSettingsController *)self _setIsAppGroupSpecifier:v16];
  }

  return v16;
}

- (void)_setIsAppGroupSpecifier:(id)a3
{
  v3 = a3;
  v4 = +[BUAppGroup books];
  v5 = [v4 identifier];
  [v3 setObject:v5 forKeyedSubscript:PSAppGroupBundleIDKey];

  v7 = +[BUAppGroup books];
  v6 = [v7 identifier];
  [v3 setObject:v6 forKeyedSubscript:PSContainerBundleIDKey];
}

+ (id)_audioBookSkipSettingsDurationNamed:(id)a3 target:(id)a4 keyName:(id)a5 defaultValue:(id)a6
{
  v26 = a6;
  v25 = a5;
  v24 = a4;
  v23 = a3;
  v22 = BKSettingsBundle();
  v9 = [v22 localizedStringForKey:@"10 seconds" value:&stru_14E68 table:@"Settings"];
  v27[0] = v9;
  v10 = BKSettingsBundle();
  v11 = [v10 localizedStringForKey:@"15 seconds" value:&stru_14E68 table:@"Settings"];
  v27[1] = v11;
  v12 = BKSettingsBundle();
  v13 = [v12 localizedStringForKey:@"30 seconds" value:&stru_14E68 table:@"Settings"];
  v27[2] = v13;
  v14 = BKSettingsBundle();
  v15 = [v14 localizedStringForKey:@"45 seconds" value:&stru_14E68 table:@"Settings"];
  v27[3] = v15;
  v16 = BKSettingsBundle();
  v17 = [v16 localizedStringForKey:@"60 seconds" value:&stru_14E68 table:@"Settings"];
  v27[4] = v17;
  v18 = [NSArray arrayWithObjects:v27 count:5];

  LOBYTE(v21) = 1;
  v19 = [BKSettingsUtilities linkListPreferenceSpecifierNamed:v23 target:v24 keyName:v25 defaultValue:v26 titles:v18 values:&off_15F30 syncToWatch:v21];

  return v19;
}

- (id)_pageTurnStyleOptionNamed:(id)a3 keyName:(id)a4 defaultValue:(id)a5
{
  v21 = a5;
  v20 = a4;
  v7 = a3;
  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Slide" value:&stru_14E68 table:@"Settings"];
  v23[0] = v9;
  v10 = BKSettingsBundle();
  v11 = [v10 localizedStringForKey:@"Curl" value:&stru_14E68 table:@"Settings"];
  v23[1] = v11;
  v12 = BKSettingsBundle();
  v13 = [v12 localizedStringForKey:@"Fast Fade" value:&stru_14E68 table:@"Settings"];
  v23[2] = v13;
  v14 = BKSettingsBundle();
  v15 = [v14 localizedStringForKey:@"Scroll" value:&stru_14E68 table:@"Settings"];
  v23[3] = v15;
  v16 = [NSArray arrayWithObjects:v23 count:4];

  LOBYTE(v19) = 0;
  v17 = [BKSettingsUtilities linkListPreferenceSpecifierNamed:v7 target:self keyName:v20 defaultValue:v21 titles:v16 values:&off_15F48 syncToWatch:v19];

  return v17;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  if (!*&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers])
  {
    v4 = objc_opt_new();
    v5 = [(PSSystemPolicyForApp *)self->_appPolicy specifiersForPolicyOptions:-134348801 force:0];
    [v4 addObjectsFromArray:v5];
    [(BKSettingsController *)self _addAutomaticDownloadsSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addCellularSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addSyncingSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingMenuSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingInIBooksSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addReadingGoalsSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addClearReadingGoalsDataSpecifiersToArray:v4];
    [(BKSettingsController *)self _addSearchingSection:v4];
    [(BKSettingsController *)self _addAudiobooksSectionSpecifiersToArray:v4];
    [(BKSettingsController *)self _addAudiobooksExternalControlsSpecifiersToArray:v4];
    [(BKSettingsController *)self _addPrivacySection:v4];
    [(BKSettingsController *)self _addAcknowledgementsSectionSpecifiersToArray:v4];
    v6 = [v4 copy];
    v7 = *&self->PSListController_opaque[v3];
    *&self->PSListController_opaque[v3] = v6;
  }

  [(BKSettingsController *)self _updateSyncingSectionSpecifiers];
  v8 = *&self->PSListController_opaque[v3];

  return v8;
}

- (void)_addSyncingSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Syncing" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  [v7 setIdentifier:@"SYNCING"];
  syncGroupSpecifier = self->_syncGroupSpecifier;
  self->_syncGroupSpecifier = v7;
  v9 = v7;

  [v4 addObject:v9];
  v23 = [NSMutableArray arrayWithCapacity:1];
  v10 = [NSMutableArray arrayWithCapacity:1];
  v11 = BKSettingsBundle();
  v12 = [v11 localizedStringForKey:@"Home" value:&stru_14E68 table:@"Settings"];

  v13 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v12 keyName:@"BKLibrary.ReadingNow" defaultValue:&__kCFBooleanTrue get:"readSyncSectionForCloudKitPreferenceValue:" set:"_setReadingNowEnabled:specifier:"];
  syncReadingNowSpecifier = self->_syncReadingNowSpecifier;
  self->_syncReadingNowSpecifier = v13;

  [(PSSpecifier *)self->_syncReadingNowSpecifier setIdentifier:@"HOME"];
  [v23 addObject:self->_syncReadingNowSpecifier];
  v15 = BKSettingsBundle();
  v16 = [v15 localizedStringForKey:@"iCloud Drive" value:&stru_14E68 table:@"Settings"];
  v17 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v16 keyName:@"BCSyncICloudDrive" defaultValue:&__kCFBooleanTrue get:"_getICloudDriveEnabled:" set:"_setICloudDriveEnabled:specifier:"];
  syncICloudDriveSpecifier = self->_syncICloudDriveSpecifier;
  self->_syncICloudDriveSpecifier = v17;

  [v10 addObject:self->_syncICloudDriveSpecifier];
  v19 = [v23 copy];
  syncingForCloudKitSpecifiers = self->_syncingForCloudKitSpecifiers;
  self->_syncingForCloudKitSpecifiers = v19;

  v21 = [v10 copy];
  syncingForICloudDriveSpecifiers = self->_syncingForICloudDriveSpecifiers;
  self->_syncingForICloudDriveSpecifiers = v21;

  [v4 addObjectsFromArray:self->_syncingForCloudKitSpecifiers];
  [v4 addObjectsFromArray:self->_syncingForICloudDriveSpecifiers];
}

- (id)_specifierWithTitle:(id)a3 customCell:(id)a4 set:(SEL)a5 get:(SEL)a6
{
  v10 = a4;
  v11 = [PSSpecifier preferenceSpecifierNamed:a3 target:self set:a5 get:a6 detail:0 cell:4 edit:0];
  [v11 setProperty:v10 forKey:PSCellClassKey];

  return v11;
}

- (void)_addReadingMenuSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  if (!self->_readingMenuPositionSpecifier)
  {
    v5 = BKSettingsBundle();
    v6 = [v5 localizedStringForKey:@"Reading Menu Position Options" value:&stru_14E68 table:@"Settings"];
    v7 = [(BKSettingsController *)self _specifierWithTitle:v6 customCell:objc_opt_class() set:"setPreferenceValue:specifier:" get:"readPreferenceValue:"];

    [v7 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
    [v7 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
    readingMenuPositionSpecifier = self->_readingMenuPositionSpecifier;
    self->_readingMenuPositionSpecifier = v7;
  }

  v9 = BKSettingsBundle();
  v10 = [v9 localizedStringForKey:@"Reading Menu Position" value:&stru_14E68 table:@"Settings"];
  v11 = [PSSpecifier groupSpecifierWithName:v10];

  [v11 setIdentifier:@"MENU_ON_LEFT"];
  v12 = self->_readingMenuPositionSpecifier;
  v14[0] = v11;
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [v4 addObjectsFromArray:v13];
}

- (void)_addReadingInIBooksSectionSpecifiersToArray:(id)a3
{
  v37 = a3;
  v4 = BKSettingsBundle();
  v5 = [v4 localizedStringForKey:@"Reading" value:? table:?];
  v38 = [PSSpecifier groupSpecifierWithName:v5];

  v6 = BKSettingsBundle();
  v7 = [v6 localizedStringForKey:@"Auto-hyphenation" value:&stru_14E68 table:@"Settings"];
  v8 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v7 keyName:@"BKAutoHyphenation" defaultValue:&__kCFBooleanTrue];

  v9 = v8;
  v36 = v8;
  [v8 setIdentifier:@"BKAutoHyphenation"];
  v10 = BKSettingsBundle();
  v11 = [v10 localizedStringForKey:@"Both Margins Advance" value:&stru_14E68 table:@"Settings"];
  v12 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v11 keyName:@"BKLeftTapTurnToNext" defaultValue:&__kCFBooleanFalse];

  [v12 setIdentifier:@"BKLeftTapTurnToNext"];
  v13 = BKSettingsBundle();
  v14 = [v13 localizedStringForKey:@"Allow tapping either margin to advance the page value:or to move the line guide forward when enabled in the reading menu." table:{&stru_14E68, @"Settings"}];
  v15 = PSTableCellSubtitleTextKey;
  [v12 setObject:v14 forKeyedSubscript:PSTableCellSubtitleTextKey];

  v16 = BKSettingsBundle();
  v17 = [v16 localizedStringForKey:@"Automatically Invert Images" value:&stru_14E68 table:@"Settings"];
  v18 = +[BooksSettings shared];
  v19 = [v18 filterBrightImagesKey];
  v20 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v17 keyName:v19 defaultValue:&__kCFBooleanTrue];

  [v20 setIdentifier:@"IMAGE_FILTER"];
  [(BKSettingsController *)self _setIsAppGroupSpecifier:v20];
  v21 = BKSettingsBundle();
  v22 = [v21 localizedStringForKey:@"In darker themes value:adjust black and white images to improve contrast." table:{&stru_14E68, @"Settings"}];
  [v20 setObject:v22 forKeyedSubscript:v15];

  v39[0] = v38;
  v39[1] = v9;
  v39[2] = v12;
  v39[3] = v20;
  v23 = [NSArray arrayWithObjects:v39 count:4];
  [v37 addObjectsFromArray:v23];

  v24 = BKSettingsBundle();
  v25 = [v24 localizedStringForKey:@"Show Status Bar" value:&stru_14E68 table:@"Settings"];
  v26 = [(BKSettingsController *)self _subtitleSwitchSpecifierNamed:v25 keyName:@"BKReaderShowStatusBar" defaultValue:&__kCFBooleanFalse];

  v27 = +[UIDevice currentDevice];
  v28 = [v27 userInterfaceIdiom];

  v29 = BKSettingsBundle();
  v30 = v29;
  if (v28)
  {
    v31 = @"Always display current time, battery level, and other iPad status info while reading.";
  }

  else
  {
    v31 = @"Always display current time, battery level, and other iPhone status info while reading.";
  }

  v32 = [v29 localizedStringForKey:v31 value:&stru_14E68 table:@"Settings"];
  [v26 setObject:v32 forKeyedSubscript:v15];

  [v37 addObject:v26];
  v33 = BKSettingsBundle();
  v34 = [v33 localizedStringForKey:@"Page Navigation" value:&stru_14E68 table:@"Settings"];
  v35 = [(BKSettingsController *)self _pageTurnStyleOptionNamed:v34 keyName:@"BKPageTurnStyle" defaultValue:@"slide"];

  [v37 addObject:v35];
}

- (void)_addReadingGoalsSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Reading Goals" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Reading Goals" value:&stru_14E68 table:@"Settings"];
  v10 = [(BKSettingsController *)self _customSwitchSpecifierNamed:v9 keyName:@"BKReadingGoalsUserDefaultsKey" defaultValue:&__kCFBooleanTrue get:"readPreferenceValue:" set:"_toggleReadingGoals:specifier:" inAppGroup:1];

  v11 = BKSettingsBundle();
  v12 = [v11 localizedStringForKey:@"Include PDFs" value:&stru_14E68 table:@"Settings"];
  v13 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v12 keyName:@"BKReadingGoalsIncludePDFsUserDefaultsKey" defaultValue:&__kCFBooleanFalse];

  [v10 setIdentifier:@"READING_GOALS"];
  v14 = [v10 target];
  v15 = [v14 readPreferenceValue:v10];

  if ([v15 BOOLValue])
  {
    v21[0] = v7;
    v21[1] = v10;
    v21[2] = v13;
    v16 = [NSArray arrayWithObjects:v21 count:3];
    v17 = @"Show time spent reading and other achievements in Apple Books. Include time spent reading PDFs";
  }

  else
  {
    v20[0] = v7;
    v20[1] = v10;
    v16 = [NSArray arrayWithObjects:v20 count:2];
    v17 = @"Show time spent reading and other achievements in Apple Books.";
  }

  v18 = BKSettingsBundle();
  v19 = [v18 localizedStringForKey:v17 value:&stru_14E68 table:@"Settings"];

  [v7 setObject:v19 forKeyedSubscript:PSFooterTextGroupKey];
  [v4 addObjectsFromArray:v16];
}

- (void)_toggleReadingGoals:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v7 target];
  [v8 setPreferenceValue:v6 specifier:v7];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_6A90;
  v10[3] = &unk_148E8;
  v10[4] = self;
  v11 = v6;
  v9 = v6;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_addClearReadingGoalsDataSpecifiersToArray:(id)a3
{
  v4 = a3;
  v5 = [PSSpecifier groupSpecifierWithName:&stru_14E68];
  v6 = BKSettingsBundle();
  v7 = [v6 localizedStringForKey:@"Time spent reading and reading streak data will be cleared the next time you open Apple Books." value:&stru_14E68 table:@"Settings"];
  [v5 setObject:v7 forKeyedSubscript:PSFooterTextGroupKey];

  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Clear Reading Goals Data" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v12) = 0;
  v10 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v9 target:self cell:13 detail:0 keyName:@"BKReadingGoalsShouldClearDataKey" defaultValue:&__kCFBooleanFalse syncToWatch:v12];
  [v10 setIdentifier:@"BKReadingGoalsShouldClearDataKey"];
  [v10 setButtonAction:"_clearReadingGoalsData:"];
  v13[0] = v5;
  v13[1] = v10;
  v11 = [NSArray arrayWithObjects:v13 count:2];
  [v4 addObjectsFromArray:v11];
}

- (void)_addSearchingSection:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Searching" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Include Book Store results when searching." value:&stru_14E68 table:@"Settings"];
  [v7 setObject:v9 forKeyedSubscript:PSFooterTextGroupKey];

  v10 = BKSettingsBundle();
  v11 = [v10 localizedStringForKey:@"Book Store" value:&stru_14E68 table:@"Settings"];
  v12 = [(BKSettingsController *)self _standardSwitchSpecifierNamed:v11 keyName:@"BKIncludeBookStoreResultsInSearch" defaultValue:&__kCFBooleanTrue];

  [v12 setIdentifier:@"BKIncludeBookStoreResultsInSearch"];
  v14[0] = v7;
  v14[1] = v12;
  v13 = [NSArray arrayWithObjects:v14 count:2];
  [v4 addObjectsFromArray:v13];
}

- (void)_addAudiobooksSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Audiobooks" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Set the number of seconds to skip when you swipe the cover or tap the skip button." value:&stru_14E68 table:@"Settings"];
  [v7 setObject:v9 forKeyedSubscript:PSFooterTextGroupKey];

  [v7 setIdentifier:@"AUDIOBOOKS"];
  v10 = [BKSettingsController specifierForSkipForwardWithTarget:self];
  v11 = [BKSettingsController specifierForSkipBackwardWithTarget:self];
  v13[0] = v7;
  v13[1] = v10;
  v13[2] = v11;
  v12 = [NSArray arrayWithObjects:v13 count:3];
  [v4 addObjectsFromArray:v12];
}

+ (id)specifierForSkipForwardWithTarget:(id)a3
{
  v3 = a3;
  v4 = BKSettingsBundle();
  v5 = [v4 localizedStringForKey:@"Skip Forward" value:&stru_14E68 table:@"Settings"];
  v6 = [BKSettingsController _audioBookSkipSettingsDurationNamed:v5 target:v3 keyName:@"BKAudioBookSkipForward" defaultValue:&off_15E60];

  return v6;
}

+ (id)specifierForSkipBackwardWithTarget:(id)a3
{
  v3 = a3;
  v4 = BKSettingsBundle();
  v5 = [v4 localizedStringForKey:@"Skip Back" value:&stru_14E68 table:@"Settings"];
  v6 = [BKSettingsController _audioBookSkipSettingsDurationNamed:v5 target:v3 keyName:@"BKAudioBookSkipBackward" defaultValue:&off_15E60];

  return v6;
}

- (void)selectExternalControlPreference:(id)a3
{
  v4 = PSValueKey;
  v5 = a3;
  v9 = [v5 objectForKeyedSubscript:v4];
  v6 = [(BKSettingsController *)self externalControlGroup];
  [(BKSettingsController *)self setPreferenceValue:v9 specifier:v6];

  v7 = [(BKSettingsController *)self externalControlGroup];
  [v7 setProperty:v5 forKey:PSRadioGroupCheckedSpecifierKey];

  v8 = [(BKSettingsController *)self externalControlGroup];
  [(BKSettingsController *)self reloadSpecifier:v8];
}

- (void)_addAudiobooksExternalControlsSpecifiersToArray:(id)a3
{
  v22 = a3;
  v4 = BKSettingsBundle();
  v5 = [v4 localizedStringForKey:@"External Controls" value:&stru_14E68 table:?];
  v6 = [PSSpecifier groupSpecifierWithID:@"EXTERNAL_CONTROLS" name:v5];

  [v6 setObject:@"BKRemoteSkipInsteadOfNextTrackDefaultKey" forKeyedSubscript:PSKeyNameKey];
  [v6 setObject:@"com.apple.iBooks" forKeyedSubscript:PSDefaultsKey];
  [v6 setObject:@"com.apple.iBooks" forKeyedSubscript:PSContainerBundleIDKey];
  [v6 setObject:&__kCFBooleanTrue forKeyedSubscript:PSIsRadioGroupKey];
  v7 = BKSettingsBundle();
  v8 = [v7 localizedStringForKey:@"Headphones and car controls can be used to play the next/previous chapter value:or skip forward/back within the audiobook." table:{&stru_14E68, @"Settings"}];
  [v6 setObject:v8 forKeyedSubscript:PSFooterTextGroupKey];

  [(BKSettingsController *)self setExternalControlGroup:v6];
  v9 = BKSettingsBundle();
  v10 = [v9 localizedStringForKey:@"Next/Previous" value:&stru_14E68 table:@"Settings"];
  v11 = [PSSpecifier preferenceSpecifierNamed:v10 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:3 edit:0];

  v12 = PSValueKey;
  [v11 setObject:&__kCFBooleanFalse forKeyedSubscript:PSValueKey];
  [v11 setButtonAction:"selectExternalControlPreference:"];
  v13 = BKSettingsBundle();
  v14 = [v13 localizedStringForKey:@"Skip Forward/Back" value:&stru_14E68 table:@"Settings"];
  v15 = self;
  v16 = [PSSpecifier preferenceSpecifierNamed:v14 target:self set:"setPreferenceValue:specifier:" get:"readPreferenceValue:" detail:0 cell:3 edit:0];

  [v16 setObject:&__kCFBooleanTrue forKeyedSubscript:v12];
  [v16 setButtonAction:"selectExternalControlPreference:"];
  v17 = [(BKSettingsController *)v15 readPreferenceValue:v6];
  v18 = v17;
  if (!v17 || (v19 = [v17 BOOLValue], v20 = v11, v19))
  {
    v20 = v16;
  }

  [v6 setObject:v20 forKeyedSubscript:PSRadioGroupCheckedSpecifierKey];
  v23[0] = v6;
  v23[1] = v11;
  v23[2] = v16;
  v21 = [NSArray arrayWithObjects:v23 count:3];
  [v22 addObjectsFromArray:v21];
}

- (BOOL)_currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];

  v4 = [v3 objectForKeyedSubscript:@"automaticDownloadKinds"];
  v5 = v4;
  v6 = &__NSArray0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v8 = [[NSSet alloc] initWithArray:v7];
  v9 = [[NSSet alloc] initWithArray:&off_15F60];
  v10 = [v9 isSubsetOfSet:v8];

  return v10;
}

- (id)_allowAutomaticDownloadsForPurchasesFromOtherDevices:(id)a3
{
  v4 = a3;
  if (self->_isLowPowerMode)
  {
    v5 = &__kCFBooleanFalse;
  }

  else
  {
    pendingAllowAutomaticDownloadsNumber = self->_pendingAllowAutomaticDownloadsNumber;
    if (pendingAllowAutomaticDownloadsNumber)
    {
      v7 = pendingAllowAutomaticDownloadsNumber;
    }

    else
    {
      v7 = [NSNumber numberWithBool:[(BKSettingsController *)self _currentLocalAutomaticDownloadForPurchasesFromOtherDevicesEnabled]];
    }

    v5 = v7;
  }

  return v5;
}

- (void)_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 BOOLValue];
  v9 = [NSNumber numberWithBool:v8];
  pendingAllowAutomaticDownloadsNumber = self->_pendingAllowAutomaticDownloadsNumber;
  self->_pendingAllowAutomaticDownloadsNumber = v9;

  objc_initWeak(&location, self);
  v11 = +[BLDownloadQueue sharedInstance];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_78B4;
  v12[3] = &unk_14938;
  v12[4] = self;
  objc_copyWeak(&v13, &location);
  [v11 setAutomaticDownloadEnabled:v8 uiManager:self withCompletion:v12];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)_updateAutomaticDownloadsSection
{
  automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
  if (automaticDownloadsForPurchasesFromOtherDevicesSpecifier)
  {
    if (self->_isLowPowerMode)
    {
      v4 = 0;
    }

    else
    {
      v5 = +[MCProfileConnection sharedConnection];
      v4 = [v5 isBookstoreAllowed];

      automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    }

    v6 = [NSNumber numberWithBool:v4];
    [(PSSpecifier *)automaticDownloadsForPurchasesFromOtherDevicesSpecifier setProperty:v6 forKey:PSEnabledKey];
  }

  if (self->_automaticDownloadsGroupSpecifier)
  {
    v7 = BKSettingsBundle();
    v11 = [v7 localizedStringForKey:@"Automatically download new purchases (including free) made on other devices." value:&stru_14E68 table:@"Settings"];

    if (self->_isLowPowerMode)
    {
      v8 = BKSettingsBundle();
      v9 = [v8 localizedStringForKey:@"Automatic Downloads are not available while in Low Power Mode." value:&stru_14E68 table:@"Settings"];

      v10 = v9;
    }

    else
    {
      v10 = v11;
    }

    v12 = v10;
    [(PSSpecifier *)self->_automaticDownloadsGroupSpecifier setProperty:v10 forKey:PSFooterTextGroupKey];
  }
}

- (void)_addAutomaticDownloadsSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  v5 = +[BUAccountsProvider sharedProvider];
  v6 = [v5 isUserSignedInToiTunes];

  if (v6)
  {
    v7 = BKSettingsBundle();
    v8 = [v7 localizedStringForKey:@"Automatic Downloads" value:&stru_14E68 table:@"Settings"];
    v9 = [PSSpecifier groupSpecifierWithName:v8];
    automaticDownloadsGroupSpecifier = self->_automaticDownloadsGroupSpecifier;
    self->_automaticDownloadsGroupSpecifier = v9;

    v11 = BKSettingsBundle();
    v12 = [v11 localizedStringForKey:@"Purchases from Other Devices" value:&stru_14E68 table:@"Settings"];
    v13 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v12 target:self cell:6 detail:0 keyName:@"AllowAutoDownloadsForPurchasesFromOtherDevices" defaultValue:&__kCFBooleanFalse set:"_setAllowAutomaticDownloadsForPurchasesFromOtherDevices:specifier:" get:"_allowAutomaticDownloadsForPurchasesFromOtherDevices:"];
    automaticDownloadsForPurchasesFromOtherDevicesSpecifier = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier = v13;

    [(PSSpecifier *)self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
    [(BKSettingsController *)self _updateAutomaticDownloadsSection];
    v15 = self->_automaticDownloadsForPurchasesFromOtherDevicesSpecifier;
    v17[0] = self->_automaticDownloadsGroupSpecifier;
    v17[1] = v15;
    v16 = [NSArray arrayWithObjects:v17 count:2];
    [v4 addObjectsFromArray:v16];
  }
}

- (BOOL)_shouldShowCellularDataSwitch
{
  if (!MGGetBoolAnswer() || !MGGetBoolAnswer())
  {
    return 0;
  }

  return +[BUCellularSettings shouldShowCellularAutomaticDownloadsSwitch];
}

- (id)_cellularSettings
{
  cellularSettings = self->_cellularSettings;
  if (!cellularSettings)
  {
    v4 = +[BKCellularSettingsUtilities cellularSettingsForCurrentIdentity];
    v5 = self->_cellularSettings;
    self->_cellularSettings = v4;

    cellularSettings = self->_cellularSettings;
  }

  return cellularSettings;
}

- (void)_loadNetworkLimitAndReloadIfNeeded
{
  objc_initWeak(&location, self);
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_7EB0;
  v2[3] = &unk_14910;
  objc_copyWeak(&v3, &location);
  [BKCellularSettingsUtilities loadNetworkLimitForDownloadKind:@"book" runBlockIfNeedsUpdate:v2];
  objc_destroyWeak(&v3);
  objc_destroyWeak(&location);
}

- (id)_formattedNetworkLimitAndReloadIfNeeded
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_8064;
  v4[3] = &unk_14910;
  objc_copyWeak(&v5, &location);
  v2 = [BKCellularSettingsUtilities formattedNetworkLimitForDownloadKind:@"book" runBlockIfNeedsUpdate:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);

  return v2;
}

- (void)_updateCellularDataGroupSpecifierFooterText:(id)a3
{
  v3 = a3;
  v4 = BKSettingsBundle();
  v5 = [v4 localizedStringForKey:@"Choose whether books and audiobooks can automatically download over a cellular network." value:&stru_14E68 table:@"Settings"];

  [v3 setProperty:v5 forKey:PSFooterTextGroupKey];
}

- (id)_cellularAllowAutomaticDownloads:(id)a3
{
  v3 = [(BKSettingsController *)self _cellularSettings];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 allowAutomaticDownloads]);

  return v4;
}

- (void)_setCellularAllowAutomaticDownloads:(id)a3 specifier:(id)a4
{
  v5 = a3;
  v7 = [(BKSettingsController *)self _cellularSettings];
  v6 = [v5 BOOLValue];

  [v7 setAllowAutomaticDownloads:v6];
}

- (id)_cellularDataSettingForSpecifier:(id)a3
{
  v4 = [(BKSettingsController *)self _cellularSettings];
  v5 = [v4 cellularDataPrompt];
  if (!v5)
  {
    v7 = BKSettingsBundle();
    v10 = [v7 localizedStringForKey:@"Ask If Over %@" value:&stru_14E68 table:@"Settings"];
    v11 = [(BKSettingsController *)self _formattedNetworkLimitAndReloadIfNeeded];
    v9 = [NSString stringWithFormat:v10, v11];

    goto LABEL_8;
  }

  if (v5 == &dword_0 + 1)
  {
    v6 = BKSettingsBundle();
    v7 = v6;
    v8 = @"Always Ask";
    goto LABEL_6;
  }

  if (v5 == &dword_0 + 2)
  {
    v6 = BKSettingsBundle();
    v7 = v6;
    v8 = @"Always Allow";
LABEL_6:
    v9 = [v6 localizedStringForKey:v8 value:&stru_14E68 table:@"Settings"];
LABEL_8:

    goto LABEL_10;
  }

  v9 = 0;
LABEL_10:

  return v9;
}

- (void)_addCellularSectionSpecifiersToArray:(id)a3
{
  v4 = a3;
  if ([(BKSettingsController *)self _shouldShowCellularDataSwitch])
  {
    v5 = BKSettingsBundle();
    v6 = [v5 localizedStringForKey:@"Cellular Data" value:&stru_14E68 table:@"Settings"];
    v7 = [PSSpecifier groupSpecifierWithName:v6];
    cellularDataGroupSpecifier = self->_cellularDataGroupSpecifier;
    self->_cellularDataGroupSpecifier = v7;

    [(BKSettingsController *)self _updateCellularDataGroupSpecifierFooterText:self->_cellularDataGroupSpecifier];
    v9 = BKSettingsBundle();
    v10 = [v9 localizedStringForKey:@"Automatic Downloads" value:&stru_14E68 table:@"Settings"];
    v11 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v10 target:self cell:6 detail:0 keyName:@"AllowAutoDownloadOnCellular" defaultValue:&__kCFBooleanFalse set:"_setCellularAllowAutomaticDownloads:specifier:" get:"_cellularAllowAutomaticDownloads:"];

    v12 = BKSettingsBundle();
    v13 = [v12 localizedStringForKey:@"Downloads" value:&stru_14E68 table:@"Settings"];
    v14 = [PSSpecifier preferenceSpecifierNamed:v13 target:self set:0 get:"_cellularDataSettingForSpecifier:" detail:objc_opt_class() cell:2 edit:0];
    cellularDownloadsSpecifier = self->_cellularDownloadsSpecifier;
    self->_cellularDownloadsSpecifier = v14;

    v17[0] = self->_cellularDataGroupSpecifier;
    v17[1] = v11;
    v17[2] = self->_cellularDownloadsSpecifier;
    v16 = [NSArray arrayWithObjects:v17 count:3];
    [v4 addObjectsFromArray:v16];
  }
}

- (void)_addPrivacySection:(id)a3
{
  v31 = a3;
  v4 = BUOnboardingBooksBundleID();
  v33 = [OBBundle bundleWithIdentifier:v4];

  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Online Content & Privacy" value:&stru_14E68 table:@"Settings"];
  v7 = [PSSpecifier groupSpecifierWithName:v6];

  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Clear permission for books to access publisher\\U2019s content from the Internet." value:&stru_14E68 table:@"Settings"];
  v10 = PSFooterTextGroupKey;
  [v7 setObject:v9 forKeyedSubscript:PSFooterTextGroupKey];

  v11 = BKSettingsBundle();
  v34 = [v11 localizedStringForKey:@"Reset Access to Online Content" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v29) = 0;
  v12 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v34 target:self cell:13 detail:0 keyName:@"_BCWWebRepExternalLoadApprovalCacheClear" defaultValue:&__kCFBooleanFalse syncToWatch:v29];
  [v12 setIdentifier:@"ALLOW_ONLINE_CONTENT"];
  [v12 setObject:&__kCFBooleanTrue forKeyedSubscript:PSAllowMultilineTitleKey];
  [v12 setButtonAction:"_resetAllowedOnlineContent:"];
  v36[0] = v7;
  v36[1] = v12;
  v13 = [NSArray arrayWithObjects:v36 count:2];
  [v31 addObjectsFromArray:v13];

  v14 = [PSSpecifier groupSpecifierWithName:0];
  v15 = BKSettingsBundle();
  v16 = [v15 localizedStringForKey:@"Reset the identifier used to report aggregate app usage statistics to Apple." value:&stru_14E68 table:@"Settings"];

  v17 = [v33 privacyFlow];
  v18 = [v17 localizedButtonTitle];

  v19 = [NSString stringWithFormat:@"%@ %@", v16, v18];
  [v14 setObject:v19 forKeyedSubscript:v10];
  v20 = objc_opt_class();
  v21 = NSStringFromClass(v20);
  [v14 setProperty:v21 forKey:PSFooterCellClassGroupKey];

  v22 = [v16 length];
  v37.length = [v18 length];
  v37.location = v22 + 1;
  v23 = NSStringFromRange(v37);
  [v14 setProperty:v23 forKey:PSFooterHyperlinkViewLinkRangeKey];

  v24 = [NSValue valueWithNonretainedObject:self];
  [v14 setProperty:v24 forKey:PSFooterHyperlinkViewTargetKey];

  [v14 setProperty:@"showPrivacyExplanationSheet:" forKey:PSFooterHyperlinkViewActionKey];
  v25 = BKSettingsBundle();
  v26 = [v25 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  LOBYTE(v30) = 0;
  v27 = [BKSettingsUtilities standardPreferenceSpecifierNamed:v26 target:self cell:13 detail:0 keyName:@"BAResetAnalyticsUserID" defaultValue:&__kCFBooleanFalse syncToWatch:v30];
  [v27 setIdentifier:@"BAResetAnalyticsUserID"];
  [v27 setButtonAction:"_resetAnalyticsUserID:"];
  v35[0] = v14;
  v35[1] = v27;
  v28 = [NSArray arrayWithObjects:v35 count:2];
  [v31 addObjectsFromArray:v28];
}

- (void)_resetAllowedOnlineContent:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Clear permission for books to access publisher\\U2019s content from the Internet." value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Reset Access to Online Content" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_8D34;
  v21 = &unk_14960;
  objc_copyWeak(&v24, &location);
  v10 = v4;
  v22 = v10;
  v23 = self;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:&v18];
  [v7 addAction:{v11, v18, v19, v20, v21}];
  v12 = BKSettingsBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  v15 = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (v15 && v16)
  {
    [v15 setSourceView:v16];
    [v17 bounds];
    [v15 setSourceRect:?];
    [v15 setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_resetAnalyticsUserID:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Reset Identifier" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_9064;
  v21 = &unk_14960;
  objc_copyWeak(&v24, &location);
  v10 = v4;
  v22 = v10;
  v23 = self;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:&v18];
  [v7 addAction:{v11, v18, v19, v20, v21}];
  v12 = BKSettingsBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  v15 = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (v15 && v16)
  {
    [v15 setSourceView:v16];
    [v17 bounds];
    [v15 setSourceRect:?];
    [v15 setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)showPrivacyExplanationSheet:(id)a3
{
  v4 = BUOnboardingAllBundleIDs();
  v5 = BKSettingsLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "showPrivacyExplanationSheet: bundleIdentifiers: %{public}@", &v8, 0xCu);
  }

  if ([v4 count] == &dword_0 + 1)
  {
    v6 = [v4 firstObject];
    v7 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:v6];
  }

  else
  {
    v7 = [OBPrivacyPresenter presenterForPrivacyUnifiedAboutWithIdentifiers:v4];
  }

  [v7 setPresentingViewController:self];
  [v7 present];
}

- (void)_addAcknowledgementsSectionSpecifiersToArray:(id)a3
{
  v3 = a3;
  v4 = +[PSSpecifier emptyGroupSpecifier];
  v5 = +[BKSettingsController acknowledgementsSectionSpecifier];
  v7[0] = v4;
  v7[1] = v5;
  v6 = [NSArray arrayWithObjects:v7 count:2];
  [v3 addObjectsFromArray:v6];
}

+ (id)acknowledgementsSectionSpecifier
{
  v3 = BKSettingsBundle();
  v4 = [v3 localizedStringForKey:@"Acknowledgements" value:&stru_14E68 table:@"Settings"];
  v5 = [PSSpecifier preferenceSpecifierNamed:v4 target:a1 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v5 setIdentifier:@"Acknowledgements"];

  return v5;
}

- (void)_updateSyncingSectionSpecifiers
{
  v3 = [(BKSettingsController *)self _isSyncSectionForCloudKitEnabled];
  v4 = [(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled];
  v5 = +[BURestrictionsProvider sharedInstance];
  v6 = [v5 isAccountModificationAllowed];

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v7 = self->_syncingForCloudKitSpecifiers;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v33;
    if ((v3 & v6) != 0)
    {
      v11 = &__kCFBooleanTrue;
    }

    else
    {
      v11 = &__kCFBooleanFalse;
    }

    v12 = PSEnabledKey;
    do
    {
      v13 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v32 + 1) + 8 * v13) setObject:v11 forKeyedSubscript:v12];
        v13 = v13 + 1;
      }

      while (v9 != v13);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v9);
  }

  v14 = v3 | v4;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v15 = self->_syncingForICloudDriveSpecifiers;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v29;
    if (v4 & v6)
    {
      v19 = &__kCFBooleanTrue;
    }

    else
    {
      v19 = &__kCFBooleanFalse;
    }

    v20 = PSEnabledKey;
    do
    {
      v21 = 0;
      do
      {
        if (*v29 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v28 + 1) + 8 * v21) setObject:v19 forKeyedSubscript:{v20, v28}];
        v21 = v21 + 1;
      }

      while (v17 != v21);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v17);
  }

  if (v14)
  {
    v22 = [(BKSettingsController *)self readSyncSectionForCloudKitPreferenceValue:self->_syncReadingNowSpecifier];
    if ([v22 BOOLValue])
    {

LABEL_27:
      v23 = @"The Continue and Previous lists in Home sync using your iCloud account. Use iCloud Drive to sync PDFs you’ve added to your library.";
      goto LABEL_28;
    }

    v24 = [(BKSettingsController *)self readSyncSectionForICloudDrivePreferenceValue:self->_syncICloudDriveSpecifier];
    v25 = [v24 BOOLValue];

    if ((v25 & 1) == 0)
    {
      goto LABEL_27;
    }

    v23 = @"When Home is enabled, your Continue and Previous lists will start syncing to iCloud the next time you open a book.";
  }

  else
  {
    v23 = @"To enable syncing across devices, sign in to iCloud and turn on iCloud Drive in Settings.";
  }

LABEL_28:
  v26 = BKSettingsBundle();
  v27 = [v26 localizedStringForKey:v23 value:&stru_14E68 table:@"Settings"];
  [(PSSpecifier *)self->_syncGroupSpecifier setObject:v27 forKeyedSubscript:PSFooterTextGroupKey];
}

- (void)_clearReadingGoalsData:(id)a3
{
  v4 = a3;
  v5 = BKSettingsBundle();
  v6 = [v5 localizedStringForKey:@"Do you want to clear reading goals data from all of your devices using this iCloud account?" value:&stru_14E68 table:@"Settings"];

  v7 = [UIAlertController alertControllerWithTitle:0 message:v6 preferredStyle:0];
  v8 = BKSettingsBundle();
  v9 = [v8 localizedStringForKey:@"Clear Reading Goals Data" value:&stru_14E68 table:@"Settings"];

  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_9960;
  v18[3] = &unk_14988;
  objc_copyWeak(&v20, &location);
  v10 = v4;
  v19 = v10;
  v11 = [UIAlertAction actionWithTitle:v9 style:2 handler:v18];
  [v7 addAction:v11];
  v12 = BKSettingsBundle();
  v13 = [v12 localizedStringForKey:@"Cancel" value:&stru_14E68 table:@"Settings"];

  v14 = [UIAlertAction actionWithTitle:v13 style:1 handler:0];
  [v7 addAction:v14];
  v15 = [v7 popoverPresentationController];
  v16 = [v10 objectForKeyedSubscript:PSTableCellKey];
  v17 = v16;
  if (v15 && v16)
  {
    [v15 setSourceView:v16];
    [v17 bounds];
    [v15 setSourceRect:?];
    [v15 setPermittedArrowDirections:3];
  }

  [(BKSettingsController *)self presentViewController:v7 animated:1 completion:0];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (BOOL)_isSyncSectionEnabled
{
  if ([(BKSettingsController *)self _isSyncSectionForCloudKitEnabled])
  {
    return 1;
  }

  return [(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled];
}

- (BOOL)_isSyncSectionForCloudKitEnabled
{
  v3 = [(BKSettingsController *)self _isSignedInToICloud];
  if (v3)
  {

    LOBYTE(v3) = [(BKSettingsController *)self _isLiverpoolTCCEnabled];
  }

  return v3;
}

- (BOOL)_isSyncSectionForICloudDriveEnabled
{
  if (![(BKSettingsController *)self _isSignedInToICloud]|| ![(BKSettingsController *)self _isGlobalICloudDriveEnabled])
  {
    return 0;
  }

  return [(BKSettingsController *)self _isLiverpoolTCCEnabled];
}

- (BOOL)_isSignedInToICloud
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 primaryAppleAccount];

  v4 = [v3 accountType];
  v5 = [v4 identifier];
  v6 = [v5 isEqualToString:ACAccountTypeIdentifierAppleAccount];

  return v6;
}

- (BOOL)_isGlobalICloudDriveEnabled
{
  v2 = +[ACAccountStore bu_sharedAccountStore];
  v3 = [v2 ams_activeiCloudAccount];

  if ([v3 isEnabledForDataclass:kAccountDataclassUbiquity])
  {
    v4 = [v3 aa_isUsingCloudDocs];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)_isLiverpoolTCCEnabled
{
  v3 = [(BKSettingsController *)self _isServiceEnabled:kTCCServiceLiverpool];
  v4 = BKSettingsLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = kTCCServiceLiverpool;
    v6 = @"unknown";
    if (v3 == 2)
    {
      v6 = @"enabled";
    }

    if (v3 == 1)
    {
      v6 = @"disabled";
    }

    v7 = v6;
    v11 = 138543618;
    v12 = v5;
    v13 = 2114;
    v14 = v7;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "iBooksSettings: %{public}@ is %{public}@", &v11, 0x16u);
  }

  if (v3 == 2)
  {
    LOBYTE(v9) = 1;
  }

  else
  {
    if (v3 == 1)
    {
      if (![(BKSettingsController *)self _isUbiquityTCCEnabled])
      {
        LOBYTE(v9) = 0;
        return v9;
      }

      v8 = BKSettingsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_isLiverpoolTCCEnabled - liverpool OFF, ubiquity ON --> forcing liverpool ON", &v11, 2u);
      }

      v9 = 1;
    }

    else
    {
      v9 = [(BKSettingsController *)self _isUbiquityTCCEnabled];
      v8 = BKSettingsLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 67109120;
        LODWORD(v12) = v9;
        _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "_isLiverpoolTCCEnabled - Setting unknown liverpool value to %{BOOL}d", &v11, 8u);
      }
    }

    [(BKSettingsController *)self _setService:kTCCServiceLiverpool enabled:v9];
  }

  return v9;
}

- (BOOL)_isUbiquityTCCEnabled
{
  v2 = [(BKSettingsController *)self _isServiceEnabled:kTCCServiceUbiquity];
  v3 = BKSettingsLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = kTCCServiceUbiquity;
    v5 = @"unknown";
    if (v2 == 2)
    {
      v5 = @"enabled";
    }

    if (v2 == 1)
    {
      v5 = @"disabled";
    }

    v6 = v5;
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v6;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "iBooksSettings: %{public}@ is %{public}@", &v8, 0x16u);
  }

  return v2 == 2;
}

- (BOOL)_isSignedInToITunes
{
  v2 = +[BUAccountsProvider sharedProvider];
  v3 = [v2 activeStoreAccount];

  v4 = [v3 ams_DSID];
  if (v4)
  {
    v5 = [v3 username];
    v6 = v5 != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (int64_t)_isServiceEnabled:(__CFString *)a3
{
  CFBundleGetBundleWithIdentifier(@"com.apple.iBooks");
  v4 = TCCAccessCopyInformationForBundle();
  Count = CFArrayGetCount(v4);
  if (Count)
  {
    v6 = Count;
    v7 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, v7);
      v9 = CFGetTypeID(ValueAtIndex);
      if (v9 == CFDictionaryGetTypeID())
      {
        Value = CFDictionaryGetValue(ValueAtIndex, kTCCInfoService);
        if (CFStringCompare(Value, a3, 0) == kCFCompareEqualTo)
        {
          break;
        }
      }

      if (v6 == ++v7)
      {
        goto LABEL_6;
      }
    }

    v12 = CFDictionaryGetValue(ValueAtIndex, kTCCInfoGranted);
    if (CFBooleanGetValue(v12))
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
LABEL_6:
    v11 = 0;
  }

  CFRelease(v4);
  return v11;
}

- (void)_setService:(__CFString *)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v6 = BKSettingsLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v4)
    {
      v7 = @"YES";
    }

    v15 = 138412546;
    v16 = a3;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "Setting %@ to %@.", &v15, 0x16u);
  }

  v8 = TCCAccessSetForBundleId();
  v9 = BKSettingsLog();
  v10 = v9;
  if (v8)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = @"off";
      if (v4)
      {
        v11 = @"on";
      }

      v15 = 138543618;
      v16 = a3;
      v17 = 2114;
      v18 = v11;
      _os_log_impl(&dword_0, v10, OS_LOG_TYPE_DEFAULT, "iBooksSettings: Successfully set %{public}@ to %{public}@", &v15, 0x16u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_C1DC(a3, v4, v10);
  }

  v12 = notify_post([@"com.apple.librarian.account-token-changed" UTF8String]);
  v13 = BKSettingsLog();
  v14 = v13;
  if (v12)
  {
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_C27C(v12, v14);
    }
  }

  else if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138543362;
    v16 = @"com.apple.librarian.account-token-changed";
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "iBooksSettings: Successfully notify_post(%{public}@)", &v15, 0xCu);
  }
}

- (id)readSyncSectionForCloudKitPreferenceValue:(id)a3
{
  v4 = a3;
  if ([(BKSettingsController *)self _isSyncSectionForCloudKitEnabled])
  {
    v5 = [v4 target];
    v6 = [v5 readPreferenceValue:v4];
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (id)readSyncSectionForICloudDrivePreferenceValue:(id)a3
{
  v4 = a3;
  if ([(BKSettingsController *)self _isSyncSectionForICloudDriveEnabled])
  {
    v5 = [v4 target];
    v6 = [v5 readPreferenceValue:v4];
  }

  else
  {
    v6 = &__kCFBooleanFalse;
  }

  return v6;
}

- (void)_setReadingNowEnabled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 target];
  [v8 bk_setAndSyncPreferenceToWatch:v7 specifier:v6];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A40C;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)_getICloudDriveEnabled:(id)a3
{
  v4 = [(BKSettingsController *)self readSyncSectionForICloudDrivePreferenceValue:a3];
  v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 BOOLValue] & -[BKSettingsController _isUbiquityTCCEnabled](self, "_isUbiquityTCCEnabled"));

  return v5;
}

- (void)_setICloudDriveEnabled:(id)a3 specifier:(id)a4
{
  v6 = a4;
  v7 = [a3 isEqual:&__kCFBooleanTrue];
  [(BKSettingsController *)self _setService:kTCCServiceUbiquity enabled:v7];
  v8 = [v6 target];
  v9 = [NSNumber numberWithBool:v7];
  [v8 setPreferenceValue:v9 specifier:v6];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A594;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_iCloudAccountAvailabilityChangedNotification:(id)a3
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_A610;
  block[3] = &unk_148C0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
{
  if (a4)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_A694;
    block[3] = &unk_148C0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)_donateSettingsNavigationEvent
{
  sub_C508();
  sub_C4F8();
  sub_C4E8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = self;
  BKSettingsController._donateSettingsNavigationEvent()();
}

@end