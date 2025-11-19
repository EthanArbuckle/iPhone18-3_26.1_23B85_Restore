@interface HKHeartRhythmAvailability
+ (BOOL)_isECG1SupportedOnCompanionDevice:(id)a3 geolocatedCountryCode:(id)a4;
+ (BOOL)_isECG2SupportedForCountryCode:(id)a3 andPhoneDevice:(id)a4;
+ (BOOL)_isECG2SupportedForCountryCode:(id)a3 andWatchDevice:(id)a4;
+ (BOOL)_isElectrocardiogramSupportedOnPhone:(id)a3;
+ (BOOL)_isElectrocardiogramSupportedOnPhone:(id)a3 geolocatedCountryCode:(id)a4;
+ (BOOL)electrocardiogramSupportedForDevice:(id)a3;
+ (BOOL)isCompanionRegionCheckEnabledForActiveWatch;
+ (BOOL)isCompanionRegionCheckEnabledForDevice:(id)a3;
+ (BOOL)isCompanionRegionCheckEnabledOnPairedPhone;
+ (BOOL)isECG1SupportedOnlyForCountryCode:(id)a3;
+ (BOOL)isElectrocardiogram2SupportedWithCountryCode:(id)a3;
+ (BOOL)isElectrocardiogramAppDeletableForActiveWatch;
+ (BOOL)isElectrocardiogramAppInstallableForLocale:(id)a3;
+ (BOOL)isElectrocardiogramSupportedOnActiveWatch;
+ (BOOL)isElectrocardiogramSupportedOnAllWatches;
+ (BOOL)isElectrocardiogramSupportedOnAnyWatch;
+ (BOOL)isElectrocardiogramSupportedOnPairedPhone;
+ (BOOL)isElectrocardiogramSupportedOnPairedPhoneWithGeolocatedCountryCode:(id)a3;
+ (BOOL)isElectrocardiogramSupportedOnWatch:(id)a3;
+ (BOOL)isHeartRateEnabledInPrivacy;
+ (BOOL)shouldInstallWatchApp;
+ (id)_ECG2SupportedCountriesOnDevice;
+ (id)_ECG2SupportedCountriesOnDevice:(id)a3;
+ (id)_availabilityPlistURL;
+ (id)_history:(id)a3 addCurrentOnboardingVersionCompletedIfApplicable:(int64_t)a4 countryCode:(id)a5;
+ (id)_onboardingCountryCodeKeyFromCompletedKey:(id)a3;
+ (id)_onboardingHistoryKeyFromCompletedKey:(id)a3;
+ (id)_onboardingHistoryWithVersionCompletedKey:(id)a3 keyValueDomain:(id)a4;
+ (id)activePairedDevice;
+ (id)electrocardiogramOnboardingHistoryMaxKnownWithKeyValueDomain:(id)a3;
+ (id)pairedDevices;
+ (int64_t)_electrocardiogramRescindedStatusWithDataSource:(id)a3;
+ (unint64_t)_electrocardiogramSupportedStateForDeviceRegion:(id)a3;
+ (unint64_t)electrocardiogramSupportedState;
+ (unint64_t)electrocardiogramSupportedStateForActiveWatch;
+ (unint64_t)electrocardiogramSupportedStateForWatch:(id)a3;
+ (void)installElectrocardiogramAppOnActiveWatch:(id)a3;
- (BOOL)_activePairedDevicesSupportECGAlgorithmVersionTwo:(id)a3;
- (BOOL)_isOnboardingCompletedForKey:(id)a3 version:(int64_t)a4 useCache:(BOOL)a5;
- (BOOL)_meetsMinimumAgeRequirementWithMinimumRequiredAge:(int64_t)a3 currentDate:(id)a4;
- (BOOL)_shouldAdvertiseECG2BackgroundDeliveryCompletedWithDevice:(id)a3;
- (BOOL)_shouldAdvertiseECG2DirectOnboardingWithWatchDevice:(id)a3;
- (BOOL)_shouldAdvertiseECG2UpgradeWithDevice:(id)a3;
- (BOOL)_shouldAdvertiseECGDirectOnboardingWithDevice:(id)a3;
- (BOOL)_shouldAdvertiseElectrocardiogramUpgradeForDevice:(id)a3;
- (BOOL)_shouldAdvertiseWithAdvertiseECGVersions:(id)a3;
- (BOOL)activePairedDevicesSupportElectrocardiogramAlgorithmVersion:(int64_t)a3;
- (BOOL)isAtrialFibrillationDetectionOnboardingCompleted;
- (BOOL)isAtrialFibrillationDetectionSettingEnabled;
- (BOOL)isElectrocardiogramAppInstallAllowedForWatch:(id)a3;
- (BOOL)isElectrocardiogramAvailableForOnboardingCountryCode:(id)a3;
- (BOOL)isElectrocardiogramAvailableOnWatch:(id)a3 countryCode:(id)a4;
- (BOOL)isElectrocardiogramOnboardingCompleted;
- (BOOL)isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion;
- (BOOL)isElectrocardiogramOnboardingCompletedNoCache;
- (BOOL)isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate:(id)a3;
- (BOOL)isHeartAgeGatingEnabledOnWatch:(id)a3 currentDate:(id)a4;
- (BOOL)shouldAdvertiseAtrialFibrillationDetectionForActiveWatch;
- (BOOL)shouldAdvertiseECG2BackgroundDeliveryCompletedForActiveWatch;
- (BOOL)shouldAdvertiseElectrocardiogramForActiveWatch;
- (BOOL)shouldAdvertiseElectrocardiogramForWatch:(id)a3;
- (HKHeartRhythmAvailability)initWithHealthStore:(id)a3;
- (HKHeartRhythmAvailability)initWithHealthStore:(id)a3 currentCountryCode:(id)a4;
- (HKRegulatoryDomainProvider)mobileCountryCodeManager;
- (id)_ecg2AvailabilityWithPhoneDevice:(id)a3 wasUpgradeBackgroundDelivered:(BOOL)a4;
- (id)_ecg2AvailabilityWithWatchDevice:(id)a3;
- (id)_electrocardiogramFirstOnboardingCompletedDate;
- (id)_electrocardiogramOnboardingHistory;
- (id)_electrocardiogramOnboardingHistoryKnown;
- (id)_makeOnboardingHistoryWithVersionCompleted:(int64_t)a3 versionCompletedKey:(id)a4 additionalValues:(id)a5 countryCodeKey:(id)a6;
- (id)electrocardiogramOnboardingCountryCode;
- (id)electrocardiogramOnboardingHistoryType:(int64_t)a3;
- (int64_t)_getOnboardingVersionForKey:(id)a3;
- (int64_t)atrialFibrillationDetectionRescindedStatus;
- (int64_t)electrocardiogramOnboardingCompletedVersionNoCache;
- (int64_t)electrocardiogramRecordingRescindedStatus;
- (unint64_t)electrocardiogramUpgradeBackgroundDeliveryVersionCompletedForActivePhone;
- (void)_electrocardiogramFirstOnboardingCompletedDate;
- (void)_featureAvailabilityConditionsDidUpdate;
- (void)_pairedOrActiveDevicesDidChange:(id)a3;
- (void)_registerForNotifications;
- (void)_removeFirstOnboardingCompletedDatesForKey:(id)a3 completion:(id)a4;
- (void)_resetElectrocardiogramRescindedStatusCacheWithLock:(BOOL)a3;
- (void)_setElectrocardiogramOnboardingCompletedForVersion:(int64_t)a3 inCountryCode:(id)a4;
- (void)_setFirstOnboardingCompletedDate:(id)a3 forKey:(id)a4 completion:(id)a5;
- (void)_setOnboardingVersionCompleted:(int64_t)a3 forKey:(id)a4 additionalValues:(id)a5 completion:(id)a6;
- (void)_triggerFeatureAvailabilityUpdateOnPhoneAndWatchWithDelay:(int64_t)a3;
- (void)_unregisterForNotifications;
- (void)_updateOnboardingCompletionForKey:(id)a3 andVersion:(int64_t)a4;
- (void)dealloc;
- (void)electrocardiogramAppInstallStateOnActiveWatch:(id)a3;
- (void)electrocardiogramOnboardingCountryCode;
- (void)setElectrocardiogramOnboardingCompleted;
- (void)unitTest_setElectrocardiogramOnboardingCompletedForVersion:(int64_t)a3 countryCode:(id)a4 completion:(id)a5;
- (void)updateElectrocardiogramWatchAppInstallIsAllowed;
- (void)updateOnboardingCompletionVersionCache;
@end

@implementation HKHeartRhythmAvailability

- (HKHeartRhythmAvailability)initWithHealthStore:(id)a3
{
  v5 = a3;
  v22.receiver = self;
  v22.super_class = HKHeartRhythmAvailability;
  v6 = [(HKHeartRhythmAvailability *)&v22 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, a3);
    v8 = objc_alloc_init(HKActiveWatchRemoteFeatureAvailabilityDataSource);
    electrocardiogramAvailabilityDataSource = v7->_electrocardiogramAvailabilityDataSource;
    v7->_electrocardiogramAvailabilityDataSource = v8;

    v10 = [HKObserverSet alloc];
    v11 = [(HKObserverSet *)v10 initWithName:@"heart-rhythm-availability-observers" loggingCategory:HKLogHeartRhythm];
    heartRhythmAvailabilityObservers = v7->_heartRhythmAvailabilityObservers;
    v7->_heartRhythmAvailabilityObservers = v11;

    v13 = [HKKeyValueDomain heartRhythmDefaultsDomainWithHealthStore:v5];
    keyValueDomain = v7->_keyValueDomain;
    v7->_keyValueDomain = v13;

    v15 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
    heartRhythmUserDefaults = v7->_heartRhythmUserDefaults;
    v7->_heartRhythmUserDefaults = v15;

    v17 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    onboardingKeysReadSet = v7->_onboardingKeysReadSet;
    v7->_onboardingKeysReadSet = v17;

    *&v7->_cacheLock._os_unfair_lock_opaque = 0;
    v19 = [[HKWatchAppAvailability alloc] initWithBundleID:@"com.apple.NanoHeartRhythm"];
    ecgAppAvailability = v7->_ecgAppAvailability;
    v7->_ecgAppAvailability = v19;

    [(HKHeartRhythmAvailability *)v7 _registerForNotifications];
  }

  return v7;
}

- (HKHeartRhythmAvailability)initWithHealthStore:(id)a3 currentCountryCode:(id)a4
{
  v7 = a4;
  v8 = [(HKHeartRhythmAvailability *)self initWithHealthStore:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_currentCountryCode, a4);
  }

  return v9;
}

- (void)dealloc
{
  [(HKHeartRhythmAvailability *)self _unregisterForNotifications];
  v3.receiver = self;
  v3.super_class = HKHeartRhythmAvailability;
  [(HKHeartRhythmAvailability *)&v3 dealloc];
}

+ (BOOL)isHeartRateEnabledInPrivacy
{
  v2 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.nanolifestyle.privacy"];
  v3 = [v2 objectForKey:@"EnableHeartRate"];

  if (v3)
  {
    v4 = [v2 BOOLForKey:@"EnableHeartRate"];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (BOOL)isHeartAgeGatingEnabledOnActiveWatchWithCurrentDate:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() activePairedDevice];
  if (v5)
  {
    v6 = [(HKHeartRhythmAvailability *)self isHeartAgeGatingEnabledOnWatch:v5 currentDate:v4];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isHeartAgeGatingEnabledOnWatch:(id)a3 currentDate:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E696AFB0];
  v8 = a3;
  v9 = [[v7 alloc] initWithUUIDString:@"D6645782-7A76-4E52-8155-151366EBD4AB"];
  v10 = [v8 supportsCapability:v9];

  if (v10)
  {
    healthStore = self->_healthStore;
    v17 = 0;
    v12 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v17];
    v13 = v17;
    v14 = v13;
    if (v12)
    {
      v15 = [v12 hk_ageWithCurrentDate:v6] < 13;
    }

    else
    {
      if (v13)
      {
        _HKInitializeLogging();
        if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
        {
          [HKHeartRhythmAvailability isHeartAgeGatingEnabledOnWatch:currentDate:];
        }
      }

      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (BOOL)_meetsMinimumAgeRequirementWithMinimumRequiredAge:(int64_t)a3 currentDate:(id)a4
{
  v6 = a4;
  healthStore = self->_healthStore;
  v13 = 0;
  v8 = [(HKHealthStore *)healthStore dateOfBirthComponentsWithError:&v13];
  v9 = v13;
  v10 = v9;
  if (v8)
  {
    v11 = [v8 hk_ageWithCurrentDate:v6] >= a3;
  }

  else
  {
    if (v9)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [HKHeartRhythmAvailability _meetsMinimumAgeRequirementWithMinimumRequiredAge:currentDate:];
      }
    }

    v11 = 1;
  }

  return v11;
}

