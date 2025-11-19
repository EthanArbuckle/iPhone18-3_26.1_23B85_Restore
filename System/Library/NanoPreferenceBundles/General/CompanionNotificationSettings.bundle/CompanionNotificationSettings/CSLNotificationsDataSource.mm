@interface CSLNotificationsDataSource
- (BOOL)isSecondPartyApp:(id)a3;
- (BOOL)watchSupportsAOT;
- (CSLNotificationsDataSource)init;
- (id)_showOnGizmoStateForBundleID:(id)a3;
- (id)additionalSpecifiers;
- (id)appBacklightPrivacyLinkSpecifiers;
- (id)currentDevice;
- (id)deniedNotificationApps;
- (id)hardcodedSpecifiers;
- (id)notificationsIndicatorActive:(id)a3;
- (id)secondPartyApps;
- (id)showOnGizmoState:(id)a3;
- (id)specifiersForWatchKitAppsWithNotifications;
- (id)specifiersFromBBSections;
- (id)watchAppSpecifierWithDisplayName:(id)a3 specifierID:(id)a4 identifier:(id)a5;
- (void)_clockStatusBarSettingsChanged:(id)a3;
- (void)_setShowOnGizmoState:(id)a3 forBundleID:(id)a4;
- (void)_valueChangedNotificationForSpecifier:(id)a3;
- (void)_writeSectionState:(id)a3 forBundleID:(id)a4;
- (void)cleanBBSections;
- (void)dealloc;
- (void)lazyLoadBundle:(id)a3;
- (void)loadSpecifiers;
- (void)refreshBBSections;
- (void)reloadSpecifiers;
- (void)setNotificationsIndicatorActive:(id)a3 specifier:(id)a4;
- (void)setShowOnGizmoState:(id)a3 specifier:(id)a4;
- (void)setupAllowlistFromInheritedSpecifiers;
@end

@implementation CSLNotificationsDataSource

- (CSLNotificationsDataSource)init
{
  v11.receiver = self;
  v11.super_class = CSLNotificationsDataSource;
  v2 = [(CSLNotificationsDataSource *)&v11 init];
  if (v2)
  {
    v3 = [NPSDomainAccessor alloc];
    v4 = [v3 initWithDomain:BPSBulletinBoardAppsSettingsDomain];
    bbAppsSettings = v2->_bbAppsSettings;
    v2->_bbAppsSettings = v4;

    [(CSLNotificationsDataSource *)v2 refreshBBSections];
    v6 = +[NSNotificationCenter defaultCenter];
    [v6 addObserver:v2 selector:"becomeActive:" name:@"com.apple.PreferencesApp.willBecomeActive" object:0];

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_243C, @"NanoAlwaysOnTimePreferencesChangedNotification", 0, 1024);
    v8 = objc_alloc_init(NSOperationQueue);
    localIconLoadingQueue = v2->_localIconLoadingQueue;
    v2->_localIconLoadingQueue = v8;

    [(NSOperationQueue *)v2->_localIconLoadingQueue setMaxConcurrentOperationCount:8];
  }

  return v2;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"NanoAlwaysOnTimePreferencesChangedNotification", 0);
  [(NSOperationQueue *)self->_localIconLoadingQueue cancelAllOperations];
  v4.receiver = self;
  v4.super_class = CSLNotificationsDataSource;
  [(CSLNotificationsDataSource *)&v4 dealloc];
}

- (void)reloadSpecifiers
{
  [(CSLNotificationsDataSource *)self refreshBBSections];
  v3.receiver = self;
  v3.super_class = CSLNotificationsDataSource;
  [(CSLNotificationsDataSource *)&v3 reloadSpecifiers];
}

- (id)currentDevice
{
  v2 = +[PDRRegistry sharedInstance];
  v3 = [v2 getActivePairedDeviceExcludingAltAccount];

  return v3;
}

- (BOOL)watchSupportsAOT
{
  if (!self->_checkedIfWatchSupportsAOT)
  {
    v3 = [(CSLNotificationsDataSource *)self currentDevice];
    self->_watchSupportsAOT = [v3 supportsCapability:1789638251];
    self->_checkedIfWatchSupportsAOT = 1;
  }

  return self->_watchSupportsAOT;
}

