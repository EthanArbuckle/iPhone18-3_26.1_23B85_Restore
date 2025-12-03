@interface HOHomeInternalSettingsController
- (id)_legacyCameraDefaultsExist;
- (id)createHomeEnergyPreferences;
- (id)gridForecastErrorWithSpecifier:(id)specifier;
- (id)specifiers;
- (void)_removeLegacyCameraDefaults:(id)defaults;
- (void)_resetAccessCodeOnboarding:(id)onboarding;
- (void)_resetAccessoryFirmwareUpdateOnboarding:(id)onboarding;
- (void)_resetAnnounceOnboarding:(id)onboarding;
- (void)_resetCameraRecordingOnboarding:(id)onboarding;
- (void)_resetHomeEnergyCache:(id)cache;
- (void)_resetHomeTheaterOnboarding:(id)onboarding;
- (void)_resetIdentifyVoiceOnboarding:(id)onboarding;
- (void)_resetNaturalLightingOnboarding:(id)onboarding;
- (void)_resetNeedsRedesignMigration:(id)migration;
- (void)_resetNewFeaturesOnboarding:(id)onboarding;
- (void)_resetTVViewingProfilesOnboarding:(id)onboarding;
- (void)_resetUtilityOnboarding:(id)onboarding;
- (void)_resetWalletKeyExpressModeOnboarding:(id)onboarding;
- (void)_setGridForecastError:(unint64_t)error;
- (void)setGridForecastError:(id)error withSpecifier:(id)specifier;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
@end

@implementation HOHomeInternalSettingsController

