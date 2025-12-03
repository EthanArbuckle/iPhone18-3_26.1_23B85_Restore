@interface AUSystemSettingsSpecifiersProvider
+ (BOOL)isServiceRestricted:(id)restricted;
+ (OS_dispatch_queue)_bbObserverQueue;
- (AUSystemSettingsSpecifiersProvider)initWithApplicationBundleIdentifier:(id)identifier;
- (AUSystemSettingsSpecifiersProviderDelegate)delegate;
- (BOOL)_accountModificationDisabledByRestrictions;
- (BOOL)_isAppClip;
- (BOOL)_isBackgroundAppRefreshAllowed;
- (BOOL)_isWirelessDataRestricted;
- (BOOL)_supportsAlarmKit;
- (BOOL)_supportsAlarmKitForBundleID:(id)d;
- (BOOL)_supportsBackgroundAppRefresh;
- (BOOL)_supportsJournalingSuggestions;
- (BOOL)_supportsLiveActivities;
- (BOOL)_supportsLiveActivitiesFrequentUpdates;
- (BOOL)getLearnedRoutesAccess:(int *)access visitHistoryAccess:(int *)historyAccess fromDetails:(id)details serviceKey:(id)key;
- (BOOL)getMulticastAllowed:(BOOL *)allowed;
- (BOOL)shouldShowPasteboardSpecifier;
- (id)_accountsCount:(id)count;
- (id)_downloadsFolderTitle;
- (id)_journalingSuggestionsSpecifiers;
- (id)accessoriesSpecifier;
- (id)accountsSpecifier;
- (id)alarmKitSpecifier;
- (id)assistantSpecifiers;
- (id)authLevelStringForStatus:(unint64_t)status learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess;
- (id)backgroundAppRefreshSpecifier;
- (id)calendarSpecifiers;
- (id)contactlessNFCSideButtonSpecifiers;
- (id)contactlessNFCSpecifiers;
- (id)contactsServicesSpecifier;
- (id)dataUsageWorkspaceInfo;
- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)block getter:(SEL)getter setter:(SEL)setter title:(id)title;
- (id)defaultBrowser:(id)browser;
- (id)defaultBrowserSpecifier;
- (id)defaultMailApp:(id)app;
- (id)defaultMailAppSpecifier;
- (id)documentSource:(id)source;
- (id)documentsSpecifier;
- (id)downloadsSpecifiers;
- (id)driverKitSpecifiers;
- (id)exposureSpecifiersWithTCCServiceLookup:(id)lookup;
- (id)familyControlsSpecifier;
- (id)getDoubleClickForNFC:(id)c;
- (id)getNudityDetectionEnabledValue;
- (id)getTapToPayDiagnosticsEnabled:(id)enabled;
- (id)identityVerificationSpecifiers;
- (id)isAlarmKitEnabled:(id)enabled;
- (id)isBackgroundRefreshEnabled:(id)enabled;
- (id)isFamilyControlsEnabled:(id)enabled;
- (id)isIdentityVerificationAllowOnWebsitesEnabled:(id)enabled;
- (id)isLiveActivitiesEnabled:(id)enabled;
- (id)isLocalNetworkEnabled:(id)enabled;
- (id)isTapToPayAlwaysPlaySoundEnabled:(id)enabled;
- (id)isTapToPayScreenLockEnabled:(id)enabled;
- (id)liveActivitiesSpecifier;
- (id)locationServicesSpecifier;
- (id)locationStatus:(id)status;
- (id)networkServicesSpecifier;
- (id)notificationSpecifier;
- (id)nudityDetectionSpeicier;
- (id)pasteboardAccessForSpecifier:(id)specifier;
- (id)pasteboardSpecifier;
- (id)pathRuleForBundleID:(id)d create:(BOOL)create;
- (id)photosServicesSpecifier;
- (id)preferredLanguage:(id)language;
- (id)preferredLanguageSpecifier;
- (id)privacyAccessForSpecifier:(id)specifier;
- (id)privacySpecifierForService:(__CFString *)service tccServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)privacySpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)searchSpecifiers;
- (id)specifiers;
- (id)specifiersForPolicyOptions:(unint64_t)options force:(BOOL)force;
- (id)tapToPayAlwaysPlaySoundSpecifiers;
- (id)tapToPayEnableDiagnostics;
- (id)tapToPayScreenLockSpecifiers;
- (id)trackingSpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides;
- (id)walletSpecifierWithTCCServiceLookup:(id)lookup;
- (id)wirelessDataSpecifierWithAppName:(id)name;
- (int64_t)_getAuthorizationRecordsStatus;
- (void)_handleAddAccountButtonAction:(id)action;
- (void)_updateDownloadsFolderTitle;
- (void)monitoredStoreDidChange:(id)change;
- (void)observer:(id)observer updateSectionInfo:(id)info;
- (void)reloadSpecifiers;
- (void)saveNetworkConfiguration;
- (void)setAlarmKitEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setBackgroundRefreshEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setDefaultBrowser:(id)browser specifier:(id)specifier;
- (void)setDefaultMailApp:(id)app specifier:(id)specifier;
- (void)setDoubleClickForNFC:(id)c specifier:(id)specifier;
- (void)setFamilyControlsEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setIdentityVerificationAllowOnWebsitesEnabled:(id)enabled specifier:(id)specifier;
- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier;
- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier;
- (void)setPasteboardAccess:(id)access forSpecifier:(id)specifier;
- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier;
- (void)setTapToPayAlwaysPlaySoundEnabled:(id)enabled specifier:(id)specifier;
- (void)setTapToPayDiagnosticsEnabled:(id)enabled specifier:(id)specifier;
- (void)setTapToPayScreenLockEnabled:(id)enabled specifier:(id)specifier;
- (void)setupNetworkConfiguration;
@end

@implementation AUSystemSettingsSpecifiersProvider

- (AUSystemSettingsSpecifiersProvider)initWithApplicationBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v24.receiver = self;
  v24.super_class = AUSystemSettingsSpecifiersProvider;
  v5 = [(AUSystemSettingsSpecifiersProvider *)&v24 init];
  if (v5)
  {
    v6 = [identifierCopy copy];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v6;

    v8 = objc_alloc(MEMORY[0x277CF3550]);
    _bbObserverQueue = [objc_opt_class() _bbObserverQueue];
    v10 = [v8 initWithQueue:_bbObserverQueue];
    bbObserver = v5->__bbObserver;
    v5->__bbObserver = v10;

    [(BBObserver *)v5->__bbObserver setObserverFeed:512];
    [(BBObserver *)v5->__bbObserver setDelegate:v5];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v13 = *MEMORY[0x277CB8E18];
    mEMORY[0x277D3F940] = [MEMORY[0x277D3F940] sharedEnumerator];
    monitoredAccountStore = [mEMORY[0x277D3F940] monitoredAccountStore];
    [defaultCenter addObserver:v5 selector:sel_monitoredStoreDidChange_ name:v13 object:monitoredAccountStore];

    if (initWithApplicationBundleIdentifier__onceToken != -1)
    {
      [AUSystemSettingsSpecifiersProvider initWithApplicationBundleIdentifier:];
    }
  }

  v16 = objc_alloc_init(MEMORY[0x277CFF210]);
  identitySettingsProvider = v5->_identitySettingsProvider;
  v5->_identitySettingsProvider = v16;

  v5->_showIdentityDocumentProviderExtension = 0;
  v18 = v5->_identitySettingsProvider;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)v5 applicationBundleIdentifier];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __74__AUSystemSettingsSpecifiersProvider_initWithApplicationBundleIdentifier___block_invoke_94;
  v22[3] = &unk_2782EF4D8;
  v20 = v5;
  v23 = v20;
  [(DIIdentitySettingsProvider *)v18 showDocumentProviderExtensionFor:applicationBundleIdentifier completion:v22];

  return v20;
}

void __74__AUSystemSettingsSpecifiersProvider_initWithApplicationBundleIdentifier___block_invoke()
{
  v16[25] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277D6C118];
  v15[0] = *MEMORY[0x277D6C100];
  v15[1] = v0;
  v16[0] = &unk_282D7F468;
  v16[1] = &unk_282D7F480;
  v1 = *MEMORY[0x277D6C1D0];
  v15[2] = *MEMORY[0x277D6C1E0];
  v15[3] = v1;
  v16[2] = &unk_282D7F498;
  v16[3] = &unk_282D7F4B0;
  v2 = *MEMORY[0x277D6C1A8];
  v15[4] = *MEMORY[0x277D6C110];
  v15[5] = v2;
  v16[4] = &unk_282D7F4C8;
  v16[5] = &unk_282D7F4E0;
  v3 = *MEMORY[0x277D6C120];
  v15[6] = *MEMORY[0x277D6C218];
  v15[7] = v3;
  v16[6] = &unk_282D7F4F8;
  v16[7] = &unk_282D7F510;
  v4 = *MEMORY[0x277D6C1B0];
  v15[8] = *MEMORY[0x277D6C168];
  v15[9] = v4;
  v16[8] = &unk_282D7F528;
  v16[9] = &unk_282D7F540;
  v5 = *MEMORY[0x277D6C148];
  v15[10] = *MEMORY[0x277D6C258];
  v15[11] = v5;
  v16[10] = &unk_282D7F558;
  v16[11] = &unk_282D7F570;
  v6 = *MEMORY[0x277D6C178];
  v15[12] = *MEMORY[0x277D6C248];
  v15[13] = v6;
  v16[12] = &unk_282D7F588;
  v16[13] = &unk_282D7F5A0;
  v7 = *MEMORY[0x277D6C1A0];
  v15[14] = *MEMORY[0x277D6C188];
  v15[15] = v7;
  v16[14] = &unk_282D7F5B8;
  v16[15] = &unk_282D7F5D0;
  v8 = *MEMORY[0x277D6C250];
  v15[16] = *MEMORY[0x277D6C198];
  v15[17] = v8;
  v16[16] = &unk_282D7F5E8;
  v16[17] = &unk_282D7F600;
  v9 = *MEMORY[0x277D6C1C8];
  v15[18] = *MEMORY[0x277D6C238];
  v15[19] = v9;
  v16[18] = &unk_282D7F618;
  v16[19] = &unk_282D7F630;
  v10 = *MEMORY[0x277D6C1B8];
  v15[20] = *MEMORY[0x277D6C180];
  v15[21] = v10;
  v16[20] = &unk_282D7F648;
  v16[21] = &unk_282D7F660;
  v11 = *MEMORY[0x277D6C1E8];
  v15[22] = *MEMORY[0x277D6C158];
  v15[23] = v11;
  v16[22] = &unk_282D7F678;
  v16[23] = &unk_282D7F690;
  v15[24] = *MEMORY[0x277D6C128];
  v16[24] = &unk_282D7F6A8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:25];
  v13 = _PSServicePolicyOptions;
  _PSServicePolicyOptions = v12;

  v14 = *MEMORY[0x277D85DE8];
}

void __74__AUSystemSettingsSpecifiersProvider_initWithApplicationBundleIdentifier___block_invoke_94(uint64_t a1, void *a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AULoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v12 = "[AUSystemSettingsSpecifiersProvider initWithApplicationBundleIdentifier:]_block_invoke";
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&dword_21BAF4000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s: Failed to load identity settings with error %{public}@", buf, 0x16u);
    }

    goto LABEL_7;
  }

  if (v5 && [v5 BOOLValue])
  {
    *(*(a1 + 32) + 72) = 1;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __74__AUSystemSettingsSpecifiersProvider_initWithApplicationBundleIdentifier___block_invoke_95;
    block[3] = &unk_2782EF4B0;
    v10 = *(a1 + 32);
    dispatch_async(MEMORY[0x277D85CD0], block);
    v7 = v10;
LABEL_7:
  }

  v8 = *MEMORY[0x277D85DE8];
}

+ (OS_dispatch_queue)_bbObserverQueue
{
  if (_bbObserverQueue_onceToken != -1)
  {
    +[AUSystemSettingsSpecifiersProvider _bbObserverQueue];
  }

  v3 = _bbObserverQueue__bbObserverQueue;

  return v3;
}

void __54__AUSystemSettingsSpecifiersProvider__bbObserverQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.preferencesframework.gateway", v2);
  v1 = _bbObserverQueue__bbObserverQueue;
  _bbObserverQueue__bbObserverQueue = v0;
}