- (void)_registerForNotifications
{
  objc_initWeak(&location, self);
  v3 = MEMORY[0x1E69E96A0];
  v4 = MEMORY[0x1E69E96A0];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke;
  handler[3] = &unk_1E7379AA8;
  objc_copyWeak(&v31, &location);
  notify_register_dispatch("HKHeartRhythmOnboardingStateDidChangeNotification", &self->_onboardingStateDidChangeNotificationToken, v3, handler);

  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke_2;
  v28[3] = &unk_1E7379AA8;
  objc_copyWeak(&v29, &location);
  notify_register_dispatch("HKRemoteFeatureAvailabilityConditionsDidUpdateNotification", &self->_featureAvailabilityConditionsDidUpdateNotificationToken, v3, v28);

  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke_3;
  v26 = &unk_1E7379AA8;
  objc_copyWeak(&v27, &location);
  notify_register_dispatch("com.apple.healthd.user-characteristics.did-change", &self->_userCharacteristicsDidChangeNotificationToken, v3, &v23);

  v5 = [MEMORY[0x1E696AD88] defaultCenter];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v6 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_1;
  v41 = getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_1;
  if (!getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_1)
  {
    v33 = MEMORY[0x1E69E9820];
    v34 = 3221225472;
    v35 = __getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_block_invoke_1;
    v36 = &unk_1E7378388;
    v37 = &v38;
    v7 = NanoRegistryLibrary_5();
    v8 = dlsym(v7, "NRPairedDeviceRegistryDeviceIsSetupNotification");
    *(v37[1] + 24) = v8;
    getNRPairedDeviceRegistryDeviceIsSetupNotificationSymbolLoc_ptr_1 = *(v37[1] + 24);
    v6 = v39[3];
  }

  _Block_object_dispose(&v38, 8);
  if (v6)
  {
    v9 = *v6;
    v10 = [getNRPairedDeviceRegistryClass_1() sharedInstance];
    [v5 addObserver:self selector:sel__pairedOrActiveDevicesDidChange_ name:v9 object:v10];

    v38 = 0;
    v39 = &v38;
    v40 = 0x2020000000;
    v11 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_1;
    v41 = getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_1;
    if (!getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_1)
    {
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_block_invoke_1;
      v36 = &unk_1E7378388;
      v37 = &v38;
      v12 = NanoRegistryLibrary_5();
      v13 = dlsym(v12, "NRPairedDeviceRegistryDeviceDidUnpairNotification");
      *(v37[1] + 24) = v13;
      getNRPairedDeviceRegistryDeviceDidUnpairNotificationSymbolLoc_ptr_1 = *(v37[1] + 24);
      v11 = v39[3];
    }

    _Block_object_dispose(&v38, 8);
    if (v11)
    {
      v14 = *v11;
      v15 = [getNRPairedDeviceRegistryClass_1() sharedInstance];
      [v5 addObserver:self selector:sel__pairedOrActiveDevicesDidChange_ name:v14 object:v15];

      v38 = 0;
      v39 = &v38;
      v40 = 0x2020000000;
      v16 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_1;
      v41 = getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_1;
      if (!getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_1)
      {
        v33 = MEMORY[0x1E69E9820];
        v34 = 3221225472;
        v35 = __getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_block_invoke_1;
        v36 = &unk_1E7378388;
        v37 = &v38;
        v17 = NanoRegistryLibrary_5();
        v18 = dlsym(v17, "NRPairedDeviceRegistryDeviceDidBecomeActive");
        *(v37[1] + 24) = v18;
        getNRPairedDeviceRegistryDeviceDidBecomeActiveSymbolLoc_ptr_1 = *(v37[1] + 24);
        v16 = v39[3];
      }

      _Block_object_dispose(&v38, 8);
      if (v16)
      {
        v19 = *v16;
        v20 = [getNRPairedDeviceRegistryClass_1() sharedInstance];
        [v5 addObserver:self selector:sel__pairedOrActiveDevicesDidChange_ name:v19 object:v20];

        [v5 addObserver:self selector:sel__localeDidChange name:*MEMORY[0x1E695D8F0] object:0];
        objc_destroyWeak(&v27);
        objc_destroyWeak(&v29);
        objc_destroyWeak(&v31);
        objc_destroyWeak(&location);
        return;
      }

      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceDidBecomeActive(void)"];
      [v21 handleFailureInFunction:v22 file:@"HKHeartRhythmAvailability.m" lineNumber:66 description:{@"%s", dlerror(), v23, v24, v25, v26}];
    }

    else
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceDidUnpairNotification(void)"];
      [v21 handleFailureInFunction:v22 file:@"HKHeartRhythmAvailability.m" lineNumber:65 description:{@"%s", dlerror(), v23, v24, v25, v26}];
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryDeviceIsSetupNotification(void)"];
    [v21 handleFailureInFunction:v22 file:@"HKHeartRhythmAvailability.m" lineNumber:64 description:{@"%s", dlerror(), v23, v24, v25, v26}];
  }

  __break(1u);
}

void __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyHeartRhythmAvailabilityDidUpdate];
}

void __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _featureAvailabilityConditionsDidUpdate];
}

void __54__HKHeartRhythmAvailability__registerForNotifications__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained notifyHeartRhythmAvailabilityDidUpdate];
}

- (void)_unregisterForNotifications
{
  if (notify_is_valid_token(self->_onboardingStateDidChangeNotificationToken))
  {
    notify_cancel(self->_onboardingStateDidChangeNotificationToken);
  }

  if (notify_is_valid_token(self->_featureAvailabilityConditionsDidUpdateNotificationToken))
  {
    notify_cancel(self->_featureAvailabilityConditionsDidUpdateNotificationToken);
  }

  if (notify_is_valid_token(self->_userCharacteristicsDidChangeNotificationToken))
  {
    userCharacteristicsDidChangeNotificationToken = self->_userCharacteristicsDidChangeNotificationToken;

    notify_cancel(userCharacteristicsDidChangeNotificationToken);
  }
}

- (void)_featureAvailabilityConditionsDidUpdate
{
  [(HKHeartRhythmAvailability *)self _resetElectrocardiogramRescindedStatusCacheWithLock:1];

  [(HKHeartRhythmAvailability *)self notifyHeartRhythmAvailabilityDidUpdate];
}

- (void)_pairedOrActiveDevicesDidChange:(id)a3
{
  v4 = objc_alloc_init(HKActiveWatchRemoteFeatureAvailabilityDataSource);
  electrocardiogramAvailabilityDataSource = self->_electrocardiogramAvailabilityDataSource;
  self->_electrocardiogramAvailabilityDataSource = v4;

  [(HKHeartRhythmAvailability *)self _resetElectrocardiogramRescindedStatusCacheWithLock:1];

  [(HKHeartRhythmAvailability *)self notifyHeartRhythmAvailabilityDidUpdate];
}

+ (id)activePairedDevice
{
  v2 = [getNRPairedDeviceRegistryClass_1() sharedInstance];
  v3 = [getNRPairedDeviceRegistryClass_1() activeDeviceSelectorBlock];
  v4 = [v2 getDevicesMatching:v3];
  v5 = [v4 firstObject];

  return v5;
}

+ (id)pairedDevices
{
  v2 = [getNRPairedDeviceRegistryClass_1() sharedInstance];
  v3 = [v2 getSetupCompletedDevices];

  return v3;
}

+ (BOOL)isCompanionRegionCheckEnabledForActiveWatch
{
  v2 = objc_opt_class();
  v3 = [objc_opt_class() activePairedDevice];
  LOBYTE(v2) = [v2 isCompanionRegionCheckEnabledForDevice:v3];

  return v2;
}

+ (BOOL)isCompanionRegionCheckEnabledForDevice:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:@"03C7A646-DB1E-404B-B393-033E5496A383"];
  v7 = [v5 supportsCapability:v6];

  _HKInitializeLogging();
  v8 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = objc_opt_class();
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v15 = 138543874;
    v16 = v10;
    v17 = 2114;
    v18 = v12;
    v19 = 1026;
    v20 = v7;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> supports capability: %{public}d", &v15, 0x1Cu);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)isCompanionRegionCheckEnabledOnPairedPhone
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = [a1 activePairedDevice];
  if (v4)
  {
    v5 = [objc_opt_class() isCompanionRegionCheckEnabledForDevice:v4];
    v6 = [HKNanoRegistryDeviceUtility systemBuildVersionForDevice:v4];
    v7 = [v6 hasPrefix:@"17E5223"] ^ 1;
    LODWORD(v8) = v5 & v7;
    _HKInitializeLogging();
    v9 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = objc_opt_class();
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v18 = 138544130;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 1026;
      v23 = v8;
      v24 = 1026;
      v25 = v7;
      _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d (companion software supported: %{public}d)", &v18, 0x22u);
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = HKLogHeartRhythm;
    LOBYTE(v8) = 0;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v14;
      v15 = NSStringFromSelector(a2);
      v18 = 138543874;
      v19 = a1;
      v20 = 2114;
      v21 = v15;
      v22 = 1026;
      v23 = 0;
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d (No paired phone)", &v18, 0x1Cu);

      LOBYTE(v8) = 0;
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isOnboardingCompletedForKey:(id)a3 version:(int64_t)a4 useCache:(BOOL)a5
{
  v5 = a5;
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (v5)
  {
    v10 = [(HKHeartRhythmAvailability *)self heartRhythmUserDefaults];
    v11 = [v10 objectForKey:v9];

    if (v11)
    {
      LOBYTE(v12) = [v11 integerValue] >= a4;
      os_unfair_lock_lock(&self->_onboardingKeysReadLock);
      v13 = [(HKHeartRhythmAvailability *)self onboardingKeysReadSet];
      v14 = [v13 containsObject:v9];

      if (v14)
      {
        _HKInitializeLogging();
        v15 = HKLogHeartRhythm;
        if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_INFO))
        {
          v16 = v15;
          v17 = objc_opt_class();
          v18 = v17;
          v19 = NSStringFromSelector(a2);
          v33 = 138544130;
          v34 = v17;
          v35 = 2114;
          *v36 = v19;
          *&v36[8] = 2114;
          *&v36[10] = v9;
          *&v36[18] = 2114;
          v37 = v11;
          v20 = v16;
          v21 = OS_LOG_TYPE_INFO;
LABEL_16:
          _os_log_impl(&dword_19197B000, v20, v21, "[%{public}@ %{public}@%{public}@] -> %{public}@ (Cached value)", &v33, 0x2Au);
        }
      }

      else
      {
        v28 = [(HKHeartRhythmAvailability *)self onboardingKeysReadSet];
        [v28 addObject:v9];

        _HKInitializeLogging();
        v29 = HKLogHeartRhythm;
        if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v29;
          v30 = objc_opt_class();
          v18 = v30;
          v19 = NSStringFromSelector(a2);
          v33 = 138544130;
          v34 = v30;
          v35 = 2114;
          *v36 = v19;
          *&v36[8] = 2114;
          *&v36[10] = v9;
          *&v36[18] = 2114;
          v37 = v11;
          v20 = v16;
          v21 = OS_LOG_TYPE_DEFAULT;
          goto LABEL_16;
        }
      }

      os_unfair_lock_unlock(&self->_onboardingKeysReadLock);

      goto LABEL_18;
    }
  }

  if (![v9 isEqualToString:@"HKElectrocardiogramOnboardingCompleted"])
  {
    v26 = [(HKHeartRhythmAvailability *)self _getOnboardingVersionForKey:v9];
    v12 = v26 >= a4;
    if (!v5)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (v26)
    {
      [(HKHeartRhythmAvailability *)self _updateOnboardingCompletionForKey:v9 andVersion:v26];
    }

    goto LABEL_12;
  }

  v22 = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingHistoryType:1];
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v22, "maxOnboardedVersion")}];
  v24 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v25 = [HKElectrocardiogramActiveAlgorithmVersion knownAlgorithmVersionFromOnboardedVersion:v23 keyValueDomain:v24];

  v26 = +[HKElectrocardiogramActiveAlgorithmVersion onboardingVersionForKnownAlgorithmVersion:](HKElectrocardiogramActiveAlgorithmVersion, "onboardingVersionForKnownAlgorithmVersion:", [v25 integerValue]);
  v12 = [v22 containsOnboardedVersion:a4];

  if (v5)
  {
    goto LABEL_10;
  }

