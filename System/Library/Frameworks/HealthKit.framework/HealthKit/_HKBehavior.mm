@interface _HKBehavior
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_currentOSVersionStruct;
+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)currentOSVersionStruct;
+ (BOOL)_condensesHeartRateSamples;
+ (BOOL)_futureMigrationsEnabled;
+ (BOOL)_hasCompletedBuddyWithKey:(id)a3 version:(int64_t)a4;
+ (BOOL)_hasCompletedBuddyWithVersion:(int64_t)a3;
+ (BOOL)_healthAppHidden;
+ (BOOL)_healthAppNotInstalled;
+ (BOOL)_isAppleInternalInstall;
+ (BOOL)_isAutomaticProcessingEnabled;
+ (BOOL)_isBuddyDisabled;
+ (BOOL)_isCollectBLETypesFromLocalSourceEnabled;
+ (BOOL)_isDataCollectionForwarderDisabled;
+ (BOOL)_isDeviceSupported;
+ (BOOL)_isForceBuddyEnabled;
+ (BOOL)_isForceHRCollectionDuringWorkoutEnabled;
+ (BOOL)_isiPad;
+ (BOOL)_ontologyDatabaseFutureMigrationsEnabled;
+ (BOOL)_shouldShowBuddy;
+ (BOOL)activePairedWatchHasSmartFitnessCoaching;
+ (BOOL)activePairedWatchSupportsBradycardiaDetection;
+ (BOOL)activePairedWatchSupportsHeartRateMotionContexts;
+ (BOOL)allPairedWatchesSupportBradycardiaDetection;
+ (BOOL)allPairedWatchesSupportHeartRateMotionContexts;
+ (BOOL)anyPairedWatchHasFlightsClimbedCapability;
+ (BOOL)hasPairedWatch;
+ (BOOL)hasTelephonyCapability;
+ (BOOL)isAppleInternalInstall;
+ (BOOL)isDeviceSupported;
+ (BOOL)isRunningStoreDemoMode;
+ (BOOL)isTestingDevice;
+ (BOOL)isiPod;
+ (BOOL)runningInStoreDemoModeF201;
+ (id)_currentDeviceName;
+ (id)_currentOSBuild;
+ (id)_currentOSVersion;
+ (id)_getActivePairedDevice;
+ (id)currentDeviceClass;
+ (id)currentDeviceDisplayName;
+ (id)currentDeviceHWModelString;
+ (id)currentDeviceManufacturer;
+ (id)currentDeviceName;
+ (id)currentDeviceProductType;
+ (id)currentDeviceRegionCode;
+ (id)currentDeviceRegionInfo;
+ (id)currentDeviceReleaseType;
+ (id)currentDeviceSupportsDynamicIsland;
+ (id)currentOSBuild;
+ (id)currentOSName;
+ (id)currentOSVersion;
+ (id)sharedBehavior;
+ (int)nanoSyncProtocolVersionForCompanionSystemBuildVersion:(id)a3;
+ (int)nanoSyncProtocolVersionForWatchSystemBuildVersion:(id)a3;
+ (unint64_t)_fitnessMode;
+ (void)_healthAppNotInstalled;
+ (void)_setHasCompletedBuddyWithKey:(id)a3 version:(int64_t)a4;
+ (void)_setHasCompletedBuddyWithVersion:(int64_t)a3;
+ (void)resetSharedBehavior;
+ (void)setSharedBehavior:(id)a3;
- (BOOL)_hasProductTypePrefix:(id)a3;
- (BOOL)enableBloodPressureValidations;
- (BOOL)futureMigrationsEnabled;
- (BOOL)healthAppHidden;
- (BOOL)healthAppHiddenOrNotInstalled;
- (BOOL)healthAppNotInstalled;
- (BOOL)healthAppSupportedOnDevice;
- (BOOL)isProdFused;
- (BOOL)isRunningStoreDemoMode;
- (BOOL)isStandalonePhoneFitnessMode;
- (BOOL)isVirtualDevice;
- (BOOL)performsAutomaticUserDomainConceptProcessing;
- (BOOL)processHasLoadedUIKit;
- (BOOL)runningInStoreDemoModeF201;
- (BOOL)shouldReceiveECGSamples;
- (BOOL)supportsActiveQueryDaemonTransactions;
- (BOOL)supportsCachedSleepDaySummaryQueries;
- (BOOL)supportsCachedStatisticsCollectionQueries;
- (BOOL)supportsCloudSync;
- (BOOL)supportsCloudSyncSharding;
- (BOOL)supportsCloudSyncStagingShard;
- (BOOL)supportsCoordinatedCloudSync;
- (BOOL)supportsOntologyDatabaseFutureMigrations;
- (BOOL)supportsPeriodicFullCloudSync;
- (BOOL)supportsPeriodicLiteCloudSync;
- (BOOL)supportsSecondaryProfiles;
- (BOOL)supportsSwimmingWorkoutSessions;
- (BOOL)tinkerModeEnabled;
- (NSDictionary)currentDiskUsage;
- (NSString)currentDeviceClass;
- (NSString)currentDeviceDisplayName;
- (NSString)currentDeviceHWModelString;
- (NSString)currentDeviceProductType;
- (NSString)currentDeviceRegionCode;
- (NSString)currentDeviceRegionInfo;
- (NSString)currentDeviceReleaseType;
- (NSString)currentDeviceSerialNumber;
- (NSString)currentInternalDeviceModel;
- (NSString)currentOSName;
- (NSString)description;
- (_HKBehavior)init;
- (_HKFeatureFlags)features;
- (id).cxx_construct;
- (id)currentDeviceSupportsDynamicIsland;
- (uint64_t)futureMigrationsEnabled;
- (uint64_t)isProdFused;
- (uint64_t)isRunningStoreDemoMode;
- (uint64_t)isVirtualDevice;
- (uint64_t)performsAutomaticUserDomainConceptProcessing;
- (uint64_t)runningInStoreDemoModeF201;
- (uint64_t)supportsOntologyDatabaseFutureMigrations;
- (unint64_t)currentDiskSpaceAvailable;
- (unint64_t)fitnessMode;
- (unint64_t)totalDiskCapacity;
- (void)_setDeviceSpecificBehaviors;
- (void)_setSharedBehaviors;
- (void)resetSupportsCloudSync;
- (void)setCurrentDeviceDisplayName:(id)a3;
- (void)setCurrentOSVersionStruct:(id *)a3;
- (void)setFitnessMode:(unint64_t)a3;
- (void)setFutureMigrationsEnabled:(BOOL)a3;
- (void)setIsAppleWatch:(BOOL)a3;
- (void)setIsProdFused:(BOOL)a3;
- (void)setIsRealityDevice:(BOOL)a3;
- (void)setIsRunningStoreDemoMode:(BOOL)a3;
- (void)setIsVirtualDevice:(BOOL)a3;
- (void)setIsiPad:(BOOL)a3;
- (void)setPerformsAutomaticUserDomainConceptProcessing:(BOOL)a3;
- (void)setRunningInStoreDemoModeF201:(BOOL)a3;
- (void)setShouldReceiveECGSamples:(BOOL)a3;
- (void)setSupportsCloudSync:(BOOL)a3;
- (void)setSupportsCloudSyncSharding:(BOOL)a3;
- (void)setSupportsCloudSyncStagingShard:(BOOL)a3;
- (void)setSupportsCoordinatedCloudSync:(BOOL)a3;
- (void)setSupportsOntologyDatabaseFutureMigrations:(BOOL)a3;
- (void)setSupportsPeriodicFullCloudSync:(BOOL)a3;
- (void)setSupportsPeriodicLiteCloudSync:(BOOL)a3;
@end