- (id)specifiers
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = _AULoggingFacility();
  v4 = os_signpost_id_make_with_pointer(v3, "PSSystemPolicyForApp.specifiers");

  v5 = _AULoggingFacility();
  v6 = v5;
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
  {
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    *buf = 136315394;
    v14 = "[AUSystemSettingsSpecifiersProvider specifiers]";
    v15 = 2114;
    v16 = applicationBundleIdentifier;
    _os_signpost_emit_with_name_impl(&dword_21BAF4000, v6, OS_SIGNPOST_INTERVAL_BEGIN, v4, "PSSystemPolicyForApp.specifiers", "%s: %{public}@", buf, 0x16u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__AUSystemSettingsSpecifiersProvider_specifiers__block_invoke;
  v12[3] = &__block_descriptor_40_e5_v8__0l;
  v12[4] = v4;
  v8 = MEMORY[0x21CF002C0](v12);
  v9 = [(AUSystemSettingsSpecifiersProvider *)self specifiersForPolicyOptions:-134348801 force:0];
  if (v8)
  {
    v8[2](v8);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __48__AUSystemSettingsSpecifiersProvider_specifiers__block_invoke(uint64_t a1)
{
  v2 = _AULoggingFacility();
  v3 = v2;
  v4 = *(a1 + 32);
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    *v5 = 0;
    _os_signpost_emit_with_name_impl(&dword_21BAF4000, v3, OS_SIGNPOST_INTERVAL_END, v4, "PSSystemPolicyForApp.specifiers", "", v5, 2u);
  }
}

- (id)specifiersForPolicyOptions:(unint64_t)options force:(BOOL)force
{
  v88 = *MEMORY[0x277D85DE8];
  self->_policyOptions = options;
  self->_forcePolicyOptions = force;
  v5 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v80 = [v5 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

  array = [MEMORY[0x277CBEB18] array];
  v8 = v80;
  if ([v80 isWebAppPlaceholder])
  {
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Allow %@ to Access" value:&stru_282D7C630 table:0];

    v11 = MEMORY[0x277D3FAD8];
    v12 = MEMORY[0x277CCACA8];
    localizedName = [v80 localizedName];
    v14 = [v12 stringWithFormat:v10, localizedName];
    v15 = [v11 groupSpecifierWithName:v14];

    [array na_safeAddObject:v15];
    notificationSpecifier = [(AUSystemSettingsSpecifiersProvider *)self notificationSpecifier];
    [array na_safeAddObject:notificationSpecifier];

    v17 = v80;
  }

  else
  {
    if (v80)
    {
      v18 = [v80 URL];
      v8 = CFBundleCreate(0, v18);

      if (v8)
      {
        v86[0] = MEMORY[0x277D85DD0];
        v86[1] = 3221225472;
        v86[2] = __71__AUSystemSettingsSpecifiersProvider_specifiersForPolicyOptions_force___block_invoke;
        v86[3] = &__block_descriptor_40_e5_v8__0l;
        v86[4] = v8;
        v78 = MEMORY[0x21CF002C0](v86);
        v19 = TCCAccessCopyInformationForBundle();
        v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v19, "count")}];
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v82 objects:v87 count:16];
        if (v21)
        {
          v22 = *v83;
          v23 = MEMORY[0x277D6C0E8];
          do
          {
            for (i = 0; i != v21; ++i)
            {
              if (*v83 != v22)
              {
                objc_enumerationMutation(v20);
              }

              v25 = *(*(&v82 + 1) + 8 * i);
              v26 = [v25 objectForKeyedSubscript:*v23];
              [v8 na_safeSetObject:v25 forKey:v26];
            }

            v21 = [v20 countByEnumeratingWithState:&v82 objects:v87 count:16];
          }

          while (v21);
        }

        v27 = v78;
        if (v78)
        {
          (*(v78 + 2))();
          v27 = v78;
        }
      }
    }

    v79 = MEMORY[0x21CEFFED0]();
    v28 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifiersWithTCCServiceLookup:v8 tccServiceOverrides:v79];
    [array addObjectsFromArray:v28];

    calendarSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self calendarSpecifiers];
    [array na_safeAddObject:calendarSpecifiers];

    assistantSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self assistantSpecifiers];
    [array na_safeAddObject:assistantSpecifiers];

    searchSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self searchSpecifiers];
    [array na_safeAddObject:searchSpecifiers];

    notificationSpecifier2 = [(AUSystemSettingsSpecifiersProvider *)self notificationSpecifier];
    [array na_safeAddObject:notificationSpecifier2];

    nudityDetectionSpeicier = [(AUSystemSettingsSpecifiersProvider *)self nudityDetectionSpeicier];
    [array na_safeAddObject:nudityDetectionSpeicier];

    alarmKitSpecifier = [(AUSystemSettingsSpecifiersProvider *)self alarmKitSpecifier];
    [array na_safeAddObject:alarmKitSpecifier];

    liveActivitiesSpecifier = [(AUSystemSettingsSpecifiersProvider *)self liveActivitiesSpecifier];
    [array na_safeAddObject:liveActivitiesSpecifier];

    v36 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C188] tccServiceLookup:v8 tccServiceOverrides:v79];
    [array na_safeAddObject:v36];

    v37 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C230] tccServiceLookup:v8 tccServiceOverrides:v79];
    [array na_safeAddObject:v37];

    backgroundAppRefreshSpecifier = [(AUSystemSettingsSpecifiersProvider *)self backgroundAppRefreshSpecifier];
    [array na_safeAddObject:backgroundAppRefreshSpecifier];
    localizedName2 = [v80 localizedName];
    if (localizedName2)
    {
      v73 = v80;
    }

    else
    {
      v38 = objc_alloc(MEMORY[0x277CC1E70]);
      applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      v73 = [v38 initWithBundleIdentifierOfSystemPlaceholder:applicationBundleIdentifier2 error:0];

      localizedName2 = [v73 localizedName];
    }

    v40 = [(AUSystemSettingsSpecifiersProvider *)self wirelessDataSpecifierWithAppName:localizedName2];
    [array na_safeAddObject:v40];

    documentsSpecifier = [(AUSystemSettingsSpecifiersProvider *)self documentsSpecifier];
    [array na_safeAddObject:documentsSpecifier];

    keyboardExtensionSpecifier = [(AUSystemSettingsSpecifiersProvider *)self keyboardExtensionSpecifier];
    [array na_safeAddObject:keyboardExtensionSpecifier];

    v43 = [(AUSystemSettingsSpecifiersProvider *)self exposureSpecifiersWithTCCServiceLookup:v8];
    [array addObjectsFromArray:v43];

    familyControlsSpecifier = [(AUSystemSettingsSpecifiersProvider *)self familyControlsSpecifier];
    if (familyControlsSpecifier)
    {
      [array na_safeAddObject:familyControlsSpecifier];
    }

    _journalingSuggestionsSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self _journalingSuggestionsSpecifiers];
    [array na_safeAddObjectsFromArray:_journalingSuggestionsSpecifiers];

    defaultAppCategoriesSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self defaultAppCategoriesSpecifiers];
    [array na_safeAddObjectsFromArray:defaultAppCategoriesSpecifiers];
    textMessagingSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self textMessagingSpecifiers];
    [array na_safeAddObjectsFromArray:textMessagingSpecifiers];

    downloadsSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self downloadsSpecifiers];
    if ([downloadsSpecifiers count])
    {
      [array na_safeAddObjectsFromArray:downloadsSpecifiers];
      [(AUSystemSettingsSpecifiersProvider *)self _updateDownloadsFolderTitle];
    }

    contactlessNFCSideButtonSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self contactlessNFCSideButtonSpecifiers];
    [array na_safeAddObjectsFromArray:contactlessNFCSideButtonSpecifiers];

    v47 = [(AUSystemSettingsSpecifiersProvider *)self trackingSpecifiersWithTCCServiceLookup:v8 tccServiceOverrides:v79];
    if ([v47 count])
    {
      [array addObjectsFromArray:v47];
    }

    pasteboardSpecifier = [(AUSystemSettingsSpecifiersProvider *)self pasteboardSpecifier];
    if (pasteboardSpecifier)
    {
      v49 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"PASTEBOARD_GROUP"];
      [array addObject:v49];

      [array addObject:pasteboardSpecifier];
    }

    if ([array count])
    {
      v50 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v51 = [v50 localizedStringForKey:@"Allow %@ to Access" value:&stru_282D7C630 table:0];

      v52 = MEMORY[0x277D3FAD8];
      v53 = [MEMORY[0x277CCACA8] stringWithFormat:v51, localizedName2];
      v54 = [v52 groupSpecifierWithName:v53];

      [array insertObject:v54 atIndex:0];
      if (backgroundAppRefreshSpecifier && ([MEMORY[0x277CCAC38] processInfo], v55 = objc_claimAutoreleasedReturnValue(), v56 = objc_msgSend(v55, "isLowPowerModeEnabled"), v55, v56))
      {
        v57 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v58 = [v57 localizedStringForKey:@"When in Low Power Mode value:background app refresh is disabled." table:{&stru_282D7C630, 0}];
      }

      else
      {
        v58 = 0;
      }

      if ([v58 length])
      {
        [v54 setProperty:v58 forKey:*MEMORY[0x277D3FF88]];
      }

      else
      {
        [v54 removePropertyForKey:*MEMORY[0x277D3FF88]];
      }
    }

    v59 = MEMORY[0x277D3FAD8];
    v60 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v61 = [v60 localizedStringForKey:@"Preferred Language" value:&stru_282D7C630 table:0];
    v62 = [v59 groupSpecifierWithName:v61];

    preferredLanguageSpecifier = [(AUSystemSettingsSpecifiersProvider *)self preferredLanguageSpecifier];
    if (preferredLanguageSpecifier)
    {
      [array addObject:v62];
      [array na_safeAddObject:preferredLanguageSpecifier];
    }

    accountsSpecifier = [(AUSystemSettingsSpecifiersProvider *)self accountsSpecifier];
    if (accountsSpecifier)
    {
      v65 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"ACCOUNTS_GROUP" name:0];
      [array addObject:v65];

      [array addObject:accountsSpecifier];
    }

    tapToPayScreenLockSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self tapToPayScreenLockSpecifiers];
    [array addObjectsFromArray:tapToPayScreenLockSpecifiers];

    tapToPayAlwaysPlaySoundSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self tapToPayAlwaysPlaySoundSpecifiers];
    [array addObjectsFromArray:tapToPayAlwaysPlaySoundSpecifiers];

    tapToPayEnableDiagnostics = [(AUSystemSettingsSpecifiersProvider *)self tapToPayEnableDiagnostics];
    [array addObjectsFromArray:tapToPayEnableDiagnostics];

    driverKitSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self driverKitSpecifiers];
    [array addObjectsFromArray:driverKitSpecifiers];

    identityVerificationSpecifiers = [(AUSystemSettingsSpecifiersProvider *)self identityVerificationSpecifiers];
    [array addObjectsFromArray:identityVerificationSpecifiers];

    v17 = v73;
  }

  v71 = *MEMORY[0x277D85DE8];

  return array;
}

- (BOOL)_isAppClip
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v8 = 0;
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:0 error:&v8];

  appClipMetadata = [v5 appClipMetadata];
  LOBYTE(applicationBundleIdentifier) = appClipMetadata != 0;

  return applicationBundleIdentifier;
}

- (id)notificationSpecifier
{
  if (self->_policyOptions)
  {
    if (notificationSpecifier_onceToken != -1)
    {
      [AUSystemSettingsSpecifiersProvider notificationSpecifier];
    }

    v4 = +[AUNotificationSettingsController sharedInstance];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 sectionInfoForIdentifier:applicationBundleIdentifier];

    if (v6)
    {
      objc_opt_class();
      v2 = PSApplicationSpecifierForBBSection();
      v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v8 = [v7 localizedStringForKey:@"Notifications" value:&stru_282D7C630 table:0];
      [v2 setName:v8];

      [v2 setIdentifier:@"NOTIFICATIONS"];
      [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v2 setObject:@"com.apple.graphic-icon.notifications" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      v9 = objc_opt_new();
      [v9 refreshCellContentsWithSpecifier:v2];
      detailTextLabel = [v9 detailTextLabel];
      text = [detailTextLabel text];
      [v2 setObject:text forKeyedSubscript:*MEMORY[0x277D3FE18]];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t __59__AUSystemSettingsSpecifiersProvider_notificationSpecifier__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = PSBundlePathForPreferenceBundle();
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];
  v5 = notificationSpecifier_notificationSettingsBundle;
  notificationSpecifier_notificationSettingsBundle = v4;

  notificationSpecifier_notificationCellClass = [notificationSpecifier_notificationSettingsBundle classNamed:@"NotificationCell"];
  result = [notificationSpecifier_notificationSettingsBundle classNamed:@"BulletinBoardAppDetailController"];
  notificationSpecifier_notificationDetailControllerClass = result;
  return result;
}

- (id)nudityDetectionSpeicier
{
  if ((self->_policyOptions & 0x80000000000) == 0 || ![MEMORY[0x277CFB9A0] nudityDetectionFeatureEnabled])
  {
    goto LABEL_5;
  }

  v3 = MEMORY[0x277CFB9A0];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  if ([v3 nudityDetectionAvailableForBundleID:applicationBundleIdentifier])
  {
    currentDevice = [MEMORY[0x277D75418] currentDevice];
    sf_inRetailKioskMode = [currentDevice sf_inRetailKioskMode];

    if (sf_inRetailKioskMode)
    {
LABEL_5:
      v7 = 0;
      goto LABEL_6;
    }

    v9 = MEMORY[0x277CCA8D8];
    v10 = PSBundlePathForPreferenceBundle();
    v12 = v11 = v10;
    applicationBundleIdentifier = [v9 bundleWithPath:v12];

    v13 = MEMORY[0x277D3FAD8];
    nudityDetectionRowLabel = [MEMORY[0x277CFB9A0] nudityDetectionRowLabel];
    classForNudityAppDetectionSettings = [MEMORY[0x277CFB9A0] classForNudityAppDetectionSettings];
    v7 = [v13 preferenceSpecifierNamed:nudityDetectionRowLabel target:self set:0 get:sel_getNudityDetectionEnabledValue detail:objc_msgSend(applicationBundleIdentifier cell:"classNamed:" edit:{classForNudityAppDetectionSettings), 2, 0}];

    applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    [v7 setProperty:applicationBundleIdentifier2 forKey:@"BUNDLE_ID"];

    [v7 setIdentifier:@"NUDITY_DETECTION"];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(MEMORY[0x277CFB9A0], "nudityDetectionRowEnabled")}];
    [v7 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    nudityDetectionRowIconID = [MEMORY[0x277CFB9A0] nudityDetectionRowIconID];
    [v7 setObject:nudityDetectionRowIconID forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v7 = 0;
  }

LABEL_6:

  return v7;
}

- (id)getNudityDetectionEnabledValue
{
  v2 = MEMORY[0x277CFB9A0];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v4 = [v2 nudityDetectionOnOffLabelForBundleID:applicationBundleIdentifier];

  return v4;
}

- (id)alarmKitSpecifier
{
  if ([(AUSystemSettingsSpecifiersProvider *)self _supportsAlarmKit])
  {
    [(AUSystemSettingsSpecifiersProvider *)self _supportsLiveActivitiesFrequentUpdates];
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"Alarms" value:&stru_282D7C630 table:0];

    v5 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v4 target:self set:sel_setAlarmKitEnabled_forSpecifier_ get:sel_isAlarmKitEnabled_ detail:0 cell:6 edit:0];
    [v5 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    [v5 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v5 setObject:@"com.apple.graphic-icon.alarm" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_supportsAlarmKit
{
  selfCopy = self;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  LOBYTE(selfCopy) = [(AUSystemSettingsSpecifiersProvider *)selfCopy _supportsAlarmKitForBundleID:applicationBundleIdentifier];

  return selfCopy;
}

- (BOOL)_supportsAlarmKitForBundleID:(id)d
{
  v3 = MEMORY[0x277CC1E70];
  dCopy = d;
  v10 = 0;
  v5 = [[v3 alloc] initWithBundleIdentifier:dCopy allowPlaceholder:0 error:&v10];

  v6 = 0;
  if (!v10)
  {
    infoDictionary = [v5 infoDictionary];
    v8 = [infoDictionary objectForKey:@"NSAlarmKitUsageDescription" ofClass:objc_opt_class()];

    v6 = [v8 length] != 0;
  }

  return v6;
}

- (void)setAlarmKitEnabled:(id)enabled forSpecifier:(id)specifier
{
  v5 = MEMORY[0x277CB9B50];
  enabledCopy = enabled;
  v10 = objc_alloc_init(v5);
  LODWORD(v5) = [enabledCopy BOOLValue];

  if (v5)
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v9 = [v10 setAuthorizationState:v7 forBundleID:applicationBundleIdentifier];
}

- (id)isAlarmKitEnabled:(id)enabled
{
  v4 = objc_alloc_init(MEMORY[0x277CB9B50]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v4 authorizationStateForBundleID:applicationBundleIdentifier] == 2;

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (id)liveActivitiesSpecifier
{
  if ((self->_policyOptions & 0x10000000000) != 0 && [(AUSystemSettingsSpecifiersProvider *)self _supportsLiveActivities])
  {
    _supportsLiveActivitiesFrequentUpdates = [(AUSystemSettingsSpecifiersProvider *)self _supportsLiveActivitiesFrequentUpdates];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Live Activities" value:&stru_282D7C630 table:0];

    if (_supportsLiveActivitiesFrequentUpdates)
    {
      v6 = MEMORY[0x277CCA8D8];
      v7 = PSBundlePathForPreferenceBundle();
      v9 = v8 = v7;
      v10 = [v6 bundleWithPath:v9];

      v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:0 set:0 get:0 detail:objc_msgSend(v10 cell:"classNamed:" edit:{@"ActivitySettingsDetailController", 1, 0}];
      applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      [v11 setProperty:applicationBundleIdentifier forKey:@"BUNDLE_ID"];

      v13 = [v10 classNamed:@"ActivitySettingsCell"];
      [v11 setProperty:v13 forKey:*MEMORY[0x277D3FE58]];
    }

    else
    {
      v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v5 target:self set:sel_setLiveActivitiesEnabled_forSpecifier_ get:sel_isLiveActivitiesEnabled_ detail:0 cell:6 edit:0];
      [v11 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    }

    [v11 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v11 setObject:@"com.apple.graphic-icon.live-activities" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)_supportsLiveActivities
{
  if (!_os_feature_enabled_impl())
  {
    return 0;
  }

  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

  v6 = objc_alloc_init(MEMORY[0x277CB98A0]);
  if ([v5 supportsLiveActivities])
  {
    areActivitiesEnabled = [v6 areActivitiesEnabled];
  }

  else
  {
    areActivitiesEnabled = 0;
  }

  return areActivitiesEnabled;
}

- (BOOL)_supportsLiveActivitiesFrequentUpdates
{
  v3 = _os_feature_enabled_impl();
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277CC1E70]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

    LOBYTE(applicationBundleIdentifier) = [v6 supportsLiveActivitiesFrequentUpdates];
    LOBYTE(v3) = applicationBundleIdentifier;
  }

  return v3;
}

- (void)setLiveActivitiesEnabled:(id)enabled forSpecifier:(id)specifier
{
  v5 = MEMORY[0x277CB9898];
  enabledCopy = enabled;
  v9 = objc_alloc_init(v5);
  bOOLValue = [enabledCopy BOOLValue];

  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  [v9 setActivitiesEnabled:bOOLValue forBundleId:applicationBundleIdentifier];
}

- (id)isLiveActivitiesEnabled:(id)enabled
{
  v4 = objc_alloc_init(MEMORY[0x277CB9898]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v4 areActivitiesEnabledForBundleId:applicationBundleIdentifier];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:v6];

  return v7;
}

- (BOOL)_supportsJournalingSuggestions
{
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:0 error:0];

  LOBYTE(applicationBundleIdentifier) = [v5 au_supportsJournalingSuggestions];
  return applicationBundleIdentifier;
}

- (id)_journalingSuggestionsSpecifiers
{
  array = [MEMORY[0x277CBEB18] array];
  if ((self->_policyOptions & 0x100000000000) != 0 && [(AUSystemSettingsSpecifiersProvider *)self _supportsJournalingSuggestions])
  {
    v4 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"JOURNALING_SUGGESTIONS_GROUP"];
    [array addObject:v4];
    v5 = MEMORY[0x277D3FAD8];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Journaling Suggestions" value:&stru_282D7C630 table:0];
    v8 = [v5 preferenceSpecifierNamed:v7 target:self set:0 get:0 detail:NSClassFromString(&cfstr_Mosuggestionsh.isa) cell:2 edit:0];

    v9 = MEMORY[0x277CBEC38];
    [v8 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FD80]];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    [v8 setObject:applicationBundleIdentifier forKeyedSubscript:*MEMORY[0x277D3FD90]];

    [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x277D40020]];
    [v8 setObject:@"com.apple.graphic-icon.journaling-suggestions" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    [array addObject:v8];
  }

  return array;
}