- (id)deniedNotificationApps
{
  v7[0] = @"com.apple.mobiletimer";
  v7[1] = @"com.apple.NanoContactsBridgeSettingsPaired";
  v7[2] = @"com.apple.NanoContactsBridgeSettingsTinker";
  v7[3] = @"com.apple.NanoMusicBridgeSettings";
  v7[4] = @"com.apple.NanoBedtimeBridgeSettings";
  v7[5] = @"com.apple.StocksBridgeSettings";
  v7[6] = @"com.apple.SessionTrackerAppSettings";
  v7[7] = @"com.apple.BridgeHealthSettings";
  v7[8] = @"com.apple.BridgeRemoteAccounts";
  v3 = [NSArray arrayWithObjects:v7 count:9];
  v4 = [NSMutableArray arrayWithArray:v3];

  v5 = [(CSLNotificationsDataSource *)self currentDevice];
  if (([v5 supportsCapability:3519289856] & 1) == 0)
  {
    [v4 addObject:@"com.apple.DeepBreathingSettings"];
  }

  if (([v5 supportsCapability:54295327] & 1) == 0)
  {
    [v4 addObject:@"com.apple.private.PodcastsBridgeSettings"];
  }

  if (([v5 supportsCapability:3783076099] & 1) == 0)
  {
    [v4 addObject:@"com.apple.HeartRateSettings"];
  }

  if (([v5 supportsCapability:674176742] & 1) == 0)
  {
    [v4 addObject:@"com.apple.tincan.settings"];
  }

  if (([v5 supportsCapability:2657637795] & 1) == 0)
  {
    [v4 addObject:@"com.apple.NanoBooks.BridgeSettings"];
  }

  if (([v5 supportsCapability:4123187920] & 1) == 0)
  {
    [v4 addObject:@"com.apple.Noise.settings"];
  }

  [v4 addObject:@"com.apple.OxygenSaturationSettings"];
  if (([v5 supportsCapability:207200216] & 1) == 0)
  {
    [v4 addObject:@"com.apple.BrookBridgeSettings"];
  }

  return v4;
}

