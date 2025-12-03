@interface AKConfiguration
+ (id)sharedConfiguration;
- (AKConfiguration)init;
- (id)configurationValueForKey:(id)key;
- (id)configurationValueForKey:(id)key useDomain:(BOOL)domain;
- (int64_t)accountAccessTelemetryOptInFFOverride;
- (int64_t)contactKeyVerification;
- (int64_t)deviceSafetyRestrictionReasonOverride;
- (int64_t)forceHasSOSActiveDevice;
- (int64_t)forceSOSNeeded;
- (int64_t)forceSilentBurnCDPRepairEnabled;
- (int64_t)forceSilentEscrowRecordRepairEnabled;
- (int64_t)forceSilentEscrowRecordRepairEnabledV2;
- (int64_t)internalSiwADefaultHME;
- (int64_t)overrideForKey:(id)key;
- (int64_t)requestedCloudPartition;
- (int64_t)shouldAddHSA2CreateHeader;
- (int64_t)shouldAllowDemoMode;
- (int64_t)shouldAllowExperimentalMode;
- (int64_t)shouldAllowPhoneNumberAccounts;
- (int64_t)shouldAllowTestApplication;
- (int64_t)shouldAlwaysShowWelcome;
- (int64_t)shouldAskToBuy;
- (int64_t)shouldAutocycleAppsInTiburon;
- (int64_t)shouldAutocycleAppsInWebTakeover;
- (int64_t)shouldBypassCustodianDeviceCheck;
- (int64_t)shouldDisablePiggybacking;
- (int64_t)shouldEnableAccountImprovementOptIn;
- (int64_t)shouldEnableAttestationLogging;
- (int64_t)shouldEnableBeneficiaryLiveOn;
- (int64_t)shouldEnableTelemetryOptIn;
- (int64_t)shouldEnableTestAccountMode;
- (int64_t)shouldFakeAuthSuccess;
- (int64_t)shouldForceBaaValidation;
- (int64_t)shouldHideInternalBuildHeader;
- (int64_t)shouldHideSeedBuildHeader;
- (int64_t)shouldRequestPiggybackingPresenceEnforcement;
- (int64_t)shouldSuppressHSA2Suggestions;
- (int64_t)shouldSuppressModalSheetsInMacBuddy;
- (int64_t)telemetryOptInGracePeriodOverride;
- (unint64_t)internalFeaturesMaskValue;
- (unint64_t)lastKnownIDMSEnvironment;
- (void)_clearGlobalConfigValues;
- (void)dealloc;
- (void)setAccountAccessTelemetryOptInOverride:(int64_t)override;
- (void)setConfigurationValue:(id)value forKey:(id)key;
- (void)setContactKeyVerification:(int64_t)verification;
- (void)setDeviceSafetyRestrictionReasonOverride:(int64_t)override;
- (void)setDomainConfigurationValue:(id)value forKey:(id)key;
- (void)setForceHasSOSActiveDevice:(int64_t)device;
- (void)setForceSOSNeeded:(int64_t)needed;
- (void)setForceSilentBurnCDPRepairEnabled:(int64_t)enabled;
- (void)setForceSilentEscrowRecordRepairEnabled:(int64_t)enabled;
- (void)setForceSilentEscrowRecordRepairEnabledV2:(int64_t)v2;
- (void)setIdmsWalrusStatusOverride:(id)override;
- (void)setLastKnownIDMSEnvironment:(unint64_t)environment;
- (void)setLastKnownLocale:(id)locale;
- (void)setOverride:(int64_t)override forKey:(id)key;
- (void)setRequestedCloudPartition:(int64_t)partition;
- (void)setShouldAddHSA2CreateHeader:(int64_t)header;
- (void)setShouldAllowDemoMode:(int64_t)mode;
- (void)setShouldAllowExperimentalMode:(int64_t)mode;
- (void)setShouldAllowPhoneNumberAccounts:(int64_t)accounts;
- (void)setShouldAllowTestApplication:(int64_t)application;
- (void)setShouldAlwaysShowWelcome:(int64_t)welcome;
- (void)setShouldAskToBuy:(int64_t)buy;
- (void)setShouldAutocycleAppsInTiburon:(int64_t)tiburon;
- (void)setShouldAutocycleAppsInWebTakeover:(int64_t)takeover;
- (void)setShouldBypassCustodianDeviceCheck:(int64_t)check;
- (void)setShouldDisablePiggybacking:(int64_t)piggybacking;
- (void)setShouldEnableAttestationLogging:(int64_t)logging;
- (void)setShouldEnableBeneficiaryLiveOn:(int64_t)on;
- (void)setShouldEnableTelemetryOptIn:(int64_t)in;
- (void)setShouldEnableTestAccountMode:(int64_t)mode;
- (void)setShouldFakeAuthSuccess:(int64_t)success;
- (void)setShouldForceBaaValidation:(int64_t)validation;
- (void)setShouldHideInternalBuildHeader:(int64_t)header;
- (void)setShouldHideSeedBuildHeader:(int64_t)header;
- (void)setShouldSuppressHSA2Suggestions:(int64_t)suggestions;
- (void)setShouldSuppressModalSheetsInMacBuddy:(int64_t)buddy;
- (void)setStrongDeviceIdentityMarker:(id)marker;
- (void)setTelemetryOptInGracePeriodOverride:(int64_t)override;
@end

