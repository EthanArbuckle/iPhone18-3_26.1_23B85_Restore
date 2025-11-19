@interface ADAdTrackingSchedulingManager
+ (id)sharedInstance;
- (ADAdTrackingSchedulingManager)init;
- (APSConnection)pushConnection;
- (BOOL)_shouldSaveConfig;
- (BOOL)isAdEnabledLocality;
- (BOOL)isNewsOrStocksEnabledLocality;
- (BOOL)isSearchAdsEnabled;
- (BOOL)isSearchOrSegmentEnabled;
- (id)currentBundleID;
- (id)retrieveNewsRecord:(id *)a3;
- (int64_t)latestPersonalizedConsentVersion;
- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6;
- (void)dealloc;
- (void)forceExpiration;
- (void)handleAccountChange;
- (void)handleConfiguration;
- (void)migratePersonalizedAdsFromLAT;
- (void)migratePersonalizedAdsOnboarding;
- (void)pushDisable;
- (void)pushEnable;
- (void)refreshConfiguration:(id)a3;
- (void)registerForLockStateNotification;
- (void)setSessionManagementDefaults;
- (void)setStateForProtoAccount;
@end

@implementation ADAdTrackingSchedulingManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[ADAdTrackingSchedulingManager sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_0;

  return v3;
}

uint64_t __47__ADAdTrackingSchedulingManager_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_0 = objc_alloc_init(ADAdTrackingSchedulingManager);

  return MEMORY[0x2821F96F8]();
}

- (ADAdTrackingSchedulingManager)init
{
  v33.receiver = self;
  v33.super_class = ADAdTrackingSchedulingManager;
  v2 = [(ADAdTrackingSchedulingManager *)&v33 init];
  v3 = v2;
  if (v2)
  {
    v2->_isConfigRequestInFlight = 0;
    v4 = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, 0);
    v5 = sigterm_source;
    sigterm_source = v4;

    dispatch_source_set_event_handler(sigterm_source, &__block_literal_global_12);
    dispatch_resume(sigterm_source);
    v6 = +[ADAppTrackingService sharedInstance];
    v7 = +[ADIDManagerService sharedInstance];
    [(ADAdTrackingSchedulingManager *)v3 registerForLockStateNotification];
    v8 = [MEMORY[0x277CE9600] sharedInstance];
    v9 = dispatch_queue_create("com.apple.queue.adplatforms.adTracking", 0);
    v10 = _adTrackingQueue;
    _adTrackingQueue = v9;

    v11 = _adTrackingQueue;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __37__ADAdTrackingSchedulingManager_init__block_invoke_2;
    handler[3] = &unk_278C58530;
    v12 = v3;
    v32 = v12;
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v11, handler);
    v13 = objc_alloc_init(ADLoggingProfileMonitor);
    loggingProfileMonitor = v12->_loggingProfileMonitor;
    v12->_loggingProfileMonitor = v13;

    [(ADAdTrackingSchedulingManager *)v12 migratePersonalizedAdsFromLAT];
    [(ADAdTrackingSchedulingManager *)v12 migratePersonalizedAdsOnboarding];
    [(ADAdTrackingSchedulingManager *)v12 setSessionManagementDefaults];
    [(ADAdTrackingSchedulingManager *)v12 handleConfiguration];
    [(ADAdTrackingSchedulingManager *)v12 pushEnable];
    v15 = [MEMORY[0x277CCA9A0] defaultCenter];
    v16 = [MEMORY[0x277CCABD8] mainQueue];
    v26 = MEMORY[0x277D85DD0];
    v27 = 3221225472;
    v28 = __37__ADAdTrackingSchedulingManager_init__block_invoke_3;
    v29 = &unk_278C57E38;
    v17 = v12;
    v30 = v17;
    v18 = [v15 addObserverForName:@"com.apple.ap.adprivacyd.iTunesActiveAccountDidChangeNotification" object:0 queue:v16 usingBlock:&v26];
    accountChangedNotifyToken = v17->_accountChangedNotifyToken;
    v17->_accountChangedNotifyToken = v18;

    v20 = [MEMORY[0x277CE9638] sharedInstance];
    [v20 reloadStorefront:0];

    v21 = [MEMORY[0x277CCA9A0] defaultCenter];
    v22 = [MEMORY[0x277CCABD8] mainQueue];
    v23 = [v21 addObserverForName:@"com.apple.ap.adprivacyd.iTunesActiveStorefrontDidChangeNotification" object:0 queue:v22 usingBlock:&__block_literal_global_86];
    storeFrontNotifyToken = v17->_storeFrontNotifyToken;
    v17->_storeFrontNotifyToken = v23;
  }

  return v3;
}