- (id)accessoriesSpecifier
{
  accessoriesPrivacyController = self->_accessoriesPrivacyController;
  if (!accessoriesPrivacyController)
  {
    v4 = [AUAccessoriesPolicyController alloc];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [(AUAccessoriesPolicyController *)v4 initWithAppBundleID:applicationBundleIdentifier];
    v7 = self->_accessoriesPrivacyController;
    self->_accessoriesPrivacyController = v6;

    objc_initWeak(&location, self);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __58__AUSystemSettingsSpecifiersProvider_accessoriesSpecifier__block_invoke;
    v13[3] = &unk_2782EF520;
    objc_copyWeak(&v14, &location);
    [(AUAccessoriesPolicyController *)self->_accessoriesPrivacyController setAccessChangedHandler:v13];
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    accessoriesPrivacyController = self->_accessoriesPrivacyController;
  }

  v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v9 = [v8 localizedStringForKey:@"Accessories" value:&stru_282D7C630 table:0];
  applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v11 = [(AUAccessoriesPolicyController *)accessoriesPrivacyController appSpecifierWithName:v9 bundleID:applicationBundleIdentifier2];

  if (v11)
  {
    [v11 setIdentifier:@"ACCESSORIES"];
  }

  return v11;
}

void __58__AUSystemSettingsSpecifiersProvider_accessoriesSpecifier__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  v3 = objc_loadWeakRetained((a1 + 32));
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:v3];
}

- (id)accountsSpecifier
{
  if (_os_feature_enabled_impl() && (self->_policyOptions & 0x8000000) != 0)
  {
    mEMORY[0x277D3F940] = [MEMORY[0x277D3F940] sharedEnumerator];
    visibleAccountCount = [mEMORY[0x277D3F940] visibleAccountCount];

    v6 = MEMORY[0x277D3FAD8];
    if (visibleAccountCount < 1)
    {
      v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v11 = [v10 localizedStringForKey:@"Add Account…" value:&stru_282D7C630 table:0];
      v3 = [v6 preferenceSpecifierNamed:v11 target:0 set:0 get:0 detail:objc_opt_class() cell:13 edit:0];

      [v3 setIdentifier:@"ADD_ACCOUNT"];
      [v3 setTarget:self];
      [v3 setButtonAction:sel__handleAddAccountButtonAction_];
      v12 = [MEMORY[0x277CCABB0] numberWithInt:{-[AUSystemSettingsSpecifiersProvider _accountModificationDisabledByRestrictions](self, "_accountModificationDisabledByRestrictions") ^ 1}];
      [v3 setProperty:v12 forKey:*MEMORY[0x277D3FF38]];
    }

    else
    {
      v7 = objc_alloc(MEMORY[0x277D3FAD8]);
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"Accounts" value:&stru_282D7C630 table:0];
      v3 = [v7 initWithName:v9 target:self set:0 get:sel__accountsCount_ detail:objc_opt_class() cell:2 edit:0];

      [v3 setIdentifier:@"ACCOUNTS"];
    }

    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    [v3 setObject:applicationBundleIdentifier forKeyedSubscript:*MEMORY[0x277D3FD90]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_accountsCount:(id)count
{
  v3 = MEMORY[0x277CCABB8];
  v4 = MEMORY[0x277CCABB0];
  mEMORY[0x277D3F940] = [MEMORY[0x277D3F940] sharedEnumerator];
  v6 = [v4 numberWithInteger:{objc_msgSend(mEMORY[0x277D3F940], "visibleAccountCount")}];
  v7 = [v3 localizedStringFromNumber:v6 numberStyle:1];

  return v7;
}

- (void)_handleAddAccountButtonAction:(id)action
{
  actionCopy = action;
  delegate = [(AUSystemSettingsSpecifiersProvider *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = actionCopy;
  if (v5)
  {
    v7 = objc_alloc_init([actionCopy detailControllerClass]);
    if (v7)
    {
      delegate2 = [(AUSystemSettingsSpecifiersProvider *)self delegate];
      [delegate2 systemSettingsSpecifiersProvider:self presentViewController:v7 animated:1];
    }

    v6 = actionCopy;
  }
}

- (BOOL)_accountModificationDisabledByRestrictions
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25CD0]] == 2;

  return v3;
}

- (void)monitoredStoreDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__AUSystemSettingsSpecifiersProvider_monitoredStoreDidChange___block_invoke;
  block[3] = &unk_2782EF4B0;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __62__AUSystemSettingsSpecifiersProvider_monitoredStoreDidChange___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 32)];
}