@implementation _HKBehavior

+ (BOOL)isAppleInternalInstall
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 isAppleInternalInstall];

  return v3;
}

+ (id)sharedBehavior
{
  os_unfair_lock_lock(&_sharedBehaviorLock);
  if (!+[_HKBehavior sharedBehavior]::defaultBehavior)
  {
    v2 = objc_alloc_init(_HKBehavior);
    v3 = +[_HKBehavior sharedBehavior]::defaultBehavior;
    +[_HKBehavior sharedBehavior]::defaultBehavior = v2;
  }

  v4 = _sharedBehaviorOverride;
  os_unfair_lock_unlock(&_sharedBehaviorLock);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = +[_HKBehavior sharedBehavior]::defaultBehavior;
  }

  v6 = v5;

  return v5;
}

+ (BOOL)activePairedWatchHasSmartFitnessCoaching
{
  v2 = [objc_opt_class() _getActivePairedDevice];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"6ADE877A-70EB-43A1-A4D1-3E4BB50EFA54"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

- (BOOL)futureMigrationsEnabled
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = self;
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  v7[0] = &unk_1F05F5FD8;
  v7[1] = &v6;
  v8 = v7;
  os_unfair_lock_lock(&self->_futureMigrationsEnabled._loadLock);
  if (self->_futureMigrationsEnabled._hasLoaded)
  {
    value = self->_futureMigrationsEnabled._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_futureMigrationsEnabled._value = value;
    self->_futureMigrationsEnabled._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_futureMigrationsEnabled._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  os_unfair_lock_unlock(&v6->_overrideBehaviorLock);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (NSString)currentDeviceProductType
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F05F5F48;
  v8[1] = &__block_literal_global_229;
  v9 = v8;
  os_unfair_lock_lock(&self->_currentDeviceProductType._loadLock);
  if (!self->_currentDeviceProductType._hasLoaded)
  {
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v3 = (*(*v9 + 48))(v9);
    value = self->_currentDeviceProductType._value;
    self->_currentDeviceProductType._value = v3;

    self->_currentDeviceProductType._hasLoaded = 1;
  }

  v5 = self->_currentDeviceProductType._value;
  os_unfair_lock_unlock(&self->_currentDeviceProductType._loadLock);
  std::__function::__value_func<NSString * ()(void)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)currentDeviceProductType
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceProductType];

  return v3;
}

+ (id)currentDeviceDisplayName
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceDisplayName];

  return v3;
}

- (NSString)currentDeviceDisplayName
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenCurrentDeviceDisplayName = self->_overriddenCurrentDeviceDisplayName;
  if (overriddenCurrentDeviceDisplayName)
  {
    v4 = overriddenCurrentDeviceDisplayName;
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    v5 = v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    v5 = MGCopyAnswer();
  }

  v6 = v5;

  return v6;
}

+ (void)setSharedBehavior:(id)a3
{
  v3 = a3;
  os_unfair_lock_lock(&_sharedBehaviorLock);
  v4 = _sharedBehaviorOverride;
  _sharedBehaviorOverride = v3;

  os_unfair_lock_unlock(&_sharedBehaviorLock);
}

+ (void)resetSharedBehavior
{
  os_unfair_lock_lock(&_sharedBehaviorLock);
  v2 = _sharedBehaviorOverride;
  _sharedBehaviorOverride = 0;

  os_unfair_lock_unlock(&_sharedBehaviorLock);
}

+ (int)nanoSyncProtocolVersionForWatchSystemBuildVersion:(id)a3
{
  v3 = a3;
  if ([v3 hk_compareBuildVersionWithString:@"15R1"] == -1)
  {
    v4 = 5;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16R1"] == -1)
  {
    v4 = 6;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16R565"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"16R5000", @"16R5565") & 1) != 0)
  {
    v4 = 8;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16S36"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"16S5000", @"16S5036") & 1) != 0)
  {
    v4 = 9;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"17R540"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"17R5000", @"17R5540") & 1) != 0)
  {
    v4 = 10;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"18R325"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"18R5000", @"18R5325") & 1) != 0)
  {
    v4 = 11;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"19R321"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"19R5000", @"19R5321") & 1) != 0)
  {
    v4 = 12;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"20R263"] == -1)
  {
    v4 = 13;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"21R305"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"21R5000", @"21R5304") & 1) != 0)
  {
    v4 = 14;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"22R278"] == -1)
  {
    v4 = 15;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"23R278"] == -1)
  {
    v4 = 16;
  }

  else
  {
    v4 = 17;
  }

  return v4;
}

+ (int)nanoSyncProtocolVersionForCompanionSystemBuildVersion:(id)a3
{
  v3 = a3;
  if ([v3 hk_compareBuildVersionWithString:@"15A1"] == -1)
  {
    v4 = 5;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16A1"] == -1)
  {
    v4 = 6;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16B65"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"16B5000", @"16B5065") & 1) != 0)
  {
    v4 = 8;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"16C37"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"16C5000", @"16C5037") & 1) != 0)
  {
    v4 = 9;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"17A540"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"17A5000", @"17A5540") & 1) != 0)
  {
    v4 = 10;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"18A315"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"18A5000", @"18A5315") & 1) != 0)
  {
    v4 = 11;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"19A316"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"19A5000", @"19A5316") & 1) != 0)
  {
    v4 = 12;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"20A260"] == -1)
  {
    v4 = 13;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"21A277"] == -1 || (objc_msgSend(v3, "hk_isBetweenLowerBuildVersion:upperBuildVersion:", @"21A5000", @"21A5276") & 1) != 0)
  {
    v4 = 14;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"22A276"] == -1)
  {
    v4 = 15;
  }

  else if ([v3 hk_compareBuildVersionWithString:@"23A258"] == -1)
  {
    v4 = 16;
  }

  else
  {
    v4 = 17;
  }

  return v4;
}

