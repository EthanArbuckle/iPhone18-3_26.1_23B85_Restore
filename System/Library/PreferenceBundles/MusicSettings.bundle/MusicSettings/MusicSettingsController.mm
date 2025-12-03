@interface MusicSettingsController
- (MusicSettingsController)init;
- (MusicSettingsDynamicFooterHyperlinkAction)musicFooterLinkAction;
- (id)accountModificationsAllowed;
- (id)allSpecifiers;
- (id)cellularDataEnabled;
- (id)cellularDataGroupFooterText;
- (id)cellularDataSettingsEnabled;
- (id)hasDownloadedMusic;
- (id)hasStarRatings;
- (id)homeSharingSignOutButtonLabel;
- (id)isAutomaticDownloadsEnabled:(id)enabled;
- (id)isDownloadPinsEnabled:(id)enabled;
- (id)isPurchaseHistoryEnabled:(id)enabled;
- (id)libraryFooterText;
- (id)listeningHistoryFooterText;
- (id)lyricsDescription:(id)description;
- (id)lyricsOptions;
- (id)mliEntryPointFooter;
- (id)motionGroupFooterText;
- (id)musicFooterLinkText;
- (id)musicFooterText;
- (id)musicUsageLinkDetailDescription:(id)description;
- (id)resetMediaLibraryEnabled;
- (id)sharePlayTogetherDiscoverableEnabled:(id)enabled;
- (id)shouldAddFavoriteSongsToMyMusic:(id)music;
- (id)shouldAddPlaylistSongsToMyMusic:(id)music;
- (id)shouldShowRegulatorySection;
- (id)songTransitionsDescription:(id)description;
- (id)songTransitionsTitle;
- (id)specifiers;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)useListeningHistory:(id)history;
- (id)valueForMusicCapability:(id)capability;
- (void)_accountStoreChangedNotification:(id)notification;
- (void)_activeAccountChangedNotification:(id)notification;
- (void)_areTransitionsEnabledDidChangeNotification:(id)notification;
- (void)_cellularDownloadsAllowedDidChangeNotification:(id)notification;
- (void)_cloudAddToPlaylistBehaviorDidChangeNotification:(id)notification;
- (void)_cloudServiceStatusCloudLibraryEnabledChangedNotification:(id)notification;
- (void)_cloudServiceStatusMatchStatusDidChangeNotification:(id)notification;
- (void)_cloudServiceStatusSubscriptionAvailablilityChangedNotification:(id)notification;
- (void)_cloudServiceStatusSubscriptionStatusChangedNotification:(id)notification;
- (void)_debugTap:(id)tap;
- (void)_determineMLIStatus;
- (void)_internalTap:(id)tap;
- (void)_managedConfigurationEffectiveSettingsDidChangeNotification:(id)notification;
- (void)_privateListeningEnabledDidChangeNotification:(id)notification;
- (void)_reloadAccountStatus;
- (void)_resetMLIStatus;
- (void)_storefrontDidChangeNotification:(id)notification;
- (void)appleMusicSubscribe:(id)subscribe;
- (void)dealloc;
- (void)homeSharingSignInButtonAction:(id)action;
- (void)homeSharingSignOutButtonAction:(id)action;
- (void)mliEntryPointClicked:(id)clicked;
- (void)mliReviewClicked:(id)clicked;
- (void)resetLibrary:(id)library;
- (void)setAutomaticDownloadsEnabled:(id)enabled specifier:(id)specifier;
- (void)setCloudLibraryEnabled:(id)enabled specifier:(id)specifier;
- (void)setDownloadPinsEnabled:(id)enabled specifier:(id)specifier;
- (void)setEQ:(id)q specifier:(id)specifier;
- (void)setPurchaseHistoryEnabled:(id)enabled specifier:(id)specifier;
- (void)setSharePlayTogetherDiscoverableEnabled:(id)enabled specifier:(id)specifier;
- (void)setShouldAddFavoriteSongsToMyMusic:(id)music specifier:(id)specifier;
- (void)setShouldAddPlaylistSongsToMyMusic:(id)music specifier:(id)specifier;
- (void)setTransliterationPreference:(id)preference specifier:(id)specifier;
- (void)setUseListeningHistory:(id)history specifier:(id)specifier;
- (void)showPrivacySplashSheet:(id)sheet;
- (void)showRegulatoryWebPage:(id)page;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation MusicSettingsController

