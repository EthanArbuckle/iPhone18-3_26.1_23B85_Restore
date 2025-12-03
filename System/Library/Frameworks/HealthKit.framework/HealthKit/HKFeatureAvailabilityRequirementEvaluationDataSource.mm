@interface HKFeatureAvailabilityRequirementEvaluationDataSource
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source;
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source currentCountryCodeProvider:(id)provider onboardingRecordFallbackProvider:(id)fallbackProvider;
+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source currentCountryCodeProvider:(id)provider wristDetectionSettingManager:(id)manager requirementSatisfactionOverridesDataSource:(id)dataSource onboardingRecordFallbackProvider:(id)fallbackProvider;
- (BOOL)_evaluateRequirementsOverrideWithFeatureIdentifier:(id)identifier requirementIdentifier:(id)requirementIdentifier;
- (HKFeatureAvailabilityHealthDataSource)weakHealthDataSource;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)source bluetoothDeviceDataSource:(id)dataSource privacyPreferencesDataSource:(id)preferencesDataSource respiratoryPreferencesDataSource:(id)respiratoryPreferencesDataSource ageGatingDataSource:(id)gatingDataSource userNotificationSettingsDataSource:(id)settingsDataSource wristDetectionSettingDataSource:(id)settingDataSource devicePairingAndSwitchingNotificationDataSource:(id)self0 darwinNotificationDataSource:(id)self1 watchLowPowerModeDataSource:(id)self2 currentCountryCodeProvider:(id)self3 requirementSatisfactionOverridesDataSource:(id)self4 currentDateDataSource:(id)self5 OSEligibilityDataSource:(id)self6 watchAppInstallationDataSource:(id)self7 onboardingRecordFallbackProvider:(id)self8 userNotificationsDataSource:(id)self9;
- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)source featureAvailabilityProvidingDataSource:(id)dataSource featureStatusProvidingDataSource:(id)providingDataSource bluetoothDeviceDataSource:(id)deviceDataSource privacyPreferencesDataSource:(id)preferencesDataSource respiratoryPreferencesDataSource:(id)respiratoryPreferencesDataSource ageGatingDataSource:(id)gatingDataSource userNotificationSettingsDataSource:(id)self0 wristDetectionSettingDataSource:(id)self1 devicePairingAndSwitchingNotificationDataSource:(id)self2 darwinNotificationDataSource:(id)self3 watchLowPowerModeDataSource:(id)self4 currentCountryCodeProvider:(id)self5 requirementSatisfactionOverridesDataSource:(id)self6 currentDateDataSource:(id)self7 OSEligibilityDataSource:(id)self8 watchAppInstallationDataSource:(id)self9 onboardingRecordFallbackProvider:(id)fallbackProvider userNotificationsDataSource:(id)notificationsDataSource healthDataRequirementDataSource:(id)requirementDataSource importExclusionDeviceDataSource:(id)exclusionDeviceDataSource;
- (id)featureStatusForFeatureWithIdentifier:(id)identifier context:(id)context error:(id *)error;
- (id)healthDataSource;
- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier countryCode:(id)code error:(id *)error;
- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier error:(id *)error;
- (id)onboardingRecordForFeatureWithIdentifier:(id)identifier error:(id *)error;
- (id)performLocalEvaluation:(id)evaluation;
- (id)regionAvailabilityForFeatureWithIdentifier:(id)identifier error:(id *)error;
- (id)requirementSatisfactionOverridesForFeatureWithIdentifier:(id)identifier;
- (void)registerObserverForDeviceCharacteristicAndPairingChanges:(id)changes block:(id)block;
- (void)unregisterObserverForDeviceCharacteristicAndPairingChanges:(id)changes;
@end

@implementation HKFeatureAvailabilityRequirementEvaluationDataSource