LABEL_12:
  _HKInitializeLogging();
  v27 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 136447234;
    v34 = "[HKHeartRhythmAvailability _isOnboardingCompletedForKey:version:useCache:]";
    v35 = 1024;
    *v36 = v12;
    *&v36[4] = 2114;
    *&v36[6] = v9;
    *&v36[14] = 1026;
    *&v36[16] = a4;
    LOWORD(v37) = 1026;
    *(&v37 + 2) = v26;
    _os_log_impl(&dword_19197B000, v27, OS_LOG_TYPE_DEFAULT, "[%{public}s] -> %i, argKey: %{public}@ argVersion: %{public}i, versionCompleted: %{public}i", &v33, 0x28u);
  }

LABEL_18:

  v31 = *MEMORY[0x1E69E9840];
  return v12;
}

- (int64_t)_getOnboardingVersionForKey:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v17 = 0;
  v7 = [v6 numberForKey:v5 error:&v17];
  v8 = v17;

  if (v7)
  {
    v9 = [v7 integerValue];
  }

  else
  {
    if (v8)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [HKHeartRhythmAvailability _getOnboardingVersionForKey:];
      }
    }

    v9 = 0;
  }

  _HKInitializeLogging();
  v10 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = objc_opt_class();
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544130;
    v19 = v12;
    v20 = 2114;
    v21 = v14;
    v22 = 2114;
    v23 = v5;
    v24 = 2048;
    v25 = v9;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> %ld (Retrieved from HealthKit)", buf, 0x2Au);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v9;
}

- (void)_updateOnboardingCompletionForKey:(id)a3 andVersion:(int64_t)a4
{
  v6 = a3;
  v7 = [(HKHeartRhythmAvailability *)self heartRhythmUserDefaults];
  [v7 setInteger:a4 forKey:v6];

  v8 = [MEMORY[0x1E695DFD8] setWithObject:v6];

  HKSynchronizeNanoPreferencesUserDefaults(@"com.apple.private.health.heart-rhythm", v8);
}

+ (id)_onboardingHistoryKeyFromCompletedKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HKElectrocardiogramOnboardingCompleted"])
  {
    v4 = @"HKElectrocardiogramOnboardingHistory";
  }

  else
  {
    if (([v3 isEqualToString:@"HKAtrialFibrillationDetectionOnboardingCompleted"] & 1) == 0)
    {
      _HKInitializeLogging();
      v5 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        [HKHeartRhythmAvailability _onboardingHistoryKeyFromCompletedKey:v5];
      }
    }

    v4 = 0;
  }

  return v4;
}

+ (id)_onboardingCountryCodeKeyFromCompletedKey:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"HKElectrocardiogramOnboardingCompleted"])
  {
    v4 = @"HKElectrocardiogramOnboardingCountryCode";
  }

  else if ([v3 isEqualToString:@"HKAtrialFibrillationDetectionOnboardingCompleted"])
  {
    v4 = @"HKAtrialFibrillationDetectionOnboardingCountryCode";
  }

  else
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      [HKHeartRhythmAvailability _onboardingHistoryKeyFromCompletedKey:v5];
    }

    v4 = 0;
  }

  return v4;
}

- (id)_makeOnboardingHistoryWithVersionCompleted:(int64_t)a3 versionCompletedKey:(id)a4 additionalValues:(id)a5 countryCodeKey:(id)a6
{
  if (a3)
  {
    v10 = a6;
    v11 = a5;
    v12 = a4;
    v13 = objc_opt_class();
    v14 = [(HKHeartRhythmAvailability *)self keyValueDomain];
    v15 = [v13 _onboardingHistoryWithVersionCompletedKey:v12 keyValueDomain:v14];

    v16 = [MEMORY[0x1E695DF90] dictionaryWithDictionary:v15];
    v17 = [v11 objectForKeyedSubscript:v10];

    v18 = &stru_1F05FF230;
    if (v17)
    {
      v18 = v17;
    }

    v19 = v18;

    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a3];
    [v16 setObject:v19 forKey:v20];

    v21 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v16];
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  return v21;
}

- (void)_setOnboardingVersionCompleted:(int64_t)a3 forKey:(id)a4 additionalValues:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v27 = a5;
  v28 = a6;
  v11 = [v27 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v14 = v13;

  v15 = [objc_opt_class() _onboardingHistoryKeyFromCompletedKey:v10];
  v16 = [objc_opt_class() _onboardingCountryCodeKeyFromCompletedKey:v10];
  v17 = v16;
  if (!v15 || !v16)
  {
    goto LABEL_8;
  }

  v18 = [(HKHeartRhythmAvailability *)self _makeOnboardingHistoryWithVersionCompleted:a3 versionCompletedKey:v10 additionalValues:v27 countryCodeKey:v16];
  v19 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v33 = 0;
  v20 = [v19 setPropertyListValue:v18 forKey:v15 error:&v33];
  v21 = v33;

  if (v20)
  {

LABEL_8:
    v22 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v14 setObject:v22 forKeyedSubscript:v10];

    _HKInitializeLogging();
    v23 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446978;
      v35 = "[HKHeartRhythmAvailability _setOnboardingVersionCompleted:forKey:additionalValues:completion:]";
      v36 = 2048;
      v37 = a3;
      v38 = 2114;
      v39 = v10;
      v40 = 2114;
      v41 = v14;
      _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}s] %ld %{public}@ %{public}@", buf, 0x2Au);
    }

    objc_initWeak(buf, self);
    v24 = [(HKHeartRhythmAvailability *)self keyValueDomain];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke;
    v29[3] = &unk_1E7382DD0;
    v32[1] = a3;
    v30 = v10;
    v31 = v28;
    objc_copyWeak(v32, buf);
    [v24 setValuesWithDictionary:v14 completion:v29];

    objc_destroyWeak(v32);
    objc_destroyWeak(buf);
    goto LABEL_16;
  }

  _HKInitializeLogging();
  v25 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218498;
    v35 = a3;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v21;
    _os_log_error_impl(&dword_19197B000, v25, OS_LOG_TYPE_ERROR, "Couldn't set heart rhythm onboarding history %ld for key [%@]: %@", buf, 0x20u);
  }

  if (v28)
  {
    (*(v28 + 2))(v28, 0, v21);
  }

LABEL_16:
  v26 = *MEMORY[0x1E69E9840];
}

void __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = *(a1 + 56);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v8 = [WeakRetained heartRhythmUserDefaults];
    v9 = v8;
    if (v6)
    {
      [v8 setInteger:*(a1 + 56) forKey:*(a1 + 32)];
    }

    else
    {
      [v8 removeObjectForKey:*(a1 + 32)];
    }

    v11 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 32)];
    HKSynchronizeNanoPreferencesUserDefaults(@"com.apple.private.health.heart-rhythm", v11);

    notify_post("HKHeartRhythmOnboardingStateDidChangeNotification");
    v12 = [HKNanoSyncControl alloc];
    v13 = objc_loadWeakRetained((a1 + 48));
    v14 = [v13 healthStore];
    v15 = [(HKNanoSyncControl *)v12 initWithHealthStore:v14];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_114;
    v16[3] = &unk_1E7382DA8;
    v19 = *(a1 + 56);
    v17 = *(a1 + 32);
    v18 = *(a1 + 40);
    [(HKNanoSyncControl *)v15 forceNanoSyncWithOptions:0 completion:v16];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_cold_1(a1);
    }

    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, 0, v5);
    }
  }
}

void __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_114(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_114_cold_1(a1);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }
}

- (void)_setFirstOnboardingCompletedDate:(id)a3 forKey:(id)a4 completion:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v11 setObject:v8 forKeyedSubscript:v9];
  _HKInitializeLogging();
  v12 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446978;
    v24 = "[HKHeartRhythmAvailability _setFirstOnboardingCompletedDate:forKey:completion:]";
    v25 = 2114;
    v26 = v8;
    v27 = 2114;
    v28 = v9;
    v29 = 2114;
    v30 = v11;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}s] %{public}@ %{public}@ %{public}@", buf, 0x2Au);
  }

  objc_initWeak(buf, self);
  v13 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke;
  v18[3] = &unk_1E7382DF8;
  v14 = v8;
  v19 = v14;
  v15 = v9;
  v20 = v15;
  v16 = v10;
  v21 = v16;
  objc_copyWeak(&v22, buf);
  [v13 setValuesWithDictionary:v11 completion:v18];

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v17 = *MEMORY[0x1E69E9840];
}

void __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [HKNanoSyncControl alloc];
    WeakRetained = objc_loadWeakRetained(a1 + 7);
    v8 = [WeakRetained healthStore];
    v9 = [(HKNanoSyncControl *)v6 initWithHealthStore:v8];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_116;
    v11[3] = &unk_1E7378928;
    v12 = a1[4];
    v13 = a1[5];
    v14 = a1[6];
    [(HKNanoSyncControl *)v9 forceNanoSyncWithOptions:0 completion:v11];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_cold_1(a1);
    }

    v10 = a1[6];
    if (v10)
    {
      v10[2](v10, 0, v5);
    }
  }
}

void __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_116(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_116_cold_1(a1);
    }
  }

  v6 = *(a1 + 48);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }
}

- (void)_removeFirstOnboardingCompletedDatesForKey:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  objc_initWeak(&location, self);
  v9 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke;
  v12[3] = &unk_1E7382E20;
  v10 = v6;
  v13 = v10;
  v11 = v7;
  v14 = v11;
  objc_copyWeak(&v15, &location);
  [v9 removeValuesForKeys:v8 completion:v12];

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke(id *a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    v6 = [HKNanoSyncControl alloc];
    WeakRetained = objc_loadWeakRetained(a1 + 6);
    v8 = [WeakRetained healthStore];
    v9 = [(HKNanoSyncControl *)v6 initWithHealthStore:v8];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_117;
    v11[3] = &unk_1E73766A0;
    v12 = a1[4];
    v13 = a1[5];
    [(HKNanoSyncControl *)v9 forceNanoSyncWithOptions:0 completion:v11];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_cold_1(a1);
    }

    v10 = a1[5];
    if (v10)
    {
      v10[2](v10, 0, v5);
    }
  }
}

void __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_117(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_117_cold_1(a1);
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v5);
  }
}

- (void)_triggerFeatureAvailabilityUpdateOnPhoneAndWatchWithDelay:(int64_t)a3
{
  notify_post("HKRemoteFeatureAvailabilityConditionsDidUpdateNotification");
  v5 = dispatch_time(0, 1000000000 * a3);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __87__HKHeartRhythmAvailability__triggerFeatureAvailabilityUpdateOnPhoneAndWatchWithDelay___block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x1E69E96A0], block);
}

void __87__HKHeartRhythmAvailability__triggerFeatureAvailabilityUpdateOnPhoneAndWatchWithDelay___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [objc_opt_class() featureAvailabilityUserDefaults];
  v2 = [MEMORY[0x1E695DF00] date];
  [v4 setObject:v2 forKey:@"RefreshFeatureAvailabilityConditions"];

  v3 = [MEMORY[0x1E695DFD8] setWithObject:@"RefreshFeatureAvailabilityConditions"];
  HKSynchronizeNanoPreferencesUserDefaults(@"com.apple.private.health.feature-availability", v3);
}

- (HKRegulatoryDomainProvider)mobileCountryCodeManager
{
  mobileCountryCodeManager = self->_mobileCountryCodeManager;
  if (!mobileCountryCodeManager)
  {
    v4 = HKPreferredRegulatoryDomainProvider();
    v5 = self->_mobileCountryCodeManager;
    self->_mobileCountryCodeManager = v4;

    mobileCountryCodeManager = self->_mobileCountryCodeManager;
  }

  return mobileCountryCodeManager;
}

- (BOOL)isElectrocardiogramAvailableOnWatch:(id)a3 countryCode:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [HKNanoRegistryDeviceUtility systemVersionForDevice:v7];
  v9 = [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:v6 andWatchDevice:v7];

  v10 = v9 || [(HKHeartRhythmAvailability *)self _isECG1SupportedForCountryCode:v6 watchOSVersion:v8 isWatchOSSeedBuild:0];
  return v10;
}

- (BOOL)isElectrocardiogramAvailableForOnboardingCountryCode:(id)a3
{
  v4 = a3;
  v5 = +[_HKBehavior currentOSVersion];
  NRRawVersionFromString = getNRRawVersionFromString(v5);

  v7 = [objc_opt_class() activePairedDevice];
  v8 = v7 && [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:v4 andPhoneDevice:v7]|| [(HKHeartRhythmAvailability *)self _isECG1SupportedForCountryCode:v4 watchOSVersion:NRRawVersionFromString isWatchOSSeedBuild:0];

  return v8;
}