- (MusicSettingsController)init
{
  v104.receiver = self;
  v104.super_class = MusicSettingsController;
  v2 = [(MusicSettingsController *)&v104 init];
  if (v2)
  {
    [MPMediaQuery setFilteringDisabled:1];
    v3 = +[MPMediaLibrary deviceMediaLibrary];
    [v3 setCloudFilteringType:1];

    +[MPCloudController migrateCellularDataPreferencesIfNeeded];
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"_accountStoreChangedNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_activeAccountChangedNotification:" name:ICActiveUserIdentityDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_cloudServiceStatusMatchStatusDidChangeNotification:" name:MPCloudServiceStatusControllerMatchStatusDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_cloudServiceStatusCloudLibraryEnabledChangedNotification:" name:MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_cloudServiceStatusSubscriptionAvailablilityChangedNotification:" name:MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_cloudServiceStatusSubscriptionStatusChangedNotification:" name:MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_cloudAddToPlaylistBehaviorDidChangeNotification:" name:MPCloudControllerCloudAddToPlaylistBehaviorDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_managedConfigurationEffectiveSettingsDidChangeNotification:" name:MCEffectiveSettingsChangedNotification object:0];
    [v4 addObserver:v2 selector:"_cellularDownloadsAllowedDidChangeNotification:" name:MPNetworkObserverIsMusicCellularDownloadsAllowedDidChangeNotification object:0];
    [v4 addObserver:v2 selector:"_storefrontDidChangeNotification:" name:@"com.apple.StoreServices.StoreFrontChanged" object:0];
    [v4 addObserver:v2 selector:"_willEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
    v102 = v4;
    [v4 addObserver:v2 selector:"_areTransitionsEnabledDidChangeNotification:" name:MPPlaybackUserDefaultsTransitionsEnabledDidChangeNotification object:0];
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"_privateListeningEnabledDidChangeNotification:" name:MPPlaybackUserDefaultsPrivateListeningEnabledDidChangeNotification object:0];

    v6 = +[ICEnvironmentMonitor sharedMonitor];
    v7 = +[MPCloudServiceStatusController sharedController];
    [v7 beginObservingMatchStatus];
    v101 = v7;
    [v7 beginObservingCloudLibraryEnabled];
    v8 = [[PSSystemPolicyForApp alloc] initWithBundleIdentifier:@"com.apple.Music"];
    appPolicy = v2->_appPolicy;
    v2->_appPolicy = v8;

    [(PSSystemPolicyForApp *)v2->_appPolicy setDelegate:v2];
    v10 = objc_alloc_init(ICCloudClient);
    cloudClient = v2->_cloudClient;
    v2->_cloudClient = v10;

    v12 = objc_alloc_init(MusicSettingsCellularDataController);
    cellularDataController = v2->_cellularDataController;
    v2->_cellularDataController = v12;

    [(MusicSettingsCellularDataController *)v2->_cellularDataController setParentController:v2];
    v14 = [(MusicSettingsController *)v2 loadSpecifiersFromPlistName:@"MusicSettings" target:v2];
    v15 = [v14 mutableCopy];

    v16 = [v15 indexOfSpecifierWithID:@"com.apple.Music:CrossFadeDurationSlider"];
    v17 = [(MusicSettingsController *)v2 loadSpecifiersFromPlistName:@"MusicSettings-Alchemy" target:v2];
    v18 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v16 + 1, [v17 count]);
    v100 = v17;
    [v15 insertObjects:v17 atIndexes:v18];

    v19 = [v15 indexOfSpecifierWithID:@"com.apple.Music:ResetLibrary"];
    v20 = [(MusicSettingsController *)v2 loadSpecifiersFromPlistName:@"MusicSettings-MLI" target:v2];
    v21 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v19 + 1, [v20 count]);
    v99 = v20;
    [v15 insertObjects:v20 atIndexes:v21];

    v22 = [v15 indexOfSpecifierWithID:@"com.apple.Music:PrefersSpatialDownloads"];
    v23 = [(MusicSettingsController *)v2 loadSpecifiersFromPlistName:@"MusicSettings-Pins" target:v2];
    v24 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v22 + 1, [v23 count]);
    v98 = v23;
    [v15 insertObjects:v23 atIndexes:v24];

    v25 = [(PSSystemPolicyForApp *)v2->_appPolicy specifiersForPolicyOptions:8421377 force:0];
    v26 = [v25 mutableCopy];

    if ([(MusicSettingsCellularDataController *)v2->_cellularDataController cellularSettingsAvailable])
    {
      firstObject = [v26 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if (isKindOfClass)
      {
        firstObject2 = [v26 firstObject];
        properties = [firstObject2 properties];
        v31 = [properties mutableCopy];

        [v31 setValue:@"cellularDataGroupFooterText" forKey:@"musicDynamicFooterText"];
        [firstObject2 setProperties:v31];
      }
    }

    if ([v26 count])
    {
      v32 = +[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", 0, [v26 count]);
      [v15 insertObjects:v26 atIndexes:v32];
    }

    v97 = v26;
    v33 = [NSBundle alloc];
    v34 = MSVSystemRootDirectory();
    v107[0] = v34;
    v107[1] = @"System";
    v107[2] = @"Library";
    v107[3] = @"UsageBundles";
    v107[4] = @"MusicUsage.bundle";
    v35 = [NSArray arrayWithObjects:v107 count:5];
    v36 = [NSURL fileURLWithPathComponents:v35];
    v37 = [v33 initWithURL:v36];

    v96 = v37;
    v38 = objc_alloc_init([v37 principalClass]);
    storageReporter = v2->_storageReporter;
    v2->_storageReporter = v38;

    usageBundleApps = [(PSStorageReporting *)v2->_storageReporter usageBundleApps];
    firstObject3 = [usageBundleApps firstObject];
    musicUsageBundle = v2->_musicUsageBundle;
    v2->_musicUsageBundle = firstObject3;

    [(PSUsageBundleApp *)v2->_musicUsageBundle setUsageBundleStorageReporter:v2->_storageReporter];
    v43 = [v15 specifierForID:@"com.apple.Music:MusicUsageLink"];
    [v43 setProperty:v2->_musicUsageBundle forKey:PSUsageBundleAppKey];
    v95 = v43;
    [v43 setDetailControllerClass:{-[PSStorageReporting usageDetailControllerClassForUsageBundleApp:](v2->_storageReporter, "usageDetailControllerClassForUsageBundleApp:", v2->_musicUsageBundle)}];
    v44 = [v15 specifierForID:@"com.apple.Music:EQ"];
    v45 = +[MPPlaybackEQSetting allSettings];
    v46 = [v45 sortedArrayUsingComparator:&stru_25080];

    v47 = [v46 valueForKeyPath:@"name"];
    v93 = v46;
    v48 = [v46 valueForKeyPath:@"localizedName"];
    v94 = v44;
    [v44 setValues:v47 titles:v48];

    [v15 specifierForID:@"com.apple.Music:motionMode"];
    v49 = v103 = v15;
    v50 = [NSBundle bundleForClass:objc_opt_class()];
    v51 = [v50 localizedStringForKey:@"MOTION_VALUES_ON" value:&stru_25A88 table:@"MusicSettings"];
    v106[0] = v51;
    v52 = +[ICDeviceInfo currentDeviceInfo];
    LODWORD(v48) = [v52 hasWAPICapability];
    v53 = [NSBundle bundleForClass:objc_opt_class()];
    v54 = v53;
    if (v48)
    {
      v55 = @"MOTION_VALUES_WLAN_ONLY";
    }

    else
    {
      v55 = @"MOTION_VALUES_WIFI_ONLY";
    }

    v56 = [v53 localizedStringForKey:v55 value:&stru_25A88 table:@"MusicSettings"];
    v106[1] = v56;
    v57 = [NSBundle bundleForClass:objc_opt_class()];
    v58 = [v57 localizedStringForKey:@"MOTION_VALUES_OFF" value:&stru_25A88 table:@"MusicSettings"];
    v106[2] = v58;
    v59 = [NSArray arrayWithObjects:v106 count:3];
    v92 = v49;
    v60 = v49;
    v61 = v103;
    [v60 setValues:&off_279A8 titles:v59];

    v62 = [OBBundle bundleWithIdentifier:@"com.apple.onboarding.applemusic"];
    onBoardingBundle = v2->_onBoardingBundle;
    v2->_onBoardingBundle = v62;

    v64 = +[UIDevice currentDevice];
    sf_isInternalInstall = [v64 sf_isInternalInstall];

    if (sf_isInternalInstall)
    {
      v66 = +[NSMutableArray array];
      v67 = [PSSpecifier groupSpecifierWithID:@"com.apple.Music:InternalGroup" name:@"Apple Internal"];
      v68 = MusicSettingsRequiredCapabilitiesKey;
      [v67 setProperty:&off_279C0 forKey:MusicSettingsRequiredCapabilitiesKey];
      v90 = v67;
      [v66 addObject:v67];
      v69 = MSVSystemRootDirectory();
      v105[0] = v69;
      v105[1] = @"AppleInternal";
      v105[2] = @"Library";
      v105[3] = @"PreferenceBundles";
      v70 = [NSArray arrayWithObjects:v105 count:4];

      v71 = [v70 arrayByAddingObject:@"FeatureEnablerInternalSettings.bundle"];
      v72 = [NSURL fileURLWithPathComponents:v71];
      v73 = [NSBundle bundleWithURL:v72];

      v74 = v73;
      if (v73)
      {
        v75 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"AMP Feature Enabler", 0, 0, 0, [v73 principalClass], 1, 0);
        [v75 setProperty:@"com.apple.Music:InternalFeatureEnablerSettings" forKey:PSIDKey];
        [v75 setProperty:&off_279D8 forKey:v68];
        [v66 addObject:v75];
      }

      v89 = v74;
      v91 = v68;
      v76 = [v70 arrayByAddingObject:@"MediaLibraryInternalSettings.bundle"];
      v77 = [NSURL fileURLWithPathComponents:v76];
      v78 = [NSBundle bundleWithURL:v77];

      if (v78)
      {
        v79 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Media Library", 0, 0, 0, [v78 principalClass], 1, 0);
        [v79 setProperty:@"com.apple.Music:InternalMediaLibrarySettings" forKey:PSIDKey];
        [v79 setProperty:&off_279F0 forKey:v68];
        [v66 addObject:v79];
      }

      v80 = [v70 arrayByAddingObject:@"MediaPlaybackInternalSettings.bundle"];
      v81 = [NSURL fileURLWithPathComponents:v80];
      v82 = [NSBundle bundleWithURL:v81];

      v61 = v103;
      if (v82)
      {
        v83 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Media Playback", 0, 0, 0, [v82 principalClass], 1, 0);
        [v83 setProperty:@"com.apple.Music:InternalMediaPlaybackSettings" forKey:PSIDKey];
        [v83 setProperty:&off_27A08 forKey:v68];
        [v66 addObject:v83];
      }

      v84 = [v70 arrayByAddingObject:@"MusicInternalSettings.bundle"];
      v85 = [NSURL fileURLWithPathComponents:v84];
      v86 = [NSBundle bundleWithURL:v85];

      if (v86)
      {
        v87 = +[PSSpecifier preferenceSpecifierNamed:target:set:get:detail:cell:edit:](PSSpecifier, "preferenceSpecifierNamed:target:set:get:detail:cell:edit:", @"Music", 0, 0, 0, [v86 principalClass], 1, 0);
        [v87 setProperty:@"com.apple.Music:InternalMusicSettings" forKey:PSIDKey];
        [v87 setProperty:&off_27A20 forKey:v91];
        [v66 addObject:v87];
      }

      [v103 addObjectsFromArray:v66];
    }

    [(MusicSettingsController *)v2 setAllSpecifiers:v61];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = +[MPCloudServiceStatusController sharedController];
  [v4 endObservingMatchStatus];
  [v4 endObservingCloudLibraryEnabled];
  [v3 removeObserver:self name:ICUserIdentityStoreDidChangeNotification object:0];
  [v3 removeObserver:self name:ICActiveUserIdentityDidChangeNotification object:0];
  [v3 removeObserver:self name:MPCloudServiceStatusControllerMatchStatusDidChangeNotification object:0];
  [v3 removeObserver:self name:MPCloudServiceStatusControllerCloudLibraryEnabledDidChangeNotification object:0];
  [v3 removeObserver:self name:MPCloudServiceStatusControllerSubscriptionAvailabilityDidChangeNotification object:0];
  [v3 removeObserver:self name:MPCloudServiceStatusControllerSubscriptionStatusDidChangeNotification object:0];
  [v3 removeObserver:self name:MPCloudControllerCloudAddToPlaylistBehaviorDidChangeNotification object:0];
  [v3 removeObserver:self name:UIApplicationWillEnterForegroundNotification object:0];

  v5.receiver = self;
  v5.super_class = MusicSettingsController;
  [(MusicSettingsController *)&v5 dealloc];
}