- (id)calendarSpecifiers
{
  if ((self->_policyOptions & 8) != 0)
  {
    if (!self->_calendarPrivacyController)
    {
      v4 = objc_opt_new();
      calendarPrivacyController = self->_calendarPrivacyController;
      self->_calendarPrivacyController = v4;
    }

    if (calendarSpecifiers_onceToken != -1)
    {
      [AUSystemSettingsSpecifiersProvider calendarSpecifiers];
    }

    v6 = self->_calendarPrivacyController;
    v7 = calendarSpecifiers_specifierName;
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v2 = [(AUCalendarPolicyController *)v6 appSpecifierWithName:v7 bundleID:applicationBundleIdentifier];

    if (v2)
    {
      [v2 setIdentifier:@"CALENDAR"];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __56__AUSystemSettingsSpecifiersProvider_calendarSpecifiers__block_invoke()
{
  v2 = +[AUCalendarPolicyController loadPrivacySettingsBundle];
  v0 = [v2 localizedStringForKey:@"CALENDARS" value:&stru_282D7C630 table:@"Privacy"];
  v1 = calendarSpecifiers_specifierName;
  calendarSpecifiers_specifierName = v0;
}

- (id)assistantSpecifiers
{
  if ((self->_policyOptions & 0x800000) != 0 && ([MEMORY[0x277CC1E80] defaultWorkspace], v3 = objc_claimAutoreleasedReturnValue(), -[AUSystemSettingsSpecifiersProvider applicationBundleIdentifier](self, "applicationBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v3, "applicationIsInstalled:", v4), v4, v3, v5))
  {
    v6 = MEMORY[0x277CC1E60];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v8 = [v6 applicationProxyForIdentifier:applicationBundleIdentifier];
    v9 = PSApplicationSpecifierForAssistantSection();

    [v9 setIdentifier:@"SIRI"];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)searchSpecifiers
{
  if ((self->_policyOptions & 0x800000) != 0)
  {
    if (searchSpecifiers_onceToken != -1)
    {
      [AUSystemSettingsSpecifiersProvider searchSpecifiers];
    }

    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Search" value:&stru_282D7C630 table:0];
    v2 = [v4 preferenceSpecifierNamed:v6 target:0 set:0 get:0 detail:searchSpecifiers_sDetailClass cell:1 edit:0];

    [v2 setIdentifier:@"SEARCH"];
    [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v2 setObject:@"com.apple.graphic-icon.search" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    v7 = objc_alloc(MEMORY[0x277CC1E70]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v9 = [v7 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

    localizedName = [v9 localizedName];
    if (![localizedName length])
    {
      localizedShortName = [v9 localizedShortName];

      localizedName = localizedShortName;
    }

    [v2 setObject:localizedName forKeyedSubscript:@"APP_NAME"];
    applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    [v2 setObject:applicationBundleIdentifier2 forKeyedSubscript:@"BUNDLE_ID"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __54__AUSystemSettingsSpecifiersProvider_searchSpecifiers__block_invoke()
{
  v0 = MEMORY[0x277CCA8D8];
  v1 = PSBundlePathForPreferenceBundle();
  v3 = v2 = v1;
  v4 = [v0 bundleWithPath:v3];

  [v4 load];
  searchSpecifiers_sDetailClass = NSClassFromString(&cfstr_Spotlightdetai.isa);
}

- (id)dataUsageWorkspaceInfo
{
  v13 = 0;
  v9 = 0;
  v11 = 0u;
  v12 = 0;
  selfCopy = self;
  v2 = *MEMORY[0x277CBECE8];
  v3 = _CTServerConnectionCreate();
  if (v3)
  {
    v4 = v3;
    _CTServerConnectionCopyCellularUsageWorkspaceInfo();
    CFRelease(v4);
  }

  v5 = _AULoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_21BAF4000, v5, OS_LOG_TYPE_DEFAULT, "Failed to get the data usage workspace information", v8, 2u);
  }

  v6 = v13;

  return v6;
}

- (BOOL)_isWirelessDataRestricted
{
  mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
  v3 = [mEMORY[0x277D262A0] effectiveBoolValueForSetting:*MEMORY[0x277D25D10]];

  currentDevice = [MEMORY[0x277D75418] currentDevice];
  sf_isChinaRegionCellularDevice = [currentDevice sf_isChinaRegionCellularDevice];

  v6 = (sf_isChinaRegionCellularDevice & 1) == 0 && CTCellularDataPlanGetIsEnabled() == 0;
  return v3 == 2 || v6;
}

- (id)wirelessDataSpecifierWithAppName:(id)name
{
  nameCopy = name;
  if ((self->_policyOptions & 0x8000) == 0 || !MGGetBoolAnswer())
  {
    goto LABEL_5;
  }

  _isWirelessDataRestricted = [(AUSystemSettingsSpecifiersProvider *)self _isWirelessDataRestricted];
  v6 = *MEMORY[0x277D3FF38];
  [0 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D3FF38]];
  if (_isWirelessDataRestricted)
  {
    [0 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v6];
LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v9 = MEMORY[0x277D4D838];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v11 = objc_opt_new();
  v7 = [v9 systemPolicySpecifierForAppName:nameCopy bundleID:applicationBundleIdentifier icon:v11 enabled:{-[AUSystemSettingsSpecifiersProvider _isWirelessDataRestricted](self, "_isWirelessDataRestricted") ^ 1}];

  v12 = MEMORY[0x277CCACA8];
  identifier = [v7 identifier];
  v14 = [v12 stringWithFormat:@"%@.wireless", identifier];
  [v7 setIdentifier:v14];

  [v7 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
  [v7 setObject:@"com.apple.graphic-icon.cellular-settings" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  performGetter = [v7 performGetter];
  [v7 removePropertyForKey:*MEMORY[0x277D3FFC0]];
LABEL_6:

  return v7;
}

- (id)familyControlsSpecifier
{
  if ((self->_policyOptions & 0x1000000000) != 0 && [(AUSystemSettingsSpecifiersProvider *)self _getAuthorizationRecordsStatus]!= 1)
  {
    v4 = MEMORY[0x277D3FAD8];
    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"Screen Time Restrictions" value:&stru_282D7C630 table:0];
    v3 = [v4 preferenceSpecifierNamed:v6 target:self set:sel_setFamilyControlsEnabled_forSpecifier_ get:sel_isFamilyControlsEnabled_ detail:0 cell:6 edit:0];

    [v3 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v3 setObject:@"com.apple.graphic-icon.screen-time" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (int64_t)_getAuthorizationRecordsStatus
{
  v21 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  mEMORY[0x277D083D8] = [MEMORY[0x277D083D8] sharedCenter];
  authorizationRecords = [mEMORY[0x277D083D8] authorizationRecords];

  v5 = [authorizationRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    status = 1;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(authorizationRecords);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundleIdentifier = [v10 bundleIdentifier];
        applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
        v13 = [bundleIdentifier isEqualToString:applicationBundleIdentifier];

        if (v13)
        {
          status = [v10 status];
          goto LABEL_12;
        }
      }

      v6 = [authorizationRecords countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    status = 1;
  }

LABEL_12:

  v14 = *MEMORY[0x277D85DE8];
  return status;
}

- (void)setFamilyControlsEnabled:(id)enabled forSpecifier:(id)specifier
{
  v30 = *MEMORY[0x277D85DE8];
  enabledCopy = enabled;
  specifierCopy = specifier;
  v27[0] = 0;
  v27[1] = v27;
  v27[2] = 0x3032000000;
  v27[3] = __Block_byref_object_copy_;
  v27[4] = __Block_byref_object_dispose_;
  v7 = enabledCopy;
  v28 = v7;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  mEMORY[0x277D083D8] = [MEMORY[0x277D083D8] sharedCenter];
  authorizationRecords = [mEMORY[0x277D083D8] authorizationRecords];

  recordIdentifier = 0;
  v11 = [authorizationRecords countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v11)
  {
    v12 = *v24;
    do
    {
      v13 = 0;
      v14 = recordIdentifier;
      do
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(authorizationRecords);
        }

        v15 = *(*(&v23 + 1) + 8 * v13);
        bundleIdentifier = [v15 bundleIdentifier];
        applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
        if ([bundleIdentifier isEqualToString:applicationBundleIdentifier])
        {
          recordIdentifier = [v15 recordIdentifier];
        }

        else
        {
          recordIdentifier = 0;
        }

        ++v13;
        v14 = recordIdentifier;
      }

      while (v11 != v13);
      v11 = [authorizationRecords countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v11);
  }

  if ([(AUSystemSettingsSpecifiersProvider *)self _getAuthorizationRecordsStatus]== 2)
  {
    mEMORY[0x277D083D8]2 = [MEMORY[0x277D083D8] sharedCenter];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __76__AUSystemSettingsSpecifiersProvider_setFamilyControlsEnabled_forSpecifier___block_invoke;
    v22[3] = &unk_2782EF548;
    v22[4] = v27;
    [mEMORY[0x277D083D8]2 resetAuthorizationForRecordIdentifier:recordIdentifier completionHandler:v22];
  }

  else
  {
    mEMORY[0x277D083D8]2 = [MEMORY[0x277D083D8] sharedCenter];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __76__AUSystemSettingsSpecifiersProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_2;
    v21[3] = &unk_2782EF548;
    v21[4] = v27;
    [mEMORY[0x277D083D8]2 requestAuthorizationForRecordIdentifier:recordIdentifier completionHandler:v21];
  }

  _Block_object_dispose(v27, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __76__AUSystemSettingsSpecifiersProvider_setFamilyControlsEnabled_forSpecifier___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277CBEC28];
  }

  else
  {
    v2 = MEMORY[0x277CBEC38];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
}

void __76__AUSystemSettingsSpecifiersProvider_setFamilyControlsEnabled_forSpecifier___block_invoke_2(uint64_t a1, int a2)
{
  if (a2)
  {
    v2 = MEMORY[0x277CBEC38];
  }

  else
  {
    v2 = MEMORY[0x277CBEC28];
  }

  objc_storeStrong((*(*(a1 + 32) + 8) + 40), v2);
}

- (id)isFamilyControlsEnabled:(id)enabled
{
  if ([(AUSystemSettingsSpecifiersProvider *)self _getAuthorizationRecordsStatus]== 2)
  {
    v3 = MEMORY[0x277CBEC38];
  }

  else
  {
    v3 = MEMORY[0x277CBEC28];
  }

  return v3;
}

- (id)backgroundAppRefreshSpecifier
{
  if ((self->_policyOptions & 2) != 0 && [(AUSystemSettingsSpecifiersProvider *)self _supportsBackgroundAppRefresh])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Background App Refresh" value:&stru_282D7C630 table:0];
    v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setBackgroundRefreshEnabled_forSpecifier_ get:sel_isBackgroundRefreshEnabled_ detail:0 cell:6 edit:0];

    [v6 setObject:objc_opt_class() forKeyedSubscript:*MEMORY[0x277D3FE58]];
    v7 = [MEMORY[0x277CCABB0] numberWithInt:{-[AUSystemSettingsSpecifiersProvider _isBackgroundAppRefreshAllowed](self, "_isBackgroundAppRefreshAllowed") ^ 1}];
    [v6 setProperty:v7 forKey:*MEMORY[0x277D3FF38]];

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v6 setObject:@"com.apple.graphic-icon.background-app-refresh" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_supportsBackgroundAppRefresh
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  uIBackgroundModes = [v5 UIBackgroundModes];
  v7 = [uIBackgroundModes countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(uIBackgroundModes);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 isEqualToString:@"remote-notification"] & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"newsstand-content") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"fetch") & 1) != 0 || (objc_msgSend(v11, "isEqualToString:", @"processing"))
        {
          v12 = 1;
          goto LABEL_15;
        }
      }

      v8 = [uIBackgroundModes countByEnumeratingWithState:&v15 objects:v19 count:16];
      v12 = 0;
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_15:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_isBackgroundAppRefreshAllowed
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v4 = 1;
  }

  else
  {
    mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
    isAutomaticAppUpdatesAllowed = [mEMORY[0x277D262A0] isAutomaticAppUpdatesAllowed];
    isAutomaticAppUpdatesModificationAllowed = [mEMORY[0x277D262A0] isAutomaticAppUpdatesModificationAllowed];
    v4 = isAutomaticAppUpdatesAllowed & isAutomaticAppUpdatesModificationAllowed ^ 1 | [mEMORY[0x277D262A0] isBoolSettingLockedDownByRestrictions:*MEMORY[0x277D25D80]];
  }

  return v4 & 1;
}

- (void)setBackgroundRefreshEnabled:(id)enabled forSpecifier:(id)specifier
{
  enabledCopy = enabled;
  v6 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
  value = [v6 mutableCopy];

  if (!value)
  {
    value = objc_opt_new();
  }

  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  [value setObject:enabledCopy forKey:applicationBundleIdentifier];

  CFPreferencesSetAppValue(@"KeepAppsUpToDateAppList", value, @"com.apple.mt");
  CFPreferencesAppSynchronize(@"com.apple.mt");
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"kKeepAppsUpToDateEnabledChangedNotification", 0, 0, 1u);
}

- (id)isBackgroundRefreshEnabled:(id)enabled
{
  processInfo = [MEMORY[0x277CCAC38] processInfo];
  isLowPowerModeEnabled = [processInfo isLowPowerModeEnabled];

  if (isLowPowerModeEnabled)
  {
    v6 = MEMORY[0x277CBEC28];
  }

  else
  {
    v7 = CFPreferencesCopyAppValue(@"KeepAppsUpToDateAppList", @"com.apple.mt");
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v9 = [v7 objectForKey:applicationBundleIdentifier];

    if (v9)
    {
      v6 = v9;
    }

    else
    {
      v6 = MEMORY[0x277CBEC38];
    }
  }

  return v6;
}

- (id)photosServicesSpecifier
{
  if ((self->_policyOptions & 0x20) != 0)
  {
    photosPrivacyController = self->_photosPrivacyController;
    if (!photosPrivacyController)
    {
      v5 = objc_opt_new();
      v6 = self->_photosPrivacyController;
      self->_photosPrivacyController = v5;

      photosPrivacyController = self->_photosPrivacyController;
    }

    v7 = [_TtC19AppSystemSettingsUI17AUHelperFunctions localizedDisplayNameForTCCService:*MEMORY[0x277D6C1D0]];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v2 = [(PSPhotosPolicyController *)photosPrivacyController appSpecifierWithName:v7 bundleID:applicationBundleIdentifier];

    if (v2)
    {
      [v2 setIdentifier:@"PHOTOS"];
      [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v2 setObject:@"com.apple.mobileslideshow" forKeyedSubscript:*MEMORY[0x277D40008]];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)contactsServicesSpecifier
{
  if ((self->_policyOptions & 4) != 0)
  {
    contactsPrivacyController = self->_contactsPrivacyController;
    if (!contactsPrivacyController)
    {
      v5 = objc_opt_new();
      v6 = self->_contactsPrivacyController;
      self->_contactsPrivacyController = v5;

      contactsPrivacyController = self->_contactsPrivacyController;
    }

    v7 = [_TtC19AppSystemSettingsUI17AUHelperFunctions localizedDisplayNameForTCCService:*MEMORY[0x277D6C100]];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v2 = [(PSContactsPolicyController *)contactsPrivacyController appSpecifierWithName:v7 bundleID:applicationBundleIdentifier];

    if (v2)
    {
      [v2 setIdentifier:@"CONTACTS"];
      [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v2 setObject:@"com.apple.MobileAddressBook" forKeyedSubscript:*MEMORY[0x277D40008]];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (BOOL)getMulticastAllowed:(BOOL *)allowed
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  copyAggregatePathRules = [MEMORY[0x277CD92C0] copyAggregatePathRules];
  v6 = [copyAggregatePathRules countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(copyAggregatePathRules);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        matchSigningIdentifier = [v10 matchSigningIdentifier];
        applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
        if ([matchSigningIdentifier isEqualToString:applicationBundleIdentifier])
        {
          multicastPreferenceSet = [v10 multicastPreferenceSet];

          if (multicastPreferenceSet)
          {
            if (allowed)
            {
              *allowed = 1;
            }

            v14 = [v10 denyMulticast] ^ 1;
            goto LABEL_16;
          }
        }

        else
        {
        }
      }

      v7 = [copyAggregatePathRules countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  LOBYTE(v14) = 0;
LABEL_16:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)setupNetworkConfiguration
{
  v9 = 0;
  [(AUSystemSettingsSpecifiersProvider *)self getMulticastAllowed:&v9];
  if (v9 == 1)
  {
    objc_initWeak(&location, self);
    mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
    v4 = MEMORY[0x277D85CD0];
    v5 = MEMORY[0x277D85CD0];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__AUSystemSettingsSpecifiersProvider_setupNetworkConfiguration__block_invoke;
    v6[3] = &unk_2782EF570;
    objc_copyWeak(&v7, &location);
    [mEMORY[0x277CD92B8] setChangedQueue:v4 andHandler:v6];

    [(AUSystemSettingsSpecifiersProvider *)self loadNetworkConfigurationsForceRefresh:0];
    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }
}

void __63__AUSystemSettingsSpecifiersProvider_setupNetworkConfiguration__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained loadNetworkConfigurationsForceRefresh:1];
}

void __76__AUSystemSettingsSpecifiersProvider_loadNetworkConfigurationsForceRefresh___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = _AULoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__AUSystemSettingsSpecifiersProvider_loadNetworkConfigurationsForceRefresh___block_invoke_cold_1();
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [v13 name];
        if ([v14 isEqualToString:@"com.apple.preferences.networkprivacy"])
        {
          v15 = [v13 pathController];

          if (!v15)
          {
            continue;
          }

          v16 = *(a1 + 32);
          v17 = v13;
          v14 = *(v16 + 56);
          *(v16 + 56) = v17;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)saveNetworkConfiguration
{
  v2 = self->_pathControllerConfiguration;
  mEMORY[0x277CD92B8] = [MEMORY[0x277CD92B8] sharedManagerForAllUsers];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __62__AUSystemSettingsSpecifiersProvider_saveNetworkConfiguration__block_invoke;
  v5[3] = &unk_2782EF5C0;
  v6 = v2;
  v4 = v2;
  [mEMORY[0x277CD92B8] saveConfiguration:v4 withCompletionQueue:MEMORY[0x277D85CD0] handler:v5];
}

void __62__AUSystemSettingsSpecifiersProvider_saveNetworkConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = _AULoggingFacility();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __62__AUSystemSettingsSpecifiersProvider_saveNetworkConfiguration__block_invoke_cold_1(v3, a1, v4);
    }
  }
}

- (id)pathRuleForBundleID:(id)d create:(BOOL)create
{
  createCopy = create;
  v27 = *MEMORY[0x277D85DE8];
  dCopy = d;
  pathController = [(NEConfiguration *)self->_pathControllerConfiguration pathController];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  pathRules = [pathController pathRules];
  v9 = [pathRules countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v22 != v11)
        {
          objc_enumerationMutation(pathRules);
        }

        v13 = *(*(&v21 + 1) + 8 * i);
        matchSigningIdentifier = [v13 matchSigningIdentifier];
        v15 = [matchSigningIdentifier isEqualToString:dCopy];

        if (v15)
        {
          v16 = v13;
          goto LABEL_13;
        }
      }

      v10 = [pathRules countByEnumeratingWithState:&v21 objects:v26 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  if (createCopy)
  {
    v16 = [objc_alloc(MEMORY[0x277CD92D0]) initWithSigningIdentifier:dCopy];
    pathRules2 = [pathController pathRules];

    if (pathRules2)
    {
      pathRules = [pathController pathRules];
      v18 = [pathRules arrayByAddingObject:v16];
      [pathController setPathRules:v18];
    }

    else
    {
      v25 = v16;
      pathRules = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];
      [pathController setPathRules:pathRules];
    }

LABEL_13:
  }

  else
  {
    v16 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v16;
}

- (void)setLocalNetworkEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v7 = [(AUSystemSettingsSpecifiersProvider *)self pathRuleForBundleID:applicationBundleIdentifier create:1];

  LODWORD(applicationBundleIdentifier) = [enabledCopy BOOLValue];
  [v7 setDenyMulticast:applicationBundleIdentifier ^ 1];
  [v7 setMulticastPreferenceSet:1];
  [(AUSystemSettingsSpecifiersProvider *)self saveNetworkConfiguration];
}

- (id)isLocalNetworkEnabled:(id)enabled
{
  if (self->_pathControllerConfiguration)
  {
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v5 = [(AUSystemSettingsSpecifiersProvider *)self pathRuleForBundleID:applicationBundleIdentifier create:0];

    v6 = [objc_alloc(MEMORY[0x277CCABB0]) initWithBool:{objc_msgSend(v5, "denyMulticast") ^ 1}];
  }

  else
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[AUSystemSettingsSpecifiersProvider getMulticastAllowed:](self, "getMulticastAllowed:", 0)}];
  }

  return v6;
}

- (id)networkServicesSpecifier
{
  if ((self->_policyOptions & 0x4000000) != 0 && _os_feature_enabled_impl() && (v9 = 0, [(AUSystemSettingsSpecifiersProvider *)self getMulticastAllowed:&v9], v9 == 1))
  {
    [(AUSystemSettingsSpecifiersProvider *)self setupNetworkConfiguration];
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Local Network" value:&stru_282D7C630 table:0];
    v6 = [v3 preferenceSpecifierNamed:v5 target:self set:sel_setLocalNetworkEnabled_specifier_ get:sel_isLocalNetworkEnabled_ detail:0 cell:6 edit:0];

    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    [v6 setProperty:applicationBundleIdentifier forKey:@"PUINetworkApplicationKey"];

    [v6 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    [v6 setObject:@"com.apple.graphic-icon.local-network" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)locationServicesSpecifier
{
  if ((self->_policyOptions & 0x10000) != 0)
  {
    v4 = CLCopyAppsUsingLocation();
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 objectForKey:applicationBundleIdentifier];

    if (v6 && [MEMORY[0x277CBFC10] primaryEntityClassForLocationDictionary:v6] == 1)
    {
      v7 = MEMORY[0x277D3FAD8];
      v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v9 = [v8 localizedStringForKey:@"Location" value:&stru_282D7C630 table:0];
      v2 = [v7 preferenceSpecifierNamed:v9 target:self set:0 get:sel_locationStatus_ detail:NSClassFromString(&cfstr_Puilocationser.isa) cell:2 edit:0];

      v10 = [MEMORY[0x277CCABB0] numberWithInt:{-[AUSystemSettingsSpecifiersProvider _isLocationServicesRestricted](self, "_isLocationServicesRestricted") ^ 1}];
      [v2 setProperty:v10 forKey:*MEMORY[0x277D3FF38]];

      applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      [v2 setProperty:applicationBundleIdentifier2 forKey:*MEMORY[0x277D3FFB8]];

      [v2 setProperty:NSClassFromString(&cfstr_Psuilocationse.isa) forKey:*MEMORY[0x277D3FE58]];
      [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v2 setObject:@"com.apple.graphic-icon.location" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)locationStatus:(id)status
{
  v4 = CLCopyAppsUsingLocation();
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v4 objectForKey:applicationBundleIdentifier];

  v7 = [MEMORY[0x277CBFC10] entityAuthorizationForLocationDictionary:v6];
  v13 = 0;
  applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v9 = [(AUSystemSettingsSpecifiersProvider *)self getLearnedRoutesAccess:&v13 visitHistoryAccess:&v13 + 4 fromDetails:v4 serviceKey:applicationBundleIdentifier2];

  if (!v9)
  {
    v10 = _AULoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [AUSystemSettingsSpecifiersProvider locationStatus:];
    }
  }

  v11 = [(AUSystemSettingsSpecifiersProvider *)self authLevelStringForStatus:v7 learnedRoutesAccess:v13 visitHistoryAccess:HIDWORD(v13)];

  return v11;
}

- (BOOL)getLearnedRoutesAccess:(int *)access visitHistoryAccess:(int *)historyAccess fromDetails:(id)details serviceKey:(id)key
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBFC10];
  keyCopy = key;
  v10 = [v8 getVisitHistoryAccess:historyAccess forBundleIdentifier:keyCopy];
  v11 = [MEMORY[0x277CBFC10] getLearnedRoutesAccess:access forBundleIdentifier:keyCopy];

  v12 = _AULoggingFacility();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *historyAccess;
      v20 = 67109120;
      v21 = v14;
      _os_log_impl(&dword_21BAF4000, v13, OS_LOG_TYPE_DEFAULT, "Got visit history state: %d", &v20, 8u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [AUSystemSettingsSpecifiersProvider getLearnedRoutesAccess:visitHistoryAccess:fromDetails:serviceKey:];
  }

  v15 = _AULoggingFacility();
  v16 = v15;
  if (v11)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *access;
      v20 = 67109120;
      v21 = v17;
      _os_log_impl(&dword_21BAF4000, v16, OS_LOG_TYPE_DEFAULT, "Got learned routes access state: %d", &v20, 8u);
    }
  }

  else if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [AUSystemSettingsSpecifiersProvider getLearnedRoutesAccess:visitHistoryAccess:fromDetails:serviceKey:];
  }

  v18 = *MEMORY[0x277D85DE8];
  return v10 & v11;
}

- (id)authLevelStringForStatus:(unint64_t)status learnedRoutesAccess:(int)access visitHistoryAccess:(int)historyAccess
{
  v5 = 0;
  if (status > 1)
  {
    if (status == 2)
    {
      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      if (access == 3 || historyAccess == 3)
      {
        v8 = @"WHEN_IN_USE_AUTHORIZATION_AND_MORE";
      }

      else
      {
        v8 = @"WHEN_IN_USE_AUTHORIZATION_SHORT";
      }
    }

    else
    {
      if (status != 4)
      {
        goto LABEL_14;
      }

      v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v7 = v6;
      v8 = @"ALWAYS_AUTHORIZATION";
    }
  }

  else if (status)
  {
    if (status != 1)
    {
      goto LABEL_14;
    }

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"NEVER_AUTHORIZATION";
  }

  else
  {
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = @"NOT_DETERMINED_AUTHORIZATION_SHORT";
  }

  v5 = [v6 localizedStringForKey:v8 value:&stru_282D7C630 table:0];

LABEL_14:

  return v5;
}

- (id)privacySpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  lookupCopy = lookup;
  overridesCopy = overrides;
  array = [MEMORY[0x277CBEB18] array];
  locationServicesSpecifier = [(AUSystemSettingsSpecifiersProvider *)self locationServicesSpecifier];
  [array na_safeAddObject:locationServicesSpecifier];

  if (_os_feature_enabled_impl())
  {
    [(AUSystemSettingsSpecifiersProvider *)self contactsServicesSpecifier];
  }

  else
  {
    [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C100] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  }
  v10 = ;
  [array na_safeAddObject:v10];

  v11 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1E0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v11];

  photosServicesSpecifier = [(AUSystemSettingsSpecifiersProvider *)self photosServicesSpecifier];
  [array na_safeAddObject:photosServicesSpecifier];

  accessoriesSpecifier = [(AUSystemSettingsSpecifiersProvider *)self accessoriesSpecifier];
  [array na_safeAddObject:accessoriesSpecifier];

  v14 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C110] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v14];

  networkServicesSpecifier = [(AUSystemSettingsSpecifiersProvider *)self networkServicesSpecifier];
  [array na_safeAddObject:networkServicesSpecifier];

  mEMORY[0x277D3F990] = [MEMORY[0x277D3F990] sharedManager];
  v17 = [mEMORY[0x277D3F990] capabilityBoolAnswer:@"9RryeqF6OCWlbaXP2Qsoag"];

  if (v17)
  {
    v18 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1B8] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
    [array na_safeAddObject:v18];
  }

  v19 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1A8] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v19];

  v20 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C218] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v20];

  v21 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1B0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v21];

  v22 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C120] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v22];

  v23 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C168] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v23];

  contactlessAndNFCSpecifier = [(AUSystemSettingsSpecifiersProvider *)self contactlessAndNFCSpecifier];
  if (contactlessAndNFCSpecifier)
  {
    [array na_safeAddObject:contactlessAndNFCSpecifier];
  }

  else
  {
    v25 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C128] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
    [array na_safeAddObject:v25];
  }

  v26 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1E8] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v26];

  v27 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C258] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v27];

  v28 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C148] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v28];

  if ((self->_policyOptions & 0x800000000000) != 0)
  {
    v29 = [(AUSystemSettingsSpecifiersProvider *)self walletSpecifierWithTCCServiceLookup:lookupCopy];
    [array na_safeAddObject:v29];
  }

  v30 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C1A0] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v30];

  v31 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C198] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v31];

  if (_os_feature_enabled_impl())
  {
    v32 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C180] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
    [array na_safeAddObject:v32];
  }

  v33 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C248] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v33];

  return array;
}