@implementation AKConfiguration

+ (id)sharedConfiguration
{
  v5 = &sharedConfiguration_onceToken;
  location = 0;
  objc_storeStrong(&location, &__block_literal_global_16);
  if (*v5 != -1)
  {
    dispatch_once(v5, location);
  }

  objc_storeStrong(&location, 0);
  v2 = sharedConfiguration_sharedConfiguration;

  return v2;
}

uint64_t __38__AKConfiguration_sharedConfiguration__block_invoke()
{
  v0 = objc_alloc_init(AKConfiguration);
  v1 = sharedConfiguration_sharedConfiguration;
  sharedConfiguration_sharedConfiguration = v0;
  MEMORY[0x1E69E5920](v1);
  return [sharedConfiguration_sharedConfiguration _clearGlobalConfigValues];
}

- (AKConfiguration)init
{
  v17 = a2;
  v18 = 0;
  v16.receiver = self;
  v16.super_class = AKConfiguration;
  v18 = [(AKConfiguration *)&v16 init];
  objc_storeStrong(&v18, v18);
  if (v18)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v2 = dispatch_queue_create("com.apple.authkit.config", v6);
    settingsQueue = v18->_settingsQueue;
    v18->_settingsQueue = v2;
    MEMORY[0x1E69E5920](settingsQueue);
    MEMORY[0x1E69E5920](v6);
    name = _AKConfigurationDidChangeNotification;
    out_token = &v18->_notificationToken;
    queue = v18->_settingsQueue;
    v10 = MEMORY[0x1E69E9820];
    v11 = -1073741824;
    v12 = 0;
    v13 = __23__AKConfiguration_init__block_invoke;
    v14 = &unk_1E73D6088;
    v15 = MEMORY[0x1E69E5928](v18);
    notify_register_dispatch(name, out_token, queue, &v10);
    objc_storeStrong(&v15, 0);
  }

  v5 = MEMORY[0x1E69E5928](v18);
  objc_storeStrong(&v18, 0);
  return v5;
}

- (int64_t)shouldEnableAttestationLogging
{
  v9[2] = self;
  v9[1] = a2;
  v4 = MEMORY[0x1E69E9820];
  v5 = -1073741824;
  v6 = 0;
  v7 = __49__AKConfiguration_shouldEnableAttestationLogging__block_invoke;
  v8 = &unk_1E73D34C0;
  v9[0] = MEMORY[0x1E69E5928](self);
  v11 = &shouldEnableAttestationLogging_onceToken;
  location = 0;
  objc_storeStrong(&location, &v4);
  if (*v11 != -1)
  {
    dispatch_once(v11, location);
  }

  objc_storeStrong(&location, 0);
  v3 = shouldEnableAttestationLogging_configState;
  objc_storeStrong(v9, 0);
  return v3;
}

- (unint64_t)lastKnownIDMSEnvironment
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKLastIDMSEnvironment"];
  unsignedIntegerValue = [v3 unsignedIntegerValue];
  MEMORY[0x1E69E5920](v3);
  return unsignedIntegerValue;
}

