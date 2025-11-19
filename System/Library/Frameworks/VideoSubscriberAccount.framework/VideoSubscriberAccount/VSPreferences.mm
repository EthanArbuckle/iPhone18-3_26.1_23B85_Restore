@interface VSPreferences
- (BOOL)allowInsecureAuthContext;
- (BOOL)allowNonSystemTrust;
- (BOOL)featureIsEnabled:(id)a3 present:(BOOL *)a4;
- (BOOL)flushMetrics;
- (BOOL)hasChosenDesiredApp;
- (BOOL)ignoreSetTopBoxProfile;
- (BOOL)isInSTBMode;
- (BOOL)performedSubcriptionToUserAccountMigration;
- (BOOL)setTopBoxInfoIsSetTopBoxOverride;
- (BOOL)shouldAlwaysAllowRemoteInspection;
- (BOOL)shouldDisableRequestTimeouts;
- (BOOL)shouldSkipSetup;
- (NSDate)metricUserIDLastGenerated;
- (NSDate)setTopBoxActivationTime;
- (NSDictionary)vendorIdentifierDictionary;
- (NSString)forceSingleProviderID;
- (NSString)metricUserID;
- (NSString)setTopBoxInfoAppAdamIdOverride;
- (NSString)setTopBoxInfoBundleIdentifierOverride;
- (NSString)setTopBoxInfoProviderDisplayNameOverride;
- (NSString)setTopBoxInfoProviderIdOverride;
- (NSURL)overridingAppBootURL;
- (NSUserDefaults)globalUserDefaults;
- (NSUserDefaults)userDefaults;
- (VSDevice)device;
- (int64_t)cachedAvailabilityStatus;
- (int64_t)cachedDeveloperProviderStatus;
- (int64_t)cachedStoreProviderStatus;
- (int64_t)forcedAvailabilityStatus;
- (void)_updateValue:(id)a3 forKey:(id)a4;
- (void)clearFeature:(id)a3;
- (void)clearSetTopBoxActivationTime;
- (void)disableFeature:(id)a3;
- (void)enableFeature:(id)a3;
- (void)setCachedAvailabilityStatus:(int64_t)a3;
- (void)setCachedDeveloperProviderStatus:(int64_t)a3;
- (void)setCachedStoreProviderStatus:(int64_t)a3;
- (void)setIgnoreSetTopBoxProfile:(BOOL)a3;
- (void)setIsInSTBMode:(BOOL)a3;
- (void)setMetricUserID:(id)a3;
- (void)setPerformedSubcriptionToUserAccountMigration;
- (void)setSetTopBoxActivationTime;
- (void)setVendorIdentifierDictionary:(id)a3;
@end

@implementation VSPreferences

- (NSUserDefaults)userDefaults
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_userDefaults;
  if (!v3)
  {
    v3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    objc_storeStrong(&v2->_userDefaults, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (NSUserDefaults)globalUserDefaults
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_globalUserDefaults;
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.VideoSubscriberAccount"];
    objc_storeStrong(&v2->_globalUserDefaults, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (VSDevice)device
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_device;
  if (!v3)
  {
    v3 = +[VSDevice currentDevice];
    objc_storeStrong(&v2->_device, v3);
  }

  objc_sync_exit(v2);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)_updateValue:(id)a3 forKey:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = v7;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Updating value for key %@ to %@", &v13, 0x16u);
  }

  v9 = [(VSPreferences *)self userDefaults];
  v10 = [(VSPreferences *)self undoManager];
  if (v10)
  {
    v11 = [v9 valueForKey:v7];
    v12 = [v10 prepareWithInvocationTarget:self];
    [v12 _updateValue:v11 forKey:v7];
  }

  if (v6)
  {
    [v9 setValue:v6 forKey:v7];
  }

  else
  {
    [v9 removeObjectForKey:v7];
  }
}

- (BOOL)shouldSkipSetup
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 BOOLForKey:@"VSSkipSetup"];

  return v3;
}