- (void)registerObserverForDeviceCharacteristicAndPairingChanges:(id)changes block:(id)block
{
  changesCopy = changes;
  blockCopy = block;
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __133__HKFeatureAvailabilityRequirementEvaluationDataSource_NanoRegistry__registerObserverForDeviceCharacteristicAndPairingChanges_block___block_invoke;
  aBlock[3] = &unk_1E737C428;
  objc_copyWeak(&v18, &location);
  v8 = blockCopy;
  v17 = v8;
  v9 = _Block_copy(aBlock);
  devicePairingAndSwitchingNotificationDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self devicePairingAndSwitchingNotificationDataSource];
  [devicePairingAndSwitchingNotificationDataSource registerObserverForDevicePairingChanges:changesCopy block:v9];

  darwinNotificationDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self darwinNotificationDataSource];
  v12 = getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification();
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __133__HKFeatureAvailabilityRequirementEvaluationDataSource_NanoRegistry__registerObserverForDeviceCharacteristicAndPairingChanges_block___block_invoke_2;
  v14[3] = &unk_1E737C450;
  v13 = v9;
  v15 = v13;
  [darwinNotificationDataSource registerObserver:changesCopy forKey:v12 newValueHandler:v14];

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

- (void)unregisterObserverForDeviceCharacteristicAndPairingChanges:(id)changes
{
  changesCopy = changes;
  devicePairingAndSwitchingNotificationDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self devicePairingAndSwitchingNotificationDataSource];
  [devicePairingAndSwitchingNotificationDataSource unregisterObserverForDevicePairingChanges:changesCopy];

  darwinNotificationDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self darwinNotificationDataSource];
  v6 = getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification();
  [darwinNotificationDataSource unregisterObserver:changesCopy forKey:v6];
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)source bluetoothDeviceDataSource:(id)dataSource privacyPreferencesDataSource:(id)preferencesDataSource respiratoryPreferencesDataSource:(id)respiratoryPreferencesDataSource ageGatingDataSource:(id)gatingDataSource userNotificationSettingsDataSource:(id)settingsDataSource wristDetectionSettingDataSource:(id)settingDataSource devicePairingAndSwitchingNotificationDataSource:(id)self0 darwinNotificationDataSource:(id)self1 watchLowPowerModeDataSource:(id)self2 currentCountryCodeProvider:(id)self3 requirementSatisfactionOverridesDataSource:(id)self4 currentDateDataSource:(id)self5 OSEligibilityDataSource:(id)self6 watchAppInstallationDataSource:(id)self7 onboardingRecordFallbackProvider:(id)self8 userNotificationsDataSource:(id)self9
{
  notificationsDataSourceCopy = notificationsDataSource;
  fallbackProviderCopy = fallbackProvider;
  installationDataSourceCopy = installationDataSource;
  eligibilityDataSourceCopy = eligibilityDataSource;
  dateDataSourceCopy = dateDataSource;
  overridesDataSourceCopy = overridesDataSource;
  providerCopy = provider;
  modeDataSourceCopy = modeDataSource;
  darwinNotificationDataSourceCopy = darwinNotificationDataSource;
  notificationDataSourceCopy = notificationDataSource;
  settingDataSourceCopy = settingDataSource;
  settingsDataSourceCopy = settingsDataSource;
  gatingDataSourceCopy = gatingDataSource;
  respiratoryPreferencesDataSourceCopy = respiratoryPreferencesDataSource;
  preferencesDataSourceCopy = preferencesDataSource;
  dataSourceCopy = dataSource;
  sourceCopy = source;
  v23 = [HKFeatureAvailabilityHealthDataRequirementDataSource alloc];
  healthDataRequirementEvaluationProvider = [sourceCopy healthDataRequirementEvaluationProvider];
  v30 = [(HKFeatureAvailabilityHealthDataRequirementDataSource *)v23 initWithEvaluationProvider:healthDataRequirementEvaluationProvider];

  v25 = [[HKFeatureAvailabilityProvidingDataSource alloc] initWithHealthDataSource:sourceCopy];
  v26 = objc_alloc_init(HKFeatureStatusProvidingDataSource);
  v28 = objc_alloc_init(HKImportExclusionDeviceDataSource);
  v36 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self initWithHealthDataSource:sourceCopy featureAvailabilityProvidingDataSource:v25 featureStatusProvidingDataSource:v26 bluetoothDeviceDataSource:dataSourceCopy privacyPreferencesDataSource:preferencesDataSourceCopy respiratoryPreferencesDataSource:respiratoryPreferencesDataSourceCopy ageGatingDataSource:gatingDataSourceCopy userNotificationSettingsDataSource:settingsDataSourceCopy wristDetectionSettingDataSource:settingDataSourceCopy devicePairingAndSwitchingNotificationDataSource:notificationDataSourceCopy darwinNotificationDataSource:darwinNotificationDataSourceCopy watchLowPowerModeDataSource:modeDataSourceCopy currentCountryCodeProvider:providerCopy requirementSatisfactionOverridesDataSource:overridesDataSourceCopy currentDateDataSource:dateDataSourceCopy OSEligibilityDataSource:eligibilityDataSourceCopy watchAppInstallationDataSource:installationDataSourceCopy onboardingRecordFallbackProvider:fallbackProviderCopy userNotificationsDataSource:notificationsDataSourceCopy healthDataRequirementDataSource:v30 importExclusionDeviceDataSource:v28];

  return v36;
}