- (void)loadSpecifiers
{
  v79 = [(CSLNotificationsDataSource *)self specifiers];
  v86 = [NSBundle bundleForClass:objc_opt_class()];
  v2 = [PSSpecifierDataSource loadSpecifiersFromPlist:@"Notifications" inBundle:v86 target:self stringsTable:@"Notifications"];
  v90 = [v2 mutableCopy];

  v87 = [(CSLNotificationsDataSource *)self currentDevice];
  if (([v87 supportsCapability:252543419] & 1) == 0)
  {
    v3 = objc_opt_new();
    v111 = 0u;
    v112 = 0u;
    v113 = 0u;
    v114 = 0u;
    v4 = v90;
    v5 = [v4 countByEnumeratingWithState:&v111 objects:v117 count:16];
    if (v5)
    {
      v6 = *v112;
      v7 = PSIDKey;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v112 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v111 + 1) + 8 * i);
          v10 = [v9 propertyForKey:v7];
          v11 = [v10 hasPrefix:@"NOTIFICATION_SHOW_SHORTLOOK"];

          if (v11)
          {
            [v3 addObject:v9];
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v111 objects:v117 count:16];
      }

      while (v5);
    }

    [v4 removeObjectsInArray:v3];
  }

  LOBYTE(keyExistsAndHasValidFormat) = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"AOTEnabled", @"com.apple.system.prefs", &keyExistsAndHasValidFormat);
  if ((!keyExistsAndHasValidFormat || AppBooleanValue) && [(CSLNotificationsDataSource *)self watchSupportsAOT])
  {
    v13 = [(CSLNotificationsDataSource *)self appBacklightPrivacyLinkSpecifiers];
    [v90 addObjectsFromArray:v13];
    v14 = +[NSMutableArray array];
    v109[0] = _NSConcreteStackBlock;
    v109[1] = 3221225472;
    v109[2] = sub_3474;
    v109[3] = &unk_C460;
    v95 = v14;
    v110 = v95;
    [v13 enumerateObjectsUsingBlock:v109];
  }

  else
  {
    v95 = 0;
  }

  if ([v87 supportsCapability:240655905])
  {
    v15 = [v90 specifierForID:@"NOTIFICATION_PRIVACY_DESCRIPTION_ID"];
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"NOTIFICATION_PRIVACY_DESCRIPTION_DOUBLE_TAP" value:&stru_C638 table:@"Notifications"];
    [v15 setProperty:v17 forKey:PSFooterTextGroupKey];
  }

  v88 = +[NSMutableDictionary dictionary];
  v89 = +[NSMutableArray array];
  v18 = +[NSFileManager defaultManager];
  v94 = [v18 contentsOfDirectoryAtPath:@"/System/Library/NanoPreferenceBundles/Applications/" error:0];

  v19 = [v94 count];
  if (v19)
  {
    v20 = 0;
    v91 = PSTitleKey;
    v84 = PSIDKey;
    v82 = PSTableCellClassKey;
    v80 = PSBundleHasIconKey;
    v78 = PSSearchNanoApplicationsBundlePath;
    v77 = PSBundlePathKey;
    obj = PSDataSourceClassKey;
    while (1)
    {
      v21 = [v94 objectAtIndex:v20];
      v22 = [v21 pathExtension];
      v23 = [v22 isEqualToString:@"dSYM"];

      if ((v23 & 1) == 0)
      {
        break;
      }

LABEL_37:

      if (v19 == ++v20)
      {
        goto LABEL_38;
      }
    }

    v24 = [v21 stringByDeletingPathExtension];
    if (![v24 length])
    {
LABEL_36:

      goto LABEL_37;
    }

    v25 = [v94 objectAtIndex:v20];
    v26 = [@"/System/Library/NanoPreferenceBundles/Applications/" stringByAppendingPathComponent:v25];
    v27 = [v26 stringByResolvingSymlinksInPath];

    v28 = [NSBundle bundleWithPath:v27];
    v29 = [(CSLNotificationsDataSource *)self deniedNotificationApps];
    v30 = [v28 bundleIdentifier];
    LOBYTE(v26) = [v29 containsObject:v30];

    if ((v26 & 1) == 0)
    {
      v31 = [v28 bundleIdentifier];
      if ([@"com.apple.tincan.settings" isEqualToString:v31])
      {
        v32 = BPSIsWalkieTalkieAppInstalled();

        if ((v32 & 1) == 0)
        {
          goto LABEL_35;
        }
      }

      else
      {
      }

      v33 = [v28 objectForInfoDictionaryKey:@"CFBundleDisplayName"];
      v34 = [v28 bundleIdentifier];
      v35 = [@"com.apple.NanoBedtimeBridgeSettings" isEqualToString:v34];

      if (v35)
      {
        v36 = +[NSBundle mainBundle];
        v37 = [v36 localizedStringForKey:v24 value:&stru_C638 table:@"Localizable-burrito"];

        v33 = v37;
      }

      if (![v33 length])
      {
        v38 = [(CSLNotificationsDataSource *)self localizedPrefsStringForString:v24];

        v33 = v38;
      }

      v39 = [NSMutableDictionary alloc];
      v40 = [v28 bundleIdentifier];
      v41 = [v39 initWithObjectsAndKeys:{v33, v91, v40, v84, @"PSLinkCell", v82, kCFBooleanTrue, v80, kCFBooleanTrue, v78, v24, v77, kCFBooleanTrue, @"isController", 0}];

      v42 = [v28 objectForInfoDictionaryKey:obj];
      if (v42)
      {
        [v41 setObject:v42 forKey:obj];
      }

      [v89 addObject:v41];
    }

LABEL_35:

    goto LABEL_36;
  }