- (BOOL)isElectrocardiogramOnboardingCompleted
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 BOOLForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

    return v6;
  }

  else
  {
    v8 = +[HKECGOnboardingVersion newestAvailableVersion];

    return [(HKHeartRhythmAvailability *)self _isOnboardingCompletedForKey:@"HKElectrocardiogramOnboardingCompleted" version:v8];
  }
}

- (BOOL)isElectrocardiogramOnboardingCompletedNoCache
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 BOOLForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

    return v6;
  }

  else
  {
    v8 = +[HKECGOnboardingVersion newestAvailableVersion];

    return [(HKHeartRhythmAvailability *)self _isOnboardingCompletedForKey:@"HKElectrocardiogramOnboardingCompleted" version:v8 useCache:0];
  }
}

- (void)updateOnboardingCompletionVersionCache
{
  v3 = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingCompletedVersionNoCache];

  [(HKHeartRhythmAvailability *)self _updateOnboardingCompletionForKey:@"HKElectrocardiogramOnboardingCompleted" andVersion:v3];
}

- (void)updateElectrocardiogramWatchAppInstallIsAllowed
{
  if ([(HKHeartRhythmAvailability *)self _isOnboardingCompletedForKey:@"HKElectrocardiogramOnboardingCompleted" version:3])
  {

    [(HKHeartRhythmAvailability *)self setAllowInstallingElectrocardiogramWatchApp:1];
  }
}

- (int64_t)electrocardiogramOnboardingCompletedVersionNoCache
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 BOOLForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

    return v6;
  }

  else
  {

    return [(HKHeartRhythmAvailability *)self _getOnboardingVersionForKey:@"HKElectrocardiogramOnboardingCompleted"];
  }
}

- (id)electrocardiogramOnboardingCountryCode
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v17 = 0;
  v4 = [v3 stringForKey:@"HKElectrocardiogramOnboardingCountryCode" error:&v17];
  v5 = v17;

  if (!v4 && v5)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      [HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode];
    }

    if ([v5 hk_isDatabaseAccessibilityError])
    {
      _HKInitializeLogging();
      v6 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136446210;
        v19 = "[HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode]";
        _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}s]: Database inaccessible, resetting electrocardiogram disabled cache for next query.", buf, 0xCu);
      }

      [(HKHeartRhythmAvailability *)self _resetElectrocardiogramRescindedStatusCacheWithLock:0];
    }

    _HKInitializeLogging();
    v7 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446210;
      v19 = "[HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode]";
      _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s] -> nil (Error retrieving)", buf, 0xCu);
    }

    v8 = 0;
    goto LABEL_21;
  }

  v8 = [v4 hk_copyNonEmptyString];

  if (v8 || ![(HKHeartRhythmAvailability *)self isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion])
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRhythm;
    if (!os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v19 = "[HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode]";
    v20 = 2114;
    v21 = v8;
    v10 = "[%{public}s] -> %{public}@ (Retrieved from HealthKit)";
  }

  else
  {
    _HKInitializeLogging();
    v9 = HKLogHeartRhythm;
    v8 = @"US";
    if (!os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    *buf = 136446466;
    v19 = "[HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode]";
    v20 = 2114;
    v21 = @"US";
    v10 = "[%{public}s] -> %{public}@ (Not Present, Assumed)";
  }

  _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
LABEL_19:
  _HKInitializeLogging();
  v11 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = objc_opt_class();
    *buf = 138543874;
    v19 = v13;
    v20 = 2082;
    v21 = "[HKHeartRhythmAvailability electrocardiogramOnboardingCountryCode]";
    v22 = 2114;
    v23 = v8;
    v14 = v13;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}s] -> %{public}@", buf, 0x20u);
  }

LABEL_21:

  v15 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_electrocardiogramFirstOnboardingCompletedDate
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v8 = 0;
  v3 = [v2 dateForKey:@"HKElectrocardiogramFirstOnboardingCompleted" error:&v8];
  v4 = v8;

  if (v3)
  {
    _HKInitializeLogging();
    v5 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      v10 = "[HKHeartRhythmAvailability _electrocardiogramFirstOnboardingCompletedDate]";
      v11 = 2114;
      v12 = v3;
      _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}s] -> %{public}@ (Retrieved from HealthKit)", buf, 0x16u);
    }
  }

  else if (v4)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      [HKHeartRhythmAvailability _electrocardiogramFirstOnboardingCompletedDate];
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v3;
}

- (void)setElectrocardiogramOnboardingCompleted
{
  v3 = +[HKECGOnboardingVersion newestAvailableVersion];

  [(HKHeartRhythmAvailability *)self _setOnboardingVersionCompleted:v3 forKey:@"HKElectrocardiogramOnboardingCompleted" additionalValues:0 completion:0];
}

- (void)unitTest_setElectrocardiogramOnboardingCompletedForVersion:(int64_t)a3 countryCode:(id)a4 completion:(id)a5
{
  v13[1] = *MEMORY[0x1E69E9840];
  v8 = a5;
  if (a4)
  {
    v12 = @"HKElectrocardiogramOnboardingCountryCode";
    v13[0] = a4;
    v9 = MEMORY[0x1E695DF20];
    v10 = a4;
    a4 = [v9 dictionaryWithObjects:v13 forKeys:&v12 count:1];
  }

  [(HKHeartRhythmAvailability *)self _setOnboardingVersionCompleted:a3 forKey:@"HKElectrocardiogramOnboardingCompleted" additionalValues:a4 completion:v8];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_setElectrocardiogramOnboardingCompletedForVersion:(int64_t)a3 inCountryCode:(id)a4
{
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    v13 = @"HKElectrocardiogramOnboardingCountryCode";
    v14[0] = v6;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  }

  else
  {
    v8 = 0;
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __94__HKHeartRhythmAvailability__setElectrocardiogramOnboardingCompletedForVersion_inCountryCode___block_invoke;
  v10[3] = &unk_1E7382E48;
  objc_copyWeak(&v11, &location);
  [(HKHeartRhythmAvailability *)self _setOnboardingVersionCompleted:a3 forKey:@"HKElectrocardiogramOnboardingCompleted" additionalValues:v8 completion:v10];
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  v9 = *MEMORY[0x1E69E9840];
}

void __94__HKHeartRhythmAvailability__setElectrocardiogramOnboardingCompletedForVersion_inCountryCode___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _triggerFeatureAvailabilityUpdateOnPhoneAndWatchWithDelay:2];
}

- (BOOL)activePairedDevicesSupportElectrocardiogramAlgorithmVersion:(int64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = [objc_opt_class() activePairedDevice];
  if (!v5)
  {
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v6 = [(HKHeartRhythmAvailability *)self _activePairedDevicesSupportECGAlgorithmVersionTwo:v5];
    goto LABEL_7;
  }

  if (a3 != 1)
  {
LABEL_5:
    v7 = 0;
    goto LABEL_8;
  }

  v6 = [objc_opt_class() electrocardiogramSupportedForDevice:v5];
LABEL_7:
  v7 = v6;
LABEL_8:
  _HKInitializeLogging();
  v8 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136446466;
    v12 = "[HKHeartRhythmAvailability activePairedDevicesSupportElectrocardiogramAlgorithmVersion:]";
    v13 = 1024;
    v14 = v7;
    _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}s] -> %i", &v11, 0x12u);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)_activePairedDevicesSupportECGAlgorithmVersionTwo:(id)a3
{
  v3 = a3;
  v4 = +[HKHeartRhythmAvailability _ECG2SupportedCountriesOnDevice];
  v5 = [HKHeartRhythmAvailability _ECG2SupportedCountriesOnDevice:v3];

  if (v4)
  {
    v6 = v5 == 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;

  return v7;
}

+ (BOOL)shouldInstallWatchApp
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"HKForceInstallCinnamon"];

  if (v5)
  {
LABEL_2:
    v6 = 1;
    goto LABEL_17;
  }

  if (+[_HKBehavior isRunningStoreDemoMode])
  {
    _HKInitializeLogging();
    v7 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      v9 = NSStringFromSelector(a2);
      v30 = 138543618;
      v31 = a1;
      v32 = 2114;
      v33 = v9;
      v10 = "[%{public}@ %{public}@] -> 0 (Not allowed in Store Demo Mode)";
LABEL_15:
      _os_log_impl(&dword_19197B000, v8, OS_LOG_TYPE_DEFAULT, v10, &v30, 0x16u);

      goto LABEL_16;
    }

    goto LABEL_16;
  }

  v11 = +[_HKBehavior sharedBehavior];
  v12 = [v11 tinkerModeEnabled];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v13;
      v9 = NSStringFromSelector(a2);
      v30 = 138543618;
      v31 = a1;
      v32 = 2114;
      v33 = v9;
      v10 = "[%{public}@ %{public}@] -> 0 (Not allowed in Satellite Pairing Mode)";
      goto LABEL_15;
    }

LABEL_16:
    v6 = 0;
    goto LABEL_17;
  }

  if ((MGGetBoolAnswer() & 1) == 0)
  {
    _HKInitializeLogging();
    v19 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v19;
      v9 = NSStringFromSelector(a2);
      v30 = 138543618;
      v31 = a1;
      v32 = 2114;
      v33 = v9;
      v10 = "[%{public}@ %{public}@] -> 0 (Device hardware not supported)";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v14 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v15 = [v14 hk_electrocardiogramWatchAppInstallHasBeenAllowed];

  if (v15)
  {
    _HKInitializeLogging();
    v16 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v17 = v16;
      v18 = NSStringFromSelector(a2);
      v30 = 138543618;
      v31 = a1;
      v32 = 2114;
      v33 = v18;
      _os_log_impl(&dword_19197B000, v17, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> 1 (HKElectrocardiogramWatchAppInstallIsAllowed is set to True", &v30, 0x16u);
    }

    goto LABEL_2;
  }

  v22 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:@"com.apple.private.health.heart-rhythm"];
  v23 = [v22 objectForKey:@"HKElectrocardiogramOnboardingCompleted"];

  if (v23 && [v23 integerValue] >= 3)
  {
    _HKInitializeLogging();
    v24 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      v26 = NSStringFromSelector(a2);
      v30 = 138543618;
      v31 = a1;
      v32 = 2114;
      v33 = v26;
      _os_log_impl(&dword_19197B000, v25, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> 1 (Onboarding has been completed (From Cached Value))", &v30, 0x16u);
    }

    v6 = 1;
  }

  else
  {
    _HKInitializeLogging();
    v27 = HKLogHeartRhythm;
    v6 = 0;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v28 = v27;
      v29 = NSStringFromSelector(a2);
      v30 = 138544386;
      v31 = a1;
      v32 = 2114;
      v33 = v29;
      v34 = 1026;
      v35 = 1;
      v36 = 1026;
      v37 = 0;
      v38 = 1026;
      v39 = 0;
      _os_log_impl(&dword_19197B000, v28, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> 0 (device supported (%{public}d), app install allowed (%{public}d), Current onboarding version completed (%{public}d))", &v30, 0x28u);

      v6 = 0;
    }
  }

LABEL_17:
  v20 = *MEMORY[0x1E69E9840];
  return v6;
}

+ (BOOL)isElectrocardiogramAppInstallableForLocale:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 countryCode];
  _HKInitializeLogging();
  v7 = HKLogHeartRhythm;
  v8 = os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v8)
    {
      v9 = v7;
      v10 = NSStringFromSelector(a2);
      v11 = [v5 localeIdentifier];
      v17 = 138544130;
      v18 = a1;
      v19 = 2114;
      v20 = v10;
      v21 = 2114;
      v22 = v11;
      v23 = 2114;
      v24 = v6;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Locale: %{public}@), Country Code: %{public}@)", &v17, 0x2Au);
    }

    IsAvailableForGeolocatedCountryCode = HKElectrocardiogramIsAvailableForGeolocatedCountryCode(v6);
  }

  else
  {
    if (v8)
    {
      v13 = v7;
      v14 = NSStringFromSelector(a2);
      v17 = 138543618;
      v18 = a1;
      v19 = 2114;
      v20 = v14;
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Locale contained a nil country code", &v17, 0x16u);
    }

    IsAvailableForGeolocatedCountryCode = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return IsAvailableForGeolocatedCountryCode;
}