void __37__ADAdTrackingSchedulingManager_init__block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Exiting due to SIGTERM"];
  _ADLog();

  exit(0);
}

void __37__ADAdTrackingSchedulingManager_init__block_invoke_2(uint64_t a1, xpc_object_t xdict)
{
  string = xpc_dictionary_get_string(xdict, *MEMORY[0x277D86430]);
  if (!string)
  {
    return;
  }

  v4 = string;
  if (strcmp("com.apple.ap.adprivacyd.iTunesActiveAccountDidChangeNotification", string))
  {
    if (strcmp("com.apple.ap.adprivacyd.iTunesActiveStorefrontDidChangeNotification", v4))
    {
      if (!MGGetBoolAnswer())
      {
        return;
      }

      if (!strcmp([@"com.apple.ap.adprivacyd.reconcile" UTF8String], v4))
      {
        v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"adprivacyd handling internal notification %@", @"com.apple.ap.adprivacyd.reconcile"];
        _ADLog();

        v14 = [MEMORY[0x277CE9658] sharedInstance];
        [v14 scheduleReconciliation:0.0];
        goto LABEL_26;
      }

      if (!strcmp([@"com.apple.ap.adprivacyd.deviceKnowledge" UTF8String], v4))
      {
        [MEMORY[0x277CCACA8] stringWithFormat:@"adprivacyd ignoring internal notification %@, it is no longer relevant.", @"com.apple.ap.adprivacyd.deviceKnowledge"];
      }

      else
      {
        if (!strcmp("com.apple.mobile.keybagd.first_unlock", v4))
        {
          v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Keybag First Unlock"];
          _ADLog();

          v14 = [MEMORY[0x277D42CD8] sharedInstance];
          [v14 startListening];
          goto LABEL_26;
        }

        if (strcmp("com.apple.ap.adprivacyd.launch", v4))
        {
          if (strcmp("com.apple.ap.adprivacyd.canceltasks", v4))
          {
            if (!strcmp("CPInstalledProfileDidChangeNotification", v4))
            {
              v11 = MEMORY[0x277CCACA8];
              v12 = @"AdPrivacyD launched by CPInstalledProfileDidChangeNotification";
            }

            else
            {
              if (strcmp("com.apple.ManagedConfiguration.profileListChanged", v4))
              {
                return;
              }

              v11 = MEMORY[0x277CCACA8];
              v12 = @"AdPrivacyD launched by com.apple.ManagedConfiguration.profileListChanged";
            }

            [v11 stringWithFormat:v12, v13];
            goto LABEL_25;
          }

          v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"adprivacyd handling internal notification %s", "com.apple.ap.adprivacyd.canceltasks"];
          _ADLog();

          v14 = [MEMORY[0x277CE9600] sharedInstance];
          [v14 cancelBackgroundTask:@"com.apple.ap.adprivacyd.reconcile"];
LABEL_26:

          return;
        }

        [MEMORY[0x277CCACA8] stringWithFormat:@"adprivacyd launched in response to %s", "com.apple.ap.adprivacyd.launch"];
      }

      v14 = LABEL_25:;
      _ADLog();
      goto LABEL_26;
    }

    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received Storefront Changed Notification"];
    _ADLog();

    v14 = [MEMORY[0x277CE9638] sharedInstance];
    [v14 reloadStorefront:0];
    goto LABEL_26;
  }

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received Account Changed Notification"];
  _ADLog();

  v6 = *(a1 + 32);

  [v6 handleAccountChange];
}

uint64_t __37__ADAdTrackingSchedulingManager_init__block_invoke_3(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received a Notification from Account Plugin that the Current Account Changed"];
  _ADLog();

  v3 = *(a1 + 32);

  return [v3 handleAccountChange];
}

