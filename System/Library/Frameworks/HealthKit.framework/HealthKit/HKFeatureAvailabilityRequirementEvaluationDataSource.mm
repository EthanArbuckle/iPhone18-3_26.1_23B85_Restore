@interface HKFeatureAvailabilityRequirementEvaluationDataSource
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3;
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3 currentCountryCodeProvider:(id)a4 onboardingRecordFallbackProvider:(id)a5;
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3 currentCountryCodeProvider:(id)a4 wristDetectionSettingManager:(id)a5 requirementSatisfactionOverridesDataSource:(id)a6 onboardingRecordFallbackProvider:(id)a7;
- (BOOL)_evaluateRequirementsOverrideWithFeatureIdentifier:(id)a3 requirementIdentifier:(id)a4;
- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)a3 bluetoothDeviceDataSource:(id)a4 privacyPreferencesDataSource:(id)a5 respiratoryPreferencesDataSource:(id)a6 ageGatingDataSource:(id)a7 userNotificationSettingsDataSource:(id)a8 wristDetectionSettingDataSource:(id)a9 devicePairingAndSwitchingNotificationDataSource:(id)a10 darwinNotificationDataSource:(id)a11 watchLowPowerModeDataSource:(id)a12 currentCountryCodeProvider:(id)a13 requirementSatisfactionOverridesDataSource:(id)a14 currentDateDataSource:(id)a15 OSEligibilityDataSource:(id)a16 watchAppInstallationDataSource:(id)a17 onboardingRecordFallbackProvider:(id)a18 userNotificationsDataSource:(id)a19;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)a3 featureAvailabilityProvidingDataSource:(id)a4 featureStatusProvidingDataSource:(id)a5 bluetoothDeviceDataSource:(id)a6 privacyPreferencesDataSource:(id)a7 respiratoryPreferencesDataSource:(id)a8 ageGatingDataSource:(id)a9 userNotificationSettingsDataSource:(id)a10 wristDetectionSettingDataSource:(id)a11 devicePairingAndSwitchingNotificationDataSource:(id)a12 darwinNotificationDataSource:(id)a13 watchLowPowerModeDataSource:(id)a14 currentCountryCodeProvider:(id)a15 requirementSatisfactionOverridesDataSource:(id)a16 currentDateDataSource:(id)a17 OSEligibilityDataSource:(id)a18 watchAppInstallationDataSource:(id)a19 onboardingRecordFallbackProvider:(id)a20 userNotificationsDataSource:(id)a21 healthDataRequirementDataSource:(id)a22 importExclusionDeviceDataSource:(id)a23;
- (id)featureStatusForFeatureWithIdentifier:(id)a3 context:(id)a4 error:(id *)a5;
- (id)healthDataSource;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 countryCode:(id)a4 error:(id *)a5;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (id)onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (id)performLocalEvaluation:(id)a3;
- (id)regionAvailabilityForFeatureWithIdentifier:(id)a3 error:(id *)a4;
- (id)requirementSatisfactionOverridesForFeatureWithIdentifier:(id)a3;
- (void)registerObserverForDeviceCharacteristicAndPairingChanges:(id)a3 block:(id)a4;
- (void)unregisterObserverForDeviceCharacteristicAndPairingChanges:(id)a3;
@end

@implementation HKFeatureAvailabilityRequirementEvaluationDataSource