- (BOOL)isElectrocardiogramAppInstallAllowedForWatch:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = getNRDevicePropertyName();
  v28 = [v4 valueForProperty:v5];

  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
  v7 = [v4 supportsCapability:v6];

  v8 = getNRDevicePropertyIsAltAccount();
  v9 = [v4 valueForProperty:v8];
  v27 = [v9 BOOLValue];

  v10 = [(HKHeartRhythmAvailability *)self isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion];
  v11 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
  v12 = [v11 countryCode];
  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v13 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr;
  v33 = getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr;
  if (!getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getNRDevicePropertyCurrentUserLocaleSymbolLoc_block_invoke;
    *&v35 = &unk_1E7378388;
    *(&v35 + 1) = &v30;
    v14 = NanoRegistryLibrary_5();
    v15 = dlsym(v14, "NRDevicePropertyCurrentUserLocale");
    *(*(*(&v35 + 1) + 8) + 24) = v15;
    getNRDevicePropertyCurrentUserLocaleSymbolLoc_ptr = *(*(*(&v35 + 1) + 8) + 24);
    v13 = v31[3];
  }

  _Block_object_dispose(&v30, 8);
  if (!v13)
  {
    [HKHeartRhythmAvailability isElectrocardiogramAppInstallAllowedForWatch:];
  }

  v16 = [v4 valueForProperty:*v13];
  v17 = [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:v12 andWatchDevice:v4];
  if (((v17 | [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:v16 andWatchDevice:v4]) & 1) == 0)
  {
    if (v12)
    {
      IsAvailableForGeolocatedCountryCode = HKElectrocardiogramIsAvailableForGeolocatedCountryCode(v12);
      if (v16)
      {
LABEL_9:
        v21 = HKElectrocardiogramIsAvailableForGeolocatedCountryCode(v16);
        goto LABEL_12;
      }
    }

    else
    {
      IsAvailableForGeolocatedCountryCode = 0;
      if (v16)
      {
        goto LABEL_9;
      }
    }

    v21 = 0;
LABEL_12:
    v18 = IsAvailableForGeolocatedCountryCode | v21;
    if (v7)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

  v18 = 1;
  if (v7)
  {
LABEL_6:
    v19 = (v27 ^ 1) & (v10 | v18);
    goto LABEL_14;
  }

LABEL_13:
  v19 = 0;
LABEL_14:
  _HKInitializeLogging();
  v22 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v23 = v22;
    v24 = NSStringFromSelector(a2);
    *buf = 138545154;
    *&buf[4] = self;
    *&buf[12] = 2114;
    *&buf[14] = v24;
    *&buf[22] = 1026;
    LODWORD(v35) = v19;
    WORD2(v35) = 2114;
    *(&v35 + 6) = v28;
    HIWORD(v35) = 1026;
    v36 = v7;
    v37 = 1026;
    v38 = v27;
    v39 = 1026;
    v40 = v10;
    v41 = 1026;
    v42 = v18 & 1;
    _os_log_impl(&dword_19197B000, v23, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d (deviceName: %{public}@, deviceSupported: %{public}d, tinkerPaired: %{public}d, anyOnboardingCompleted: %{public}d, localeSupported: %{public}d", buf, 0x3Eu);
  }

  v25 = *MEMORY[0x1E69E9840];
  return v19;
}

+ (BOOL)isElectrocardiogramSupportedOnWatch:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 _electrocardiogramSupportedStateForDeviceRegion:v5];
  v7 = [a1 electrocardiogramSupportedForDevice:v5];
  v8 = getNRDevicePropertyIsAltAccount();
  v9 = [v5 valueForProperty:v8];
  v10 = [v9 BOOLValue];

  if (v6 < 2)
  {
    v11 = v7 & ~v10;
  }

  else
  {
    v11 = 0;
  }

  _HKInitializeLogging();
  v12 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v6 < 2;
    v14 = v12;
    v15 = NSStringFromSelector(a2);
    v16 = getNRDevicePropertyName();
    v17 = [v5 valueForProperty:v16];
    v20 = 138544898;
    v21 = a1;
    v22 = 2114;
    v23 = v15;
    v24 = 2114;
    v25 = v17;
    v26 = 1026;
    v27 = v11;
    v28 = 1026;
    v29 = v7;
    v30 = 1026;
    v31 = v10 & 1;
    v32 = 1026;
    v33 = v13;
    _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> %{public}d (Device supported: %{public}d; Alt Account: %{public}d; Region supported: %{public}d;)", &v20, 0x38u);
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

+ (BOOL)isElectrocardiogramSupportedOnAnyWatch
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnAnyWatch"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 BOOLForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnAnyWatch"];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v10 = [a1 pairedDevices];
    v11 = [v10 countByEnumeratingWithState:&v18 objects:v28 count:16];
    if (v11)
    {
      v12 = *v19;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if ([a1 isElectrocardiogramSupportedOnWatch:*(*(&v18 + 1) + 8 * i)])
          {
            LODWORD(v11) = 1;
            goto LABEL_13;
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v18 objects:v28 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    _HKInitializeLogging();
    v14 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v14;
      v16 = NSStringFromSelector(a2);
      *buf = 138543874;
      v23 = a1;
      v24 = 2114;
      v25 = v16;
      v26 = 1026;
      v27 = v11;
      _os_log_impl(&dword_19197B000, v15, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", buf, 0x1Cu);
    }

    v17 = *MEMORY[0x1E69E9840];
    return v11;
  }
}

+ (BOOL)isElectrocardiogramSupportedOnActiveWatch
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActiveWatch"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 BOOLForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActiveWatch"];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v10 = [a1 activePairedDevice];
    if (v10)
    {
      v11 = [a1 isElectrocardiogramSupportedOnWatch:v10];
    }

    else
    {
      v11 = 0;
    }

    _HKInitializeLogging();
    v12 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = a1;
      v18 = 2114;
      v19 = v14;
      v20 = 1026;
      v21 = v11;
      _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", &v16, 0x1Cu);
    }

    v15 = *MEMORY[0x1E69E9840];
    return v11;
  }
}

+ (BOOL)isElectrocardiogramSupportedOnAllWatches
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnAllWatches"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 BOOLForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnAllWatches"];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v10 = [a1 pairedDevices];
    v21 = 0u;
    v22 = 0u;
    v11 = [v10 count] != 0;
    v23 = 0u;
    v24 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v22;
      while (2)
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v22 != v15)
          {
            objc_enumerationMutation(v12);
          }

          if (![a1 isElectrocardiogramSupportedOnWatch:{*(*(&v21 + 1) + 8 * i), v21}])
          {
            v11 = 0;
            goto LABEL_13;
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    _HKInitializeLogging();
    v17 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v17;
      v19 = NSStringFromSelector(a2);
      *buf = 138543874;
      v26 = a1;
      v27 = 2114;
      v28 = v19;
      v29 = 1026;
      v30 = v11;
      _os_log_impl(&dword_19197B000, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", buf, 0x1Cu);
    }

    v20 = *MEMORY[0x1E69E9840];
    return v11;
  }
}

+ (unint64_t)electrocardiogramSupportedStateForWatch:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [a1 electrocardiogramSupportedForDevice:v5];
  v7 = getNRDevicePropertyIsAltAccount();
  v8 = [v5 valueForProperty:v7];
  v9 = [v8 BOOLValue];

  v10 = [a1 _electrocardiogramSupportedStateForDeviceRegion:v5];
  _HKInitializeLogging();
  v11 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    v14 = getNRDevicePropertyName();
    v15 = [v5 valueForProperty:v14];
    v16 = NSStringFromHKElectrocardiogramSupportedState(v10);
    v21 = 138544642;
    v22 = a1;
    v23 = 2114;
    v24 = v13;
    v25 = 2114;
    v26 = v15;
    v27 = 1026;
    v28 = v6;
    v29 = 1026;
    v30 = v9;
    v31 = 2114;
    v32 = v16;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> (Device supported: %{public}d; Alt Account: %{public}d; Region supported: %{public}@)", &v21, 0x36u);
  }

  v17 = 5;
  if (!v9)
  {
    v17 = v10;
  }

  if (v6)
  {
    v18 = v17;
  }

  else
  {
    v18 = 2;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

+ (unint64_t)electrocardiogramSupportedStateForActiveWatch
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"HKGlobalDefaultsElectrocardiogramSupportedStateForActiveWatchKey"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 integerForKey:@"HKGlobalDefaultsElectrocardiogramSupportedStateForActiveWatchKey"];
  }

  else
  {
    v5 = [a1 activePairedDevice];
    if (!v5)
    {
      v7 = 2;
      goto LABEL_6;
    }

    v6 = [a1 electrocardiogramSupportedStateForWatch:v5];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

+ (BOOL)isElectrocardiogramAppDeletableForActiveWatch
{
  v2 = [a1 activePairedDevice];
  v3 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"1CFACCB8-FFEB-4682-A50E-16F853583912"];
  v4 = [v2 supportsCapability:v3];

  return v4;
}

+ (unint64_t)_electrocardiogramSupportedStateForDeviceRegion:(id)a3
{
  v4 = a3;
  v5 = [objc_msgSend(a1 deviceRegionFeatureSupportedStateProviderForCompanionDevice:{v4), "electrocardiogramSupportedStateForDeviceRegion:", v4}];

  return v5;
}

+ (unint64_t)electrocardiogramSupportedState
{
  v3 = +[_HKBehavior sharedBehavior];
  v4 = [v3 tinkerModeEnabled];

  if (v4)
  {
    return 5;
  }

  v6 = [a1 deviceRegionFeatureSupportedStateProviderForCurrentWatchOSDevice];

  return [v6 electrocardiogramSupportedStateForCurrentDeviceRegion];
}

- (BOOL)shouldAdvertiseElectrocardiogramForActiveWatch
{
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  v4 = [v3 objectForKey:@"HKGlobalDefaultsShouldAdvertiseElectrocardiogramForActiveWatchKey"];

  if (v4)
  {
    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    v6 = [v5 BOOLForKey:@"HKGlobalDefaultsShouldAdvertiseElectrocardiogramForActiveWatchKey"];
  }

  else
  {
    v5 = [objc_opt_class() activePairedDevice];
    if (!v5)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v6 = [(HKHeartRhythmAvailability *)self shouldAdvertiseElectrocardiogramForWatch:v5];
  }

  v7 = v6;
LABEL_6:

  return v7;
}

- (BOOL)shouldAdvertiseElectrocardiogramForWatch:(id)a3
{
  v12[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HKHeartRhythmAvailability *)self _shouldAdvertiseECGDirectOnboardingWithDevice:v4];
  v6 = [(HKHeartRhythmAvailability *)self _shouldAdvertiseECG2DirectOnboardingWithWatchDevice:v4];

  v7 = [MEMORY[0x1E696AD98] numberWithBool:v5];
  v12[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];
  LOBYTE(self) = [(HKHeartRhythmAvailability *)self _shouldAdvertiseWithAdvertiseECGVersions:v9];

  v10 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)_shouldAdvertiseECGDirectOnboardingWithDevice:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_currentCountryCode)
  {
    LOBYTE(v8) = 0;
    goto LABEL_11;
  }

  v6 = [objc_opt_class() electrocardiogramSupportedStateForWatch:v5];
  if (v6 == 1)
  {
    if (HKElectrocardiogramIsAvailableForGeolocatedCountryCode(self->_currentCountryCode))
    {
      v7 = [objc_opt_class() isElectrocardiogramSupportedOnWatch:v5];
      goto LABEL_9;
    }
  }

  else if (!v6)
  {
    v7 = 1;
    goto LABEL_9;
  }

  v7 = 0;
LABEL_9:
  v9 = [MEMORY[0x1E695DF00] date];
  v10 = [(HKHeartRhythmAvailability *)self _meetsMinimumAgeRequirementForElectrocardiogramWithCurrentDate:v9];

  v8 = v7 & v10;
  _HKInitializeLogging();
  v11 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    currentCountryCode = self->_currentCountryCode;
    v17 = 138544386;
    v18 = self;
    v19 = 2114;
    v20 = v13;
    v21 = 1026;
    v22 = v8;
    v23 = 2114;
    v24 = currentCountryCode;
    v25 = 1026;
    v26 = v10;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d (Cached MCC: %{public}@, Meets Minimum Age Requirement: %{public}d)", &v17, 0x2Cu);
  }

LABEL_11:

  v15 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_shouldAdvertiseECG2DirectOnboardingWithWatchDevice:(id)a3
{
  v3 = [(HKHeartRhythmAvailability *)self _ecg2AvailabilityWithWatchDevice:a3];
  v4 = [v3 advertiseDirectOnboarding];

  return v4;
}