- (HKFeatureAvailabilityRequirementEvaluationDataSource)initWithHealthDataSource:(id)source featureAvailabilityProvidingDataSource:(id)dataSource featureStatusProvidingDataSource:(id)providingDataSource bluetoothDeviceDataSource:(id)deviceDataSource privacyPreferencesDataSource:(id)preferencesDataSource respiratoryPreferencesDataSource:(id)respiratoryPreferencesDataSource ageGatingDataSource:(id)gatingDataSource userNotificationSettingsDataSource:(id)self0 wristDetectionSettingDataSource:(id)self1 devicePairingAndSwitchingNotificationDataSource:(id)self2 darwinNotificationDataSource:(id)self3 watchLowPowerModeDataSource:(id)self4 currentCountryCodeProvider:(id)self5 requirementSatisfactionOverridesDataSource:(id)self6 currentDateDataSource:(id)self7 OSEligibilityDataSource:(id)self8 watchAppInstallationDataSource:(id)self9 onboardingRecordFallbackProvider:(id)fallbackProvider userNotificationsDataSource:(id)notificationsDataSource healthDataRequirementDataSource:(id)requirementDataSource importExclusionDeviceDataSource:(id)exclusionDeviceDataSource
{
  sourceCopy = source;
  obj = dataSource;
  dataSourceCopy = dataSource;
  providingDataSourceCopy = providingDataSource;
  providingDataSourceCopy2 = providingDataSource;
  deviceDataSourceCopy = deviceDataSource;
  preferencesDataSourceCopy = preferencesDataSource;
  respiratoryPreferencesDataSourceCopy = respiratoryPreferencesDataSource;
  gatingDataSourceCopy = gatingDataSource;
  settingsDataSourceCopy = settingsDataSource;
  settingDataSourceCopy = settingDataSource;
  notificationDataSourceCopy = notificationDataSource;
  darwinNotificationDataSourceCopy = darwinNotificationDataSource;
  modeDataSourceCopy = modeDataSource;
  providerCopy = provider;
  overridesDataSourceCopy = overridesDataSource;
  dateDataSourceCopy = dateDataSource;
  eligibilityDataSourceCopy = eligibilityDataSource;
  installationDataSourceCopy = installationDataSource;
  fallbackProviderCopy = fallbackProvider;
  notificationsDataSourceCopy = notificationsDataSource;
  requirementDataSourceCopy = requirementDataSource;
  exclusionDeviceDataSourceCopy = exclusionDeviceDataSource;
  v59.receiver = self;
  v59.super_class = HKFeatureAvailabilityRequirementEvaluationDataSource;
  v30 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)&v59 init];
  if (v30)
  {
    if ([sourceCopy requiresWeakRetention])
    {
      objc_storeWeak(&v30->_weakHealthDataSource, sourceCopy);
      v31 = 0;
    }

    else
    {
      objc_storeWeak(&v30->_weakHealthDataSource, 0);
      v31 = sourceCopy;
    }

    strongHealthDataSource = v30->_strongHealthDataSource;
    v30->_strongHealthDataSource = v31;

    objc_storeStrong(&v30->_featureAvailabilityProvidingDataSource, obj);
    objc_storeStrong(&v30->_featureStatusProvidingDataSource, providingDataSourceCopy);
    objc_storeStrong(&v30->_bluetoothDeviceDataSource, deviceDataSource);
    objc_storeStrong(&v30->_privacyPreferencesDataSource, preferencesDataSource);
    objc_storeStrong(&v30->_respiratoryPreferencesDataSource, respiratoryPreferencesDataSource);
    objc_storeStrong(&v30->_ageGatingDataSource, gatingDataSource);
    objc_storeStrong(&v30->_userNotificationSettingsDataSource, settingsDataSource);
    objc_storeStrong(&v30->_wristDetectionSettingDataSource, settingDataSource);
    objc_storeStrong(&v30->_devicePairingAndSwitchingNotificationDataSource, notificationDataSource);
    objc_storeStrong(&v30->_darwinNotificationDataSource, darwinNotificationDataSource);
    objc_storeStrong(&v30->_watchLowPowerModeDataSource, modeDataSource);
    objc_storeStrong(&v30->_currentCountryCodeProvider, provider);
    objc_storeStrong(&v30->_requirementSatisfactionOverridesDataSource, overridesDataSource);
    v33 = _Block_copy(dateDataSourceCopy);
    currentDateDataSource = v30->_currentDateDataSource;
    v30->_currentDateDataSource = v33;

    objc_storeStrong(&v30->_OSEligibilityDataSource, eligibilityDataSource);
    objc_storeStrong(&v30->_watchAppInstallationDataSource, installationDataSource);
    objc_storeStrong(&v30->_onboardingRecordFallbackProvider, fallbackProvider);
    objc_storeStrong(&v30->_userNotificationsDataSource, notificationsDataSource);
    objc_storeStrong(&v30->_healthDataRequirementDataSource, requirementDataSource);
    objc_storeStrong(&v30->_importExclusionDeviceDataSource, exclusionDeviceDataSource);
    dataSource = [(HKFeatureStatusProvidingDataSource *)v30->_featureStatusProvidingDataSource dataSource];

    if (!dataSource)
    {
      [(HKFeatureStatusProvidingDataSource *)v30->_featureStatusProvidingDataSource setDataSource:v30];
    }
  }

  return v30;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source
{
  sourceCopy = source;
  v5 = [[HKFixedCurrentCountryCodeProvider alloc] initWithCountryCode:0];
  v6 = [self dataSourceWithHealthDataSource:sourceCopy currentCountryCodeProvider:v5];

  return v6;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source currentCountryCodeProvider:(id)provider onboardingRecordFallbackProvider:(id)fallbackProvider
{
  fallbackProviderCopy = fallbackProvider;
  providerCopy = provider;
  sourceCopy = source;
  wristDetectionSettingManager = [sourceCopy wristDetectionSettingManager];
  requirementSatisfactionOverridesDataSource = [sourceCopy requirementSatisfactionOverridesDataSource];
  v13 = [self dataSourceWithHealthDataSource:sourceCopy currentCountryCodeProvider:providerCopy wristDetectionSettingManager:wristDetectionSettingManager requirementSatisfactionOverridesDataSource:requirementSatisfactionOverridesDataSource onboardingRecordFallbackProvider:fallbackProviderCopy];

  return v13;
}

+ (HKFeatureAvailabilityRequirementEvaluationDataSource)dataSourceWithHealthDataSource:(id)source currentCountryCodeProvider:(id)provider wristDetectionSettingManager:(id)manager requirementSatisfactionOverridesDataSource:(id)dataSource onboardingRecordFallbackProvider:(id)fallbackProvider
{
  sourceCopy = source;
  fallbackProviderCopy = fallbackProvider;
  dataSourceCopy = dataSource;
  managerCopy = manager;
  providerCopy = provider;
  v31 = objc_alloc_init(HKBluetoothDeviceDataSource);
  v14 = objc_alloc_init(HKNanoRegistryPairingAndSwitchingNotificationDataSource);
  v15 = objc_alloc_init(HKDarwinNotificationDataSource);
  v32 = sourceCopy;
  watchLowPowerModeDataSource = [sourceCopy watchLowPowerModeDataSource];
  v17 = objc_alloc_init(HKOSEligibilityDataSource);
  v27 = [[HKWatchAppInstallationDataSource alloc] initWithDevicePairingAndSwitchingNotificationDataSource:v14];
  if (!watchLowPowerModeDataSource)
  {
    watchLowPowerModeDataSource = [[HKWatchLowPowerModeDataSource alloc] initWithDarwinNotificationDataSource:v15 devicePairingAndSwitchingNotificationDataSource:v14];
  }

  v25 = objc_alloc_init(HKUserNotificationsDataSource);
  v18 = [self alloc];
  v24 = +[HKUserDefaultsDataSource privacyPreferencesDataSource];
  v23 = +[HKUserDefaultsDataSource respiratoryPreferencesDataSource];
  v19 = +[HKUserDefaultsDataSource ageGatingDataSource];
  v20 = +[HKUserDefaultsDataSource sharedHealthPreferencesDataSource];
  v21 = [[HKWristDetectionSettingDataSource alloc] initWithWristDetectionSettingManager:managerCopy];

  v26 = [v18 initWithHealthDataSource:v32 bluetoothDeviceDataSource:v31 privacyPreferencesDataSource:v24 respiratoryPreferencesDataSource:v23 ageGatingDataSource:v19 userNotificationSettingsDataSource:v20 wristDetectionSettingDataSource:v21 devicePairingAndSwitchingNotificationDataSource:v14 darwinNotificationDataSource:v15 watchLowPowerModeDataSource:watchLowPowerModeDataSource currentCountryCodeProvider:providerCopy requirementSatisfactionOverridesDataSource:dataSourceCopy currentDateDataSource:&__block_literal_global_121 OSEligibilityDataSource:v17 watchAppInstallationDataSource:v27 onboardingRecordFallbackProvider:fallbackProviderCopy userNotificationsDataSource:v25];

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

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v8 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self onboardingRecordForFeatureWithIdentifier:identifierCopy error:error];
  v9 = v8;
  if (!v8)
  {
    v4 = 0;
    goto LABEL_28;
  }

  onboardingState = [v8 onboardingState];
  if ((onboardingState - 2) >= 4)
  {
    if (onboardingState != 1)
    {
      goto LABEL_28;
    }

    currentCountryCode = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self currentCountryCode];
    selfCopy2 = self;
    v22 = identifierCopy;
    v23 = currentCountryCode;
  }

  else
  {
    currentCountryCode = [v9 onboardedCountryCodesForOnboardingState];
    if ([currentCountryCode count])
    {
      v28 = currentCountryCode;
      v29 = v9;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      obj = currentCountryCode;
      v12 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v12)
      {
        v13 = v12;
        countryAvailabilityVersion = 0;
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

            v18 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self onboardingEligibilityForFeatureWithIdentifier:identifierCopy countryCode:*(*(&v31 + 1) + 8 * i) error:error];
            if (!v18)
            {

              v4 = 0;
              goto LABEL_26;
            }

            v19 = v18;
            ineligibilityReasons = [v18 ineligibilityReasons];
            if (!countryAvailabilityVersion)
            {
              countryAvailabilityVersion = [v19 countryAvailabilityVersion];
            }

            v16 &= ineligibilityReasons;
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
        countryAvailabilityVersion = 0;
        v16 = -1;
      }

      v24 = [HKFeatureAvailabilityOnboardingEligibility alloc];
      if (countryAvailabilityVersion)
      {
        v25 = countryAvailabilityVersion;
      }

      else
      {
        v25 = @"Unknown";
      }

      v4 = [(HKFeatureAvailabilityOnboardingEligibility *)v24 initWithIneligibilityReasons:v16 countryAvailabilityVersion:v25];