- (id)privacySpecifierForService:(__CFString *)service tccServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  lookupCopy = lookup;
  overridesCopy = overrides;
  policyOptions = self->_policyOptions;
  v11 = [_PSServicePolicyOptions objectForKey:service];
  v12 = [v11 unsignedIntegerValue] & policyOptions;

  if (!v12)
  {
    v20 = 0;
    goto LABEL_42;
  }

  v13 = [overridesCopy containsObject:service];
  objc_opt_class();
  v14 = [lookupCopy objectForKeyedSubscript:service];
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  objc_opt_class();
  v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D6C0D0]];

  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (!v19)
  {
    if (!self->_forcePolicyOptions)
    {
      v23 = 0;
      v17 = 0;
LABEL_40:
      v23 = v23;
      v20 = v23;
      goto LABEL_41;
    }

    goto LABEL_13;
  }

  if (v13)
  {
LABEL_13:

    v17 = MEMORY[0x277CBEC28];
  }

  v21 = MEMORY[0x277D3FAD8];
  v22 = [_TtC19AppSystemSettingsUI17AUHelperFunctions localizedDisplayNameForTCCService:service];
  v23 = [v21 preferenceSpecifierNamed:v22 target:self set:sel_setPrivacyAccess_forSpecifier_ get:sel_privacyAccessForSpecifier_ detail:0 cell:6 edit:0];

  if ((!CFEqual(service, *MEMORY[0x277D6C1E8]) || objc_opt_class() && [MEMORY[0x277D493B0] isSecureElementTCCServiceEligible]) && (!CFEqual(service, *MEMORY[0x277D6C128]) || objc_opt_class() && objc_msgSend(MEMORY[0x277D493B0], "isContactlessTCCServiceEligible")))
  {
    [v23 setProperty:service forKey:@"service"];
    settingsIconCache = [MEMORY[0x277D3F930] settingsIconCache];
    v25 = [_TtC19AppSystemSettingsUI17AUHelperFunctions classicIconCacheKeyForTCCService:service];
    v26 = [settingsIconCache imageForKey:v25];

    if (v26)
    {
      goto LABEL_22;
    }

    v27 = MEMORY[0x277D755B8];
    v28 = [_TtC19AppSystemSettingsUI17AUHelperFunctions classicIconCacheKeyForTCCService:service];
    v29 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v27 imageNamed:v28 inBundle:v29 compatibleWithTraitCollection:0];

    if (v26)
    {
LABEL_22:
      [v23 setProperty:v26 forKey:*MEMORY[0x277D3FFC0]];

      v30 = 0;
    }

    else
    {
      v30 = 1;
    }

    v31 = [_TtC19AppSystemSettingsUI17AUHelperFunctions associatedTypedIconIdentifierForTCCService:service];
    v32 = v31;
    if (v30 && v31)
    {
      [v23 setObject:v31 forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    }

    v33 = [_TtC19AppSystemSettingsUI17AUHelperFunctions associatedApplicationBundleIdentifierForTCCService:service];
    if (v33)
    {
      v34 = v30;
    }

    else
    {
      v34 = 0;
    }

    if (v34 == 1)
    {
      [v23 setObject:v33 forKeyedSubscript:*MEMORY[0x277D40008]];
      [v23 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
    }

    v35 = [AUSystemSettingsSpecifiersProvider isServiceRestricted:service];
    if (CFEqual(service, *MEMORY[0x277D6C238]))
    {
      v36 = objc_opt_new();
      if (([v36 crossAppTrackingAllowedSwitchEnabled] & 1) == 0)
      {

        v35 = 1;
        v17 = MEMORY[0x277CBEC28];
      }
    }

    if (CFEqual(service, *MEMORY[0x277D6C250]))
    {
      v37 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v17, "BOOLValue") ^ 1}];

      v17 = v37;
    }

    v38 = [MEMORY[0x277CCABB0] numberWithBool:((v35 | v13) & 1) == 0];
    [v23 setProperty:v38 forKey:*MEMORY[0x277D3FF38]];
    v39 = [v23 propertyForKey:*MEMORY[0x277D40148]];
    [v39 setCellEnabled:{objc_msgSend(v38, "BOOLValue")}];

    [v23 setProperty:v17 forKey:*MEMORY[0x277D401A8]];
    goto LABEL_40;
  }

  v20 = 0;
LABEL_41:

LABEL_42:

  return v20;
}