- (void)registerObserverForDeviceCharacteristicAndPairingChanges:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__HKFeatureAvailabilityRequirementEvaluationDataSource_NanoRegistry__registerObserverForDeviceCharacteristicAndPairingChanges_block___block_invoke;
  aBlock[3] = &unk_1E737C428;
  objc_copyWeak(&v18, &location);
  v8 = v7;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  v10 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self devicePairingAndSwitchingNotificationDataSource];
  [v10 registerObserverForDevicePairingChanges:v6 block:v9];

  v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self darwinNotificationDataSource];
  v12 = getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __133__HKFeatureAvailabilityRequirementEvaluationDataSource_NanoRegistry__registerObserverForDeviceCharacteristicAndPairingChanges_block___block_invoke_2;
  v14[3] = &unk_1E737C450;
  v13 = v9;
  v15 = v13;
  [v11 registerObserver:v6 forKey:v12 newValueHandler:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __133__HKFeatureAvailabilityRequirementEvaluationDataSource_NanoRegistry__registerObserverForDeviceCharacteristicAndPairingChanges_block___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)unregisterObserverForDeviceCharacteristicAndPairingChanges:(id)a3
{
  v4 = a3;
  v5 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self devicePairingAndSwitchingNotificationDataSource];
  [v5 unregisterObserverForDevicePairingChanges:v4];

  v7 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self darwinNotificationDataSource];
  v6 = getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification();
  [v7 unregisterObserver:v4 forKey:v6];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)a3 bluetoothDeviceDataSource:(id)a4 privacyPreferencesDataSource:(id)a5 respiratoryPreferencesDataSource:(id)a6 ageGatingDataSource:(id)a7 userNotificationSettingsDataSource:(id)a8 wristDetectionSettingDataSource:(id)a9 devicePairingAndSwitchingNotificationDataSource:(id)a10 darwinNotificationDataSource:(id)a11 watchLowPowerModeDataSource:(id)a12 currentCountryCodeProvider:(id)a13 requirementSatisfactionOverridesDataSource:(id)a14 currentDateDataSource:(id)a15 OSEligibilityDataSource:(id)a16 watchAppInstallationDataSource:(id)a17 onboardingRecordFallbackProvider:(id)a18 userNotificationsDataSource:(id)a19
{
  v34 = a19;
  v33 = a18;
  v19 = a17;
  v32 = a16;
  v20 = a15;
  v21 = a14;
  v31 = a13;
  v37 = a12;
  v38 = a11;
  v39 = a10;
  v50 = a9;
  v49 = a8;
  v47 = a7;
  v45 = a6;
  v43 = a5;
  v41 = a4;
  v22 = a3;
  v23 = [HKFeatureAvailabilityHealthDataRequirementDataSource alloc];
  v24 = [v22 healthDataRequirementEvaluationProvider];
  v30 = [(HKFeatureAvailabilityHealthDataRequirementDataSource *)v23 initWithEvaluationProvider:v24];

  v25 = [[HKFeatureAvailabilityProvidingDataSource alloc] initWithHealthDataSource:v22];
  v26 = objc_alloc_init(HKFeatureStatusProvidingDataSource);
  v28 = objc_alloc_init(HKImportExclusionDeviceDataSource);
  v36 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self initWithHealthDataSource:v22 featureAvailabilityProvidingDataSource:v25 featureStatusProvidingDataSource:v26 bluetoothDeviceDataSource:v41 privacyPreferencesDataSource:v43 respiratoryPreferencesDataSource:v45 ageGatingDataSource:v47 userNotificationSettingsDataSource:v49 wristDetectionSettingDataSource:v50 devicePairingAndSwitchingNotificationDataSource:v39 darwinNotificationDataSource:v38 watchLowPowerModeDataSource:v37 currentCountryCodeProvider:v31 requirementSatisfactionOverridesDataSource:v21 currentDateDataSource:v20 OSEligibilityDataSource:v32 watchAppInstallationDataSource:v19 onboardingRecordFallbackProvider:v33 userNotificationsDataSource:v34 healthDataRequirementDataSource:v30 importExclusionDeviceDataSource:v28];

  return v36;
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)a3 featureAvailabilityProvidingDataSource:(id)a4 featureStatusProvidingDataSource:(id)a5 bluetoothDeviceDataSource:(id)a6 privacyPreferencesDataSource:(id)a7 respiratoryPreferencesDataSource:(id)a8 ageGatingDataSource:(id)a9 userNotificationSettingsDataSource:(id)a10 wristDetectionSettingDataSource:(id)a11 devicePairingAndSwitchingNotificationDataSource:(id)a12 darwinNotificationDataSource:(id)a13 watchLowPowerModeDataSource:(id)a14 currentCountryCodeProvider:(id)a15 requirementSatisfactionOverridesDataSource:(id)a16 currentDateDataSource:(id)a17 OSEligibilityDataSource:(id)a18 watchAppInstallationDataSource:(id)a19 onboardingRecordFallbackProvider:(id)a20 userNotificationsDataSource:(id)a21 healthDataRequirementDataSource:(id)a22 importExclusionDeviceDataSource:(id)a23
{
  v39 = a3;
  obj = a4;
  v58 = a4;
  v38 = a5;
  v57 = a5;
  v56 = a6;
  v55 = a7;
  v54 = a8;
  v53 = a9;
  v52 = a10;
  v51 = a11;
  v50 = a12;
  v49 = a13;
  v48 = a14;
  v47 = a15;
  v46 = a16;
  v28 = a17;
  v29 = a18;
  v45 = a19;
  v44 = a20;
  v43 = a21;
  v42 = a22;
  v41 = a23;
  v59.receiver = self;
  v59.super_class = HKFeatureAvailabilityRequirementEvaluationDataSource;
  v30 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v59 init];
  if (v30)
  {
    if ([v39 requiresWeakRetention])
    {
      objc_storeWeak(&v30->_weakHealthDataSource, v39);
      v31 = 0;
    }

    else
    {
      objc_storeWeak(&v30->_weakHealthDataSource, 0);
      v31 = v39;
    }

    strongHealthDataSource = v30->_strongHealthDataSource;
    v30->_strongHealthDataSource = v31;

    objc_storeStrong(&v30->_featureAvailabilityProvidingDataSource, obj);
    objc_storeStrong(&v30->_featureStatusProvidingDataSource, v38);
    objc_storeStrong(&v30->_bluetoothDeviceDataSource, a6);
    objc_storeStrong(&v30->_privacyPreferencesDataSource, a7);
    objc_storeStrong(&v30->_respiratoryPreferencesDataSource, a8);
    objc_storeStrong(&v30->_ageGatingDataSource, a9);
    objc_storeStrong(&v30->_userNotificationSettingsDataSource, a10);
    objc_storeStrong(&v30->_wristDetectionSettingDataSource, a11);
    objc_storeStrong(&v30->_devicePairingAndSwitchingNotificationDataSource, a12);
    objc_storeStrong(&v30->_darwinNotificationDataSource, a13);
    objc_storeStrong(&v30->_watchLowPowerModeDataSource, a14);
    objc_storeStrong(&v30->_currentCountryCodeProvider, a15);
    objc_storeStrong(&v30->_requirementSatisfactionOverridesDataSource, a16);
    v33 = _Block_copy(v28);
    currentDateDataSource = v30->_currentDateDataSource;
    v30->_currentDateDataSource = v33;

    objc_storeStrong(&v30->_OSEligibilityDataSource, a18);
    objc_storeStrong(&v30->_watchAppInstallationDataSource, a19);
    objc_storeStrong(&v30->_onboardingRecordFallbackProvider, a20);
    objc_storeStrong(&v30->_userNotificationsDataSource, a21);
    objc_storeStrong(&v30->_healthDataRequirementDataSource, a22);
    objc_storeStrong(&v30->_importExclusionDeviceDataSource, a23);
    v35 = [(HKFeatureStatusProvidingDataSource *)v30->_featureStatusProvidingDataSource dataSource];

    if (!v35)
    {
      [(HKFeatureStatusProvidingDataSource *)v30->_featureStatusProvidingDataSource setDataSource:v30];
    }
  }

  return v30;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3
{
  v4 = a3;
  v5 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:0];
  v6 = [a1 dataSourceWithHealthDataSource:v4 currentCountryCodeProvider:v5];

  return v6;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3 currentCountryCodeProvider:(id)a4 onboardingRecordFallbackProvider:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 wristDetectionSettingManager];
  v12 = [v10 requirementSatisfactionOverridesDataSource];
  v13 = [a1 dataSourceWithHealthDataSource:v10 currentCountryCodeProvider:v9 wristDetectionSettingManager:v11 requirementSatisfactionOverridesDataSource:v12 onboardingRecordFallbackProvider:v8];

  return v13;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)a3 currentCountryCodeProvider:(id)a4 wristDetectionSettingManager:(id)a5 requirementSatisfactionOverridesDataSource:(id)a6 onboardingRecordFallbackProvider:(id)a7
{
  v12 = a3;
  v30 = a7;
  v29 = a6;
  v13 = a5;
  v28 = a4;
  v31 = objc_alloc_init(HKBluetoothDeviceDataSource);
  v14 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v15 = objc_alloc_init(HKDarwinNotificationDataSource);
  v32 = v12;
  v16 = [v12 watchLowPowerModeDataSource];
  v17 = objc_alloc_init(HKOSEligibilityDataSource);
  v27 = [[HKWatchAppInstallationDataSource alloc] initWithDevicePairingAndSwitchingNotificationDataSource:v14];
  if (!v16)
  {
    v16 = [[HKWatchLowPowerModeDataSource alloc] initWithDarwinNotificationDataSource:v15 devicePairingAndSwitchingNotificationDataSource:v14];
  }

  v25 = objc_alloc_init(HKUserNotificationsDataSource);
  v18 = [a1 alloc];
  v24 = +[HKUserDefaultsDataSource privacyPreferencesDataSource];
  v23 = +[HKUserDefaultsDataSource respiratoryPreferencesDataSource];
  v19 = +[HKUserDefaultsDataSource ageGatingDataSource];
  v20 = +[HKUserDefaultsDataSource sharedHealthPreferencesDataSource];
  v21 = [[HKWristDetectionSettingDataSource alloc] initWithWristDetectionSettingManager:v13];

  v26 = [v18 initWithHealthDataSource:v32 bluetoothDeviceDataSource:v31 privacyPreferencesDataSource:v24 respiratoryPreferencesDataSource:v23 ageGatingDataSource:v19 userNotificationSettingsDataSource:v20 wristDetectionSettingDataSource:v21 devicePairingAndSwitchingNotificationDataSource:v14 darwinNotificationDataSource:v15 watchLowPowerModeDataSource:v16 currentCountryCodeProvider:v28 requirementSatisfactionOverridesDataSource:v29 currentDateDataSource:&__block_literal_global_121 OSEligibilityDataSource:v17 watchAppInstallationDataSource:v27 onboardingRecordFallbackProvider:v30 userNotificationsDataSource:v25];

  return v26;
}