+ (BOOL)hasPairedWatch
{
  v2 = [objc_opt_class() _getActivePairedDevice];
  v3 = v2 != 0;

  return v3;
}

+ (id)_getActivePairedDevice
{
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v3 = [v2 getActivePairedDevice];

  return v3;
}

+ (BOOL)anyPairedWatchHasFlightsClimbedCapability
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 getSetupCompletedDevices];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"D1DBCF21-D875-4EA8-B63E-8182578C0B0C"];
        LOBYTE(v7) = [v7 supportsCapability:v8];

        if (v7)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)activePairedWatchSupportsHeartRateMotionContexts
{
  v2 = [objc_opt_class() _getActivePairedDevice];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

+ (BOOL)allPairedWatchesSupportHeartRateMotionContexts
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 getSetupCompletedDevices];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = *v13;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"E17D2903-B868-4E6C-8E76-6D4939BEED44"];
        LOBYTE(v7) = [v7 supportsCapability:v8];

        if ((v7 & 1) == 0)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)activePairedWatchSupportsBradycardiaDetection
{
  v2 = [a1 activePairedWatchSupportsHeartRateMotionContexts];
  v3 = [objc_opt_class() _getActivePairedDevice];
  getNRWatchOSVersionForRemoteDevice(v3);
  v5 = v4;

  getNRVersionIsGreaterThanOrEqual(v5);
  return v2 & v6;
}

+ (BOOL)allPairedWatchesSupportBradycardiaDetection
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a1 allPairedWatchesSupportHeartRateMotionContexts])
  {
    v2 = [getNRPairedDeviceRegistryClass() sharedInstance];
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = [v2 getSetupCompletedDevices];
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = *v13;
      while (2)
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v13 != v5)
          {
            objc_enumerationMutation(v3);
          }

          getNRWatchOSVersionForRemoteDevice(*(*(&v12 + 1) + 8 * i));
          getNRVersionIsGreaterThanOrEqual(v7);
          if (!v8)
          {
            v9 = 0;
            goto LABEL_13;
          }
        }

        v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    v9 = 1;
LABEL_13:
  }

  else
  {
    v9 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

- (_HKBehavior)init
{
  v5.receiver = self;
  v5.super_class = _HKBehavior;
  v2 = [(_HKBehavior *)&v5 init];
  v3 = v2;
  if (v2)
  {
    v2->_overrideBehaviorLock._os_unfair_lock_opaque = 0;
    v2->_isDeviceSupported = [objc_opt_class() _isDeviceSupported];
    [(_HKBehavior *)v3 _initializeDeviceType];
    [(_HKBehavior *)v3 _setSharedBehaviors];
    [(_HKBehavior *)v3 _setDeviceSpecificBehaviors];
  }

  return v3;
}

- (_HKFeatureFlags)features
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F05F5CB8;
  v8[1] = &__block_literal_global_132;
  v9 = v8;
  os_unfair_lock_lock(&self->_featureFlags._loadLock);
  if (!self->_featureFlags._hasLoaded)
  {
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v3 = (*(*v9 + 48))(v9);
    value = self->_featureFlags._value;
    self->_featureFlags._value = v3;

    self->_featureFlags._hasLoaded = 1;
  }

  v5 = self->_featureFlags._value;
  os_unfair_lock_unlock(&self->_featureFlags._loadLock);
  std::__function::__value_func<_HKFeatureFlags * ()(void)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (BOOL)hasTelephonyCapability
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 hasTelephonyCapability];

  return v3;
}

+ (BOOL)isDeviceSupported
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 isDeviceSupported];

  return v3;
}

+ (BOOL)isRunningStoreDemoMode
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 isRunningStoreDemoMode];

  return v3;
}

+ (BOOL)isiPod
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceName];
  v4 = [v3 isEqualToString:@"iPod touch"];

  return v4;
}

+ (BOOL)_isiPad
{
  v2 = MGCopyAnswer();
  v3 = [v2 isEqualToString:@"iPad"];

  return v3;
}

- (BOOL)isProdFused
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5D48;
  v7 = v6;
  os_unfair_lock_lock(&self->_isProdFused._loadLock);
  if (self->_isProdFused._hasLoaded)
  {
    value = self->_isProdFused._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_isProdFused._value = value;
    self->_isProdFused._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_isProdFused._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setIsProdFused:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isProdFused._loadLock);
  self->_isProdFused._hasLoaded = 1;
  self->_isProdFused._value = a3;

  os_unfair_lock_unlock(&self->_isProdFused._loadLock);
}

- (BOOL)isVirtualDevice
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5DC8;
  v7 = v6;
  os_unfair_lock_lock(&self->_isVirtualDevice._loadLock);
  if (self->_isVirtualDevice._hasLoaded)
  {
    value = self->_isVirtualDevice._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_isVirtualDevice._value = value;
    self->_isVirtualDevice._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_isVirtualDevice._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setIsVirtualDevice:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isVirtualDevice._loadLock);
  self->_isVirtualDevice._hasLoaded = 1;
  self->_isVirtualDevice._value = a3;

  os_unfair_lock_unlock(&self->_isVirtualDevice._loadLock);
}

+ (BOOL)runningInStoreDemoModeF201
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 runningInStoreDemoModeF201];

  return v3;
}

+ (BOOL)isTestingDevice
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 isTestingDevice];

  return v3;
}

+ (id)currentDeviceName
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceName];

  return v3;
}

+ (id)currentDeviceManufacturer
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceManufacturer];

  return v3;
}

+ (id)currentDeviceHWModelString
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceHWModelString];

  return v3;
}

+ (id)currentDeviceRegionCode
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceRegionCode];

  return v3;
}

+ (id)currentDeviceRegionInfo
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceRegionInfo];

  return v3;
}

+ (id)currentDeviceClass
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceClass];

  return v3;
}

+ (id)currentDeviceReleaseType
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceReleaseType];

  return v3;
}

+ (id)currentDeviceSupportsDynamicIsland
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentDeviceSupportsDynamicIsland];

  return v3;
}

+ (id)currentOSName
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentOSName];

  return v3;
}