LABEL_38:
  [v88 setObject:v89 forKey:@"items"];
  v43 = [v88 objectForKey:@"title"];
  v92 = SpecifiersFromPlist();

  v81 = [(CSLNotificationsDataSource *)self currentDevice];
  if ([v81 supportsCapability:486198456])
  {
    BPSRemoveSystemDeletedAppBundleSettingsFromSpecifiers();
    v83 = [(CSLNotificationsDataSource *)self hardcodedSpecifiers];
    BPSRemoveSystemDeletedAppBundleIDsFromSpecifiers();
  }

  else
  {
    v83 = [(CSLNotificationsDataSource *)self hardcodedSpecifiers];
  }

  [v92 addObjectsFromArray:v83];
  v44 = [(CSLNotificationsDataSource *)self specifiersForWatchKitAppsWithNotifications];
  [v92 addObjectsFromArray:v44];

  BPSRemoveHiddenAppsFromSpecifiers();
  v45 = [v92 sortedArrayUsingComparator:&stru_C4A0];
  v46 = [v45 mutableCopy];

  v85 = v46;
  v47 = +[PSSpecifier emptyGroupSpecifier];
  [v90 addObject:v47];

  [v90 addObjectsFromArray:v85];
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  obja = v90;
  v48 = [obja countByEnumeratingWithState:&v105 objects:v116 count:16];
  if (v48)
  {
    v49 = *v106;
    v50 = PSLazyIconLoading;
    v51 = PSLazyIconAppID;
    v52 = PSCellClassKey;
    do
    {
      for (j = 0; j != v48; j = j + 1)
      {
        if (*v106 != v49)
        {
          objc_enumerationMutation(obja);
        }

        v54 = *(*(&v105 + 1) + 8 * j);
        if ([v54 cellType] == &dword_0 + 1)
        {
          v55 = [v54 identifier];
          v56 = [v95 containsObject:v55];

          if ((v56 & 1) == 0)
          {
            v57 = [NSNumber numberWithBool:1];
            [v54 setProperty:v57 forKey:v50];

            v58 = [v54 identifier];
            v59 = BPSMappedNanoBundleIDForNanoSettingsBundleID();

            [v54 setProperty:v59 forKey:v51];
            v60 = BPSIsIconForBundleIDRemote();
            if (([v60 BOOLValue] & 1) == 0)
            {
              v61 = BPSLocalIconName();
              [v54 setProperty:v61 forKey:@"squareIconName"];
            }

            [v54 setProperty:objc_opt_class() forKey:v52];
          }
        }
      }

      v48 = [obja countByEnumeratingWithState:&v105 objects:v116 count:16];
    }

    while (v48);
  }

  objc_initWeak(&keyExistsAndHasValidFormat, self);
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_3558;
  v102[3] = &unk_C4F0;
  objc_copyWeak(&v103, &keyExistsAndHasValidFormat);
  v102[4] = self;
  v62 = objc_retainBlock(v102);
  if ((BPSStockholmSupportedInGizmoRegion() & 1) == 0)
  {
    v100 = 0u;
    v101 = 0u;
    v98 = 0u;
    v99 = 0u;
    v63 = obja;
    v64 = [v63 countByEnumeratingWithState:&v98 objects:v115 count:16];
    if (v64)
    {
      v65 = *v99;
      v66 = PSIDKey;
      v67 = PassbookSettingsBundleID;
      while (2)
      {
        for (k = 0; k != v64; k = k + 1)
        {
          if (*v99 != v65)
          {
            objc_enumerationMutation(v63);
          }

          v69 = *(*(&v98 + 1) + 8 * k);
          v70 = [v69 propertyForKey:v66];
          v71 = [v70 isEqual:v67];

          if (v71)
          {
            v72 = sub_3658(@"NanoPassbookBridgeSettings_NoStockholm");
            [v69 setName:v72];

            goto LABEL_64;
          }
        }

        v64 = [v63 countByEnumeratingWithState:&v98 objects:v115 count:16];
        if (v64)
        {
          continue;
        }

        break;
      }
    }

LABEL_64:
  }

  objc_storeStrong(&self->_internalSpecifiers, v90);
  v73 = [(CSLNotificationsDataSource *)self additionalSpecifiers];
  [obja addObjectsFromArray:v73];

  [v79 addObjectsFromArray:obja];
  v74 = +[NSNotificationCenter defaultCenter];
  v75 = NTKClockStatusBarSettingsDidChangeNotification;
  [v74 removeObserver:self name:NTKClockStatusBarSettingsDidChangeNotification object:0];

  v76 = +[NSNotificationCenter defaultCenter];
  [v76 addObserver:self selector:"_clockStatusBarSettingsChanged:" name:v75 object:0];

  objc_destroyWeak(&v103);
  objc_destroyWeak(&keyExistsAndHasValidFormat);
}