- (id)healthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);
  strongHealthDataSource = WeakRetained;
  if (WeakRetained || (strongHealthDataSource = self->_strongHealthDataSource) != 0)
  {
    v5 = strongHealthDataSource;
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKAnalyticsDataSource *)self healthDataSource];
    }

    v5 = 0;
  }

  return v5;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self onboardingRecordForFeatureWithIdentifier:v7 error:a4];
  v9 = v8;
  if (!v8)
  {
    v4 = 0;
    goto LABEL_28;
  }

  v10 = [v8 onboardingState];
  if ((v10 - 2) >= 4)
  {
    if (v10 != 1)
    {
      goto LABEL_28;
    }

    v11 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self currentCountryCode];
    v21 = self;
    v22 = v7;
    v23 = v11;
  }

  else
  {
    v11 = [v9 onboardedCountryCodesForOnboardingState];
    if ([v11 count])
    {
      v28 = v11;
      v29 = v9;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = v11;
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = *v32;
        v16 = -1;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v32 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v18 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self onboardingEligibilityForFeatureWithIdentifier:v7 countryCode:*(*(&v31 + 1) + 8 * i) error:a4];
            if (!v18)
            {

              v4 = 0;
              goto LABEL_26;
            }

            v19 = v18;
            v20 = [v18 ineligibilityReasons];
            if (!v14)
            {
              v14 = [v19 countryAvailabilityVersion];
            }

            v16 &= v20;
          }

          v13 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v14 = 0;
        v16 = -1;
      }

      v24 = [HKFeatureAvailabilityOnboardingEligibility alloc];
      if (v14)
      {
        v25 = v14;
      }

      else
      {
        v25 = @"Unknown";
      }

      v4 = [(HKFeatureAvailabilityOnboardingEligibility *)v24 initWithIneligibilityReasons:v16 countryAvailabilityVersion:v25];