void __37__ADAdTrackingSchedulingManager_init__block_invoke_4()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"Received a notification that the storefront changed. Reloading the Bag."];
  _ADLog();

  v1 = [MEMORY[0x277CE9638] sharedInstance];
  [v1 reloadStorefront:0];
}

- (void)dealloc
{
  v3 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v3 removeObserver:self->_storeFrontNotifyToken];

  v4 = [MEMORY[0x277CCA9A0] defaultCenter];
  [v4 removeObserver:self->_accountChangedNotifyToken];

  v5.receiver = self;
  v5.super_class = ADAdTrackingSchedulingManager;
  [(ADAdTrackingSchedulingManager *)&v5 dealloc];
}

- (void)migratePersonalizedAdsOnboarding
{
  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc(MEMORY[0x277CBEBD0]);
  v4 = [v3 initWithSuiteName:*MEMORY[0x277CE95E0]];
  v5 = objc_alloc(MEMORY[0x277CBEBD0]);
  v6 = [v5 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v7 = [v6 objectForKey:@"acknowledgedPersonalizedAdsVersion"];
  if (v7)
  {
  }

  else
  {
    v8 = [v4 objectForKey:@"acknowledgedPersonalizedAdsVersion"];

    if (v8)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads onboarding acknowledgement is being migrated", objc_opt_class()];
      _ADLog();

      [v6 setInteger:objc_msgSend(v4 forKey:{"integerForKey:", @"acknowledgedPersonalizedAdsVersion", @"acknowledgedPersonalizedAdsVersion"}];
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)migratePersonalizedAdsFromLAT
{
  v2 = objc_autoreleasePoolPush();
  v3 = [MEMORY[0x277CE9630] sharedInstance];
  v4 = [v3 BOOLForKey:@"personalizedAdsMigrated"];

  if ((v4 & 1) == 0)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Personalized Ads has not been migrated. Deriving the value from LAT", objc_opt_class()];
    _ADLog();

    v6 = [MEMORY[0x277D262A0] sharedConnection];
    v7 = [v6 effectiveBoolValueForSetting:*MEMORY[0x277D25F40]];

    if (v7 != 1)
    {
      v8 = objc_alloc(MEMORY[0x277CBEBD0]);
      v9 = [v8 initWithSuiteName:*MEMORY[0x277CE95C8]];
      [v9 setBool:1 forKey:@"personalizedAdsDefaulted"];
    }

    v10 = [MEMORY[0x277D262A0] sharedConnection];
    [v10 setBoolValue:0 forSetting:*MEMORY[0x277D25D28]];

    v11 = [MEMORY[0x277CE9630] sharedInstance];
    [v11 setBool:1 forKey:@"personalizedAdsMigrated"];

    v12 = ADWriteDataToKeychain();
    if (v12)
    {
      v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"Error deleting PA from keychain: %d", v12];
      _ADLog();
    }
  }

  objc_autoreleasePoolPop(v2);
}

- (void)setSessionManagementDefaults
{
  v2 = objc_alloc(MEMORY[0x277CBEBD0]);
  v11 = [v2 initWithSuiteName:*MEMORY[0x277CE95C8]];
  v3 = [v11 objectForKey:@"PersonalizedAdsStateUUID"];

  if (!v3)
  {
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Setting UUID - %@ for session management state.", objc_opt_class(), v5];
    _ADLog();

    [v11 setObject:v5 forKey:@"PersonalizedAdsStateUUID"];
  }

  v7 = [v11 objectForKey:@"AccountStateUUID"];

  if (!v7)
  {
    v8 = [MEMORY[0x277CCAD78] UUID];
    v9 = [v8 UUIDString];

    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Setting UUID - %@ for account DSID state.", objc_opt_class(), v9];
    _ADLog();

    [v11 setObject:v9 forKey:@"AccountStateUUID"];
  }
}

- (void)setStateForProtoAccount
{
  v2 = [MEMORY[0x277CF0130] sharedInstance];
  v3 = [v2 protoAccount];
  v4 = NSSelectorFromString(&cfstr_AaIsteenprotoa.isa);
  if (objc_opt_respondsToSelector())
  {
    v5 = [v3 methodSignatureForSelector:v4];
    if (v5)
    {
      v6 = [MEMORY[0x277CBEAE8] invocationWithMethodSignature:v5];
      [v6 setSelector:v4];
      [v6 setTarget:v3];
      [v6 invoke];
      v8 = 0;
      [v6 getReturnValue:&v8];
      if (v8 == 1)
      {
        v7 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.AdPlatforms"];
        [v7 setBool:1 forKey:@"ProtoAccount"];
      }
    }
  }
}

- (BOOL)isAdEnabledLocality
{
  [(ADAdTrackingSchedulingManager *)self setStateForProtoAccount];
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"ForceNonAdLocale"), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: isAdEnabledLocality is forced OFF by internal default.", objc_opt_class()];
    _ADLog();
    v6 = 0;
  }

  else
  {
    v7 = +[ADAMSBagManager sharedInstance];
    v8 = [v7 retrieveLatestPersonalizedAdsConsentVersionFromAMSBag];

    v9 = objc_alloc(MEMORY[0x277CBEBD0]);
    v5 = [v9 initWithSuiteName:*MEMORY[0x277CE95C8]];
    [v5 setInteger:v8 forKey:@"LatestPAVersion"];
    LOBYTE(v8) = [(ADAdTrackingSchedulingManager *)self isSearchOrSegmentEnabled];
    v10 = [(ADAdTrackingSchedulingManager *)self isNewsOrStocksEnabledLocality];
    [v5 setBool:-[ADAdTrackingSchedulingManager isSearchAdsEnabled](self forKey:{"isSearchAdsEnabled") || v10, @"AdPlatformsPAAvailable"}];
    v6 = v8 | v10;
  }

  return v6 & 1;
}