- (id)_ecg2AvailabilityWithWatchDevice:(id)a3
{
  v69 = *MEMORY[0x1E69E9840];
  currentCountryCode = self->_currentCountryCode;
  v5 = a3;
  v42 = [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:currentCountryCode andWatchDevice:v5];
  v6 = [MEMORY[0x1E695DF00] date];
  v7 = [(HKHeartRhythmAvailability *)self _meetsMinimumAgeRequirementForElectrocardiogramWithCurrentDate:v6];

  v8 = [(HKHeartRhythmAvailability *)self _electrocardiogramOnboardingHistoryKnown];
  v9 = [objc_opt_class() currentElectrocardiogramOnboardingVersion];
  v43 = [v8 filteredHistoryByVersion:v9 filterType:2];
  v10 = [v43 count];
  v11 = v10 > 0;
  v12 = [(HKHeartRhythmAvailability *)self heartRhythmUserDefaults];
  v13 = [v12 objectForKey:@"HKElectrocardiogramOnboardingCompleted"];

  v41 = v13;
  if (v13)
  {
    v14 = [v13 integerValue];
    v11 = v10 > 0 || v14 < v9;
    LODWORD(v13) = [v13 integerValue] == 4;
  }

  v44 = v8;
  v16 = [v8 containsOnboardedVersion:4];
  v17 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v18 = [v17 BOOLForKey:@"HKElectrocardiogramV1ToV2UpgradeBackgroundDelivered"];

  v19 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v20 = [v19 BOOLForKey:@"HKElectrocardiogramV1ToV2UpgradeAlertDismissed"];

  if ((v16 & 1) != 0 || v13)
  {
    v21 = v18 & (v20 ^ 1u);
  }

  else
  {
    v21 = 0;
  }

  v22 = [objc_opt_class() electrocardiogramSupportedForDevice:v5];
  v23 = [HKHeartRhythmAvailability _ECG2SupportedCountriesOnDevice:v5];

  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  v25 = getNRDevicePropertyIsAltAccount();
  v26 = [v5 valueForProperty:v25];

  v27 = [v26 BOOLValue];
  LOBYTE(v38) = v27;
  v28 = [HKECGAvailabilityEngine shouldAdvertiseECG2WithSupportedRegion:v42 meetsAgeRequirement:v7 backgroundDeliveredNotAdvertised:v21 prevOnboarded:v11 watchCapable:v24 phoneCapable:1 isTinker:v38];
  _HKInitializeLogging();
  v29 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v39 = v23 != 0;
    v30 = v29;
    v31 = NSStringFromSelector(a2);
    v32 = [v28 advertiseDirectOnboarding];
    v33 = [v28 advertiseUpgradeBackgroundDelivered];
    v34 = [v28 advertiseUpgrade];
    v35 = self->_currentCountryCode;
    *buf = 138546178;
    v46 = self;
    v47 = 2114;
    v48 = v31;
    v49 = 1026;
    v50 = v32;
    v51 = 1026;
    v52 = v33;
    v53 = 1026;
    v54 = v34;
    v55 = 2114;
    v56 = v35;
    v57 = 1026;
    v58 = v42;
    v59 = 1026;
    v60 = v7;
    v61 = 1026;
    v62 = v11;
    v63 = 1026;
    v64 = v22;
    v65 = 1026;
    v66 = v39;
    v67 = 1026;
    v68 = 1;
    _os_log_impl(&dword_19197B000, v30, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> ECG2 advertiseDirect: %{public}d advertiseUpgradeBackgroundDelivered: %{public}d advertiseUpgrade: %{public}d (Cached MCC: %{public}@, SupportedRegion: %{public}d, meetsMinAge: %{public}d, highestOnboardedVersionIsLessThanNewestKnownVersion: %{public}d, watchHardwareSupported: %{public}d, watchSoftwareSupported: %{public}d, phoneCapable: %{public}d", buf, 0x56u);
  }

  v36 = *MEMORY[0x1E69E9840];

  return v28;
}

- (id)_ecg2AvailabilityWithPhoneDevice:(id)a3 wasUpgradeBackgroundDelivered:(BOOL)a4
{
  v67 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v41 = v6;
  if (a4)
  {
    v42 = 1;
  }

  else
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695DF58] hk_testableAutoupdatingCurrentLocale];
    v9 = [v8 countryCode];

    v42 = [HKHeartRhythmAvailability _isECG2SupportedForCountryCode:v9 andPhoneDevice:v7];
  }

  v10 = [MEMORY[0x1E695DF00] date];
  v11 = [(HKHeartRhythmAvailability *)self _meetsMinimumAgeRequirementForElectrocardiogramWithCurrentDate:v10];

  v12 = [(HKHeartRhythmAvailability *)self _electrocardiogramOnboardingHistoryKnown];
  v40 = [v12 filteredHistoryByVersion:objc_msgSend(objc_opt_class() filterType:{"currentElectrocardiogramOnboardingVersion"), 2}];
  v13 = [v40 count];
  v39 = v12;
  LODWORD(v12) = [v12 containsOnboardedVersion:4];
  v14 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v15 = [v14 BOOLForKey:@"HKElectrocardiogramV1ToV2UpgradeBackgroundDelivered"];

  v16 = [MEMORY[0x1E695E000] hk_heartRhythmDefaults];
  v17 = [v16 BOOLForKey:@"HKElectrocardiogramV1ToV2UpgradeAlertDismissed"];

  if (v12)
  {
    v18 = v15 & (v17 ^ 1u);
  }

  else
  {
    v18 = 0;
  }

  v19 = MGGetBoolAnswer();
  v20 = +[HKHeartRhythmAvailability _ECG2SupportedCountriesOnDevice];

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = 0;
  }

  v22 = +[_HKBehavior sharedBehavior];
  v23 = [v22 tinkerModeEnabled];

  LOBYTE(v37) = v23;
  v24 = v11;
  v25 = [HKECGAvailabilityEngine shouldAdvertiseECG2WithSupportedRegion:v42 meetsAgeRequirement:v11 backgroundDeliveredNotAdvertised:v18 prevOnboarded:v13 > 0 watchCapable:v21 phoneCapable:1 isTinker:v37];
  _HKInitializeLogging();
  v26 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v27 = v20 != 0;
    v28 = v13 > 0;
    v29 = v26;
    v30 = NSStringFromSelector(a2);
    v31 = [v25 advertiseDirectOnboarding];
    v32 = [v25 advertiseUpgradeBackgroundDelivered];
    v33 = [v25 advertiseUpgrade];
    currentCountryCode = self->_currentCountryCode;
    *buf = 138546178;
    v44 = self;
    v45 = 2114;
    v46 = v30;
    v47 = 1026;
    v48 = v31;
    v49 = 1026;
    v50 = v32;
    v51 = 1026;
    v52 = v33;
    v53 = 2114;
    v54 = currentCountryCode;
    v55 = 1026;
    v56 = v42;
    v57 = 1026;
    v58 = v24;
    v59 = 1026;
    v60 = v28;
    v61 = 1026;
    v62 = v19;
    v63 = 1026;
    v64 = v27;
    v65 = 1026;
    v66 = 1;
    _os_log_impl(&dword_19197B000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> ECG2 advertiseDirect: %{public}d advertiseUpgradeBackgroundDelivered: %{public}d advertiseUpgrade: %{public}d (Cached MCC: %{public}@, SupportedRegion: %{public}d, meetsMinAge: %{public}d, prevOnboarded: %{public}d, watchHardwareSupported: %{public}d, watchSoftwareSupported: %{public}d, phoneCapable: %{public}d", buf, 0x56u);
  }

  v35 = *MEMORY[0x1E69E9840];

  return v25;
}

- (BOOL)_shouldAdvertiseWithAdvertiseECGVersions:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = *v10;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v3);
        }

        if ([*(*(&v9 + 1) + 8 * i) BOOLValue])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v7 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_shouldAdvertiseElectrocardiogramUpgradeForDevice:(id)a3
{
  v3 = self;
  v9[1] = *MEMORY[0x1E69E9840];
  v4 = [(HKHeartRhythmAvailability *)self _shouldAdvertiseECG2UpgradeWithDevice:a3];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  LOBYTE(v3) = [(HKHeartRhythmAvailability *)v3 _shouldAdvertiseWithAdvertiseECGVersions:v6];

  v7 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)_shouldAdvertiseECG2UpgradeWithDevice:(id)a3
{
  v3 = [(HKHeartRhythmAvailability *)self _ecg2AvailabilityWithWatchDevice:a3];
  v4 = [v3 advertiseUpgrade];

  return v4;
}

- (BOOL)_shouldAdvertiseECG2BackgroundDeliveryCompletedWithDevice:(id)a3
{
  v3 = [(HKHeartRhythmAvailability *)self _ecg2AvailabilityWithWatchDevice:a3];
  v4 = [v3 advertiseUpgradeBackgroundDelivered];

  return v4;
}

- (BOOL)shouldAdvertiseECG2BackgroundDeliveryCompletedForActiveWatch
{
  v3 = [objc_opt_class() activePairedDevice];
  if (v3)
  {
    v4 = [(HKHeartRhythmAvailability *)self _shouldAdvertiseElectrocardiogramUpgradeForDevice:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)electrocardiogramUpgradeBackgroundDeliveryVersionCompletedForActivePhone
{
  v3 = [objc_opt_class() activePairedDevice];
  if (!v3 || (v4 = 1, -[HKHeartRhythmAvailability _ecg2AvailabilityWithPhoneDevice:wasUpgradeBackgroundDelivered:](self, "_ecg2AvailabilityWithPhoneDevice:wasUpgradeBackgroundDelivered:", v3, 1), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 advertiseUpgradeBackgroundDelivered], v5, (v6 & 1) == 0))
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)isElectrocardiogramSupportedOnPairedPhone
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActivePhone"];

  if (!v5)
  {
    v9 = [a1 activePairedDevice];
    if (v9)
    {
      v7 = [a1 _isElectrocardiogramSupportedOnPhone:v9];
    }

    else
    {
      v7 = 0;
    }

    _HKInitializeLogging();
    v11 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = a1;
      v18 = 2114;
      v19 = v13;
      v20 = 1026;
      v21 = v7;
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", &v16, 0x1Cu);
    }

    goto LABEL_9;
  }

  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 BOOLForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActivePhone"];

  _HKInitializeLogging();
  v8 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = NSStringFromSelector(a2);
    v16 = 138543874;
    v17 = a1;
    v18 = 2114;
    v19 = v10;
    v20 = 1026;
    v21 = v7;
    _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", &v16, 0x1Cu);

LABEL_9:
  }

  v14 = *MEMORY[0x1E69E9840];
  return v7;
}

+ (BOOL)isElectrocardiogramSupportedOnPairedPhoneWithGeolocatedCountryCode:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [MEMORY[0x1E695E000] standardUserDefaults];
  v7 = [v6 objectForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActivePhone"];

  if (v7)
  {
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    LOBYTE(v9) = [v8 BOOLForKey:@"HKGlobalDefaultsIsCinnamonEnabledOnActivePhone"];
  }

  else
  {
    v10 = [a1 activePairedDevice];
    if (v10)
    {
      v9 = [a1 _isElectrocardiogramSupportedOnPhone:v10 geolocatedCountryCode:v5];
    }

    else
    {
      v9 = 0;
    }

    _HKInitializeLogging();
    v11 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      v13 = NSStringFromSelector(a2);
      v16 = 138543874;
      v17 = a1;
      v18 = 2114;
      v19 = v13;
      v20 = 1026;
      v21 = v9;
      _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> %{public}d", &v16, 0x1Cu);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v9;
}

+ (BOOL)electrocardiogramSupportedForDevice:(id)a3
{
  v3 = MEMORY[0x1E696AFB0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUUIDString:@"68AB2987-CE75-463C-9EAF-9861B292F01E"];
  v6 = [v4 supportsCapability:v5];

  return v6;
}

+ (BOOL)_isElectrocardiogramSupportedOnPhone:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = getNRDevicePropertySystemVersion();
  v7 = [v5 valueForProperty:v6];
  NRRawVersionFromString = getNRRawVersionFromString(v7);

  IsGreaterThanOrEqual = getNRVersionIsGreaterThanOrEqual(NRRawVersionFromString);
  _HKInitializeLogging();
  v10 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    v12 = NSStringFromSelector(a2);
    v13 = getNRDevicePropertyName();
    v14 = [v5 valueForProperty:v13];
    v17 = 138544130;
    v18 = a1;
    v19 = 2114;
    v20 = v12;
    v21 = 2114;
    v22 = v14;
    v23 = 1026;
    v24 = IsGreaterThanOrEqual;
    _os_log_impl(&dword_19197B000, v11, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> %{public}d)", &v17, 0x26u);
  }

  v15 = *MEMORY[0x1E69E9840];
  return IsGreaterThanOrEqual;
}

+ (BOOL)_isElectrocardiogramSupportedOnPhone:(id)a3 geolocatedCountryCode:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([a1 _isECG2SupportedForCountryCode:v7 andPhoneDevice:v6])
  {
    v8 = 1;
  }

  else
  {
    v8 = [a1 _isECG1SupportedOnCompanionDevice:v6 geolocatedCountryCode:v7];
  }

  return v8;
}