- (id)valueForMusicCapability:(id)capability
{
  capabilityCopy = capability;
  if ([capabilityCopy isEqualToString:@"userWantsLosslessDownloads"])
  {
    v5 = +[MPPlaybackUserDefaults standardUserDefaults];
    preferredMusicDownloadResolution = [v5 preferredMusicDownloadResolution];

    v8 = preferredMusicDownloadResolution == &loc_BB80 || preferredMusicDownloadResolution == 192000;
    goto LABEL_8;
  }

  if ([capabilityCopy isEqualToString:@"showInternalSettings"])
  {
    showInternalSettings = self->_showInternalSettings;
LABEL_13:
    v9 = [NSNumber numberWithBool:showInternalSettings];
    goto LABEL_14;
  }

  if ([capabilityCopy isEqualToString:@"atfwatlFeatureOn"])
  {
LABEL_12:
    showInternalSettings = _os_feature_enabled_impl();
    goto LABEL_13;
  }

  if ([capabilityCopy isEqualToString:@"crossFadeFeatureOn"])
  {
    if (_os_feature_enabled_impl())
    {
      v8 = _os_feature_enabled_impl() ^ 1;
    }

    else
    {
      v8 = 0;
    }

LABEL_8:
    v9 = [NSNumber numberWithInt:v8];
LABEL_14:
    v11 = v9;
    goto LABEL_15;
  }

  if ([capabilityCopy isEqualToString:@"crossFadeEnabled"])
  {
    v13 = +[MPPlaybackUserDefaults standardUserDefaults];
    v14 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v13 isCrossFadeEnabled]);
  }

  else
  {
    if ([capabilityCopy isEqualToString:@"songTransitionsFeatureOn"] || objc_msgSend(capabilityCopy, "isEqualToString:", @"despacitoFeatureOn"))
    {
      goto LABEL_12;
    }

    v15 = sub_9668(*&self->_accountStatus.isSignedIn, *&self->_accountStatus.isManagedAppleID | (*&self->_accountStatus.isMLIEnabled << 32), capabilityCopy);
    v13 = v15;
    if (v15)
    {
      v14 = v15;
    }

    else
    {
      v16.receiver = self;
      v16.super_class = MusicSettingsController;
      v14 = [(MusicSettingsController *)&v16 valueForMusicCapability:capabilityCopy];
    }
  }

  v11 = v14;

LABEL_15:

  return v11;
}

- (id)allSpecifiers
{
  v71.receiver = self;
  v71.super_class = MusicSettingsController;
  allSpecifiers = [(MusicSettingsController *)&v71 allSpecifiers];
  if (MSVDeviceOSIsInternalInstall() && self->_showInternalSettings)
  {
    v49 = allSpecifiers;
    if (qword_2B370[0] != -1)
    {
      sub_168DC();
    }

    v4 = [NSMutableArray arrayWithCapacity:12];
    v5 = [[LSApplicationRecord alloc] initWithBundleIdentifier:@"com.apple.Music" allowPlaceholder:1 error:0];
    v6 = [PSSpecifier groupSpecifierWithName:@"Versions"];
    exactBundleVersion = [v5 exactBundleVersion];
    v53 = PSFooterTextGroupKey;
    [v6 setProperty:exactBundleVersion forKey:?];

    [v4 addObject:v6];
    machOUUIDs = [v5 machOUUIDs];
    firstObject = [machOUUIDs firstObject];
    uUIDString = [firstObject UUIDString];

    v11 = [PSSpecifier preferenceSpecifierNamed:"preferenceSpecifierNamed:target:set:get:detail:cell:edit:" target:@"Music" set:uUIDString get:0 detail:0 cell:? edit:?];
    v12 = objc_opt_class();
    v58 = PSCellClassKey;
    [v11 setProperty:v12 forKey:?];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSLazyIconLoading];
    [v11 setProperty:@"com.apple.Music" forKey:PSLazyIconAppID];
    v57 = PSCopyableCellKey;
    [v11 setProperty:&__kCFBooleanTrue forKey:?];
    [v11 setProperty:&__kCFBooleanTrue forKey:PSEnabledKey];
    [v11 setProperty:uUIDString forKey:@"UUID"];
    v13 = v4;
    [v4 addObject:v11];

    v14 = MSVProcessCopyMediaFrameworksDescriptions();
    v15 = [MSVDefaultDictionary dictionaryWithDefaultValue:&stru_250E0];
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v16 = v14;
    v17 = [v16 countByEnumeratingWithState:&v67 objects:v74 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v68;
      do
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v68 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v67 + 1) + 8 * i);
          version = [v21 version];
          v23 = version;
          if (version)
          {
            v24 = version;
          }

          else
          {
            v24 = @"(null)";
          }

          v25 = v24;

          v26 = [v15 objectForKeyedSubscript:v25];

          [v26 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v67 objects:v74 count:16];
      }

      while (v18);
    }

    v48 = v16;

    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    allKeys = [v15 allKeys];
    v28 = [allKeys sortedArrayUsingSelector:"compare:"];

    obj = v28;
    v54 = [v28 countByEnumeratingWithState:&v63 objects:v73 count:16];
    if (v54)
    {
      v51 = *v64;
      v52 = v15;
      v29 = PSIconImageKey;
      do
      {
        v30 = 0;
        do
        {
          if (*v64 != v51)
          {
            objc_enumerationMutation(obj);
          }

          v56 = v30;
          v31 = *(*(&v63 + 1) + 8 * v30);
          v32 = +[PSSpecifier emptyGroupSpecifier];
          [v32 setProperty:v31 forKey:v53];
          v55 = v32;
          [v13 addObject:v32];
          v33 = [v15 objectForKeyedSubscript:v31];
          v34 = [v33 sortedArrayUsingComparator:&stru_25120];

          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v35 = v34;
          v36 = [v35 countByEnumeratingWithState:&v59 objects:v72 count:16];
          if (v36)
          {
            v37 = v36;
            v38 = *v60;
            do
            {
              for (j = 0; j != v37; j = j + 1)
              {
                if (*v60 != v38)
                {
                  objc_enumerationMutation(v35);
                }

                v40 = *(*(&v59 + 1) + 8 * j);
                uuid = [v40 uuid];
                uUIDString2 = [uuid UUIDString];

                name = [v40 name];
                v44 = [PSSpecifier preferenceSpecifierNamed:name target:uUIDString2 set:0 get:"lowercaseString" detail:0 cell:-1 edit:0];

                [v44 setProperty:objc_opt_class() forKey:v58];
                v45 = [UIImage systemImageNamed:@"square.stack.3d.up.fill"];
                [v44 setProperty:v45 forKey:v29];

                [v44 setProperty:&__kCFBooleanTrue forKey:v57];
                [v44 setProperty:uUIDString2 forKey:@"UUID"];
                [v13 addObject:v44];
              }

              v37 = [v35 countByEnumeratingWithState:&v59 objects:v72 count:16];
            }

            while (v37);
          }

          v30 = v56 + 1;
          v15 = v52;
        }

        while ((v56 + 1) != v54);
        v54 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
      }

      while (v54);
    }

    v46 = [v49 arrayByAddingObjectsFromArray:v13];

    allSpecifiers = v46;
  }

  return allSpecifiers;
}

- (id)specifiers
{
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    [(MusicSettingsController *)self _reloadAccountStatus];
    v8.receiver = self;
    v8.super_class = MusicSettingsController;
    specifiers = [(MusicSettingsController *)&v8 specifiers];
    v6 = *&self->MusicSettingsListViewController_opaque[v3];
    *&self->MusicSettingsListViewController_opaque[v3] = specifiers;

    [(MusicSettingsController *)self setSpecifierID:@"Music"];
    v4 = *&self->MusicSettingsListViewController_opaque[v3];
  }

  return v4;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = MusicSettingsController;
  [(MusicSettingsController *)&v10 viewDidLoad];
  table = [(MusicSettingsController *)self table];
  [table registerClass:objc_opt_class() forCellReuseIdentifier:@"com.apple.Music:CrossFadeDurationSlider"];

  v4 = +[UIDevice currentDevice];
  sf_isInternalInstall = [v4 sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    v6 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_internalTap:"];
    [v6 setNumberOfTapsRequired:2];
    view = [(MusicSettingsController *)self view];
    [view addGestureRecognizer:v6];

    v8 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"_debugTap:"];
    [v8 setNumberOfTapsRequired:3];
    view2 = [(MusicSettingsController *)self view];
    [view2 addGestureRecognizer:v8];
  }
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v8 = [(MusicSettingsController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"com.apple.Music:CrossFadeDurationSlider"];

  if (v10)
  {
    identifier2 = [v8 identifier];
    v12 = [viewCopy dequeueReusableCellWithIdentifier:identifier2 forIndexPath:pathCopy];

    [v12 setupWithSpeficier:v8];
  }

  else
  {
    v14.receiver = self;
    v14.super_class = MusicSettingsController;
    v12 = [(MusicSettingsController *)&v14 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  }

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [(MusicSettingsController *)self specifierAtIndexPath:pathCopy];
  identifier = [v8 identifier];
  v10 = [identifier isEqualToString:@"com.apple.Music:MusicUsageLink"];

  if (v10)
  {
    self->_needsUpdateOnAppear = 1;
  }

  v11.receiver = self;
  v11.super_class = MusicSettingsController;
  [(MusicSettingsController *)&v11 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
}

- (void)setEQ:(id)q specifier:(id)specifier
{
  specifierCopy = specifier;
  qCopy = q;
  selfCopy = [(MusicSettingsController *)self rootController];
  v9 = selfCopy;
  if (!selfCopy)
  {
    selfCopy = self;
  }

  v14 = [selfCopy readPreferenceValue:specifierCopy];

  v10 = [MPPlaybackEQSetting settingWithName:v14];
  v11 = [MPPlaybackEQSetting settingWithName:qCopy];
  selfCopy2 = [(MusicSettingsController *)self rootController];
  v13 = selfCopy2;
  if (!selfCopy2)
  {
    selfCopy2 = self;
  }

  [selfCopy2 setPreferenceValue:qCopy specifier:specifierCopy];
}

- (id)isPurchaseHistoryEnabled:(id)enabled
{
  v3 = [(ICCloudClient *)self->_cloudClient isMediaKindDisabledForJaliscoLibrary:1]^ 1;

  return [NSNumber numberWithInt:v3];
}

- (void)setPurchaseHistoryEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  cloudClient = self->_cloudClient;
  if (bOOLValue)
  {
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_A7E8;
    v8[3] = &unk_25148;
    v8[4] = self;
    [(ICCloudClient *)cloudClient enableCloudLibraryWithPolicy:0 startInitialImport:1 completionHandler:v8];
  }

  else
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_A868;
    v7[3] = &unk_25148;
    v7[4] = self;
    [(ICCloudClient *)cloudClient disableCloudLibraryWithReason:-1 completionHandler:v7];
  }
}