- (void)setPrivacyAccess:(id)access forSpecifier:(id)specifier
{
  accessCopy = access;
  specifierCopy = specifier;
  objc_initWeak(location, self);
  v8 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v10 = [v8 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke;
  v71[3] = &unk_2782EF5E8;
  objc_copyWeak(&v74, location);
  v11 = v10;
  v72 = v11;
  v12 = accessCopy;
  v73 = v12;
  v13 = MEMORY[0x21CF002C0](v71);
  v14 = [specifierCopy propertyForKey:*MEMORY[0x277D401A8]];
  v15 = [v12 isEqual:v14];

  if ((v15 & 1) == 0)
  {
    v16 = [specifierCopy propertyForKey:@"service"];
    if (CFStringCompare(v16, *MEMORY[0x277D6C250], 0) == kCFCompareEqualTo)
    {
      v17 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v12, "BOOLValue") ^ 1}];

      v12 = v17;
    }

    if ([v12 BOOLValue] && CFStringCompare(v16, *MEMORY[0x277D6C238], 0) == kCFCompareEqualTo)
    {
      v18 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v19 = [v18 localizedStringForKey:@"Allow Tracking" value:&stru_282D7C630 table:0];

      v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v21 = [v20 localizedStringForKey:@"Allow this app to track you across apps and websites owned by other companies." value:&stru_282D7C630 table:0];

      v56 = v21;
      v57 = v19;
      v58 = [MEMORY[0x277D75110] alertControllerWithTitle:v19 message:v21 preferredStyle:1];
      v22 = MEMORY[0x277D750F8];
      v23 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v24 = [v23 localizedStringForKey:@"Allow" value:&stru_282D7C630 table:0];
      v67[0] = MEMORY[0x277D85DD0];
      v67[1] = 3221225472;
      v67[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_444;
      v67[3] = &unk_2782EF610;
      v70[0] = v13;
      v68 = v12;
      v70[1] = v16;
      v69[0] = specifierCopy;
      v69[1] = self;
      v25 = [v22 actionWithTitle:v24 style:0 handler:v67];

      [v58 addAction:v25];
      v55 = v25;
      v26 = MEMORY[0x277D750F8];
      v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v28 = [v27 localizedStringForKey:@"Cancel" value:&stru_282D7C630 table:0];
      v66[0] = MEMORY[0x277D85DD0];
      v66[1] = 3221225472;
      v66[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_2_449;
      v66[3] = &unk_2782EF638;
      v66[4] = self;
      v29 = [v26 actionWithTitle:v28 style:0 handler:v66];

      [v58 addAction:v29];
      v30 = MEMORY[0x277D750F8];
      v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v32 = [v31 localizedStringForKey:@"Learn more…" value:&stru_282D7C630 table:0];
      v65[0] = MEMORY[0x277D85DD0];
      v65[1] = 3221225472;
      v65[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_3;
      v65[3] = &unk_2782EF638;
      v65[4] = self;
      v33 = [v30 actionWithTitle:v32 style:0 handler:v65];

      [v58 addAction:v33];
      delegate = [(AUSystemSettingsSpecifiersProvider *)self delegate];
      [delegate systemSettingsSpecifiersProvider:self presentViewController:v58 animated:1];
      v35 = v70;
      v36 = &v68;
      v37 = v69;
    }

    else
    {
      if (([v12 BOOLValue] & 1) != 0 || CFStringCompare(v16, *MEMORY[0x277D6C1E8], 0))
      {
        (v13)[2](v13, v12, v16, specifierCopy);
        goto LABEL_12;
      }

      v38 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v57 = [v38 localizedStringForKey:@"Turn Off Using The Secure Element With “%@”" value:&stru_282D7C630 table:0];

      v39 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v56 = [v39 localizedStringForKey:@"Any cards that require the Secure Element will be removed from “%@”." value:&stru_282D7C630 table:0];

      v59 = MEMORY[0x277D75110];
      v40 = MEMORY[0x277CCACA8];
      localizedName = [v11 localizedName];
      v42 = [v40 stringWithFormat:v57, localizedName];
      v43 = MEMORY[0x277CCACA8];
      localizedName2 = [v11 localizedName];
      v45 = [v43 stringWithFormat:v56, localizedName2];
      v58 = [v59 alertControllerWithTitle:v42 message:v45 preferredStyle:1];

      v46 = MEMORY[0x277D750F8];
      v47 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v48 = [v47 localizedStringForKey:@"Turn Off" value:&stru_282D7C630 table:0];
      v61[0] = MEMORY[0x277D85DD0];
      v61[1] = 3221225472;
      v61[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_4;
      v61[3] = &unk_2782EF610;
      v64[0] = v13;
      v62 = v12;
      v64[1] = v16;
      v63[0] = specifierCopy;
      v63[1] = self;
      v49 = [v46 actionWithTitle:v48 style:2 handler:v61];
      [v58 addAction:v49];

      v50 = MEMORY[0x277D750F8];
      v51 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v52 = [v51 localizedStringForKey:@"Cancel" value:&stru_282D7C630 table:0];
      v60[0] = MEMORY[0x277D85DD0];
      v60[1] = 3221225472;
      v60[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_5;
      v60[3] = &unk_2782EF638;
      v60[4] = self;
      v53 = [v50 actionWithTitle:v52 style:1 handler:v60];
      [v58 addAction:v53];

      delegate2 = [(AUSystemSettingsSpecifiersProvider *)self delegate];
      [delegate2 systemSettingsSpecifiersProvider:self presentViewController:v58 animated:1];
      v35 = v64;
      v36 = &v62;
      v37 = v63;
    }
  }

LABEL_12:

  objc_destroyWeak(&v74);
  objc_destroyWeak(location);
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke(uint64_t a1, void *a2, const __CFString *a3, void *a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v10 = *(a1 + 32);
  if (v10)
  {
    v11 = [v10 URL];
    v12 = CFBundleCreate(0, v11);

    if (v12)
    {
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_2;
      v23[3] = &__block_descriptor_40_e5_v8__0l;
      v23[4] = v12;
      v13 = MEMORY[0x21CF002C0](v23);
      [v7 BOOLValue];
      if (TCCAccessSetForBundle())
      {
        if (CFStringCompare(a3, *MEMORY[0x277D6C250], 0) == kCFCompareEqualTo)
        {
          v14 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v7, "BOOLValue") ^ 1}];

          v7 = v14;
        }

        [v8 setProperty:v7 forKey:*MEMORY[0x277D401A8]];
      }

      if (v13)
      {
        v13[2](v13);
      }
    }
  }

  v15 = *MEMORY[0x277D6C238];
  v16 = TCCAccessCopyBundleIdentifiersForService();
  if (![v16 count])
  {
    v17 = _AULoggingFacility();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v25 = "[AUSystemSettingsSpecifiersProvider setPrivacyAccess:forSpecifier:]_block_invoke";
      _os_log_impl(&dword_21BAF4000, v17, OS_LOG_TYPE_DEFAULT, "%s: all apps were disabled for kTCCServiceUserTracking. Resetting ad identifier.", buf, 0xCu);
    }

    v18 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v18 clearAdvertisingIdentifier];
  }

  if ([*(a1 + 40) BOOLValue])
  {
    v19 = 3;
  }

  else
  {
    v19 = 2;
  }

  [MEMORY[0x277D4D8F0] trackingStateOfRequestForSpecificApp:v19 view:@"AppSettings"];
  v20 = _AULoggingFacility();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = [WeakRetained applicationBundleIdentifier];
    *buf = 138412290;
    v25 = v21;
    _os_log_impl(&dword_21BAF4000, v20, OS_LOG_TYPE_DEFAULT, "########### Quitting application (%@) in response to privacy settings change.", buf, 0xCu);
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_444(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  v5 = [*(a1 + 48) delegate];
  [v5 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 48)];
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_2_449(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 32)];
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 32)];

  v4 = objc_opt_new();
  v3 = [*(a1 + 32) delegate];
  [v3 systemSettingsSpecifiersProvider:*(a1 + 32) presentViewController:v4 animated:1];
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  (*(*(a1 + 56) + 16))();
  v5 = [*(a1 + 48) delegate];
  [v5 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 48)];
}

void __68__AUSystemSettingsSpecifiersProvider_setPrivacyAccess_forSpecifier___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 32)];
}

- (id)privacyAccessForSpecifier:(id)specifier
{
  v3 = [specifier propertyForKey:*MEMORY[0x277D401A8]];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x277CBEC28];
  }

  v6 = v5;

  return v5;
}

- (id)pasteboardSpecifier
{
  v15[3] = *MEMORY[0x277D85DE8];
  if ((self->_policyOptions & 0x20000000000) != 0 && [(AUSystemSettingsSpecifiersProvider *)self shouldShowPasteboardSpecifier])
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [_TtC19AppSystemSettingsUI17AUHelperFunctions localizedDisplayNameForTCCService:*MEMORY[0x277D6C1C8]];
    v5 = [v3 preferenceSpecifierNamed:v4 target:self set:sel_setPasteboardAccess_forSpecifier_ get:sel_pasteboardAccessForSpecifier_ detail:objc_opt_class() cell:2 edit:0];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Ask" value:&stru_282D7C630 table:0];
    v15[0] = v7;
    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Deny" value:&stru_282D7C630 table:0];
    v15[1] = v9;
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"Allow" value:&stru_282D7C630 table:0];
    v15[2] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];
    [v5 setValues:&unk_282D7F768 titles:v12];
  }

  else
  {
    v5 = 0;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)shouldShowPasteboardSpecifier
{
  v3 = *MEMORY[0x277D6C1C8];
  v13 = 0;
  v14 = 0;
  v12 = 0;
  AUGetAuthorizationStatesForService(v3, &v14, &v13, &v12);
  v4 = v14;
  v5 = v13;
  v6 = v12;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  if ([v4 containsObject:applicationBundleIdentifier])
  {
    v8 = 1;
  }

  else
  {
    applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    if ([v5 containsObject:applicationBundleIdentifier2])
    {
      v8 = 1;
    }

    else
    {
      applicationBundleIdentifier3 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      v8 = [v6 containsObject:applicationBundleIdentifier3];
    }
  }

  return v8;
}

- (id)pasteboardAccessForSpecifier:(id)specifier
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277D6C1C8];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  AUGetAuthorizationStatesForService(v4, &v21, &v20, &v19);
  v5 = v21;
  v6 = v20;
  v7 = v19;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v9 = [v5 containsObject:applicationBundleIdentifier];

  if (v9)
  {
    v10 = &unk_282D7F6F0;
  }

  else
  {
    applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v12 = [v6 containsObject:applicationBundleIdentifier2];

    if (v12)
    {
      v10 = &unk_282D7F6C0;
    }

    else
    {
      applicationBundleIdentifier3 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      v14 = [v7 containsObject:applicationBundleIdentifier3];

      if (v14)
      {
        v10 = &unk_282D7F6D8;
      }

      else
      {
        v15 = _AULoggingFacility();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          applicationBundleIdentifier4 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
          *buf = 136315394;
          v23 = "[AUSystemSettingsSpecifiersProvider pasteboardAccessForSpecifier:]";
          v24 = 2112;
          v25 = applicationBundleIdentifier4;
          _os_log_impl(&dword_21BAF4000, v15, OS_LOG_TYPE_DEFAULT, "%s: couldn't find auth state for %@", buf, 0x16u);
        }

        v10 = &unk_282D7F708;
      }
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)setPasteboardAccess:(id)access forSpecifier:(id)specifier
{
  v5 = *MEMORY[0x277D6C1C8];
  accessCopy = access;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  integerValue = [accessCopy integerValue];

  AUSetTCCLevelForService(v5, applicationBundleIdentifier, integerValue);
}

+ (BOOL)isServiceRestricted:(id)restricted
{
  restrictedCopy = restricted;
  CFPreferencesAppSynchronize(@"com.apple.springboard");
  v4 = CFPreferencesCopyAppValue(@"SBParentalControlsCapabilities", @"com.apple.springboard");
  v5 = v4;
  if (v4)
  {
    v6 = [v4 containsObject:restrictedCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)trackingSpecifiersWithTCCServiceLookup:(id)lookup tccServiceOverrides:(id)overrides
{
  v6 = MEMORY[0x277CBEB18];
  overridesCopy = overrides;
  lookupCopy = lookup;
  array = [v6 array];
  v10 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C250] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];
  [array na_safeAddObject:v10];

  v11 = [(AUSystemSettingsSpecifiersProvider *)self privacySpecifierForService:*MEMORY[0x277D6C238] tccServiceLookup:lookupCopy tccServiceOverrides:overridesCopy];

  [array na_safeAddObject:v11];
  if ([array count])
  {
    array2 = [MEMORY[0x277CBEB18] array];
    v13 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TRACKING_GROUP"];
    [array2 addObject:v13];
    [array2 addObjectsFromArray:array];
  }

  else
  {
    array2 = 0;
  }

  return array2;
}

- (id)documentsSpecifier
{
  if ((self->_policyOptions & 0x400000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x277CC1E70]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
      infoDictionary = [v9 infoDictionary];

      v11 = [infoDictionary objectForKeyedSubscript:@"UISupportsDocumentBrowser"];
      bOOLValue = [v11 BOOLValue];

      if (bOOLValue)
      {
        v13 = MEMORY[0x277D3FAD8];
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v15 = [v14 localizedStringForKey:@"Document Storage" value:&stru_282D7C630 table:0];
        v2 = [v13 preferenceSpecifierNamed:v15 target:self set:0 get:sel_documentSource_ detail:objc_opt_class() cell:2 edit:0];

        [v2 setIdentifier:@"DOCUMENT_STORAGE"];
        [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
        [v2 setObject:@"com.apple.DocumentsApp" forKeyedSubscript:*MEMORY[0x277D40008]];
        applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
        [v2 setProperty:applicationBundleIdentifier2 forKey:*MEMORY[0x277D3FF18]];
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)documentSource:(id)source
{
  sourceCopy = source;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v5 = dispatch_semaphore_create(0);
  v6 = MEMORY[0x277D05EB0];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__AUSystemSettingsSpecifiersProvider_documentSource___block_invoke;
  v11[3] = &unk_2782EF660;
  v13 = &v14;
  v8 = v5;
  v12 = v8;
  [v6 defaultSourceForBundleIdentifier:applicationBundleIdentifier completionBlock:v11];

  dispatch_semaphore_wait(v8, 0xFFFFFFFFFFFFFFFFLL);
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

intptr_t __53__AUSystemSettingsSpecifiersProvider_documentSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 displayName];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

- (id)contactlessNFCSpecifiers
{
  v10[1] = *MEMORY[0x277D85DE8];
  if ((self->_policyOptions & 0x8000000000000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x277D3FA88]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 initWithBundleID:applicationBundleIdentifier delegate:self onChange:&__block_literal_global_507];

    context = [v6 context];
    LODWORD(applicationBundleIdentifier) = [context shouldShowDefaultNFCAppPicker];

    if (applicationBundleIdentifier)
    {
      v10[0] = v6;
      v2 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
    }

    else
    {
      v2 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v2 = MEMORY[0x277CBEBF8];
  }

  v8 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)contactlessNFCSideButtonSpecifiers
{
  v25[2] = *MEMORY[0x277D85DE8];
  if ((self->_policyOptions & 0x10000000000000) == 0)
  {
    goto LABEL_5;
  }

  nfcContext = [(AUSystemSettingsSpecifiersProvider *)self nfcContext];

  if (!nfcContext)
  {
    v4 = MEMORY[0x277D49390];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __72__AUSystemSettingsSpecifiersProvider_contactlessNFCSideButtonSpecifiers__block_invoke;
    v24[3] = &unk_2782EF4B0;
    v24[4] = self;
    v6 = [v4 contextWithBundleId:applicationBundleIdentifier onChange:v24];
    [(AUSystemSettingsSpecifiersProvider *)self setNfcContext:v6];
  }

  nfcContext2 = [(AUSystemSettingsSpecifiersProvider *)self nfcContext];
  doubleClickToggleVisibilityType = [nfcContext2 doubleClickToggleVisibilityType];

  if (doubleClickToggleVisibilityType != 2)
  {
    v10 = MGGetSInt32Answer();
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v12 = v11;
    if (v10 == 2)
    {
      v13 = @"Double-Click Side Button";
    }

    else
    {
      v13 = @"Double-Click Home Button";
    }

    if (v10 == 2)
    {
      v14 = @"Get contactless cards ready at any time by double-clicking the side button.";
    }

    else
    {
      v14 = @"Get contactless cards ready from the Lock Screen by double-clicking the Home button.";
    }

    v15 = [v11 localizedStringForKey:v13 value:&stru_282D7C630 table:0];

    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v14 value:&stru_282D7C630 table:0];

    v18 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DOUBLE_CLICK_FOR_NFC_GROUP"];
    [v18 setObject:v17 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    v19 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v15 target:self set:sel_setDoubleClickForNFC_specifier_ get:sel_getDoubleClickForNFC_ detail:0 cell:6 edit:0];
    [v19 setIdentifier:@"DOUBLE_CLICK_FOR_NFC"];
    nfcContext3 = [(AUSystemSettingsSpecifiersProvider *)self nfcContext];
    doubleClickToggleVisibilityType2 = [nfcContext3 doubleClickToggleVisibilityType];

    if (doubleClickToggleVisibilityType2 == 1)
    {
      [v19 setObject:MEMORY[0x277CBEC28] forKeyedSubscript:*MEMORY[0x277D3FF38]];
    }

    v25[0] = v18;
    v25[1] = v19;
    v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:2];
  }

  else
  {
LABEL_5:
    v9 = 0;
  }

  v22 = *MEMORY[0x277D85DE8];

  return v9;
}

void __72__AUSystemSettingsSpecifiersProvider_contactlessNFCSideButtonSpecifiers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 systemSettingsSpecifiersProviderDidReloadSpecifiers:*(a1 + 32)];
}