- (id)secondPartyApps
{
  v3 = objc_opt_new();
  v4 = [(CSLNotificationsDataSource *)self currentDevice];
  v5 = [v4 supportsCapability:3922540677];

  if (v5)
  {
    [v3 addObject:@"com.apple.findmy"];
  }

  return v3;
}

- (BOOL)isSecondPartyApp:(id)a3
{
  v4 = a3;
  v5 = [(CSLNotificationsDataSource *)self secondPartyApps];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (id)watchAppSpecifierWithDisplayName:(id)a3 specifierID:(id)a4 identifier:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [PSSpecifier preferenceSpecifierNamed:v9 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

  [v10 setProperty:v8 forKey:@"SpecifierID"];
  [v10 setIdentifier:v7];

  return v10;
}

- (id)specifiersForWatchKitAppsWithNotifications
{
  v3 = objc_opt_new();
  [(CSLNotificationsDataSource *)self cleanBBSections];
  v4 = +[BPSBridgeAppContext shared];
  v5 = [v4 installedWatchkitApps];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3980;
  v10[3] = &unk_C518;
  v10[4] = self;
  v6 = v3;
  v11 = v6;
  [v5 enumerateKeysAndObjectsUsingBlock:v10];
  v7 = v11;
  v8 = v6;

  return v6;
}

- (id)hardcodedSpecifiers
{
  v2 = +[NSMutableArray array];
  v3 = sub_3658(@"REMINDERS");
  v4 = [PSSpecifier preferenceSpecifierNamed:v3 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
  [v4 setIdentifier:@"com.apple.NanoReminders"];
  [v4 setProperty:@"com.apple.reminders" forKey:@"bundleID"];
  [v4 setProperty:v3 forKey:@"localizedName"];
  [v2 addObject:v4];
  if (BPSIsNewsAllowed())
  {
    v5 = sub_3658(@"NEWS");
    v6 = [PSSpecifier preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];
    [v6 setProperty:v5 forKey:@"localizedName"];
    [v6 setProperty:@"com.apple.news" forKey:@"bundleID"];
    [v6 setIdentifier:@"com.apple.nanonews"];
    [v2 addObject:v6];
  }

  return v2;
}

- (id)additionalSpecifiers
{
  v3 = +[NSMutableArray array];
  [(CSLNotificationsDataSource *)self setupAllowlistFromInheritedSpecifiers];
  v4 = [(CSLNotificationsDataSource *)self specifiersFromBBSections];
  [v3 addObjectsFromArray:v4];

  return v3;
}

- (id)appBacklightPrivacyLinkSpecifiers
{
  v19[0] = PSTitleKey;
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_AOT_PRIVACY_TITLE" value:&stru_C638 table:@"Notifications"];
  v20[0] = v3;
  v20[1] = @"NOTIFICATION_AOT_PRIVACY_ID";
  v19[1] = PSIDKey;
  v19[2] = PSTableCellClassKey;
  v20[2] = @"PSLinkCell";
  v20[3] = @"CompanionAppBacklightPrivacySettings";
  v19[3] = PSBundlePathKey;
  v19[4] = PSBundleIsControllerKey;
  v20[4] = &__kCFBooleanTrue;
  v20[5] = &__kCFBooleanTrue;
  v19[5] = PSSearchNanoSettingsBundlePath;
  v19[6] = PSBundleHasIconKey;
  v19[7] = @"CSLPRFAppBacklightPrivacyType";
  v20[6] = &__kCFBooleanFalse;
  v20[7] = @"notifications";
  v4 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:8];

  v16 = v4;
  v17 = @"items";
  v5 = [NSArray arrayWithObjects:&v16 count:1];
  v18 = v5;
  v6 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  v7 = +[NSBundle mainBundle];
  v8 = SpecifiersFromPlist();

  v9 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_AOT_PRIVACY_GROUP_ID", 0];
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  v11 = [v10 localizedStringForKey:@"NOTIFICATION_AOT_PRIVACY_FOOTER" value:&stru_C638 table:@"Notifications"];
  [v9 setProperty:v11 forKey:PSFooterTextGroupKey];

  v15[0] = v9;
  v12 = [v8 firstObject];
  v15[1] = v12;
  v13 = [NSArray arrayWithObjects:v15 count:2];

  return v13;
}

- (id)notificationsIndicatorActive:(id)a3
{
  v3 = +[NTKClockStatusBarSettings sharedInstance];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isNotificationsIndicatorEnabled]);

  return v4;
}