+ (id)currentOSBuild
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentOSBuild];

  return v3;
}

+ (id)currentOSVersion
{
  v2 = [a1 sharedBehavior];
  v3 = [v2 currentOSVersion];

  return v3;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)currentOSVersionStruct
{
  v4 = [a2 sharedBehavior];
  v6 = v4;
  if (v4)
  {
    [v4 currentOSVersionStruct];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

+ (BOOL)_healthAppHidden
{
  v2 = +[_HKBehavior sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    v4 = [MEMORY[0x1E69ADFB8] sharedConnection];
    v5 = [v4 restrictedAppBundleIDs];
    v6 = [v5 containsObject:@"com.apple.Health"];
    v7 = [v4 parentalControlsBlockedAppBundleIDs];
    v8 = [v7 containsObject:@"com.apple.Health"];
    v9 = ([v4 effectiveBoolValueForSetting:*MEMORY[0x1E69ADE98]] == 2) | v6 | v8;
  }

  else
  {
    v10 = [MEMORY[0x1E69635E0] applicationProxyForIdentifier:@"com.apple.Health" placeholder:0];
    v4 = v10;
    if (!v10)
    {
      v9 = 0;
      goto LABEL_6;
    }

    v5 = [v10 appState];
    v9 = [v5 isRestricted];
  }

LABEL_6:
  return v9 & 1;
}

+ (BOOL)_healthAppNotInstalled
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [a1 sharedBehavior];
  v3 = [v2 isAppleWatch];

  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v13 = 0;
    v5 = [objc_alloc(MEMORY[0x1E69635F8]) initWithBundleIdentifier:@"com.apple.Health" allowPlaceholder:1 error:&v13];
    v6 = v13;
    v7 = v6;
    if (v6 && ([v6 hk_isErrorInDomain:*MEMORY[0x1E696A768] code:-10814] & 1) == 0)
    {
      _HKInitializeLogging();
      v8 = HKLogInfrastructure();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = objc_opt_class();
        v10 = [v7 localizedDescription];
        [(_HKBehavior *)v9 _healthAppNotInstalled:v10];
      }

      v4 = 0;
    }

    else
    {
      v4 = v5 == 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v4;
}

+ (unint64_t)_fitnessMode
{
  if ([objc_opt_class() _isiPad] & 1) != 0 || (objc_msgSend(objc_opt_class(), "isRunningStoreDemoMode"))
  {
    return 1;
  }

  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"FitnessMode", @"com.apple.nanolifestyle", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    return 1;
  }

  return result;
}

- (BOOL)tinkerModeEnabled
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenTinkerModeEnabled = self->_overriddenTinkerModeEnabled;
  if (overriddenTinkerModeEnabled)
  {
    v4 = [(NSNumber *)overriddenTinkerModeEnabled BOOLValue];
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    return v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    v6 = objc_opt_class();

    return [v6 _tinkerModeEnabled];
  }
}

- (BOOL)healthAppHidden
{
  if (self->_healthAppHidden)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _healthAppHidden];
}

- (BOOL)healthAppNotInstalled
{
  if (self->_healthAppNotInstalled)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _healthAppNotInstalled];
}

- (BOOL)healthAppHiddenOrNotInstalled
{
  if ([(_HKBehavior *)self healthAppHidden])
  {
    return 1;
  }

  return [(_HKBehavior *)self healthAppNotInstalled];
}

- (BOOL)healthAppSupportedOnDevice
{
  if (self->_healthAppSupportedOnDevice)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _healthAppSupportedOnDevice];
}

- (BOOL)isStandalonePhoneFitnessMode
{
  if (self->_isStandalonePhoneFitnessMode)
  {
    return 1;
  }

  v4 = objc_opt_class();

  return [v4 _isStandalonePhoneFitnessMode];
}

- (unint64_t)fitnessMode
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenFitnessMode = self->_overriddenFitnessMode;
  if (overriddenFitnessMode)
  {
    v4 = [(NSNumber *)overriddenFitnessMode unsignedIntegerValue];
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    return v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    v6 = objc_opt_class();

    return [v6 _fitnessMode];
  }
}

- (void)setFitnessMode:(unint64_t)a3
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  overriddenFitnessMode = self->_overriddenFitnessMode;
  self->_overriddenFitnessMode = v5;

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (BOOL)supportsCachedStatisticsCollectionQueries
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenSupportsCachedStatisticsCollectionQueries = self->_overriddenSupportsCachedStatisticsCollectionQueries;
  if (overriddenSupportsCachedStatisticsCollectionQueries)
  {
    v4 = [(NSNumber *)overriddenSupportsCachedStatisticsCollectionQueries BOOLValue];
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    return v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);

    return _os_feature_enabled_impl();
  }
}

- (BOOL)supportsCachedSleepDaySummaryQueries
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenSupportsCachedSleepDaySummaryQueries = self->_overriddenSupportsCachedSleepDaySummaryQueries;
  if (overriddenSupportsCachedSleepDaySummaryQueries)
  {
    v4 = [(NSNumber *)overriddenSupportsCachedSleepDaySummaryQueries BOOLValue];
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    return v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);

    return _os_feature_enabled_impl();
  }
}

- (BOOL)supportsActiveQueryDaemonTransactions
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenSupportsActiveQueryDaemonTransactions = self->_overriddenSupportsActiveQueryDaemonTransactions;
  if (overriddenSupportsActiveQueryDaemonTransactions)
  {
    v4 = [(NSNumber *)overriddenSupportsActiveQueryDaemonTransactions BOOLValue];
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);
    return v4;
  }

  else
  {
    os_unfair_lock_unlock(&self->_overrideBehaviorLock);

    return _os_feature_enabled_impl();
  }
}

- (BOOL)supportsSecondaryProfiles
{
  if ([(_HKBehavior *)self isAppleWatch])
  {
    return 0;
  }

  else
  {
    return ![(_HKBehavior *)self isRealityDevice];
  }
}

- (BOOL)isRunningStoreDemoMode
{
  keyExistsAndHasValidFormat = 0;
  if (CFPreferencesGetAppBooleanValue(@"StoreDemoMode", @"com.apple.demo-settings", &keyExistsAndHasValidFormat))
  {
    v0 = keyExistsAndHasValidFormat == 0;
  }

  else
  {
    v0 = 1;
  }

  return !v0;
}

- (void)setIsRunningStoreDemoMode:(BOOL)a3
{
  os_unfair_lock_lock(&self->_isRunningStoreDemoMode._loadLock);
  self->_isRunningStoreDemoMode._hasLoaded = 1;
  self->_isRunningStoreDemoMode._value = a3;

  os_unfair_lock_unlock(&self->_isRunningStoreDemoMode._loadLock);
}