- (id)getDoubleClickForNFC:(id)c
{
  v3 = MEMORY[0x277CCABB0];
  nfcContext = [(AUSystemSettingsSpecifiersProvider *)self nfcContext];
  v5 = [v3 numberWithBool:{objc_msgSend(nfcContext, "isDoubleClickEnabled")}];

  return v5;
}

- (void)setDoubleClickForNFC:(id)c specifier:(id)specifier
{
  cCopy = c;
  nfcContext = [(AUSystemSettingsSpecifiersProvider *)self nfcContext];
  bOOLValue = [cCopy BOOLValue];

  [nfcContext setDoubleClickEnabled:bOOLValue];
}

- (id)exposureSpecifiersWithTCCServiceLookup:(id)lookup
{
  lookupCopy = lookup;
  if ((self->_policyOptions & 0x100000000) == 0)
  {
    v5 = 0;
    goto LABEL_14;
  }

  if (![(AUSystemSettingsSpecifiersProvider *)self enServiceMatched])
  {
    [(AUSystemSettingsSpecifiersProvider *)self setEnServiceMatched:1];
    matchingBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self matchingBundleIdentifier];
    if (matchingBundleIdentifier)
    {
LABEL_7:

      goto LABEL_8;
    }

    v7 = [lookupCopy objectForKeyedSubscript:*MEMORY[0x277D6C158]];

    if (v7)
    {
      matchingBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      [(AUSystemSettingsSpecifiersProvider *)self setMatchingBundleIdentifier:matchingBundleIdentifier];
      goto LABEL_7;
    }
  }

LABEL_8:
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  matchingBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self matchingBundleIdentifier];

  if (matchingBundleIdentifier2)
  {
    v10 = PSBundlePathForPreferenceBundle();
    v11 = [MEMORY[0x277CCA8D8] bundleWithPath:v10];
    v12 = NSClassFromString(&cfstr_Enuiregiondeta.isa);
    if (v12 || ([v11 load], (v12 = NSClassFromString(&cfstr_Enuiregiondeta.isa)) != 0))
    {
      v13 = v12;
      v14 = MEMORY[0x277D3FAD8];
      v15 = [_TtC19AppSystemSettingsUI17AUHelperFunctions localizedDisplayNameForTCCService:*MEMORY[0x277D6C158]];
      v16 = [v14 preferenceSpecifierNamed:v15 target:0 set:0 get:0 detail:v13 cell:1 edit:0];

      applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      [v16 setUserInfo:applicationBundleIdentifier];

      [v16 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
      [v16 setObject:@"com.apple.graphic-icon.exposure-notifications" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
      [v8 addObject:v16];
    }
  }

  v5 = [v8 copy];

LABEL_14:

  return v5;
}

- (id)preferredLanguageSpecifier
{
  if ((self->_policyOptions & 0x2000000) != 0)
  {
    v4 = objc_alloc(MEMORY[0x277CC1E70]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v6 = [v4 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

    v7 = [v6 URL];
    v8 = v7;
    if (v7 && [v7 isFileURL])
    {
      v9 = [MEMORY[0x277CCA8D8] bundleWithURL:v8];
      normalizedLocalizations = [v9 normalizedLocalizations];
      v11 = [normalizedLocalizations count];
      preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
      v13 = [preferredLanguages count];

      v14 = MEMORY[0x277CCA8D8];
      preferredLanguages2 = [MEMORY[0x277CBEAF8] preferredLanguages];
      v36 = normalizedLocalizations;
      v16 = [v14 preferredLocalizationsFromArray:normalizedLocalizations forPreferences:preferredLanguages2];
      firstObject = [v16 firstObject];

      v18 = MEMORY[0x277D218D0];
      applicationBundleIdentifier2 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
      v20 = [v18 preferredLanguageForBundleID:applicationBundleIdentifier2];

      v21 = [v20 isEqualToString:firstObject];
      if (v13 > 1)
      {
        v24 = 0;
      }

      else
      {
        v22 = [v9 objectForInfoDictionaryKey:@"UIPrefersShowingLanguageSettings"];
        bOOLValue = [v22 BOOLValue];

        v24 = bOOLValue ^ 1;
      }

      if (v21 & ((v11 < 2) | v24))
      {
        v2 = 0;
      }

      else
      {
        v25 = MEMORY[0x277CCA8D8];
        v26 = PSBundlePathForPreferenceBundle();
        v28 = v27 = v26;
        [v25 bundleWithPath:v28];
        v29 = v35 = firstObject;

        v30 = MEMORY[0x277D3FAD8];
        v31 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v32 = [v31 localizedStringForKey:@"Language" value:&stru_282D7C630 table:0];
        v2 = [v30 preferenceSpecifierNamed:v32 target:self set:0 get:sel_preferredLanguage_ detail:objc_msgSend(v29 cell:"classNamed:" edit:{@"ISApplicationLanguageController", 2, 0}];

        [v2 setIdentifier:@"PREFERRED_LANGUAGE"];
        [v2 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40020]];
        [v2 setObject:@"com.apple.graphic-icon.language" forKeyedSubscript:*MEMORY[0x277D3FFD8]];
        applicationBundleIdentifier3 = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
        [v2 setProperty:applicationBundleIdentifier3 forKey:@"bundleID"];

        firstObject = v35;
      }
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)preferredLanguage:(id)language
{
  v3 = MEMORY[0x277D218D0];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 preferredLanguageForBundleID:applicationBundleIdentifier];

  v6 = MEMORY[0x277CBEAF8];
  _deviceLanguage = [MEMORY[0x277CBEAF8] _deviceLanguage];
  v8 = [v6 localeWithLocaleIdentifier:_deviceLanguage];
  v9 = [v8 localizedStringForLanguage:v5 context:3];

  return v9;
}

- (id)defaultAppSpecifierWithAppRecordsMatchingBlock:(id)block getter:(SEL)getter setter:(SEL)setter title:(id)title
{
  v46 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  titleCopy = title;
  if (blockCopy)
  {
    v38 = objc_opt_new();
    v37 = objc_opt_new();
    v12 = [MEMORY[0x277CC1E70] enumeratorWithOptions:0];
    v13 = MEMORY[0x277CCAC30];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __105__AUSystemSettingsSpecifiersProvider_defaultAppSpecifierWithAppRecordsMatchingBlock_getter_setter_title___block_invoke;
    v43[3] = &unk_2782EF688;
    v44 = blockCopy;
    v14 = [v13 predicateWithBlock:v43];
    [v12 setPredicate:v14];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v15 = v12;
    v16 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
    if (v16)
    {
      v17 = v16;
      setterCopy = setter;
      getterCopy = getter;
      v35 = titleCopy;
      v36 = blockCopy;
      v18 = 0;
      v19 = *v40;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v40 != v19)
          {
            objc_enumerationMutation(v15);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          bundleIdentifier = [v21 bundleIdentifier];
          applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
          v24 = [bundleIdentifier isEqualToString:applicationBundleIdentifier];

          v18 |= v24;
          bundleIdentifier2 = [v21 bundleIdentifier];
          [v37 addObject:bundleIdentifier2];

          localizedName = [v21 localizedName];
          [v38 addObject:localizedName];
        }

        v17 = [v15 countByEnumeratingWithState:&v39 objects:v45 count:16];
      }

      while (v17);

      if (v18)
      {
        v27 = MEMORY[0x277D3FAD8];
        v28 = objc_opt_class();
        v29 = v27;
        titleCopy = v35;
        v30 = [v29 preferenceSpecifierNamed:v35 target:self set:setterCopy get:getterCopy detail:v28 cell:2 edit:0];
        [v30 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:*MEMORY[0x277D40040]];
        [v30 setValues:v37 titles:v38];
      }

      else
      {
        v30 = 0;
        titleCopy = v35;
      }

      blockCopy = v36;
    }

    else
    {

      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

- (id)defaultBrowserSpecifier
{
  if ((self->_policyOptions & 0x20000000) != 0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Default Browser App" value:&stru_282D7C630 table:0];
    v2 = [(AUSystemSettingsSpecifiersProvider *)self defaultAppSpecifierWithAppRecordsMatchingBlock:&__block_literal_global_569 getter:sel_defaultBrowser_ setter:sel_setDefaultBrowser_specifier_ title:v5];

    [v2 setIdentifier:@"DEFAULT_BROWSER_APP"];
    v6 = objc_alloc(MEMORY[0x277CC1E70]);
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v8 = [v6 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

    v9 = [v8 URL];
    v10 = v9;
    if (v9 && [v9 isFileURL])
    {
      v11 = [MEMORY[0x277CCA8D8] bundleWithURL:v10];
      infoDictionary = [v11 infoDictionary];

      v13 = [infoDictionary objectForKeyedSubscript:@"UIUsesSystemDownloadLocation"];
      bOOLValue = [v13 BOOLValue];

      if (bOOLValue)
      {
        [v2 setDetailControllerClass:objc_opt_class()];
      }
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)defaultBrowser:(id)browser
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E98]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"https://"];
  v14 = 0;
  v5 = [v3 initWithURL:v4 error:&v14];
  v6 = v14;

  v7 = _AULoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleRecord = [v5 bundleRecord];
    bundleIdentifier = [bundleRecord bundleIdentifier];
    *buf = 138543362;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_21BAF4000, v7, OS_LOG_TYPE_DEFAULT, "Default browser app is %{public}@", buf, 0xCu);
  }

  bundleRecord2 = [v5 bundleRecord];
  bundleIdentifier2 = [bundleRecord2 bundleIdentifier];

  v12 = *MEMORY[0x277D85DE8];

  return bundleIdentifier2;
}

- (void)setDefaultBrowser:(id)browser specifier:(id)specifier
{
  browserCopy = browser;
  specifierCopy = specifier;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:browserCopy allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__AUSystemSettingsSpecifiersProvider_setDefaultBrowser_specifier___block_invoke;
  v12[3] = &unk_2782EF6D0;
  objc_copyWeak(&v14, &location);
  v11 = browserCopy;
  v13 = v11;
  [defaultWorkspace setDefaultWebBrowserToApplicationRecord:v8 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__AUSystemSettingsSpecifiersProvider_setDefaultBrowser_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _AULoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v15 = 138543362;
      v16 = v9;
      v10 = "Set default browser app to %{public}@";
      v11 = v7;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v5;
    v10 = "Error setting default browser app to %{public}@: %{public}@";
    v11 = v7;
    v12 = 22;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)defaultMailAppSpecifier
{
  if ((self->_policyOptions & 0x40000000) != 0)
  {
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Default Mail App" value:&stru_282D7C630 table:0];
    v2 = [(AUSystemSettingsSpecifiersProvider *)self defaultAppSpecifierWithAppRecordsMatchingBlock:&__block_literal_global_587 getter:sel_defaultMailApp_ setter:sel_setDefaultMailApp_specifier_ title:v5];

    [v2 setIdentifier:@"DEFAULT_MAIL_APP"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)defaultMailApp:(id)app
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E98]);
  v4 = [objc_alloc(MEMORY[0x277CBEBC0]) initWithString:@"mailto://"];
  v14 = 0;
  v5 = [v3 initWithURL:v4 error:&v14];
  v6 = v14;

  v7 = _AULoggingFacility();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    bundleRecord = [v5 bundleRecord];
    bundleIdentifier = [bundleRecord bundleIdentifier];
    *buf = 138543362;
    v16 = bundleIdentifier;
    _os_log_impl(&dword_21BAF4000, v7, OS_LOG_TYPE_DEFAULT, "Default mail app is %{public}@", buf, 0xCu);
  }

  bundleRecord2 = [v5 bundleRecord];
  bundleIdentifier2 = [bundleRecord2 bundleIdentifier];

  v12 = *MEMORY[0x277D85DE8];

  return bundleIdentifier2;
}

- (void)setDefaultMailApp:(id)app specifier:(id)specifier
{
  appCopy = app;
  specifierCopy = specifier;
  v16 = 0;
  v8 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:appCopy allowPlaceholder:0 error:&v16];
  v9 = v16;
  objc_initWeak(&location, self);
  defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__AUSystemSettingsSpecifiersProvider_setDefaultMailApp_specifier___block_invoke;
  v12[3] = &unk_2782EF6D0;
  objc_copyWeak(&v14, &location);
  v11 = appCopy;
  v13 = v11;
  [defaultWorkspace setDefaultMailClientToApplicationRecord:v8 completionHandler:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __66__AUSystemSettingsSpecifiersProvider_setDefaultMailApp_specifier___block_invoke(uint64_t a1, char a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = _AULoggingFacility();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a1 + 32);
      v15 = 138543362;
      v16 = v9;
      v10 = "Set default mail app to %{public}@";
      v11 = v7;
      v12 = 12;
LABEL_6:
      _os_log_impl(&dword_21BAF4000, v11, OS_LOG_TYPE_DEFAULT, v10, &v15, v12);
    }
  }

  else if (v8)
  {
    v13 = *(a1 + 32);
    v15 = 138543618;
    v16 = v13;
    v17 = 2114;
    v18 = v5;
    v10 = "Error setting default mail app to %{public}@: %{public}@";
    v11 = v7;
    v12 = 22;
    goto LABEL_6;
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (id)downloadsSpecifiers
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CC1E70]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier allowPlaceholder:1 error:0];

  v6 = [v5 URL];
  v7 = v6;
  if (v6 && [v6 isFileURL])
  {
    v8 = [MEMORY[0x277CCA8D8] bundleWithURL:v7];
    infoDictionary = [v8 infoDictionary];

    v10 = [infoDictionary objectForKeyedSubscript:@"UIUsesSystemDownloadLocation"];
    bOOLValue = [v10 BOOLValue];

    if (bOOLValue)
    {
      v12 = MEMORY[0x277CCA8D8];
      v13 = PSBundlePathForPreferenceBundle();
      v14 = [v12 bundleWithPath:v13];
      [v14 load];

      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v16 = [v15 localizedStringForKey:@"Downloads" value:&stru_282D7C630 table:0];

      v17 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v16 target:self set:0 get:sel__downloadsFolderTitle detail:NSClassFromString(&cfstr_Safaridownload.isa) cell:2 edit:0];
      [v17 setIdentifier:@"DOWNLOADS"];
      v18 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"DOWNLOADS_GROUP"];
      v22[0] = v18;
      v22[1] = v17;
      v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    }

    else
    {
      v19 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v19 = MEMORY[0x277CBEBF8];
  }

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