- (int64_t)shouldAllowTestApplication
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKAddTestApplicationHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)forceHasSOSActiveDevice
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKShouldForceHasSOSActiveDevice"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)forceSOSNeeded
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKShouldForceSOSNeeded"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)shouldEnableTelemetryOptIn
{
  selfCopy = self;
  location[1] = a2;
  v3 = +[AKDevice currentDevice];
  isInternalBuild = [v3 isInternalBuild];
  MEMORY[0x1E69E5920](v3);
  if ((isInternalBuild & 1) == 0)
  {
    return -1;
  }

  location[0] = [(AKConfiguration *)selfCopy configurationValueForKey:@"_AKTelemetryOptIn"];
  if ([location[0] integerValue] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (int64_t)shouldEnableAccountImprovementOptIn
{
  selfCopy = self;
  location[1] = a2;
  v3 = +[AKDevice currentDevice];
  isInternalBuild = [v3 isInternalBuild];
  MEMORY[0x1E69E5920](v3);
  if ((isInternalBuild & 1) == 0)
  {
    return -1;
  }

  location[0] = [(AKConfiguration *)selfCopy configurationValueForKey:@"_AKImprovementOptIn"];
  if ([location[0] integerValue] == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = -1;
  }

  objc_storeStrong(location, 0);
  return v7;
}

- (int64_t)shouldHideInternalBuildHeader
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKHideInternalBuildHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (unint64_t)internalFeaturesMaskValue
{
  v7 = [(AKConfiguration *)self shouldBypassCustodianDeviceCheck]== 1;
  if ([(AKConfiguration *)self shouldEnableBeneficiaryLiveOn]== 1)
  {
    v7 |= 2uLL;
  }

  if ([(AKConfiguration *)self shouldRequestPiggybackingPresenceEnforcement]== 1)
  {
    v7 |= 0x20uLL;
  }

  if ([(AKConfiguration *)self shouldForceBaaValidation]== 1)
  {
    v7 |= 0x40uLL;
  }

  if ([(AKConfiguration *)self contactKeyVerification]== 1)
  {
    v7 |= 0x80uLL;
  }

  v5 = +[AKFeatureManager sharedManager];
  isSignInSecurityRedesignEnabled = [v5 isSignInSecurityRedesignEnabled];
  MEMORY[0x1E69E5920](v5);
  if (isSignInSecurityRedesignEnabled)
  {
    v7 |= 0x800uLL;
  }

  v3 = +[AKFeatureManager sharedManager];
  isAuthKitSolariumFeatureEnabled = [v3 isAuthKitSolariumFeatureEnabled];
  MEMORY[0x1E69E5920](v3);
  if (isAuthKitSolariumFeatureEnabled)
  {
    v7 |= 0x1000uLL;
  }

  return v7;
}

- (int64_t)shouldBypassCustodianDeviceCheck
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKByPassCustodianDeviceCheck"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)shouldEnableBeneficiaryLiveOn
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKBeneficiaryLiveOnKey"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)shouldRequestPiggybackingPresenceEnforcement
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKShouldRequestPiggybackingPresenceEnforcement"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)shouldForceBaaValidation
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKShouldForceBaaValidation"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (int64_t)contactKeyVerification
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKContactKeyVerification"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

uint64_t __23__AKConfiguration_init__block_invoke(void *a1, int a2)
{
  v10 = a1;
  v9 = a2;
  location[1] = a1;
  location[0] = _AKLogSystem();
  v7 = 2;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
  {
    log = location[0];
    type = v7;
    __os_log_helper_16_0_0(v6);
    _os_log_debug_impl(&dword_193225000, log, type, "Cached AuthKit configurations have changed. Clearing cache...", v6, 2u);
  }

  objc_storeStrong(location, 0);
  return [*(a1[4] + 8) removeAllObjects];
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  if (self->_notificationToken)
  {
    notify_cancel(selfCopy->_notificationToken);
  }

  v2.receiver = selfCopy;
  v2.super_class = AKConfiguration;
  [(AKConfiguration *)&v2 dealloc];
}

- (id)configurationValueForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v4 = [(AKConfiguration *)selfCopy configurationValueForKey:location[0] useDomain:0];
  objc_storeStrong(location, 0);

  return v4;
}

- (id)configurationValueForKey:(id)key useDomain:(BOOL)domain
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  domainCopy = domain;
  if (location[0])
  {
    v31 = 0;
    v32 = &v31;
    v33 = 838860800;
    v34 = 48;
    v35 = __Block_byref_object_copy__5;
    v36 = __Block_byref_object_dispose__5;
    v37 = 0;
    queue = selfCopy->_settingsQueue;
    v24 = MEMORY[0x1E69E9820];
    v25 = -1073741824;
    v26 = 0;
    v27 = __54__AKConfiguration_configurationValueForKey_useDomain___block_invoke;
    v28 = &unk_1E73D4878;
    v30[1] = &v31;
    v29 = MEMORY[0x1E69E5928](selfCopy);
    v30[0] = MEMORY[0x1E69E5928](location[0]);
    dispatch_sync(queue, &v24);
    if (v32[5])
    {
      v45 = MEMORY[0x1E69E5928](v32[5]);
      v38 = 1;
    }

    else
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      v23 = [standardUserDefaults objectForKey:location[0]];
      MEMORY[0x1E69E5920](standardUserDefaults);
      if (!v23 && domainCopy)
      {
        v9 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AuthKit"];
        v4 = [v9 objectForKey:location[0]];
        v5 = v23;
        v23 = v4;
        MEMORY[0x1E69E5920](v5);
        MEMORY[0x1E69E5920](v9);
      }

      if (v23)
      {
        settingsQueue = selfCopy->_settingsQueue;
        v15 = MEMORY[0x1E69E9820];
        v16 = -1073741824;
        v17 = 0;
        v18 = __54__AKConfiguration_configurationValueForKey_useDomain___block_invoke_2;
        v19 = &unk_1E73D60B0;
        v20 = MEMORY[0x1E69E5928](selfCopy);
        v21 = MEMORY[0x1E69E5928](location[0]);
        v22 = MEMORY[0x1E69E5928](v23);
        dispatch_barrier_async(settingsQueue, &v15);
        v45 = MEMORY[0x1E69E5928](v23);
        v38 = 1;
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v21, 0);
        objc_storeStrong(&v20, 0);
      }

      else
      {
        v45 = 0;
        v38 = 1;
      }

      objc_storeStrong(&v23, 0);
    }

    objc_storeStrong(v30, 0);
    objc_storeStrong(&v29, 0);
    _Block_object_dispose(&v31, 8);
    objc_storeStrong(&v37, 0);
  }

  else
  {
    v41 = _AKLogSystem();
    v40 = 16;
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      log = v41;
      type = v40;
      __os_log_helper_16_0_0(v39);
      _os_log_error_impl(&dword_193225000, log, type, "Nil key while getting config!", v39, 2u);
    }

    objc_storeStrong(&v41, 0);
    v45 = 0;
    v38 = 1;
  }

  objc_storeStrong(location, 0);
  v6 = v45;

  return v6;
}