- (void)setCloudLibraryEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  specifierCopy = specifier;
  v6 = +[ICEnvironmentMonitor sharedMonitor];
  [v6 networkType];

  v7 = +[UIDevice currentDevice];
  sf_isChinaRegionCellularDevice = [v7 sf_isChinaRegionCellularDevice];

  cellularDataController = self->_cellularDataController;
  if (sf_isChinaRegionCellularDevice)
  {
    wifiDataEnabled = [(MusicSettingsCellularDataController *)cellularDataController wifiDataEnabled];
    cellularDataEnabled = [(MusicSettingsCellularDataController *)self->_cellularDataController cellularDataEnabled];
    if ((wifiDataEnabled & 1) != 0 || (ICEnvironmentNetworkTypeIsWiFi() & 1) == 0)
    {
      if ((cellularDataEnabled & 1) != 0 || (ICEnvironmentNetworkTypeIsCellular() & 1) == 0)
      {
        goto LABEL_13;
      }

      v12 = @"ENABLE_SYNC_LIBRARY_FAILED_BODY_WLAN_ON";
    }

    else
    {
      v12 = @"ENABLE_SYNC_LIBRARY_FAILED_BODY_WLAN_OFF";
    }
  }

  else
  {
    if ([(MusicSettingsCellularDataController *)cellularDataController cellularDataEnabled]|| !ICEnvironmentNetworkTypeIsCellular())
    {
      goto LABEL_13;
    }

    v12 = @"ENABLE_SYNC_LIBRARY_FAILED_BODY_WIFI";
  }

  v13 = [NSBundle bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:v12 value:&stru_25A88 table:@"MusicSettings"];

  if (v14)
  {
    v15 = [NSBundle bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"ENABLE_SYNC_LIBRARY_FAILED_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v17 = [UIAlertController alertControllerWithTitle:v16 message:v14 preferredStyle:1];

    v18 = [NSBundle bundleForClass:objc_opt_class()];
    v19 = [v18 localizedStringForKey:@"OK" value:&stru_25A88 table:@"MusicSettings"];
    v20 = [UIAlertAction actionWithTitle:v19 style:0 handler:0];
    [v17 addAction:v20];

    [(MusicSettingsController *)self presentViewController:v17 animated:1 completion:0];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_B70C;
    block[3] = &unk_24EF8;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);

    goto LABEL_33;
  }

LABEL_13:
  if (![enabledCopy BOOLValue])
  {
    v35 = +[MPMediaQuery songsQuery];
    [v35 setIgnoreSystemFilterPredicates:1];
    v36 = [MPMediaPropertyPredicate predicateWithValue:&off_278F8 forProperty:MPMediaItemPropertyStoreSagaID comparisonType:100];
    v95[0] = v36;
    v37 = [MPMediaPropertyPredicate predicateWithValue:&__kCFBooleanFalse forProperty:MPMediaItemPropertyHasNonPurgeableAsset];
    v95[1] = v37;
    v38 = [NSArray arrayWithObjects:v95 count:2];
    v39 = [MPMediaCompoundAllPredicate predicateMatchingPredicates:v38];
    v96[0] = v39;
    v40 = [MPMediaPropertyPredicate predicateWithValue:&off_27910 forProperty:MPMediaItemPropertyStoreAssetProtectionType];
    v96[1] = v40;
    v41 = [NSArray arrayWithObjects:v96 count:2];
    v42 = [MPMediaCompoundAnyPredicate predicateMatchingPredicates:v41];
    [v35 addFilterPredicate:v42];

    LODWORD(v41) = [v35 _hasItems];
    v84[0] = _NSConcreteStackBlock;
    v84[1] = 3221225472;
    v84[2] = sub_BA40;
    v84[3] = &unk_24EF8;
    v84[4] = self;
    v43 = objc_retainBlock(v84);
    v44 = v43;
    if (!v41)
    {
      (v43[2])(v43);
LABEL_32:

      goto LABEL_33;
    }

    v45 = [NSBundle bundleForClass:objc_opt_class()];
    v46 = [v45 localizedStringForKey:@"DISABLE_SYNC_LIBRARY_SUB_AND_MATCH" value:&stru_25A88 table:@"MusicSettings"];

    if (self->_accountStatus.isMatchSubscribed)
    {
      if (self->_accountStatus.isSubscribed)
      {
LABEL_31:
        v66 = [NSBundle bundleForClass:objc_opt_class()];
        v67 = [v66 localizedStringForKey:@"DISABLE_SYNC_LIBRARY" value:&stru_25A88 table:@"MusicSettings"];
        v68 = +[UIDevice currentDevice];
        v69 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v67, v46, [v68 sf_isiPad]);

        v70 = [NSBundle bundleForClass:objc_opt_class()];
        v71 = [v70 localizedStringForKey:@"TURN_OFF" value:&stru_25A88 table:@"MusicSettings"];
        v82[0] = _NSConcreteStackBlock;
        v82[1] = 3221225472;
        v82[2] = sub_BB40;
        v82[3] = &unk_24E58;
        v83 = v44;
        v72 = [UIAlertAction actionWithTitle:v71 style:2 handler:v82];
        [v69 addAction:v72];

        v73 = [NSBundle bundleForClass:objc_opt_class()];
        v74 = [v73 localizedStringForKey:@"CANCEL" value:&stru_25A88 table:@"MusicSettings"];
        v80[0] = _NSConcreteStackBlock;
        v80[1] = 3221225472;
        v80[2] = sub_BB50;
        v80[3] = &unk_25210;
        v80[4] = self;
        v81 = specifierCopy;
        v75 = [UIAlertAction actionWithTitle:v74 style:1 handler:v80];
        [v69 addAction:v75];

        [(MusicSettingsController *)self presentViewController:v69 animated:1 completion:0];
        goto LABEL_32;
      }

      v47 = @"DISABLE_SYNC_LIBRARY_NO_SUB_MATCH";
    }

    else
    {
      v47 = @"DISABLE_SYNC_LIBRARY_SUB_NO_MATCH";
    }

    v64 = [NSBundle bundleForClass:objc_opt_class()];
    v65 = [v64 localizedStringForKey:v47 value:&stru_25A88 table:@"MusicSettings"];

    v46 = v65;
    goto LABEL_31;
  }

  v21 = +[ICPrivacyInfo sharedPrivacyInfo];
  privacyAcknowledgementRequiredForMusic = [v21 privacyAcknowledgementRequiredForMusic];

  if (privacyAcknowledgementRequiredForMusic)
  {
    v76 = [OBPrivacyLinkController linkWithBundleIdentifier:@"com.apple.onboarding.applemusic"];
    v23 = [NSBundle bundleForClass:objc_opt_class()];
    v24 = [UIImage imageNamed:@"welcome" inBundle:v23];

    v25 = [AMSUIOnboardingViewController alloc];
    v26 = [NSBundle bundleForClass:objc_opt_class()];
    v27 = [v26 localizedStringForKey:@"WELCOME_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v28 = [NSBundle bundleForClass:objc_opt_class()];
    v29 = [v28 localizedStringForKey:@"WELCOME_DESCRIPTION" value:&stru_25A88 table:@"MusicSettings"];
    v30 = [NSBundle bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"CONTINUE_BUTTON_TITLE" value:&stru_25A88 table:@"MusicSettings"];
    v32 = [v25 initWithHeaderImage:v24 titleText:v27 descriptionText:v29 primaryButtonText:v31 privacyLinkController:v76];

    objc_initWeak(&location, self);
    v90[0] = _NSConcreteStackBlock;
    v90[1] = 3221225472;
    v90[2] = sub_B714;
    v90[3] = &unk_251C0;
    objc_copyWeak(&v92, &location);
    v91 = specifierCopy;
    [v32 setPrimaryButtonCallback:v90];
    view = [v32 view];
    v34 = +[UIColor musicTintColor];
    [view setTintColor:v34];

    [(MusicSettingsController *)self presentViewController:v32 animated:1 completion:0];
    objc_destroyWeak(&v92);
    objc_destroyWeak(&location);
  }

  else
  {
    v48 = +[MPCloudController sharedCloudController];
    isEnablingCloudLibraryDestructive = [v48 isEnablingCloudLibraryDestructive];

    v50 = isEnablingCloudLibraryDestructive && self->_accountStatus.isMatchSubscribed && !self->_accountStatus.isSubscribed;
    v89[0] = _NSConcreteStackBlock;
    v89[1] = 3221225472;
    v89[2] = sub_B910;
    v89[3] = &unk_251E8;
    v89[4] = self;
    v51 = objc_retainBlock(v89);
    v52 = v51;
    if (v50)
    {
      v53 = [NSBundle bundleForClass:objc_opt_class()];
      v77 = [v53 localizedStringForKey:@"ENABLE_SYNC_LIBRARY_REPLACE" value:&stru_25A88 table:@"MusicSettings"];

      v54 = [NSBundle bundleForClass:objc_opt_class()];
      v55 = [v54 localizedStringForKey:@"ENABLE_SYNC_LIBRARY" value:&stru_25A88 table:@"MusicSettings"];
      v56 = +[UIDevice currentDevice];
      v57 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", v55, v77, [v56 sf_isiPad]);

      v58 = [NSBundle bundleForClass:objc_opt_class()];
      v59 = [v58 localizedStringForKey:@"REPLACE" value:&stru_25A88 table:@"MusicSettings"];
      v87[0] = _NSConcreteStackBlock;
      v87[1] = 3221225472;
      v87[2] = sub_BA1C;
      v87[3] = &unk_24E58;
      v88 = v52;
      v60 = [UIAlertAction actionWithTitle:v59 style:2 handler:v87];
      [v57 addAction:v60];

      v61 = [NSBundle bundleForClass:objc_opt_class()];
      v62 = [v61 localizedStringForKey:@"CANCEL" value:&stru_25A88 table:@"MusicSettings"];
      v85[0] = _NSConcreteStackBlock;
      v85[1] = 3221225472;
      v85[2] = sub_BA30;
      v85[3] = &unk_25210;
      v85[4] = self;
      v86 = specifierCopy;
      v63 = [UIAlertAction actionWithTitle:v62 style:1 handler:v85];
      [v57 addAction:v63];

      [(MusicSettingsController *)self presentViewController:v57 animated:1 completion:0];
    }

    else
    {
      (v51[2])(v51, 1);
    }
  }

LABEL_33:
}