+ (BOOL)_isECG1SupportedOnCompanionDevice:(id)a3 geolocatedCountryCode:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = getNRDevicePropertySystemVersion();
  v9 = [v6 valueForProperty:v8];

  NRRawVersionFromString = getNRRawVersionFromString(v9);
  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 stringForKey:@"HKForceIOSVersionKey"];

  if (v12)
  {
    _HKInitializeLogging();
    v13 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v13;
      v15 = NSStringFromSelector(a2);
      *buf = 138543874;
      v35 = a1;
      v36 = 2114;
      v37 = v15;
      v38 = 2114;
      v39 = v12;
      _os_log_impl(&dword_19197B000, v14, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] Forcing iOS product version: %{public}@)", buf, 0x20u);
    }

    v16 = a2;
    v17 = v12;

    v9 = v17;
  }

  else
  {
    v16 = a2;
  }

  v18 = [objc_msgSend(a1 "deviceRegionFeatureSupportedStateProviderForCurrentWatchOSDevice")];
  v19 = HKElectrocardiogramSupportedStatedForGeolocatedCountryCodeAndIOSVersion(v7, NRRawVersionFromString, 0);

  IsGreaterThanOrEqual = getNRVersionIsGreaterThanOrEqual(NRRawVersionFromString);
  v21 = IsGreaterThanOrEqual;
  if (v19 < 2)
  {
    v22 = IsGreaterThanOrEqual;
  }

  else
  {
    v22 = 0;
  }

  v23 = v18 < 2 && v22;
  _HKInitializeLogging();
  v24 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v25 = v19 < 2;
    v32 = v18 < 2;
    v26 = v24;
    v27 = NSStringFromSelector(v16);
    v28 = getNRDevicePropertyName();
    v29 = [v6 valueForProperty:v28];
    *buf = 138544898;
    v35 = a1;
    v36 = 2114;
    v37 = v27;
    v38 = 2114;
    v39 = v29;
    v40 = 1026;
    v41 = v23;
    v42 = 1026;
    v43 = v21;
    v44 = 1026;
    v45 = v32;
    v46 = 1026;
    v47 = v25;
    _os_log_impl(&dword_19197B000, v26, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> (feature supported: %{public}d, OS supported: %{public}d, region supported: %{public}d, country supported: %{public}d)", buf, 0x38u);
  }

  v30 = *MEMORY[0x1E69E9840];
  return v23;
}

+ (BOOL)isElectrocardiogram2SupportedWithCountryCode:(id)a3
{
  v4 = a3;
  v5 = [a1 activePairedDevice];
  if (v5)
  {
    v6 = [a1 _isECG2SupportedForCountryCode:v4 andWatchDevice:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)isECG1SupportedOnlyForCountryCode:(id)a3
{
  v4 = a3;
  IsAvailableForGeolocatedCountryCode = HKElectrocardiogramIsAvailableForGeolocatedCountryCode(v4);
  v6 = [a1 _ECG2SupportedCountriesOnDevice];
  v7 = [[HKCountrySet alloc] initWithDictionaryRepresentation:v6 provenance:1];
  v8 = [(HKCountrySet *)v7 containsCountryCode:v4];

  return IsAvailableForGeolocatedCountryCode & !v8;
}

+ (BOOL)_isECG2SupportedForCountryCode:(id)a3 andWatchDevice:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a1 _ECG2SupportedCountriesOnDevice];
  v10 = [a1 _ECG2SupportedCountriesOnDevice:v8];

  v11 = [HKCountrySet isRegionCodeFound:v7 availabilityWatch:v10 availabilityPhone:v9];
  _HKInitializeLogging();
  v12 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    v17 = 138544642;
    v18 = a1;
    v19 = 2114;
    v20 = v14;
    v21 = 1026;
    v22 = v11;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v10;
    v27 = 2114;
    v28 = v9;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Comparator result: %{public}i for country code: %{public}@ with watch availability: %{public}@ phone availability: %{public}@", &v17, 0x3Au);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11 == 1;
}

+ (BOOL)_isECG2SupportedForCountryCode:(id)a3 andPhoneDevice:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a1 _ECG2SupportedCountriesOnDevice];
  v10 = [a1 _ECG2SupportedCountriesOnDevice:v8];

  v11 = [HKCountrySet isRegionCodeFound:v7 availabilityWatch:v9 availabilityPhone:v10];
  _HKInitializeLogging();
  v12 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    v17 = 138544642;
    v18 = a1;
    v19 = 2114;
    v20 = v14;
    v21 = 1026;
    v22 = v11;
    v23 = 2114;
    v24 = v7;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Comparator result: %{public}i for country code: %{public}@ with watch availability: %{public}@ phone availability: %{public}@", &v17, 0x3Au);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v11 == 1;
}

+ (id)_ECG2SupportedCountriesOnDevice
{
  v2 = [a1 _availabilityPlistURL];
  v5 = 0;
  v3 = [HKCountrySet regionsWithPlistAtURL:v2 error:&v5];

  return v3;
}

+ (id)_ECG2SupportedCountriesOnDevice:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HKNanoRegistryDeviceUtility electrocardiogramV2AvailableRegionsForDevice:v4];
  if (!v5)
  {
    _HKInitializeLogging();
    v6 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138543618;
      v10 = a1;
      v11 = 2114;
      v12 = v4;
      _os_log_impl(&dword_19197B000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] Nil available regions found for paired device %{public}@", &v9, 0x16u);
    }
  }

  v7 = *MEMORY[0x1E69E9840];

  return v5;
}

+ (id)_availabilityPlistURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [GSSystemRootDirectory() stringByAppendingString:@"/System/Library/Health/AvailableRegions"];
  v4 = [v2 fileURLWithPath:v3 isDirectory:1];

  v5 = [v4 URLByAppendingPathComponent:@"ElectrocardiogramV2Recording"];

  v6 = [v5 URLByAppendingPathExtension:@"plist"];

  return v6;
}

- (void)electrocardiogramAppInstallStateOnActiveWatch:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [objc_opt_class() activePairedDevice];
  if (v6)
  {
    v7 = [(HKHeartRhythmAvailability *)self ecgAppAvailability];
    [v7 appInstallStateOnWatch:v6 completion:v5];
  }

  else
  {
    _HKInitializeLogging();
    v8 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v8;
      v10 = NSStringFromSelector(a2);
      v12 = 138543618;
      v13 = self;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> No active device", &v12, 0x16u);
    }

    v7 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"No active device"];
    v5[2](v5, 0, v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

+ (void)installElectrocardiogramAppOnActiveWatch:(id)a3
{
  v5 = a3;
  v6 = [a1 activePairedDevice];
  if (v6)
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v7 = getASDSystemAppMetadataClass_softClass;
    v25 = getASDSystemAppMetadataClass_softClass;
    if (!getASDSystemAppMetadataClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getASDSystemAppMetadataClass_block_invoke;
      v20 = &unk_1E7378388;
      v21 = &v22;
      __getASDSystemAppMetadataClass_block_invoke(&v17);
      v7 = v23[3];
    }

    v8 = v7;
    _Block_object_dispose(&v22, 8);
    v9 = [[v7 alloc] initWithBundleID:@"com.apple.NanoHeartRhythm"];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2050000000;
    v10 = getASDInstallAppsClass_softClass;
    v25 = getASDInstallAppsClass_softClass;
    if (!getASDInstallAppsClass_softClass)
    {
      v17 = MEMORY[0x1E69E9820];
      v18 = 3221225472;
      v19 = __getASDInstallAppsClass_block_invoke;
      v20 = &unk_1E7378388;
      v21 = &v22;
      __getASDInstallAppsClass_block_invoke(&v17);
      v10 = v23[3];
    }

    v11 = v10;
    _Block_object_dispose(&v22, 8);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __70__HKHeartRhythmAvailability_installElectrocardiogramAppOnActiveWatch___block_invoke;
    v13[3] = &unk_1E7382E70;
    v15 = a1;
    v16 = a2;
    v14 = v5;
    [v10 installApp:v9 onPairedDevice:v6 withCompletionHandler:v13];
  }

  else
  {
    _HKInitializeLogging();
    v12 = HKLogHeartRhythm;
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      [(HKHeartRhythmAvailability *)a1 installElectrocardiogramAppOnActiveWatch:v12, a2];
    }

    v9 = [MEMORY[0x1E696ABC0] hk_error:100 description:@"No active device"];
    (*(v5 + 2))(v5, 0, v9);
  }
}

void __70__HKHeartRhythmAvailability_installElectrocardiogramAppOnActiveWatch___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  _HKInitializeLogging();
  v5 = HKLogHeartRhythm;
  if (v4)
  {
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      __70__HKHeartRhythmAvailability_installElectrocardiogramAppOnActiveWatch___block_invoke_cold_1(a1, v5, v4);
    }

    v6 = *(a1[4] + 16);
  }

  else
  {
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
    {
      v8 = a1[5];
      v7 = a1[6];
      v9 = v5;
      v10 = NSStringFromSelector(v7);
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v10;
      _os_log_impl(&dword_19197B000, v9, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@] -> Scheduled installation of ECG app on watch", &v12, 0x16u);
    }

    v6 = *(a1[4] + 16);
  }

  v6();

  v11 = *MEMORY[0x1E69E9840];
}

+ (int64_t)_electrocardiogramRescindedStatusWithDataSource:(id)a3
{
  v47[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  v6 = [v5 objectForKey:@"HKGlobalDefaultsIsCinnamonSeedExpired"];
  if (v6)
  {
    v7 = v6;
    v8 = [MEMORY[0x1E695E000] standardUserDefaults];
    v9 = [v8 BOOLForKey:@"HKGlobalDefaultsIsCinnamonSeedExpired"];

    if (v9)
    {
      v10 = 2;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v11 = [MEMORY[0x1E695E000] standardUserDefaults];
  v12 = [v11 objectForKey:@"HKGlobalDefaultsIsCinnamonRemotelyDisabled"];
  if (v12)
  {
    v13 = v12;
    v14 = [MEMORY[0x1E695E000] standardUserDefaults];
    v15 = [v14 BOOLForKey:@"HKGlobalDefaultsIsCinnamonRemotelyDisabled"];

    if (v15)
    {
      v10 = 1;
      goto LABEL_15;
    }
  }

  else
  {
  }

  v16 = a2;
  v17 = [objc_opt_class() featureAvailabilityUserDefaults];
  v18 = [v17 dictionaryRepresentation];

  v19 = MEMORY[0x1E695DFD8];
  v47[0] = @"DisableElectrocardiogramRecording";
  v47[1] = @"ExpireElectrocardiogramRecording";
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v47 count:2];
  v21 = [v19 setWithArray:v20];

  v36 = v18;
  v22 = [[HKRemoteFeatureAvailabilityRuleSet alloc] initWithRawValue:v18 dataSource:v4 supportedConditions:v21];
  v23 = [(HKRemoteFeatureAvailabilityRuleSet *)v22 evaluateAll];
  v24 = [v23 objectForKeyedSubscript:@"DisableElectrocardiogramRecording"];
  v25 = [v24 BOOLValue];

  v26 = [v23 objectForKeyedSubscript:@"ExpireElectrocardiogramRecording"];
  v27 = [v26 BOOLValue];

  _HKInitializeLogging();
  v28 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v28;
    v30 = objc_opt_class();
    v35 = v30;
    v31 = NSStringFromSelector(v16);
    v32 = [v4 onboardingCountryCode];
    *buf = 138544386;
    v38 = v30;
    v39 = 2114;
    v40 = v31;
    v41 = 2114;
    v42 = v32;
    v43 = 1026;
    v44 = v25;
    v45 = 1026;
    v46 = v27;
    _os_log_impl(&dword_19197B000, v29, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@ Country: %{public}@] -> Disabled: %{public}d, Expired: %{public}d", buf, 0x2Cu);
  }

  if (v27)
  {
    v10 = 2;
  }

  else
  {
    v10 = v25;
  }

LABEL_15:
  v33 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)_resetElectrocardiogramRescindedStatusCacheWithLock:(BOOL)a3
{
  if (a3)
  {
    os_unfair_lock_lock(&self->_cacheLock);
    electrocardiogramRescindedStatusCache = self->_electrocardiogramRescindedStatusCache;
    self->_electrocardiogramRescindedStatusCache = 0;

    os_unfair_lock_unlock(&self->_cacheLock);
  }

  else
  {
    v5 = self->_electrocardiogramRescindedStatusCache;
    self->_electrocardiogramRescindedStatusCache = 0;
  }
}

- (int64_t)electrocardiogramRecordingRescindedStatus
{
  os_unfair_lock_lock(&self->_cacheLock);
  electrocardiogramRescindedStatusCache = self->_electrocardiogramRescindedStatusCache;
  if (!electrocardiogramRescindedStatusCache)
  {
    v4 = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingCountryCode];
    [(HKActiveWatchRemoteFeatureAvailabilityDataSource *)self->_electrocardiogramAvailabilityDataSource setOnboardingCountryCode:v4];

    v5 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(objc_opt_class(), "_electrocardiogramRescindedStatusWithDataSource:", self->_electrocardiogramAvailabilityDataSource)}];
    v6 = self->_electrocardiogramRescindedStatusCache;
    self->_electrocardiogramRescindedStatusCache = v5;

    electrocardiogramRescindedStatusCache = self->_electrocardiogramRescindedStatusCache;
  }

  v7 = [(NSNumber *)electrocardiogramRescindedStatusCache integerValue];
  os_unfair_lock_unlock(&self->_cacheLock);
  return v7;
}