LABEL_26:

      currentCountryCode = v28;
      v9 = v29;
      goto LABEL_27;
    }

    selfCopy2 = self;
    v22 = identifierCopy;
    v23 = 0;
  }

  v4 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)selfCopy2 onboardingEligibilityForFeatureWithIdentifier:v22 countryCode:v23 error:error];
LABEL_27:

LABEL_28:
  v26 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)onboardingEligibilityForFeatureWithIdentifier:(id)identifier countryCode:(id)code error:(id *)error
{
  identifierCopy = identifier;
  codeCopy = code;
  v10 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 onboardingEligibilityForCountryCode:codeCopy error:error];
  }

  else
  {
    v13 = MEMORY[0x1E696ABC0];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", identifierCopy];
    v15 = [v13 hk_error:110 description:identifierCopy];
    v16 = v15;
    if (v15)
    {
      if (error)
      {
        v17 = v15;
        *error = v16;
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

- (id)onboardingRecordForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
  v8 = v7;
  if (v7)
  {
    v22 = 0;
    v9 = [v7 featureOnboardingRecordWithError:&v22];
    v10 = v22;
    onboardingRecordFallbackProvider = self->_onboardingRecordFallbackProvider;
    if (v9)
    {
      [(HKFeatureOnboardingRecordFallbackProviding *)onboardingRecordFallbackProvider updateForRetrievedOnboardingRecord:v9 featureIdentifier:identifierCopy];
    }

    else
    {
      v9 = [(HKFeatureOnboardingRecordFallbackProviding *)onboardingRecordFallbackProvider fallbackOnboardingRecordForError:v10 featureIdentifier:identifierCopy];
      if (!v9)
      {
        v17 = v10;
        v18 = v17;
        if (v17)
        {
          if (error)
          {
            v19 = v17;
            *error = v18;
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
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", identifierCopy];
    v14 = [v12 hk_error:110 description:identifierCopy];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
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

- (id)regionAvailabilityForFeatureWithIdentifier:(id)identifier error:(id *)error
{
  identifierCopy = identifier;
  v7 = [(HKFeatureAvailabilityProvidingDataSource *)self->_featureAvailabilityProvidingDataSource featureAvailabilityProvidingForFeatureIdentifier:identifierCopy];
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
        if (error)
        {
          v14 = v12;
          *error = v13;
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
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No extension found for feature with identifier %@", identifierCopy];
    v17 = [v15 hk_error:110 description:identifierCopy];
    v18 = v17;
    if (v17)
    {
      if (error)
      {
        v19 = v17;
        *error = v18;
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

- (id)featureStatusForFeatureWithIdentifier:(id)identifier context:(id)context error:(id *)error
{
  identifierCopy = identifier;
  v9 = [(HKFeatureStatusProvidingDataSource *)self->_featureStatusProvidingDataSource featureStatusProvidingForFeatureIdentifier:identifierCopy context:context];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 featureStatusWithError:error];
  }

  else
  {
    v12 = MEMORY[0x1E696ABC0];
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"No feature status manager available for feature with identifier %@", identifierCopy];
    v14 = [v12 hk_error:110 description:identifierCopy];
    v15 = v14;
    if (v14)
    {
      if (error)
      {
        v16 = v14;
        *error = v15;
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

- (id)performLocalEvaluation:(id)evaluation
{
  evaluationCopy = evaluation;
  v5 = [HKFeatureAvailabilityLocalRequirementEvaluationContext alloc];
  healthDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self healthDataSource];
  healthDataRequirementDataSource = self->_healthDataRequirementDataSource;
  v8 = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)v5 initWithHealthDataSource:healthDataSource featureAvailabilityProvidingDataSource:self->_featureAvailabilityProvidingDataSource featureStatusProvidingDataSource:self->_featureStatusProvidingDataSource bluetoothDeviceDataSource:self->_bluetoothDeviceDataSource privacyPreferencesDataSource:self->_privacyPreferencesDataSource respiratoryPreferencesDataSource:self->_respiratoryPreferencesDataSource ageGatingDataSource:self->_ageGatingDataSource userNotificationSettingsDataSource:self->_userNotificationSettingsDataSource wristDetectionSettingDataSource:self->_wristDetectionSettingDataSource devicePairingAndSwitchingNotificationDataSource:self->_devicePairingAndSwitchingNotificationDataSource darwinNotificationDataSource:self->_darwinNotificationDataSource watchLowPowerModeDataSource:self->_watchLowPowerModeDataSource currentCountryCodeProvider:self->_currentCountryCodeProvider requirementSatisfactionOverridesDataSource:self->_requirementSatisfactionOverridesDataSource currentDateDataSource:self->_currentDateDataSource OSEligibilityDataSource:self->_OSEligibilityDataSource watchAppInstallationDataSource:self->_watchAppInstallationDataSource onboardingRecordFallbackProvider:self->_onboardingRecordFallbackProvider userNotificationsDataSource:self->_userNotificationsDataSource healthDataRequirementDataSource:healthDataRequirementDataSource importExclusionDeviceDataSource:self->_importExclusionDeviceDataSource];

  v9 = evaluationCopy[2](evaluationCopy, v8);

  return v9;
}

- (BOOL)_evaluateRequirementsOverrideWithFeatureIdentifier:(id)identifier requirementIdentifier:(id)requirementIdentifier
{
  requirementIdentifierCopy = requirementIdentifier;
  identifierCopy = identifier;
  v8 = objc_alloc_init(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility);
  importExclusionDeviceDataSource = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self importExclusionDeviceDataSource];
  behavior = [(HKFeatureAvailabilityRequirementEvaluationDataSource *)self behavior];
  v11 = [(HKFeatureAvailabilityRequirementSatisfactionOverrideEligibility *)v8 isRequirementOverridable:requirementIdentifierCopy featureIdentifier:identifierCopy importExclusionDeviceDataSource:importExclusionDeviceDataSource behavior:behavior];

  return v11;
}

- (id)requirementSatisfactionOverridesForFeatureWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  objc_initWeak(&location, self);
  v5 = [HKFeatureAvailabilityRequirementSatisfactionOverrides alloc];
  userDefaults = [(HKUserDefaultsDataSource *)self->_requirementSatisfactionOverridesDataSource userDefaults];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __113__HKFeatureAvailabilityRequirementEvaluationDataSource_requirementSatisfactionOverridesForFeatureWithIdentifier___block_invoke;
  v9[3] = &unk_1E73841F0;
  objc_copyWeak(&v10, &location);
  v7 = [(HKFeatureAvailabilityRequirementSatisfactionOverrides *)v5 initWithUserDefaults:userDefaults featureIdentifier:identifierCopy requirementOverridableEvaluator:v9];
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

- (id)isWatchAppInstalledWithBundleIdentifier:(id)identifier error:(id *)error
{
  watchAppInstallationDataSource = self->_watchAppInstallationDataSource;
  v13 = 0;
  v6 = [(HKWatchAppInstallationDataSource *)watchAppInstallationDataSource isWatchAppInstalledWithBundleIdentifier:identifier error:&v13];
  v7 = v13;
  v8 = v7;
  if (!v6)
  {
    v9 = v7;
    v10 = v9;
    if (v9)
    {
      if (error)
      {
        v11 = v9;
        *error = v10;
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