- (id)shouldAddPlaylistSongsToMyMusic:(id)music
{
  v3 = +[MPCloudController sharedCloudController];
  v4 = [v3 cloudAddToPlaylistBehavior] != &dword_0 + 2;

  return [NSNumber numberWithBool:v4];
}

- (void)setShouldAddPlaylistSongsToMyMusic:(id)music specifier:(id)specifier
{
  musicCopy = music;
  v6 = +[MPCloudController sharedCloudController];
  bOOLValue = [musicCopy BOOLValue];

  if (bOOLValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_BC80;
  v9[3] = &unk_25148;
  v9[4] = self;
  [v6 setCloudAddToPlaylistBehavior:v8 completionHandler:v9];
}

- (id)shouldAddFavoriteSongsToMyMusic:(id)music
{
  v3 = +[MPCloudController sharedCloudController];
  v4 = [v3 favoriteSongAddToLibraryBehavior] != &dword_0 + 2;

  return [NSNumber numberWithBool:v4];
}

- (void)setShouldAddFavoriteSongsToMyMusic:(id)music specifier:(id)specifier
{
  musicCopy = music;
  v6 = +[MPCloudController sharedCloudController];
  bOOLValue = [musicCopy BOOLValue];

  if (bOOLValue)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_BE20;
  v9[3] = &unk_25148;
  v9[4] = self;
  [v6 setCloudFavoriteSongAddToLibraryBehavior:v8 completionHandler:v9];
}

- (id)useListeningHistory:(id)history
{
  v3 = +[MPPlaybackUserDefaults standardUserDefaults];
  isFocusModePrivateListeningEnabled = [v3 isFocusModePrivateListeningEnabled];

  if (isFocusModePrivateListeningEnabled)
  {
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [isFocusModePrivateListeningEnabled BOOLValue] ^ 1);
  }

  else
  {
    v6 = +[MPPlaybackUserDefaults standardUserDefaults];
    isPrivateListeningEnabled = [v6 isPrivateListeningEnabled];
    v5 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [isPrivateListeningEnabled BOOLValue] ^ 1);
  }

  return v5;
}

- (void)setUseListeningHistory:(id)history specifier:(id)specifier
{
  historyCopy = history;
  v6 = +[MPPlaybackUserDefaults standardUserDefaults];
  [v6 setFocusModePrivateListeningEnabled:0];

  v7 = +[MPPlaybackUserDefaults standardUserDefaults];
  bOOLValue = [historyCopy BOOLValue];

  v9 = [NSNumber numberWithInt:bOOLValue ^ 1];
  [v7 setPrivateListeningEnabled:v9];

  updateVisibleSpecifiers = [(MusicSettingsController *)self updateVisibleSpecifiers];

  _ICSiriPostDynamiteClientStateChangedNotification(updateVisibleSpecifiers);
}

- (id)libraryFooterText
{
  if (self->_accountStatus.isSubscribed && self->_accountStatus.isCloudLibraryEnabled)
  {
    v2 = _os_feature_enabled_impl();
    v3 = [NSBundle bundleForClass:objc_opt_class()];
    v4 = v3;
    if (v2)
    {
      v5 = @"ADD_PLAYLIST_AND_FAVORITE_SONGS_TO_MY_MUSIC_FOOTER";
    }

    else
    {
      v5 = @"ADD_PLAYLIST_SONGS_TO_MY_MUSIC_FOOTER";
    }

    v6 = [v3 localizedStringForKey:v5 value:&stru_25A88 table:@"MusicSettings"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)sharePlayTogetherDiscoverableEnabled:(id)enabled
{
  v3 = MRGroupSessionNearbyContactDiscoveryEnabled();

  return [NSNumber numberWithBool:v3];
}

- (void)setSharePlayTogetherDiscoverableEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];

  _MRSetGroupSessionNearbyContactDiscoveryEnabled(bOOLValue);
}

- (id)motionGroupFooterText
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  v3 = [v2 objectForKey:@"motionMode"];

  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = [v2 integerForKey:@"motionMode"];
  if (!v4)
  {
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"MOTION_FOOTER_OFF";
    goto LABEL_11;
  }

  if (v4 == &dword_0 + 1)
  {
    v6 = +[ICDeviceInfo currentDeviceInfo];
    hasWAPICapability = [v6 hasWAPICapability];
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    if (hasWAPICapability)
    {
      v11 = @"MOTION_FOOTER_WLAN_ONLY";
    }

    else
    {
      v11 = @"MOTION_FOOTER_WIFI_ONLY";
    }

    v12 = [v9 localizedStringForKey:v11 value:&stru_25A88 table:@"MusicSettings"];

    goto LABEL_12;
  }

  if (v4 == &dword_0 + 2)
  {
LABEL_5:
    v5 = [NSBundle bundleForClass:objc_opt_class()];
    v6 = v5;
    v7 = @"MOTION_FOOTER_ON";
LABEL_11:
    v12 = [v5 localizedStringForKey:v7 value:&stru_25A88 table:@"MusicSettings"];
LABEL_12:

    goto LABEL_13;
  }

  v12 = 0;
LABEL_13:

  return v12;
}