uint64_t __54__AKConfiguration_configurationValueForKey_useDomain___block_invoke(void *a1)
{
  v1 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  v2 = *(a1[6] + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  return MEMORY[0x1E69E5920](v3);
}

- (void)setConfigurationValue:(id)value forKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v11 = 0;
  objc_storeStrong(&v11, key);
  if (v11)
  {
    v4 = MEMORY[0x1E695E890];
    CFPreferencesSetAppValue(v11, location[0], *MEMORY[0x1E695E890]);
    CFPreferencesSynchronize(*v4, *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    notify_post(_AKConfigurationDidChangeNotification);
  }

  else
  {
    v10 = _AKLogSystem();
    v9 = 16;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      log = v10;
      type = v9;
      __os_log_helper_16_0_0(v8);
      _os_log_error_impl(&dword_193225000, log, type, "Nil key while setting config!", v8, 2u);
    }

    objc_storeStrong(&v10, 0);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)setDomainConfigurationValue:(id)value forKey:(id)key
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  v12 = 0;
  objc_storeStrong(&v12, key);
  if (v12)
  {
    v7 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.AuthKit"];
    [v7 setObject:location[0] forKey:v12];
    [v7 synchronize];
    notify_post(_AKConfigurationDidChangeNotification);
    objc_storeStrong(&v7, 0);
    v8 = 0;
  }

  else
  {
    v11 = _AKLogSystem();
    v10 = 16;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      log = v11;
      type = v10;
      __os_log_helper_16_0_0(v9);
      _os_log_error_impl(&dword_193225000, log, type, "Nil key while setting domain config!", v9, 2u);
    }

    objc_storeStrong(&v11, 0);
    v8 = 1;
  }

  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

- (void)_clearGlobalConfigValues
{
  selfCopy = self;
  v8[1] = a2;
  queue = dispatch_get_global_queue(21, 0);
  v3 = MEMORY[0x1E69E9820];
  v4 = -1073741824;
  v5 = 0;
  v6 = __43__AKConfiguration__clearGlobalConfigValues__block_invoke;
  v7 = &unk_1E73D34C0;
  v8[0] = MEMORY[0x1E69E5928](selfCopy);
  dispatch_async(queue, &v3);
  MEMORY[0x1E69E5920](queue);
  objc_storeStrong(v8, 0);
}