- (BOOL)isSearchOrSegmentEnabled
{
  v2 = +[ADAMSBagManager sharedInstance];
  v3 = [v2 retrieveIsSponsoredAdsEnabledValueFromAMSBag];

  if (v3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"This country is Toro enabled"];
    LOBYTE(v5) = 1;
  }

  else
  {
    v6 = +[ADAMSBagManager sharedInstance];
    v5 = [v6 retrieveIsSponsoredAdsEnabledValueForAdTrackingdFromAMSBag];

    v7 = @"not Toro enabled";
    if (v5)
    {
      v7 = @"being onboarded for Toro";
    }

    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"This country is %@", v7];
  }

  _ADLog();

  return v5;
}

- (BOOL)isSearchAdsEnabled
{
  v2 = +[ADAMSBagManager sharedInstance];
  v3 = [v2 retrieveIsSponsoredAdsEnabledValueFromAMSBag];

  return v3;
}

- (id)retrieveNewsRecord:(id *)a3
{
  v3 = [objc_alloc(MEMORY[0x277CC1E70]) initWithBundleIdentifier:@"com.apple.news" allowPlaceholder:0 error:a3];

  return v3;
}

- (BOOL)isNewsOrStocksEnabledLocality
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = 0;
  v2 = [(ADAdTrackingSchedulingManager *)self retrieveNewsRecord:&v39];
  v3 = v39;
  v4 = [v2 URL];
  v5 = [v4 URLByAppendingPathComponent:@"MCRestrictions.plist"];
  v33 = v3;
  if (!v5)
  {
    LOBYTE(v16) = 0;
    v7 = @"is not";
    goto LABEL_21;
  }

  v6 = [MEMORY[0x277CBEA90] dataWithContentsOfURL:v5];
  v7 = @"is not";
  if (!v6)
  {
    goto LABEL_16;
  }

  v8 = v6;
  v9 = [MEMORY[0x277CCAC58] propertyListWithData:v6 options:0 format:0 error:0];
  v10 = v9;
  if (!v9 || ([v9 objectForKeyedSubscript:@"MCWhitelistedLocales"], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {

LABEL_16:
    LOBYTE(v16) = 0;
    goto LABEL_21;
  }

  v12 = [v10 objectForKeyedSubscript:@"MCWhitelistedLocales"];
  v13 = [MEMORY[0x277CBEAF8] currentLocale];
  v14 = [v13 objectForKey:*MEMORY[0x277CBE690]];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v15 = v12;
  v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v16)
  {
    v32 = v2;
    v17 = *v36;
    while (2)
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v36 != v17)
        {
          objc_enumerationMutation(v15);
        }

        if ([v14 isEqualToString:*(*(&v35 + 1) + 8 * i)])
        {
          LODWORD(v16) = 1;
          goto LABEL_18;
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_18:
    v2 = v32;
  }

  if (v16)
  {
    v7 = @"is";
  }

LABEL_21:
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"This country %@ News enabled", v7];
  _ADLog();

  v20 = [MEMORY[0x277CE9630] sharedInstance];
  v21 = [v20 BOOLForKey:@"StocksEnabled"];

  v34 = 0;
  v22 = [MEMORY[0x277CC1E70] bundleRecordWithBundleIdentifier:@"com.apple.stocks" allowPlaceholder:0 error:&v34];
  v23 = v34;
  v24 = v23;
  if (!v21)
  {
LABEL_26:
    v26 = 0;
    v25 = @"is not";
    goto LABEL_27;
  }

  if (!v22 || v23)
  {
    v27 = [MEMORY[0x277CE9630] sharedInstance];
    [v27 setBool:0 forKey:@"StocksEnabled"];

    v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Stocks was set to enabled but cannot be found due to %@. Disabling...", v24];
    _ADLog();

    goto LABEL_26;
  }

  v25 = @"is";
  v26 = 1;