LABEL_26:

      v11 = v28;
      v9 = v29;
      goto LABEL_27;
    }

    v21 = self;
    v22 = v7;
    v23 = 0;
  }

  v4 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)v21 onboardingEligibilityForFeatureWithIdentifier:v22 countryCode:v23 error:a4];
LABEL_27:

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)a3 countryCode:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:v8];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 onboardingEligibilityForCountryCode:v9 error:a5];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", v8];
    v15 = [v13 hk_error:110 description:v14];
    v16 = v15;
    if (v15)
    {
      if (a5)
      {
        v17 = v15;
        *a5 = v16;
      }

      else
      {
        _HKLogDroppedError(v15);
      }
    }

    v12 = 0;
  }

  return v12;
}

- (id)onboardingRecordForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v22 = 0;
    v9 = [v7 featureOnboardingRecordWithError:&v22];
    v10 = v22;
    onboardingRecordFallbackProvider = self->_onboardingRecordFallbackProvider;
    if (v9)
    {
      [(HKFeatureOnboardingRecordFallbackProviding *)onboardingRecordFallbackProvider updateForRetrievedOnboardingRecord:v9 featureIdentifier:v6];
    }

    else
    {
      v9 = [(HKFeatureOnboardingRecordFallbackProviding *)onboardingRecordFallbackProvider fallbackOnboardingRecordForError:v10 featureIdentifier:v6];
      if (!v9)
      {
        v17 = v10;
        v18 = v17;
        if (v17)
        {
          if (a4)
          {
            v19 = v17;
            *a4 = v18;
          }

          else
          {
            _HKLogDroppedError(v17);
          }
        }
      }
    }

    v20 = v9;
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", v6];
    v14 = [v12 hk_error:110 description:v13];
    v15 = v14;
    if (v14)
    {
      if (a4)
      {
        v16 = v14;
        *a4 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v20 = 0;
  }

  return v20;
}