- (void)setNotificationsIndicatorActive:(id)a3 specifier:(id)a4
{
  v4 = a3;
  v6 = +[NTKClockStatusBarSettings sharedInstance];
  v5 = [v4 BOOLValue];

  [v6 setNotificationsIndicatorEnabled:v5];
}

- (void)setupAllowlistFromInheritedSpecifiers
{
  v3 = +[NSMutableDictionary dictionary];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = self->_internalSpecifiers;
  v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v12 + 1) + 8 * v8) identifier];
        v10 = MappedPhoneBundleIDForNanoSettingsBundleID(v9);

        if (v10)
        {
          [(NSDictionary *)v3 setObject:&__kCFBooleanTrue forKey:v10];
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  inheritedAllowList = self->_inheritedAllowList;
  self->_inheritedAllowList = v3;
}

- (void)refreshBBSections
{
  v3 = +[PBBGatewayManager sharedManager];
  [v3 loadBBSections];

  v4 = +[PBBGatewayManager sharedManager];
  v5 = [v4 bbSections];
  v6 = [v5 copy];
  bbSections = self->_bbSections;
  self->_bbSections = v6;

  v8 = [[NSArray alloc] initWithArray:self->_bbSections copyItems:0];
  unfilteredBBSections = self->_unfilteredBBSections;
  self->_unfilteredBBSections = v8;

  _objc_release_x1();
}

- (void)cleanBBSections
{
  if (qword_110B8 != -1)
  {
    sub_57E8();
  }

  +[NSMutableArray array];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v16 = v21 = 0u;
  v2 = self->_bbSections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      v6 = 0;
      do
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * v6);
        if ([v7 allowsNotifications] && (objc_msgSend(v7, "alertType") || objc_msgSend(v7, "lockScreenSetting") == &dword_0 + 2) && (objc_msgSend(v7, "suppressFromSettings") & 1) == 0)
        {
          v8 = qword_110B0;
          v9 = [v7 sectionID];
          if (([v8 containsObject:v9] & 1) != 0 || objc_msgSend(v7, "sectionType") == &dword_0 + 1)
          {
          }

          else
          {
            inheritedAllowList = self->_inheritedAllowList;
            v11 = [v7 sectionID];
            v12 = [(NSDictionary *)inheritedAllowList objectForKey:v11];
            v13 = [v12 BOOLValue];

            if ((v13 & 1) == 0)
            {
              [(NSArray *)v16 addObject:v7];
            }
          }
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v14 = [(NSArray *)v2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v4 = v14;
    }

    while (v14);
  }

  bbSections = self->_bbSections;
  self->_bbSections = v16;
}