- (id)specifiers
{
  v3 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v90 = OBJC_IVAR___PSListController__specifiers;
    v4 = objc_alloc_init(NSMutableArray);
    v5 = [PSSpecifier groupSpecifierWithName:@"General"];
    v6 = PSFooterTextGroupKey;
    v91 = PSFooterTextGroupKey;
    [v5 setProperty:@"Toggling these settings will kill the Home app." forKey:PSFooterTextGroupKey];
    [v4 addObject:v5];
    v7 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force Non-Internal Install Behavior" key:HFForceNonInternalInstallBehaviorKey];
    *&v7[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v7];
    v8 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Hide Quick Controls" key:HFHideQuickControlsKey];

    *&v8[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v8];
    v9 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Debug UI" key:HFPreferencesEnableDebugUI];

    *&v9[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v9];
    v10 = [PSSpecifier groupSpecifierWithName:@"App Onboarding"];

    v89 = +[NSMutableString string];
    [v89 appendString:{@"• If First Time User, Home will show the Welcome screen.\n"}];
    [v89 appendString:{@"• If New features, Home will show the  What's New? screen.\n"}];
    [v89 appendString:{@"• If Name migration, Home will show the Name migration screen.\n"}];
    [v89 appendString:{@"• If Migrate to Home, Home will migrate the primary home, if there is one.\n"}];
    [v89 appendString:@"\nSee https://confluence.sd.apple.com/x/-jusMg for documentation on how App Onboarding should work."];
    [v10 setProperty:v89 forKey:v6];
    [v4 addObject:v10];
    v11 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Welcome/First Time User" key:HFForceFirstTimeOnboardingKey];

    *&v11[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v11];
    v12 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"New Features" key:HFForceNewFeaturesOnboardingKey];

    *&v12[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v12];
    v13 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Migrate User" key:HFForceMigrationOnboardingKey];

    *&v13[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v13];
    v14 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show All Tips" key:HFForceTipsOnboardingKey];

    *&v14[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v14];
    v15 = [PSSpecifier groupSpecifierWithName:@"Redesign"];

    [v4 addObject:v15];
    v16 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Invert Cell Tap" key:HFInvertCellTapsKey];

    *&v16[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v16];
    v17 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Wallpaper Transition" key:HFWallpaperTransitionKey];

    *&v17[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v17];
    v18 = [(HOHomeInternalSettingsController *)self ho_globalEditTextSpecifierWithName:@"Grid Cell Title Label Max Line Count" key:HFGridCellTitleLabelMaxLineCountKey];

    *&v18[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    *&v18[OBJC_IVAR___PSSpecifier_textFieldType] = 2;
    [v4 addObject:v18];
    v19 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Hide Banners" key:HFHideBannersKey];

    *&v19[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v19];
    v20 = [PSSpecifier groupSpecifierWithName:@"Native Matter"];

    [v4 addObject:v20];
    v21 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force Native Matter" key:HFPreferencesForceNativeMatterKey];

    *&v21[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v21];
    v22 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force New Accessory Details" key:HFPreferencesForceNewAccessoryDetailsKey];

    *&v22[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v22];
    v23 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show All Service Areas" key:HFPreferencesShowAllServiceAreasKey];

    *&v23[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v23];
    v24 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Always Show Identify" key:HFPreferencesAlwaysShowIdentifyKey];

    *&v24[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v24];
    v25 = [PSSpecifier groupSpecifierWithName:@"Feature Onboarding"];

    [v25 setProperty:@"Toggling these settings will kill the Home app." forKey:v91];
    [v4 addObject:v25];
    v26 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Switch Homes Welcome" key:HFForceSwitchHomeWelcomeOnboardingKey];

    *&v26[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v26];
    v27 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Owner Must Upgrade'" key:HFForceOwnerMustUpgradeOnboardingKey];

    *&v27[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v27];
    v28 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Home Hub Migration Visible'" key:HFForceHomeHubMigrationBannerVisibleKey];

    *&v28[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v28];
    v29 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Devices Must Upgrade'" key:HKForceDevicesNeedUpgradeKey];

    *&v29[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v29];
    v30 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Natural Lighting Onboarding'" key:HFForceNaturalLightingOnboardingKey];

    *&v30[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v30];
    v31 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Safety And Security Onboarding'" key:HFForceSafetyAndSecurityOnboardingKey];

    *&v31[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v31];
    v32 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Firmware Update Onboarding'" key:HFForceAccessoryFirmwareUpdateOnboardingKey];

    *&v32[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v32];
    v33 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Accessory Analytics Onboarding'" key:HFForceAccessoryAnalyticsOnboardingKey];

    *&v33[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v33];
    v34 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force 'Utility Onboarding'" key:HFForceUtilityOnboardingKey];

    *&v34[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v34];
    v35 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Identify Voice Onboarding" selector:"_resetIdentifyVoiceOnboarding:"];

    [v4 addObject:v35];
    v36 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Announce Onboarding" selector:"_resetAnnounceOnboarding:"];

    [v4 addObject:v36];
    v37 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Home Theater Onboarding" selector:"_resetHomeTheaterOnboarding:"];

    [v4 addObject:v37];
    v38 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset TV Viewing Profiles Onboarding" selector:"_resetTVViewingProfilesOnboarding:"];

    [v4 addObject:v38];
    v39 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Natural Lighting Onboarding" selector:"_resetNaturalLightingOnboarding:"];

    [v4 addObject:v39];
    v40 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Camera Recording Onboarding" selector:"_resetCameraRecordingOnboarding:"];

    [v4 addObject:v40];
    v41 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Wallet Key Express Mode Onboarding" selector:"_resetWalletKeyExpressModeOnboarding:"];

    [v4 addObject:v41];
    v42 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Access Code Onboarding" selector:"_resetAccessCodeOnboarding:"];

    [v4 addObject:v42];
    v43 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Firmware Update Onboarding" selector:"_resetAccessoryFirmwareUpdateOnboarding:"];

    [v4 addObject:v43];
    v44 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Utility Onboarding" selector:"_resetUtilityOnboarding:"];

    [v4 addObject:v44];
    v45 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Use Fake Feature Onboarding Settings" key:HKFakeFeatureOnboardingSettingsKey];

    *&v45[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v45];
    v46 = [PSSpecifier groupSpecifierWithName:@"Software Update"];

    [v46 setProperty:@"Toggling these settings will kill the Home app." forKey:v91];
    [v4 addObject:v46];
    v47 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Fake License Version Agreement nil" key:HFPreferencesFakeSoftwareUpdateLicenseAgreementVersionNilKey];

    *&v47[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v47];
    v48 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Always Show License Agreement" key:HFPreferencesAlwaysShowTermsAndConditionsForSoftwareUpdateKey];

    *&v48[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v48];
    v49 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Unmark all accepted License Agreements" key:HFPreferencesRemoveAllSoftwareUpdateLicenseVersionsFromHomeKey];

    *&v49[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v49];
    createHomeEnergyPreferences = [(HOHomeInternalSettingsController *)self createHomeEnergyPreferences];
    [v4 addObjectsFromArray:createHomeEnergyPreferences];

    v51 = [PSSpecifier groupSpecifierWithName:@"WHA"];

    [v51 setProperty:@"Whole House Audio" forKey:v91];
    [v51 setProperty:@"Toggling these settings will kill SpringBoard and the Home app." forKey:v91];
    [v4 addObject:v51];
    v52 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable WHA Quick Control" key:HFPreferencesDemoPlaybackControlsKey];

    *&v52[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v52];
    v53 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show 'Export Analytics' button" key:HFPreferencesExposeCollectSysdiagnoseButtonForHomePodKey];

    *&v53[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v4 addObject:v53];
    v54 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Internal Debugging" key:HFPreferencesInternalDebuggingEnabledKey];

    *&v54[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v54];
    v55 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable 'Identify HomePod' Button" key:HFPreferenceIdentifyHomePodButtonEnabledKey];

    *&v55[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v55];
    v56 = [PSSpecifier groupSpecifierWithName:@"Performance"];

    [v56 setProperty:@"Performance" forKey:v91];
    [v56 setProperty:@"Toggling this setting will kill SpringBoard and the Home app." forKey:v91];
    [v4 addObject:v56];
    v57 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Reads Complete Tracking" key:HFPreferencesReadsCompleteTrackingKey];

    *&v57[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v57];
    v58 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Detailed Signpost Logging" key:HFEnableDetailedSignpostLoggingKey];

    *&v58[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v58];
    v59 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show Fake Content" key:HFEnableShowFakeContentForPerformanceKey];

    *&v59[OBJC_IVAR___PSSpecifier_setter] = "setKillSpringBoardAndHomeForSpecifierValue:specifier:";
    [v4 addObject:v59];
    v60 = HFPerformanceUpgradeTitles();
    v92[0] = _NSConcreteStackBlock;
    v92[1] = 3221225472;
    v92[2] = sub_612C;
    v92[3] = &unk_10870;
    v61 = v4;
    v93 = v61;
    selfCopy = self;
    [v60 enumerateKeysAndObjectsUsingBlock:v92];

    v62 = [PSSpecifier groupSpecifierWithName:@"Demo Mode"];

    [v62 setProperty:@"Demo Mode" forKey:v91];
    [v62 setProperty:@"Toggling these settings will kill the Home app." forKey:v91];
    [v61 addObject:v62];
    v63 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Demo Mode" key:HFEnablePressDemoModeKey];

    *&v63[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v63];
    v64 = [PSSpecifier groupSpecifierWithName:@"Errors"];

    [v64 setProperty:@"Errors" forKey:v91];
    [v64 setProperty:@"Toggling this setting will kill the Home App." forKey:v91];
    [v61 addObject:v64];
    v65 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Suppress all errors for demos" key:HFSuppressAllErrorsForDemoKey];

    *&v65[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v65];
    v66 = [PSSpecifier groupSpecifierWithName:@"Cameras"];

    [v66 setProperty:@"Cameras" forKey:v91];
    [v66 setProperty:@"Toggling any setting will kill the Home app." forKey:v91];
    [v61 addObject:v66];
    v67 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Purge Poster Frame Image Cache" key:HFPurgePosterFrameCacheOnLoadKey];

    *&v67[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v67];
    v68 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Purge Video File Cache" key:HFPurgeVideoFileCacheOnLoadKey];

    *&v68[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v68];
    v69 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Disable Hero Frame Downloads" key:HFDisableHeroFrameDownloadsKey];

    *&v69[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v69];
    v70 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Enable Internal Views" key:HFEnableCameraInternalViewsKey];

    *&v70[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v70];
    v71 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Cache Scrubber Time Scale" key:HFShouldCacheScrubberTimeScaleKey];

    *&v71[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v71];
    v72 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Treat All Clips as Unanalyzed" key:HFTreatAllClipsAsUnanalyzedKey];

    *&v72[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v72];
    v73 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Mark Cached Video As Green" key:HFMarkCachedVideoAsGreenInTimelineKey];

    *&v73[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v73];
    v74 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Disable Full Quality Video Caching" key:HFDisableFullQualityVideoCachingKey];

    *&v74[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v74];
    v75 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Remove Legacy Camera Defaults" selector:"_removeLegacyCameraDefaults:"];

    _legacyCameraDefaultsExist = [(HOHomeInternalSettingsController *)self _legacyCameraDefaultsExist];
    [v75 setProperty:_legacyCameraDefaultsExist forKey:@"enabled"];

    [v61 addObject:v75];
    v77 = [PSSpecifier groupSpecifierWithName:@"Migration"];

    [v77 setProperty:@"This will silently re-migrate your service names." forKey:v91];
    [v61 addObject:v77];
    v78 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Force Redesign migration on next launch" selector:"_resetNeedsRedesignMigration:"];

    [v61 addObject:v78];
    v79 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force Name Migration Again" key:HFForceAccessoryNamingMigrationKey];

    *&v79[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v79];
    v80 = [PSSpecifier groupSpecifierWithName:@"Store"];

    [v80 setProperty:@"Toggling any setting will kill the Home app." forKey:v91];
    [v61 addObject:v80];
    v81 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Use Staging URL" key:HFForceStoreUseStagingURLKey];

    *&v81[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v81];
    v82 = [(HOHomeInternalSettingsController *)self ho_globalEditTextSpecifierWithName:@"Staging URL" key:HFStoreStagingURLStringKey];

    *&v82[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v82];
    v83 = [PSSpecifier groupSpecifierWithName:@"Installation Guide"];

    [v83 setProperty:@"Toggling any setting will kill the Home app." forKey:v91];
    [v61 addObject:v83];
    v84 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Use Staging URL" key:HFForceInstallationGuideUseStagingURLKey];

    *&v84[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v84];
    v85 = [(HOHomeInternalSettingsController *)self ho_globalEditTextSpecifierWithName:@"Staging URL" key:HFStoreInstallationGuideStagingURLStringKey];

    *&v85[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
    [v61 addObject:v85];
    v86 = *&self->PSListController_opaque[v90];
    *&self->PSListController_opaque[v90] = v61;
    v87 = v61;

    v3 = *&self->PSListController_opaque[v90];
  }

  return v3;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  if ([cellCopy tag] == &dword_8)
  {
    editableTextField = [cellCopy editableTextField];
    [editableTextField setTextAlignment:2];

    editableTextField2 = [cellCopy editableTextField];
    [editableTextField2 setReturnKeyType:9];
  }
}