- (id)regionAvailabilityForFeatureWithIdentifier:(id)a3 error:(id *)a4
{
  v6 = a3;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:v6];
  v8 = v7;
  if (v7)
  {
    v21 = 0;
    v9 = [v7 regionAvailabilityWithError:&v21];
    v10 = v21;
    v11 = v10;
    if (!v9)
    {
      v12 = v10;
      v13 = v12;
      if (v12)
      {
        if (a4)
        {
          v14 = v12;
          *a4 = v13;
        }

        else
        {
          _HKLogDroppedError(v12);
        }
      }
    }
  }

  else
  {
    v15 = MEMORY[0x1E696ABC0];
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", v6];
    v17 = [v15 hk_error:110 description:v16];
    v18 = v17;
    if (v17)
    {
      if (a4)
      {
        v19 = v17;
        *a4 = v18;
      }

      else
      {
        _HKLogDroppedError(v17);
      }
    }

    v9 = 0;
  }

  return v9;
}

- (id)featureStatusForFeatureWithIdentifier:(id)a3 context:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = [(HKFeatureStatusProvidingDataSource *)self->_featureStatusProvidingDataSource featureStatusProvidingForFeatureIdentifier:v8 context:a4];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 featureStatusWithError:a5];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"No feature status manager available for feature with identifier %@", v8];
    v14 = [v12 hk_error:110 description:v13];
    v15 = v14;
    if (v14)
    {
      if (a5)
      {
        v16 = v14;
        *a5 = v15;
      }

      else
      {
        _HKLogDroppedError(v14);
      }
    }

    v11 = 0;
  }

  return v11;
}