- (int64_t)cachedAvailabilityStatus
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 integerForKey:@"VSIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedAvailabilityStatus:(int64_t)a3
{
  v4 = [(VSPreferences *)self userDefaults];
  [v4 setInteger:a3 forKey:@"VSIdentityProviderAvailabilityStatus"];
}

- (int64_t)cachedDeveloperProviderStatus
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 integerForKey:@"VSDeveloperIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedDeveloperProviderStatus:(int64_t)a3
{
  v4 = [(VSPreferences *)self userDefaults];
  [v4 setInteger:a3 forKey:@"VSDeveloperIdentityProviderAvailabilityStatus"];
}

- (int64_t)cachedStoreProviderStatus
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 integerForKey:@"VSStoreIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedStoreProviderStatus:(int64_t)a3
{
  v4 = [(VSPreferences *)self userDefaults];
  [v4 setInteger:a3 forKey:@"VSStoreIdentityProviderAvailabilityStatus"];
}

- (BOOL)allowNonSystemTrust
{
  v3 = [(VSPreferences *)self userDefaults];
  if ([v3 BOOLForKey:@"VSIgnoreExtendedValidation"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VSPreferences *)self globalUserDefaults];
    v4 = [v5 BOOLForKey:@"VSIgnoreExtendedValidation"];
  }

  return v4;
}

- (BOOL)allowInsecureAuthContext
{
  v3 = [(VSPreferences *)self userDefaults];
  if ([v3 BOOLForKey:@"VSAllowInsecureAuthContext"])
  {
    v4 = 1;
  }

  else
  {
    v5 = [(VSPreferences *)self globalUserDefaults];
    v4 = [v5 BOOLForKey:@"VSAllowInsecureAuthContext"];
  }

  return v4;
}

- (NSURL)overridingAppBootURL
{
  v3 = [(VSPreferences *)self device];
  v4 = [v3 isRunningAnInternalBuild];

  if (v4)
  {
    v5 = [(VSPreferences *)self userDefaults];
    v6 = [v5 stringForKey:@"vsa-boot-url"];

    if ([v6 length])
    {
      if (!v6)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The bootURLStrOrNil parameter must not be nil."];
      }

      v7 = [MEMORY[0x277CBEBC0] URLWithString:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)shouldDisableRequestTimeouts
{
  v3 = [(VSPreferences *)self device];
  v4 = [v3 isRunningAnInternalBuild];

  if (!v4)
  {
    return 0;
  }

  v5 = [(VSPreferences *)self userDefaults];
  v6 = [v5 BOOLForKey:@"vsa-disable-timeouts"];

  return v6;
}

- (BOOL)shouldAlwaysAllowRemoteInspection
{
  v2 = [(VSPreferences *)self device];
  v3 = [v2 isRunningAnInternalBuild];

  return v3;
}

- (BOOL)hasChosenDesiredApp
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSProviderAppInstallMetadata"];

  return v3 != 0;
}

- (BOOL)isInSTBMode
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSProviderIsInSTBMode"];
  v4 = [v3 BOOLValue];

  return v4;
}

- (void)setIsInSTBMode:(BOOL)a3
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:a3];
  [(VSPreferences *)self _updateValue:v4 forKey:@"VSProviderIsInSTBMode"];
}

- (BOOL)setTopBoxInfoIsSetTopBoxOverride
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 BOOLForKey:@"VSSetTopBoxInfoIsSetTopBoxOverride"];

  return v3;
}

- (NSString)setTopBoxInfoProviderIdOverride
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSSetTopBoxInfoProviderIdOverride"];

  return v3;
}

- (NSString)setTopBoxInfoProviderDisplayNameOverride
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSSetTopBoxInfoProviderDisplayNameOverride"];

  return v3;
}

- (NSString)setTopBoxInfoAppAdamIdOverride
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSSetTopBoxInfoAppAdamIdOverride"];

  return v3;
}

- (NSString)setTopBoxInfoBundleIdentifierOverride
{
  v2 = [(VSPreferences *)self userDefaults];
  v3 = [v2 objectForKey:@"VSSetTopBoxBundleIdentifierOverride"];

  return v3;
}