- (void)_resetIdentifyVoiceOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetIdentifyVoiceOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetAnnounceOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetAnnounceOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetHomeTheaterOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetHomeTheaterOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetTVViewingProfilesOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetTVViewingProfilesOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetNaturalLightingOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetNaturalLightingOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetNewFeaturesOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetHomeTheaterOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetCameraRecordingOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetCameraRecordingOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetWalletKeyExpressModeOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetWalletKeyExpressModeOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetAccessCodeOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetAccessCodeOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetAccessoryFirmwareUpdateOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetAccessoryFirmwareUpdateOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetNeedsRedesignMigration:(id)migration
{
  CFPreferencesSetAppValue(HFResetRedesignMigrationKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_removeLegacyCameraDefaults:(id)defaults
{
  v4 = HFLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "Removing legacy camera defaults", buf, 2u);
  }

  v5 = [NSUserDefaults alloc];
  v6 = [v5 initWithSuiteName:HFHomeDomain];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  _legacyCameraDefaultKeys = [objc_opt_class() _legacyCameraDefaultKeys];
  v8 = [_legacyCameraDefaultKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(_legacyCameraDefaultKeys);
        }

        [v6 removeObjectForKey:*(*(&v12 + 1) + 8 * v11)];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [_legacyCameraDefaultKeys countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }

  [(HOHomeInternalSettingsController *)self reloadSpecifiers];
}