LABEL_27:
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"This country %@ Stocks enabled", v25];
  _ADLog();

  v30 = *MEMORY[0x277D85DE8];
  return v16 | v26;
}

- (int64_t)latestPersonalizedConsentVersion
{
  v2 = +[ADAMSBagManager sharedInstance];
  v3 = [v2 retrieveLatestPersonalizedAdsConsentVersionFromAMSBag];

  return v3;
}

- (BOOL)_shouldSaveConfig
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking if config data has been saved to promotedcontentd key"];
  _ADLog();

  v3 = *MEMORY[0x277CE95D0];
  v4 = ADCopyDataFromKeychain();
  LOBYTE(v2) = v4 == 0;

  return v2;
}

- (void)handleConfiguration
{
  v3 = [MEMORY[0x277CE9630] sharedInstance];
  v4 = [v3 BOOLForKey:@"ForceExpireConfiguration"];

  if (v4)
  {
    [(ADAdTrackingSchedulingManager *)self forceExpiration];
  }

  v5 = [MEMORY[0x277CCA9A0] defaultCenter];
  v6 = *MEMORY[0x277CE95A8];
  v7 = [MEMORY[0x277CCABD8] mainQueue];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ADAdTrackingSchedulingManager_handleConfiguration__block_invoke;
  v9[3] = &unk_278C57E38;
  v9[4] = self;
  v8 = [v5 addObserverForName:@"ForceExpireConfiguration" object:v6 queue:v7 usingBlock:v9];
}

uint64_t __52__ADAdTrackingSchedulingManager_handleConfiguration__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Force config expiration notification received."];
  _ADLog();

  [*(a1 + 32) forceExpiration];
  v3 = *(a1 + 32);

  return [v3 refreshConfiguration:0];
}

- (void)refreshConfiguration:(id)a3
{
  v4 = a3;
  if ([(ADAdTrackingSchedulingManager *)self isAdEnabledLocality])
  {
    v5 = [MEMORY[0x277CE96B8] sharedInstance];
    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [v6 AD_toServerTime];

    v8 = [v5 configurations];
    if (v8 && (v9 = v8, v10 = [v5 configurationExpirationTime], v9, v10 > v7))
    {
      v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"Checking if config data has been saved to promotedcontentd key"];
      _ADLog();

      if ([(ADAdTrackingSchedulingManager *)self _shouldSaveConfig])
      {
        [v5 saveConfig];
      }

      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Data has not yet expired. (%d > %d)", objc_msgSend(v5, "configurationExpirationTime"), v7];
      _ADLog();

      if (v4)
      {
        v4[2](v4, 0);
      }
    }

    else
    {
      v14 = [MEMORY[0x277CE96B8] workQueue];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __54__ADAdTrackingSchedulingManager_refreshConfiguration___block_invoke;
      v15[3] = &unk_278C585A0;
      v15[4] = self;
      v17 = v4;
      v16 = v5;
      [v14 addOperationWithBlock:v15];
    }
  }

  else
  {
    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Not refreshing configuration because this is not an Ad-enabled locality", objc_opt_class()];
    _ADLog();

    if (v4)
    {
      v4[2](v4, 0);
    }
  }
}