void __43__AKConfiguration__clearGlobalConfigValues__block_invoke(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v21[2] = a1;
  v21[1] = a1;
  v21[0] = MEMORY[0x1E69E5928](&unk_1F07B5150);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x1E69E5928](v21[0]);
  v13 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
  if (v13)
  {
    v8 = *__b[2];
    v9 = 0;
    v10 = v13;
    while (1)
    {
      v7 = v9;
      if (*__b[2] != v8)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(__b[1] + 8 * v9);
      location = [a1[4] configurationValueForKey:v20];
      if (location)
      {
        [a1[4] setConfigurationValue:0 forKey:v20];
      }

      objc_storeStrong(&location, 0);
      ++v9;
      if (v7 + 1 >= v10)
      {
        v9 = 0;
        v10 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v10)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](obj);
  v23 = @"_AKBAACertMarkerKey";
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  memset(v15, 0, sizeof(v15));
  v5 = MEMORY[0x1E69E5928](v17);
  v6 = [v5 countByEnumeratingWithState:v15 objects:v22 count:16];
  if (v6)
  {
    v2 = *v15[2];
    v3 = 0;
    v4 = v6;
    while (1)
    {
      v1 = v3;
      if (*v15[2] != v2)
      {
        objc_enumerationMutation(v5);
      }

      v16 = *(v15[1] + 8 * v3);
      v14 = [a1[4] configurationValueForKey:v16];
      if (v14)
      {
        [a1[4] setDomainConfigurationValue:v14 forKey:v16];
      }

      objc_storeStrong(&v14, 0);
      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [v5 countByEnumeratingWithState:v15 objects:v22 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(v21, 0);
  *MEMORY[0x1E69E9840];
}

- (int64_t)overrideForKey:(id)key
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, key);
  v6 = [(AKConfiguration *)selfCopy configurationValueForKey:location[0]];
  integerValue = [v6 integerValue];
  MEMORY[0x1E69E5920](v6);
  if (integerValue < 1)
  {
    v5 = integerValue;
  }

  else
  {
    v5 = 1;
  }

  if (v5 > -1)
  {
    v4 = v5;
  }

  else
  {
    v4 = -1;
  }

  objc_storeStrong(location, 0);
  return v4;
}

- (void)setOverride:(int64_t)override forKey:(id)key
{
  selfCopy = self;
  v8 = a2;
  overrideCopy = override;
  location = 0;
  objc_storeStrong(&location, key);
  v4 = selfCopy;
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:overrideCopy];
  [AKConfiguration setConfigurationValue:v4 forKey:"setConfigurationValue:forKey:"];
  MEMORY[0x1E69E5920](v5);
  objc_storeStrong(&location, 0);
}

