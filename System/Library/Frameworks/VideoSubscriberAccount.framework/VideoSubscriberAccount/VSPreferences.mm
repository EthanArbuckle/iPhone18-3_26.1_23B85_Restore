@interface VSPreferences
- (BOOL)allowInsecureAuthContext;
- (BOOL)allowNonSystemTrust;
- (BOOL)featureIsEnabled:(id)enabled present:(BOOL *)present;
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
- (void)_updateValue:(id)value forKey:(id)key;
- (void)clearFeature:(id)feature;
- (void)clearSetTopBoxActivationTime;
- (void)disableFeature:(id)feature;
- (void)enableFeature:(id)feature;
- (void)setCachedAvailabilityStatus:(int64_t)status;
- (void)setCachedDeveloperProviderStatus:(int64_t)status;
- (void)setCachedStoreProviderStatus:(int64_t)status;
- (void)setIgnoreSetTopBoxProfile:(BOOL)profile;
- (void)setIsInSTBMode:(BOOL)mode;
- (void)setMetricUserID:(id)d;
- (void)setPerformedSubcriptionToUserAccountMigration;
- (void)setSetTopBoxActivationTime;
- (void)setVendorIdentifierDictionary:(id)dictionary;
@end

@implementation VSPreferences

- (NSUserDefaults)userDefaults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  standardUserDefaults = selfCopy->_userDefaults;
  if (!standardUserDefaults)
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    objc_storeStrong(&selfCopy->_userDefaults, standardUserDefaults);
  }

  objc_sync_exit(selfCopy);

  if (!standardUserDefaults)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return standardUserDefaults;
}

- (NSUserDefaults)globalUserDefaults
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_globalUserDefaults;
  if (!v3)
  {
    v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.VideoSubscriberAccount"];
    objc_storeStrong(&selfCopy->_globalUserDefaults, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (VSDevice)device
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_device;
  if (!v3)
  {
    v3 = +[VSDevice currentDevice];
    objc_storeStrong(&selfCopy->_device, v3);
  }

  objc_sync_exit(selfCopy);

  if (!v3)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The __orNil parameter must not be nil."];
  }

  return v3;
}

- (void)_updateValue:(id)value forKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  keyCopy = key;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412546;
    v14 = keyCopy;
    v15 = 2112;
    v16 = valueCopy;
    _os_log_impl(&dword_23AB8E000, v8, OS_LOG_TYPE_DEFAULT, "Updating value for key %@ to %@", &v13, 0x16u);
  }

  userDefaults = [(VSPreferences *)self userDefaults];
  undoManager = [(VSPreferences *)self undoManager];
  if (undoManager)
  {
    v11 = [userDefaults valueForKey:keyCopy];
    v12 = [undoManager prepareWithInvocationTarget:self];
    [v12 _updateValue:v11 forKey:keyCopy];
  }

  if (valueCopy)
  {
    [userDefaults setValue:valueCopy forKey:keyCopy];
  }

  else
  {
    [userDefaults removeObjectForKey:keyCopy];
  }
}

- (BOOL)shouldSkipSetup
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"VSSkipSetup"];

  return v3;
}

- (int64_t)cachedAvailabilityStatus
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults integerForKey:@"VSIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedAvailabilityStatus:(int64_t)status
{
  userDefaults = [(VSPreferences *)self userDefaults];
  [userDefaults setInteger:status forKey:@"VSIdentityProviderAvailabilityStatus"];
}

- (int64_t)cachedDeveloperProviderStatus
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults integerForKey:@"VSDeveloperIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedDeveloperProviderStatus:(int64_t)status
{
  userDefaults = [(VSPreferences *)self userDefaults];
  [userDefaults setInteger:status forKey:@"VSDeveloperIdentityProviderAvailabilityStatus"];
}

- (int64_t)cachedStoreProviderStatus
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults integerForKey:@"VSStoreIdentityProviderAvailabilityStatus"];

  return v3;
}

- (void)setCachedStoreProviderStatus:(int64_t)status
{
  userDefaults = [(VSPreferences *)self userDefaults];
  [userDefaults setInteger:status forKey:@"VSStoreIdentityProviderAvailabilityStatus"];
}

- (BOOL)allowNonSystemTrust
{
  userDefaults = [(VSPreferences *)self userDefaults];
  if ([userDefaults BOOLForKey:@"VSIgnoreExtendedValidation"])
  {
    v4 = 1;
  }

  else
  {
    globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
    v4 = [globalUserDefaults BOOLForKey:@"VSIgnoreExtendedValidation"];
  }

  return v4;
}

- (BOOL)allowInsecureAuthContext
{
  userDefaults = [(VSPreferences *)self userDefaults];
  if ([userDefaults BOOLForKey:@"VSAllowInsecureAuthContext"])
  {
    v4 = 1;
  }

  else
  {
    globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
    v4 = [globalUserDefaults BOOLForKey:@"VSAllowInsecureAuthContext"];
  }

  return v4;
}