- (BOOL)runningInStoreDemoModeF201
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5EC8;
  v7 = v6;
  os_unfair_lock_lock(&self->_runningInStoreDemoModeF201._loadLock);
  if (self->_runningInStoreDemoModeF201._hasLoaded)
  {
    value = self->_runningInStoreDemoModeF201._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_runningInStoreDemoModeF201._value = value;
    self->_runningInStoreDemoModeF201._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_runningInStoreDemoModeF201._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setRunningInStoreDemoModeF201:(BOOL)a3
{
  os_unfair_lock_lock(&self->_runningInStoreDemoModeF201._loadLock);
  self->_runningInStoreDemoModeF201._hasLoaded = 1;
  self->_runningInStoreDemoModeF201._value = a3;

  os_unfair_lock_unlock(&self->_runningInStoreDemoModeF201._loadLock);
}

- (BOOL)shouldReceiveECGSamples
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38___HKBehavior_shouldReceiveECGSamples__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_shouldReceiveECGSamples._loadLock);
  if (self->_shouldReceiveECGSamples._hasLoaded)
  {
    value = self->_shouldReceiveECGSamples._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_shouldReceiveECGSamples._value = value;
    self->_shouldReceiveECGSamples._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_shouldReceiveECGSamples._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setShouldReceiveECGSamples:(BOOL)a3
{
  os_unfair_lock_lock(&self->_shouldReceiveECGSamples._loadLock);
  self->_shouldReceiveECGSamples._hasLoaded = 1;
  self->_shouldReceiveECGSamples._value = a3;

  os_unfair_lock_unlock(&self->_shouldReceiveECGSamples._loadLock);
}

- (void)setIsAppleWatch:(BOOL)a3
{
  if (a3)
  {
    v4 = 2;
  }

  else
  {
    NSLog(&cfstr_ErrorPleaseDoN.isa, a2);
    v4 = 0;
  }

  [(_HKBehavior *)self setDeviceType:v4];
}

- (void)setIsRealityDevice:(BOOL)a3
{
  if (a3)
  {
    v4 = 3;
  }

  else
  {
    NSLog(&cfstr_ErrorPleaseDoN_0.isa, a2);
    v4 = 0;
  }

  [(_HKBehavior *)self setDeviceType:v4];
}

- (void)setIsiPad:(BOOL)a3
{
  if (a3)
  {
    v4 = 1;
  }

  else
  {
    NSLog(&cfstr_ErrorPleaseDoN_1.isa, a2);
    v4 = 2;
  }

  [(_HKBehavior *)self setDeviceType:v4];
}

- (void)_setSharedBehaviors
{
  self->_isRunningSeedBuild = 0;
  self->_isAppleInternalInstall = [objc_opt_class() _isAppleInternalInstall];
  self->_isCompanionCapable = MGGetBoolAnswer();
  self->_hasTelephonyCapability = [objc_opt_class() _hasTelephonyCapability];
  v3 = [objc_opt_class() _currentDeviceName];
  currentDeviceName = self->_currentDeviceName;
  self->_currentDeviceName = v3;

  v5 = [objc_opt_class() _currentOSBuild];
  currentOSBuild = self->_currentOSBuild;
  self->_currentOSBuild = v5;

  v7 = [objc_opt_class() _currentOSVersion];
  currentOSVersion = self->_currentOSVersion;
  self->_currentOSVersion = v7;

  v9 = objc_opt_class();
  if (v9)
  {
    [v9 _currentOSVersionStruct];
  }

  else
  {
    v11 = 0uLL;
    v12 = 0;
  }

  self->_currentOSVersionStruct.patchVersion = v12;
  *&self->_currentOSVersionStruct.majorVersion = v11;
  self->_supportsAppSubscriptions = 1;
  self->_supportsBluetoothDiscovery = 1;
  self->_collectsData = 1;
  *&self->_ontologyIndexingRequiresAccounts = 257;
  self->_schedulesXPCAlarms = 1;
  self->_invalidatesNotificationInstructionsOnLaunch = 1;
  featureRequirementOverrides = self->_featureRequirementOverrides;
  self->_featureRequirementOverrides = 0;

  self->_shouldRegisterPeriodicActivities = 1;
  self->_routeSmoothingEnabled = 1;
  self->_shouldOverrideSiriUOD = 0;
}

- (void)_setDeviceSpecificBehaviors
{
  v3 = [(_HKBehavior *)self isAppleWatch]|| self->_isCompanionCapable;
  self->_supportsActivitySharing = v3;
  self->_supportsAWDMetricSubmission = ![(_HKBehavior *)self isAppleWatch];
  v4 = [(_HKBehavior *)self isAppleWatch]|| self->_isCompanionCapable;
  self->_supportsNanoSync = v4;
  v5 = [(_HKBehavior *)self isAppleWatch];
  self->_supportsSampleExpiration = v5;
  self->_supportsComputedUserCharacteristicCaching = !v5;
  self->_supportsHeartRateDataCollection = [(_HKBehavior *)self isAppleWatch];
  self->_collectsCalorimetry = [(_HKBehavior *)self isAppleWatch];
  self->_performsAutomaticConceptIndexing = ![(_HKBehavior *)self isAppleWatch];
  self->_performsWorkoutCondensation = [(_HKBehavior *)self isIPhone];
  v6 = [(_HKBehavior *)self isAppleWatch]|| [(_HKBehavior *)self isIPhone]|| [(_HKBehavior *)self isiPad];
  self->_supportsWorkouts = v6;
  if ([(_HKBehavior *)self isAppleWatch])
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v7 = ![(_HKBehavior *)self isRealityDevice];
  }

  self->_supportsSharedSummarySync = v7;
  self->_supportsMedicalIDSync = ![(_HKBehavior *)self isRealityDevice];
  self->_canPerformOwnershipTakeover = ![(_HKBehavior *)self isAppleWatch];
  v8 = [(_HKBehavior *)self isAppleWatch];
  self->_supportsOntology = !v8;
  self->_supportsOntologyDatabaseUpdates = !v8;
  self->_supportsOntologyFeatureEvaluation = !v8;
  self->_supportsPeriodicCountryMonitoring = ![(_HKBehavior *)self isAppleWatch];
  self->_ontologyIndexingEnabled = self->_supportsOntology;
  self->_supportsCoreOSDatabaseAssertion = ![(_HKBehavior *)self isAppleWatch];
}

