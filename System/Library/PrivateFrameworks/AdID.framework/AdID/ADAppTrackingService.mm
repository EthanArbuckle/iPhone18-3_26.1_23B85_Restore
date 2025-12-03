@interface ADAppTrackingService
+ (id)sharedInstance;
- (ADAppTrackingService)init;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)deviceRegionEnabledPerStorefront:(id)storefront;
- (void)getAccountLevelSwitchDisabledReasonWithHandler:(id)handler;
- (void)iTunesAccountStorefront:(id)storefront;
- (void)latestPersonalizedAdsConsentVersion:(id)version;
- (void)localAdServicesEnabled:(id)enabled;
- (void)reconcileDataForRecord:(id)record;
- (void)sendPersonalizedAdsAndReconcileDataForRecord:(id)record;
- (void)shouldAppStoreDisplayAdvertisingScreen:(id)screen;
- (void)shouldDisplayPersonalizedAdsUI:(id)i;
@end

@implementation ADAppTrackingService

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__ADAppTrackingService_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
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

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.private.iad.opt-in-control"];
  bOOLValue = [v6 BOOLValue];

  if (bOOLValue)
  {
    [connectionCopy setExportedObject:self];
    v8 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28510E220];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setInvalidationHandler:&__block_literal_global_5];
    [connectionCopy setInterruptionHandler:&__block_literal_global_43];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"Accepted connection from ADTrackingTransparency client."];
    _ADLog();

    [connectionCopy resume];
  }

  else
  {
    v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"Rejected ADTrackingTransparency connection client with PID %d lacking the appropriate entitlement (%@).", objc_msgSend(connectionCopy, "processIdentifier"), @"com.apple.private.iad.opt-in-control"];
    _ADLog();
  }

  return bOOLValue;
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

- (void)sendPersonalizedAdsAndReconcileDataForRecord:(id)record
{
  recordCopy = record;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __69__ADAppTrackingService_sendPersonalizedAdsAndReconcileDataForRecord___block_invoke;
  v6[3] = &unk_278C586D8;
  v6[4] = self;
  v7 = recordCopy;
  v5 = recordCopy;
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

- (void)reconcileDataForRecord:(id)record
{
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  [mEMORY[0x277CE9658] deleteRecords:&__block_literal_global_56];
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

- (void)getAccountLevelSwitchDisabledReasonWithHandler:(id)handler
{
  handlerCopy = handler;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
  if ([activeDSIDRecord accountIsU13])
  {
    v5 = 1;
  }

  else if ([activeDSIDRecord accountIsU18])
  {
    v5 = 2;
  }

  else if ([activeDSIDRecord accountAgeUnknown])
  {
    v5 = 5;
  }

  else
  {
    v5 = 0;
  }

  handlerCopy[2](handlerCopy, v5);
}

- (void)shouldDisplayPersonalizedAdsUI:(id)i
{
  iCopy = i;
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"ForceNonAdLocale"), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ad Enabled Locality is forced OFF by internal default.", objc_opt_class()];
    _ADLog();

    iCopy[2](iCopy, 0);
  }

  else
  {
    v6 = +[ADAdTrackingSchedulingManager sharedInstance];
    isNewsOrStocksEnabledLocality = [v6 isNewsOrStocksEnabledLocality];
    v8 = iCopy;
    if (isNewsOrStocksEnabledLocality)
    {
      v9 = 1;
    }

    else
    {
      isSearchAdsEnabled = [v6 isSearchAdsEnabled];
      v8 = iCopy;
      v9 = isSearchAdsEnabled;
    }

    v8[2](v8, v9);
  }
}

- (void)shouldAppStoreDisplayAdvertisingScreen:(id)screen
{
  screenCopy = screen;
  if (MGGetBoolAnswer() && ([MEMORY[0x277CE9630] sharedInstance], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "BOOLForKey:", @"ForceNonAdLocale"), v3, v4))
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"[%@]: Ad Enabled Locality is forced OFF by internal default.", objc_opt_class()];
    _ADLog();

    screenCopy[2](screenCopy, 0);
  }

  else
  {
    v6 = +[ADAdTrackingSchedulingManager sharedInstance];
    screenCopy[2](screenCopy, [v6 isSearchAdsEnabled]);
  }
}

- (void)latestPersonalizedAdsConsentVersion:(id)version
{
  versionCopy = version;
  v4 = +[ADAdTrackingSchedulingManager sharedInstance];
  versionCopy[2](versionCopy, [v4 latestPersonalizedConsentVersion]);
}

- (void)iTunesAccountStorefront:(id)storefront
{
  storefrontCopy = storefront;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
  isPlaceholderAccount = [activeDSIDRecord isPlaceholderAccount];

  if (isPlaceholderAccount)
  {
    iTunesStorefront = @"NONE";
  }

  else
  {
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    iTunesStorefront = [mEMORY[0x277CE9638] iTunesStorefront];
  }

  if (storefrontCopy)
  {
    storefrontCopy[2](storefrontCopy, iTunesStorefront);
  }
}

- (void)localAdServicesEnabled:(id)enabled
{
  enabledCopy = enabled;
  mEMORY[0x277CE9658] = [MEMORY[0x277CE9658] sharedInstance];
  activeDSIDRecord = [mEMORY[0x277CE9658] activeDSIDRecord];
  if ([activeDSIDRecord isPlaceholderAccount])
  {
    enabledCopy[2](enabledCopy, 0);
  }

  else
  {
    mEMORY[0x277CE9638] = [MEMORY[0x277CE9638] sharedInstance];
    accountIsU13 = [activeDSIDRecord accountIsU13];
    isManagedAppleID = [mEMORY[0x277CE9638] isManagedAppleID];
    educationModeEnabled = [mEMORY[0x277CE9638] educationModeEnabled];
    isProtoU13state = [mEMORY[0x277CE9638] isProtoU13state];
    isProtoTeenState = [mEMORY[0x277CE9638] isProtoTeenState];
    if ((accountIsU13 & 1) != 0 || (isManagedAppleID & 1) != 0 || (educationModeEnabled & 1) != 0 || (isProtoU13state & 1) != 0 || isProtoTeenState)
    {
      enabledCopy[2](enabledCopy, 0);
    }

    else
    {
      iTunesStorefront = [mEMORY[0x277CE9638] iTunesStorefront];
      enabledCopy[2](enabledCopy, [iTunesStorefront containsString:@"143441"]);
    }
  }
}

- (void)deviceRegionEnabledPerStorefront:(id)storefront
{
  storefrontCopy = storefront;
  currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
  v4 = [currentLocale objectForKey:*MEMORY[0x277CBE690]];

  v5 = [&unk_28510BE28 containsObject:v4];
  if (storefrontCopy)
  {
    storefrontCopy[2](storefrontCopy, v5);
  }
}

@end