void __54__ADAdTrackingSchedulingManager_refreshConfiguration___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isConfigRequestInFlight])
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Configuration Message is already in flight."];
    _ADLog();

    v3 = *(a1 + 48);
    if (v3)
    {
      v4 = *(v3 + 16);

      v4();
    }
  }

  else
  {
    [*(a1 + 32) setIsConfigRequestInFlight:1];
    v5 = objc_alloc_init(MEMORY[0x277CE9620]);
    v6 = [MEMORY[0x277CE9638] sharedInstance];
    v7 = [v6 defaultConfigurationServerURL];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__ADAdTrackingSchedulingManager_refreshConfiguration___block_invoke_2;
    v9[3] = &unk_278C58578;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    v11 = *(a1 + 48);
    [v10 handleRequest:v5 serverURL:v7 responseHandler:v9];
  }
}

void __54__ADAdTrackingSchedulingManager_refreshConfiguration___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  [*(a1 + 32) setIsConfigRequestInFlight:0];
  if (!a4)
  {
    v6 = [objc_alloc(MEMORY[0x277CE9628]) initWithData:v14];
    v7 = MEMORY[0x277CCACA8];
    v8 = [v6 AD_jsonString];
    v9 = [v7 stringWithFormat:@"Received an ADConfigurationResponse: %@", v8];
    _ADLog();

    [*(a1 + 40) buildConfigurationDictionary:v6];
    v10 = *MEMORY[0x277CE95A0];
    v11 = ADWriteDataToKeychain();
    [*(a1 + 40) saveConfig];
    [*(a1 + 40) saveProxyURL];
    if (v11)
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an error writing the Configuration Response to the keychain: %d", v11];
      _ADLog();
    }

    else
    {
      v12 = [MEMORY[0x277CCA9A0] defaultCenter];
      [v12 postNotificationName:@"ADConfigurationDidChangeNotification" object:*MEMORY[0x277CE95A8]];
    }
  }

  v13 = *(a1 + 48);
  if (v13)
  {
    (*(v13 + 16))(v13, 1);
  }
}

- (void)forceExpiration
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Expiring and Refreshing the configuration message now."];
  _ADLog();

  v3 = [MEMORY[0x277CE9630] sharedInstance];
  [v3 setBool:0 forKey:@"ForceExpireConfiguration"];

  v4 = [MEMORY[0x277CE96B8] sharedInstance];
  [v4 setConfigurationExpirationTime:0];
}

- (id)currentBundleID
{
  v2 = [MEMORY[0x277CCA8D8] mainBundle];
  v3 = [v2 bundleIdentifier];

  if (![v3 length])
  {
    v4 = [MEMORY[0x277CCA8D8] mainBundle];
    v5 = [v4 executablePath];
    v6 = [v5 lastPathComponent];

    v3 = v6;
  }

  return v3;
}

- (APSConnection)pushConnection
{
  pushConnection = self->_pushConnection;
  if (!pushConnection)
  {
    v4 = objc_alloc(MEMORY[0x277CEEA10]);
    v5 = *MEMORY[0x277CEE9F0];
    v6 = dispatch_get_global_queue(0, 0);
    v7 = [v4 initWithEnvironmentName:v5 namedDelegatePort:@"com.apple.AdSheetPhone.push" queue:v6];
    v8 = self->_pushConnection;
    self->_pushConnection = v7;

    [(APSConnection *)self->_pushConnection setDelegate:self];
    pushConnection = self->_pushConnection;
    if (!pushConnection)
    {
      v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID Couldn't create push connection"];
      _ADLog();

      pushConnection = self->_pushConnection;
    }
  }

  return pushConnection;
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID Received public token %@ on connection %@", a4, a3];
  _ADLog();
}

- (void)connection:(id)a3 didReceiveToken:(id)a4 forTopic:(id)a5 identifier:(id)a6
{
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"DPID Received per-topic push token %@ for topic %@ identifier %@ on connection %@", a4, a5, a6, a3];
  _ADLog();
}