- (id)specifiersFromBBSections
{
  v40 = +[NSMutableArray array];
  v39 = +[NSMutableArray array];
  [(CSLNotificationsDataSource *)self cleanBBSections];
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v42 = self;
  obj = self->_bbSections;
  v44 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
  if (v44)
  {
    v43 = *v47;
    v38 = PSLazyIconAppID;
    v37 = PSLazyIconLoading;
    v35 = BPSNotificationAppBBDisplayName;
    v36 = BPSNotificationAppBBSectionInfo;
    v34 = PSCellClassKey;
    do
    {
      for (i = 0; i != v44; i = i + 1)
      {
        if (*v47 != v43)
        {
          objc_enumerationMutation(obj);
        }

        v4 = *(*(&v46 + 1) + 8 * i);
        v5 = [v4 sectionID];
        v6 = [v4 sectionID];
        v7 = [LSApplicationRecord alloc];
        v45 = 0;
        v8 = [v7 initWithBundleIdentifier:v6 allowPlaceholder:0 error:&v45];
        v9 = v45;
        if (v9 && os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v6;
          *&buf[12] = 2112;
          *&buf[14] = v9;
          _os_log_impl(&dword_0, &_os_log_default, OS_LOG_TYPE_DEFAULT, "error while retrieving application record %@ with error %@", buf, 0x16u);
        }

        v10 = [v8 counterpartIdentifiers];
        v11 = [v10 firstObject];

        v12 = BPSMappedNanoSettingsBundleIDForNanoBundleID();
        *buf = @"com.apple.facetime";
        *&buf[8] = @"com.apple.tips";
        *&buf[16] = @"com.apple.TapToRadar";
        v52 = @"com.apple.Bridge";
        v53 = @"com.apple.Sharing.Remote";
        v13 = [NSArray arrayWithObjects:buf count:5];
        if ([v13 containsObject:v6])
        {

LABEL_12:
          if (([v6 isEqualToString:@"com.apple.tips"] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", @"com.apple.TapToRadar"))
          {
            [(CSLNotificationsDataSource *)v42 _setShowOnGizmoState:&__kCFBooleanFalse forBundleID:v6];
          }

          goto LABEL_30;
        }

        IsRemoved = BPSSystemAppIsRemoved();

        if (IsRemoved)
        {
          goto LABEL_12;
        }

        v15 = [(NSDictionary *)v42->_inheritedAllowList objectForKey:v11];

        if (v15)
        {
          goto LABEL_30;
        }

        v16 = [(NSMutableArray *)v42->_internalSpecifiers specifierForID:v11];
        if (v16)
        {

          goto LABEL_30;
        }

        v17 = [(NSMutableArray *)v42->_internalSpecifiers specifierForID:v12];

        if (!v17)
        {
          v18 = [(CSLNotificationsDataSource *)v42 deniedNotificationApps];
          v19 = [v18 containsObject:v12];

          if ((v19 & 1) == 0)
          {
            v20 = [v4 displayName];

            if (v20)
            {
              v21 = [v4 displayName];
              goto LABEL_24;
            }

            if (v6)
            {
              v21 = [v8 localizedName];
LABEL_24:
              v22 = v21;

              v5 = v22;
            }

            if (v5)
            {
              v23 = [PSSpecifier preferenceSpecifierNamed:v5 target:v42 set:"setShowOnGizmoState:specifier:" get:"showOnGizmoState:" detail:0 cell:6 edit:0];
              v24 = [v4 sectionID];
              [v23 setProperty:v24 forKey:v38];

              [v23 setProperty:&__kCFBooleanTrue forKey:v37];
              [v23 setProperty:v4 forKey:v36];
              [v23 setProperty:v5 forKey:v35];
              [v23 setProperty:objc_opt_class() forKey:v34];
              [v23 setProperty:v42->_localIconLoadingQueue forKey:@"CSLNotificationCellIconQueue"];
              if ([v4 isAppClip])
              {
                v25 = v39;
              }

              else
              {
                v25 = v40;
              }

              [v25 addObject:v23];
            }
          }
        }

LABEL_30:
      }

      v44 = [(NSArray *)obj countByEnumeratingWithState:&v46 objects:v50 count:16];
    }

    while (v44);
  }

  [v40 sortUsingComparator:&stru_C578];
  [v39 sortUsingComparator:&stru_C598];
  if ([v39 count])
  {
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"APP_CLIPS_TITLE" value:&stru_C638 table:@"Notifications-DimSum"];
    v28 = [PSSpecifier preferenceSpecifierNamed:v27 target:0 set:0 get:0 detail:objc_opt_class() cell:1 edit:0];

    v29 = [UIImage imageNamed:@"AppClips-DimSum"];
    [v28 setProperty:v29 forKey:PSIconImageKey];

    [v28 setProperty:v39 forKey:@"AppClipSpecifiers"];
    [v40 insertObject:v28 atIndex:0];
  }

  if ([v40 count])
  {
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"MIRROR_IPHONE_ALERTS" value:&stru_C638 table:@"Notifications"];
    v32 = [PSSpecifier groupSpecifierWithID:@"NOTIFICATION_APPS_GROUP" name:v31];

    [v40 insertObject:v32 atIndex:0];
  }

  return v40;
}