- (int64_t)shouldFakeAuthSuccess
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKFakeAuthSuccess"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldFakeAuthSuccess:(int64_t)success
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:success];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldDisablePiggybacking
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKDisablePiggy"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldDisablePiggybacking:(int64_t)piggybacking
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:piggybacking];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldSuppressHSA2Suggestions
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKSuppressHSA2Suggestions"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldSuppressHSA2Suggestions:(int64_t)suggestions
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:suggestions];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAddHSA2CreateHeader
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKAddHS2CreateHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAddHSA2CreateHeader:(int64_t)header
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:header];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAllowPhoneNumberAccounts
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKAllowPhoneNumberAccounts"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAllowPhoneNumberAccounts:(int64_t)accounts
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:accounts];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAllowExperimentalMode
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKAddExperimentalModeHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAllowExperimentalMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setShouldHideInternalBuildHeader:(int64_t)header
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:header];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldHideSeedBuildHeader
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKHideSeedBuildHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldHideSeedBuildHeader:(int64_t)header
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:header];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAllowDemoMode
{
  v4 = +[AKDevice currentDevice];
  isInternalBuild = [v4 isInternalBuild];
  MEMORY[0x1E69E5920](v4);
  if ((isInternalBuild & 1) == 0)
  {
    return -1;
  }

  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAuthorizationDemoMode"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAllowDemoMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setShouldAllowTestApplication:(int64_t)application
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:application];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldEnableTestAccountMode
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAddTestAccountHeader"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldEnableTestAccountMode:(int64_t)mode
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldSuppressModalSheetsInMacBuddy
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKSuppressModalSheetsInMacBuddy"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldSuppressModalSheetsInMacBuddy:(int64_t)buddy
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:buddy];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAutocycleAppsInTiburon
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAutocycleAppsInTiburon"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAutocycleAppsInTiburon:(int64_t)tiburon
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:tiburon];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAlwaysShowWelcome
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAlwaysShowWelcome"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAlwaysShowWelcome:(int64_t)welcome
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:welcome];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAutocycleAppsInWebTakeover
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAutocycleAppsInWebTakeOver"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAutocycleAppsInWebTakeover:(int64_t)takeover
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:takeover];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)shouldAskToBuy
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAskToBuy"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setShouldAskToBuy:(int64_t)buy
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:buy];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setShouldEnableTelemetryOptIn:(int64_t)in
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:in];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setLastKnownIDMSEnvironment:(unint64_t)environment
{
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:environment];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)forceSilentEscrowRecordRepairEnabled
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKForceSilentEscrowRecordRepairEnabled"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setForceSilentEscrowRecordRepairEnabled:(int64_t)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)forceSilentEscrowRecordRepairEnabledV2
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKForceSilentEscrowRecordRepairEnabledV2"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setForceSilentEscrowRecordRepairEnabledV2:(int64_t)v2
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:v2];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)forceSilentBurnCDPRepairEnabled
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKForceSilentBurnCDPRepairEnabled"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setForceSilentBurnCDPRepairEnabled:(int64_t)enabled
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:enabled];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setIdmsWalrusStatusOverride:(id)override
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, override);
  [(AKConfiguration *)selfCopy setConfigurationValue:location[0] forKey:@"_AKIdmsWalrusStatusOverrideKey"];
  objc_storeStrong(location, 0);
}

- (void)setShouldBypassCustodianDeviceCheck:(int64_t)check
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:check];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setShouldEnableBeneficiaryLiveOn:(int64_t)on
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:on];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setShouldForceBaaValidation:(int64_t)validation
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:validation];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setContactKeyVerification:(int64_t)verification
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:verification];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)requestedCloudPartition
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKCloudPartition"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setRequestedCloudPartition:(int64_t)partition
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:partition];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setLastKnownLocale:(id)locale
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, locale);
  [(AKConfiguration *)selfCopy setConfigurationValue:location[0] forKey:@"AKLastLocale"];
  objc_storeStrong(location, 0);
}

- (void)setForceHasSOSActiveDevice:(int64_t)device
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:device];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setForceSOSNeeded:(int64_t)needed
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:needed];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)telemetryOptInGracePeriodOverride
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKOverrideTelemetryOptInGracePeriod"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setTelemetryOptInGracePeriodOverride:(int64_t)override
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:override];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)accountAccessTelemetryOptInFFOverride
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKAccountAccessTelemetryOptInFFOverrideKey"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setAccountAccessTelemetryOptInOverride:(int64_t)override
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:override];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (void)setStrongDeviceIdentityMarker:(id)marker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, marker);
  [(AKConfiguration *)selfCopy setDomainConfigurationValue:location[0] forKey:@"_AKBAACertMarkerKey"];
  objc_storeStrong(location, 0);
}

- (int64_t)deviceSafetyRestrictionReasonOverride
{
  v3 = [(AKConfiguration *)self configurationValueForKey:@"AKDeviceSafetyRestrictionReasonOverride"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

- (void)setDeviceSafetyRestrictionReasonOverride:(int64_t)override
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:override];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

uint64_t __49__AKConfiguration_shouldEnableAttestationLogging__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) configurationValueForKey:@"AKOverrideAttestationLoggingKey"];
  shouldEnableAttestationLogging_configState = [v2 integerValue];
  return MEMORY[0x1E69E5920](v2);
}

- (void)setShouldEnableAttestationLogging:(int64_t)logging
{
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:logging];
  [AKConfiguration setConfigurationValue:"setConfigurationValue:forKey:" forKey:?];
  MEMORY[0x1E69E5920](v4);
}

- (int64_t)internalSiwADefaultHME
{
  v4 = +[AKDevice currentDevice];
  isInternalBuild = [v4 isInternalBuild];
  MEMORY[0x1E69E5920](v4);
  if (!isInternalBuild)
  {
    return -1;
  }

  v3 = [(AKConfiguration *)self configurationValueForKey:@"_AKInternalSiwADefaultHME"];
  integerValue = [v3 integerValue];
  MEMORY[0x1E69E5920](v3);
  return integerValue;
}

@end