- (void)setCurrentDeviceDisplayName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  v4 = [v6 copy];
  overriddenCurrentDeviceDisplayName = self->_overriddenCurrentDeviceDisplayName;
  self->_overriddenCurrentDeviceDisplayName = v4;

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (NSString)currentDeviceRegionCode
{
  unitTest_deviceRegionCode = self->_unitTest_deviceRegionCode;
  if (unitTest_deviceRegionCode)
  {
    v3 = unitTest_deviceRegionCode;
  }

  else
  {
    v3 = MGCopyAnswer();
  }

  return v3;
}

- (NSString)currentDeviceRegionInfo
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)currentDeviceHWModelString
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)currentInternalDeviceModel
{
  if ([(_HKBehavior *)self isAppleInternalInstall])
  {
    v3 = [(_HKBehavior *)self currentDeviceHWModelString];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)currentDeviceReleaseType
{
  v2 = MGCopyAnswer();

  return v2;
}

- (id)currentDeviceSupportsDynamicIsland
{
  v2 = MGCopyAnswer();

  return v2;
}

- (BOOL)_hasProductTypePrefix:(id)a3
{
  v4 = a3;
  v5 = [(_HKBehavior *)self currentDeviceProductType];
  v6 = [v5 hasPrefix:v4];

  return v6;
}

- (NSString)currentDeviceClass
{
  currentDeviceClass = self->_currentDeviceClass;
  if (currentDeviceClass)
  {
    v3 = currentDeviceClass;
  }

  else
  {
    v3 = MGCopyAnswer();
  }

  return v3;
}

+ (id)_currentOSBuild
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)currentOSName
{
  v2 = MGCopyAnswer();

  return v2;
}

+ (id)_currentDeviceName
{
  v2 = MGCopyAnswer();

  return v2;
}

- (NSString)currentDeviceSerialNumber
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = &unk_1F05F5F48;
  v8[1] = &__block_literal_global_234;
  v9 = v8;
  os_unfair_lock_lock(&self->_currentDeviceSerialNumber._loadLock);
  if (!self->_currentDeviceSerialNumber._hasLoaded)
  {
    if (!v9)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    v3 = (*(*v9 + 48))(v9);
    value = self->_currentDeviceSerialNumber._value;
    self->_currentDeviceSerialNumber._value = v3;

    self->_currentDeviceSerialNumber._hasLoaded = 1;
  }

  v5 = self->_currentDeviceSerialNumber._value;
  os_unfair_lock_unlock(&self->_currentDeviceSerialNumber._loadLock);
  std::__function::__value_func<NSString * ()(void)>::~__value_func[abi:ne200100](v8);
  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_currentOSVersion
{
  v2 = MGCopyAnswer();

  return v2;
}

+ ($9FE6E10C8CE45DBC9A88DFDEA39A390D)_currentOSVersionStruct
{
  v4 = [MEMORY[0x1E696AE30] processInfo];
  v6 = v4;
  if (v4)
  {
    [v4 operatingSystemVersion];
  }

  else
  {
    retstr->var0 = 0;
    retstr->var1 = 0;
    retstr->var2 = 0;
  }

  return result;
}

- (NSDictionary)currentDiskUsage
{
  v2 = MGCopyAnswer();

  return v2;
}

- (unint64_t)totalDiskCapacity
{
  v2 = [(_HKBehavior *)self currentDiskUsage];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69E5128]];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (unint64_t)currentDiskSpaceAvailable
{
  v2 = [(_HKBehavior *)self currentDiskUsage];
  v3 = [v2 objectForKeyedSubscript:*MEMORY[0x1E69E5108]];
  v4 = [v3 unsignedLongLongValue];

  return v4;
}

- (BOOL)supportsSwimmingWorkoutSessions
{
  v3 = HKCoreMotionSupportsSwimmingWorkoutSessions();
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  overriddenSupportsSwimmingWorkoutSessions = self->_overriddenSupportsSwimmingWorkoutSessions;
  if (overriddenSupportsSwimmingWorkoutSessions)
  {
    v3 = [(NSNumber *)overriddenSupportsSwimmingWorkoutSessions BOOLValue];
  }

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
  return v3;
}

- (void)setFutureMigrationsEnabled:(BOOL)a3
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  os_unfair_lock_lock(&self->_futureMigrationsEnabled._loadLock);
  self->_futureMigrationsEnabled._hasLoaded = 1;
  self->_futureMigrationsEnabled._value = a3;
  os_unfair_lock_unlock(&self->_futureMigrationsEnabled._loadLock);

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (BOOL)supportsOntologyDatabaseFutureMigrations
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = self;
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  v7[0] = &unk_1F05F6058;
  v7[1] = &v6;
  v8 = v7;
  os_unfair_lock_lock(&self->_ontologyDatabaseFutureMigrationsEnabled._loadLock);
  if (self->_ontologyDatabaseFutureMigrationsEnabled._hasLoaded)
  {
    value = self->_ontologyDatabaseFutureMigrationsEnabled._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_ontologyDatabaseFutureMigrationsEnabled._value = value;
    self->_ontologyDatabaseFutureMigrationsEnabled._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_ontologyDatabaseFutureMigrationsEnabled._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  os_unfair_lock_unlock(&v6->_overrideBehaviorLock);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsOntologyDatabaseFutureMigrations:(BOOL)a3
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  os_unfair_lock_lock(&self->_ontologyDatabaseFutureMigrationsEnabled._loadLock);
  self->_ontologyDatabaseFutureMigrationsEnabled._hasLoaded = 1;
  self->_ontologyDatabaseFutureMigrationsEnabled._value = a3;
  os_unfair_lock_unlock(&self->_ontologyDatabaseFutureMigrationsEnabled._loadLock);

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (BOOL)performsAutomaticUserDomainConceptProcessing
{
  v9 = *MEMORY[0x1E69E9840];
  v6 = self;
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  v7[0] = &unk_1F05F60D8;
  v7[1] = &v6;
  v8 = v7;
  os_unfair_lock_lock(&self->_performsAutomaticUserDomainConceptProcessing._loadLock);
  if (self->_performsAutomaticUserDomainConceptProcessing._hasLoaded)
  {
    value = self->_performsAutomaticUserDomainConceptProcessing._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_performsAutomaticUserDomainConceptProcessing._value = value;
    self->_performsAutomaticUserDomainConceptProcessing._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_performsAutomaticUserDomainConceptProcessing._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  os_unfair_lock_unlock(&v6->_overrideBehaviorLock);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setPerformsAutomaticUserDomainConceptProcessing:(BOOL)a3
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  os_unfair_lock_lock(&self->_performsAutomaticUserDomainConceptProcessing._loadLock);
  self->_performsAutomaticUserDomainConceptProcessing._hasLoaded = 1;
  self->_performsAutomaticUserDomainConceptProcessing._value = a3;
  os_unfair_lock_unlock(&self->_performsAutomaticUserDomainConceptProcessing._loadLock);

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (void)setSupportsCloudSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_overrideBehaviorLock);
  os_unfair_lock_lock(&self->_supportsCloudSync._loadLock);
  self->_supportsCloudSync._hasLoaded = 1;
  self->_supportsCloudSync._value = a3;
  os_unfair_lock_unlock(&self->_supportsCloudSync._loadLock);

  os_unfair_lock_unlock(&self->_overrideBehaviorLock);
}

- (BOOL)supportsCloudSync
{
  v8 = *MEMORY[0x1E69E9840];
  v6[0] = &unk_1F05F5708;
  v6[1] = &__block_literal_global_247_0;
  v7 = v6;
  os_unfair_lock_lock(&self->_supportsCloudSync._loadLock);
  if (self->_supportsCloudSync._hasLoaded)
  {
    value = self->_supportsCloudSync._value;
  }

  else
  {
    if (!v7)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v7 + 48))(v7);
    self->_supportsCloudSync._value = value;
    self->_supportsCloudSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsCloudSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v6);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)resetSupportsCloudSync
{
  os_unfair_lock_lock(&self->_supportsCloudSync._loadLock);
  self->_supportsCloudSync._hasLoaded = 0;

  os_unfair_lock_unlock(&self->_supportsCloudSync._loadLock);
}