- (id)performLocalEvaluation:(id)a3
{
  v4 = a3;
  v5 = [HKFeatureAvailabilityLocalRequirementEvaluationContext alloc];
  v6 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self healthDataSource];
  healthDataRequirementDataSource = self->_healthDataRequirementDataSource;
  v8 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)v5 initWithHealthDataSource:v6 featureAvailabilityProvidingDataSource:self->_featureAvailabilityProvidingDataSource featureStatusProvidingDataSource:self->_featureStatusProvidingDataSource bluetoothDeviceDataSource:self->_bluetoothDeviceDataSource privacyPreferencesDataSource:self->_privacyPreferencesDataSource respiratoryPreferencesDataSource:self->_respiratoryPreferencesDataSource ageGatingDataSource:self->_ageGatingDataSource userNotificationSettingsDataSource:self->_userNotificationSettingsDataSource wristDetectionSettingDataSource:self->_wristDetectionSettingDataSource devicePairingAndSwitchingNotificationDataSource:self->_devicePairingAndSwitchingNotificationDataSource darwinNotificationDataSource:self->_darwinNotificationDataSource watchLowPowerModeDataSource:self->_watchLowPowerModeDataSource currentCountryCodeProvider:self->_currentCountryCodeProvider requirementSatisfactionOverridesDataSource:self->_requirementSatisfactionOverridesDataSource currentDateDataSource:self->_currentDateDataSource OSEligibilityDataSource:self->_OSEligibilityDataSource watchAppInstallationDataSource:self->_watchAppInstallationDataSource onboardingRecordFallbackProvider:self->_onboardingRecordFallbackProvider userNotificationsDataSource:self->_userNotificationsDataSource healthDataRequirementDataSource:healthDataRequirementDataSource importExclusionDeviceDataSource:self->_importExclusionDeviceDataSource];

  v9 = v4[2](v4, v8);

  return v9;
}

- (BOOL)_evaluateRequirementsOverrideWithFeatureIdentifier:(id)a3 requirementIdentifier:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility);
  v9 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self importExclusionDeviceDataSource];
  v10 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self behavior];
  v11 = [(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility *)v8 isRequirementOverridable:v6 featureIdentifier:v7 importExclusionDeviceDataSource:v9 behavior:v10];

  return v11;
}

- (id)requirementSatisfactionOverridesForFeatureWithIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [HKFeatureAvailabilityRequirementSatisfactionOverrides alloc];
  v6 = [(HKUserDefaultsDataSource *)self->_requirementSatisfactionOverridesDataSource userDefaults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__HKFeatureAvailabilityRequirementEvaluationDataSource_requirementSatisfactionOverridesForFeatureWithIdentifier___block_invoke;
  v9[3] = &unk_1E73841F0;
  objc_copyWeak(&v10, &location);
  v7 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 initWithUserDefaults:v6 featureIdentifier:v4 requirementOverridableEvaluator:v9];
  objc_destroyWeak(&v10);

  objc_destroyWeak(&location);

  return v7;
}

uint64_t __113__HKFeatureAvailabilityRequirementEvaluationDataSource_requirementSatisfactionOverridesForFeatureWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _evaluateRequirementsOverrideWithFeatureIdentifier:v6 requirementIdentifier:v5];

  return v8;
}

- (id)isWatchAppInstalledWithBundleIdentifier:(id)a3 error:(id *)a4
{
  watchAppInstallationDataSource = self->_watchAppInstallationDataSource;
  v13 = 0;
  v6 = [(HKWatchAppInstallationDataSource *)watchAppInstallationDataSource isWatchAppInstalledWithBundleIdentifier:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (!v6)
  {
    v9 = v7;
    v10 = v9;
    if (v9)
    {
      if (a4)
      {
        v11 = v9;
        *a4 = v10;
      }

      else
      {
        _HKLogDroppedError(v9);
      }
    }
  }

  return v6;
}

- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_weakHealthDataSource);

  return WeakRetained;
}

@end