- (id)cellularDataGroupFooterText
{
  v3 = +[MPNetworkObserver sharedNetworkObserver];
  isMusicCellularStreamingAllowed = [v3 isMusicCellularStreamingAllowed];

  v5 = +[MPNetworkObserver sharedNetworkObserver];
  isMusicCellularDownloadingAllowed = [v5 isMusicCellularDownloadingAllowed];

  if (isMusicCellularStreamingAllowed)
  {
    v7 = isMusicCellularDownloadingAllowed == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v10 = v9;
    v11 = @"CELLULAR_FOOTER_STREAMING_AND_DOWNLOADS";
    goto LABEL_15;
  }

  if (!isMusicCellularStreamingAllowed)
  {
    if (!isMusicCellularDownloadingAllowed)
    {
      v9 = [NSBundle bundleForClass:objc_opt_class()];
      v10 = v9;
      v11 = @"CELLULAR_FOOTER_ON";
      goto LABEL_15;
    }

    isAuthTokenRequiredForPlayback = self->_accountStatus.isAuthTokenRequiredForPlayback;
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    if (!isAuthTokenRequiredForPlayback)
    {
      v11 = @"CELLULAR_FOOTER_DOWNLOADS_ONLY";
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v8 = self->_accountStatus.isAuthTokenRequiredForPlayback;
  v10 = [NSBundle bundleForClass:objc_opt_class()];
  if (v8)
  {
LABEL_11:
    v11 = @"CELLULAR_FOOTER_ON";
    goto LABEL_14;
  }

  v11 = @"CELLULAR_FOOTER_STREAMING_ONLY";
LABEL_14:
  v9 = v10;
LABEL_15:
  v13 = [v9 localizedStringForKey:v11 value:&stru_25A88 table:@"MusicSettings"];

  return v13;
}

- (id)listeningHistoryFooterText
{
  v3 = +[MPPlaybackUserDefaults standardUserDefaults];
  isFocusModePrivateListeningEnabled = [v3 isFocusModePrivateListeningEnabled];

  if (isFocusModePrivateListeningEnabled)
  {
    bOOLValue = [isFocusModePrivateListeningEnabled BOOLValue];
    v6 = [NSBundle bundleForClass:objc_opt_class()];
    v7 = v6;
    if (bOOLValue)
    {
      v8 = @"USE_LISTENING_HISTORY_OFF_FOCUS_ON_FOOTER";
    }

    else
    {
      v8 = @"USE_LISTENING_HISTORY_ON_FOCUS_ON_FOOTER";
    }

    v15 = [v6 localizedStringForKey:v8 value:&stru_25A88 table:@"MusicSettings"];
  }

  else
  {
    allSpecifiers = [(MusicSettingsController *)self allSpecifiers];
    v7 = [allSpecifiers specifierForID:@"com.apple.Music:PrivateListening"];

    v10 = [(MusicSettingsController *)self useListeningHistory:v7];
    bOOLValue2 = [v10 BOOLValue];

    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = v12;
    if (bOOLValue2)
    {
      v14 = @"USE_LISTENING_HISTORY_ON_FOCUS_OFF_FOOTER";
    }

    else
    {
      v14 = @"USE_LISTENING_HISTORY_OFF_FOCUS_OFF_FOOTER";
    }

    v15 = [v12 localizedStringForKey:v14 value:&stru_25A88 table:@"MusicSettings"];
  }

  return v15;
}

- (id)musicUsageLinkDetailDescription:(id)description
{
  [(PSUsageBundleApp *)self->_musicUsageBundle totalSize];

  return [NSByteCountFormatter stringFromByteCount:v3 countStyle:2];
}

- (id)songTransitionsTitle
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"Song Transitions" value:&stru_25A88 table:@"Localizable"];

  return v3;
}

- (id)songTransitionsDescription:(id)description
{
  v4 = +[MPPlaybackUserDefaults standardUserDefaults];
  v5 = [v4 areTransitionsEnabledForUserWithCatalogPlaybackCapability:self->_accountStatus.isFullCatalogPlaybackCapable];

  if (v5)
  {
    v6 = +[MPPlaybackUserDefaults standardUserDefaults];
    v7 = [v6 transitionStyleForUserWithCatalogPlaybackCapability:self->_accountStatus.isFullCatalogPlaybackCapable];

    v8 = @"AutoMix";
    if (v7 != &dword_0 + 1)
    {
      v8 = 0;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = @"Crossfade";
    }

    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = v10;
    v12 = @"Localizable";
    v13 = v9;
  }

  else
  {
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = v10;
    v13 = @"OFF";
    v12 = @"MusicSettings";
  }

  v14 = [v10 localizedStringForKey:v13 value:&stru_25A88 table:v12];

  return v14;
}

- (void)_areTransitionsEnabledDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C8FC;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (id)lyricsOptions
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  v3 = [v2 stringForKey:@"lyricsOptions"];
  v4 = [v3 componentsSeparatedByString:{@", "}];

  v5 = [NSSet setWithArray:v4];

  return v5;
}

- (id)lyricsDescription:(id)description
{
  lyricsOptions = [(MusicSettingsController *)self lyricsOptions];
  if ([lyricsOptions containsObject:@"3"])
  {
    v4 = @"transliteration";
  }

  else
  {
    v4 = @"default";
  }

  return v4;
}

- (void)setTransliterationPreference:(id)preference specifier:(id)specifier
{
  preferenceCopy = preference;
  lyricsOptions = [(MusicSettingsController *)self lyricsOptions];
  v6 = [lyricsOptions mutableCopy];

  if ([preferenceCopy isEqualToString:@"default"])
  {
    [v6 removeObject:@"3"];
  }

  else if ([preferenceCopy isEqualToString:@"transliteration"])
  {
    [v6 addObject:@"3"];
  }

  [v6 addObject:@"8"];
  v7 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  allObjects = [v6 allObjects];
  v9 = [allObjects componentsJoinedByString:{@", "}];

  [v7 setObject:v9 forKey:@"lyricsOptions"];
}

- (id)homeSharingSignOutButtonLabel
{
  v2 = [NSBundle bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"HOME_SHARING_APPLE_ID_BUTTON" value:&stru_25A88 table:@"MusicSettings"];
  v4 = +[HSAccountStore defaultStore];
  appleID = [v4 appleID];
  v6 = [NSString stringWithFormat:@"%@ %@", v3, appleID];

  return v6;
}

- (id)musicFooterText
{
  v3 = [NSBundle bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APPLE_MUSIC_FOOTER" value:&stru_25A88 table:@"MusicSettings"];
  privacyFlow = [(OBBundle *)self->_onBoardingBundle privacyFlow];
  localizedTitle = [privacyFlow localizedTitle];
  v7 = [NSString stringWithFormat:@"%@ %@", v4, localizedTitle];

  return v7;
}

- (id)musicFooterLinkText
{
  privacyFlow = [(OBBundle *)self->_onBoardingBundle privacyFlow];
  localizedTitle = [privacyFlow localizedTitle];

  return localizedTitle;
}

- (id)mliEntryPointFooter
{
  if (self->_accountStatus.isCloudLibraryEnabled)
  {
    if (self->_mliEntryPointIsEnabled)
    {
      v2 = &OBJC_IVAR___MusicSettingsController__mliEntryPointFooter;
    }

    else
    {
      v2 = &OBJC_IVAR___MusicSettingsController__mliEntryPointFooterInProgress;
    }
  }

  else
  {
    v2 = &OBJC_IVAR___MusicSettingsController__mliEntryPointFooterSyncOff;
  }

  return *&self->MusicSettingsListViewController_opaque[*v2];
}

- (MusicSettingsDynamicFooterHyperlinkAction)musicFooterLinkAction
{
  musicFooterLinkAction = self->_musicFooterLinkAction;
  if (!musicFooterLinkAction)
  {
    v4 = [[MusicSettingsDynamicFooterHyperlinkAction alloc] initWithTarget:self selectorString:@"showPrivacySplashSheet:"];
    v5 = self->_musicFooterLinkAction;
    self->_musicFooterLinkAction = v4;

    musicFooterLinkAction = self->_musicFooterLinkAction;
  }

  return musicFooterLinkAction;
}

- (id)accountModificationsAllowed
{
  v2 = +[MCProfileConnection sharedConnection];
  v3 = [v2 effectiveBoolValueForSetting:MCFeatureAccountModificationAllowed] != 2;

  return [NSNumber numberWithBool:v3];
}

- (id)isDownloadPinsEnabled:(id)enabled
{
  v3 = +[MPCloudController sharedCloudController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isAutomaticDownloadsEnabledForPinnedLibraryEntities]);

  return v4;
}

- (void)setDownloadPinsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[MPCloudController sharedCloudController];
  v6 = v5;
  if (bOOLValue)
  {
    [v5 enableAutomaticDownloadsForPinnedLibraryEntities];
  }

  else
  {
    [v5 disableAutomaticDownloadsForPinnedLibraryEntities];
  }
}

- (id)isAutomaticDownloadsEnabled:(id)enabled
{
  v3 = +[MPCloudController sharedCloudController];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v3 isAutomaticDownloadsEnabled]);

  return v4;
}

- (void)setAutomaticDownloadsEnabled:(id)enabled specifier:(id)specifier
{
  bOOLValue = [enabled BOOLValue];
  v5 = +[MPCloudController sharedCloudController];
  v6 = v5;
  if (bOOLValue)
  {
    [v5 enableAutomaticDownloadsWithCompletionHandler:0];
  }

  else
  {
    [v5 disableAutomaticDownloadsWithCompletionHandler:0];
  }
}