- (BOOL)isElectrocardiogramOnboardingCompletedForAnyOnboardingVersion
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 objectForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 BOOLForKey:@"HKGlobalDefaultsIsCinnamonOnboardingCompleted"];

    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  else
  {
    v10 = [(HKHeartRhythmAvailability *)self heartRhythmUserDefaults];
    v11 = [v10 objectForKey:@"HKElectrocardiogramOnboardingCompleted"];

    if (v11)
    {
      _HKInitializeLogging();
      v12 = HKLogHeartRhythm;
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v12;
        v14 = objc_opt_class();
        v15 = v14;
        v16 = NSStringFromSelector(a2);
        v20 = 138544130;
        v21 = v14;
        v22 = 2114;
        v23 = v16;
        v24 = 2114;
        v25 = @"HKElectrocardiogramOnboardingCompleted";
        v26 = 2114;
        v27 = v11;
        _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[%{public}@ %{public}@%{public}@] -> %{public}@ (Cached value)", &v20, 0x2Au);
      }

      v17 = 1;
    }

    else
    {
      v18 = [(HKHeartRhythmAvailability *)self electrocardiogramOnboardingHistoryType:2];
      v17 = [v18 count] > 0;
    }

    v19 = *MEMORY[0x1E69E9840];
    return v17;
  }
}

- (id)electrocardiogramOnboardingHistoryType:(int64_t)a3
{
  if (a3 == 2)
  {
    v3 = [(HKHeartRhythmAvailability *)self _electrocardiogramOnboardingHistoryKnown];
  }

  else
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v3 = [(HKHeartRhythmAvailability *)self _electrocardiogramOnboardingHistory];
  }

  a2 = v3;
LABEL_6:

  return a2;
}

- (id)_electrocardiogramOnboardingHistory
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  v4 = [(HKHeartRhythmAvailability *)self keyValueDomain];
  v5 = [v3 _onboardingHistoryWithVersionCompletedKey:@"HKElectrocardiogramOnboardingCompleted" keyValueDomain:v4];

  v6 = [[HKHeartRhythmOnboardingHistory alloc] initWithDictionary:v5];
  _HKInitializeLogging();
  v7 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136446466;
    v11 = "[HKHeartRhythmAvailability _electrocardiogramOnboardingHistory]";
    v12 = 2112;
    v13 = v6;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[%{public}s] AllHistory: %@", &v10, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_electrocardiogramOnboardingHistoryKnown
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [(HKHeartRhythmAvailability *)self _electrocardiogramOnboardingHistory];
  v3 = [v2 filteredHistoryByVersion:+[HKECGOnboardingVersion newestAvailableVersion](HKECGOnboardingVersion filterType:{"newestAvailableVersion"), 1}];
  _HKInitializeLogging();
  v4 = HKLogHeartRhythm;
  if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136446466;
    v8 = "[HKHeartRhythmAvailability _electrocardiogramOnboardingHistoryKnown]";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}s] KnownHistory: %@", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];

  return v3;
}

+ (id)electrocardiogramOnboardingHistoryMaxKnownWithKeyValueDomain:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [objc_opt_class() _onboardingHistoryWithVersionCompletedKey:@"HKElectrocardiogramOnboardingCompleted" keyValueDomain:v3];
  v5 = [v4 allKeys];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  if (!v6)
  {
    goto LABEL_14;
  }

  v7 = v6;
  v8 = *v23;
  v9 = 0xFFFFFFFF80000000;
  do
  {
    for (i = 0; i != v7; ++i)
    {
      if (*v23 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = [*(*(&v22 + 1) + 8 * i) integerValue];
      if (v11 <= v9)
      {
        v12 = v9;
      }

      else
      {
        v12 = v11;
      }

      if (v11 < 5)
      {
        v9 = v12;
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v22 objects:v28 count:16];
  }

  while (v7);
  if (v9 != 0xFFFFFFFF80000000)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", v9];
    v15 = [v4 objectForKeyedSubscript:v14];
    v16 = [(__CFString *)v15 length];
    v17 = &stru_1F05FF230;
    if (v16)
    {
      v17 = v15;
    }

    v26 = v14;
    v27 = v17;
    v18 = MEMORY[0x1E695DF20];
    v19 = v17;
    v13 = [v18 dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  else
  {
LABEL_14:
    v13 = MEMORY[0x1E695E0F8];
  }

  v20 = *MEMORY[0x1E69E9840];

  return v13;
}

+ (id)_onboardingHistoryWithVersionCompletedKey:(id)a3 keyValueDomain:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [a1 _onboardingHistoryKeyFromCompletedKey:v6];
  v23 = 0;
  v9 = [v7 propertyListValueForKey:v8 error:&v23];
  v10 = v23;
  v11 = v10;
  if (v9 || !v10)
  {
    v22 = 0;
    v13 = [v7 numberForKey:v6 error:&v22];
    v14 = v22;
    v19 = [v13 integerValue];

    if (v14)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        +[HKHeartRhythmAvailability _onboardingHistoryWithVersionCompletedKey:keyValueDomain:];
      }
    }

    v20 = v14;
    v15 = [a1 _onboardingCountryCodeKeyFromCompletedKey:v6];
    v21 = 0;
    v16 = [v7 stringForKey:v15 error:&v21];
    v17 = v21;
    if (v17)
    {
      _HKInitializeLogging();
      if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
      {
        +[HKHeartRhythmAvailability _onboardingHistoryWithVersionCompletedKey:keyValueDomain:];
      }
    }

    v12 = [a1 _history:v9 addCurrentOnboardingVersionCompletedIfApplicable:v19 countryCode:v16];
  }

  else
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(HKLogHeartRhythm, OS_LOG_TYPE_ERROR))
    {
      +[HKHeartRhythmAvailability _onboardingHistoryWithVersionCompletedKey:keyValueDomain:];
    }

    v12 = MEMORY[0x1E695E0F8];
  }

  return v12;
}

+ (id)_history:(id)a3 addCurrentOnboardingVersionCompletedIfApplicable:(int64_t)a4 countryCode:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = v8;
  v10 = &stru_1F05FF230;
  if (v8)
  {
    v10 = v8;
  }

  v11 = v10;
  v12 = [MEMORY[0x1E695DF90] dictionary];
  v13 = v12;
  if (v7)
  {
    [v12 addEntriesFromDictionary:v7];
  }

  if (a4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%i", a4];
    [v13 setObject:v11 forKey:v14];
  }

  v15 = [MEMORY[0x1E695DF20] dictionaryWithDictionary:v13];

  return v15;
}

- (BOOL)isAtrialFibrillationDetectionSettingEnabled
{
  v2 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:@"IrregularRhythmNotifications" healthStore:self->_healthStore countryCodeSource:0];
  v3 = [(HKFeatureStatusManager *)v2 featureStatusWithError:0];
  v4 = [v3 onboardingRecord];
  v5 = [v4 featureSettings];
  v6 = [v5 numberForKey:@"Enabled"];
  v7 = [v6 BOOLValue];

  return v7;
}

- (BOOL)isAtrialFibrillationDetectionOnboardingCompleted
{
  v2 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:@"IrregularRhythmNotifications" healthStore:self->_healthStore countryCodeSource:0];
  v3 = [(HKFeatureStatusManager *)v2 featureStatusWithError:0];
  v4 = [v3 isOnboardingRecordPresent];

  return v4;
}

- (BOOL)shouldAdvertiseAtrialFibrillationDetectionForActiveWatch
{
  v2 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:@"IrregularRhythmNotifications" healthStore:self->_healthStore countryCodeSource:1];
  v3 = [(HKFeatureStatusManager *)v2 featureStatusWithError:0];
  v4 = [v3 objectForKeyedSubscript:@"OnboardingPromotion"];
  v5 = [v4 areAllRequirementsSatisfied];

  return v5;
}

- (int64_t)atrialFibrillationDetectionRescindedStatus
{
  v2 = [[HKFeatureStatusManager alloc] initWithFeatureIdentifier:@"IrregularRhythmNotifications" healthStore:self->_healthStore countryCodeSource:0];
  v3 = [(HKFeatureStatusManager *)v2 featureStatusWithError:0];
  v4 = v3;
  if (v3 && [v3 isOnboardingRecordPresent])
  {
    v5 = [v4 objectForKeyedSubscript:@"Usage"];
    v6 = [v5 objectForKeyedSubscript:@"SeedIsNotExpired"];
    v7 = [v6 BOOLValue];

    v8 = [v5 objectForKeyedSubscript:@"FeatureIsNotRemotelyDisabled"];
    v9 = [v8 BOOLValue];

    if (v7)
    {
      v10 = v9 ^ 1u;
    }

    else
    {
      v10 = 2;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)isHeartAgeGatingEnabledOnWatch:currentDate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_meetsMinimumAgeRequirementWithMinimumRequiredAge:currentDate:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_6_1();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_getOnboardingVersionForKey:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

+ (void)_onboardingHistoryKeyFromCompletedKey:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = a1;
  objc_opt_class();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  OUTLINED_FUNCTION_7_0(&dword_19197B000, v4, v5, "[%{public}@ Mapping failed. Unexpected onboarding completion key.", v6, v7, v8, v9, v11);

  v10 = *MEMORY[0x1E69E9840];
}

void __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 56);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __95__HKHeartRhythmAvailability__setOnboardingVersionCompleted_forKey_additionalValues_completion___block_invoke_114_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __80__HKHeartRhythmAvailability__setFirstOnboardingCompletedDate_forKey_completion___block_invoke_116_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_24();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

void __83__HKHeartRhythmAvailability__removeFirstOnboardingCompletedDatesForKey_completion___block_invoke_117_cold_1(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

- (void)electrocardiogramOnboardingCountryCode
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_3(&dword_19197B000, v0, v1, "[%{public}s] Failed to read onboarding country code: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)_electrocardiogramFirstOnboardingCompletedDate
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_3(&dword_19197B000, v0, v1, "[%{public}s] Failed to read first onboarding completed date: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

- (void)isElectrocardiogramAppInstallAllowedForWatch:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyCurrentUserLocale(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:74 description:{@"%s", dlerror()}];

  __break(1u);
}

+ (void)installElectrocardiogramAppOnActiveWatch:(const char *)a3 .cold.1(uint64_t a1, void *a2, const char *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = NSStringFromSelector(a3);
  v8 = 138543618;
  v9 = a1;
  v10 = 2114;
  v11 = v6;
  _os_log_error_impl(&dword_19197B000, v5, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of ECG app on watch due to no active device", &v8, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __70__HKHeartRhythmAvailability_installElectrocardiogramAppOnActiveWatch___block_invoke_cold_1(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = a2;
  v7 = NSStringFromSelector(v4);
  v9 = 138543874;
  v10 = v5;
  v11 = 2114;
  v12 = v7;
  v13 = 2114;
  v14 = a3;
  _os_log_error_impl(&dword_19197B000, v6, OS_LOG_TYPE_ERROR, "[%{public}@ %{public}@] -> Failed to schedule installation of ECG app on watch with error: %{public}@", &v9, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

+ (void)_onboardingHistoryWithVersionCompletedKey:keyValueDomain:.cold.1()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_3(&dword_19197B000, v0, v1, "[%{public}s] Failed to fetch current version: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_onboardingHistoryWithVersionCompletedKey:keyValueDomain:.cold.2()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_3(&dword_19197B000, v0, v1, "[%{public}s] Failed to fetch country code: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

+ (void)_onboardingHistoryWithVersionCompletedKey:keyValueDomain:.cold.3()
{
  v7 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_4_3(&dword_19197B000, v0, v1, "[%{public}s] Failed to fetch onboarding history: %{public}@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x1E69E9840];
}

@end