- (void)connection:(id)a3 didReceiveIncomingMessage:(id)a4
{
  v4 = a4;
  v5 = [v4 userInfo];
  v6 = MEMORY[0x277CCACA8];
  v7 = [v4 topic];

  v8 = [v6 stringWithFormat:@"DPID APS Push received: %@ %@", v7, v5];
  _ADLog();

  v9 = +[ADClientDPIDManager sharedInstance];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __70__ADAdTrackingSchedulingManager_connection_didReceiveIncomingMessage___block_invoke;
  v11[3] = &unk_278C585C8;
  v12 = v5;
  v10 = v5;
  [v9 handlePushNotification:v10 completionHandler:v11];
}

void __70__ADAdTrackingSchedulingManager_connection_didReceiveIncomingMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Handled push notification returned an eror: %@ payload: %@", a2, v2];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithFormat:@"Handled push notification successfully. payload: %@", v2, v3];
  }
  v4 = ;
  _ADLog();
}

- (void)pushEnable
{
  v7[1] = *MEMORY[0x277D85DE8];
  v3 = [@"com.apple.icloud-container." stringByAppendingString:*MEMORY[0x277CE95D8]];
  v7[0] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  v5 = [(ADAdTrackingSchedulingManager *)self pushConnection];
  [v5 setEnabledTopics:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)pushDisable
{
  v2 = [(ADAdTrackingSchedulingManager *)self pushConnection];
  [v2 setEnabledTopics:0];
}

- (void)handleAccountChange
{
  obj = self;
  objc_sync_enter(obj);
  if (handleAccountChange__handleAccountChangeDispatched == 1)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@] handleAccountChange: iTunes account change notification has already been dispatched to ADIDManager. Short-circuiting.", objc_opt_class()];
    _ADLog();

    objc_sync_exit(obj);
  }

  else
  {
    handleAccountChange__handleAccountChangeDispatched = 1;
    objc_sync_exit(obj);

    v3 = dispatch_time(0, 1000000000);
    v4 = dispatch_get_global_queue(0, 0);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[3] = &unk_278C57E10;
    block[4] = obj;
    block[2] = __52__ADAdTrackingSchedulingManager_handleAccountChange__block_invoke;
    dispatch_after(v3, v4, block);
  }
}

void __52__ADAdTrackingSchedulingManager_handleAccountChange__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.adprivacyd [%@ handleAccountChange]", objc_opt_class()];
  takeXPCTransaction();
  v4 = [MEMORY[0x277CE9658] sharedInstance];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__ADAdTrackingSchedulingManager_handleAccountChange__block_invoke_2;
  v7[3] = &unk_278C585C8;
  v8 = v3;
  v5 = v3;
  [v4 handleAccountChange:v7];

  v6 = *(a1 + 32);
  objc_sync_enter(v6);
  handleAccountChange__handleAccountChangeDispatched = 0;
  objc_sync_exit(v6);
}

void __52__ADAdTrackingSchedulingManager_handleAccountChange__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = v3;
  if (v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = [v3 code];
    v6 = [v10 localizedDescription];
    v7 = [v4 stringWithFormat:@"Error %ld while handling account change: %@", v5, v6];
    _ADLog();
  }

  else
  {
    v8 = [MEMORY[0x277CCA9A0] defaultCenter];
    [v8 postNotificationName:@"com.apple.adplatforms.UserAccountChangeCompletedNotification" object:*MEMORY[0x277CE95C8]];

    v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"Successfully handled account change."];
    _ADLog();
  }

  v9 = *(a1 + 32);
  releaseXPCTransaction();
}

- (void)registerForLockStateNotification
{
  if (notify_register_dispatch(*MEMORY[0x277D67770], &_screenLockNotifyToken, MEMORY[0x277D85CD0], &__block_literal_global_289))
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Failed to register for springboard lock state events."];
    _ADLog();

    _screenLockNotifyToken = -1;
  }

  else
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Registered for springboard lock state events."];
    _ADLog();
  }
}

void __65__ADAdTrackingSchedulingManager_registerForLockStateNotification__block_invoke(int a1, int token)
{
  state64 = 0;
  state = notify_get_state(token, &state64);
  if (state)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unable to get state for _screenLockNotifyToken. Error code %d", state];
    _ADLog();
LABEL_3:

    return;
  }

  if (!state64)
  {
    notify_cancel(_screenLockNotifyToken);
    _screenLockNotifyToken = -1;
    v3 = [MEMORY[0x277D42CD8] sharedInstance];
    [v3 startListening];
    goto LABEL_3;
  }
}

@end