- (id)cellularDataSettingsEnabled
{
  cellularSettingsAvailable = [(MusicSettingsCellularDataController *)self->_cellularDataController cellularSettingsAvailable];

  return [NSNumber numberWithBool:cellularSettingsAvailable];
}

- (id)cellularDataEnabled
{
  cellularDataEnabled = [(MusicSettingsCellularDataController *)self->_cellularDataController cellularDataEnabled];

  return [NSNumber numberWithBool:cellularDataEnabled];
}

- (id)resetMediaLibraryEnabled
{
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"ResetMediaLibraryPreferenceEnabled", @"com.apple.mobileipod", 0);

  return [NSNumber numberWithUnsignedChar:AppBooleanValue];
}

- (id)hasDownloadedMusic
{
  [(PSUsageBundleApp *)self->_musicUsageBundle totalSize];
  if (v2 <= 0.0)
  {
    v3 = &__kCFBooleanFalse;
  }

  else
  {
    v3 = &__kCFBooleanTrue;
  }

  return v3;
}

- (id)hasStarRatings
{
  v2 = +[MPMediaQuery songsQuery];
  v3 = [MPMediaPropertyPredicate predicateWithValue:&off_278F8 forProperty:MPMediaItemPropertyRating comparisonType:101];
  [v2 addFilterPredicate:v3];

  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v2 _hasItems]);

  return v4;
}

- (void)appleMusicSubscribe:(id)subscribe
{
  v4 = [NSURL URLWithString:@"music://subscribe"];
  v3 = +[UIApplication sharedApplication];
  [v3 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)mliEntryPointClicked:(id)clicked
{
  v5 = [NSString stringWithFormat:@"music://%@", self->_mliDeepLink];
  v3 = [NSURL URLWithString:v5];
  v4 = +[UIApplication sharedApplication];
  [v4 openURL:v3 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)mliReviewClicked:(id)clicked
{
  v6 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  v3 = [v6 stringForKey:@"mliReview"];
  v4 = [NSURL URLWithString:v3];
  v5 = +[UIApplication sharedApplication];
  [v5 openURL:v4 options:&__NSDictionary0__struct completionHandler:0];
}

- (void)homeSharingSignInButtonAction:(id)action
{
  v4 = objc_alloc_init(AKAppleIDAuthenticationInAppContext);
  [v4 setIsEphemeral:1];
  [v4 setPresentingViewController:self];
  v5 = [NSBundle bundleForClass:objc_opt_class()];
  v6 = [v5 localizedStringForKey:@"HOME_SHARING" value:&stru_25A88 table:@"MusicSettings"];
  [v4 setReason:v6];

  v7 = objc_alloc_init(AKAppleIDAuthenticationController);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_D544;
  v8[3] = &unk_25288;
  v8[4] = self;
  [v7 authenticateWithContext:v4 completion:v8];
}

- (void)homeSharingSignOutButtonAction:(id)action
{
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"HOME_SHARING_APPLE_ID" value:&stru_25A88 table:@"MusicSettings"];
  v6 = +[HSAccountStore defaultStore];
  appleID = [v6 appleID];
  v8 = [UIAlertController alertControllerWithTitle:v5 message:appleID preferredStyle:1];

  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"CANCEL" value:&stru_25A88 table:@"MusicSettings"];
  v11 = [UIAlertAction actionWithTitle:v10 style:1 handler:0];
  [v8 addAction:v11];

  v12 = [NSBundle bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"HOME_SHARING_SIGN_OUT" value:&stru_25A88 table:@"MusicSettings"];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_DA74;
  v15[3] = &unk_252B0;
  v15[4] = self;
  v14 = [UIAlertAction actionWithTitle:v13 style:0 handler:v15];
  [v8 addAction:v14];

  [(MusicSettingsController *)self presentViewController:v8 animated:1 completion:0];
}

- (void)resetLibrary:(id)library
{
  v4 = +[ML3MusicLibrary autoupdatingSharedLibraryPath];
  v5 = +[MLMediaLibraryService sharedMediaLibraryService];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_DB84;
  v6[3] = &unk_25260;
  v6[4] = self;
  [v5 recreateDatabaseAtPath:v4 withCompletionHandler:v6];
}

- (void)showPrivacySplashSheet:(id)sheet
{
  v4 = [OBPrivacyPresenter presenterForPrivacySplashWithIdentifier:@"com.apple.onboarding.applemusic"];
  [v4 setPresentingViewController:self];
  [v4 present];
}