- (BOOL)supportsCloudSyncSharding
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40___HKBehavior_supportsCloudSyncSharding__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_supportsCloudSyncSharding._loadLock);
  if (self->_supportsCloudSyncSharding._hasLoaded)
  {
    value = self->_supportsCloudSyncSharding._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_supportsCloudSyncSharding._value = value;
    self->_supportsCloudSyncSharding._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsCloudSyncSharding._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsCloudSyncSharding:(BOOL)a3
{
  os_unfair_lock_lock(&self->_supportsCloudSyncSharding._loadLock);
  self->_supportsCloudSyncSharding._hasLoaded = 1;
  self->_supportsCloudSyncSharding._value = a3;

  os_unfair_lock_unlock(&self->_supportsCloudSyncSharding._loadLock);
}

- (BOOL)supportsCloudSyncStagingShard
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___HKBehavior_supportsCloudSyncStagingShard__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_supportsCloudSyncStagingShard._loadLock);
  if (self->_supportsCloudSyncStagingShard._hasLoaded)
  {
    value = self->_supportsCloudSyncStagingShard._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_supportsCloudSyncStagingShard._value = value;
    self->_supportsCloudSyncStagingShard._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsCloudSyncStagingShard._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsCloudSyncStagingShard:(BOOL)a3
{
  os_unfair_lock_lock(&self->_supportsCloudSyncStagingShard._loadLock);
  self->_supportsCloudSyncStagingShard._hasLoaded = 1;
  self->_supportsCloudSyncStagingShard._value = a3;

  os_unfair_lock_unlock(&self->_supportsCloudSyncStagingShard._loadLock);
}

- (BOOL)supportsPeriodicFullCloudSync
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___HKBehavior_supportsPeriodicFullCloudSync__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_supportsPeriodicFullCloudSync._loadLock);
  if (self->_supportsPeriodicFullCloudSync._hasLoaded)
  {
    value = self->_supportsPeriodicFullCloudSync._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_supportsPeriodicFullCloudSync._value = value;
    self->_supportsPeriodicFullCloudSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsPeriodicFullCloudSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsPeriodicFullCloudSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_supportsPeriodicFullCloudSync._loadLock);
  self->_supportsPeriodicFullCloudSync._hasLoaded = 1;
  self->_supportsPeriodicFullCloudSync._value = a3;

  os_unfair_lock_unlock(&self->_supportsPeriodicFullCloudSync._loadLock);
}

- (BOOL)supportsPeriodicLiteCloudSync
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44___HKBehavior_supportsPeriodicLiteCloudSync__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_supportsPeriodicLiteCloudSync._loadLock);
  if (self->_supportsPeriodicLiteCloudSync._hasLoaded)
  {
    value = self->_supportsPeriodicLiteCloudSync._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_supportsPeriodicLiteCloudSync._value = value;
    self->_supportsPeriodicLiteCloudSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsPeriodicLiteCloudSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsPeriodicLiteCloudSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_supportsPeriodicLiteCloudSync._loadLock);
  self->_supportsPeriodicLiteCloudSync._hasLoaded = 1;
  self->_supportsPeriodicLiteCloudSync._value = a3;

  os_unfair_lock_unlock(&self->_supportsPeriodicLiteCloudSync._loadLock);
}

- (BOOL)supportsCoordinatedCloudSync
{
  v9 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43___HKBehavior_supportsCoordinatedCloudSync__block_invoke;
  v6[3] = &unk_1E7384E68;
  v8 = 0;
  v6[4] = self;
  v7[0] = &unk_1F05F5708;
  v7[1] = _Block_copy(v6);
  v8 = v7;
  os_unfair_lock_lock(&self->_supportsCoordinatedCloudSync._loadLock);
  if (self->_supportsCoordinatedCloudSync._hasLoaded)
  {
    value = self->_supportsCoordinatedCloudSync._value;
  }

  else
  {
    if (!v8)
    {
      std::__throw_bad_function_call[abi:ne200100]();
    }

    value = (*(*v8 + 48))(v8);
    self->_supportsCoordinatedCloudSync._value = value;
    self->_supportsCoordinatedCloudSync._hasLoaded = 1;
  }

  os_unfair_lock_unlock(&self->_supportsCoordinatedCloudSync._loadLock);
  std::__function::__value_func<BOOL ()(void)>::~__value_func[abi:ne200100](v7);
  v4 = *MEMORY[0x1E69E9840];
  return value & 1;
}

- (void)setSupportsCoordinatedCloudSync:(BOOL)a3
{
  os_unfair_lock_lock(&self->_supportsCoordinatedCloudSync._loadLock);
  self->_supportsCoordinatedCloudSync._hasLoaded = 1;
  self->_supportsCoordinatedCloudSync._value = a3;

  os_unfair_lock_unlock(&self->_supportsCoordinatedCloudSync._loadLock);
}