- (id)_downloadsFolderTitle
{
  defaultDownloadsFolderTitle = [(AUSystemSettingsSpecifiersProvider *)self defaultDownloadsFolderTitle];
  v3 = defaultDownloadsFolderTitle;
  if (defaultDownloadsFolderTitle)
  {
    v4 = defaultDownloadsFolderTitle;
  }

  else
  {
    v4 = &stru_282D7C630;
  }

  v5 = v4;

  return v4;
}

- (void)_updateDownloadsFolderTitle
{
  downloadSettings = self->_downloadSettings;
  if (!downloadSettings)
  {
    v4 = objc_alloc_init(MEMORY[0x277D061F0]);
    v5 = self->_downloadSettings;
    self->_downloadSettings = v4;

    downloadSettings = self->_downloadSettings;
  }

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke;
  v6[3] = &unk_2782EF720;
  v6[4] = self;
  [(DOCDownloadSettings *)downloadSettings fetchDefaultDownloadsLocationItem:v6];
}

void __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 || ([v5 providerDomainID], v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
    v7 = _AULoggingFacility();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_cold_2();
    }
  }

  else
  {
    v15 = 0;
    v7 = [MEMORY[0x277CC6420] providerDomainForItem:v5 error:&v15];
    v6 = v15;
    if (v6)
    {
      v9 = _AULoggingFacility();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_cold_1();
      }
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_620;
      block[3] = &unk_2782EF6F8;
      v10 = v7;
      v11 = *(a1 + 32);
      v13 = v10;
      v14 = v11;
      dispatch_async(MEMORY[0x277D85CD0], block);
      v9 = v13;
    }
  }
}

void __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_620(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = DOCLocalizedDisplayName();
  v3 = [*(a1 + 40) defaultDownloadsFolderTitle];
  v4 = [v3 isEqualToString:v5];

  if ((v4 & 1) == 0)
  {
    [*(a1 + 40) setDefaultDownloadsFolderTitle:v5];
    [*(a1 + 40) reloadSpecifiers];
  }
}

- (id)tapToPayScreenLockSpecifiers
{
  v36[2] = *MEMORY[0x277D85DE8];
  if ((self->_policyOptions & 0x8000000000) != 0 && (v3 = MEMORY[0x277CD9D90], -[AUSystemSettingsSpecifiersProvider applicationBundleIdentifier](self, "applicationBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = [v3 isProximityReaderSupported:v4], v4, v3))
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TAP_TO_PAY_SCREEN_LOCK_GROUP"];
    v6 = MEMORY[0x277D3FAD8];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Tap to Pay on iPhone" value:&stru_282D7C630 table:0];
    v9 = [v6 groupSpecifierWithName:v8];

    v10 = MEMORY[0x277CD9D90];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v12 = [v10 shouldDisablePINPrivacyLockForBundleID:applicationBundleIdentifier];

    if (v12)
    {
      mEMORY[0x277D262A0] = [MEMORY[0x277D262A0] sharedConnection];
      managingOrganizationInformation = [mEMORY[0x277D262A0] managingOrganizationInformation];

      v15 = [managingOrganizationInformation objectForKeyedSubscript:*MEMORY[0x277D26360]];
      if ([v15 length] && (objc_msgSend(v15, "isEqualToString:", @"unknown") & 1) == 0)
      {
        v25 = PSIsPearlAvailable();
        v26 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v27 = v26;
        if (v25)
        {
          v28 = @"The option to use Face ID or passcode to secure Device during transactions that require customers to enter their PIN is managed by %@.";
        }

        else
        {
          v28 = @"The option to use Touch ID or passcode to secure Device during transactions that require customers to enter their PIN is managed by %@.";
        }

        v18 = [v26 localizedStringForKey:v28 value:&stru_282D7C630 table:0];

        v24 = [MEMORY[0x277CCACA8] localizedStringWithFormat:v18, v15];
      }

      else
      {
        v16 = PSIsPearlAvailable();
        v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v18 = v17;
        if (v16)
        {
          v19 = @"The option to use Face ID or passcode to secure Device during transactions that require customers to enter their PIN is controlled by a mobile device management profile installed on this device.";
        }

        else
        {
          v19 = @"The option to use Touch ID or passcode to secure Device during transactions that require customers to enter their PIN is controlled by a mobile device management profile installed on this device.";
        }

        v24 = [v17 localizedStringForKey:v19 value:&stru_282D7C630 table:0];
      }

      v29 = v24;
      [v9 setObject:v24 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    else
    {
      v21 = PSIsPearlAvailable();
      v22 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      managingOrganizationInformation = v22;
      if (v21)
      {
        v23 = @"Use Face ID or passcode to secure Device during transactions that require customers to enter their PIN.";
      }

      else
      {
        v23 = @"Use Touch ID or passcode to secure Device during transactions that require customers to enter their PIN.";
      }

      v15 = [v22 localizedStringForKey:v23 value:&stru_282D7C630 table:0];
      [v9 setObject:v15 forKeyedSubscript:*MEMORY[0x277D3FF88]];
    }

    v30 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v31 = [v30 localizedStringForKey:@"Tap to Pay on iPhone Screen Lock" value:&stru_282D7C630 table:0];

    v32 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v31 target:self set:sel_setTapToPayScreenLockEnabled_specifier_ get:sel_isTapToPayScreenLockEnabled_ detail:0 cell:6 edit:0];
    [v32 setIdentifier:@"TAP_TO_PAY_SCREEN_LOCK"];
    v33 = [MEMORY[0x277CCABB0] numberWithInt:v12 ^ 1u];
    [v32 setObject:v33 forKeyedSubscript:*MEMORY[0x277D3FF38]];

    v36[0] = v9;
    v36[1] = v32;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:2];
  }

  else
  {
    v20 = MEMORY[0x277CBEBF8];
  }

  v34 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)isTapToPayScreenLockEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CD9D90];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v3 numberWithBool:{objc_msgSend(v4, "getPINPrivacyLockForBundleID:", applicationBundleIdentifier)}];

  return v6;
}

- (void)setTapToPayScreenLockEnabled:(id)enabled specifier:(id)specifier
{
  v5 = MEMORY[0x277CD9D90];
  bOOLValue = [enabled BOOLValue];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  [v5 setPINPrivacyLock:bOOLValue forBundleID:applicationBundleIdentifier];
}

- (id)tapToPayAlwaysPlaySoundSpecifiers
{
  v14[2] = *MEMORY[0x277D85DE8];
  if ((self->_policyOptions & 0x40000000000) != 0 && (v3 = MEMORY[0x277CD9D90], -[AUSystemSettingsSpecifiersProvider applicationBundleIdentifier](self, "applicationBundleIdentifier"), v4 = objc_claimAutoreleasedReturnValue(), LODWORD(v3) = [v3 isProximityReaderSupported:v4], v4, v3))
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND_GROUP"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Play Tap to Pay on iPhone sounds regardless of your current Ring / Silent Mode switch setting." value:&stru_282D7C630 table:0];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Always Play Sounds" value:&stru_282D7C630 table:0];

    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:sel_setTapToPayAlwaysPlaySoundEnabled_specifier_ get:sel_isTapToPayAlwaysPlaySoundEnabled_ detail:0 cell:6 edit:0];
    [v10 setIdentifier:@"TAP_TO_PAY_ALWAYS_PLAY_SOUND"];
    v14[0] = v5;
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)isTapToPayAlwaysPlaySoundEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CD9D90];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v3 numberWithBool:{objc_msgSend(v4, "getAlwaysPlaySoundForBundleID:", applicationBundleIdentifier)}];

  return v6;
}

- (void)setTapToPayAlwaysPlaySoundEnabled:(id)enabled specifier:(id)specifier
{
  v5 = MEMORY[0x277CD9D90];
  bOOLValue = [enabled BOOLValue];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  [v5 setAlwaysPlaySound:bOOLValue forBundleID:applicationBundleIdentifier];
}

- (id)tapToPayEnableDiagnostics
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CD9D90];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  LODWORD(v3) = [v3 isProximityReaderSupported:applicationBundleIdentifier];

  if (v3)
  {
    v5 = [MEMORY[0x277D3FAD8] groupSpecifierWithID:@"TAP_TO_PAY_ENABLE_DIAGNOSTICS_GROUP"];
    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = [v6 localizedStringForKey:@"Help improve Tap to Pay on iPhone by allowing Apple to request your feedback when transactions are not successfully completed." value:&stru_282D7C630 table:0];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    v8 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v9 = [v8 localizedStringForKey:@"Improve Tap to Pay on iPhone" value:&stru_282D7C630 table:0];

    v10 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v9 target:self set:sel_setTapToPayDiagnosticsEnabled_specifier_ get:sel_getTapToPayDiagnosticsEnabled_ detail:0 cell:6 edit:0];
    [v10 setIdentifier:@"TAP_TO_PAY_ENABLE_DIAGNOSTICS"];
    v14[0] = v5;
    v14[1] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  }

  else
  {
    v11 = MEMORY[0x277CBEBF8];
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)getTapToPayDiagnosticsEnabled:(id)enabled
{
  NSLog(&cfstr_Prsettingsprov.isa, a2, enabled);
  v4 = MEMORY[0x277CCABB0];
  v5 = MEMORY[0x277CD9D90];
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v7 = [v4 numberWithBool:{objc_msgSend(v5, "getEnableDiagnosticsForBundleID:", applicationBundleIdentifier)}];

  return v7;
}

- (void)setTapToPayDiagnosticsEnabled:(id)enabled specifier:(id)specifier
{
  enabledCopy = enabled;
  NSLog(&cfstr_Prsettingsprov_0.isa);
  v6 = MEMORY[0x277CD9D90];
  bOOLValue = [enabledCopy BOOLValue];

  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  [v6 setEnableDiagnostics:bOOLValue forBundleID:applicationBundleIdentifier];
}

- (id)driverKitSpecifiers
{
  v3 = objc_alloc(MEMORY[0x277D3FA00]);
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v5 = [v3 initWithBundleIdentifier:applicationBundleIdentifier];
  driverPolicy = self->_driverPolicy;
  self->_driverPolicy = v5;

  [(PSDriverPolicyForApp *)self->_driverPolicy setDelegate:self];
  v7 = self->_driverPolicy;

  return [(PSDriverPolicyForApp *)v7 specifiers];
}

- (void)observer:(id)observer updateSectionInfo:(id)info
{
  observerCopy = observer;
  infoCopy = info;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    sectionID = [infoCopy sectionID];
    applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
    v10 = [sectionID isEqualToString:applicationBundleIdentifier];

    if (v10)
    {
      delegate = [(AUSystemSettingsSpecifiersProvider *)self delegate];
      [delegate systemSettingsSpecifiersProviderDidReloadSpecifiers:self];
    }
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__AUSystemSettingsSpecifiersProvider_observer_updateSectionInfo___block_invoke;
    block[3] = &unk_2782EF748;
    block[4] = self;
    v13 = observerCopy;
    v14 = infoCopy;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

- (id)identityVerificationSpecifiers
{
  v15[2] = *MEMORY[0x277D85DE8];
  if (self->_showIdentityDocumentProviderExtension)
  {
    v3 = MEMORY[0x277D3FAD8];
    v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v5 = [v4 localizedStringForKey:@"Identity Verification" value:&stru_282D7C630 table:0];
    v6 = [v3 groupSpecifierWithName:v5];

    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"Use digital ID cards for proof of age or identity on websites. Apple and these apps do not know when or where you present your ID." value:&stru_282D7C630 table:0];
    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D3FF88]];

    [v6 setIdentifier:@"IDENTITY_VERIFICATION_GROUP"];
    v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v10 = [v9 localizedStringForKey:@"Allow on Websites" value:&stru_282D7C630 table:0];

    v11 = [MEMORY[0x277D3FAD8] preferenceSpecifierNamed:v10 target:self set:sel_setIdentityVerificationAllowOnWebsitesEnabled_specifier_ get:sel_isIdentityVerificationAllowOnWebsitesEnabled_ detail:0 cell:6 edit:0];
    [v11 setIdentifier:@"IDENTITY_VERIFICATION_ALLOW_ON_WEBSITES"];
    v15[0] = v6;
    v15[1] = v11;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  }

  else
  {
    v12 = MEMORY[0x277CBEBF8];
  }

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)isIdentityVerificationAllowOnWebsitesEnabled:(id)enabled
{
  v3 = MEMORY[0x277CCABB0];
  identitySettingsProvider = self->_identitySettingsProvider;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  v6 = [v3 numberWithBool:{-[DIIdentitySettingsProvider isDocumentProviderExtensionEnabledFor:](identitySettingsProvider, "isDocumentProviderExtensionEnabledFor:", applicationBundleIdentifier)}];

  return v6;
}

- (void)setIdentityVerificationAllowOnWebsitesEnabled:(id)enabled specifier:(id)specifier
{
  identitySettingsProvider = self->_identitySettingsProvider;
  enabledCopy = enabled;
  applicationBundleIdentifier = [(AUSystemSettingsSpecifiersProvider *)self applicationBundleIdentifier];
  bOOLValue = [enabledCopy BOOLValue];

  [(DIIdentitySettingsProvider *)identitySettingsProvider setDocumentProviderExtensionEnablementFor:applicationBundleIdentifier to:bOOLValue];
}

- (void)reloadSpecifiers
{
  delegate = [(AUSystemSettingsSpecifiersProvider *)self delegate];
  [delegate systemSettingsSpecifiersProviderDidReloadSpecifiers:self];
}

- (AUSystemSettingsSpecifiersProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)walletSpecifierWithTCCServiceLookup:(id)lookup
{
  sub_21BB230CC();
  sub_21BB230BC();
  sub_21BB230AC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB2418, &qword_21BB25068);
  v4 = sub_21BB22F5C();
  selfCopy = self;
  v6 = sub_21BB07364(v4);

  return v6;
}

void __76__AUSystemSettingsSpecifiersProvider_loadNetworkConfigurationsForceRefresh___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __62__AUSystemSettingsSpecifiersProvider_saveNetworkConfiguration__block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = *(a2 + 32);
  v5 = 136446722;
  v6 = "[AUSystemSettingsSpecifiersProvider saveNetworkConfiguration]_block_invoke";
  v7 = 2114;
  v8 = a1;
  v9 = 2114;
  v10 = v3;
  _os_log_error_impl(&dword_21BAF4000, log, OS_LOG_TYPE_ERROR, "%{public}s: Save error %{public}@ for %{public}@", &v5, 0x20u);
  v4 = *MEMORY[0x277D85DE8];
}

void __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __65__AUSystemSettingsSpecifiersProvider__updateDownloadsFolderTitle__block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end