- (id)_legacyCameraDefaultsExist
{
  v2 = [NSUserDefaults alloc];
  v3 = [v2 initWithSuiteName:HFHomeDomain];
  _legacyCameraDefaultKeys = [objc_opt_class() _legacyCameraDefaultKeys];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_68D8;
  v10[3] = &unk_10898;
  v11 = v3;
  v5 = v3;
  v6 = [_legacyCameraDefaultKeys na_any:v10];

  if (v6)
  {
    v7 = &__kCFBooleanTrue;
  }

  else
  {
    v7 = &__kCFBooleanFalse;
  }

  v8 = v7;

  return v7;
}

- (void)_resetUtilityOnboarding:(id)onboarding
{
  CFPreferencesSetAppValue(HFResetUtilityOnboardingKey, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_resetHomeEnergyCache:(id)cache
{
  CFPreferencesSetAppValue(HFPreferencesResetHomeEnergyDCache, kCFBooleanTrue, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (void)_setGridForecastError:(unint64_t)error
{
  v4 = HFPreferencesGridForecastError;
  v5 = [NSNumber numberWithUnsignedInteger:error];
  CFPreferencesSetAppValue(v4, v5, HFHomeDomain);

  [(HOHomeInternalSettingsController *)self ho_killHome];
}

- (id)createHomeEnergyPreferences
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [PSSpecifier groupSpecifierWithName:@"Home Energy"];
  v5 = +[NSMutableString string];
  [v5 appendString:@"Toggling these settings will kill the Home app.\n"];
  [v5 appendString:{@"• If toggling energy windows, reset energy cache\n"}];
  [v4 setProperty:v5 forKey:PSFooterTextGroupKey];
  [v3 addObject:v4];
  v6 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show Tap-to-Radar in Grid Forecast" key:HFPreferencesTapToRadarForGridForecast domain:HFHomeEnergyUIDomain];
  *&v6[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v6];
  v7 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Show Double Pane Energy Forecast" key:HFPreferencesShowDoublePaneEnergyForecastKey];

  *&v7[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v7];
  v8 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Force Show Home Energy Features" key:HFPreferencesForceShowHomeEnergyFeaturesKey];

  *&v8[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v8];
  v9 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"No Clean Energy Windows" key:HFPreferencesShowCleanEnergyForecastNoneKey];

  *&v9[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v9];
  v10 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Clean Energy Window for 4H" key:HFPreferencesShowCleanEnergyForecastNowKey];

  *&v10[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v10];
  v11 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Clean Energy Window soon" key:HFPreferencesShowCleanEnergyForecastSoonKey];

  *&v11[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v11];
  v12 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Clean Energy Window in 2H" key:HFPreferencesShowCleanEnergyForecastFutureKey];

  *&v12[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v12];
  v13 = [(HOHomeInternalSettingsController *)self ho_globalSwitchSpecifierWithName:@"Past Clean Energy Window" key:HFPreferencesShowCleanEnergyForecastPastKey];

  *&v13[OBJC_IVAR___PSSpecifier_setter] = "setKillHomeForSpecifierValue:specifier:";
  [v3 addObject:v13];
  v14 = [(HOHomeInternalSettingsController *)self ho_globalButtonSpecifierWithName:@"Reset Energy Cache" selector:"_resetHomeEnergyCache:"];

  [v3 addObject:v14];
  v15 = [PSSpecifier preferenceSpecifierNamed:@"Grid Forecast Error" target:self set:"setGridForecastError:withSpecifier:" get:"gridForecastErrorWithSpecifier:" detail:objc_opt_class() cell:2 edit:0];

  [v15 setValues:&off_11F30 titles:&off_11F48];
  [v3 addObject:v15];

  return v3;
}

- (void)setGridForecastError:(id)error withSpecifier:(id)specifier
{
  intValue = [error intValue];

  [(HOHomeInternalSettingsController *)self _setGridForecastError:intValue];
}

- (id)gridForecastErrorWithSpecifier:(id)specifier
{
  _gridForecastError = [(HOHomeInternalSettingsController *)self _gridForecastError];

  return [NSNumber numberWithUnsignedInteger:_gridForecastError];
}

@end