- (void)_accountStoreChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DE18;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_activeAccountChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DE94;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudAddToPlaylistBehaviorDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DF10;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudServiceStatusCloudLibraryEnabledChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_DF8C;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudServiceStatusMatchStatusDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E008;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudServiceStatusSubscriptionAvailablilityChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E084;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cloudServiceStatusSubscriptionStatusChangedNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E100;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_managedConfigurationEffectiveSettingsDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E17C;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_cellularDownloadsAllowedDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E1F8;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_privateListeningEnabledDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E274;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_storefrontDidChangeNotification:(id)notification
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_E2F0;
  block[3] = &unk_24EF8;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)_reloadAccountStatus
{
  if (self->_overridingAccountStatus)
  {
    return;
  }

  v3 = +[MPCloudServiceStatusController sharedController];
  matchStatus = [v3 matchStatus];
  v5 = +[ICUserIdentityStore defaultIdentityStore];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [v5 DSIDForUserIdentity:v6 outError:0];

  isManagedAppleID = self->_accountStatus.isManagedAppleID;
  v30 = matchStatus;
  musicSubscriptionStatus = [v3 musicSubscriptionStatus];
  v9 = [musicSubscriptionStatus hasCapability:128];

  musicSubscriptionStatus3 = v9 | (matchStatus >> 2) & 1;
  musicPurchasesDisabledForJaliscoLibrary = [(ICCloudClient *)self->_cloudClient musicPurchasesDisabledForJaliscoLibrary];
  musicSubscriptionStatus2 = [v3 musicSubscriptionStatus];
  v12 = [musicSubscriptionStatus2 hasCapability:1];

  if (musicSubscriptionStatus3 == 1)
  {
    v13 = +[MPCloudController sharedCloudController];
    if ([v13 isEnhancedAudioAvailable])
    {
      LODWORD(v29) = MSVDeviceSupportsEnhancedMusic() & v12;
    }

    else
    {
      LOBYTE(v29) = 0;
    }

    BYTE4(v29) = v12;
  }

  else
  {
    v29 = 0;
  }

  isMLIEnabled = self->_accountStatus.isMLIEnabled;
  v27 = v7 != 0;
  isMLIReviewEnabled = self->_accountStatus.isMLIReviewEnabled;
  v15 = +[HSAccountStore defaultStore];
  groupID = [v15 groupID];
  isSubscriptionAvailable = [v3 isSubscriptionAvailable];
  isCloudLibraryEnabled = [v3 isCloudLibraryEnabled];
  v32 = v7;
  if (!musicSubscriptionStatus3)
  {
LABEL_12:
    v18 = musicPurchasesDisabledForJaliscoLibrary ^ 1;
    goto LABEL_13;
  }

  if (([v3 isCloudLibraryEnabled] & 1) == 0)
  {
    if (!self->_accountStatus.isAuthTokenRequiredForPlayback)
    {
      v18 = 0;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v18 = 1;
LABEL_13:
  if (v9)
  {
    musicSubscriptionStatus3 = [v3 musicSubscriptionStatus];
    v19 = [musicSubscriptionStatus3 statusType] == &dword_0 + 3;
  }

  else
  {
    v19 = 0;
  }

  self->_accountStatus.isSignedIn = v27;
  self->_accountStatus.isSignedInToHomeSharing = groupID != 0;
  self->_accountStatus.isMatchSubscribed = (v30 & 4) >> 2;
  self->_accountStatus.isSubscribed = v9;
  self->_accountStatus.isFullCatalogPlaybackCapable = BYTE4(v29);
  self->_accountStatus.isSubscriptionAvailable = isSubscriptionAvailable;
  self->_accountStatus.isCloudLibraryEnabled = isCloudLibraryEnabled;
  self->_accountStatus.isShowingCloudLibrary = 1;
  self->_accountStatus.isManagedAppleID = isManagedAppleID;
  self->_accountStatus.isDownloadSectionVisible = v18;
  self->_accountStatus.isEnhancedAudioAvailable = v29;
  self->_accountStatus.isAuthTokenRequiredForPlayback = v19;
  self->_accountStatus.isMLIEnabled = isMLIEnabled;
  self->_accountStatus.isMLIReviewEnabled = isMLIReviewEnabled;
  if (v9)
  {
  }

  [(MusicSettingsController *)self updateVisibleSpecifiers];
  v20 = +[ICUserIdentityStore defaultIdentityStore];
  v21 = +[ICUserIdentity activeAccount];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_E6EC;
  v35[3] = &unk_25300;
  v38 = isManagedAppleID;
  v22 = v32;
  v36 = v22;
  selfCopy = self;
  [v20 getPropertiesForUserIdentity:v21 completionHandler:v35];

  if (v9)
  {
    v23 = [[ICStoreRequestContext alloc] initWithBlock:&stru_25340];
    v24 = +[ICURLBagProvider sharedBagProvider];
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_E958;
    v33[3] = &unk_25368;
    v34 = isMLIEnabled;
    v33[4] = self;
    [v24 getBagForRequestContext:v23 withCompletionHandler:v33];
  }
}

- (void)_determineMLIStatus
{
  v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  allSpecifiers = [(MusicSettingsController *)self allSpecifiers];
  v5 = [allSpecifiers specifierForID:@"com.apple.Music:MLI"];

  [v3 doubleForKey:@"mliSessionStartDate"];
  if (v6 != 0.0 && self->_mliReviewDurationInDays)
  {
    v7 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];
    if (v7)
    {
      v8 = objc_opt_new();
      [v8 setDay:{-[NSNumber longValue](self->_mliReviewDurationInDays, "longValue")}];
      v9 = +[NSCalendar currentCalendar];
      v10 = [v9 dateByAddingComponents:v8 toDate:v7 options:0];

      v11 = +[NSDate now];
      v12 = [v10 earlierDate:v11];

      if (v12 == v10)
      {
        [(MusicSettingsController *)self _resetMLIStatus];
      }
    }
  }

  v13 = [v3 stringForKey:@"mliSessionID"];
  if (v13)
  {
    v14 = [v3 BOOLForKey:@"mliDidCompleteTransfer"];
  }

  else
  {
    v14 = 1;
  }

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_EF0C;
  v17[3] = &unk_25390;
  v20 = v14;
  v17[4] = self;
  v18 = v5;
  v19 = v3;
  v15 = v3;
  v16 = v5;
  dispatch_async(&_dispatch_main_q, v17);
}

- (void)_resetMLIStatus
{
  v2 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.Music"];
  [v2 setValue:0 forKey:@"mliSessionID"];
  [v2 setValue:0 forKey:@"mliReview"];
  [v2 setValue:0 forKey:@"mliSessionStartDate"];
  [v2 setValue:0 forKey:@"mliDidDismiss"];
  [v2 setValue:0 forKey:@"mliDidCompleteTransfer"];
}

- (void)_debugTap:(id)tap
{
  tapCopy = tap;
  v5 = +[UIDevice currentDevice];
  sf_isInternalInstall = [v5 sf_isInternalInstall];

  if (sf_isInternalInstall && [tapCopy state] == &dword_0 + 3)
  {
    v7 = +[UIDevice currentDevice];
    v8 = +[UIAlertController alertControllerWithTitle:message:preferredStyle:](UIAlertController, "alertControllerWithTitle:message:preferredStyle:", @"Override account status", 0, [v7 sf_isiPad]);

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_F784;
    v35[3] = &unk_252B0;
    v35[4] = self;
    v9 = [UIAlertAction actionWithTitle:@"Signed In" style:0 handler:v35];
    [v9 _setChecked:self->_accountStatus.isSignedIn];
    [v8 addAction:v9];

    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_F7B8;
    v34[3] = &unk_252B0;
    v34[4] = self;
    v10 = [UIAlertAction actionWithTitle:@"Signed In Home Sharing" style:0 handler:v34];
    [v10 _setChecked:self->_accountStatus.isSignedInToHomeSharing];
    [v8 addAction:v10];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_F7F0;
    v33[3] = &unk_252B0;
    v33[4] = self;
    v11 = [UIAlertAction actionWithTitle:@"Match Subscribed" style:0 handler:v33];
    [v11 _setChecked:self->_accountStatus.isMatchSubscribed];
    [v8 addAction:v11];

    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_F828;
    v32[3] = &unk_252B0;
    v32[4] = self;
    v12 = [UIAlertAction actionWithTitle:@"Fuse Available" style:0 handler:v32];
    [v12 _setChecked:self->_accountStatus.isSubscriptionAvailable];
    [v8 addAction:v12];

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_F860;
    v31[3] = &unk_252B0;
    v31[4] = self;
    v13 = [UIAlertAction actionWithTitle:@"Fuse Subscribed" style:0 handler:v31];
    [v13 _setChecked:self->_accountStatus.isFullCatalogPlaybackCapable];
    [v8 addAction:v13];

    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_F898;
    v30[3] = &unk_252B0;
    v30[4] = self;
    v14 = [UIAlertAction actionWithTitle:@"Protected Content Playback Subscribed" style:0 handler:v30];
    [v14 _setChecked:self->_accountStatus.isAuthTokenRequiredForPlayback];
    [v8 addAction:v14];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_F8D0;
    v29[3] = &unk_252B0;
    v29[4] = self;
    v15 = [UIAlertAction actionWithTitle:@"Enhanced Audio Available" style:0 handler:v29];
    [v15 _setChecked:self->_accountStatus.isEnhancedAudioAvailable];
    [v8 addAction:v15];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_F908;
    v28[3] = &unk_252B0;
    v28[4] = self;
    v16 = [UIAlertAction actionWithTitle:@"Cloud Library Enabled" style:0 handler:v28];
    [v16 _setChecked:self->_accountStatus.isCloudLibraryEnabled];
    [v8 addAction:v16];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_F940;
    v27[3] = &unk_252B0;
    v27[4] = self;
    v17 = [UIAlertAction actionWithTitle:@"Should Show Downloads Section" style:0 handler:v27];
    [v17 _setChecked:self->_accountStatus.isDownloadSectionVisible];
    [v8 addAction:v17];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_F978;
    v26[3] = &unk_252B0;
    v26[4] = self;
    v18 = [UIAlertAction actionWithTitle:@"Managed Apple Account" style:0 handler:v26];
    [v18 _setChecked:self->_accountStatus.isManagedAppleID];
    [v8 addAction:v18];

    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_F9B0;
    v25[3] = &unk_252B0;
    v25[4] = self;
    v19 = [UIAlertAction actionWithTitle:@"Transfer Music Enabled" style:0 handler:v25];
    [v19 _setChecked:self->_accountStatus.isMLIEnabled];
    [v8 addAction:v19];

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_F9E8;
    v24[3] = &unk_252B0;
    v24[4] = self;
    v20 = [UIAlertAction actionWithTitle:@"Review Alternates Enabled" style:0 handler:v24];
    [v20 _setChecked:self->_accountStatus.isMLIReviewEnabled];
    [v8 addAction:v20];

    if (self->_overridingAccountStatus)
    {
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_FA20;
      v23[3] = &unk_252B0;
      v23[4] = self;
      v21 = [UIAlertAction actionWithTitle:@"Remove Overrides" style:2 handler:v23];
      [v8 addAction:v21];
    }

    v22 = [UIAlertAction actionWithTitle:@"Cancel" style:1 handler:0];
    [v8 addAction:v22];

    [(MusicSettingsController *)self presentViewController:v8 animated:1 completion:0];
  }
}

- (void)_internalTap:(id)tap
{
  v4 = +[UIDevice currentDevice];
  sf_isInternalInstall = [v4 sf_isInternalInstall];

  if (sf_isInternalInstall)
  {
    self->_showInternalSettings ^= 1u;
    [(MusicSettingsController *)self updateVisibleSpecifiers];
    if (self->_showInternalSettings)
    {
      specifiers = [(MusicSettingsController *)self specifiers];
      v7 = [specifiers specifierForID:@"com.apple.Music:InternalGroup"];
      v8 = [(MusicSettingsController *)self indexPathForSpecifier:v7];

      [*&self->MusicSettingsListViewController_opaque[OBJC_IVAR___PSListController__table] scrollToRowAtIndexPath:v8 atScrollPosition:1 animated:1];
    }
  }
}

- (id)shouldShowRegulatorySection
{
  allKeys = [&off_27A38 allKeys];
  v3 = +[NSLocale currentLocale];
  regionCode = [v3 regionCode];
  lowercaseString = [regionCode lowercaseString];
  v6 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [allKeys containsObject:lowercaseString]);

  return v6;
}

- (void)showRegulatoryWebPage:(id)page
{
  v4 = +[NSLocale currentLocale];
  regionCode = [v4 regionCode];
  lowercaseString = [regionCode lowercaseString];

  v6 = [&off_27A38 objectForKeyedSubscript:lowercaseString];
  if (v6)
  {
    v7 = [NSString stringWithFormat:@"https://www.apple.com/%@/legal/online-safety/", v6];
    v8 = [SFSafariViewController alloc];
    v9 = [NSURL URLWithString:v7];
    v10 = [v8 initWithURL:v9];

    [v10 setModalPresentationStyle:2];
    [(MusicSettingsController *)self presentViewController:v10 animated:1 completion:0];
  }
}

@end