- (BOOL)enableBloodPressureValidations
{
  v2 = [(_HKBehavior *)self features];
  v3 = [v2 bloodPressureValidationsEnabled];

  return v3;
}

- (BOOL)processHasLoadedUIKit
{
  v2 = objc_opt_class();

  return [v2 processHasLoadedUIKit];
}

+ (BOOL)_isDeviceSupported
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  if ([a1 _isAppleInternalInstall] && (objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "BOOLForKey:", @"HealthKitOverrideDeviceSupported"), v4, v5))
  {
    v6 = v10;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v3 = 1;
    v7 = __33___HKBehavior__isDeviceSupported__block_invoke;
  }

  else
  {
    v3 = 0;
    v6 = v9;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v7 = __33___HKBehavior__isDeviceSupported__block_invoke_255;
  }

  v6[2] = v7;
  v6[3] = &__block_descriptor_40_e5_v8__0l;
  v6[4] = a1;
  HKDispatchAsyncOnGlobalConcurrentQueue(0x15u, v6);
  return v3;
}

+ (BOOL)_isAppleInternalInstall
{
  has_internal_diagnostics = os_variant_has_internal_diagnostics();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38___HKBehavior__isAppleInternalInstall__block_invoke;
  v4[3] = &__block_descriptor_33_e5_v8__0l;
  v5 = has_internal_diagnostics;
  HKDispatchAsyncOnGlobalConcurrentQueue(0x15u, v4);
  return has_internal_diagnostics;
}

+ (BOOL)_isForceBuddyEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  if ([v2 BOOLForKey:@"ForceBuddy"])
  {
    v3 = 1;
  }

  else
  {
    v4 = [MEMORY[0x1E696AE30] processInfo];
    v5 = [v4 environment];
    v6 = [v5 objectForKeyedSubscript:@"WD_FORCE_BUDDY"];
    v3 = [v6 isEqualToString:@"YES"];
  }

  return v3;
}

+ (BOOL)_hasCompletedBuddyWithVersion:(int64_t)a3
{
  v5 = [a1 sharedBehavior];
  v6 = [v5 isiPad];

  v7 = &kHKHAKeyCompletedBuddyOniPadVersion;
  if (!v6)
  {
    v7 = &kHKHAKeyCompletedBuddyVersion;
  }

  v8 = *v7;

  return [a1 _hasCompletedBuddyWithKey:v8 version:a3];
}

+ (void)_setHasCompletedBuddyWithVersion:(int64_t)a3
{
  [a1 _setHasCompletedBuddyWithKey:@"CompletedBuddyVersion" version:a3];
  v5 = [a1 sharedBehavior];
  v6 = [v5 isiPad];

  if (v6)
  {

    [a1 _setHasCompletedBuddyWithKey:@"CompletedBuddyOniPadVersion" version:a3];
  }
}

+ (BOOL)_hasCompletedBuddyWithKey:(id)a3 version:(int64_t)a4
{
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
  v7 = [v6 objectForKey:v5];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v10 integerForKey:v5];

    [v6 setInteger:v9 forKey:v5];
  }

  return v9 >= a4;
}

+ (void)_setHasCompletedBuddyWithKey:(id)a3 version:(int64_t)a4
{
  v7 = a3;
  v5 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.health.shared"];
  [v5 setInteger:a4 forKey:v7];
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v6 setInteger:a4 forKey:v7];
}

+ (BOOL)_shouldShowBuddy
{
  if ([a1 _isAppleInternalInstall] && (objc_msgSend(a1, "_isForceBuddyEnabled") & 1) != 0)
  {
    return 1;
  }

  else
  {
    return [a1 hasCompletedBuddyWithVersion:2] ^ 1;
  }
}

+ (BOOL)_isBuddyDisabled
{
  if ([objc_opt_class() isRunningStoreDemoMode])
  {
    return 1;
  }

  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [v3 BOOLForKey:@"DisableBuddy"];

  return v2;
}

+ (BOOL)_isDataCollectionForwarderDisabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.healthd"];
  v3 = [v2 BOOLForKey:@"DisableDataCollectionForwarder"];

  return v3;
}

+ (BOOL)_isCollectBLETypesFromLocalSourceEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.healthd"];
  v3 = [v2 BOOLForKey:@"CollectBLETypesFromLocalSource"];

  return v3;
}

+ (BOOL)_isForceHRCollectionDuringWorkoutEnabled
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.healthd"];
  v3 = [v2 BOOLForKey:@"HKWorkoutForceHRCollection"];

  return v3;
}

+ (BOOL)_futureMigrationsEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.healthd"];

  v4 = [v3 objectForKey:@"EnableFutureMigrations"];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (BOOL)_ontologyDatabaseFutureMigrationsEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 persistentDomainForName:@"com.apple.healthd"];

  v4 = [v3 objectForKey:@"EnableOntologyFutureMigrations"];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (BOOL)_condensesHeartRateSamples
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"HDWorkoutCondenser-heartRate"];

  return v3;
}

+ (BOOL)_isAutomaticProcessingEnabled
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DisableAutomaticUDCProcessing"];

  return v3 ^ 1;
}

- (void)setCurrentOSVersionStruct:(id *)a3
{
  v3 = *&a3->var0;
  self->_currentOSVersionStruct.patchVersion = a3->var2;
  *&self->_currentOSVersionStruct.majorVersion = v3;
}

- (id).cxx_construct
{
  *(self + 1) = 0;
  *(self + 5) = 0;
  *(self + 23) = 0;
  *(self + 25) = 0;
  *(self + 13) = 0;
  *(self + 29) = 0;
  *(self + 15) = 0;
  *(self + 33) = 0;
  *(self + 35) = 0;
  *(self + 37) = 0;
  *(self + 39) = 0;
  *(self + 41) = 0;
  *(self + 43) = 0;
  *(self + 45) = 0;
  *(self + 47) = 0;
  *(self + 49) = 0;
  *(self + 51) = 0;
  *(self + 53) = 0;
  *(self + 55) = 0;
  *(self + 57) = 0;
  return self;
}

- (uint64_t)isProdFused
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isVirtualDevice
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)isRunningStoreDemoMode
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)runningInStoreDemoModeF201
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)futureMigrationsEnabled
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)supportsOntologyDatabaseFutureMigrations
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (uint64_t)performsAutomaticUserDomainConceptProcessing
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

- (NSString)description
{
  v2 = self;
  _HKBehavior.description.getter();

  v3 = sub_191CC6778();

  return v3;
}

+ (void)_healthAppNotInstalled
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: Assuming installed due to error in getting Health app install state: %{public}@", buf, 0x16u);
}

@end