- (void)setIgnoreSetTopBoxProfile:(BOOL)a3
{
  v3 = a3;
  v4 = [(VSPreferences *)self globalUserDefaults];
  [v4 setBool:v3 forKey:@"VSIgnoreSetTopBoxProfile"];
}

- (BOOL)ignoreSetTopBoxProfile
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 BOOLForKey:@"VSIgnoreSetTopBoxProfile"];

  return v3;
}

- (NSString)metricUserID
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 stringForKey:@"VSMetricUserID"];

  return v3;
}

- (void)setMetricUserID:(id)a3
{
  v4 = a3;
  v5 = [(VSPreferences *)self globalUserDefaults];
  [v5 setObject:v4 forKey:@"VSMetricUserID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEAA8] now];
  [v7 timeIntervalSince1970];
  v9 = [v6 numberWithDouble:?];

  v8 = [(VSPreferences *)self globalUserDefaults];
  [v8 setObject:v9 forKey:@"VSMetricUserIDLastGenerated"];
}

- (NSDate)setTopBoxActivationTime
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  [v2 doubleForKey:@"VSSetTopBoxActivationTime"];
  v4 = v3;

  if (v4 <= 0.0)
  {
    v5 = 0;
  }

  else
  {
    v5 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v4];
  }

  return v5;
}

- (void)setSetTopBoxActivationTime
{
  v3 = [MEMORY[0x277CBEAA8] date];
  [v3 timeIntervalSince1970];
  v5 = v4;

  v6 = [(VSPreferences *)self globalUserDefaults];
  [v6 setDouble:@"VSSetTopBoxActivationTime" forKey:v5];
}

- (void)clearSetTopBoxActivationTime
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  [v2 removeObjectForKey:@"VSSetTopBoxActivationTime"];
}

- (NSDate)metricUserIDLastGenerated
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 integerForKey:@"VSMetricUserIDLastGenerated"];

  if (v3)
  {
    v4 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)featureIsEnabled:(id)a3 present:(BOOL *)a4
{
  v6 = a3;
  v7 = [(VSPreferences *)self globalUserDefaults];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", v6];

  v9 = [v7 valueForKey:v8];

  if (a4)
  {
    *a4 = v9 != 0;
  }

  v10 = [v9 BOOLValue];

  return v10;
}

- (void)enableFeature:(id)a3
{
  v4 = a3;
  v6 = [(VSPreferences *)self globalUserDefaults];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", v4];

  [v6 setBool:1 forKey:v5];
}

- (void)disableFeature:(id)a3
{
  v4 = a3;
  v6 = [(VSPreferences *)self globalUserDefaults];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", v4];

  [v6 setBool:0 forKey:v5];
}

- (void)clearFeature:(id)a3
{
  v4 = a3;
  v6 = [(VSPreferences *)self globalUserDefaults];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", v4];

  [v6 removeObjectForKey:v5];
}

- (BOOL)performedSubcriptionToUserAccountMigration
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 BOOLForKey:@"VSPerformedSubToUserAccountMigration"];

  return v3;
}

- (void)setPerformedSubcriptionToUserAccountMigration
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  [v2 setBool:1 forKey:@"VSPerformedSubToUserAccountMigration"];
}

- (NSDictionary)vendorIdentifierDictionary
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 dictionaryForKey:@"VSVendorIdentifierTable"];

  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v3;
}

- (void)setVendorIdentifierDictionary:(id)a3
{
  v4 = a3;
  v5 = [(VSPreferences *)self globalUserDefaults];
  [v5 setObject:v4 forKey:@"VSVendorIdentifierTable"];
}

- (BOOL)flushMetrics
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 BOOLForKey:@"VSFlushMetrics"];

  return v3;
}

- (int64_t)forcedAvailabilityStatus
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 integerForKey:@"VSForcedAvailabilityStatus"];

  return v3;
}

- (NSString)forceSingleProviderID
{
  v2 = [(VSPreferences *)self globalUserDefaults];
  v3 = [v2 stringForKey:@"VSForceSingleProvider"];

  return v3;
}

@end