@interface ADAppTrackingService
+ (id)sharedInstance;
- (ADAppTrackingService)init;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)deviceRegionEnabledPerStorefront:(id)a3;
- (void)getAccountLevelSwitchDisabledReasonWithHandler:(id)a3;
- (void)iTunesAccountStorefront:(id)a3;
- (void)latestPersonalizedAdsConsentVersion:(id)a3;
- (void)localAdServicesEnabled:(id)a3;
- (void)reconcileDataForRecord:(id)a3;
- (void)sendPersonalizedAdsAndReconcileDataForRecord:(id)a3;
- (void)shouldAppStoreDisplayAdvertisingScreen:(id)a3;
- (void)shouldDisplayPersonalizedAdsUI:(id)a3;
@end

@implementation ADAppTrackingService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ADAppTrackingService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (sharedInstance__onceToken_2 != -1)
  {
    dispatch_once(&sharedInstance__onceToken_2, block);
  }

  v2 = sharedInstance__instance_2;

  return v2;
}

uint64_t __38__ADAppTrackingService_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  sharedInstance__instance_2 = objc_alloc_init(objc_opt_class());

  return MEMORY[0x2821F96F8]();
}

- (ADAppTrackingService)init
{
  v6.receiver = self;
  v6.super_class = ADAppTrackingService;
  v2 = [(ADAppTrackingService *)&v6 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ap.adprivacyd.opt-out"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [v5 valueForEntitlement:@"com.apple.private.iad.opt-in-control"];
  v7 = [v6 BOOLValue];

  if (v7)
  {
    [v5 setExportedObject:self];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510E220];
    [v5 setExportedInterface:v8];

    [v5 setInvalidationHandler:&__block_literal_global_5];
    [v5 setInterruptionHandler:&__block_literal_global_43];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted connection from ADTrackingTransparency client."];
    _ADLog();

    [v5 resume];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rejected ADTrackingTransparency connection client with PID %d lacking the appropriate entitlement (%@).", objc_msgSend(v5, "processIdentifier"), @"com.apple.private.iad.opt-in-control"];
    _ADLog();
  }

  return v7;
}

void __59__ADAppTrackingService_listener_shouldAcceptNewConnection___block_invoke()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC connection invalidated. Lost connection from ADTrackingTransparency client."];
  _ADLog();
}

void __59__ADAppTrackingService_listener_shouldAcceptNewConnection___block_invoke_2()
{
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"XPC connection interrupted. Lost connection from ADTrackingTransparency client."];
  _ADLog();
}

- (void)sendPersonalizedAdsAndReconcileDataForRecord:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ADAppTrackingService_sendPersonalizedAdsAndReconcileDataForRecord___block_invoke;
  v6[3] = &unk_278C586D8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [v5 sendPersonalizedAdsStatusToAdPlatforms:v6];
}

uint64_t __69__ADAppTrackingService_sendPersonalizedAdsAndReconcileDataForRecord___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an sending Personalized Ads to Ad Platforms. Error: %@. Please file a radar.", a2];
    _ADLog();
  }

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 reconcileDataForRecord:v5];
}

- (void)reconcileDataForRecord:(id)a3
{
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  [v3 deleteRecords:&__block_literal_global_56];
}

void __47__ADAppTrackingService_reconcileDataForRecord___block_invoke()
{
  v2 = [MEMORY[0x277CE9658] sharedInstance];
  v0 = [MEMORY[0x277CE9638] sharedInstance];
  v1 = [v0 iTunesAccountDSID];
  [v2 setDSID:v1 completionHandler:&__block_literal_global_59];
}

void __47__ADAppTrackingService_reconcileDataForRecord___block_invoke_2()
{
  v0 = [MEMORY[0x277CE9658] sharedInstance];
  [v0 reconcile:&__block_literal_global_62];
}

void __47__ADAppTrackingService_reconcileDataForRecord___block_invoke_3(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"There was an error reconciling. Error: %@. Please file a radar.", a2];
    _ADLog();
  }
}

- (void)getAccountLevelSwitchDisabledReasonWithHandler:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = [v3 activeDSIDRecord];
  if ([v4 accountIsU13])
  {
    v5 = 1;
  }

  else if ([v4 accountIsU18])
  {
    v5 = 2;
  }

  else if ([v4 accountAgeUnknown])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  v6[2](v6, v5);
}

- (void)shouldDisplayPersonalizedAdsUI:(id)a3
{
  v11 = a3;
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"ForceNonAdLocale"), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ad Enabled Locality is forced OFF by internal default.", objc_opt_class()];
    _ADLog();

    v11[2](v11, 0);
  }

  else
  {
    v6 = +[ADAdTrackingSchedulingManager sharedInstance];
    v7 = [v6 isNewsOrStocksEnabledLocality];
    v8 = v11;
    if (v7)
    {
      v9 = 1;
    }

    else
    {
      v10 = [v6 isSearchAdsEnabled];
      v8 = v11;
      v9 = v10;
    }

    v8[2](v8, v9);
  }
}

- (void)shouldAppStoreDisplayAdvertisingScreen:(id)a3
{
  v7 = a3;
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"ForceNonAdLocale"), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ad Enabled Locality is forced OFF by internal default.", objc_opt_class()];
    _ADLog();

    v7[2](v7, 0);
  }

  else
  {
    v6 = +[ADAdTrackingSchedulingManager sharedInstance];
    v7[2](v7, [v6 isSearchAdsEnabled]);
  }
}

- (void)latestPersonalizedAdsConsentVersion:(id)a3
{
  v3 = a3;
  v4 = +[ADAdTrackingSchedulingManager sharedInstance];
  v3[2](v3, [v4 latestPersonalizedConsentVersion]);
}

- (void)iTunesAccountStorefront:(id)a3
{
  v8 = a3;
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = [v3 activeDSIDRecord];
  v5 = [v4 isPlaceholderAccount];

  if (v5)
  {
    v6 = @"NONE";
  }

  else
  {
    v7 = [MEMORY[0x277CE9638] sharedInstance];
    v6 = [v7 iTunesStorefront];
  }

  if (v8)
  {
    v8[2](v8, v6);
  }
}

- (void)localAdServicesEnabled:(id)a3
{
  v12 = a3;
  v3 = [MEMORY[0x277CE9658] sharedInstance];
  v4 = [v3 activeDSIDRecord];
  if ([v4 isPlaceholderAccount])
  {
    v12[2](v12, 0);
  }

  else
  {
    v5 = [MEMORY[0x277CE9638] sharedInstance];
    v6 = [v4 accountIsU13];
    v7 = [v5 isManagedAppleID];
    v8 = [v5 educationModeEnabled];
    v9 = [v5 isProtoU13state];
    v10 = [v5 isProtoTeenState];
    if ((v6 & 1) != 0 || (v7 & 1) != 0 || (v8 & 1) != 0 || (v9 & 1) != 0 || v10)
    {
      v12[2](v12, 0);
    }

    else
    {
      v11 = [v5 iTunesStorefront];
      v12[2](v12, [v11 containsString:@"143441"]);
    }
  }
}

- (void)deviceRegionEnabledPerStorefront:(id)a3
{
  v6 = a3;
  v3 = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [v3 objectForKey:*MEMORY[0x277CBE690]];

  v5 = [&unk_28510BE28 containsObject:v4];
  if (v6)
  {
    v6[2](v6, v5);
  }
}

@end