- (void)_writeSectionState:(id)a3 forBundleID:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = BPSNanoBulletinSectionId;
  v8 = [v12 objectForKey:BPSNanoBulletinSectionId];

  if (!v8)
  {
    [v12 setObject:v6 forKey:v7];
  }

  v9 = +[NSDate date];
  [v12 setObject:v9 forKey:BPSNanoBulletinUpdateTimestamp];

  [(NPSDomainAccessor *)self->_bbAppsSettings setObject:v12 forKey:v6];
  v10 = [(NPSDomainAccessor *)self->_bbAppsSettings synchronize];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, BPSBulletinDistributorBBSectionsDidChangeNotification, 0, 0, 0);
}

- (void)_setShowOnGizmoState:(id)a3 forBundleID:(id)a4
{
  bbAppsSettings = self->_bbAppsSettings;
  v7 = a4;
  v8 = a3;
  v9 = [(NPSDomainAccessor *)bbAppsSettings dictionaryForKey:v7];
  v14 = v9;
  if (v9)
  {
    v10 = [v9 mutableCopy];
  }

  else
  {
    v10 = +[NSMutableDictionary dictionary];
  }

  v11 = v10;
  [v10 setObject:v8 forKey:BPSNanoBulletinShowsAlerts];
  v12 = [v8 BOOLValue];

  v13 = [NSNumber numberWithInt:v12 ^ 1];
  [v11 setObject:v13 forKey:BPSNanoBulletinShowsCustomSettings];

  [(CSLNotificationsDataSource *)self _writeSectionState:v11 forBundleID:v7];
}

- (void)setShowOnGizmoState:(id)a3 specifier:(id)a4
{
  v6 = BPSNotificationAppBBSectionInfo;
  v7 = a3;
  v9 = [a4 propertyForKey:v6];
  v8 = [v9 sectionID];
  [(CSLNotificationsDataSource *)self _setShowOnGizmoState:v7 forBundleID:v8];
}

- (id)_showOnGizmoStateForBundleID:(id)a3
{
  v4 = a3;
  v5 = [(NPSDomainAccessor *)self->_bbAppsSettings dictionaryForKey:v4];
  v6 = [v5 mutableCopy];

  v7 = [v6 objectForKey:BPSNanoBulletinShowsAlerts];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {

    v8 = &__kCFBooleanTrue;
    [(CSLNotificationsDataSource *)self _setShowOnGizmoState:&__kCFBooleanTrue forBundleID:v4];
  }

  else if (([v7 BOOLValue] & 1) == 0)
  {
    v10 = [v6 objectForKey:BPSNanoBulletinShowsCustomSettings];
    if (!v10)
    {
      [(CSLNotificationsDataSource *)self _setShowOnGizmoState:v8 forBundleID:v4];
    }
  }

  return v8;
}

- (id)showOnGizmoState:(id)a3
{
  v4 = [a3 propertyForKey:BPSNotificationAppBBSectionInfo];
  v5 = [v4 sectionID];
  v6 = [(CSLNotificationsDataSource *)self _showOnGizmoStateForBundleID:v5];

  return v6;
}

- (void)lazyLoadBundle:(id)a3
{
  v4 = a3;
  v5 = [(CSLNotificationsDataSource *)self observersOfClass:objc_opt_class()];
  v6 = [v5 anyObject];

  [v6 lazyLoadBundle:v4];
}

- (void)_valueChangedNotificationForSpecifier:(id)a3
{
  v4 = PSValueKey;
  v5 = a3;
  [v5 setProperty:0 forKey:v4];
  v6 = [PSRootController readPreferenceValue:v5];
  v7 = [(CSLNotificationsDataSource *)self specifiers];
  v8 = [PSSpecifierUpdates updatesWithSpecifiers:v7];

  [v8 reloadSpecifier:v5];
  [(CSLNotificationsDataSource *)self performUpdates:v8];
}

- (void)_clockStatusBarSettingsChanged:(id)a3
{
  v5 = [(CSLNotificationsDataSource *)self specifiers];
  v4 = [v5 specifierForID:@"NOTIFICATIONS_INDICATOR_ID"];
  [(CSLNotificationsDataSource *)self _valueChangedNotificationForSpecifier:v4];
}

@end