- (NSURL)overridingAppBootURL
{
  device = [(VSPreferences *)self device];
  isRunningAnInternalBuild = [device isRunningAnInternalBuild];

  if (isRunningAnInternalBuild)
  {
    userDefaults = [(VSPreferences *)self userDefaults];
    v6 = [userDefaults stringForKey:@"vsa-boot-url"];

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
  device = [(VSPreferences *)self device];
  isRunningAnInternalBuild = [device isRunningAnInternalBuild];

  if (!isRunningAnInternalBuild)
  {
    return 0;
  }

  userDefaults = [(VSPreferences *)self userDefaults];
  v6 = [userDefaults BOOLForKey:@"vsa-disable-timeouts"];

  return v6;
}

- (BOOL)shouldAlwaysAllowRemoteInspection
{
  device = [(VSPreferences *)self device];
  isRunningAnInternalBuild = [device isRunningAnInternalBuild];

  return isRunningAnInternalBuild;
}

- (BOOL)hasChosenDesiredApp
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSProviderAppInstallMetadata"];

  return v3 != 0;
}

- (BOOL)isInSTBMode
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSProviderIsInSTBMode"];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (void)setIsInSTBMode:(BOOL)mode
{
  v4 = [MEMORY[0x277CCABB0] numberWithBool:mode];
  [(VSPreferences *)self _updateValue:v4 forKey:@"VSProviderIsInSTBMode"];
}

- (BOOL)setTopBoxInfoIsSetTopBoxOverride
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults BOOLForKey:@"VSSetTopBoxInfoIsSetTopBoxOverride"];

  return v3;
}

- (NSString)setTopBoxInfoProviderIdOverride
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSSetTopBoxInfoProviderIdOverride"];

  return v3;
}

- (NSString)setTopBoxInfoProviderDisplayNameOverride
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSSetTopBoxInfoProviderDisplayNameOverride"];

  return v3;
}

- (NSString)setTopBoxInfoAppAdamIdOverride
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSSetTopBoxInfoAppAdamIdOverride"];

  return v3;
}

- (NSString)setTopBoxInfoBundleIdentifierOverride
{
  userDefaults = [(VSPreferences *)self userDefaults];
  v3 = [userDefaults objectForKey:@"VSSetTopBoxBundleIdentifierOverride"];

  return v3;
}

- (void)setIgnoreSetTopBoxProfile:(BOOL)profile
{
  profileCopy = profile;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults setBool:profileCopy forKey:@"VSIgnoreSetTopBoxProfile"];
}

- (BOOL)ignoreSetTopBoxProfile
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults BOOLForKey:@"VSIgnoreSetTopBoxProfile"];

  return v3;
}

- (NSString)metricUserID
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults stringForKey:@"VSMetricUserID"];

  return v3;
}

- (void)setMetricUserID:(id)d
{
  dCopy = d;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults setObject:dCopy forKey:@"VSMetricUserID"];

  v6 = MEMORY[0x277CCABB0];
  v7 = [MEMORY[0x277CBEAA8] now];
  [v7 timeIntervalSince1970];
  v9 = [v6 numberWithDouble:?];

  globalUserDefaults2 = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults2 setObject:v9 forKey:@"VSMetricUserIDLastGenerated"];
}

- (NSDate)setTopBoxActivationTime
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults doubleForKey:@"VSSetTopBoxActivationTime"];
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
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  v5 = v4;

  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults setDouble:@"VSSetTopBoxActivationTime" forKey:v5];
}

- (void)clearSetTopBoxActivationTime
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults removeObjectForKey:@"VSSetTopBoxActivationTime"];
}

- (NSDate)metricUserIDLastGenerated
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults integerForKey:@"VSMetricUserIDLastGenerated"];

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

- (BOOL)featureIsEnabled:(id)enabled present:(BOOL *)present
{
  enabledCopy = enabled;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  enabledCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", enabledCopy];

  v9 = [globalUserDefaults valueForKey:enabledCopy];

  if (present)
  {
    *present = v9 != 0;
  }

  bOOLValue = [v9 BOOLValue];

  return bOOLValue;
}

- (void)enableFeature:(id)feature
{
  featureCopy = feature;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", featureCopy];

  [globalUserDefaults setBool:1 forKey:featureCopy];
}

- (void)disableFeature:(id)feature
{
  featureCopy = feature;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", featureCopy];

  [globalUserDefaults setBool:0 forKey:featureCopy];
}

- (void)clearFeature:(id)feature
{
  featureCopy = feature;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  featureCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%@", @"VSFeature", featureCopy];

  [globalUserDefaults removeObjectForKey:featureCopy];
}

- (BOOL)performedSubcriptionToUserAccountMigration
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults BOOLForKey:@"VSPerformedSubToUserAccountMigration"];

  return v3;
}

- (void)setPerformedSubcriptionToUserAccountMigration
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults setBool:1 forKey:@"VSPerformedSubToUserAccountMigration"];
}

- (NSDictionary)vendorIdentifierDictionary
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults dictionaryForKey:@"VSVendorIdentifierTable"];

  if (!v3)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  }

  return v3;
}

- (void)setVendorIdentifierDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  [globalUserDefaults setObject:dictionaryCopy forKey:@"VSVendorIdentifierTable"];
}

- (BOOL)flushMetrics
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults BOOLForKey:@"VSFlushMetrics"];

  return v3;
}

- (int64_t)forcedAvailabilityStatus
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults integerForKey:@"VSForcedAvailabilityStatus"];

  return v3;
}

- (NSString)forceSingleProviderID
{
  globalUserDefaults = [(VSPreferences *)self globalUserDefaults];
  v3 = [globalUserDefaults stringForKey:@"VSForceSingleProvider"];

  return v3;
}

@end