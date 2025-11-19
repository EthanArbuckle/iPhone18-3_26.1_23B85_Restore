@interface HMAccessory
+ (HMAccessory)accessoryWithAccessoryReference:(id)a3 home:(id)a4;
+ (HMAccessory)accessoryWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4;
+ (id)_cameraProfilesForAccessoryProfiles:(id)a3;
+ (id)_doorbellProfilesForAccessoryProfiles:(id)a3;
+ (id)_lightProfilesForAccessoryProfiles:(id)a3;
+ (id)_mediaProfilesForAccessoryProfiles:(id)a3;
+ (id)_networkConfigurationProfilesForCoder:(id)a3 accessoryIdentifier:(id)a4;
+ (id)_siriEndpointProfilesForAccessoryProfiles:(id)a3;
+ (id)logCategory;
+ (id)shortDescription;
+ (id)televisionProfilesForAccessoryServices:(id)a3 isSPIEntitled:(BOOL)a4;
+ (unint64_t)networkRouterStatusFromRouterStatus:(int64_t)a3 wanStatusListData:(id)a4;
+ (unint64_t)networkRouterStatusFromWiFiSatelliteStatus:(int64_t)a3;
- (BOOL)_mergeBulletinBoardNotificationByEndpoint:(id)a3;
- (BOOL)_mergeControlTargetUUIDs:(id)a3;
- (BOOL)_mergeRemoteLoginHandler:(id)a3;
- (BOOL)_mergeServices:(id)a3;
- (BOOL)_updateFromAccessory:(id)a3;
- (BOOL)_updateHasSymptomsHandler:(BOOL)a3;
- (BOOL)bridgedAccessory;
- (BOOL)hasOnboardedForAdaptiveTemperatureAutomations;
- (BOOL)hasOnboardedForCleanEnergyAutomation;
- (BOOL)hasOnboardedForNaturalLighting;
- (BOOL)isAdditionalSetupRequired;
- (BOOL)isCalibrating;
- (BOOL)isControllable;
- (BOOL)isCurrentAccessory;
- (BOOL)isDemoAccessory;
- (BOOL)isFirmwareUpdateAvailable;
- (BOOL)isHH1EOLEnabled;
- (BOOL)isPrimaryResident;
- (BOOL)isReachable;
- (BOOL)isSuspendCapable;
- (BOOL)isVendorAccessory;
- (BOOL)knownToSystemCommissioner;
- (BOOL)mergeFromNewObject:(id)a3;
- (BOOL)requiresThreadRouter;
- (BOOL)supportsAccessCodes;
- (BOOL)supportsAdaptiveTemperatureAutomations;
- (BOOL)supportsAnnounce;
- (BOOL)supportsAudioAnalysis;
- (BOOL)supportsAudioDestination;
- (BOOL)supportsAudioGroup;
- (BOOL)supportsAudioReturnChannel;
- (BOOL)supportsCHIP;
- (BOOL)supportsCleanEnergyAutomation;
- (BOOL)supportsCompanionInitiatedObliterate;
- (BOOL)supportsCompanionInitiatedRestart;
- (BOOL)supportsCoordinationDoorbellChime;
- (BOOL)supportsCrossfadeAsAirPlaySource;
- (BOOL)supportsDoorbellChime;
- (BOOL)supportsDropIn;
- (BOOL)supportsIdentify;
- (BOOL)supportsJustSiri;
- (BOOL)supportsManagedConfigurationProfile;
- (BOOL)supportsMediaAccessControl;
- (BOOL)supportsMediaActions;
- (BOOL)supportsMessagedHomePodSettings;
- (BOOL)supportsMultiUser;
- (BOOL)supportsMusicAlarm;
- (BOOL)supportsNativeMatter;
- (BOOL)supportsNetworkDiagnostics;
- (BOOL)supportsPreferredMediaUser;
- (BOOL)supportsRMVonAppleTV;
- (BOOL)supportsSoftwareUpdateV2;
- (BOOL)supportsStereoOdeonTTSUBypassingPrimary;
- (BOOL)supportsTargetControl;
- (BOOL)supportsTargetController;
- (BOOL)supportsThirdPartyMusic;
- (BOOL)supportsUWBUnlock;
- (BOOL)supportsUserMediaSettings;
- (BOOL)supportsWalletKey;
- (BOOL)targetControllerHardwareSupport;
- (HMAccessory)init;
- (HMAccessory)initWithCoder:(id)a3;
- (HMAccessory)initWithUUID:(id)a3;
- (HMAccessoryCategory)category;
- (HMAccessorySettings)settings;
- (HMAccessoryWiFiController)accessoryWiFiController;
- (HMApplicationData)applicationData;
- (HMAudioAnalysisEventBulletinBoardNotification)audioAnalysisEventBulletinBoardNotification;
- (HMDevice)device;
- (HMDoorbellChimeProfile)doorbellChimeProfile;
- (HMFSoftwareVersion)softwareVersion;
- (HMFWiFiNetworkInfo)wifiNetworkInfo;
- (HMHome)home;
- (HMNetworkConfigurationProfile)networkConfigurationProfile;
- (HMRemoteLoginHandler)remoteLoginHandler;
- (HMRoom)room;
- (HMSymptomsHandler)symptomsHandler;
- (NSArray)attributeDescriptions;
- (NSArray)audioDestinationMediaProfiles;
- (NSArray)bridgedAccessories;
- (NSArray)cameraProfiles;
- (NSArray)controlTargetUUIDs;
- (NSArray)profiles;
- (NSArray)services;
- (NSArray)televisionProfiles;
- (NSArray)uniqueIdentifiersForBridgedAccessories;
- (NSData)deviceIRKData;
- (NSData)readerGroupSubIdentifierACWG;
- (NSData)readerIDACWG;
- (NSData)rootPublicKey;
- (NSDictionary)bulletinBoardNotificationByEndpoint;
- (NSDictionary)serializedDictionaryRepresentation;
- (NSNumber)HAPInstanceID;
- (NSNumber)matterDeviceTypeID;
- (NSNumber)matterNodeID;
- (NSNumber)matterWEDSupport;
- (NSNumber)nodeID;
- (NSNumber)productID;
- (NSNumber)supportedLinkLayerTypes;
- (NSNumber)vendorID;
- (NSString)audioDestinationIdentifier;
- (NSString)audioDestinationParentIdentifier;
- (NSString)bundleID;
- (NSString)configuredName;
- (NSString)deviceIdentifier;
- (NSString)firmwareVersion;
- (NSString)manufacturer;
- (NSString)matterExtendedMACAddress;
- (NSString)model;
- (NSString)name;
- (NSString)pendingConfigurationIdentifier;
- (NSString)serialNumber;
- (NSString)shortDescription;
- (NSString)storeID;
- (NSUUID)accountIdentifier;
- (NSUUID)audioDestinationGroupIdentifier;
- (NSUUID)commissioningID;
- (NSUUID)networkProtectionGroupUUID;
- (NSUUID)preferredMediaUserUUID;
- (NSUUID)uniqueIdentifier;
- (id)_accessoryInformationService;
- (id)_findCharacteristic:(id)a3 forService:(id)a4;
- (id)_findService:(id)a3;
- (id)_findServiceWithUniqueIdentifier:(id)a3;
- (id)_handleMultipleCharacteristicsUpdated:(id)a3 message:(id)a4 informDelegate:(BOOL)a5;
- (id)_privateDelegate;
- (id)_valueForCharacteristic:(id)a3 ofService:(id)a4;
- (id)assistantIdentifier;
- (id)bulletinBoardNotificationForEndpoint:(id)a3;
- (id)controlTargets;
- (id)delegate;
- (id)lightProfiles;
- (id)logIdentifier;
- (id)mediaDestinationController:(id)a3 destinationWithIdentifier:(id)a4;
- (id)mediaProfile;
- (id)preferredMediaUser;
- (id)siriEndpointProfile;
- (id)softwareUpdateController;
- (id)targetControllers;
- (int64_t)associationOptions;
- (int64_t)audioDestinationType;
- (int64_t)certificationStatus;
- (int64_t)productColor;
- (unint64_t)homePodVariant;
- (unint64_t)preferredUserSelectionType;
- (unint64_t)supportedStereoPairVersions;
- (unint64_t)suspendedState;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_auditPairingsWithCompletionHandler:(id)a3;
- (void)_configureProfilesWithContext:(id)a3;
- (void)_createSymptomsHandler;
- (void)_deleteSiriHistoryWithCompletion:(id)a3;
- (void)_handleAccessoryCategoryChanged:(id)a3;
- (void)_handleAccessoryControllableChanged:(id)a3;
- (void)_handleAccessoryFlagsChanged:(id)a3;
- (void)_handleAccessoryNotificationsUpdated:(id)a3;
- (void)_handleCharacteristicValueUpdated:(id)a3;
- (void)_handleConnectivityChanged:(id)a3;
- (void)_handleMatterDeviceTypeIDChanged:(id)a3;
- (void)_handleMultiUserSupportUpdatedMessage:(id)a3;
- (void)_handlePairingIdentityUpdate:(id)a3;
- (void)_handlePairingStateChanged:(id)a3;
- (void)_handleRenamed:(id)a3;
- (void)_handleRequiresThreadRouterUpdateMessage:(id)a3;
- (void)_handleRootSettingsUpdated:(id)a3;
- (void)_handleServiceConfigurationState:(id)a3;
- (void)_handleServiceDefaultNameUpdate:(id)a3;
- (void)_handleServiceMediaSourceIdentifierUpdated:(id)a3;
- (void)_handleServiceRenamed:(id)a3;
- (void)_handleServiceSubtype:(id)a3;
- (void)_handleSupportedDiagnosticsUpdatedMessage:(id)a3;
- (void)_handleSupportsAdaptiveTemperatureAutomationMessage:(id)a3;
- (void)_handleSupportsCleanEnergyAutomationMessage:(id)a3;
- (void)_handleSupportsCompanionInitiatedObliterateUpdatedMessage:(id)a3;
- (void)_handleSupportsCompanionInitiatedRestartUpdatedMessage:(id)a3;
- (void)_handleTargetControlSupportUpdatedMessage:(id)a3;
- (void)_identifyWithCompletionHandler:(id)a3;
- (void)_invokeDidUpdateSupportsUWBUnlockDelegate:(BOOL)a3;
- (void)_invokeDidUpdateSupportsWalletKeyDelegate:(BOOL)a3;
- (void)_listPairingsWithCompletionHandler:(id)a3;
- (void)_mergeProfiles:(id)a3;
- (void)_notifyClientsOfDiagnosticsTransferSupportUpdate;
- (void)_notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate;
- (void)_notifyClientsOfMultiUserSupportUpdate;
- (void)_notifyClientsOfSupportsCompanionInitiatedObliterateUpdate;
- (void)_notifyClientsOfSupportsCompanionInitiatedRestartUpdate;
- (void)_notifyClientsOfSupportsMusicAlarmUpdate;
- (void)_notifyClientsOfTargetControlSupportUpdate;
- (void)_notifyDelegateOfAddedControlTarget:(id)a3;
- (void)_notifyDelegateOfRemovedControlTarget:(id)a3;
- (void)_notifyDelegateOfUpdatedSettings:(id)a3;
- (void)_notifyDelegatesOfAdditionalSetupRequiredChange;
- (void)_notifyDelegatesOfUpdatedCalibrationStatus;
- (void)_notifyDelegatesOfUpdatedControllable;
- (void)_readValueForCharacteristic:(id)a3 completionHandler:(id)a4;
- (void)_unconfigure;
- (void)_updateApplicationData:(id)a3 forService:(id)a4 completionHandler:(id)a5;
- (void)_updateAssociatedServiceType:(id)a3 forService:(id)a4 completionHandler:(id)a5;
- (void)_updateAuthorizationData:(id)a3 forService:(id)a4 characteristic:(id)a5 completionHandler:(id)a6;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)_updateName:(id)a3 forService:(id)a4 completionHandler:(id)a5;
- (void)_updateRoom:(id)a3 completionHandler:(id)a4;
- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 service:(id)a5 completionHandler:(id)a6;
- (void)accessoryInfoDataProvider:(id)a3 didReceiveUpdatesForAccessoryWithIdentifier:(id)a4 primaryUserInfo:(id)a5;
- (void)activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:(id)a3;
- (void)activateCHIPPairingModeWithCompletion:(id)a3;
- (void)adapter:(id)a3 didUpdateSettingKeyPaths:(id)a4;
- (void)adapter:(id)a3 didUpdateSettings:(id)a4;
- (void)addControlTarget:(id)a3 completionHandler:(id)a4;
- (void)callCompletionHandler:(id)a3 error:(id)a4;
- (void)clearMatterCredentialWithType:(int64_t)a3 index:(int64_t)a4 completion:(id)a5;
- (void)clearMatterUserWithIndex:(int64_t)a3 completion:(id)a4;
- (void)configureInfoDataProviderIfNeededWithOptions:(unint64_t)a3;
- (void)configureSettingsAdapterIfNeeded;
- (void)configureSettingsAdapterWithCompletionHandler:(id)a3;
- (void)createSettingsAdapterWithDataSource:(id)a3 controller:(id)a4 context:(id)a5;
- (void)deleteSiriHistoryWithCompletion:(id)a3;
- (void)dumpMatterUsersWithCompletion:(id)a3;
- (void)fetchAdaptiveTemperatureSettingsWithCompletion:(id)a3;
- (void)fetchCHIPPairingsWithCompletion:(id)a3;
- (void)fetchManagedConfigurationProfilesWithCompletionHandler:(id)a3;
- (void)fetchThermostatSleepScheduleWithCompletion:(id)a3;
- (void)getAccessoryDiagnosticCountersWithCompletion:(id)a3;
- (void)getAccessoryDiagnosticEventsWithCompletion:(id)a3;
- (void)handleRuntimeStateUpdate:(id)a3;
- (void)identifyWithCompletionHandler:(void *)completion;
- (void)initiateDiagnosticsTransferWithOptions:(id)a3 completionHandler:(id)a4;
- (void)installManagedConfigurationProfileWithData:(id)a3 completionHandler:(id)a4;
- (void)notifyClientsOfUpdatedSupportsAudioReturnChannel;
- (void)notifyDelegateOfAppDataUpdateForService:(id)a3;
- (void)notifyDelegateOfAudioDestinationControllerUpdate;
- (void)notifyDelegateOfAudioDestinationUpdate;
- (void)notifyDelegateOfUpdatedServices;
- (void)notifyDelegateOfUpdatedWiFiNetworkInfo;
- (void)notifyDelegateUpdatedPreferredMediaUser;
- (void)notifyDelegateUpdatedSupportsJustSiri;
- (void)notifyDelegateUpdatedSupportsMediaContentProfile;
- (void)notifyDelegateUpdatedSupportsPreferredMediaUser;
- (void)notifyDelegateUpdatedSupportsRMVonAppleTV;
- (void)postConfigure;
- (void)queryAdvertisementInformationWithCompletionHandler:(id)a3;
- (void)queryLinkQualityWithCompletion:(id)a3;
- (void)removeCHIPPairings:(id)a3 completion:(id)a4;
- (void)removeControlTarget:(id)a3 completionHandler:(id)a4;
- (void)removeCorrespondingSystemCommissionerPairingWithCompletion:(id)a3;
- (void)removeManagedConfigurationProfileWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)resetControlTargetsWithCompletionHandler:(id)a3;
- (void)setAccountIdentifier:(id)a3;
- (void)setAdaptiveTemperatureDriver:(unint64_t)a3 rooms:(id)a4 completion:(id)a5;
- (void)setApplicationData:(id)a3;
- (void)setBridgedAccessory:(BOOL)a3;
- (void)setBulletinBoardNotificationByEndpoint:(id)a3;
- (void)setBundleID:(id)a3;
- (void)setCHIPPairingModeActive:(BOOL)a3 withCompletion:(id)a4;
- (void)setCategory:(id)a3;
- (void)setCertificationStatus:(int64_t)a3;
- (void)setCommissioningID:(id)a3;
- (void)setConfiguredName:(id)a3;
- (void)setControlTargetUUIDs:(id)a3;
- (void)setControllable:(BOOL)a3;
- (void)setCurrentAccessory:(BOOL)a3;
- (void)setDelegate:(id)delegate;
- (void)setDemoAccessory:(BOOL)a3;
- (void)setDevice:(id)a3;
- (void)setDeviceIRKData:(id)a3;
- (void)setDeviceIdentifier:(id)a3;
- (void)setFirmwareUpdateAvailable:(BOOL)a3;
- (void)setFirmwareVersion:(id)a3;
- (void)setHAPInstanceID:(id)a3;
- (void)setHH1EOLEnabled:(BOOL)a3;
- (void)setHasOnboardedForAdaptiveTemperatureAutomations:(BOOL)a3;
- (void)setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:(id)a3;
- (void)setHasOnboardedForCleanEnergyAutomation:(BOOL)a3;
- (void)setHasOnboardedForCleanEnergyAutomationWithCompletion:(id)a3;
- (void)setHasOnboardedForNaturalLighting:(BOOL)a3;
- (void)setHasOnboardedForNaturalLightingWithCompletion:(id)a3;
- (void)setHome:(id)a3;
- (void)setHomePodVariant:(unint64_t)a3;
- (void)setIsPrimaryResident:(BOOL)a3;
- (void)setKnownToSystemCommissioner:(BOOL)a3;
- (void)setManufacturer:(id)a3;
- (void)setMatterDeviceTypeID:(id)a3;
- (void)setMatterExtendedMACAddress:(id)a3;
- (void)setMatterWEDSupport:(id)a3;
- (void)setModel:(id)a3;
- (void)setName:(id)a3;
- (void)setNetworkProtectionGroupUUID:(id)a3;
- (void)setNodeID:(id)a3;
- (void)setPendingConfigurationIdentifier:(id)a3;
- (void)setPreferredMediaUserUUID:(id)a3;
- (void)setPreferredUserSelectionType:(unint64_t)a3;
- (void)setProductColor:(int64_t)a3;
- (void)setProductID:(id)a3;
- (void)setReachable:(BOOL)a3;
- (void)setReaderGroupSubIdentifierACWG:(id)a3;
- (void)setReaderIDACWG:(id)a3;
- (void)setRemoteLoginHandler:(id)a3;
- (void)setRequiresThreadRouter:(BOOL)a3;
- (void)setRoom:(id)a3;
- (void)setRootPublicKey:(id)a3;
- (void)setSerialNumber:(id)a3;
- (void)setSettings:(id)a3;
- (void)setSoftwareUpdateController:(id)a3;
- (void)setSoftwareVersion:(id)a3;
- (void)setStoreID:(id)a3;
- (void)setSupportedLinkLayerTypes:(id)a3;
- (void)setSupportedStereoPairVersions:(unint64_t)a3;
- (void)setSupportsAccessCodes:(BOOL)a3;
- (void)setSupportsAdaptiveTemperatureAutomations:(BOOL)a3;
- (void)setSupportsAnnounce:(BOOL)a3;
- (void)setSupportsAudioAnalysis:(BOOL)a3;
- (void)setSupportsAudioReturnChannel:(BOOL)a3;
- (void)setSupportsCHIP:(BOOL)a3;
- (void)setSupportsCleanEnergyAutomation:(BOOL)a3;
- (void)setSupportsCompanionInitiatedObliterate:(BOOL)a3;
- (void)setSupportsCompanionInitiatedRestart:(BOOL)a3;
- (void)setSupportsCoordinationDoorbellChime:(BOOL)a3;
- (void)setSupportsCrossfadeAsAirPlaySource:(BOOL)a3;
- (void)setSupportsDoorbellChime:(BOOL)a3;
- (void)setSupportsDropIn:(BOOL)a3;
- (void)setSupportsIdentify:(BOOL)a3;
- (void)setSupportsJustSiri:(BOOL)a3;
- (void)setSupportsManagedConfigurationProfile:(BOOL)a3;
- (void)setSupportsMediaAccessControl:(BOOL)a3;
- (void)setSupportsMediaActions:(BOOL)a3;
- (void)setSupportsMessagedHomePodSettings:(BOOL)a3;
- (void)setSupportsMultiUser:(BOOL)a3;
- (void)setSupportsMusicAlarm:(BOOL)a3;
- (void)setSupportsNativeMatter:(BOOL)a3;
- (void)setSupportsNetworkDiagnostics:(BOOL)a3;
- (void)setSupportsPreferredMediaUser:(BOOL)a3;
- (void)setSupportsRMVonAppleTV:(BOOL)a3;
- (void)setSupportsSoftwareUpdateV2:(BOOL)a3;
- (void)setSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)a3;
- (void)setSupportsTargetControl:(BOOL)a3;
- (void)setSupportsTargetController:(BOOL)a3;
- (void)setSupportsThirdPartyMusic:(BOOL)a3;
- (void)setSupportsUWBUnlock:(BOOL)a3;
- (void)setSupportsUserMediaSettings:(BOOL)a3;
- (void)setSupportsWalletKey:(BOOL)a3;
- (void)setSuspendCapable:(BOOL)a3;
- (void)setSuspendedState:(unint64_t)a3;
- (void)setSymptomsHandler:(id)a3;
- (void)setTargetControllerHardwareSupport:(BOOL)a3;
- (void)setThermostatSleepSchedule:(id)a3 completion:(id)a4;
- (void)setUniqueIdentifiersForBridgedAccessories:(id)a3;
- (void)setVendorAccessory:(BOOL)a3;
- (void)setVendorID:(id)a3;
- (void)setWeekDaySchedulesPerUserCapacity:(id)a3;
- (void)setWifiNetworkInfo:(id)a3;
- (void)setYearDaySchedulesPerUserCapacity:(id)a3;
- (void)unconfigureInfoDataProviderWithOptions:(unint64_t)a3;
- (void)updateAccessoryInfo:(id)a3;
- (void)updateAccessoryName:(id)a3 completionHandler:(id)a4;
- (void)updateApplicationData:(id)a3 forService:(id)a4 completionHandler:(id)a5;
- (void)updateAudioDestinationSupportedOptions:(unint64_t)a3 completion:(id)a4;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
- (void)updatePendingConfigurationIdentifier:(id)a3 completionHandler:(id)a4;
- (void)updatePreferredMediaUser:(id)a3 completionHandler:(id)a4;
- (void)updatePreferredMediaUserSelectionType:(unint64_t)a3 user:(id)a4 completionHandler:(id)a5;
- (void)updateSettingWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5;
- (void)validatePairingAuthMethodWithCompletion:(id)a3;
@end

@implementation HMAccessory

- (NSArray)services
{
  v2 = [(HMAccessory *)self currentServices];
  v3 = [v2 array];

  return v3;
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

+ (id)televisionProfilesForAccessoryServices:(id)a3 isSPIEntitled:(BOOL)a4
{
  sub_19BB4A270(0, &qword_1ED8FCBA0, off_1E7545B48);
  v5 = sub_19BE0E0DC();
  _sSo11HMAccessoryC7HomeKitE18televisionProfiles3for13isSPIEntitledSaySo0A7ProfileCGSaySo9HMServiceCG_SbtFZ_0(v5, a4);

  sub_19BB4A270(0, &qword_1ED8FCBA8, off_1E7545138);
  v6 = sub_19BE0E0CC();

  return v6;
}

- (void)fetchThermostatSleepScheduleWithCompletion:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    v8 = [(HMAccessory *)self messageTargetUUID];
    v9 = [v7 initWithTarget:v8];
    v10 = [v6 messageWithName:@"HMA.fetchSleepSchedule" destination:v9 payload:0];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Fetching thermostat sleep schedule", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke;
    v22[3] = &unk_1E754E480;
    v22[4] = v12;
    v15 = v5;
    v23 = v15;
    v24 = v4;
    [v10 setResponseHandler:v22];
    v16 = [v15 messageDispatcher];
    [v16 sendMessage:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v20;
      v27 = 2080;
      v28 = "[HMAccessory(Climate) fetchThermostatSleepScheduleWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v58[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v11;
      v54 = 2112;
      v55 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch thermostat sleep schedule with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [a1[5] delegateCaller];
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_36;
    v49[3] = &unk_1E754E458;
    v51 = a1[6];
    v13 = v5;
    v50 = v13;
    [v12 invokeBlock:v49];

    v14 = v51;
  }

  else
  {
    v14 = [v6 objectForKeyedSubscript:@"HMA.sleepScheduleKey"];
    if (v14)
    {
      v15 = MEMORY[0x1E696ACD0];
      v16 = MEMORY[0x1E695DFD8];
      v58[0] = objc_opt_class();
      v58[1] = objc_opt_class();
      v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v58 count:2];
      v18 = [v16 setWithArray:v17];
      v46 = 0;
      v19 = [v15 unarchivedObjectOfClasses:v18 fromData:v14 error:&v46];
      v13 = v46;

      if (v19)
      {
        v20 = [[HMWeekDaySchedule alloc] initWithScheduleRules:v19];
        v21 = objc_autoreleasePoolPush();
        v22 = a1[4];
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          [(HMWeekDaySchedule *)v20 attributeDescriptions];
          v25 = v40 = v21;
          *buf = 138543618;
          v53 = v24;
          v54 = 2112;
          v55 = v25;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched thermostat sleep schedule %@", buf, 0x16u);

          v21 = v40;
        }

        objc_autoreleasePoolPop(v21);
        v26 = [a1[5] delegateCaller];
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_45;
        v41[3] = &unk_1E754E458;
        v27 = a1[6];
        v42 = v20;
        v43 = v27;
        v28 = v20;
        [v26 invokeBlock:v41];
      }

      else
      {
        v34 = objc_autoreleasePoolPush();
        v35 = a1[4];
        v36 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
        {
          v37 = HMFGetLogIdentifier();
          *buf = 138543874;
          v53 = v37;
          v54 = 2112;
          v55 = 0;
          v56 = 2112;
          v57 = v13;
          _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode sleep schedule rules %@: %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v34);
        v38 = [a1[5] delegateCaller];
        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_43;
        v44[3] = &unk_1E754E430;
        v45 = a1[6];
        [v38 invokeBlock:v44];

        v28 = v45;
      }
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = a1[4];
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v32;
        _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Missing sleepScheduleKey in response payload", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
      v33 = [a1[5] delegateCaller];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_38;
      v47[3] = &unk_1E754E430;
      v48 = a1[6];
      [v33 invokeBlock:v47];

      v13 = 0;
      v19 = v48;
    }
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

void __67__HMAccessory_Climate__fetchThermostatSleepScheduleWithCompletion___block_invoke_43(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)setThermostatSleepSchedule:(id)a3 completion:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setThermostatSleepSchedule:completion:]", @"completion"];
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v38;
      v47 = 2112;
      v48 = v34;
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v39 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v34 userInfo:0];
    objc_exception_throw(v39);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v6 scheduleRules];
    if ([v10 count] < 2)
    {
      v21 = MEMORY[0x1E69A2A10];
      v22 = objc_alloc(MEMORY[0x1E69A2A00]);
      v23 = [(HMAccessory *)self messageTargetUUID];
      v24 = [v22 initWithTarget:v23];
      v43 = @"HMA.sleepScheduleKey";
      v25 = encodeRootObject(v10);
      v44 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      v15 = [v21 messageWithName:@"HMA.setSleepSchedule" destination:v24 payload:v26];

      v27 = objc_autoreleasePoolPush();
      v28 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v30;
        v47 = 2112;
        v48 = v10;
        _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting thermostat sleep schedule rules %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __62__HMAccessory_Climate__setThermostatSleepSchedule_completion___block_invoke;
      v40[3] = &unk_1E754E480;
      v40[4] = v28;
      v31 = v9;
      v41 = v31;
      v42 = v7;
      [v15 setResponseHandler:v40];
      v32 = [v31 messageDispatcher];
      [v32 sendMessage:v15];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v14;
        v47 = 2112;
        v48 = v10;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@ScheduleRules can only be of length 1, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v15 callCompletion:v7 error:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v46 = v20;
      v47 = 2080;
      v48 = "[HMAccessory(Climate) setThermostatSleepSchedule:completion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v10);
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __62__HMAccessory_Climate__setThermostatSleepSchedule_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to set thermostat sleep schedule with error: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully set thermostat sleep schedule";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchAdaptiveTemperatureSettingsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = MEMORY[0x1E69A2A10];
  v6 = objc_alloc(MEMORY[0x1E69A2A00]);
  v7 = [(HMAccessory *)self messageTargetUUID];
  v8 = [v6 initWithTarget:v7];
  v9 = [v5 messageWithName:@"HMFetchAdaptiveTemperatureDriverSettingsMessage" destination:v8 payload:0];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __71__HMAccessory_Climate__fetchAdaptiveTemperatureSettingsWithCompletion___block_invoke;
  v16 = &unk_1E754DE00;
  v17 = self;
  v18 = v4;
  v10 = v4;
  [v9 setResponseHandler:&v13];
  v11 = [(HMAccessory *)self context:v13];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v9];
}

void __71__HMAccessory_Climate__fetchAdaptiveTemperatureSettingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) home];
    if (v7)
    {
      v8 = [v6 arrayForKey:@"rooms"];
      v9 = [v6 valueForKey:@"driver"];
      v10 = [v9 intValue];
      if (v8)
      {
        v30 = v10;
        v31 = a1;
        v32 = v9;
        v34 = v6;
        v11 = [MEMORY[0x1E695DFA8] set];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v33 = v8;
        v12 = v8;
        v13 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v36;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v36 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v35 + 1) + 8 * i);
              v18 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v17];
              v19 = [v7 roomWithUUID:v18];

              if (!v19)
              {
                v23 = objc_autoreleasePoolPush();
                v24 = *(v31 + 32);
                v25 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
                {
                  v26 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v40 = v26;
                  v41 = 2112;
                  v42 = v17;
                  _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to find room with UUID: %@", buf, 0x16u);
                }

                objc_autoreleasePoolPop(v23);
                v27 = *(v31 + 40);
                v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
                (*(v27 + 16))(v27, 0, 0, v28);

                goto LABEL_18;
              }

              [v11 addObject:v19];
            }

            v14 = [v12 countByEnumeratingWithState:&v35 objects:v43 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

        v20 = *(v31 + 40);
        v12 = [v11 copy];
        (*(v20 + 16))(v20, v30, v12, 0);
LABEL_18:
        v6 = v34;

        v9 = v32;
        v8 = v33;
        v5 = 0;
      }

      else
      {
        (*(*(a1 + 40) + 16))();
      }
    }

    else
    {
      v21 = *(a1 + 40);
      v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      (*(v21 + 16))(v21, 0, 0, v22);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)setAdaptiveTemperatureDriver:(unint64_t)a3 rooms:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = [(HMAccessory *)self context];
  if ((a3 != 2 || v8 || [0 hmf_isEmpty]) && (a3 != 2 ? (v11 = v8 == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), a3 && !v12))
  {
    v13 = [MEMORY[0x1E695DF90] dictionary];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    [v13 setObject:v14 forKeyedSubscript:@"driver"];

    if (v8)
    {
      v15 = [v8 na_map:&__block_literal_global_4406];
      v16 = [v15 allObjects];
      [v13 setObject:v16 forKeyedSubscript:@"rooms"];
    }

    v17 = MEMORY[0x1E69A2A10];
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    v19 = [(HMAccessory *)self messageTargetUUID];
    v20 = [v18 initWithTarget:v19];
    v21 = [v13 copy];
    v22 = [v17 messageWithName:@"HMSetAdaptiveTemperatureDriverMessage" destination:v20 payload:v21];

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __70__HMAccessory_Climate__setAdaptiveTemperatureDriver_rooms_completion___block_invoke_2;
    v30 = &unk_1E754DE00;
    v31 = v10;
    v32 = v9;
    [v22 setResponseHandler:&v27];
    v23 = [(HMAccessory *)self context:v27];
    v24 = [v23 messageDispatcher];
    [v24 sendMessage:v22];
  }

  else
  {
    v25 = [v10 delegateCaller];
    v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v25 callCompletion:v9 error:v26];
  }
}

void __70__HMAccessory_Climate__setAdaptiveTemperatureDriver_rooms_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

id __70__HMAccessory_Climate__setAdaptiveTemperatureDriver_rooms_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)setHasOnboardedForCleanEnergyAutomationWithCompletion:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setHasOnboardedForCleanEnergyAutomationWithCompletion:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    v9 = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:v9];
    v11 = [v7 messageWithName:@"HMA.HasOnboardedForCleanEnergyAutomationMessage" destination:v10 payload:0];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting hasOnboardedForCleanEnergyAutomation", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __78__HMAccessory_Climate__setHasOnboardedForCleanEnergyAutomationWithCompletion___block_invoke;
    v29[3] = &unk_1E754E480;
    v29[4] = v13;
    v30 = v6;
    v31 = v4;
    [v11 setResponseHandler:v29];
    v16 = [(HMAccessory *)v13 context];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v11];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v21;
      v34 = 2080;
      v35 = "[HMAccessory(Climate) setHasOnboardedForCleanEnergyAutomationWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __78__HMAccessory_Climate__setHasOnboardedForCleanEnergyAutomationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set hasOnboardedForCleanEnergyAutomation, with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set hasOnboardedForCleanEnergyAutomation", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setHasOnboardedForCleanEnergyAutomation:1];
  }

  v13 = [*(a1 + 40) delegateCaller];
  [v13 callCompletion:*(a1 + 48) error:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v27;
      v34 = 2112;
      v35 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v6 = v5;
  if (v5)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    v9 = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:v9];
    v11 = [v7 messageWithName:@"HMA.HasOnboardedForAdaptiveTemperatureAutomationsMessage" destination:v10 payload:0];

    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Setting hasOnboardedForAdaptiveTemperatureAutomations", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __87__HMAccessory_Climate__setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion___block_invoke;
    v29[3] = &unk_1E754E480;
    v29[4] = v13;
    v30 = v6;
    v31 = v4;
    [v11 setResponseHandler:v29];
    v16 = [(HMAccessory *)v13 context];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v11];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v21;
      v34 = 2080;
      v35 = "[HMAccessory(Climate) setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v11);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __87__HMAccessory_Climate__setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v11;
      v17 = 2112;
      v18 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to set hasOnboardedForAdaptiveTemperatureAutomations, with error: %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Successfully set hasOnboardedForAdaptiveTemperatureAutomations", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) setHasOnboardedForAdaptiveTemperatureAutomations:1];
  }

  v13 = [*(a1 + 40) delegateCaller];
  [v13 callCompletion:*(a1 + 48) error:v5];

  v14 = *MEMORY[0x1E69E9840];
}

- (id)siriEndpointProfile
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self accessoryProfiles];
  v3 = [v2 array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      objc_opt_class();
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
      v11 = v10;

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_siriEndpointProfilesForAccessoryProfiles:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [HMSiriEndpointProfile alloc];
          v13 = [(HMSiriEndpointProfile *)v12 initWithSiriEndpointProfile:v11, v16];
          v20 = v13;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

- (NSArray)televisionProfiles
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self profiles];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [v3 addObject:{v11, v15}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_lightProfilesForAccessoryProfiles:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v13 = [HMLightProfile alloc];
          v14 = [(HMLightProfile *)v13 initWithLightProfile:v12, v18];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (HMDoorbellChimeProfile)doorbellChimeProfile
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self accessoryProfiles];
  v3 = [v2 array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      objc_opt_class();
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
      v11 = v10;

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_doorbellProfilesForAccessoryProfiles:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v13 = [HMDoorbellChimeProfile alloc];
          v14 = [(HMDoorbellChimeProfile *)v13 initWithDoorbellChimeProfile:v12, v18];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

+ (unint64_t)networkRouterStatusFromWiFiSatelliteStatus:(int64_t)a3
{
  v3 = 0x40000000;
  if (a3 != 2)
  {
    v3 = 1;
  }

  if (a3 == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)networkRouterStatusFromRouterStatus:(int64_t)a3 wanStatusListData:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3 == 1)
  {
    v7 = 0x20000000;
  }

  else
  {
    v39 = 0;
    v8 = [HMNetworkRouterWANStatusList parsedFromData:v6 error:&v39];
    v9 = v39;
    if (v8)
    {
      v10 = [v8 statuses];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __84__HMAccessory_NetworkRouter__networkRouterStatusFromRouterStatus_wanStatusListData___block_invoke;
      v38[3] = &__block_descriptor_40_e41_B32__0__HMNetworkRouterWANStatus_8Q16_B24l;
      v38[4] = a1;
      v11 = [v10 hmf_objectPassingTest:v38];

      if (v11)
      {
        v12 = [v11 status];
        v13 = [v12 value];

        if (v13)
        {
          v7 = 0;
          if ([v13 unsignedIntegerValue])
          {
            v14 = 1;
            do
            {
              if (([v13 unsignedIntegerValue] & v14) != 0)
              {
                v15 = v7 | 0x40;
                v16 = v7 | 0x80;
                v17 = v7 | 0x100;
                if (v14 != 256)
                {
                  v17 = v7;
                }

                if (v14 != 128)
                {
                  v16 = v17;
                }

                if (v14 != 64)
                {
                  v15 = v16;
                }

                v18 = v7 | 0x10;
                v19 = v7 | 0x20;
                if (v14 != 32)
                {
                  v19 = v7;
                }

                if (v14 != 16)
                {
                  v18 = v19;
                }

                if (v14 <= 63)
                {
                  v15 = v18;
                }

                v20 = v7 | 4;
                v21 = v7 | 8;
                if (v14 != 8)
                {
                  v21 = v7;
                }

                if (v14 != 4)
                {
                  v20 = v21;
                }

                v22 = v7 | 1;
                v23 = v7 | 2;
                if (v14 != 2)
                {
                  v23 = v7;
                }

                if (v14 != 1)
                {
                  v22 = v23;
                }

                if (v14 <= 3)
                {
                  v20 = v22;
                }

                if (v14 <= 15)
                {
                  v7 = v20;
                }

                else
                {
                  v7 = v15;
                }
              }

              v14 *= 2;
            }

            while (v14 - 1 < [v13 unsignedIntegerValue]);
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          v33 = a1;
          v34 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = HMFGetLogIdentifier();
            *buf = 138543618;
            v41 = v35;
            v42 = 2112;
            v43 = v11;
            _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine network router status because main WAN status TLV has a nil status value: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v32);
          v7 = 1;
        }
      }

      else
      {
        v28 = objc_autoreleasePoolPush();
        v29 = a1;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543362;
          v41 = v31;
          _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Cannot determine network router status because main WAN status could not be found in WAN status list", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v28);
        v7 = 1;
      }
    }

    else
    {
      v24 = objc_autoreleasePoolPush();
      v25 = a1;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v27;
        v42 = 2112;
        v43 = v6;
        v44 = 2112;
        v45 = v9;
        _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse WAN status list from data %@: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v24);
      v7 = 1;
    }
  }

  v36 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL __84__HMAccessory_NetworkRouter__networkRouterStatusFromRouterStatus_wanStatusListData___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 value];

  if (v5)
  {
    v6 = [v5 unsignedIntegerValue] == 1;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = 0;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@WAN status TLV has a nil identifier value: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v6 = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return v6;
}

- (void)accessoryInfoDataProvider:(id)a3 didReceiveUpdatesForAccessoryWithIdentifier:(id)a4 primaryUserInfo:(id)a5
{
  v42 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v36 = 138543618;
    v37 = v14;
    v38 = 2112;
    v39 = v10;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive update primaryUserInfo: %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (![(HMAccessory *)v12 supportsMessagedHomePodSettings])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = v12;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Error processing primary user info as supportsMessagedHomePodSettings is disabled", &v36, 0xCu);
    }

    goto LABEL_12;
  }

  if (![v10 selectionType])
  {
    v30 = [v10 uuidString];
    if (v30)
    {

      goto LABEL_15;
    }
  }

  if ([v10 selectionType] == 1)
  {
    v15 = [v10 uuidString];
    v16 = v15 == 0;

    if (v16)
    {
LABEL_15:
      v26 = objc_autoreleasePoolPush();
      v27 = v12;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = [v10 uuidString];
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v10, "selectionType")}];
        v36 = 138543874;
        v37 = v31;
        v38 = 2112;
        v39 = v32;
        v40 = 2112;
        v41 = v33;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Received unexpected preferred media user UUID: %@, selectionType: %@", &v36, 0x20u);
      }

LABEL_12:

      objc_autoreleasePoolPop(v26);
      goto LABEL_26;
    }
  }

  os_unfair_lock_lock_with_options();
  v17 = [(NSUUID *)v12->_preferredMediaUserUUID UUIDString];
  v18 = [v10 uuidString];
  v19 = HMFEqualObjects();

  if ((v19 & 1) == 0)
  {
    v20 = [v10 uuidString];
    v21 = v20 == 0;

    if (v21)
    {
      preferredMediaUserUUID = v12->_preferredMediaUserUUID;
      v12->_preferredMediaUserUUID = 0;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E696AFB0]);
      preferredMediaUserUUID = [v10 uuidString];
      v24 = [v22 initWithUUIDString:preferredMediaUserUUID];
      v25 = v12->_preferredMediaUserUUID;
      v12->_preferredMediaUserUUID = v24;
    }
  }

  preferredUserSelectionType = v12->_preferredUserSelectionType;
  if (preferredUserSelectionType == [v10 selectionType])
  {
    os_unfair_lock_unlock(&v12->_lock);
    if (v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v12->_preferredUserSelectionType = [v10 selectionType];
    os_unfair_lock_unlock(&v12->_lock);
  }

  [(HMAccessory *)v12 notifyDelegateUpdatedPreferredMediaUser];
LABEL_26:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)updateSettingWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v20 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMAccessory *)self settingsAdapter];

  if (v11)
  {
    v12 = [(HMAccessory *)self settingsAdapter];
    [v12 updateWithKeyPath:v8 value:v9 completionHandler:v10];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Calling update setting with settings adapter object being nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v12 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8 reason:@"Adapter is nil" suggestion:@"Configure adapter before use it"];
    v10[2](v10, v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)a3 didUpdateSettingKeyPaths:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  v9 = [v8 delegateCaller];

  if (v9)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__HMAccessory_adapter_didUpdateSettingKeyPaths___block_invoke;
    v10[3] = &unk_1E754D848;
    objc_copyWeak(&v12, &location);
    v11 = v7;
    [v9 invokeBlock:v10];

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }
}

void __48__HMAccessory_adapter_didUpdateSettingKeyPaths___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained settings];
  v4 = [v3 delegate];

  if (objc_opt_respondsToSelector())
  {
    v5 = [WeakRetained settings];
    [v4 settingsWillUpdate:v5];
  }

  if (objc_opt_respondsToSelector())
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = *(a1 + 32);
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        v10 = 0;
        do
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * v10);
          v12 = [WeakRetained settings];
          v13 = [WeakRetained uniqueIdentifier];
          [v4 settings:v12 didUpdateForIdentifier:v13 keyPath:v11];

          ++v10;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v8);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v14 = objc_autoreleasePoolPush();
    v15 = WeakRetained;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = v15;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings did update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [v15 settings];
    [v4 settingsDidUpdate:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)a3 didUpdateSettings:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self settings];

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v12;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Attempt to set root group to non-nil settings.", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    [(HMAccessory *)self setSettings:v7];
    v13 = [(HMAccessory *)self settings];
    [(HMAccessory *)self _notifyDelegateOfUpdatedSettings:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)configureSettingsAdapterWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessory *)self settingsAdapter];
  [v5 configureWithCompletionHandler:v4];
}

- (void)createSettingsAdapterWithDataSource:(id)a3 controller:(id)a4 context:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HMAccessorySettingsAdapter alloc];
  v12 = [(HMAccessory *)self home];
  v13 = [v12 uniqueIdentifier];
  v14 = [(HMAccessory *)self context];
  v15 = [v14 queue];
  v16 = [(HMAccessory *)self uniqueIdentifier];
  v18 = [(HMAccessorySettingsAdapter *)v11 initWithHomeIdentifier:v13 dataSource:v10 controller:v9 workQueue:v15 settingsContainer:self containerIdentifier:v16 containerType:1 settingsControl:self context:v8];

  [(HMAccessory *)self setSettingsAdapter:v18];
  v17 = [(HMAccessory *)self settingsAdapter];
  [v17 setDelegate:self];
}

- (NSArray)attributeDescriptions
{
  v49[12] = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self room];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  v48 = [(HMAccessory *)self name];
  v47 = [v4 initWithName:@"Name" value:v48];
  v49[0] = v47;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  v46 = [(HMAccessory *)self uniqueIdentifier];
  v45 = [v5 initWithName:@"Identifier" value:v46];
  v49[1] = v45;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAccessory *)self isReachable];
  v43 = HMFBooleanToString();
  v42 = [v6 initWithName:@"Reachable" value:v43];
  v49[2] = v42;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = MEMORY[0x1E696AEC0];
  v44 = v3;
  v41 = [v3 uuid];
  v40 = [v3 name];
  v39 = [v8 stringWithFormat:@"%@/%@", v41, v40];
  v38 = [v7 initWithName:@"room" value:v39];
  v49[3] = v38;
  v9 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAccessory *)self isControllable];
  v37 = HMFBooleanToString();
  v36 = [v9 initWithName:@"Controllable" value:v37];
  v49[4] = v36;
  v10 = objc_alloc(MEMORY[0x1E69A29C8]);
  v35 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[HMAccessory transportTypes](self, "transportTypes")}];
  v34 = [v10 initWithName:@"TransportTypes" value:v35];
  v49[5] = v34;
  v11 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAccessory *)self supportsCHIP];
  v33 = HMFBooleanToString();
  v32 = [v11 initWithName:@"Supports CHIP" value:v33];
  v49[6] = v32;
  v12 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAccessory *)self knownToSystemCommissioner];
  v31 = HMFBooleanToString();
  v13 = [v12 initWithName:@"KTSC" value:v31];
  v49[7] = v13;
  v14 = objc_alloc(MEMORY[0x1E69A29C8]);
  v15 = MEMORY[0x1E696AD98];
  v16 = [(HMAccessory *)self rootPublicKey];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(v16, "hash")}];
  v18 = [v14 initWithName:@"Root Public Key (HASH)" value:v17];
  v49[8] = v18;
  v19 = objc_alloc(MEMORY[0x1E69A29C8]);
  v20 = [(HMAccessory *)self nodeID];
  v21 = [v19 initWithName:@"NodeID" value:v20];
  v49[9] = v21;
  v22 = objc_alloc(MEMORY[0x1E69A29C8]);
  v23 = [(HMAccessory *)self matterNodeID];
  v24 = [v22 initWithName:@"Matter NodeID" value:v23];
  v49[10] = v24;
  v25 = objc_alloc(MEMORY[0x1E69A29C8]);
  v26 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
  v27 = [v25 initWithName:@"Matter Bulletins" value:v26];
  v49[11] = v27;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:12];

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

- (NSString)shortDescription
{
  v2 = [(HMAccessory *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)_invokeDidUpdateSupportsUWBUnlockDelegate:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = [(HMAccessory *)self delegate];
    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 delegateCaller];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__HMAccessory__invokeDidUpdateSupportsUWBUnlockDelegate___block_invoke;
      v15[3] = &unk_1E754DC70;
      v16 = v8;
      v17 = self;
      v18 = a3;
      [v9 invokeBlock:v15];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2080;
      v22 = "[HMAccessory _invokeDidUpdateSupportsUWBUnlockDelegate:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_invokeDidUpdateSupportsWalletKeyDelegate:(BOOL)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = [(HMAccessory *)self delegate];
    if ([v6 conformsToProtocol:&unk_1F0F63E80])
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      v9 = [v5 delegateCaller];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__HMAccessory__invokeDidUpdateSupportsWalletKeyDelegate___block_invoke;
      v15[3] = &unk_1E754DC70;
      v16 = v8;
      v17 = self;
      v18 = a3;
      [v9 invokeBlock:v15];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2080;
      v22 = "[HMAccessory _invokeDidUpdateSupportsWalletKeyDelegate:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportedDiagnosticsUpdatedMessage:(id)a3
{
  v20[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v6 = [v4 unarchivedObjectForKey:@"HMA.supportedDiagnosticsCodingKey" ofClasses:v5];

  v7 = [(HMAccessory(Diagnostics) *)self supportedDiagnostics];

  if (v6 != v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [(HMAccessory(Diagnostics) *)v9 supportedDiagnostics];
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating supported diagnostics from %@ -> %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMAccessory(Diagnostics) *)v9 setSupportedDiagnostics:v6];
    [(HMAccessory *)v9 _notifyClientsOfDiagnosticsTransferSupportUpdate];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfDiagnosticsTransferSupportUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of accessory diagnostics transfer support update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__HMAccessory__notifyClientsOfDiagnosticsTransferSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (HMAudioAnalysisEventBulletinBoardNotification)audioAnalysisEventBulletinBoardNotification
{
  os_unfair_lock_lock_with_options();
  v3 = self->_audioAnalysisEventBulletinBoardNotification;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)mediaDestinationController:(id)a3 destinationWithIdentifier:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self home];
  v9 = [v8 mediaDestinationsWithHomeTheaterSupportedOptions];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__HMAccessory_mediaDestinationController_destinationWithIdentifier___block_invoke;
  v18[3] = &unk_1E754B5C0;
  v10 = v7;
  v19 = v10;
  v11 = [v9 na_firstObjectPassingTest:v18];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = v9;
      v24 = 2112;
      v25 = v8;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@No destination found in destinations: %@ home: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];

  return v11;
}

uint64_t __68__HMAccessory_mediaDestinationController_destinationWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 audioDestinationIdentifier];
  v4 = [*(a1 + 32) UUIDString];
  v5 = [v3 isEqualToString:v4];

  return v5;
}

- (void)updateAudioDestinationSupportedOptions:(unint64_t)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    *buf = 138543618;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending update audio destination support options message with options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v12 = [(HMAccessory *)v8 context];
  v13 = [v12 messageDispatcher];
  if (v13)
  {
    v33 = @"HMMediaDestinationSupportedOptionsPayloadKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v34 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    v17 = [(HMAccessory *)v8 audioDestination];
    v18 = [v17 uniqueIdentifier];
    v19 = [v16 initWithTarget:v18];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMMediaDestinationUpdateSupportedOptionsRequestMessage" destination:v19 payload:v15];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __65__HMAccessory_updateAudioDestinationSupportedOptions_completion___block_invoke;
    v30 = &unk_1E754DE00;
    v31 = v8;
    v32 = v6;
    [v20 setResponseHandler:&v27];
    v21 = [v20 copy];
    [v13 sendMessage:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = v8;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = v12;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination support options due to no message dispatcher given by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    [(HMAccessory *)v23 callCompletionHandler:v6 error:v15];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __65__HMAccessory_updateAudioDestinationSupportedOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Update destination supported options request message responded with error: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) callCompletionHandler:*(a1 + 40) error:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Update destination supported options request message succeeded", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [*(a1 + 32) callCompletionHandler:*(a1 + 40)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setHasOnboardedForCleanEnergyAutomation:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForCleanEnergyAutomation = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForCleanEnergyAutomation
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForCleanEnergyAutomation = self->_hasOnboardedForCleanEnergyAutomation;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForCleanEnergyAutomation;
}

- (void)setHasOnboardedForAdaptiveTemperatureAutomations:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForAdaptiveTemperatureAutomations = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForAdaptiveTemperatureAutomations
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForAdaptiveTemperatureAutomations = self->_hasOnboardedForAdaptiveTemperatureAutomations;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForAdaptiveTemperatureAutomations;
}

- (void)setSupportsCleanEnergyAutomation:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCleanEnergyAutomation = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCleanEnergyAutomation
{
  os_unfair_lock_lock_with_options();
  supportsCleanEnergyAutomation = self->_supportsCleanEnergyAutomation;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCleanEnergyAutomation;
}

- (void)setSupportsAdaptiveTemperatureAutomations:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsAdaptiveTemperatureAutomations = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAdaptiveTemperatureAutomations
{
  os_unfair_lock_lock_with_options();
  supportsAdaptiveTemperatureAutomations = self->_supportsAdaptiveTemperatureAutomations;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAdaptiveTemperatureAutomations;
}

- (void)setHasOnboardedForNaturalLighting:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForNaturalLighting = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForNaturalLighting
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForNaturalLighting = self->_hasOnboardedForNaturalLighting;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForNaturalLighting;
}

- (NSUUID)audioDestinationGroupIdentifier
{
  v2 = [(HMAccessory *)self audioDestination];
  v3 = [v2 audioGroupIdentifier];

  return v3;
}

- (NSArray)audioDestinationMediaProfiles
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self mediaProfile];
  v3 = v2;
  if (v2)
  {
    v7[0] = v2;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  }

  else
  {
    v4 = MEMORY[0x1E695E0F0];
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (NSString)audioDestinationParentIdentifier
{
  v2 = [(HMAccessory *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)supportsAudioGroup
{
  v2 = [(HMAccessory *)self audioDestination];
  v3 = [v2 containsSupportedOptions:8];

  return v3;
}

- (BOOL)supportsAudioDestination
{
  v2 = [(HMAccessory *)self audioDestination];
  v3 = [v2 containsHomeTheaterSupportedOptions];

  return v3;
}

- (int64_t)audioDestinationType
{
  v2 = [(HMAccessory *)self audioDestination];

  return v2 != 0;
}

- (NSString)audioDestinationIdentifier
{
  v2 = [(HMAccessory *)self audioDestination];
  v3 = [v2 identifier];

  return v3;
}

- (void)callCompletionHandler:(id)a3 error:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMAccessory *)self context];
    v9 = [v8 delegateCaller];
    v10 = v9;
    if (v9)
    {
      [v9 callCompletion:v6 error:v7];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      v16 = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = v8;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to call client completion handler due to no delegate caller given by context: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to call client completion handler due to no handler provided", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setNetworkProtectionGroupUUID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  networkProtectionGroupUUID = self->_networkProtectionGroupUUID;
  self->_networkProtectionGroupUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)networkProtectionGroupUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_networkProtectionGroupUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_notifyClientsOfSupportsMusicAlarmUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports creating music alarms update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HMAccessory__notifyClientsOfSupportsMusicAlarmUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsCompanionInitiatedObliterateUpdatedMessage:(id)a3
{
  v4 = [a3 BOOLForKey:@"HMAccessorySupportsCompanionInitiatedObliterateMessageKey"];
  if (v4 != [(HMAccessory *)self supportsCompanionInitiatedObliterate])
  {
    [(HMAccessory *)self setSupportsCompanionInitiatedObliterate:v4];

    [(HMAccessory *)self _notifyClientsOfSupportsCompanionInitiatedObliterateUpdate];
  }
}

- (void)_notifyClientsOfSupportsCompanionInitiatedObliterateUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports companion initiated obliterate update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__HMAccessory__notifyClientsOfSupportsCompanionInitiatedObliterateUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsCompanionInitiatedRestartUpdatedMessage:(id)a3
{
  v4 = [a3 BOOLForKey:@"HMAccessorySupportsCompanionInitiatedRestartMessageKey"];
  if (v4 != [(HMAccessory *)self supportsCompanionInitiatedRestart])
  {
    [(HMAccessory *)self setSupportsCompanionInitiatedRestart:v4];

    [(HMAccessory *)self _notifyClientsOfSupportsCompanionInitiatedRestartUpdate];
  }
}

- (void)_notifyClientsOfSupportsCompanionInitiatedRestartUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports companion initiated restart update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__HMAccessory__notifyClientsOfSupportsCompanionInitiatedRestartUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleMultiUserSupportUpdatedMessage:(id)a3
{
  v4 = [a3 BOOLForKey:@"supportsMultiUser"];
  if (v4 != [(HMAccessory *)self supportsMultiUser])
  {
    [(HMAccessory *)self setSupportsMultiUser:v4];

    [(HMAccessory *)self _notifyClientsOfMultiUserSupportUpdate];
  }
}

- (void)_notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate
{
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__HMAccessory__notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate__block_invoke;
  v5[3] = &unk_1E754E2A8;
  v5[4] = self;
  [v4 invokeBlock:v5];
}

void __75__HMAccessory__notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate__block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) _privateDelegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543618;
    v9 = v6;
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying client of home level location service setting support update using delegate: %@", &v8, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 accessoryDidUpdateHomeLevelLocationServiceSettingSupport:*(a1 + 32)];
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfMultiUserSupportUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying client of multi-user support update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__HMAccessory__notifyClientsOfMultiUserSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientsOfUpdatedSupportsAudioReturnChannel
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of accessory did update supports audio return: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (objc_opt_respondsToSelector())
  {
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    if (v9)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__HMAccessory_notifyClientsOfUpdatedSupportsAudioReturnChannel__block_invoke;
      v15[3] = &unk_1E754E5C0;
      v16 = v3;
      v17 = v5;
      [v9 invokeBlock:v15];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = v5;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v19 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify clients of accessory did update supports audio return due to no delegate caller", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)_handleTargetControlSupportUpdatedMessage:(id)a3
{
  v8 = a3;
  v4 = [v8 BOOLForKey:@"supportsTargetControl"];
  v5 = v4 ^ [(HMAccessory *)self supportsTargetControl];
  if (v5 == 1)
  {
    [(HMAccessory *)self setSupportsTargetControl:v4];
  }

  v6 = [v8 BOOLForKey:@"supportsTargetController"];
  if (v6 != [(HMAccessory *)self supportsTargetController])
  {
    [(HMAccessory *)self setSupportsTargetController:v6];
    v5 = 1;
  }

  v7 = [v8 BOOLForKey:@"targetControllerHardwareSupport"];
  if (v7 == [(HMAccessory *)self targetControllerHardwareSupport])
  {
    if (!v5)
    {
      goto LABEL_9;
    }
  }

  else
  {
    [(HMAccessory *)self setTargetControllerHardwareSupport:v7];
  }

  [(HMAccessory *)self _notifyClientsOfTargetControlSupportUpdate];
LABEL_9:
}

- (void)resetControlTargetsWithCompletionHandler:(id)a3
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory resetControlTargetsWithCompletionHandler:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    v33 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v35;
      v45 = 2112;
      v46 = v31;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v36 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v31 userInfo:0];
    objc_exception_throw(v36);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMAccessory *)self home];
    if (v7)
    {
      v8 = v7;
      v41 = @"reset";
      v42 = MEMORY[0x1E695E0F0];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v10 = objc_alloc(MEMORY[0x1E69A2A10]);
      v11 = objc_alloc(MEMORY[0x1E69A2A00]);
      v12 = [(HMAccessory *)self uuid];
      v13 = [v11 initWithTarget:v12];
      v14 = [v10 initWithName:@"HMCT.configure" destination:v13 payload:v9];

      v15 = [(HMAccessory *)self context];
      v16 = [v15 pendingRequests];

      v17 = [v14 identifier];
      v18 = _Block_copy(v4);
      [v16 addCompletionBlock:v18 forIdentifier:v17];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __56__HMAccessory_resetControlTargetsWithCompletionHandler___block_invoke;
      v37[3] = &unk_1E754E0A8;
      v38 = v16;
      v39 = v17;
      v19 = v6;
      v40 = v19;
      v20 = v17;
      v21 = v16;
      [v14 setResponseHandler:v37];
      v22 = [v19 messageDispatcher];
      [v22 sendMessage:v14];
    }

    else
    {
      v27 = [(HMAccessory *)self context];
      v28 = [v27 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v28 callCompletion:v4 error:v29];

      v8 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v44 = v26;
      v45 = 2080;
      v46 = "[HMAccessory resetControlTargetsWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v8);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __56__HMAccessory_resetControlTargetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)removeControlTarget:(id)a3 completionHandler:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory removeControlTarget:completionHandler:]", @"completion"];
    v45 = objc_autoreleasePoolPush();
    v46 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v48;
      v58 = 2112;
      v59 = v44;
      _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v49 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v44 userInfo:0];
    objc_exception_throw(v49);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMAccessory *)self home];
    if (!v10)
    {
      v35 = [(HMAccessory *)self context];
      v36 = [v35 delegateCaller];
      v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v36 callCompletion:v7 error:v37];

      v11 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v12 = [v6 uuid];

    if (v12)
    {
      v13 = [v6 home];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v54 = @"remove";
        v15 = [v6 uuid];
        v16 = [v15 UUIDString];
        v55 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

        v18 = objc_alloc(MEMORY[0x1E69A2A10]);
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        v20 = [(HMAccessory *)self uuid];
        v21 = [v19 initWithTarget:v20];
        v22 = [v18 initWithName:@"HMCT.configure" destination:v21 payload:v17];

        v23 = [(HMAccessory *)self context];
        v24 = [v23 pendingRequests];

        v25 = [v22 identifier];
        v26 = _Block_copy(v7);
        [v24 addCompletionBlock:v26 forIdentifier:v25];

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __53__HMAccessory_removeControlTarget_completionHandler___block_invoke;
        v50[3] = &unk_1E754E0A8;
        v51 = v24;
        v52 = v25;
        v27 = v9;
        v53 = v27;
        v28 = v25;
        v29 = v24;
        [v22 setResponseHandler:v50];
        v30 = [v27 messageDispatcher];
        [v30 sendMessage:v22];

        goto LABEL_14;
      }

      v38 = [(HMAccessory *)self context];
      v39 = [v38 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 11;
    }

    else
    {
      v38 = [(HMAccessory *)self context];
      v39 = [v38 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 20;
    }

    v42 = [v40 hmErrorWithCode:v41];
    [v39 callCompletion:v7 error:v42];

    goto LABEL_14;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v34;
    v58 = 2080;
    v59 = "[HMAccessory removeControlTarget:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(v7 + 2))(v7, v11);
LABEL_14:

  v43 = *MEMORY[0x1E69E9840];
}

void __53__HMAccessory_removeControlTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)addControlTarget:(id)a3 completionHandler:(id)a4
{
  v60 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory addControlTarget:completionHandler:]", @"completion"];
    v45 = objc_autoreleasePoolPush();
    v46 = self;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = HMFGetLogIdentifier();
      *buf = 138543618;
      v57 = v48;
      v58 = 2112;
      v59 = v44;
      _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v45);
    v49 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v44 userInfo:0];
    objc_exception_throw(v49);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMAccessory *)self home];
    if (!v10)
    {
      v35 = [(HMAccessory *)self context];
      v36 = [v35 delegateCaller];
      v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v36 callCompletion:v7 error:v37];

      v11 = 0;
      goto LABEL_14;
    }

    v11 = v10;
    v12 = [v6 uuid];

    if (v12)
    {
      v13 = [v6 home];
      v14 = [v11 isEqual:v13];

      if (v14)
      {
        v54 = @"add";
        v15 = [v6 uuid];
        v16 = [v15 UUIDString];
        v55 = v16;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

        v18 = objc_alloc(MEMORY[0x1E69A2A10]);
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        v20 = [(HMAccessory *)self uuid];
        v21 = [v19 initWithTarget:v20];
        v22 = [v18 initWithName:@"HMCT.configure" destination:v21 payload:v17];

        v23 = [(HMAccessory *)self context];
        v24 = [v23 pendingRequests];

        v25 = [v22 identifier];
        v26 = _Block_copy(v7);
        [v24 addCompletionBlock:v26 forIdentifier:v25];

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __50__HMAccessory_addControlTarget_completionHandler___block_invoke;
        v50[3] = &unk_1E754E0A8;
        v51 = v24;
        v52 = v25;
        v27 = v9;
        v53 = v27;
        v28 = v25;
        v29 = v24;
        [v22 setResponseHandler:v50];
        v30 = [v27 messageDispatcher];
        [v30 sendMessage:v22];

        goto LABEL_14;
      }

      v38 = [(HMAccessory *)self context];
      v39 = [v38 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 11;
    }

    else
    {
      v38 = [(HMAccessory *)self context];
      v39 = [v38 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 20;
    }

    v42 = [v40 hmErrorWithCode:v41];
    [v39 callCompletion:v7 error:v42];

    goto LABEL_14;
  }

  v31 = objc_autoreleasePoolPush();
  v32 = self;
  v33 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
  {
    v34 = HMFGetLogIdentifier();
    *buf = 138543618;
    v57 = v34;
    v58 = 2080;
    v59 = "[HMAccessory addControlTarget:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v31);
  v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(v7 + 2))(v7, v11);
LABEL_14:

  v43 = *MEMORY[0x1E69E9840];
}

void __50__HMAccessory_addControlTarget_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)_notifyDelegateOfRemovedControlTarget:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 name];
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed control target - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMAccessory *)v7 context];
    v12 = [v11 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__HMAccessory__notifyDelegateOfRemovedControlTarget___block_invoke;
    v14[3] = &unk_1E754E5E8;
    v15 = v5;
    v16 = v7;
    v17 = v4;
    [v12 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfAddedControlTarget:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [v4 name];
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added target - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(HMAccessory *)v7 context];
    v12 = [v11 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__HMAccessory__notifyDelegateOfAddedControlTarget___block_invoke;
    v14[3] = &unk_1E754E5E8;
    v15 = v5;
    v16 = v7;
    v17 = v4;
    [v12 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfTargetControlSupportUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying client of target control support update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [(HMAccessory *)v5 context];
    v9 = [v8 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMAccessory__notifyClientsOfTargetControlSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = v3;
    v13 = v5;
    [v9 invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateHasSymptomsHandler:(BOOL)a3
{
  v3 = a3;
  v5 = [(HMAccessory *)self _privateDelegate];
  if (![(HMAccessory *)self hasSymptomsHandler]&& v3)
  {
    [(HMAccessory *)self setHasSymptomsHandler:1];
    [(HMAccessory *)self _createSymptomsHandler];
    v6 = [(HMAccessory *)self context];
    v7 = [v6 queue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke;
    v14[3] = &unk_1E754E5C0;
    v8 = v15;
    v15[0] = v5;
    v15[1] = self;
    v9 = v14;
LABEL_7:
    dispatch_async(v7, v9);

    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
  if ([(HMAccessory *)self hasSymptomsHandler]&& !v3)
  {
    [(HMAccessory *)self setHasSymptomsHandler:0];
    [(HMAccessory *)self setSymptomsHandler:0];
    v6 = [(HMAccessory *)self context];
    v7 = [v6 queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke_2;
    v12[3] = &unk_1E754E5C0;
    v8 = v13;
    v13[0] = v5;
    v13[1] = self;
    v9 = v12;
    goto LABEL_7;
  }

LABEL_8:

  return v10;
}

void __41__HMAccessory__updateHasSymptomsHandler___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added symptoms handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 40) context];
    v8 = [v7 delegateCaller];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke_1366;
    v12[3] = &unk_1E754E5C0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    [v8 invokeBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __41__HMAccessory__updateHasSymptomsHandler___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 40);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed symptoms handler", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [*(a1 + 40) context];
    v8 = [v7 delegateCaller];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke_1368;
    v12[3] = &unk_1E754E5C0;
    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v13 = v9;
    v14 = v10;
    [v8 invokeBlock:v12];
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __41__HMAccessory__updateHasSymptomsHandler___block_invoke_1366(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 symptomsHandler];
  [v1 accessory:v2 didAddSymptomsHandler:v3];
}

- (void)_createSymptomsHandler
{
  v3 = [[HMSymptomsHandler alloc] initWithAccessory:self];
  [(HMAccessory *)self setSymptomsHandler:v3];

  v4 = [(HMAccessory *)self symptomsHandler];
  [v4 configure];
}

- (void)setSymptomsHandler:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  symptomsHandler = self->_symptomsHandler;
  self->_symptomsHandler = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSymptomsHandler)symptomsHandler
{
  os_unfair_lock_lock_with_options();
  v3 = self->_symptomsHandler;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_privateDelegate
{
  v2 = [(HMAccessory *)self delegate];
  if ([v2 conformsToProtocol:&unk_1F0F63E80])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_notifyDelegatesOfUpdatedControllable
{
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMAccessory *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__HMAccessory__notifyDelegatesOfUpdatedControllable__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegatesOfUpdatedCalibrationStatus
{
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMAccessory *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__HMAccessory__notifyDelegatesOfUpdatedCalibrationStatus__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_notifyDelegatesOfAdditionalSetupRequiredChange
{
  v3 = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMAccessory *)self context];
    v5 = [v4 delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__HMAccessory__notifyDelegatesOfAdditionalSetupRequiredChange__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = v3;
    v8 = self;
    [v5 invokeBlock:v6];
  }
}

- (void)_handleAccessoryControllableChanged:(id)a3
{
  -[HMAccessory setControllable:](self, "setControllable:", [a3 BOOLForKey:@"controllable"]);

  [(HMAccessory *)self _notifyDelegatesOfUpdatedControllable];
}

- (void)notifyDelegateOfAppDataUpdateForService:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__HMAccessory_notifyDelegateOfAppDataUpdateForService___block_invoke;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v14 = v6;
      v15 = v4;
      dispatch_async(v7, block);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v11;
      v18 = 2080;
      v19 = "[HMAccessory notifyDelegateOfAppDataUpdateForService:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__HMAccessory_notifyDelegateOfAppDataUpdateForService___block_invoke(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__HMAccessory_notifyDelegateOfAppDataUpdateForService___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  [v3 invokeBlock:v6];
}

- (void)_updateApplicationData:(id)a3 forService:(id)a4 completionHandler:(id)a5
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMAccessory *)self context];
  if (v11)
  {
    v42 = [(HMAccessory *)self home];
    if (v42)
    {
      v41 = [MEMORY[0x1E695DF90] dictionary];
      if (v8)
      {
        v12 = [v8 dictionary];
        [v41 setObject:v12 forKeyedSubscript:@"kAppDataInformationKey"];
      }

      v13 = self;
      v14 = v13;
      if (v9)
      {
        v15 = v9;

        v16 = [(HMAccessory *)v15 instanceID];
        [v41 setObject:v16 forKeyedSubscript:@"kServiceInstanceID"];

        v40 = [(HMAccessory *)v15 uuid];
      }

      else
      {
        v40 = [(HMAccessory *)v13 messageTargetUUID];
        v15 = v14;
      }

      v24 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v40];
      v25 = MEMORY[0x1E69A2A10];
      v26 = [v41 copy];
      v39 = v24;
      v27 = [v25 messageWithName:@"kSetAppDataRequestKey" destination:v24 payload:v26];

      objc_initWeak(buf, v14);
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __67__HMAccessory__updateApplicationData_forService_completionHandler___block_invoke;
      aBlock[3] = &unk_1E754D960;
      objc_copyWeak(&v51, buf);
      v28 = v15;
      v48 = v28;
      v49 = v8;
      v50 = v10;
      v29 = _Block_copy(aBlock);
      v30 = [(HMAccessory *)v14 context];
      v31 = [v30 pendingRequests];

      v32 = [v27 identifier];
      v33 = _Block_copy(v29);
      [v31 addCompletionBlock:v33 forIdentifier:v32];

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __67__HMAccessory__updateApplicationData_forService_completionHandler___block_invoke_2;
      v43[3] = &unk_1E754E480;
      v34 = v31;
      v44 = v34;
      v35 = v32;
      v45 = v35;
      v36 = v29;
      v46 = v36;
      [v27 setResponseHandler:v43];
      v37 = [v11 messageDispatcher];
      [v37 sendMessage:v27 completionHandler:0];

      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);
    }

    else
    {
      v21 = [(HMAccessory *)self context];
      v22 = [v21 delegateCaller];
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [v22 callCompletion:v10 error:v23];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v20;
      v54 = 2080;
      v55 = "[HMAccessory _updateApplicationData:forService:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __67__HMAccessory__updateApplicationData_forService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = WeakRetained;
  if (!v3)
  {
    [*(a1 + 32) setApplicationData:*(a1 + 40)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 48) error:v3];
}

void __67__HMAccessory__updateApplicationData_forService_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateApplicationData:(id)a3 forService:(id)a4 completionHandler:(id)a5
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMAccessory *)self context];
  if (!v10)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateApplicationData:forService:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v12 = v11;
  if (v11)
  {
    v13 = [v11 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HMAccessory_updateApplicationData_forService_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    block[4] = self;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    dispatch_async(v13, block);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v17;
      v32 = 2080;
      v33 = "[HMAccessory updateApplicationData:forService:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_configureProfilesWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [(HMAccessory *)self profiles];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v12 + 1) + 8 * v9) accessoryProfile];
        [v10 __configureWithContext:v4 accessory:self];

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)profiles
{
  v2 = [(HMAccessory *)self accessoryProfiles];
  v3 = [v2 array];

  return v3;
}

- (void)_handleMatterDeviceTypeIDChanged:(id)a3
{
  v4 = [a3 numberForKey:@"HMA.MatterDeviceTypeIDUpdate"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMAccessory *)self setMatterDeviceTypeID:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_handleAccessoryCategoryChanged:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 dataForKey:@"kAccessoryCategory"];
  if (v5)
  {
    v13 = 0;
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v13];
    v7 = v13;
    if (v6)
    {
      [(HMAccessory *)self setCategory:v6];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v15 = v11;
        v16 = 2112;
        v17 = v7;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory category from data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleServiceMediaSourceIdentifierUpdated:(id)a3
{
  v4 = a3;
  v8 = [v4 numberForKey:@"mediaSourceIdentifier"];
  v5 = [v4 numberForKey:@"kServiceInstanceID"];

  if (v8 && v5)
  {
    v6 = [(HMAccessory *)self _findService:v5];
    v7 = v6;
    if (v6)
    {
      [v6 _handleMediaSourceIdentifierUpdated:v8];
    }
  }
}

- (void)_handleServiceConfigurationState:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:@"kServiceConfigurationState"];
  v6 = [v4 numberForKey:@"kServiceInstanceID"];
  v7 = [(HMAccessory *)self context];
  v8 = [v7 pendingRequests];

  v9 = [v4 identifier];

  v10 = [v8 removeCompletionBlockForIdentifier:v9];

  if (v5 && v6)
  {
    v11 = [(HMAccessory *)self services];
    v12 = [v11 hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateConfigurationState:{+[HMService _mapToServiceConfigurationStateFromIsConfiguredValue:](HMService, "_mapToServiceConfigurationStateFromIsConfiguredValue:", v5)}];
      if (v10)
      {
        v13 = [(HMAccessory *)self context];
        v14 = [v13 delegateCaller];
        [v14 callCompletion:v10 error:0];
      }

      else
      {
        v15 = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          v16 = [(HMAccessory *)self context];
          v17 = [v16 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __48__HMAccessory__handleServiceConfigurationState___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = v15;
          v20 = self;
          v21 = v12;
          [v17 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceSubtype:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForKey:@"kServiceSubtype"];
  v6 = [v4 numberForKey:@"kServiceInstanceID"];
  v7 = [(HMAccessory *)self context];
  v8 = [v7 pendingRequests];

  v9 = [v4 identifier];

  v10 = [v8 removeCompletionBlockForIdentifier:v9];

  if (v5 && v6)
  {
    v11 = [(HMAccessory *)self services];
    v12 = [v11 hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateServiceSubtype:v5];
      if (v10)
      {
        v13 = [(HMAccessory *)self context];
        v14 = [v13 delegateCaller];
        [v14 callCompletion:v10 error:0];
      }

      else
      {
        v15 = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          v16 = [(HMAccessory *)self context];
          v17 = [v16 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __37__HMAccessory__handleServiceSubtype___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = v15;
          v20 = self;
          v21 = v12;
          [v17 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceDefaultNameUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForKey:@"kServiceName"];
  v6 = [v4 numberForKey:@"kServiceInstanceID"];
  v7 = [(HMAccessory *)self context];
  v8 = [v7 pendingRequests];

  v9 = [v4 identifier];

  v10 = [v8 removeCompletionBlockForIdentifier:v9];

  if (v5 && v6)
  {
    v11 = [(HMAccessory *)self services];
    v12 = [v11 hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateDefaultName:v5];
      if (v10)
      {
        v13 = [(HMAccessory *)self context];
        v14 = [v13 delegateCaller];
        [v14 callCompletion:v10 error:0];
      }

      else
      {
        v15 = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          v16 = [(HMAccessory *)self context];
          v17 = [v16 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __47__HMAccessory__handleServiceDefaultNameUpdate___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = v15;
          v20 = self;
          v21 = v12;
          [v17 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceRenamed:(id)a3
{
  v4 = a3;
  v5 = [v4 stringForKey:@"kServiceName"];
  v6 = [v4 numberForKey:@"kServiceInstanceID"];
  v7 = [(HMAccessory *)self context];
  v8 = [v7 pendingRequests];

  v9 = [v4 identifier];

  v10 = [v8 removeCompletionBlockForIdentifier:v9];

  if (v5 && v6)
  {
    v11 = [(HMAccessory *)self services];
    v12 = [v11 hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateName:v5];
      if (v10)
      {
        v13 = [(HMAccessory *)self context];
        v14 = [v13 delegateCaller];
        [v14 callCompletion:v10 error:0];
      }

      else
      {
        v15 = [(HMAccessory *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          v16 = [(HMAccessory *)self context];
          v17 = [v16 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __37__HMAccessory__handleServiceRenamed___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = v15;
          v20 = self;
          v21 = v12;
          [v17 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_deleteSiriHistoryWithCompletion:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _deleteSiriHistoryWithCompletion:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v28;
      v36 = 2112;
      v37 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    dispatch_assert_queue_V2(v7);

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [(HMAccessory *)v9 siriEndpointProfile];
    v13 = v12;
    if (v12)
    {
      [v12 deleteSiriHistoryWithCompletionHandler:v4];
    }

    else
    {
      v18 = [v6 messageDispatcher];
      v19 = objc_alloc(MEMORY[0x1E69A2A00]);
      v20 = [(HMAccessory *)v9 uuid];
      v21 = [v19 initWithTarget:v20];

      v22 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryDeleteSiriHistoryRequestMessage" destination:v21 payload:0];
      objc_initWeak(buf, v9);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __48__HMAccessory__deleteSiriHistoryWithCompletion___block_invoke;
      v30[3] = &unk_1E754D058;
      objc_copyWeak(&v33, buf);
      v31 = v6;
      v32 = v4;
      [v22 setResponseHandler:v30];
      [v18 sendMessage:v22 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);

      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v17;
      v36 = 2080;
      v37 = "[HMAccessory _deleteSiriHistoryWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v13);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __48__HMAccessory__deleteSiriHistoryWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Delete siri history request responded with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [a1[4] delegateCaller];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __48__HMAccessory__deleteSiriHistoryWithCompletion___block_invoke_1354;
    v20[3] = &unk_1E754E458;
    v14 = &v22;
    v22 = a1[5];
    v21 = v5;
    [v13 invokeBlock:v20];

    v15 = v21;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      v24 = v16;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Delete siri history request responded", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] delegateCaller];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __48__HMAccessory__deleteSiriHistoryWithCompletion___block_invoke_1355;
    v18[3] = &unk_1E754E430;
    v14 = &v19;
    v19 = a1[5];
    [v15 invokeBlock:v18];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)deleteSiriHistoryWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory deleteSiriHistoryWithCompletion:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HMAccessory_deleteSiriHistoryWithCompletion___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMAccessory deleteSiriHistoryWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_auditPairingsWithCompletionHandler:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _auditPairingsWithCompletionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v27;
      v33 = 2112;
      v34 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [(HMAccessory *)self home];
    if (v7)
    {
      v8 = v7;
      v9 = objc_alloc(MEMORY[0x1E69A2A10]);
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      v11 = [(HMAccessory *)self uuid];
      v12 = [v10 initWithTarget:v11];
      v13 = [v9 initWithName:@"HMA.auditPairings" destination:v12 payload:0];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __51__HMAccessory__auditPairingsWithCompletionHandler___block_invoke;
      v29[3] = &unk_1E754DE00;
      v29[4] = self;
      v30 = v4;
      [v13 setResponseHandler:v29];
      v14 = [v6 messageDispatcher];
      [v14 sendMessage:v13];
    }

    else
    {
      v19 = [(HMAccessory *)self context];
      v20 = [v19 delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v20 callCompletion:v4 error:v21];

      v8 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v32 = v18;
      v33 = 2080;
      v34 = "[HMAccessory _auditPairingsWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v8);
  }

  v22 = *MEMORY[0x1E69E9840];
}

void __51__HMAccessory__auditPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (*(a1 + 40))
  {
    v3 = *(a1 + 32);
    v4 = a2;
    v6 = [v3 context];
    v5 = [v6 delegateCaller];
    [v5 callCompletion:*(a1 + 40) error:v4];
  }
}

- (void)_listPairingsWithCompletionHandler:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v27);
  }

  v5 = v4;
  v6 = [(HMAccessory *)self home];
  v7 = [(HMAccessory *)self context];
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = objc_alloc(MEMORY[0x1E69A2A10]);
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      v11 = [(HMAccessory *)self uuid];
      v12 = [v10 initWithTarget:v11];
      v13 = [v9 initWithName:@"kListPairingsRequestKey" destination:v12 payload:0];

      v14 = [v8 pendingRequests];
      v15 = [v13 identifier];
      v16 = _Block_copy(v5);
      [v14 addCompletionBlock:v16 forIdentifier:v15];

      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __50__HMAccessory__listPairingsWithCompletionHandler___block_invoke;
      v31 = &unk_1E754D030;
      v32 = v14;
      v33 = v15;
      v34 = self;
      v35 = v5;
      v17 = v15;
      v18 = v14;
      [v13 setResponseHandler:&v28];
      v19 = [v8 messageDispatcher];
      [v19 sendMessage:v13];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      v23 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543618;
        v37 = v25;
        v38 = 2080;
        v39 = "[HMAccessory _listPairingsWithCompletionHandler:]";
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v20 = [v7 delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [v20 callCompletion:v5 obj:0 error:v21];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __50__HMAccessory__listPairingsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = 0;
  }

  else
  {
    v6 = [v5 objectForKeyedSubscript:@"kDescriptionKey"];
  }

  v7 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (*(a1 + 56))
  {
    v8 = [*(a1 + 48) context];
    v9 = [v8 delegateCaller];
    [v9 callCompletion:*(a1 + 56) obj:v6 error:v10];
  }
}

- (BOOL)_updateFromAccessory:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMAccessory *)self transportTypes];
  v6 = [v4 transportTypes];
  v7 = v5 == v6;
  v8 = v5 != v6;
  if (!v7)
  {
    -[HMAccessory setTransportTypes:](self, "setTransportTypes:", [v4 transportTypes]);
  }

  os_unfair_lock_unlock(&self->_lock);
  v9 = [(HMAccessory *)self knownToSystemCommissioner];
  if (v9 != [v4 knownToSystemCommissioner])
  {
    -[HMAccessory setKnownToSystemCommissioner:](self, "setKnownToSystemCommissioner:", [v4 knownToSystemCommissioner]);
    v8 = 1;
  }

  v10 = [(HMAccessory *)self serialNumber];
  v11 = [v4 serialNumber];
  v12 = [v10 isEqualToString:v11];

  if ((v12 & 1) == 0)
  {
    v13 = [v4 serialNumber];
    [(HMAccessory *)self setSerialNumber:v13];

    v8 = 1;
  }

  v14 = [(HMAccessory *)self productID];
  v15 = [v4 productID];
  v16 = HMFEqualObjects();

  if ((v16 & 1) == 0)
  {
    v17 = [v4 productID];
    [(HMAccessory *)self setProductID:v17];

    v8 = 1;
  }

  v18 = [(HMAccessory *)self vendorID];
  v19 = [v4 vendorID];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    v21 = [v4 vendorID];
    [(HMAccessory *)self setVendorID:v21];

    v8 = 1;
  }

  v22 = [(HMAccessory *)self nodeID];
  v23 = [v4 nodeID];
  v24 = HMFEqualObjects();

  if ((v24 & 1) == 0)
  {
    v25 = [v4 nodeID];
    [(HMAccessory *)self setNodeID:v25];

    v8 = 1;
  }

  v26 = [(HMAccessory *)self requiresThreadRouter];
  if (v26 != [v4 requiresThreadRouter])
  {
    -[HMAccessory setRequiresThreadRouter:](self, "setRequiresThreadRouter:", [v4 requiresThreadRouter]);
    v8 = 1;
  }

  v27 = [(HMAccessory *)self matterWEDSupport];
  v28 = [v4 matterWEDSupport];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    v30 = [v4 matterWEDSupport];
    [(HMAccessory *)self setMatterWEDSupport:v30];

    v8 = 1;
  }

  v31 = [(HMAccessory *)self matterExtendedMACAddress];
  v32 = [v4 matterExtendedMACAddress];
  v33 = HMFEqualObjects();

  if ((v33 & 1) == 0)
  {
    v34 = [v4 matterExtendedMACAddress];
    [(HMAccessory *)self setMatterExtendedMACAddress:v34];

    v8 = 1;
  }

  v35 = [(HMAccessory *)self supportedLinkLayerTypes];
  v36 = [v4 supportedLinkLayerTypes];
  v37 = HMFEqualObjects();

  if ((v37 & 1) == 0)
  {
    v38 = [v4 supportedLinkLayerTypes];
    [(HMAccessory *)self setSupportedLinkLayerTypes:v38];

    v8 = 1;
  }

  v39 = [(HMAccessory *)self rootPublicKey];
  v40 = [v4 rootPublicKey];
  v41 = [v39 isEqualToData:v40];

  if ((v41 & 1) == 0)
  {
    v42 = [v4 rootPublicKey];
    [(HMAccessory *)self setRootPublicKey:v42];

    v8 = 1;
  }

  v43 = [(HMAccessory *)self matterDeviceTypeID];
  v44 = [v4 matterDeviceTypeID];
  v45 = HMFEqualObjects();

  if ((v45 & 1) == 0)
  {
    v46 = [v4 matterDeviceTypeID];

    if (v46)
    {
      v47 = [v4 matterDeviceTypeID];
      [(HMAccessory *)self setMatterDeviceTypeID:v47];

      v8 = 1;
    }
  }

  return v8;
}

- (void)_identifyWithCompletionHandler:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v27 = @"kAccessoryUUID";
    v6 = [(HMAccessory *)self uuid];
    v7 = [v6 UUIDString];
    v28 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMAccessory *)self uuid];
    v12 = [v10 initWithTarget:v11];
    v13 = [v9 initWithName:@"kIdentifyAccessoryRequestKey" destination:v12 payload:v8];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __46__HMAccessory__identifyWithCompletionHandler___block_invoke;
    v24 = &unk_1E754DE00;
    v14 = v5;
    v25 = v14;
    v26 = v4;
    [v13 setResponseHandler:&v21];
    v15 = [v14 messageDispatcher];
    [v15 sendMessage:v13];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v19;
      v31 = 2080;
      v32 = "[HMAccessory _identifyWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __46__HMAccessory__identifyWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)identifyWithCompletionHandler:(void *)completion
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = completion;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory identifyWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__HMAccessory_identifyWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMAccessory identifyWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)supportsIdentify
{
  os_unfair_lock_lock_with_options();
  supportsIdentify = self->_supportsIdentify;
  os_unfair_lock_unlock(&self->_lock);
  return supportsIdentify;
}

- (void)setSupportsIdentify:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsIdentify = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAccessoryInfo:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessory *)self delegate];
  if ([v5 conformsToProtocol:&unk_1F0F63E80])
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [v4 hmf_stringForKey:@"kAccessoryVendorInfoBundleIDKey"];
  v9 = [(HMAccessory *)self bundleID];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    [(HMAccessory *)self setBundleID:v8];
    if (objc_opt_respondsToSelector())
    {
      v11 = [(HMAccessory *)self context];
      v12 = [v11 delegateCaller];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke;
      v51[3] = &unk_1E754E5E8;
      v52 = v7;
      v53 = self;
      v54 = v8;
      [v12 invokeBlock:v51];
    }
  }

  v13 = [v4 hmf_stringForKey:@"kAccessoryVendorInfoStoreIDKey"];
  v14 = [(HMAccessory *)self storeID];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    [(HMAccessory *)self setStoreID:v13];
    if (objc_opt_respondsToSelector())
    {
      v16 = [(HMAccessory *)self context];
      v17 = [v16 delegateCaller];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_2;
      v47[3] = &unk_1E754E5E8;
      v48 = v7;
      v49 = self;
      v50 = v13;
      [v17 invokeBlock:v47];
    }
  }

  v18 = [v4 hmf_BOOLForKey:@"kAccessoryVendorInfoFirmwareUpdateAvailableKey"];
  if (v18 != [(HMAccessory *)self isFirmwareUpdateAvailable])
  {
    [(HMAccessory *)self setFirmwareUpdateAvailable:v18];
    if (objc_opt_respondsToSelector())
    {
      v19 = [(HMAccessory *)self context];
      v20 = [v19 delegateCaller];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_3;
      v43[3] = &unk_1E754DC70;
      v44 = v7;
      v45 = self;
      v46 = v18;
      [v20 invokeBlock:v43];
    }
  }

  v21 = [v4 hmf_stringForKey:{@"kAccessoryInfoManufacturerKey", v13}];
  v22 = [(HMAccessory *)self manufacturer];
  v23 = HMFEqualObjects();

  if ((v23 & 1) == 0)
  {
    [(HMAccessory *)self setManufacturer:v21];
  }

  v24 = v7;
  v25 = [v4 hmf_stringForKey:@"kAccessoryInfoModelKey"];
  v26 = [(HMAccessory *)self model];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    [(HMAccessory *)self setModel:v25];
  }

  v28 = v8;
  v29 = [v4 hmf_stringForKey:@"kAccessoryInfoFirmwareVersionKey"];
  v30 = [(HMAccessory *)self firmwareVersion];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    [(HMAccessory *)self setFirmwareVersion:v29];
    v32 = [(HMAccessory *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v33 = [(HMAccessory *)self context];
      v34 = [v33 delegateCaller];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_4;
      v39[3] = &unk_1E754E5E8;
      v40 = v32;
      v41 = self;
      v42 = v29;
      [v34 invokeBlock:v39];
    }
  }

  v35 = [v4 hmf_stringForKey:@"kAccessoryInfoSerialNumberKey"];
  v36 = [(HMAccessory *)self serialNumber];
  v37 = HMFEqualObjects();

  if ((v37 & 1) == 0)
  {
    [(HMAccessory *)self setSerialNumber:v35];
  }
}

- (void)_handleAccessoryFlagsChanged:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_numberForKey:@"HM.accessoryFlagsKey"];

  LOBYTE(v5) = [v6 integerValue];
  v7 = [(HMAccessory *)self additionalSetupStatus];
  if (v5)
  {
    if (v7 == 1)
    {
      goto LABEL_7;
    }

    v8 = 1;
  }

  else
  {
    if (v7 == 2)
    {
      goto LABEL_7;
    }

    v8 = 2;
  }

  [(HMAccessory *)self setAdditionalSetupStatus:v8];
  [(HMAccessory *)self _notifyDelegatesOfAdditionalSetupRequiredChange];
LABEL_7:
  v9 = [v6 integerValue];
  v10 = [(HMAccessory *)self calibrationStatus];
  if ((v9 & 2) != 0)
  {
    if (v10 != 1)
    {
      v11 = objc_autoreleasePoolPush();
      v16 = self;
      v13 = HMFGetOSLogHandle();
      v15 = 1;
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        v19 = 138543362;
        v20 = v17;
        v15 = 1;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Calibration Status updated to  HMAccessoryCalibrationStatusInProgress", &v19, 0xCu);
      }

      goto LABEL_15;
    }
  }

  else if (v10 != 2)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Calibration Status updated to  HMAccessoryCalibrationStatusComplete", &v19, 0xCu);
    }

    v15 = 2;
LABEL_15:

    objc_autoreleasePoolPop(v11);
    [(HMAccessory *)self setCalibrationStatus:v15];
    [(HMAccessory *)self _notifyDelegatesOfUpdatedCalibrationStatus];
  }

  [(HMAccessory *)self setAccessoryFlags:v6];

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleAccessoryNotificationsUpdated:(id)a3
{
  v60 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v34 = self;
  v5 = [(HMAccessory *)self context];
  v6 = [v5 pendingRequests];

  v7 = [v4 identifier];
  v31 = v6;
  v42 = [v6 removeCompletionBlockForIdentifier:v7];

  v32 = v4;
  [v4 dictionaryForKey:@"kModifiedNotificationsForAccessoryKey"];
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  obj = v56 = 0u;
  v35 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  v8 = 0;
  if (v35)
  {
    v33 = *v54;
    do
    {
      v9 = 0;
      do
      {
        if (*v54 != v33)
        {
          objc_enumerationMutation(obj);
        }

        v37 = v9;
        v10 = *(*(&v53 + 1) + 8 * v9);
        v11 = [(HMAccessory *)v34 home];
        v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
        v43 = [v11 accessoryWithUUID:v12];

        v13 = [obj hmf_dictionaryForKey:v10];
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v52 = 0u;
        v40 = v13;
        v39 = [v13 countByEnumeratingWithState:&v49 objects:v58 count:16];
        if (v39)
        {
          v38 = *v50;
          do
          {
            v14 = 0;
            do
            {
              if (*v50 != v38)
              {
                objc_enumerationMutation(v40);
              }

              v41 = v14;
              v44 = *(*(&v49 + 1) + 8 * v14);
              v15 = [v40 hmf_dictionaryForKey:?];
              v45 = 0u;
              v46 = 0u;
              v47 = 0u;
              v48 = 0u;
              v16 = [v15 countByEnumeratingWithState:&v45 objects:v57 count:16];
              if (v16)
              {
                v17 = v16;
                v18 = *v46;
                do
                {
                  for (i = 0; i != v17; ++i)
                  {
                    if (*v46 != v18)
                    {
                      objc_enumerationMutation(v15);
                    }

                    v20 = *(*(&v45 + 1) + 8 * i);
                    v21 = [v43 _findCharacteristic:v20 forService:v44];
                    v22 = [v15 hmf_dictionaryForKey:v20];
                    v23 = [v22 errorFromDataForKey:@"kCharacteristicErrorDataKey"];
                    v24 = v23;
                    if (v23)
                    {
                      v25 = v8;
                      v8 = v23;
                    }

                    else
                    {
                      v26 = v8;
                      v27 = [v22 hmf_BOOLForKey:@"kCharacteristicNotificationEnableKey"];
                      v25 = [v22 hmf_dateForKey:@"kCharacteristicNotificationEnableTime"];
                      [v21 setNotificationEnabled:v27];
                      if (v25)
                      {
                        [v21 setNotificationEnabledTime:v25];
                      }

                      if (v42)
                      {
                        [v21 setNotificationEnabledByThisClient:v27];
                      }

                      v8 = v26;
                    }
                  }

                  v17 = [v15 countByEnumeratingWithState:&v45 objects:v57 count:16];
                }

                while (v17);
              }

              v14 = v41 + 1;
            }

            while (v41 + 1 != v39);
            v39 = [v40 countByEnumeratingWithState:&v49 objects:v58 count:16];
          }

          while (v39);
        }

        v9 = v37 + 1;
      }

      while (v37 + 1 != v35);
      v35 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v35);
  }

  if (v42)
  {
    v28 = [(HMAccessory *)v34 context];
    v29 = [v28 delegateCaller];
    [v29 callCompletion:v42 error:v8];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleRuntimeStateUpdate:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [(HMAccessory *)self _handleConnectivityChanged:v4];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(HMAccessory *)self profiles];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v11 + 1) + 8 * v9++) handleRuntimeStateUpdate:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnectivityChanged:(id)a3
{
  v45 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"kAccessoryIsReachableKey"];
  v6 = v5;
  if (!v5 || (v7 = [v5 BOOLValue], v8 = -[HMAccessory suspendCapable](self, "suspendCapable") | v7, (v8 & 1) == -[HMAccessory isReachable](self, "isReachable")))
  {
    v15 = 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [(HMAccessory *)v10 isReachable];
      v13 = HMFBooleanToString();
      v14 = HMFBooleanToString();
      *buf = 138543874;
      v40 = v12;
      v41 = 2112;
      v42 = v13;
      v43 = 2112;
      v44 = v14;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating isReachable from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMAccessory *)v10 setReachable:v8 & 1];
    v15 = 1;
  }

  v16 = [v4 hmf_numberForKey:@"HM.suspendedState"];
  v17 = v16;
  if (v16 && (v18 = [v16 unsignedIntegerValue], v18 != -[HMAccessory suspendedState](self, "suspendedState")))
  {
    [(HMAccessory *)self setSuspendedState:v18];
  }

  else if (!v15)
  {
    goto LABEL_15;
  }

  v19 = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v20 = [(HMAccessory *)self context];
    v21 = [v20 delegateCaller];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __42__HMAccessory__handleConnectivityChanged___block_invoke;
    v36[3] = &unk_1E754E5C0;
    v37 = v19;
    v38 = self;
    [v21 invokeBlock:v36];
  }

LABEL_15:
  v22 = [v4 hmf_numberForKey:@"controllable"];
  v23 = v22;
  if (v22)
  {
    v24 = [v22 BOOLValue];
    if (v24 != [(HMAccessory *)self isControllable])
    {
      [(HMAccessory *)self setControllable:v24];
      [(HMAccessory *)self _notifyDelegatesOfUpdatedControllable];
    }
  }

  v25 = [v4 hmf_numberForKey:@"HM.accessoryReachableTransports"];
  if (v25)
  {
    v26 = [(HMAccessory *)self reachableTransports];
    if (v26 != [v25 integerValue])
    {
      -[HMAccessory setReachableTransports:](self, "setReachableTransports:", [v25 integerValue]);
      v27 = [(HMAccessory *)self delegate];
      if ([v27 conformsToProtocol:&unk_1F0F63E80])
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      if (objc_opt_respondsToSelector())
      {
        v30 = [(HMAccessory *)self context];
        v31 = [v30 delegateCaller];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __42__HMAccessory__handleConnectivityChanged___block_invoke_2;
        v33[3] = &unk_1E754E5C0;
        v34 = v29;
        v35 = self;
        [v31 invokeBlock:v33];
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_handlePairingStateChanged:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 numberForKey:@"kAccessoryIsPairedKey"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 BOOLValue];
    if (v7 != [(HMAccessory *)self paired])
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        [(HMAccessory *)v9 paired];
        v12 = HMFBooleanToString();
        v13 = HMFBooleanToString();
        *buf = 138543874;
        v22 = v11;
        v23 = 2112;
        v24 = v12;
        v25 = 2112;
        v26 = v13;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating isPaired from %@ to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v8);
      [(HMAccessory *)v9 setPaired:v7];
      v14 = [(HMAccessory *)v9 delegate];
      if (objc_opt_respondsToSelector())
      {
        v15 = [(HMAccessory *)v9 context];
        v16 = [v15 delegateCaller];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __42__HMAccessory__handlePairingStateChanged___block_invoke;
        v18[3] = &unk_1E754E5C0;
        v19 = v14;
        v20 = v9;
        [v16 invokeBlock:v18];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleRenamed:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 stringForKey:@"kAccessoryName"];
  v6 = [(HMAccessory *)self context];
  v7 = [v6 pendingRequests];

  v8 = [v4 identifier];
  v9 = [v7 removeCompletionBlockForIdentifier:v8];

  if (v5)
  {
    v10 = [(HMAccessory *)self name];
    v11 = HMFEqualObjects();

    if (v11)
    {
      if (!v9)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v15;
        v30 = 2112;
        v31 = v5;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updated name: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [(HMAccessory *)v13 setName:v5];
      if (!v9)
      {
        v16 = [(HMAccessory *)v13 delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_10;
        }

        v19 = objc_autoreleasePoolPush();
        v20 = v13;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v22;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated name", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        v23 = [(HMAccessory *)v20 context];
        v24 = [v23 delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __30__HMAccessory__handleRenamed___block_invoke;
        v25[3] = &unk_1E754E5C0;
        v16 = v16;
        v26 = v16;
        v27 = v20;
        [v24 invokeBlock:v25];

        v17 = v26;
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }
    }

    v16 = [(HMAccessory *)self context];
    v17 = [v16 delegateCaller];
    [v17 callCompletion:v9 error:0];
    goto LABEL_9;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleCharacteristicValueUpdated:(id)a3
{
  v4 = a3;
  v5 = [v4 numberForKey:@"kServiceInstanceID"];
  v6 = [v4 numberForKey:@"kCharacteristicInstanceID"];
  v7 = [v4 messagePayload];
  v8 = [v7 objectForKeyedSubscript:@"kCharacteristicValue"];

  v9 = [v4 errorForKey:@"kCharacteristicErrorDataKey"];
  v10 = [(HMAccessory *)self context];
  v11 = [v10 pendingRequests];

  v12 = [v4 identifier];
  v13 = [v11 removeCompletionBlockForIdentifier:v12];

  if (v5 && v6 && v8)
  {
    v14 = [(HMAccessory *)self services];
    v15 = [v14 hmf_firstObjectWithInstanceID:v5];

    if (v15)
    {
      v30 = v9;
      v16 = [v15 characteristics];
      v17 = [v16 hmf_firstObjectWithInstanceID:v6];

      v31 = v17;
      if (v17)
      {
        v18 = [MEMORY[0x1E695DFB0] null];

        v27 = v15;
        if (v8 == v18)
        {

          v8 = 0;
        }

        v29 = [v17 value];
        v19 = [v4 headers];
        v20 = [v19 hmf_dateForKey:@"HMXPCMessageSentDateKey"];

        v28 = v20;
        [v17 _updateValue:v8 valueUpdatedDate:v20];
        if (v13)
        {
          v21 = [(HMAccessory *)self context];
          v22 = [v21 delegateCaller];
          v9 = v30;
          [v22 callCompletion:v13 error:v30];

          v23 = v29;
          v15 = v27;
        }

        else
        {
          v9 = v30;
          v23 = v29;
          v15 = v27;
          if ((HMFEqualObjects() & 1) == 0)
          {
            v26 = [(HMAccessory *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              v25 = [(HMAccessory *)self context];
              v24 = [v25 delegateCaller];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __49__HMAccessory__handleCharacteristicValueUpdated___block_invoke;
              v32[3] = &unk_1E754DE30;
              v33 = v26;
              v34 = self;
              v35 = v27;
              v36 = v31;
              [v24 invokeBlock:v32];

              v23 = v29;
            }
          }
        }
      }

      else
      {
        v9 = v30;
      }
    }
  }
}

- (id)logIdentifier
{
  v2 = [(HMAccessory *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)notifyDelegateOfUpdatedWiFiNetworkInfo
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self delegate];
  if ([v3 conformsToProtocol:&unk_1F0F63E80])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update WiFi network info with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMAccessory *)v7 context];
    v11 = [v10 delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMAccessory_notifyDelegateOfUpdatedWiFiNetworkInfo__block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = v5;
    v15 = v7;
    [v11 invokeBlock:v13];
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__HMAccessory_notifyDelegateOfUpdatedWiFiNetworkInfo__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 wifiNetworkInfo];
  [v1 accessory:v2 didUpdateWifiNetworkInfo:v3];
}

- (void)notifyDelegateOfUpdatedServices
{
  v3 = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = [(HMAccessory *)self context];
    v5 = [v4 queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__HMAccessory_notifyDelegateOfUpdatedServices__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v6[4] = self;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void __46__HMAccessory_notifyDelegateOfUpdatedServices__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__HMAccessory_notifyDelegateOfUpdatedServices__block_invoke_2;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __46__HMAccessory_notifyDelegateOfUpdatedServices__block_invoke_2(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Calling accessoryDidUpdateServices", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateServices:*(a1 + 32)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)notifyDelegateUpdatedSupportsMediaContentProfile
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)v9 supportsMediaContentProfile];
      v12 = HMFBooleanToString();
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated supportsMediaContentProfile: %@, delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __63__HMAccessory_notifyDelegateUpdatedSupportsMediaContentProfile__block_invoke;
      v18[3] = &unk_1E754E5C0;
      v19 = v7;
      v20 = v9;
      [v4 invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsMediaContentProfile support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsJustSiri
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)v9 supportsJustSiri];
      v12 = HMFBooleanToString();
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated supportsJustSiri: %@, delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __52__HMAccessory_notifyDelegateUpdatedSupportsJustSiri__block_invoke;
      v18[3] = &unk_1E754E5C0;
      v19 = v7;
      v20 = v9;
      [v4 invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsJustSiri support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsRMVonAppleTV
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)v9 supportsRMVonAppleTV];
      v12 = HMFBooleanToString();
      *buf = 138543874;
      v22 = v11;
      v23 = 2112;
      v24 = v12;
      v25 = 2112;
      v26 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated supportsRMVonAppleTV: %@, delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __56__HMAccessory_notifyDelegateUpdatedSupportsRMVonAppleTV__block_invoke;
      v18[3] = &unk_1E754E5C0;
      v19 = v7;
      v20 = v9;
      [v4 invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsRMVonAppleTV support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedPreferredMediaUser
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated preferred media user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __54__HMAccessory_notifyDelegateUpdatedPreferredMediaUser__block_invoke;
      v17[3] = &unk_1E754E5C0;
      v18 = v7;
      v19 = v9;
      [v4 invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated preferred media user missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsPreferredMediaUser
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated support for preferred media user: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __62__HMAccessory_notifyDelegateUpdatedSupportsPreferredMediaUser__block_invoke;
      v17[3] = &unk_1E754E5C0;
      v18 = v7;
      v19 = v9;
      [v4 invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated preferred media user support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAudioDestinationControllerUpdate
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update audio destination controller using private delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __63__HMAccessory_notifyDelegateOfAudioDestinationControllerUpdate__block_invoke;
      v17[3] = &unk_1E754E5C0;
      v18 = v7;
      v19 = v9;
      [v4 invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of audio destination controller update due to missing delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAudioDestinationUpdate
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMAccessory *)self delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update audio destination using private delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __53__HMAccessory_notifyDelegateOfAudioDestinationUpdate__block_invoke;
      v17[3] = &unk_1E754E5C0;
      v18 = v7;
      v19 = v9;
      [v4 invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of audio destination update due to missing delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_mergeProfiles:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMAccessory *)self accessoryProfiles];
  v7 = [v6 array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v7 newObjects:v4];

  v9 = [(HMObjectMergeCollection *)v8 removedObjects];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__HMAccessory__mergeProfiles___block_invoke;
  v24[3] = &unk_1E754B578;
  v24[4] = self;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  v10 = [(HMObjectMergeCollection *)v8 addedObjects];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__HMAccessory__mergeProfiles___block_invoke_1333;
  v23[3] = &unk_1E754B578;
  v23[4] = self;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v23];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  v11 = [(HMObjectMergeCollection *)v8 finalObjects];
  v12 = [(HMAccessory *)self accessoryProfiles];
  [v12 setArray:v11];

  v13 = [(HMObjectMergeCollection *)v8 removedObjects];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __30__HMAccessory__mergeProfiles___block_invoke_1334;
  v22[3] = &unk_1E754B578;
  v22[4] = self;
  [v13 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

  v14 = [(HMObjectMergeCollection *)v8 addedObjects];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __30__HMAccessory__mergeProfiles___block_invoke_1336;
  v21[3] = &unk_1E754B578;
  v21[4] = self;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  if ([(HMObjectMergeCollection *)v8 isModified])
  {
    v15 = [(HMAccessory *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement accessory profile methods, calling accessoryDidUpdateServices:. This behavior is not documented and will be removed in the near future. Please adopt accessory:didAddProfile: and/or accessory:didRemoveProfile:.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMAccessory *)v17 notifyDelegateOfUpdatedServices];
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __30__HMAccessory__mergeProfiles___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed accessory profile via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 accessoryProfile];
  [v8 _unconfigure];

  v9 = *MEMORY[0x1E69E9840];
}

void __30__HMAccessory__mergeProfiles___block_invoke_1333(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v7;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added accessory profile via merge: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [v3 accessoryProfile];
  v9 = [*(a1 + 32) context];
  [v8 __configureWithContext:v9 accessory:*(a1 + 32)];

  v10 = *MEMORY[0x1E69E9840];
}

void __30__HMAccessory__mergeProfiles___block_invoke_1334(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__HMAccessory__mergeProfiles___block_invoke_2;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __30__HMAccessory__mergeProfiles___block_invoke_1336(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v5 = [*(a1 + 32) context];
    v6 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__HMAccessory__mergeProfiles___block_invoke_2_1338;
    block[3] = &unk_1E754E5E8;
    block[4] = *(a1 + 32);
    v8 = v3;
    v9 = v4;
    dispatch_async(v6, block);
  }
}

void __30__HMAccessory__mergeProfiles___block_invoke_2_1338(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__HMAccessory__mergeProfiles___block_invoke_3_1339;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __30__HMAccessory__mergeProfiles___block_invoke_3_1339(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added profile: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) accessory:*(a1 + 32) didAddProfile:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __30__HMAccessory__mergeProfiles___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__HMAccessory__mergeProfiles___block_invoke_3;
  v5[3] = &unk_1E754E5E8;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  v7 = *(a1 + 48);
  [v3 invokeBlock:v5];
}

uint64_t __30__HMAccessory__mergeProfiles___block_invoke_3(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed profile: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 48) accessory:*(a1 + 32) didRemoveProfile:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_mergeRemoteLoginHandler:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self remoteLoginHandler];

  if (!v4 || v5)
  {
    v12 = [(HMAccessory *)self remoteLoginHandler];

    v11 = 0;
    if (v4 && v12)
    {
      v13 = [(HMAccessory *)self remoteLoginHandler];
      v11 = [v13 mergeFromNewObject:v4];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v4;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Merging new remote login handler: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMAccessory *)v7 setRemoteLoginHandler:v4];
    v10 = [(HMAccessory *)v7 context];
    [v4 _configureWithContext:v10 accessory:v7];

    [v4 registerForMessages];
    [v4 postConfigure];
    v11 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v747 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v659 = [(HMAccessory *)self home];
  if (!v6)
  {
    v48 = 0;
    goto LABEL_424;
  }

  v656 = v4;
  v7 = [v6 services];
  v8 = [(HMAccessory *)self _mergeServices:v7];

  LODWORD(v7) = [(HMAccessory *)self isDemoAccessory];
  if (v7 != [v6 isDemoAccessory])
  {
    -[HMAccessory setDemoAccessory:](self, "setDemoAccessory:", [v6 demoAccessory]);
    v8 = 1;
  }

  v9 = [v6 controlTargetUUIDs];
  v10 = [(HMAccessory *)self _mergeControlTargetUUIDs:v9];

  LODWORD(v9) = [(HMAccessory *)self supportsTargetControl];
  if (v9 == [v6 supportsTargetControl] && (v11 = -[HMAccessory supportsTargetController](self, "supportsTargetController"), v11 == objc_msgSend(v6, "supportsTargetController")) && (v12 = -[HMAccessory targetControllerHardwareSupport](self, "targetControllerHardwareSupport"), v12 == objc_msgSend(v6, "targetControllerHardwareSupport")))
  {
    v15 = v10 || v8;
  }

  else
  {
    -[HMAccessory setSupportsTargetControl:](self, "setSupportsTargetControl:", [v6 supportsTargetControl]);
    -[HMAccessory setSupportsTargetController:](self, "setSupportsTargetController:", [v6 supportsTargetController]);
    -[HMAccessory setTargetControllerHardwareSupport:](self, "setTargetControllerHardwareSupport:", [v6 targetControllerHardwareSupport]);
    v13 = [(HMAccessory *)self context];
    v14 = [v13 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__HMAccessory_mergeFromNewObject___block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(v14, block);

    v15 = 1;
  }

  v16 = [(HMAccessory *)self supportsMultiUser];
  if (v16 != [v6 supportsMultiUser])
  {
    -[HMAccessory setSupportsMultiUser:](self, "setSupportsMultiUser:", [v6 supportsMultiUser]);
    v17 = [(HMAccessory *)self context];
    v18 = [v17 queue];
    v737[0] = MEMORY[0x1E69E9820];
    v737[1] = 3221225472;
    v737[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2;
    v737[3] = &unk_1E754E2A8;
    v737[4] = self;
    dispatch_async(v18, v737);
  }

  v19 = [(HMAccessory *)self supportsHomeLevelLocationServiceSetting];
  if (v19 != [v6 supportsHomeLevelLocationServiceSetting])
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      [v6 supportsHomeLevelLocationServiceSetting];
      v24 = HMFBooleanToString();
      *buf = 138543618;
      v740 = v23;
      v741 = 2112;
      v742 = v24;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating supports home level location service setting: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    -[HMAccessory setSupportsHomeLevelLocationServiceSetting:](v21, "setSupportsHomeLevelLocationServiceSetting:", [v6 supportsHomeLevelLocationServiceSetting]);
    v25 = [(HMAccessory *)v21 context];
    v26 = [v25 queue];
    v736[0] = MEMORY[0x1E69E9820];
    v736[1] = 3221225472;
    v736[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1128;
    v736[3] = &unk_1E754E2A8;
    v736[4] = v21;
    dispatch_async(v26, v736);
  }

  v27 = [(HMAccessory *)self supportsAudioReturnChannel];
  if (v27 != [v6 supportsAudioReturnChannel])
  {
    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier();
      [v6 supportsAudioReturnChannel];
      v32 = HMFBooleanToString();
      *buf = 138543618;
      v740 = v31;
      v741 = 2112;
      v742 = v32;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_INFO, "%{public}@Updating supports audio return channel: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    -[HMAccessory setSupportsAudioReturnChannel:](v29, "setSupportsAudioReturnChannel:", [v6 supportsAudioReturnChannel]);
    v33 = [(HMAccessory *)v29 context];
    v34 = [v33 queue];
    v735[0] = MEMORY[0x1E69E9820];
    v735[1] = 3221225472;
    v735[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1129;
    v735[3] = &unk_1E754E2A8;
    v735[4] = v29;
    dispatch_async(v34, v735);
  }

  v35 = [(HMAccessory *)self supportsCompanionInitiatedRestart];
  if (v35 != [v6 supportsCompanionInitiatedRestart])
  {
    -[HMAccessory setSupportsCompanionInitiatedRestart:](self, "setSupportsCompanionInitiatedRestart:", [v6 supportsCompanionInitiatedRestart]);
    v36 = [(HMAccessory *)self context];
    v37 = [v36 queue];
    v734[0] = MEMORY[0x1E69E9820];
    v734[1] = 3221225472;
    v734[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1130;
    v734[3] = &unk_1E754E2A8;
    v734[4] = self;
    dispatch_async(v37, v734);
  }

  v38 = [(HMAccessory *)self supportsCompanionInitiatedObliterate];
  if (v38 != [v6 supportsCompanionInitiatedObliterate])
  {
    -[HMAccessory setSupportsCompanionInitiatedObliterate:](self, "setSupportsCompanionInitiatedObliterate:", [v6 supportsCompanionInitiatedObliterate]);
    v39 = [(HMAccessory *)self context];
    v40 = [v39 queue];
    v733[0] = MEMORY[0x1E69E9820];
    v733[1] = 3221225472;
    v733[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3;
    v733[3] = &unk_1E754E2A8;
    v733[4] = self;
    dispatch_async(v40, v733);
  }

  v41 = [(HMAccessory *)self supportsMusicAlarm];
  if (v41 != [v6 supportsMusicAlarm])
  {
    -[HMAccessory setSupportsMusicAlarm:](self, "setSupportsMusicAlarm:", [v6 supportsMusicAlarm]);
    v42 = [(HMAccessory *)self context];
    v43 = [v42 queue];
    v732[0] = MEMORY[0x1E69E9820];
    v732[1] = 3221225472;
    v732[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4;
    v732[3] = &unk_1E754E2A8;
    v732[4] = self;
    dispatch_async(v43, v732);
  }

  v44 = [(HMAccessory *)self supportsAnnounce];
  if (v44 != [v6 supportsAnnounce])
  {
    -[HMAccessory setSupportsAnnounce:](self, "setSupportsAnnounce:", [v6 supportsAnnounce]);
    v45 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v46 = [(HMAccessory *)self context];
      v47 = [v46 queue];
      v730[0] = MEMORY[0x1E69E9820];
      v730[1] = 3221225472;
      v730[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_5;
      v730[3] = &unk_1E754E5C0;
      v730[4] = self;
      v731 = v45;
      dispatch_async(v47, v730);
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v52;
        v741 = 2112;
        v742 = v45;
        _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports announce update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  v53 = [(HMAccessory *)self supportsMediaActions];
  if (v53 != [v6 supportsMediaActions])
  {
    -[HMAccessory setSupportsMediaActions:](self, "setSupportsMediaActions:", [v6 supportsMediaActions]);
    v54 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v55 = [(HMAccessory *)self context];
      v56 = [v55 queue];
      v728[0] = MEMORY[0x1E69E9820];
      v728[1] = 3221225472;
      v728[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1133;
      v728[3] = &unk_1E754E5C0;
      v728[4] = self;
      v729 = v54;
      dispatch_async(v56, v728);
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      v58 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v60;
        v741 = 2112;
        v742 = v54;
        _os_log_impl(&dword_19BB39000, v59, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports media actions update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
    }
  }

  v61 = [(HMAccessory *)self supportsDropIn];
  if (v61 != [v6 supportsDropIn])
  {
    -[HMAccessory setSupportsDropIn:](self, "setSupportsDropIn:", [v6 supportsDropIn]);
    v62 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v63 = [(HMAccessory *)self context];
      v64 = [v63 queue];
      v726[0] = MEMORY[0x1E69E9820];
      v726[1] = 3221225472;
      v726[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1136;
      v726[3] = &unk_1E754E5C0;
      v726[4] = self;
      v727 = v62;
      dispatch_async(v64, v726);
    }

    else
    {
      v65 = objc_autoreleasePoolPush();
      v66 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v68;
        v741 = 2112;
        v742 = v62;
        _os_log_impl(&dword_19BB39000, v67, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports drop in update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v65);
    }
  }

  v69 = [(HMAccessory *)self supportsAudioAnalysis];
  if (v69 != [v6 supportsAudioAnalysis])
  {
    -[HMAccessory setSupportsAudioAnalysis:](self, "setSupportsAudioAnalysis:", [v6 supportsAudioAnalysis]);
    v70 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v71 = [(HMAccessory *)self context];
      v72 = [v71 queue];
      v724[0] = MEMORY[0x1E69E9820];
      v724[1] = 3221225472;
      v724[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1139;
      v724[3] = &unk_1E754E5C0;
      v724[4] = self;
      v725 = v70;
      dispatch_async(v72, v724);
    }

    else
    {
      v73 = objc_autoreleasePoolPush();
      v74 = self;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v76;
        v741 = 2112;
        v742 = v70;
        _os_log_impl(&dword_19BB39000, v75, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports audio analysis update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v73);
    }
  }

  v77 = [(HMAccessory *)self supportsThirdPartyMusic];
  if (v77 != [v6 supportsThirdPartyMusic])
  {
    -[HMAccessory setSupportsThirdPartyMusic:](self, "setSupportsThirdPartyMusic:", [v6 supportsThirdPartyMusic]);
    v78 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v79 = [(HMAccessory *)self context];
      v80 = [v79 queue];
      v722[0] = MEMORY[0x1E69E9820];
      v722[1] = 3221225472;
      v722[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1142;
      v722[3] = &unk_1E754E5C0;
      v722[4] = self;
      v723 = v78;
      dispatch_async(v80, v722);
    }
  }

  v81 = [(HMAccessory *)self supportsDoorbellChime];
  if (v81 != [v6 supportsDoorbellChime])
  {
    -[HMAccessory setSupportsDoorbellChime:](self, "setSupportsDoorbellChime:", [v6 supportsDoorbellChime]);
    v82 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v83 = [(HMAccessory *)self context];
      v84 = [v83 queue];
      v720[0] = MEMORY[0x1E69E9820];
      v720[1] = 3221225472;
      v720[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1145;
      v720[3] = &unk_1E754E5C0;
      v720[4] = self;
      v721 = v82;
      dispatch_async(v84, v720);
    }
  }

  v85 = [(HMAccessory *)self supportsUserMediaSettings];
  if (v85 != [v6 supportsUserMediaSettings])
  {
    -[HMAccessory setSupportsUserMediaSettings:](self, "setSupportsUserMediaSettings:", [v6 supportsUserMediaSettings]);
    v86 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v87 = [(HMAccessory *)self context];
      v88 = [v87 queue];
      v718[0] = MEMORY[0x1E69E9820];
      v718[1] = 3221225472;
      v718[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1148;
      v718[3] = &unk_1E754E5C0;
      v718[4] = self;
      v719 = v86;
      dispatch_async(v88, v718);
    }
  }

  v89 = [(HMAccessory *)self name];
  v90 = [v6 name];
  v91 = HMFEqualObjects();

  if ((v91 & 1) == 0)
  {
    v92 = objc_autoreleasePoolPush();
    v93 = self;
    v94 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = HMFGetLogIdentifier();
      v96 = [v6 name];
      *buf = 138543618;
      v740 = v95;
      v741 = 2112;
      v742 = v96;
      _os_log_impl(&dword_19BB39000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@Updated name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v92);
    v97 = [v6 name];
    [(HMAccessory *)v93 setName:v97];

    v98 = [(HMAccessory *)v93 delegate];
    v99 = objc_autoreleasePoolPush();
    v100 = v93;
    v101 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      v102 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v102;
      v741 = 2112;
      v742 = v98;
      _os_log_impl(&dword_19BB39000, v101, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update name with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v99);
    if (objc_opt_respondsToSelector())
    {
      v103 = [(HMAccessory *)v100 context];
      v104 = [v103 queue];
      v716[0] = MEMORY[0x1E69E9820];
      v716[1] = 3221225472;
      v716[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1151;
      v716[3] = &unk_1E754E5C0;
      v716[4] = v100;
      v717 = v98;
      dispatch_async(v104, v716);
    }

    v15 = 1;
  }

  v105 = [(HMAccessory *)self configuredName];
  v106 = [v6 configuredName];
  v107 = HMFEqualObjects();

  if ((v107 & 1) == 0)
  {
    v108 = objc_autoreleasePoolPush();
    v109 = self;
    v110 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
    {
      v111 = HMFGetLogIdentifier();
      v112 = [v6 configuredName];
      *buf = 138543618;
      v740 = v111;
      v741 = 2112;
      v742 = v112;
      _os_log_impl(&dword_19BB39000, v110, OS_LOG_TYPE_INFO, "%{public}@Updated configured name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v108);
    v113 = [v6 configuredName];
    [(HMAccessory *)v109 setConfiguredName:v113];

    v114 = [(HMAccessory *)v109 delegate];
    v115 = objc_autoreleasePoolPush();
    v116 = v109;
    v117 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v118 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v118;
      v741 = 2112;
      v742 = v114;
      _os_log_impl(&dword_19BB39000, v117, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update configured name with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v115);
    if (objc_opt_respondsToSelector())
    {
      v119 = [(HMAccessory *)v116 context];
      v120 = [v119 queue];
      v714[0] = MEMORY[0x1E69E9820];
      v714[1] = 3221225472;
      v714[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1153;
      v714[3] = &unk_1E754E5C0;
      v714[4] = v116;
      v715 = v114;
      dispatch_async(v120, v714);
    }
  }

  v121 = [(HMAccessory *)self applicationData];
  v122 = [v6 applicationData];
  v123 = HMFEqualObjects();

  if ((v123 & 1) == 0)
  {
    v124 = objc_autoreleasePoolPush();
    v125 = self;
    v126 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      v127 = HMFGetLogIdentifier();
      *buf = 138543362;
      v740 = v127;
      _os_log_impl(&dword_19BB39000, v126, OS_LOG_TYPE_INFO, "%{public}@Updated application data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v124);
    v128 = [v6 applicationData];
    [(HMAccessory *)v125 setApplicationData:v128];

    v129 = [(HMAccessory *)v125 _privateDelegate];
    v130 = objc_autoreleasePoolPush();
    v131 = v125;
    v132 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
    {
      v133 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v133;
      v741 = 2112;
      v742 = v129;
      _os_log_impl(&dword_19BB39000, v132, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update application data with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v130);
    if (objc_opt_respondsToSelector())
    {
      v134 = [(HMAccessory *)v131 context];
      v135 = [v134 queue];
      v712[0] = MEMORY[0x1E69E9820];
      v712[1] = 3221225472;
      v712[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1156;
      v712[3] = &unk_1E754E5C0;
      v712[4] = v131;
      v713 = v129;
      dispatch_async(v135, v712);
    }

    v15 = 1;
  }

  v136 = [v6 room];
  v137 = [(HMAccessory *)self room];
  v138 = [v137 uuid];
  v657 = v136;
  v139 = [v136 uuid];
  v140 = [v138 isEqual:v139];

  if ((v140 & 1) == 0)
  {
    v141 = [v657 uuid];
    v142 = [v659 roomWithUUID:v141];

    if (v142)
    {
      [(HMAccessory *)self setRoom:v142];
    }

    else
    {
      v143 = objc_autoreleasePoolPush();
      v144 = self;
      v145 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v146 = HMFGetLogIdentifier();
        v147 = [v657 uuid];
        *buf = 138543618;
        v740 = v146;
        v741 = 2112;
        v742 = v147;
        _os_log_impl(&dword_19BB39000, v145, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find HMRoom for updated room UUID via merge: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v143);
    }

    v148 = [v659 delegate];
    v149 = objc_autoreleasePoolPush();
    v150 = self;
    v151 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      v152 = HMFGetLogIdentifier();
      *buf = 138544130;
      v740 = v152;
      v741 = 2112;
      v742 = v142;
      v743 = 2112;
      v744 = v150;
      v745 = 2112;
      v746 = v148;
      _os_log_impl(&dword_19BB39000, v151, OS_LOG_TYPE_INFO, "%{public}@Notifying client did update room: %@ for accessory: %@ delegate: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v149);
    if (objc_opt_respondsToSelector())
    {
      v153 = [(HMAccessory *)v150 context];
      v154 = [v153 queue];
      v708[0] = MEMORY[0x1E69E9820];
      v708[1] = 3221225472;
      v708[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1160;
      v708[3] = &unk_1E754DE30;
      v708[4] = v150;
      v709 = v148;
      v710 = v659;
      v711 = v142;
      dispatch_async(v154, v708);
    }

    v15 = 1;
  }

  v155 = [(HMAccessory *)self paired];
  v156 = v155 ^ [v6 paired];
  if (v156 == 1)
  {
    -[HMAccessory setPaired:](self, "setPaired:", [v6 paired]);
    v15 = 1;
  }

  v157 = [(HMAccessory *)self suspendedState];
  if (v157 != [v6 suspendedState])
  {
    -[HMAccessory setSuspendedState:](self, "setSuspendedState:", [v6 suspendedState]);
    v156 = 1;
    v15 = 1;
  }

  v158 = [(HMAccessory *)self supportsAccessCodes];
  if (v158 != [v6 supportsAccessCodes])
  {
    -[HMAccessory setSupportsAccessCodes:](self, "setSupportsAccessCodes:", [v6 supportsAccessCodes]);
    v15 = 1;
  }

  v159 = [(HMAccessory *)self supportsWalletKey];
  if (v159 != [v6 supportsWalletKey])
  {
    -[HMAccessory setSupportsWalletKey:](self, "setSupportsWalletKey:", [v6 supportsWalletKey]);
    v160 = [(HMAccessory *)self context];
    v161 = [v160 queue];
    v707[0] = MEMORY[0x1E69E9820];
    v707[1] = 3221225472;
    v707[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3_1162;
    v707[3] = &unk_1E754E2A8;
    v707[4] = self;
    dispatch_async(v161, v707);

    v15 = 1;
  }

  v162 = [(HMAccessory *)self supportsUWBUnlock];
  if (v162 != [v6 supportsUWBUnlock])
  {
    -[HMAccessory setSupportsUWBUnlock:](self, "setSupportsUWBUnlock:", [v6 supportsUWBUnlock]);
    v163 = [(HMAccessory *)self context];
    v164 = [v163 queue];
    v706[0] = MEMORY[0x1E69E9820];
    v706[1] = 3221225472;
    v706[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4_1163;
    v706[3] = &unk_1E754E2A8;
    v706[4] = self;
    dispatch_async(v164, v706);

    v15 = 1;
  }

  v165 = [(HMAccessory *)self readerGroupSubIdentifierACWG];
  v166 = [v6 readerGroupSubIdentifierACWG];
  v167 = HMFEqualObjects();

  if ((v167 & 1) == 0)
  {
    v168 = objc_autoreleasePoolPush();
    v169 = self;
    v170 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
    {
      v171 = HMFGetLogIdentifier();
      v172 = [(HMAccessory *)v169 readerGroupSubIdentifierACWG];
      v173 = [v6 readerGroupSubIdentifierACWG];
      *buf = 138543874;
      v740 = v171;
      v741 = 2112;
      v742 = v172;
      v743 = 2112;
      v744 = v173;
      _os_log_impl(&dword_19BB39000, v170, OS_LOG_TYPE_INFO, "%{public}@Updating readerGroupSubIdentifierACWG from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v168);
    v174 = [v6 readerGroupSubIdentifierACWG];
    [(HMAccessory *)v169 setReaderGroupSubIdentifierACWG:v174];

    v15 = 1;
  }

  v175 = [(HMAccessory *)self readerIDACWG];
  v176 = [v6 readerIDACWG];
  v177 = HMFEqualObjects();

  if ((v177 & 1) == 0)
  {
    v178 = objc_autoreleasePoolPush();
    v179 = self;
    v180 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
    {
      v181 = HMFGetLogIdentifier();
      v182 = [(HMAccessory *)v179 readerIDACWG];
      v183 = [v6 readerIDACWG];
      *buf = 138543874;
      v740 = v181;
      v741 = 2112;
      v742 = v182;
      v743 = 2112;
      v744 = v183;
      _os_log_impl(&dword_19BB39000, v180, OS_LOG_TYPE_INFO, "%{public}@Updating readerIDACWG from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v178);
    v184 = [v6 readerIDACWG];
    [(HMAccessory *)v179 setReaderIDACWG:v184];

    v15 = 1;
  }

  v185 = [(HMAccessory *)self weekDaySchedulesPerUserCapacity];
  v186 = [v6 weekDaySchedulesPerUserCapacity];
  v187 = HMFEqualObjects();

  if ((v187 & 1) == 0)
  {
    v188 = objc_autoreleasePoolPush();
    v189 = self;
    v190 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
    {
      v191 = HMFGetLogIdentifier();
      v192 = [(HMAccessory *)v189 weekDaySchedulesPerUserCapacity];
      v193 = [v6 weekDaySchedulesPerUserCapacity];
      *buf = 138543874;
      v740 = v191;
      v741 = 2112;
      v742 = v192;
      v743 = 2112;
      v744 = v193;
      _os_log_impl(&dword_19BB39000, v190, OS_LOG_TYPE_INFO, "%{public}@Updating weekDaySchedulesPerUserCapacity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v188);
    v194 = [v6 weekDaySchedulesPerUserCapacity];
    [(HMAccessory *)v189 setWeekDaySchedulesPerUserCapacity:v194];

    v15 = 1;
  }

  v195 = [(HMAccessory *)self yearDaySchedulesPerUserCapacity];
  v196 = [v6 yearDaySchedulesPerUserCapacity];
  v197 = HMFEqualObjects();

  if ((v197 & 1) == 0)
  {
    v198 = objc_autoreleasePoolPush();
    v199 = self;
    v200 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
    {
      v201 = HMFGetLogIdentifier();
      v202 = [(HMAccessory *)v199 yearDaySchedulesPerUserCapacity];
      v203 = [v6 yearDaySchedulesPerUserCapacity];
      *buf = 138543874;
      v740 = v201;
      v741 = 2112;
      v742 = v202;
      v743 = 2112;
      v744 = v203;
      _os_log_impl(&dword_19BB39000, v200, OS_LOG_TYPE_INFO, "%{public}@Updating yearDaySchedulesPerUserCapacity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v198);
    v204 = [v6 yearDaySchedulesPerUserCapacity];
    [(HMAccessory *)v199 setYearDaySchedulesPerUserCapacity:v204];

    v15 = 1;
  }

  v205 = [(HMAccessory *)self suspendCapable];
  if (v205 != [v6 suspendCapable])
  {
    if ([(HMAccessory *)self suspendCapable])
    {
      [(HMAccessory *)self setReachable:1];
    }

    -[HMAccessory setSuspendCapable:](self, "setSuspendCapable:", [v6 suspendCapable]);
    v15 = 1;
  }

  if ([(HMAccessory *)self suspendCapable])
  {
    [v6 setReachable:1];
  }

  v206 = [(HMAccessory *)self isReachable];
  if (v206 == [v6 isReachable])
  {
    if (!v156)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v207 = objc_autoreleasePoolPush();
    v208 = self;
    v209 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
    {
      v210 = HMFGetLogIdentifier();
      [(HMAccessory *)v208 isReachable];
      v211 = HMFBooleanToString();
      [v6 isReachable];
      v212 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v210;
      v741 = 2112;
      v742 = v211;
      v743 = 2112;
      v744 = v212;
      _os_log_impl(&dword_19BB39000, v209, OS_LOG_TYPE_INFO, "%{public}@Updating isReachable from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v207);
    -[HMAccessory setReachable:](v208, "setReachable:", [v6 isReachable]);
    v15 = 1;
  }

  v213 = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v214 = [(HMAccessory *)self context];
    v215 = [v214 queue];
    v704[0] = MEMORY[0x1E69E9820];
    v704[1] = 3221225472;
    v704[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1165;
    v704[3] = &unk_1E754E5C0;
    v704[4] = self;
    v705 = v213;
    dispatch_async(v215, v704);
  }

LABEL_143:
  v216 = [(HMAccessory *)self reachableTransports];
  v217 = "llMessage";
  if (v216 != [v6 reachableTransports])
  {
    -[HMAccessory setReachableTransports:](self, "setReachableTransports:", [v6 reachableTransports]);
    v218 = [(HMAccessory *)self delegate];
    if ([v218 conformsToProtocol:&unk_1F0F63E80])
    {
      v219 = v218;
    }

    else
    {
      v219 = 0;
    }

    v220 = v219;

    if (objc_opt_respondsToSelector())
    {
      v221 = [(HMAccessory *)self context];
      v222 = [v221 queue];
      v702[0] = MEMORY[0x1E69E9820];
      v702[1] = 3221225472;
      v702[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3_1168;
      v702[3] = &unk_1E754E5C0;
      v702[4] = self;
      v703 = v220;
      dispatch_async(v222, v702);
    }

    v15 = 1;
  }

  v223 = [(HMAccessory *)self isControllable];
  if (v223 != [v6 isControllable])
  {
    -[HMAccessory setControllable:](self, "setControllable:", [v6 isControllable]);
    v224 = [(HMAccessory *)self context];
    v225 = [v224 queue];
    v701[0] = MEMORY[0x1E69E9820];
    v701[1] = 3221225472;
    v701[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_5_1170;
    v701[3] = &unk_1E754E2A8;
    v701[4] = self;
    dispatch_async(v225, v701);

    v15 = 1;
  }

  v226 = [(HMAccessory *)self accessoryReprovisionState];
  if (v226 != [v6 accessoryReprovisionState])
  {
    -[HMAccessory setAccessoryReprovisionState:](self, "setAccessoryReprovisionState:", [v6 accessoryReprovisionState]);
    v227 = [v659 delegate];
    if ([v227 conformsToProtocol:&unk_1F0F63B38])
    {
      v228 = v227;
    }

    else
    {
      v228 = 0;
    }

    v229 = v228;

    if (objc_opt_respondsToSelector())
    {
      v230 = [(HMAccessory *)self context];
      v231 = [v230 queue];
      v698[0] = MEMORY[0x1E69E9820];
      v698[1] = 3221225472;
      v698[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_6_1292;
      v698[3] = &unk_1E754E5E8;
      v698[4] = self;
      v699 = v229;
      v700 = v659;
      dispatch_async(v231, v698);
    }

    v15 = 1;
  }

  v232 = [(HMAccessory *)self firmwareVersion];
  v233 = [v6 firmwareVersion];
  v234 = HMFEqualObjects();

  if ((v234 & 1) == 0)
  {
    v235 = [v6 firmwareVersion];
    [(HMAccessory *)self setFirmwareVersion:v235];

    v236 = [(HMAccessory *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v237 = [(HMAccessory *)self context];
      v238 = [v237 queue];
      v696[0] = MEMORY[0x1E69E9820];
      v696[1] = 3221225472;
      v696[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_8;
      v696[3] = &unk_1E754E5C0;
      v696[4] = self;
      v697 = v236;
      dispatch_async(v238, v696);
    }
  }

  v239 = [(HMAccessory *)self isVendorAccessory];
  if (v239 != [v6 isVendorAccessory])
  {
    -[HMAccessory setVendorAccessory:](self, "setVendorAccessory:", [v6 isVendorAccessory]);
    v15 = 1;
  }

  v240 = [(HMAccessory *)self HAPInstanceID];
  v241 = [v6 HAPInstanceID];
  v242 = HMFEqualObjects();

  if ((v242 & 1) == 0)
  {
    v243 = [v6 HAPInstanceID];
    [(HMAccessory *)self setHAPInstanceID:v243];

    v15 = 1;
  }

  v244 = [(HMAccessory *)self delegate];
  if ([v244 conformsToProtocol:&unk_1F0F63E80])
  {
    v245 = v244;
  }

  else
  {
    v245 = 0;
  }

  v246 = v245;

  v247 = [(HMAccessory *)self bundleID];
  v248 = [v6 bundleID];
  v249 = HMFEqualObjects();

  if ((v249 & 1) == 0)
  {
    v250 = [v6 bundleID];
    [(HMAccessory *)self setBundleID:v250];

    if (objc_opt_respondsToSelector())
    {
      v251 = [(HMAccessory *)self context];
      v252 = [v251 queue];
      v694[0] = MEMORY[0x1E69E9820];
      v694[1] = 3221225472;
      v694[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_10;
      v694[3] = &unk_1E754E5C0;
      v694[4] = self;
      v695 = v246;
      dispatch_async(v252, v694);
    }
  }

  v253 = [(HMAccessory *)self storeID];
  v254 = [v6 storeID];
  v255 = HMFEqualObjects();

  if ((v255 & 1) == 0)
  {
    v256 = [v6 storeID];
    [(HMAccessory *)self setStoreID:v256];

    if (objc_opt_respondsToSelector())
    {
      v257 = [(HMAccessory *)self context];
      v258 = [v257 queue];
      v692[0] = MEMORY[0x1E69E9820];
      v692[1] = 3221225472;
      v692[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_12;
      v692[3] = &unk_1E754E5C0;
      v692[4] = self;
      v693 = v246;
      dispatch_async(v258, v692);
    }
  }

  v259 = [(HMAccessory *)self isFirmwareUpdateAvailable];
  if (v259 != [v6 isFirmwareUpdateAvailable])
  {
    -[HMAccessory setFirmwareUpdateAvailable:](self, "setFirmwareUpdateAvailable:", [v6 isFirmwareUpdateAvailable]);
    if (objc_opt_respondsToSelector())
    {
      v260 = [(HMAccessory *)self context];
      v261 = [v260 queue];
      v690[0] = MEMORY[0x1E69E9820];
      v690[1] = 3221225472;
      v690[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_14;
      v690[3] = &unk_1E754E5C0;
      v690[4] = self;
      v691 = v246;
      dispatch_async(v261, v690);
    }
  }

  if ([v6 hasOnboardedForNaturalLighting] && !-[HMAccessory hasOnboardedForNaturalLighting](self, "hasOnboardedForNaturalLighting"))
  {
    v262 = objc_autoreleasePoolPush();
    v263 = self;
    v264 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
    {
      v265 = HMFGetLogIdentifier();
      *buf = 138543362;
      v740 = v265;
      _os_log_impl(&dword_19BB39000, v264, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v262);
    [(HMAccessory *)v263 setHasOnboardedForNaturalLighting:1];
    if (objc_opt_respondsToSelector())
    {
      v266 = [(HMAccessory *)v263 context];
      v267 = [v266 queue];
      v688[0] = MEMORY[0x1E69E9820];
      v688[1] = 3221225472;
      v688[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1298;
      v688[3] = &unk_1E754E5C0;
      v688[4] = v263;
      v689 = v246;
      dispatch_async(v267, v688);
    }
  }

  v268 = [(HMAccessory(Diagnostics) *)self supportedDiagnostics];
  v269 = [v6 supportedDiagnostics];

  if (v268 != v269)
  {
    v270 = objc_autoreleasePoolPush();
    v271 = self;
    v272 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
    {
      v273 = HMFGetLogIdentifier();
      v274 = [v6 supportedDiagnostics];
      *buf = 138543618;
      v740 = v273;
      v741 = 2112;
      v742 = v274;
      _os_log_impl(&dword_19BB39000, v272, OS_LOG_TYPE_INFO, "%{public}@Updating diagnostics support to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v270);
    v275 = [v6 supportedDiagnostics];
    [(HMAccessory(Diagnostics) *)v271 setSupportedDiagnostics:v275];

    v276 = [(HMAccessory *)v271 context];
    v277 = [v276 queue];
    v687[0] = MEMORY[0x1E69E9820];
    v687[1] = 3221225472;
    v687[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1300;
    v687[3] = &unk_1E754E2A8;
    v687[4] = v271;
    dispatch_async(v277, v687);
  }

  v278 = [(HMAccessory *)self isCurrentAccessory];
  if (v278 != [v6 isCurrentAccessory])
  {
    -[HMAccessory setCurrentAccessory:](self, "setCurrentAccessory:", [v6 isCurrentAccessory]);
  }

  v279 = [(HMAccessory *)self manufacturer];
  v280 = [v6 manufacturer];
  v281 = HMFEqualObjects();

  if ((v281 & 1) == 0)
  {
    v282 = [v6 manufacturer];
    [(HMAccessory *)self setManufacturer:v282];
  }

  v283 = [(HMAccessory *)self model];
  v284 = [v6 model];
  v285 = HMFEqualObjects();

  if ((v285 & 1) == 0)
  {
    v286 = [v6 model];
    [(HMAccessory *)self setModel:v286];
  }

  v287 = [(HMAccessory *)self serialNumber];
  v288 = [v6 serialNumber];
  v289 = HMFEqualObjects();

  if ((v289 & 1) == 0)
  {
    v290 = [v6 serialNumber];
    [(HMAccessory *)self setSerialNumber:v290];
  }

  v291 = [(HMAccessory *)self accountIdentifier];
  v292 = [v6 accountIdentifier];
  v293 = HMFEqualObjects();

  if ((v293 & 1) == 0)
  {
    v294 = [v6 accountIdentifier];
    [(HMAccessory *)self setAccountIdentifier:v294];
  }

  v295 = [(HMAccessory *)self supportsIdentify];
  if (v295 != [v6 supportsIdentify])
  {
    -[HMAccessory setSupportsIdentify:](self, "setSupportsIdentify:", [v6 supportsIdentify]);
  }

  v296 = [(HMAccessory *)self accessoryFlags];
  v297 = [v6 accessoryFlags];
  v298 = HMFEqualObjects();

  if ((v298 & 1) == 0)
  {
    v299 = [v6 accessoryFlags];
    if ([v299 integerValue])
    {
      v300 = 1;
    }

    else
    {
      v300 = 2;
    }

    if ([(HMAccessory *)self additionalSetupStatus]!= v300)
    {
      [(HMAccessory *)self setAdditionalSetupStatus:v300];
      v301 = [(HMAccessory *)self context];
      v302 = [v301 queue];
      v686[0] = MEMORY[0x1E69E9820];
      v686[1] = 3221225472;
      v686[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1301;
      v686[3] = &unk_1E754E2A8;
      v686[4] = self;
      dispatch_async(v302, v686);

      v15 = 1;
    }

    v303 = [v6 accessoryFlags];
    v304 = [v303 integerValue];
    if ((v304 & 2) != 0)
    {
      v305 = 1;
    }

    else
    {
      v305 = 2;
    }

    if ([(HMAccessory *)self calibrationStatus]!= v305)
    {
      v306 = objc_autoreleasePoolPush();
      v307 = self;
      v308 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v308, OS_LOG_TYPE_INFO))
      {
        v309 = HMFGetLogIdentifier();
        v310 = [(HMAccessory *)v307 calibrationStatus];
        v311 = "Unknown";
        if (v310 == 1)
        {
          v311 = "InProgress";
        }

        if (v310 == 2)
        {
          v311 = "Complete";
        }

        *buf = 138543874;
        v740 = v309;
        v741 = 2080;
        v742 = v311;
        if ((v304 & 2) != 0)
        {
          v312 = "InProgress";
        }

        else
        {
          v312 = "Complete";
        }

        v743 = 2080;
        v744 = v312;
        _os_log_impl(&dword_19BB39000, v308, OS_LOG_TYPE_INFO, "%{public}@Calibration Status updated from %s to %s", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v306);
      [(HMAccessory *)v307 setCalibrationStatus:v305];
      v313 = [(HMAccessory *)v307 context];
      v314 = [v313 queue];
      v685[0] = MEMORY[0x1E69E9820];
      v217 = "llMessage";
      v685[1] = 3221225472;
      v685[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1302;
      v685[3] = &unk_1E754E2A8;
      v685[4] = v307;
      dispatch_async(v314, v685);

      v15 = 1;
    }

    v315 = [v6 accessoryFlags];
    [(HMAccessory *)self setAccessoryFlags:v315];

    -[HMAccessory setCalibrationStatus:](self, "setCalibrationStatus:", [v6 calibrationStatus]);
  }

  v316 = [(HMAccessory *)self certificationStatus];
  if (v316 != [v6 certificationStatus])
  {
    -[HMAccessory setCertificationStatus:](self, "setCertificationStatus:", [v6 certificationStatus]);
  }

  -[HMAccessory setBridgedAccessory:](self, "setBridgedAccessory:", [v6 bridgedAccessory]);
  v317 = [v6 uniqueIdentifiersForBridgedAccessories];
  [(HMAccessory *)self setUniqueIdentifiersForBridgedAccessories:v317];

  v318 = [(HMAccessory *)self category];
  v319 = [v6 category];
  v320 = HMFEqualObjects();

  if ((v320 & 1) == 0)
  {
    v321 = objc_autoreleasePoolPush();
    v322 = self;
    v323 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
    {
      v324 = HMFGetLogIdentifier();
      v325 = [(HMAccessory *)v322 category];
      v326 = [v6 category];
      *buf = 138543874;
      v740 = v324;
      v741 = 2112;
      v742 = v325;
      v743 = 2112;
      v744 = v326;
      _os_log_impl(&dword_19BB39000, v323, OS_LOG_TYPE_INFO, "%{public}@Updating category: %@ with new category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v321);
    v327 = [v6 category];
    [(HMAccessory *)v322 setCategory:v327];

    v15 = 1;
  }

  v328 = [v6 accessoryProfiles];
  v329 = [v328 array];
  [(HMAccessory *)self _mergeProfiles:v329];

  if (!-[HMAccessory supportsMessagedHomePodSettings](self, "supportsMessagedHomePodSettings") && ([v6 supportsMessagedHomePodSettings] & 1) == 0)
  {
    v330 = [v6 settings];
    v331 = [(HMAccessory *)self settings];
    v332 = (v330 != 0) ^ (v331 == 0);

    v333 = objc_autoreleasePoolPush();
    if (v332)
    {
      v334 = [(HMAccessory *)self settings];
      v335 = [v334 mergeFromNewObject:v330];

      if (v335)
      {
        v336 = objc_autoreleasePoolPush();
        v337 = self;
        v338 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
        {
          v339 = HMFGetLogIdentifier();
          v340 = [v330 longDescription];
          *buf = 138543618;
          v740 = v339;
          v741 = 2112;
          v742 = v340;
          _os_log_impl(&dword_19BB39000, v338, OS_LOG_TYPE_INFO, "%{public}@Merged settings: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v336);
        v15 = 1;
        v217 = "ClearAllMessage" + 6;
      }

      objc_autoreleasePoolPop(v333);
    }

    else
    {
      v341 = self;
      v342 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
      {
        v343 = HMFGetLogIdentifier();
        v344 = [v330 longDescription];
        *buf = 138543618;
        v740 = v343;
        v741 = 2112;
        v742 = v344;
        _os_log_impl(&dword_19BB39000, v342, OS_LOG_TYPE_DEFAULT, "%{public}@Updating settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v333);
      [(HMAccessory *)v341 setSettings:v330];
      v345 = [(HMAccessory *)v341 context];
      v346 = [v345 queue];
      v683[0] = MEMORY[0x1E69E9820];
      v683[1] = 3221225472;
      v683[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1303;
      v683[3] = &unk_1E754E5C0;
      v683[4] = v341;
      v684 = v330;
      dispatch_async(v346, v683);

      v15 = 1;
    }
  }

  v347 = [v6 device];
  v348 = [(HMAccessory *)self device];
  v349 = HMFEqualObjects();

  if (v349)
  {
    v350 = [(HMAccessory *)self device];
    v351 = [v350 mergeFromNewObject:v347];

    if (!v351)
    {
      goto LABEL_250;
    }
  }

  else
  {
    v352 = objc_autoreleasePoolPush();
    v353 = self;
    v354 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v354, OS_LOG_TYPE_INFO))
    {
      v355 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v355;
      v741 = 2112;
      v742 = v347;
      _os_log_impl(&dword_19BB39000, v354, OS_LOG_TYPE_INFO, "%{public}@Updating device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v352);
    [(HMAccessory *)v353 setDevice:v347];
  }

  if (objc_opt_respondsToSelector())
  {
    v356 = [(HMAccessory *)self context];
    v357 = [v356 queue];
    v681[0] = MEMORY[0x1E69E9820];
    v681[1] = *(v217 + 185);
    v681[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1305;
    v681[3] = &unk_1E754E5C0;
    v681[4] = self;
    v682 = v246;
    dispatch_async(v357, v681);
  }

  v15 = 1;
LABEL_250:

  v358 = [(HMAccessory *)self deviceIRKData];
  v359 = [v6 deviceIRKData];
  v360 = HMFEqualObjects();

  if ((v360 & 1) == 0)
  {
    v361 = objc_autoreleasePoolPush();
    v362 = self;
    v363 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v363, OS_LOG_TYPE_INFO))
    {
      v364 = HMFGetLogIdentifier();
      v365 = [v6 deviceIRKData];
      *buf = 138543618;
      v740 = v364;
      v741 = 2112;
      v742 = v365;
      _os_log_impl(&dword_19BB39000, v363, OS_LOG_TYPE_INFO, "%{public}@Updating deviceIRKData: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v361);
    v366 = [v6 deviceIRKData];
    [(HMAccessory *)v362 setDeviceIRKData:v366];

    v15 = 1;
  }

  v367 = [v6 softwareVersion];
  v368 = [(HMAccessory *)self softwareVersion];
  v369 = HMFEqualObjects();

  if ((v369 & 1) == 0)
  {
    [(HMAccessory *)self setSoftwareVersion:v367];
    if (objc_opt_respondsToSelector())
    {
      v370 = [(HMAccessory *)self context];
      v371 = [v370 queue];
      v678[0] = MEMORY[0x1E69E9820];
      v678[1] = *(v217 + 185);
      v678[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1308;
      v678[3] = &unk_1E754E5E8;
      v678[4] = self;
      v679 = v246;
      v680 = v367;
      dispatch_async(v371, v678);
    }

    v15 = 1;
  }

  v372 = [(HMAccessory *)self softwareUpdateController];

  v373 = [v6 softwareUpdateController];
  v374 = v373;
  if (!v372)
  {
    [(HMAccessory *)self setSoftwareUpdateController:v373];

    v375 = [(HMAccessory *)self softwareUpdateController];
    v376 = [(HMAccessory *)self context];
    [v375 configureWithContext:v376 accessory:self];
    goto LABEL_262;
  }

  if (v374)
  {
    v375 = [(HMAccessory *)self softwareUpdateController];
    v376 = [v6 softwareUpdateController];
    [v375 mergeFromNewObject:v376];
LABEL_262:

    goto LABEL_264;
  }

  [(HMAccessory *)self setSoftwareUpdateController:0];
LABEL_264:
  v658 = v246;
  v377 = [v6 remoteLoginHandler];
  v378 = [(HMAccessory *)self _mergeRemoteLoginHandler:v377];

  v379 = -[HMAccessory _updateHasSymptomsHandler:](self, "_updateHasSymptomsHandler:", [v6 hasSymptomsHandler]);
  v380 = [(HMAccessory *)self supportsMediaAccessControl];
  if (v380 == [v6 supportsMediaAccessControl])
  {
    v48 = (v379 || v378) | v15;
  }

  else
  {
    -[HMAccessory setSupportsMediaAccessControl:](self, "setSupportsMediaAccessControl:", [v6 supportsMediaAccessControl]);
    v48 = 1;
  }

  v381 = [(HMAccessory *)self supportsMediaContentProfile];
  if (v381 != [v6 supportsMediaContentProfile])
  {
    v382 = objc_autoreleasePoolPush();
    v383 = self;
    v384 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v384, OS_LOG_TYPE_INFO))
    {
      v385 = HMFGetLogIdentifier();
      [(HMAccessory *)v383 supportsMediaContentProfile];
      v386 = HMFBooleanToString();
      [v6 supportsMediaContentProfile];
      v387 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v385;
      v741 = 2112;
      v742 = v386;
      v743 = 2112;
      v744 = v387;
      _os_log_impl(&dword_19BB39000, v384, OS_LOG_TYPE_INFO, "%{public}@Updating supportsMediaContentProfile from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v382);
    -[HMAccessory setSupportsMediaContentProfile:](v383, "setSupportsMediaContentProfile:", [v6 supportsMediaContentProfile]);
    v388 = [(HMAccessory *)v383 context];
    v389 = [v388 queue];
    v677[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v677[1] = 3221225472;
    v677[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1310;
    v677[3] = &unk_1E754E2A8;
    v677[4] = v383;
    dispatch_async(v389, v677);

    v48 = 1;
  }

  v390 = [(HMAccessory *)self supportsCHIP];
  if (v390 != [v6 supportsCHIP])
  {
    v391 = objc_autoreleasePoolPush();
    v392 = self;
    v393 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v393, OS_LOG_TYPE_INFO))
    {
      v394 = HMFGetLogIdentifier();
      [(HMAccessory *)v392 supportsCHIP];
      v395 = HMFBooleanToString();
      [v6 supportsCHIP];
      v396 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v394;
      v741 = 2112;
      v742 = v395;
      v743 = 2112;
      v744 = v396;
      _os_log_impl(&dword_19BB39000, v393, OS_LOG_TYPE_INFO, "%{public}@Updating supportsCHIP from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v391);
    -[HMAccessory setSupportsCHIP:](v392, "setSupportsCHIP:", [v6 supportsCHIP]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  v397 = [(HMAccessory *)self knownToSystemCommissioner];
  if (v397 != [v6 knownToSystemCommissioner])
  {
    v398 = objc_autoreleasePoolPush();
    v399 = self;
    v400 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v400, OS_LOG_TYPE_INFO))
    {
      v401 = HMFGetLogIdentifier();
      [(HMAccessory *)v399 knownToSystemCommissioner];
      v402 = HMFBooleanToString();
      [v6 knownToSystemCommissioner];
      v403 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v401;
      v741 = 2112;
      v742 = v402;
      v743 = 2112;
      v744 = v403;
      _os_log_impl(&dword_19BB39000, v400, OS_LOG_TYPE_INFO, "%{public}@Updating knownToSystemCommissioner from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v398);
    -[HMAccessory setKnownToSystemCommissioner:](v399, "setKnownToSystemCommissioner:", [v6 knownToSystemCommissioner]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  v404 = [(HMAccessory *)self rootPublicKey];
  v405 = [v6 rootPublicKey];
  v406 = HMFEqualObjects();

  if ((v406 & 1) == 0)
  {
    v407 = objc_autoreleasePoolPush();
    v408 = self;
    v409 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v409, OS_LOG_TYPE_INFO))
    {
      v410 = HMFGetLogIdentifier();
      v655 = v407;
      v411 = MEMORY[0x1E696AD98];
      v412 = [(HMAccessory *)v408 rootPublicKey];
      v413 = [v411 numberWithUnsignedInteger:{objc_msgSend(v412, "hash")}];
      v414 = v367;
      v415 = MEMORY[0x1E696AD98];
      v416 = [v6 rootPublicKey];
      v417 = [v415 numberWithUnsignedInteger:{objc_msgSend(v416, "hash")}];
      *buf = 138543874;
      v740 = v410;
      v741 = 2112;
      v742 = v413;
      v743 = 2112;
      v744 = v417;
      _os_log_impl(&dword_19BB39000, v409, OS_LOG_TYPE_INFO, "%{public}@Updating Root Public Key (Hash) from %@ to %@", buf, 0x20u);

      v367 = v414;
      v407 = v655;
    }

    objc_autoreleasePoolPop(v407);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  v418 = [(HMAccessory *)self nodeID];
  v419 = [v6 nodeID];
  v420 = HMFEqualObjects();

  if ((v420 & 1) == 0)
  {
    v421 = objc_autoreleasePoolPush();
    v422 = self;
    v423 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_INFO))
    {
      v424 = HMFGetLogIdentifier();
      v425 = [(HMAccessory *)v422 nodeID];
      v426 = [v6 nodeID];
      *buf = 138543874;
      v740 = v424;
      v741 = 2112;
      v742 = v425;
      v743 = 2112;
      v744 = v426;
      _os_log_impl(&dword_19BB39000, v423, OS_LOG_TYPE_INFO, "%{public}@Updating NodeID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v421);
    v48 = 1;
  }

  v427 = [(HMAccessory *)self commissioningID];
  v428 = [v6 commissioningID];
  v429 = HMFEqualObjects();

  if ((v429 & 1) == 0)
  {
    v430 = objc_autoreleasePoolPush();
    v431 = self;
    v432 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v432, OS_LOG_TYPE_INFO))
    {
      v433 = HMFGetLogIdentifier();
      v434 = [(HMAccessory *)v431 commissioningID];
      v435 = [v6 commissioningID];
      *buf = 138543874;
      v740 = v433;
      v741 = 2112;
      v742 = v434;
      v743 = 2112;
      v744 = v435;
      _os_log_impl(&dword_19BB39000, v432, OS_LOG_TYPE_INFO, "%{public}@Updating commissioningID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v430);
    v48 = 1;
  }

  v436 = [(HMAccessory *)self vendorID];
  v437 = [v6 vendorID];
  v438 = HMFEqualObjects();

  if ((v438 & 1) == 0)
  {
    v439 = objc_autoreleasePoolPush();
    v440 = self;
    v441 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v441, OS_LOG_TYPE_INFO))
    {
      v442 = HMFGetLogIdentifier();
      v443 = [(HMAccessory *)v440 vendorID];
      v444 = [v6 vendorID];
      *buf = 138543874;
      v740 = v442;
      v741 = 2112;
      v742 = v443;
      v743 = 2112;
      v744 = v444;
      _os_log_impl(&dword_19BB39000, v441, OS_LOG_TYPE_INFO, "%{public}@Updating vendorID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v439);
    v48 = 1;
  }

  v445 = [(HMAccessory *)self productID];
  v446 = [v6 productID];
  v447 = HMFEqualObjects();

  if ((v447 & 1) == 0)
  {
    v448 = objc_autoreleasePoolPush();
    v449 = self;
    v450 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v450, OS_LOG_TYPE_INFO))
    {
      v451 = HMFGetLogIdentifier();
      v452 = [(HMAccessory *)v449 productID];
      v453 = [v6 productID];
      *buf = 138543874;
      v740 = v451;
      v741 = 2112;
      v742 = v452;
      v743 = 2112;
      v744 = v453;
      _os_log_impl(&dword_19BB39000, v450, OS_LOG_TYPE_INFO, "%{public}@Updating productID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v448);
    v48 = 1;
  }

  v454 = [v6 bulletinBoardNotificationByEndpoint];
  v455 = [(HMAccessory *)self _mergeBulletinBoardNotificationByEndpoint:v454];

  if (v455)
  {
    v456 = objc_autoreleasePoolPush();
    v457 = self;
    v458 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v458, OS_LOG_TYPE_INFO))
    {
      v459 = HMFGetLogIdentifier();
      v460 = [v6 bulletinBoardNotificationByEndpoint];
      *buf = 138543618;
      v740 = v459;
      v741 = 2112;
      v742 = v460;
      _os_log_impl(&dword_19BB39000, v458, OS_LOG_TYPE_INFO, "%{public}@Updated matter bulletin board notification to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v456);
    v48 = 1;
  }

  v461 = [(HMAccessory *)self matterDeviceTypeID];
  v462 = [v6 matterDeviceTypeID];
  v463 = HMFEqualObjects();

  if ((v463 & 1) == 0)
  {
    v464 = objc_autoreleasePoolPush();
    v465 = self;
    v466 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v466, OS_LOG_TYPE_INFO))
    {
      v467 = HMFGetLogIdentifier();
      v468 = [(HMAccessory *)v465 matterDeviceTypeID];
      v469 = [v6 matterDeviceTypeID];
      *buf = 138543874;
      v740 = v467;
      v741 = 2112;
      v742 = v468;
      v743 = 2112;
      v744 = v469;
      _os_log_impl(&dword_19BB39000, v466, OS_LOG_TYPE_INFO, "%{public}@Updating matterDeviceTypeID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v464);
    v48 = 1;
  }

  v470 = [(HMAccessory *)self requiresThreadRouter];
  if (v470 != [v6 requiresThreadRouter])
  {
    v471 = objc_autoreleasePoolPush();
    v472 = self;
    v473 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v473, OS_LOG_TYPE_INFO))
    {
      v474 = HMFGetLogIdentifier();
      [(HMAccessory *)v472 requiresThreadRouter];
      v475 = HMFBooleanToString();
      [v6 requiresThreadRouter];
      v476 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v474;
      v741 = 2112;
      v742 = v475;
      v743 = 2112;
      v744 = v476;
      _os_log_impl(&dword_19BB39000, v473, OS_LOG_TYPE_INFO, "%{public}@Updating requiresThreadRouter from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v471);
    -[HMAccessory setRequiresThreadRouter:](v472, "setRequiresThreadRouter:", [v6 requiresThreadRouter]);
    v48 = 1;
    v217 = "llMessage";
  }

  v477 = [(HMAccessory *)self matterWEDSupport];
  v478 = [v6 matterWEDSupport];
  v479 = HMFEqualObjects();

  if ((v479 & 1) == 0)
  {
    v480 = objc_autoreleasePoolPush();
    v481 = self;
    v482 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v482, OS_LOG_TYPE_INFO))
    {
      v483 = HMFGetLogIdentifier();
      v484 = [(HMAccessory *)v481 matterWEDSupport];
      v485 = [v6 matterWEDSupport];
      *buf = 138543874;
      v740 = v483;
      v741 = 2112;
      v742 = v484;
      v743 = 2112;
      v744 = v485;
      _os_log_impl(&dword_19BB39000, v482, OS_LOG_TYPE_INFO, "%{public}@Updating matterWEDSupport from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v480);
    v486 = [v6 matterWEDSupport];
    [(HMAccessory *)v481 setMatterWEDSupport:v486];

    v48 = 1;
  }

  v487 = [(HMAccessory *)self matterExtendedMACAddress];
  v488 = [v6 matterExtendedMACAddress];
  v489 = HMFEqualObjects();

  if ((v489 & 1) == 0)
  {
    v490 = objc_autoreleasePoolPush();
    v491 = self;
    v492 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v492, OS_LOG_TYPE_INFO))
    {
      v493 = HMFGetLogIdentifier();
      v494 = [(HMAccessory *)v491 matterExtendedMACAddress];
      v495 = [v6 matterExtendedMACAddress];
      *buf = 138543874;
      v740 = v493;
      v741 = 2112;
      v742 = v494;
      v743 = 2112;
      v744 = v495;
      _os_log_impl(&dword_19BB39000, v492, OS_LOG_TYPE_INFO, "%{public}@Updating matterExtendedMACAddress from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v490);
    v496 = [v6 matterExtendedMACAddress];
    [(HMAccessory *)v491 setMatterExtendedMACAddress:v496];

    v48 = 1;
  }

  v497 = [(HMAccessory *)self supportedLinkLayerTypes];
  v498 = [v6 supportedLinkLayerTypes];
  v499 = HMFEqualObjects();

  if ((v499 & 1) == 0)
  {
    v500 = objc_autoreleasePoolPush();
    v501 = self;
    v502 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v502, OS_LOG_TYPE_INFO))
    {
      v503 = HMFGetLogIdentifier();
      v504 = [(HMAccessory *)v501 supportedLinkLayerTypes];
      v505 = [v6 supportedLinkLayerTypes];
      *buf = 138543874;
      v740 = v503;
      v741 = 2112;
      v742 = v504;
      v743 = 2112;
      v744 = v505;
      _os_log_impl(&dword_19BB39000, v502, OS_LOG_TYPE_INFO, "%{public}@Updating supportedLinkLayerTypes from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v500);
    v506 = [v6 supportedLinkLayerTypes];
    [(HMAccessory *)v501 setSupportedLinkLayerTypes:v506];

    v48 = 1;
  }

  v507 = [(HMAccessory *)self wifiNetworkInfo];
  v508 = [v6 wifiNetworkInfo];
  v509 = HMFEqualObjects();

  if ((v509 & 1) == 0)
  {
    v510 = objc_autoreleasePoolPush();
    v511 = self;
    v512 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v512, OS_LOG_TYPE_INFO))
    {
      v513 = HMFGetLogIdentifier();
      v514 = [(HMAccessory *)v511 wifiNetworkInfo];
      v515 = [v6 wifiNetworkInfo];
      *buf = 138543874;
      v740 = v513;
      v741 = 2112;
      v742 = v514;
      v743 = 2112;
      v744 = v515;
      _os_log_impl(&dword_19BB39000, v512, OS_LOG_TYPE_INFO, "%{public}@Updating WiFi network: %@ new WiFi network: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v510);
    v516 = [v6 wifiNetworkInfo];
    [(HMAccessory *)v511 setWifiNetworkInfo:v516];

    v517 = [(HMAccessory *)v511 context];
    v518 = [v517 queue];
    v676[0] = MEMORY[0x1E69E9820];
    v676[1] = *(v217 + 185);
    v676[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1311;
    v676[3] = &unk_1E754E2A8;
    v676[4] = v511;
    dispatch_async(v518, v676);

    v48 = 1;
  }

  v519 = [(HMAccessory *)self networkProtectionGroupUUID];
  v520 = [v6 networkProtectionGroupUUID];
  v521 = HMFEqualObjects();

  if ((v521 & 1) == 0)
  {
    v522 = [v6 networkProtectionGroupUUID];
    [(HMAccessory *)self setNetworkProtectionGroupUUID:v522];

    v48 = 1;
  }

  v523 = [(HMAccessory *)self audioDestination];
  v524 = [v6 audioDestination];
  v525 = HMFEqualObjects();

  if ((v525 & 1) == 0)
  {
    v526 = objc_autoreleasePoolPush();
    v527 = self;
    v528 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v528, OS_LOG_TYPE_INFO))
    {
      v529 = HMFGetLogIdentifier();
      v530 = [(HMAccessory *)v527 audioDestination];
      v531 = [v6 audioDestination];
      *buf = 138543874;
      v740 = v529;
      v741 = 2112;
      v742 = v530;
      v743 = 2112;
      v744 = v531;
      _os_log_impl(&dword_19BB39000, v528, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ new audio destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v526);
    v532 = [v6 audioDestination];
    [(HMAccessory *)v527 setAudioDestination:v532];

    v533 = [(HMAccessory *)v527 context];
    v534 = [v533 queue];
    v675[0] = MEMORY[0x1E69E9820];
    v675[1] = *(v217 + 185);
    v675[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1312;
    v675[3] = &unk_1E754E2A8;
    v675[4] = v527;
    dispatch_async(v534, v675);

    v48 = 1;
  }

  v535 = [(HMAccessory *)self audioDestinationController];

  v536 = [v6 audioDestinationController];
  v537 = v536;
  if (v535)
  {

    if (v537)
    {
      v538 = [(HMAccessory *)self audioDestinationController];
      v539 = [v6 audioDestinationController];
      v540 = [v538 mergeFromNewObject:v539];

      if (!v540)
      {
        goto LABEL_347;
      }

      v541 = objc_autoreleasePoolPush();
      v542 = self;
      v543 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v543, OS_LOG_TYPE_INFO))
      {
        v544 = HMFGetLogIdentifier();
        v545 = [(HMAccessory *)v542 audioDestinationController];
        *buf = 138543618;
        v740 = v544;
        v741 = 2112;
        v742 = v545;
        _os_log_impl(&dword_19BB39000, v543, OS_LOG_TYPE_INFO, "%{public}@Updated audio destination controller: %@ due to accessory merge", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v541);
      v546 = [(HMAccessory *)v542 context];
      v547 = [v546 queue];
      v548 = v547;
      v673[0] = MEMORY[0x1E69E9820];
      v673[1] = *(v217 + 185);
      v673[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1314;
      v673[3] = &unk_1E754E2A8;
      v673[4] = v542;
      v549 = v673;
    }

    else
    {
      v558 = objc_autoreleasePoolPush();
      v559 = self;
      v560 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v560, OS_LOG_TYPE_INFO))
      {
        v561 = HMFGetLogIdentifier();
        v562 = [(HMAccessory *)v559 audioDestinationController];
        *buf = 138543618;
        v740 = v561;
        v741 = 2112;
        v742 = v562;
        _os_log_impl(&dword_19BB39000, v560, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination controller: %@ due to accessory merge", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v558);
      v563 = [(HMAccessory *)v559 audioDestinationController];
      [v563 unconfigure];

      [(HMAccessory *)v559 setAudioDestinationController:0];
      v546 = [(HMAccessory *)v559 context];
      v547 = [v546 queue];
      v548 = v547;
      v674[0] = MEMORY[0x1E69E9820];
      v674[1] = *(v217 + 185);
      v674[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1313;
      v674[3] = &unk_1E754E2A8;
      v674[4] = v559;
      v549 = v674;
    }
  }

  else
  {

    if (!v537)
    {
      goto LABEL_347;
    }

    v550 = objc_autoreleasePoolPush();
    v551 = self;
    v552 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v552, OS_LOG_TYPE_INFO))
    {
      v553 = HMFGetLogIdentifier();
      v554 = [v6 audioDestinationController];
      *buf = 138543618;
      v740 = v553;
      v741 = 2112;
      v742 = v554;
      _os_log_impl(&dword_19BB39000, v552, OS_LOG_TYPE_INFO, "%{public}@Adding new audio destination controller: %@ due to accessory merge", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v550);
    v555 = [v6 audioDestinationController];
    [(HMAccessory *)v551 setAudioDestinationController:v555];

    v556 = [(HMAccessory *)v551 audioDestinationController];
    v557 = [(HMAccessory *)v551 context];
    [v556 configureWithContext:v557 dataSource:v551];

    v546 = [(HMAccessory *)v551 context];
    v547 = [v546 queue];
    v548 = v547;
    v672[0] = MEMORY[0x1E69E9820];
    v672[1] = *(v217 + 185);
    v672[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1315;
    v672[3] = &unk_1E754E2A8;
    v672[4] = v551;
    v549 = v672;
  }

  dispatch_async(v547, v549);

  v48 = 1;
LABEL_347:
  v564 = [v6 audioAnalysisEventBulletinBoardNotification];

  if (v564)
  {
    v565 = [(HMAccessory *)self audioAnalysisEventBulletinBoardNotification];
    v566 = [v6 audioAnalysisEventBulletinBoardNotification];
    v48 |= [v565 mergeFromNewObject:v566];
  }

  if (-[HMAccessory supportsMessagedHomePodSettings](self, "supportsMessagedHomePodSettings") || ([v6 supportsMessagedHomePodSettings] & 1) != 0)
  {
    goto LABEL_362;
  }

  v567 = [(HMAccessory *)self preferredUserSelectionType];
  v568 = [v6 preferredUserSelectionType];
  if (v567 != v568)
  {
    -[HMAccessory setPreferredUserSelectionType:](self, "setPreferredUserSelectionType:", [v6 preferredUserSelectionType]);
    v569 = objc_autoreleasePoolPush();
    v570 = self;
    v571 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v571, OS_LOG_TYPE_INFO))
    {
      v572 = HMFGetLogIdentifier();
      v573 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "preferredUserSelectionType")}];
      *buf = 138543618;
      v740 = v572;
      v741 = 2112;
      v742 = v573;
      _os_log_impl(&dword_19BB39000, v571, OS_LOG_TYPE_INFO, "%{public}@Updating Preferred User selection type to%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v569);
    v48 = 1;
    v217 = "llMessage";
  }

  v574 = [(HMAccessory *)self preferredMediaUserUUID];
  v575 = [v6 preferredMediaUserUUID];
  v576 = HMFEqualObjects();

  if (v576)
  {
    if (v567 == v568)
    {
      goto LABEL_362;
    }
  }

  else
  {
    v577 = [v6 preferredMediaUserUUID];
    [(HMAccessory *)self setPreferredMediaUserUUID:v577];

    v578 = objc_autoreleasePoolPush();
    v579 = self;
    v580 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v580, OS_LOG_TYPE_INFO))
    {
      v581 = HMFGetLogIdentifier();
      v582 = [v6 preferredMediaUserUUID];
      *buf = 138543618;
      v740 = v581;
      v741 = 2112;
      v742 = v582;
      _os_log_impl(&dword_19BB39000, v580, OS_LOG_TYPE_INFO, "%{public}@Updating Preferred Media User to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v578);
    v48 = 1;
  }

  v583 = [(HMAccessory *)self context];
  v584 = [v583 queue];
  v671[0] = MEMORY[0x1E69E9820];
  v671[1] = *(v217 + 185);
  v671[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1316;
  v671[3] = &unk_1E754E2A8;
  v671[4] = self;
  dispatch_async(v584, v671);

LABEL_362:
  v585 = [(HMAccessory *)self supportsPrimaryUserInfoSubscription];
  if (v585 != [v6 supportsPrimaryUserInfoSubscription])
  {
    -[HMAccessory setSupportsPrimaryUserInfoSubscription:](self, "setSupportsPrimaryUserInfoSubscription:", [v6 supportsPrimaryUserInfoSubscription]);
    if ([(HMAccessory *)self supportsPrimaryUserInfoSubscription])
    {
      [(HMAccessory *)self configureInfoDataProviderIfNeededWithOptions:4];
    }

    else
    {
      [(HMAccessory *)self unconfigureInfoDataProviderWithOptions:4];
    }

    v48 = 1;
  }

  v586 = [(HMAccessory *)self supportsPreferredMediaUser];
  if (v586 != [v6 supportsPreferredMediaUser])
  {
    -[HMAccessory setSupportsPreferredMediaUser:](self, "setSupportsPreferredMediaUser:", [v6 supportsPreferredMediaUser]);
    v587 = objc_autoreleasePoolPush();
    v588 = self;
    v589 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v589, OS_LOG_TYPE_INFO))
    {
      v590 = HMFGetLogIdentifier();
      v591 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessory supportsPreferredMediaUser](v588, "supportsPreferredMediaUser")}];
      *buf = 138543618;
      v740 = v590;
      v741 = 2112;
      v742 = v591;
      _os_log_impl(&dword_19BB39000, v589, OS_LOG_TYPE_INFO, "%{public}@Updating supports Preferred Media User to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v587);
    v592 = [(HMAccessory *)v588 context];
    v593 = [v592 queue];
    v670[0] = MEMORY[0x1E69E9820];
    v670[1] = *(v217 + 185);
    v670[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1317;
    v670[3] = &unk_1E754E2A8;
    v670[4] = v588;
    dispatch_async(v593, v670);

    v48 = 1;
  }

  v594 = [(HMAccessory *)self pendingConfigurationIdentifier];
  v595 = [v6 pendingConfigurationIdentifier];
  v596 = HMFEqualObjects();

  if ((v596 & 1) == 0)
  {
    v597 = objc_autoreleasePoolPush();
    v598 = self;
    v599 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v599, OS_LOG_TYPE_INFO))
    {
      v600 = HMFGetLogIdentifier();
      v601 = [(HMAccessory *)v598 pendingConfigurationIdentifier];
      v602 = [v6 pendingConfigurationIdentifier];
      *buf = 138543874;
      v740 = v600;
      v741 = 2112;
      v742 = v601;
      v743 = 2112;
      v744 = v602;
      _os_log_impl(&dword_19BB39000, v599, OS_LOG_TYPE_INFO, "%{public}@Updating pendingConfigurationIdentifier from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v597);
    v603 = [v6 pendingConfigurationIdentifier];
    [(HMAccessory *)v598 setPendingConfigurationIdentifier:v603];

    if (objc_opt_respondsToSelector())
    {
      v604 = [(HMAccessory *)v598 context];
      v605 = [v604 queue];
      v668[0] = MEMORY[0x1E69E9820];
      v668[1] = *(v217 + 185);
      v668[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1319;
      v668[3] = &unk_1E754E5C0;
      v668[4] = v598;
      v669 = v658;
      dispatch_async(v605, v668);
    }

    v48 = 1;
  }

  v606 = [(HMAccessory *)self supportsManagedConfigurationProfile];
  if (v606 != [v6 supportsManagedConfigurationProfile])
  {
    v607 = objc_autoreleasePoolPush();
    v608 = self;
    v609 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v609, OS_LOG_TYPE_INFO))
    {
      v610 = HMFGetLogIdentifier();
      [(HMAccessory *)v608 supportsManagedConfigurationProfile];
      v611 = HMFBooleanToString();
      [v6 supportsManagedConfigurationProfile];
      v612 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v610;
      v741 = 2112;
      v742 = v611;
      v743 = 2112;
      v744 = v612;
      _os_log_impl(&dword_19BB39000, v609, OS_LOG_TYPE_INFO, "%{public}@Updating supportsManagedConfigurationProfile from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v607);
    -[HMAccessory setSupportsManagedConfigurationProfile:](v608, "setSupportsManagedConfigurationProfile:", [v6 supportsManagedConfigurationProfile]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  v613 = [(HMAccessory *)self productColor];
  if (v613 != [v6 productColor])
  {
    -[HMAccessory setProductColor:](self, "setProductColor:", [v6 productColor]);
    v48 = 1;
  }

  v614 = [(HMAccessory *)self supportsMessagedHomePodSettings];
  if (v614 != [v6 supportsMessagedHomePodSettings])
  {
    v615 = objc_autoreleasePoolPush();
    v616 = self;
    v617 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v617, OS_LOG_TYPE_DEFAULT))
    {
      v618 = HMFGetLogIdentifier();
      [(HMAccessory *)v616 supportsMessagedHomePodSettings];
      v619 = HMFBooleanToString();
      [v6 supportsMessagedHomePodSettings];
      v620 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v618;
      v741 = 2112;
      v742 = v619;
      v743 = 2112;
      v744 = v620;
      _os_log_impl(&dword_19BB39000, v617, OS_LOG_TYPE_DEFAULT, "%{public}@Updating supportsMessagedHomePodSettings from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v615);
    -[HMAccessory setSupportsMessagedHomePodSettings:](v616, "setSupportsMessagedHomePodSettings:", [v6 supportsMessagedHomePodSettings]);
    if ([(HMAccessory *)v616 supportsMessagedHomePodSettings])
    {
      [(HMAccessory *)v616 configureSettingsAdapterIfNeeded];
      [(HMAccessory *)v616 configureInfoDataProviderIfNeededWithOptions:4];
    }

    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  v621 = [(HMAccessory *)self supportsSoftwareUpdateV2];
  if (v621 != [v6 supportsSoftwareUpdateV2])
  {
    -[HMAccessory setSupportsSoftwareUpdateV2:](self, "setSupportsSoftwareUpdateV2:", [v6 supportsSoftwareUpdateV2]);
    v48 = 1;
  }

  v622 = [(HMAccessory *)self supportsRMVonAppleTV];
  if (v622 != [v6 supportsRMVonAppleTV])
  {
    v623 = objc_autoreleasePoolPush();
    v624 = self;
    v625 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v625, OS_LOG_TYPE_INFO))
    {
      v626 = HMFGetLogIdentifier();
      [(HMAccessory *)v624 supportsRMVonAppleTV];
      v627 = HMFBooleanToString();
      [v6 supportsRMVonAppleTV];
      v628 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v626;
      v741 = 2112;
      v742 = v627;
      v743 = 2112;
      v744 = v628;
      _os_log_impl(&dword_19BB39000, v625, OS_LOG_TYPE_INFO, "%{public}@Updating supportsRMVonAppleTV from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v623);
    -[HMAccessory setSupportsRMVonAppleTV:](v624, "setSupportsRMVonAppleTV:", [v6 supportsRMVonAppleTV]);
    v629 = [(HMAccessory *)v624 context];
    v630 = [v629 queue];
    v667[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v667[1] = 3221225472;
    v667[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1321;
    v667[3] = &unk_1E754E2A8;
    v667[4] = v624;
    dispatch_async(v630, v667);

    v48 = 1;
  }

  v631 = [(HMAccessory *)self supportsJustSiri];
  if (v631 != [v6 supportsJustSiri])
  {
    v632 = objc_autoreleasePoolPush();
    v633 = self;
    v634 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v634, OS_LOG_TYPE_INFO))
    {
      v635 = HMFGetLogIdentifier();
      [(HMAccessory *)v633 supportsJustSiri];
      v636 = HMFBooleanToString();
      [v6 supportsJustSiri];
      v637 = HMFBooleanToString();
      *buf = 138543874;
      v740 = v635;
      v741 = 2112;
      v742 = v636;
      v743 = 2112;
      v744 = v637;
      _os_log_impl(&dword_19BB39000, v634, OS_LOG_TYPE_INFO, "%{public}@Updating supportsJustSiri from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v632);
    -[HMAccessory setSupportsJustSiri:](v633, "setSupportsJustSiri:", [v6 supportsJustSiri]);
    v638 = [(HMAccessory *)v633 context];
    v639 = [v638 queue];
    v666[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v666[1] = 3221225472;
    v666[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1322;
    v666[3] = &unk_1E754E2A8;
    v666[4] = v633;
    dispatch_async(v639, v666);

    v48 = 1;
  }

  v640 = [(HMAccessory *)self supportsStereoOdeonTTSUBypassingPrimary];
  if (v640 != [v6 supportsStereoOdeonTTSUBypassingPrimary])
  {
    -[HMAccessory setSupportsStereoOdeonTTSUBypassingPrimary:](self, "setSupportsStereoOdeonTTSUBypassingPrimary:", [v6 supportsStereoOdeonTTSUBypassingPrimary]);
    v48 = 1;
  }

  v641 = [(HMAccessory *)self supportsNetworkDiagnostics];
  if (v641 != [v6 supportsNetworkDiagnostics])
  {
    -[HMAccessory setSupportsNetworkDiagnostics:](self, "setSupportsNetworkDiagnostics:", [v6 supportsNetworkDiagnostics]);
    v48 = 1;
  }

  v642 = [(HMAccessory *)self supportsCrossfadeAsAirPlaySource];
  if (v642 != [v6 supportsCrossfadeAsAirPlaySource])
  {
    -[HMAccessory setSupportsCrossfadeAsAirPlaySource:](self, "setSupportsCrossfadeAsAirPlaySource:", [v6 supportsCrossfadeAsAirPlaySource]);
    v48 = 1;
  }

  v643 = [(HMAccessory *)self supportsAdaptiveTemperatureAutomations];
  if (v643 != [v6 supportsAdaptiveTemperatureAutomations])
  {
    -[HMAccessory setSupportsAdaptiveTemperatureAutomations:](self, "setSupportsAdaptiveTemperatureAutomations:", [v6 supportsAdaptiveTemperatureAutomations]);
    v48 = 1;
  }

  v644 = [(HMAccessory *)self supportsCleanEnergyAutomation];
  if (v644 != [v6 supportsCleanEnergyAutomation])
  {
    -[HMAccessory setSupportsCleanEnergyAutomation:](self, "setSupportsCleanEnergyAutomation:", [v6 supportsCleanEnergyAutomation]);
    v48 = 1;
  }

  if ([v6 hasOnboardedForAdaptiveTemperatureAutomations])
  {
    if (![(HMAccessory *)self hasOnboardedForAdaptiveTemperatureAutomations])
    {
      [(HMAccessory *)self setHasOnboardedForAdaptiveTemperatureAutomations:1];
      if (objc_opt_respondsToSelector())
      {
        v645 = [(HMAccessory *)self context];
        v646 = [v645 queue];
        v664[0] = MEMORY[0x1E69E9820];
        v664[1] = *(v217 + 185);
        v664[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1324;
        v664[3] = &unk_1E754E5C0;
        v664[4] = self;
        v665 = v658;
        dispatch_async(v646, v664);
      }
    }
  }

  if ([v6 hasOnboardedForCleanEnergyAutomation])
  {
    if (![(HMAccessory *)self hasOnboardedForCleanEnergyAutomation])
    {
      [(HMAccessory *)self setHasOnboardedForCleanEnergyAutomation:1];
      if (objc_opt_respondsToSelector())
      {
        v647 = [(HMAccessory *)self context];
        v648 = [v647 queue];
        v662[0] = MEMORY[0x1E69E9820];
        v662[1] = *(v217 + 185);
        v662[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4_1327;
        v662[3] = &unk_1E754E5C0;
        v662[4] = self;
        v663 = v658;
        dispatch_async(v648, v662);
      }
    }
  }

  v649 = [(HMAccessory *)self hh1EOLEnabled];
  if (v649 != [v6 hh1EOLEnabled])
  {
    -[HMAccessory setHh1EOLEnabled:](self, "setHh1EOLEnabled:", [v6 hh1EOLEnabled]);
    if (objc_opt_respondsToSelector())
    {
      v650 = [(HMAccessory *)self context];
      v651 = [v650 queue];
      v660[0] = MEMORY[0x1E69E9820];
      v660[1] = *(v217 + 185);
      v660[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_6_1330;
      v660[3] = &unk_1E754E5C0;
      v660[4] = self;
      v661 = v658;
      dispatch_async(v651, v660);
    }

    v48 = 1;
  }

  v652 = [(HMAccessory *)self isPrimaryResident];
  if (v652 != [v6 isPrimaryResident])
  {
    -[HMAccessory setIsPrimaryResident:](self, "setIsPrimaryResident:", [v6 isPrimaryResident]);
    v48 = 1;
  }

  v4 = v656;
LABEL_424:

  v653 = *MEMORY[0x1E69E9840];
  return v48 & 1;
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_5(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_6;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1133(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1134;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1136(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1137;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1139(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1140;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1142(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1143;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1145(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1146;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1148(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1149;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1151(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1152;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1153(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1154;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1156(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1157;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1160(id *a1)
{
  v2 = a1 + 4;
  v3 = [a1[4] context];
  v4 = [v3 delegateCaller];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1161;
  v9[3] = &unk_1E754DE30;
  v5 = a1[5];
  v6 = a1[6];
  *&v7 = a1[7];
  *(&v7 + 1) = *v2;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  v10 = v8;
  v11 = v7;
  [v4 invokeBlock:v9];
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_3_1162(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 supportsWalletKey];

  return [v1 _invokeDidUpdateSupportsWalletKeyDelegate:v2];
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_4_1163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 supportsUWBUnlock];

  return [v1 _invokeDidUpdateSupportsUWBUnlockDelegate:v2];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1165(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1166;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_3_1168(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4_1169;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_6_1292(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_7;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_8(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_9;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_10(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_11;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_12(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_13;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_14(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_15;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1298(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1299;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1305(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1306;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1308(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1309;
  v6[3] = &unk_1E754E5E8;
  v4 = a1[5];
  v5 = a1[4];
  v7 = v4;
  v8 = v5;
  v9 = a1[6];
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_1319(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1320;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_2_1324(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3_1325;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_4_1327(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_5_1328;
  v6[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  [v3 invokeBlock:v6];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_6_1330(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_7_1331;
  v5[3] = &unk_1E754E5C0;
  v4 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v4;
  [v3 invokeBlock:v5];
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_7_1331(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) hh1EOLEnabled];
    v9 = 138543618;
    v10 = v5;
    v11 = 1024;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated hh1EOLEnabled: %{BOOL}d", &v9, 0x12u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessory:*(a1 + 32) didUpdateHH1EOLEnabled:{objc_msgSend(*(a1 + 32), "hh1EOLEnabled")}];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_2_1306(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 device];
  [v1 accessory:v2 didUpdateDevice:v3];
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_15(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 isFirmwareUpdateAvailable];

  return [v1 accessory:v2 didUpdateFirmwareUpdateAvailable:v3];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_13(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 storeID];
  [v1 accessory:v2 didUpdateStoreID:v3];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_11(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 bundleID];
  [v1 accessory:v2 didUpdateBundleID:v3];
}

void __34__HMAccessory_mergeFromNewObject___block_invoke_9(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 firmwareVersion];
  [v1 accessory:v2 didUpdateFirmwareVersion:v3];
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1149(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports user media settings update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsUserMediaSettings:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1146(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports doorbell chime update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsDoorbellChime:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1143(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports third party music update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsThirdPartyMusic:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1140(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports audio analysis update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsAudioAnalysis:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1137(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports drop in update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsDropIn:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_2_1134(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports media actions update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsMediaActions:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __34__HMAccessory_mergeFromNewObject___block_invoke_6(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports announce update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdateSupportsAnnounce:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (BOOL)_mergeControlTargetUUIDs:(id)a3
{
  v64 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DFA8];
  v6 = [(HMAccessory *)self controlTargetUUIDs];
  if (v6)
  {
    v7 = [(HMAccessory *)self controlTargetUUIDs];
    v8 = [v5 setWithArray:v7];
  }

  else
  {
    v8 = [v5 setWithArray:MEMORY[0x1E695E0F0]];
  }

  if (v4)
  {
    v9 = v4;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  if ([(HMAccessory *)self supportsTargetController])
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543874;
      v59 = v14;
      v60 = 2112;
      v61 = v8;
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Merging current control targets %@ with new control targets %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v42 = v4;
  [(HMAccessory *)self setControlTargetUUIDs:v4];
  v39 = [v8 mutableCopy];
  [v39 minusSet:v10];
  v40 = v10;
  v15 = [v10 mutableCopy];
  v41 = v8;
  [v15 minusSet:v8];
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = v15;
  v16 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v38 = v16 != 0;
  if (v16)
  {
    v17 = v16;
    v18 = *v53;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v53 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v52 + 1) + 8 * i);
        v21 = [(HMAccessory *)self home];
        v22 = [v21 accessoryWithUUID:v20];
        if (v22)
        {
          v23 = [(HMAccessory *)self context];
          v24 = [v23 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__HMAccessory__mergeControlTargetUUIDs___block_invoke;
          block[3] = &unk_1E754E5C0;
          block[4] = self;
          v51 = v22;
          dispatch_async(v24, block);
        }
      }

      v17 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v17);
  }

  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v25 = v39;
  v26 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v47;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v47 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v46 + 1) + 8 * j);
        v31 = [(HMAccessory *)self home];
        v32 = [v31 accessoryWithUUID:v30];
        if (v32)
        {
          v33 = [(HMAccessory *)self context];
          v34 = [v33 queue];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __40__HMAccessory__mergeControlTargetUUIDs___block_invoke_2;
          v44[3] = &unk_1E754E5C0;
          v44[4] = self;
          v45 = v32;
          dispatch_async(v34, v44);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v46 objects:v56 count:16];
    }

    while (v27);
    v35 = 1;
  }

  else
  {
    v35 = v38;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v35;
}

- (BOOL)_mergeServices:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMAccessory *)self currentServices];
  v7 = [v6 array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v7 newObjects:v4];

  v9 = [(HMObjectMergeCollection *)v8 removedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__HMAccessory__mergeServices___block_invoke;
  v16[3] = &unk_1E754B550;
  v16[4] = self;
  [v9 hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  v10 = [(HMObjectMergeCollection *)v8 addedObjects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__HMAccessory__mergeServices___block_invoke_1126;
  v15[3] = &unk_1E754B550;
  v15[4] = self;
  [v10 hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  v11 = [(HMObjectMergeCollection *)v8 isModified];
  if (v11)
  {
    v12 = [(HMObjectMergeCollection *)v8 finalObjects];
    v13 = [(HMAccessory *)self currentServices];
    [v13 setArray:v12];

    [(HMAccessory *)self notifyDelegateOfUpdatedServices];
  }

  return v11;
}

void __30__HMAccessory__mergeServices___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed service via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __30__HMAccessory__mergeServices___block_invoke_1126(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v7;
    v12 = 2112;
    v13 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added service via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) context];
  [v3 __configureWithContext:v8 accessory:*(a1 + 32)];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_mergeBulletinBoardNotificationByEndpoint:(id)a3
{
  v4 = a3;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v5 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = *(v29 + 24);
  }

  else
  {
    v8 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
    v9 = [v8 mutableCopy];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = v11;

    v13 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke;
    v23[3] = &unk_1E754B500;
    v14 = v4;
    v24 = v14;
    v25 = self;
    v15 = v12;
    v26 = v15;
    v27 = &v28;
    [v13 na_each:v23];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke_1123;
    v19[3] = &unk_1E754B528;
    v16 = v15;
    v20 = v16;
    v21 = self;
    v22 = &v28;
    [v14 na_each:v19];
    v17 = [v16 copy];
    [(HMAccessory *)self setBulletinBoardNotificationByEndpoint:v17];

    v7 = *(v29 + 24);
  }

  _Block_object_dispose(&v28, 8);

  return v7 & 1;
}

void __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 40);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing matter bulletin board via merge: %@", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v6 _unconfigure];
    [*(a1 + 48) setObject:0 forKeyedSubscript:v5];
    *(*(*(a1 + 56) + 8) + 24) = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke_1123(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) objectForKeyedSubscript:v5];

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 40);
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (!v7)
  {
    if (v11)
    {
      v15 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding new matter bulletin board via merge: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    v16 = [*(a1 + 40) context];
    [v6 __configureWithContext:v16 accessory:*(a1 + 40)];

    goto LABEL_9;
  }

  if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v18 = 138543618;
    v19 = v12;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating matter bulletin board via merge: %@", &v18, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [*(a1 + 32) objectForKeyedSubscript:v5];
  v14 = [v13 mergeFromNewObject:v6];

  if (v14)
  {
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = 1;
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (HMAccessory)initWithCoder:(id)a3
{
  v193 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 hm_decodeAndCacheUUIDFromStringForKey:@"accessoryUUID"];
  if (v5)
  {
    v6 = [(HMAccessory *)self initWithUUID:v5];
    if (v6)
    {
      v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
      objc_storeWeak(&v6->_home, v7);

      v8 = [v4 hm_decodeHMAccessoryCategoryAndCacheForKey:@"HM.accessoryCategory"];
      category = v6->_category;
      v6->_category = v8;

      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryRoom"];
      objc_storeWeak(&v6->_room, v10);

      v6->_bridgedAccessory = [v4 decodeBoolForKey:@"isBridged"];
      v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
      name = v6->_name;
      v6->_name = v11;

      v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryConfiguredName"];
      configuredName = v6->_configuredName;
      v6->_configuredName = v13;

      v15 = [v4 hm_decodeAndCacheStringForKey:@"accessoryServerIdentifier"];
      deviceIdentifier = v6->_deviceIdentifier;
      v6->_deviceIdentifier = v15;

      v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.pendingConfigurationIdentifier"];
      pendingConfigurationIdentifier = v6->_pendingConfigurationIdentifier;
      v6->_pendingConfigurationIdentifier = v17;

      v6->_paired = [v4 decodeBoolForKey:@"paired"];
      v6->_reachable = [v4 decodeBoolForKey:@"reachable"];
      v6->_reachableTransports = [v4 decodeIntegerForKey:@"HM.reachability"];
      v6->_transportTypes = [v4 decodeIntegerForKey:@"HM.accessoryTransportTypes"];
      v6->_communicationProtocol = [v4 decodeIntegerForKey:@"HMA.communicationProrocol"];
      v6->_supportsIdentify = [v4 decodeBoolForKey:@"HM.supportsIdentify"];
      v6->_currentAccessory = [v4 decodeBoolForKey:@"HM.currentAccessory"];
      v19 = [v4 hm_decodeAndCacheStringForKey:@"HM.manufacturer"];
      manufacturer = v6->_manufacturer;
      v6->_manufacturer = v19;

      v21 = [v4 hm_decodeAndCacheStringForKey:@"HM.model"];
      model = v6->_model;
      v6->_model = v21;

      v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterNodeID"];
      matterNodeID = v6->_matterNodeID;
      v6->_matterNodeID = v23;

      if (([v4 decodeBoolForKey:@"HMA.supportsCHIP"] & 1) != 0 || v6->_communicationProtocol == 2)
      {
        v6->_supportsCHIP = 1;
        v25 = @"HM.displayableFirmwareVersion";
      }

      else
      {
        v30 = [(NSNumber *)v6->_matterNodeID unsignedIntValue];
        v6->_supportsCHIP = v30 != 0;
        if (v30)
        {
          v25 = @"HM.displayableFirmwareVersion";
        }

        else
        {
          v25 = @"HM.firmwareVersion";
        }
      }

      v31 = [v4 hm_decodeAndCacheStringForKey:v25];
      firmwareVersion = v6->_firmwareVersion;
      v6->_firmwareVersion = v31;

      v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
      serialNumber = v6->_serialNumber;
      v6->_serialNumber = v33;

      v35 = [v4 hm_decodeAndCacheStringForKey:@"HM.bundleID"];
      bundleID = v6->_bundleID;
      v6->_bundleID = v35;

      v37 = [v4 hm_decodeAndCacheStringForKey:@"HM.storeID"];
      storeID = v6->_storeID;
      v6->_storeID = v37;

      v6->_vendorAccessory = [v4 decodeBoolForKey:@"HMAccessoryIsVendorAccessoryCodingKey"];
      v39 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryHAPInstanceIDCodingKey"];
      HAPInstanceID = v6->_HAPInstanceID;
      v6->_HAPInstanceID = v39;

      v6->_firmwareUpdateAvailable = [v4 decodeBoolForKey:@"HM.firmwareUpdateAvailable"];
      if ([v4 containsValueForKey:@"HM.accessoryReprovisionState"])
      {
        v6->_accessoryReprovisionState = [v4 decodeInt32ForKey:@"HM.accessoryReprovisionState"];
      }

      v41 = MEMORY[0x1E695DFD8];
      v188[0] = objc_opt_class();
      v188[1] = objc_opt_class();
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
      v43 = [v41 setWithArray:v42];
      v44 = [v4 decodeObjectOfClasses:v43 forKey:@"services"];

      v177 = v44;
      [(HMMutableArray *)v6->_currentServices setArray:v44];
      v45 = [v4 decodeBoolForKey:@"suspendCapable"];
      v6->_suspendCapable = v45;
      if (v45)
      {
        v6->_reachable = 1;
      }

      if ([v4 containsValueForKey:@"HM.suspendedState"])
      {
        v6->_suspendedState = [v4 decodeIntegerForKey:@"HM.suspendedState"];
      }

      if ([v4 containsValueForKey:@"HM.certificationStatus"])
      {
        v46 = [v4 decodeIntegerForKey:@"HM.certificationStatus"];
      }

      else
      {
        v46 = 0;
      }

      v6->_certificationStatus = v46;
      v47 = ([v4 decodeBoolForKey:@"HM.demoAccessory"] & 1) != 0 || v6->_communicationProtocol == 3;
      v6->_demoAccessory = v47;
      v48 = MEMORY[0x1E695DFD8];
      v187[0] = objc_opt_class();
      v187[1] = objc_opt_class();
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
      v50 = [v48 setWithArray:v49];
      v51 = [v4 decodeObjectOfClasses:v50 forKey:@"controlTargets"];

      v175 = v51;
      v52 = [v51 na_map:&__block_literal_global_37215];
      controlTargetUUIDs = v6->_controlTargetUUIDs;
      v6->_controlTargetUUIDs = v52;

      v6->_associationOptions = [v4 decodeIntegerForKey:@"HM.associationOptions"];
      v54 = MEMORY[0x1E695DFD8];
      v186[0] = objc_opt_class();
      v186[1] = objc_opt_class();
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:2];
      v56 = [v54 setWithArray:v55];
      v57 = [v4 decodeObjectOfClasses:v56 forKey:@"identifiersForBridgedAccessories"];

      v176 = v57;
      if ([v57 count])
      {
        v58 = [MEMORY[0x1E695DF70] array];
        v178 = 0u;
        v179 = 0u;
        v180 = 0u;
        v181 = 0u;
        v59 = v57;
        v60 = [v59 countByEnumeratingWithState:&v178 objects:v185 count:16];
        if (v60)
        {
          v61 = v60;
          v62 = *v179;
          do
          {
            for (i = 0; i != v61; ++i)
            {
              if (*v179 != v62)
              {
                objc_enumerationMutation(v59);
              }

              v64 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:*(*(&v178 + 1) + 8 * i)];
              [(NSArray *)v58 addObject:v64];
            }

            v61 = [v59 countByEnumeratingWithState:&v178 objects:v185 count:16];
          }

          while (v61);
        }

        uniqueIdentifiersForBridgedAccessories = v6->_uniqueIdentifiersForBridgedAccessories;
        v6->_uniqueIdentifiersForBridgedAccessories = v58;
      }

      v66 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
      applicationData = v6->_applicationData;
      v6->_applicationData = v66;

      v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"accessoryFlagsCodingKey"];
      v174 = v68;
      if (v68)
      {
        objc_storeStrong(&v6->_accessoryFlags, v68);
        if (([(NSNumber *)v6->_accessoryFlags integerValue]& 1) != 0)
        {
          v69 = 1;
        }

        else
        {
          v69 = 2;
        }

        v6->_additionalSetupStatus = v69;
        if (([(NSNumber *)v6->_accessoryFlags integerValue]& 2) != 0)
        {
          v68 = 1;
        }

        else
        {
          v68 = 2;
        }
      }

      else
      {
        v6->_additionalSetupStatus = 0;
      }

      v6->_calibrationStatus = v68;
      v70 = MEMORY[0x1E695DFD8];
      v184[0] = objc_opt_class();
      v184[1] = objc_opt_class();
      v71 = [MEMORY[0x1E695DEC8] arrayWithObjects:v184 count:2];
      v72 = [v70 setWithArray:v71];
      v73 = [v4 decodeObjectOfClasses:v72 forKey:@"HM.accessoryProfiles"];

      v74 = [(HMAccessory *)v6 accessoryProfiles];
      v75 = [HMAccessory _cameraProfilesForAccessoryProfiles:v73];
      [v74 addObjectsFromArray:v75];

      v76 = [(HMAccessory *)v6 accessoryProfiles];
      v77 = [HMAccessory _mediaProfilesForAccessoryProfiles:v73];
      [v76 addObjectsFromArray:v77];

      v78 = [(HMAccessory *)v6 accessoryProfiles];
      v79 = [MEMORY[0x1E695DFD8] setWithArray:v73];
      v80 = [HMAccessory _lightProfilesForAccessoryProfiles:v79];
      v81 = [v80 allObjects];
      [v78 addObjectsFromArray:v81];

      v82 = [(HMAccessory *)v6 accessoryProfiles];
      v83 = [HMAccessory _siriEndpointProfilesForAccessoryProfiles:v73];
      [v82 addObjectsFromArray:v83];

      v84 = [(HMAccessory *)v6 accessoryProfiles];
      if (HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken != -1)
      {
        dispatch_once(&HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken, &__block_literal_global_164);
      }

      v85 = [HMAccessory televisionProfilesForAccessoryServices:v177 isSPIEntitled:HMIsCurrentProcessSPIEntitled_spiEntitled];
      [v84 addObjectsFromArray:v85];

      v86 = [(HMAccessory *)v6 accessoryProfiles];
      v87 = [(HMAccessory *)v6 uniqueIdentifier];
      v88 = [HMAccessory _networkConfigurationProfilesForCoder:v4 accessoryIdentifier:v87];
      [v86 addObjectsFromArray:v88];

      v89 = [(HMAccessory *)v6 accessoryProfiles];
      v90 = [HMAccessory _doorbellProfilesForAccessoryProfiles:v73];
      [v89 addObjectsFromArray:v90];

      v91 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.settings"];
      if (v91)
      {
        v92 = [[HMAccessorySettingGroup alloc] initWithInternal:v91];
        v93 = [[HMAccessorySettings alloc] initWithSettingsContainer:v6 settingsControl:v6 rootGroup:v92];
        settings = v6->_settings;
        v6->_settings = v93;
      }

      v95 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
      device = v6->_device;
      v6->_device = v95;

      v97 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.deviceIRK"];
      deviceIRKData = v6->_deviceIRKData;
      v6->_deviceIRKData = v97;

      v99 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.softwareVersion"];
      softwareVersion = v6->_softwareVersion;
      v6->_softwareVersion = v99;

      if ([v4 containsValueForKey:@"HM.accountIdentifier"])
      {
        v101 = [v4 hm_decodeAndCacheUUIDForKey:@"HM.accountIdentifier"];
        accountIdentifier = v6->_accountIdentifier;
        v6->_accountIdentifier = v101;
      }

      v6->_controllable = [v4 decodeBoolForKey:@"HMA.controllable"];
      if ([v4 containsValueForKey:@"HM.softwareUpdate"])
      {
        v103 = [[HMSoftwareUpdateController alloc] initWithAccessory:v6];
        softwareUpdateController = v6->_softwareUpdateController;
        v6->_softwareUpdateController = v103;

        v105 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.softwareUpdate"];
        if (v105)
        {
          [(HMSoftwareUpdateController *)v6->_softwareUpdateController setAvailableUpdate:v105];
        }
      }

      v173 = v91;
      v106 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.remoteLoginHandler"];
      remoteLoginHandler = v6->_remoteLoginHandler;
      v6->_remoteLoginHandler = v106;

      v6->_hasSymptomsHandler = [v4 decodeBoolForKey:@"HM.hasSymptomsHandler"];
      v6->_supportsMediaAccessControl = [v4 decodeBoolForKey:@"HMA.supportsMediaAccessControl"];
      v6->_knownToSystemCommissioner = [v4 decodeBoolForKey:@"HMA.knownToSystemCommissioner"];
      v108 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.rootPublicKey"];
      rootPublicKey = v6->_rootPublicKey;
      v6->_rootPublicKey = v108;

      v110 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.nodeID"];
      nodeID = v6->_nodeID;
      v6->_nodeID = v110;

      v112 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.commissioningID"];
      commissioningID = v6->_commissioningID;
      v6->_commissioningID = v112;

      v114 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.vendorID"];
      vendorID = v6->_vendorID;
      v6->_vendorID = v114;

      v116 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.productID"];
      productID = v6->_productID;
      v6->_productID = v116;

      v6->_requiresThreadRouter = [v4 decodeBoolForKey:@"HMA.requiresThreadRouter"];
      v118 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterWEDSupport"];
      matterWEDSupport = v6->_matterWEDSupport;
      v6->_matterWEDSupport = v118;

      v120 = [v4 hm_decodeAndCacheStringForKey:@"HMA.matterExtendedMACAddress"];
      matterExtendedMACAddress = v6->_matterExtendedMACAddress;
      v6->_matterExtendedMACAddress = v120;

      v122 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.supportedLinkLayerTypes"];
      supportedLinkLayerTypes = v6->_supportedLinkLayerTypes;
      v6->_supportedLinkLayerTypes = v122;

      v6->_supportsNativeMatter = [v4 decodeBoolForKey:@"HMA.supportsNativeMatter"];
      v124 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.wifiNetworkInfo"];
      wifiNetworkInfo = v6->_wifiNetworkInfo;
      v6->_wifiNetworkInfo = v124;

      v6->_supportsTargetControl = [v4 decodeBoolForKey:@"HMCT.supportsTargetControl"];
      v6->_supportsTargetController = [v4 decodeBoolForKey:@"HMCT.supportsTargetController"];
      v6->_targetControllerHardwareSupport = [v4 decodeBoolForKey:@"HMCT.targetControllerHardwareSupport"];
      v6->_supportsMultiUser = [v4 decodeBoolForKey:@"HMA.supportsMultiUser"];
      v6->_supportsHomeLevelLocationServiceSetting = [v4 decodeBoolForKey:@"HMA.HomeLevelLocationServiceSetting"];
      v6->_supportsAudioReturnChannel = [v4 decodeBoolForKey:@"HMA.supportsAudioReturnChannel"];
      v6->_supportsCompanionInitiatedRestart = [v4 decodeBoolForKey:@"HMA.supportsCompanionInitiatedRestart"];
      v6->_supportsCompanionInitiatedObliterate = [v4 decodeBoolForKey:@"HMA.supportsCompanionInitiatedObliterate"];
      v6->_supportsMusicAlarm = [v4 decodeBoolForKey:@"HMA.SupportsMusicAlarm"];
      v6->_supportsMediaContentProfile = [v4 decodeBoolForKey:@"HM.ac.mediacontentprofile"];
      v126 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.protectionGroupUID"];
      if (v126)
      {
        v127 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v126];
        networkProtectionGroupUUID = v6->_networkProtectionGroupUUID;
        v6->_networkProtectionGroupUUID = v127;
      }

      v129 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAudioDestinationControllerDataCodingKey"];
      v130 = v129;
      v171 = v126;
      if (v129)
      {
        v129 = [[HMMediaDestinationController alloc] initWithControllerData:v129, v126, v173, v174];
      }

      audioDestinationController = v6->_audioDestinationController;
      v6->_audioDestinationController = v129;

      v132 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAudioDestinationCodingKey"];
      audioDestination = v6->_audioDestination;
      v6->_audioDestination = v132;

      v134 = [(HMAccessory *)v6 category];
      v135 = [v134 categoryType];
      v136 = [v135 isEqual:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

      if (v136)
      {
        v137 = [v4 decodeBoolForKey:@"HMA.audioAnalysisEventBulletinBoardNotificationEnabled"];
        v138 = MEMORY[0x1E695DFD8];
        v183[0] = objc_opt_class();
        v183[1] = objc_opt_class();
        v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:2];
        v140 = [v138 setWithArray:v139];
        v141 = [v4 decodeObjectOfClasses:v140 forKey:@"HMA.audioAnalysisEventBulletinBoardNotificationCondition"];

        v142 = [(HMAccessory *)v6 home];
        v143 = [HMPredicateUtilities rewritePredicateForClient:v141 home:v142];

        v144 = [[HMAudioAnalysisEventBulletinBoardNotification alloc] initWithEnabled:v137 condition:v143 accessoryIdentifier:v5];
        audioAnalysisEventBulletinBoardNotification = v6->_audioAnalysisEventBulletinBoardNotification;
        v6->_audioAnalysisEventBulletinBoardNotification = v144;
      }

      v6->_supportsAudioAnalysis = [v4 decodeBoolForKey:{@"HMA.SupportsAudioAnalysis", v171}];
      v6->_supportsDropIn = [v4 decodeBoolForKey:@"HMA.SupportsDropIn"];
      v6->_supportsAnnounce = [v4 decodeBoolForKey:@"HMA.SupportsAnnounce"];
      v6->_supportsMediaActions = [v4 decodeBoolForKey:@"HMA.SupportsMediaActions"];
      v6->_supportsAccessCodes = [v4 decodeBoolForKey:@"HMAccessorySupportsAccessCodeCodingKey"];
      v6->_supportsWalletKey = [v4 decodeBoolForKey:@"HMAccessorySupportsWalletCodingKey"];
      v6->_supportsUWBUnlock = [v4 decodeBoolForKey:@"HMAccessorySupportsUWBUnlockCodingKey"];
      v146 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryReaderGroupSubIdentifierACWGCodingKey"];
      readerGroupSubIdentifierACWG = v6->_readerGroupSubIdentifierACWG;
      v6->_readerGroupSubIdentifierACWG = v146;

      v148 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryReaderIDACWGCodingKey"];
      readerIDACWG = v6->_readerIDACWG;
      v6->_readerIDACWG = v148;

      v6->_mfiCertifiedACWG = [v4 decodeBoolForKey:@"HMAccessoryMFiCertifiedACWGCodingKey"];
      v150 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryWeekDayScheduleCapacityCodingKey"];
      weekDaySchedulesPerUserCapacity = v6->_weekDaySchedulesPerUserCapacity;
      v6->_weekDaySchedulesPerUserCapacity = v150;

      v152 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryYearDayScheduleCapacityCodingKey"];
      yearDaySchedulesPerUserCapacity = v6->_yearDaySchedulesPerUserCapacity;
      v6->_yearDaySchedulesPerUserCapacity = v152;

      v6->_supportsDoorbellChime = [v4 decodeBoolForKey:@"HMA.SupportsDoorbellChime"];
      v6->_supportsCoordinationDoorbellChime = [v4 decodeBoolForKey:@"HMA.SupportsCoordinationDoorbellChime"];
      v6->_supportsUserMediaSettings = [v4 decodeBoolForKey:@"HMA.SupportsUserMediaSetting"];
      v6->_supportsThirdPartyMusic = [v4 decodeBoolForKey:@"HMA.supportsThirdPartyMusic"];
      v6->_supportsPreferredMediaUser = [v4 decodeBoolForKey:@"HM.ac.supportsPreferredMediaUser"];
      v6->_supportsMessagedHomePodSettings = [v4 decodeBoolForKey:@"HMA.HMAccessorySupportsMessagedHomePodSettingsCodingKey"];
      v6->_supportsPrimaryUserInfoSubscription = [v4 decodeBoolForKey:@"HMA.HMAccessorySupportsPrimaryUserInfoSubscriptionCodingKey"];
      if (!v6->_supportsMessagedHomePodSettings)
      {
        v154 = [v4 hm_decodeAndCacheUUIDForKey:@"HM.ac.preferredMediaUser"];
        preferredMediaUserUUID = v6->_preferredMediaUserUUID;
        v6->_preferredMediaUserUUID = v154;

        v156 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.preferredUserSelection"];
        v6->_preferredUserSelectionType = [v156 unsignedIntegerValue];
      }

      v157 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.supportedDiagnosticsCodingKey"];
      supportedDiagnostics = v6->_supportedDiagnostics;
      v6->_supportedDiagnostics = v157;

      if ([v4 containsValueForKey:@"HM.supportedStereoPairVersionsCodingKey"])
      {
        v159 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.supportedStereoPairVersionsCodingKey"];
        v6->_supportedStereoPairVersions = [v159 unsignedIntegerValue];
      }

      if ([v4 containsValueForKey:@"HM.homePodVariantCodingKey"])
      {
        v160 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.homePodVariantCodingKey"];
        v6->_homePodVariant = [v160 unsignedIntegerValue];
      }

      v161 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HM.hasOnboardedForNaturalLightingKey"];
      v6->_hasOnboardedForNaturalLighting = [v161 BOOLValue];
      v6->_supportsManagedConfigurationProfile = [v4 decodeBoolForKey:@"HMA.ManagedConfigurationProfileCodingKey"];
      v6->_productColor = [v4 decodeIntegerForKey:@"HM.productColor"];
      v6->_supportsSoftwareUpdateV2 = [v4 decodeBoolForKey:@"HMA.SupportsSoftwareUpdateV2CodingKey"];
      v6->_supportsRMVonAppleTV = [v4 decodeBoolForKey:@"HM.ac.supportsRMVonAppleTV"];
      v6->_supportsJustSiri = [v4 decodeBoolForKey:@"HM.ac.supportsJustSiri"];
      if ([v4 containsValueForKey:@"HM.BulletinBoardNotification"])
      {
        v162 = MEMORY[0x1E695DFD8];
        v182[0] = objc_opt_class();
        v182[1] = objc_opt_class();
        v182[2] = objc_opt_class();
        v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:3];
        v164 = [v162 setWithArray:v163];
        v165 = [v4 decodeObjectOfClasses:v164 forKey:@"HM.BulletinBoardNotification"];
        bulletinBoardNotificationByEndpoint = v6->_bulletinBoardNotificationByEndpoint;
        v6->_bulletinBoardNotificationByEndpoint = v165;
      }

      v167 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterDeviceTypeID"];
      matterDeviceTypeID = v6->_matterDeviceTypeID;
      v6->_matterDeviceTypeID = v167;

      v6->_supportsStereoOdeonTTSUBypassingPrimary = [v4 decodeBoolForKey:@"HM.ac.HMAccessorySupportsStereoOdeonBypassingPrimaryCodingKey"];
      v6->_supportsNetworkDiagnostics = [v4 decodeBoolForKey:@"HM.ac.HMAccessorySupportsNetworkDiagnosticsCodingKey"];
      v6->_supportsCrossfadeAsAirPlaySource = [v4 decodeBoolForKey:@"HM.ac.HMAccessorySupportsCrossfadeAsAirPlaySourceCodingKey"];
      if ([v4 containsValueForKey:@"HMA.supportsAdaptiveTemperatureAutomations"])
      {
        v6->_supportsAdaptiveTemperatureAutomations = [v4 decodeBoolForKey:@"HMA.supportsAdaptiveTemperatureAutomations"];
      }

      if ([v4 containsValueForKey:@"HMA.supportsCleanEnergyAutomation"])
      {
        v6->_supportsCleanEnergyAutomation = [v4 decodeBoolForKey:@"HMA.supportsCleanEnergyAutomation"];
      }

      if ([v4 containsValueForKey:@"HMA.hasOnboardedForAdaptiveTemperatureAutomations"])
      {
        v6->_hasOnboardedForAdaptiveTemperatureAutomations = [v4 decodeBoolForKey:@"HMA.hasOnboardedForAdaptiveTemperatureAutomations"];
      }

      if ([v4 containsValueForKey:@"HMA.hasOnboardedForCleanEnergyAutomation"])
      {
        v6->_hasOnboardedForCleanEnergyAutomation = [v4 decodeBoolForKey:@"HMA.hasOnboardedForCleanEnergyAutomation"];
      }

      if ([v4 containsValueForKey:@"HMAccessoryHH1EOLEnabledCodingKey"])
      {
        v6->_hh1EOLEnabled = [v4 decodeBoolForKey:@"HMAccessoryHH1EOLEnabledCodingKey"];
      }

      v6->_isPrimaryResident = [v4 decodeBoolForKey:@"HMAccessoryIsPrimaryResidentCodingKey"];
    }

    self = v6;
    v29 = self;
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v190 = v28;
      v191 = 2112;
      v192 = 0;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded UUID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v29 = 0;
  }

  v169 = *MEMORY[0x1E69E9840];
  return v29;
}

id __29__HMAccessory_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)_handleMultipleCharacteristicsUpdated:(id)a3 message:(id)a4 informDelegate:(BOOL)a5
{
  v5 = a5;
  v77 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v49 = a4;
  v9 = [(HMAccessory *)self delegate];
  v43 = v9;
  v48 = v5 && v9 && (objc_opt_respondsToSelector() & 1) != 0;
  v42 = +[HMHAPMetadata getSharedInstance];
  v52 = [MEMORY[0x1E695DF70] array];
  v54 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v54 setNumberStyle:1];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = v8;
  v39 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v39)
  {
    v38 = *v68;
    v50 = self;
    do
    {
      for (i = 0; i != v39; ++i)
      {
        if (*v68 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v67 + 1) + 8 * i);
        v55 = [v54 numberFromString:{v11, v38}];
        v44 = [(HMAccessory *)self _findService:?];
        if (v44)
        {
          v41 = i;
          v12 = [obj hmf_dictionaryForKey:v11];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v57 = v12;
          v56 = [v57 countByEnumeratingWithState:&v63 objects:v71 count:16];
          if (v56)
          {
            v53 = *v64;
            do
            {
              for (j = 0; j != v56; ++j)
              {
                if (*v64 != v53)
                {
                  objc_enumerationMutation(v57);
                }

                v14 = *(*(&v63 + 1) + 8 * j);
                v15 = [v54 numberFromString:v14];
                v16 = [(HMAccessory *)self _findCharacteristic:v15 forService:v55];
                if (v16)
                {
                  v17 = [v57 hmf_dictionaryForKey:v14];
                  v18 = [v17 objectForKeyedSubscript:@"kCharacteristicValue"];
                  v19 = [MEMORY[0x1E695DFB0] null];
                  v20 = [v18 isEqual:v19];

                  if (v20)
                  {

                    v18 = 0;
                  }

                  v21 = [v17 errorFromDataForKey:@"kCharacteristicErrorDataKey"];
                  v22 = [[HMCharacteristicRequest alloc] initWithCharacteristic:v16];
                  v23 = [[HMCharacteristicResponse alloc] initWithRequest:v22 value:v18 error:v21];
                  [v52 addObject:v23];
                  if (!v21)
                  {
                    v51 = [v16 value];
                    v24 = [v49 headers];
                    v25 = [v24 hmf_dateForKey:@"HMXPCMessageSentDateKey"];

                    [v16 _updateValue:v18 valueUpdatedDate:v25];
                    if (v48)
                    {
                      if (!HMFEqualObjects() || ([v16 characteristicType], v26 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v42, "shouldNotCacheCharacteristicOfType:", v26), v26, v46))
                      {
                        v47 = [(HMAccessory *)v50 context];
                        v45 = [v47 delegateCaller];
                        v58[0] = MEMORY[0x1E69E9820];
                        v58[1] = 3221225472;
                        v58[2] = __76__HMAccessory__handleMultipleCharacteristicsUpdated_message_informDelegate___block_invoke;
                        v58[3] = &unk_1E754DE30;
                        v59 = v43;
                        v60 = v50;
                        v61 = v44;
                        v62 = v16;
                        [v45 invokeBlock:v58];
                      }
                    }

                    self = v50;
                  }
                }

                else
                {
                  v27 = objc_autoreleasePoolPush();
                  v28 = self;
                  v29 = HMFGetOSLogHandle();
                  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                  {
                    v30 = HMFGetLogIdentifier();
                    *buf = 138543618;
                    v73 = v30;
                    v74 = 2112;
                    v75 = v15;
                    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find characteristic for characteristic updated characteristic ID: %@", buf, 0x16u);
                  }

                  objc_autoreleasePoolPop(v27);
                }
              }

              v56 = [v57 countByEnumeratingWithState:&v63 objects:v71 count:16];
            }

            while (v56);
          }

          i = v41;
        }

        else
        {
          v31 = objc_autoreleasePoolPush();
          v32 = self;
          v33 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            v34 = HMFGetLogIdentifier();
            *buf = 138543618;
            v73 = v34;
            v74 = 2112;
            v75 = v55;
            _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find service for characteristic updated service ID: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v31);
        }
      }

      v39 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
    }

    while (v39);
  }

  v35 = [v52 copy];
  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_updateName:(id)a3 forService:(id)a4 completionHandler:(id)a5
{
  v64 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMAccessory *)self context];
  if (!v10)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateName:forService:completionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    v41 = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v43;
      v62 = 2112;
      v63 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v12 = v11;
  if (v11)
  {
    v13 = [(HMAccessory *)self home];
    if (v13)
    {
      v14 = [v9 name];
      v15 = [v14 isEqual:v8];

      if (v15)
      {
        v16 = [(HMAccessory *)self context];
        v17 = [v16 delegateCaller];
        [v17 callCompletion:v10 error:0];
      }

      else
      {
        v47 = [v9 targetAccessoryUUID];
        v25 = [v8 copy];
        v46 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v47];
        v26 = MEMORY[0x1E69A2A10];
        v58[0] = @"kServiceInstanceID";
        v27 = [v9 instanceID];
        v58[1] = @"kServiceName";
        v59[0] = v27;
        v59[1] = v25;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        v48 = [v26 messageWithName:@"kRenameServiceRequestKey" destination:v46 payload:v28];

        objc_initWeak(buf, v9);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__HMAccessory__updateName_forService_completionHandler___block_invoke;
        aBlock[3] = &unk_1E754D960;
        objc_copyWeak(&v57, buf);
        v45 = v25;
        v54 = v45;
        v55 = self;
        v56 = v10;
        v29 = _Block_copy(aBlock);
        v30 = [(HMAccessory *)self context];
        v31 = [v30 pendingRequests];

        v32 = [v48 identifier];
        v33 = _Block_copy(v29);
        [v31 addCompletionBlock:v33 forIdentifier:v32];

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __56__HMAccessory__updateName_forService_completionHandler___block_invoke_2;
        v49[3] = &unk_1E754E480;
        v34 = v31;
        v50 = v34;
        v35 = v32;
        v51 = v35;
        v36 = v29;
        v52 = v36;
        [v48 setResponseHandler:v49];
        v37 = [v12 messageDispatcher];
        [v37 sendMessage:v48 completionHandler:0];

        objc_destroyWeak(&v57);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      v22 = [(HMAccessory *)self context];
      v23 = [v22 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v23 callCompletion:v10 error:v24];

      v13 = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v21;
      v62 = 2080;
      v63 = "[HMAccessory _updateName:forService:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v13);
  }

  v38 = *MEMORY[0x1E69E9840];
}

void __56__HMAccessory__updateName_forService_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (!v3)
  {
    [WeakRetained setConfiguredName:*(a1 + 32)];
    [WeakRetained setName:*(a1 + 32)];
  }

  v4 = [*(a1 + 40) context];
  v5 = [v4 delegateCaller];
  [v5 callCompletion:*(a1 + 48) error:v3];
}

void __56__HMAccessory__updateName_forService_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_updateAuthorizationData:(id)a3 forService:(id)a4 characteristic:(id)a5 completionHandler:(id)a6
{
  v62 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMAccessory *)self context];
  if (!v13)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateAuthorizationData:forService:characteristic:completionHandler:]", @"completion"];
    v44 = objc_autoreleasePoolPush();
    v45 = self;
    v46 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      v47 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v47;
      v60 = 2112;
      v61 = v43;
      _os_log_impl(&dword_19BB39000, v46, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v44);
    v48 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v43 userInfo:0];
    objc_exception_throw(v48);
  }

  v15 = v14;
  if (v14)
  {
    v16 = [(HMAccessory *)self home];
    v17 = v16;
    if (v16)
    {
      v49 = v15;
      v56[0] = @"kHomeUUID";
      v18 = [v16 uuid];
      v19 = [v18 UUIDString];
      v20 = v11;
      v21 = v19;
      v57[0] = v19;
      v56[1] = @"kServiceInstanceID";
      v51 = v20;
      v22 = [v20 instanceID];
      v57[1] = v22;
      v56[2] = @"kCharacteristicInstanceID";
      v50 = v12;
      v23 = [v12 instanceID];
      v57[2] = v23;
      v56[3] = @"kAuthorizationDataKey";
      v24 = v10;
      if (!v10)
      {
        v24 = [MEMORY[0x1E695DEF0] data];
      }

      v57[3] = v24;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];
      if (!v10)
      {
      }

      v26 = objc_alloc(MEMORY[0x1E69A2A10]);
      v27 = objc_alloc(MEMORY[0x1E69A2A00]);
      v28 = [(HMAccessory *)self uuid];
      v29 = [v27 initWithTarget:v28];
      v30 = v25;
      v31 = [v26 initWithName:@"HMAccessoryUpdateCharacteristicAuthorizationDataMessage" destination:v29 payload:v25];

      v52[0] = MEMORY[0x1E69E9820];
      v52[1] = 3221225472;
      v52[2] = __84__HMAccessory__updateAuthorizationData_forService_characteristic_completionHandler___block_invoke;
      v52[3] = &unk_1E754E480;
      v32 = v50;
      v53 = v50;
      v15 = v49;
      v33 = v49;
      v54 = v33;
      v55 = v13;
      [v31 setResponseHandler:v52];
      v34 = [v33 messageDispatcher];
      [v34 sendMessage:v31];

      v11 = v51;
    }

    else
    {
      v39 = [(HMAccessory *)self context];
      v40 = [v39 delegateCaller];
      [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      v41 = v32 = v12;
      [v40 callCompletion:v13 error:v41];
    }
  }

  else
  {
    v32 = v12;
    v35 = objc_autoreleasePoolPush();
    v36 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v38 = HMFGetLogIdentifier();
      *buf = 138543618;
      v59 = v38;
      v60 = 2080;
      v61 = "[HMAccessory _updateAuthorizationData:forService:characteristic:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v13 + 2))(v13, v17);
  }

  v42 = *MEMORY[0x1E69E9840];
}

void __84__HMAccessory__updateAuthorizationData_forService_characteristic_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (!v6)
  {
    [*(a1 + 32) setHasAuthorizationData:{objc_msgSend(a3, "hmf_BOOLForKey:", @"kCharacteristicAuthDataPresentKey"}];
  }

  v5 = [*(a1 + 40) delegateCaller];
  [v5 callCompletion:*(a1 + 48) error:v6];
}

- (void)_updateAssociatedServiceType:(id)a3 forService:(id)a4 completionHandler:(id)a5
{
  v50 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v14;
    v46 = 2112;
    v47 = v8;
    v48 = 2112;
    v49 = v9;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating service type: %@, for service: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v15 = [(HMAccessory *)v12 context];
  if (!v10)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateAssociatedServiceType:forService:completionHandler:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    v32 = v12;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v34;
      v46 = 2112;
      v47 = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v16 = v15;
  if (v15)
  {
    v17 = [(HMAccessory *)v12 home];
    if (v17)
    {
      v36 = [(HMAccessory *)v12 uuid];
      v42[0] = @"kHomeUUID";
      v18 = [v17 uuid];
      v19 = [v18 UUIDString];
      v43[0] = v19;
      v42[1] = @"kServiceInstanceID";
      [v9 instanceID];
      v21 = v20 = v9;
      v42[2] = @"kServiceType";
      v43[1] = v21;
      v43[2] = v8;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __73__HMAccessory__updateAssociatedServiceType_forService_completionHandler___block_invoke;
      v37[3] = &unk_1E754B6C8;
      v37[4] = v12;
      v38 = v8;
      v39 = v16;
      v41 = v10;
      v40 = v20;
      [(_HMContext *)v39 sendMessage:v36 target:v22 payload:v37 responseHandler:?];

      v9 = v20;
    }

    else
    {
      v27 = [v16 delegateCaller];
      v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12 userInfo:0];
      [v27 callCompletion:v10 error:v28];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v12;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v26;
      v46 = 2080;
      v47 = "[HMAccessory _updateAssociatedServiceType:forService:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v17);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __73__HMAccessory__updateAssociatedServiceType_forService_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 40);
      v29 = 138543874;
      v30 = v11;
      v31 = 2112;
      v32 = v12;
      v33 = 2112;
      v34 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to update associated service type: %@ with error: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 48) delegateCaller];
    [v13 callCompletion:*(a1 + 64) error:v5];
  }

  else
  {
    v13 = [v6 hmf_stringForKey:@"kServiceType"];
    v14 = [v7 hmf_numberForKey:@"kServiceInstanceID"];
    v15 = [*(a1 + 32) services];
    v16 = [v15 hmf_firstObjectWithInstanceID:v14];

    if (!v16)
    {
      v17 = objc_autoreleasePoolPush();
      v18 = *(a1 + 32);
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        v29 = 138543874;
        v30 = v20;
        v31 = 2112;
        v32 = v14;
        v33 = 2112;
        v34 = v13;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Service not found for instance id: %@ updated service type: %@", &v29, 0x20u);
      }

      objc_autoreleasePoolPop(v17);
    }

    [v16 _handleUpdateAssociatedServiceType:v13];
    v21 = objc_autoreleasePoolPush();
    v22 = *(a1 + 32);
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = *(a1 + 40);
      v26 = *(a1 + 56);
      v29 = 138543874;
      v30 = v24;
      v31 = 2112;
      v32 = v25;
      v33 = 2112;
      v34 = v26;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Successfully updated associated service type: %@, for service: %@", &v29, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
    v27 = [*(a1 + 48) delegateCaller];
    [v27 callCompletion:*(a1 + 64) error:0];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)_findCharacteristic:(id)a3 forService:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(HMAccessory *)self _findService:a4];
  v8 = v7;
  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = [v7 characteristics];
    v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          v14 = [v13 instanceID];
          v15 = [v14 isEqual:v6];

          if (v15)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v10 = 0;
  }

  v16 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)_findServiceWithUniqueIdentifier:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMAccessory *)self services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 uniqueIdentifier];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)_findService:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(HMAccessory *)self services];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 instanceID];
        v11 = [v10 isEqual:v4];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (HMRemoteLoginHandler)remoteLoginHandler
{
  os_unfair_lock_lock_with_options();
  v3 = self->_remoteLoginHandler;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRemoteLoginHandler:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting remote login handler: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  remoteLoginHandler = v6->_remoteLoginHandler;
  v6->_remoteLoginHandler = v4;

  os_unfair_lock_unlock(&v6->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateRoom:(id)a3 completionHandler:(id)a4
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateRoom:completionHandler:]", @"completion"];
    v41 = objc_autoreleasePoolPush();
    v42 = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v44;
      v62 = 2112;
      v63 = v40;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v40 userInfo:0];
    objc_exception_throw(v45);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 delegateCaller];
    if (v6)
    {
      v48 = [(HMAccessory *)self home];
      v11 = [(HMAccessory *)self room];
      v12 = v11;
      if (v48)
      {
        if ([v11 isEqual:v6])
        {
          [v10 callCompletion:v7 error:0];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E69A2A00]);
          v24 = [(HMAccessory *)self messageTargetUUID];
          v46 = [v23 initWithTarget:v24];

          v25 = MEMORY[0x1E69A2A10];
          v58 = @"kRoomUUID";
          v26 = [v6 uuid];
          v27 = [v26 UUIDString];
          v59 = v27;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v47 = [v25 messageWithName:@"kUpdateRoomForAccessoryRequestKey" destination:v46 payload:v28];

          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __45__HMAccessory__updateRoom_completionHandler___block_invoke;
          aBlock[3] = &unk_1E754D960;
          objc_copyWeak(&v57, buf);
          v54 = v6;
          v55 = v10;
          v29 = v7;
          v56 = v29;
          v30 = _Block_copy(aBlock);
          v31 = [(HMAccessory *)self context];
          v32 = [v31 pendingRequests];

          v33 = [v47 identifier];
          v34 = _Block_copy(v29);
          [v32 addCompletionBlock:v34 forIdentifier:v33];

          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __45__HMAccessory__updateRoom_completionHandler___block_invoke_2;
          v49[3] = &unk_1E754E480;
          v35 = v32;
          v50 = v35;
          v36 = v33;
          v51 = v36;
          v37 = v30;
          v52 = v37;
          [v47 setResponseHandler:v49];
          v38 = [v9 messageDispatcher];
          [v38 sendMessage:v47 completionHandler:0];

          objc_destroyWeak(&v57);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        if (!v11)
        {
          v18 = objc_autoreleasePoolPush();
          v19 = self;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v21 = HMFGetLogIdentifier();
            *buf = 138543874;
            v61 = v21;
            v62 = 2112;
            v63 = 0;
            v64 = 2112;
            v65 = 0;
            _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@No room for accessory!!!! home %@, room %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v18);
        }

        v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
        [v10 callCompletion:v7 error:v22];
      }
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v10 callCompletion:v7 error:v17];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v61 = v16;
      v62 = 2080;
      v63 = "[HMAccessory _updateRoom:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v10);
  }

  v39 = *MEMORY[0x1E69E9840];
}

void __45__HMAccessory__updateRoom_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = v6;
  v5 = WeakRetained;
  if (!v6)
  {
    [WeakRetained setRoom:*(a1 + 32)];
    v4 = 0;
  }

  [*(a1 + 40) callCompletion:*(a1 + 48) error:v4];
}

void __45__HMAccessory__updateRoom_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)_readValueForCharacteristic:(id)a3 completionHandler:(id)a4
{
  v77 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [(HMAccessory *)self context];
  if (!v8)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _readValueForCharacteristic:completionHandler:]", @"completion"];
    v50 = objc_autoreleasePoolPush();
    v51 = self;
    v52 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
    {
      v53 = HMFGetLogIdentifier();
      *buf = 138543618;
      v74 = v53;
      v75 = 2112;
      v76 = v49;
      _os_log_impl(&dword_19BB39000, v52, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v50);
    v54 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v49 userInfo:0];
    objc_exception_throw(v54);
  }

  v10 = v9;
  if (v9)
  {
    if (v7)
    {
      v11 = [v7 service];
      if (v11)
      {
        v12 = [(HMAccessory *)self home];
        if (v12)
        {
          v13 = [v7 properties];
          v14 = [v13 containsObject:@"HMCharacteristicPropertyReadable"];

          if (v14)
          {
            v15 = objc_alloc(MEMORY[0x1E69A29C0]);
            v16 = MEMORY[0x1E696AEC0];
            v17 = MEMORY[0x19EAEB2A0](self, a2);
            v18 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Accessory/HMAccessory.m", 3871];
            v57 = [v15 initWithName:v18];

            v60 = [v7 instanceID];
            v59 = [v7 characteristicType];
            [v11 targetAccessoryUUID];

            v71[0] = @"kAccessoryUUID";
            v55 = [v11 targetAccessoryUUID];
            v19 = [v55 UUIDString];
            v72[0] = v19;
            v71[1] = @"kServiceInstanceID";
            v20 = [v11 instanceID];
            v72[1] = v20;
            v71[2] = @"kCharacteristicInstanceID";
            v21 = [v7 instanceID];
            v72[2] = v21;
            v71[3] = @"kHomeUUID";
            [v12 uuid];
            v22 = v62 = v12;
            v23 = [v22 UUIDString];
            v72[3] = v23;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:4];
            v58 = v61 = v11;

            v24 = objc_alloc(MEMORY[0x1E69A2A10]);
            v25 = objc_alloc(MEMORY[0x1E69A2A00]);
            v26 = [v62 messageTargetUUID];
            v27 = [v25 initWithTarget:v26];
            v28 = [v24 initWithName:@"kCharacteristicReadRequestKey" destination:v27 payload:v58];

            [v28 setActivity:v57];
            v29 = [(HMAccessory *)self context];
            v30 = [v29 pendingRequests];

            v31 = [v28 identifier];
            v32 = _Block_copy(v8);
            [v30 addCompletionBlock:v32 forIdentifier:v31];

            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __61__HMAccessory__readValueForCharacteristic_completionHandler___block_invoke;
            v63[3] = &unk_1E754B4C0;
            v64 = v57;
            v65 = self;
            v66 = v60;
            v67 = v59;
            v68 = v30;
            v69 = v31;
            v33 = v10;
            v70 = v33;
            v56 = v31;
            v34 = v30;
            v35 = v59;
            v36 = v60;
            v37 = v57;
            [v28 setResponseHandler:v63];
            v38 = [v33 messageDispatcher];
            [v38 sendMessage:v28];

            [v37 end];
            v12 = v62;

            v11 = v61;
LABEL_18:

            goto LABEL_19;
          }

          v43 = [(HMAccessory *)self context];
          v44 = [v43 delegateCaller];
          v45 = MEMORY[0x1E696ABC0];
          v46 = 6;
        }

        else
        {
          v43 = [(HMAccessory *)self context];
          v44 = [v43 delegateCaller];
          v45 = MEMORY[0x1E696ABC0];
          v46 = 12;
        }

        v47 = [v45 errorWithDomain:@"HMErrorDomain" code:v46 userInfo:0];
        [v44 callCompletion:v8 error:v47];
      }

      else
      {
        v12 = [(HMAccessory *)self context];
        v43 = [v12 delegateCaller];
        v44 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
        [v43 callCompletion:v8 error:v44];
      }
    }

    else
    {
      v11 = [(HMAccessory *)self context];
      v12 = [v11 delegateCaller];
      v43 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v12 callCompletion:v8 error:v43];
    }

    goto LABEL_18;
  }

  v39 = objc_autoreleasePoolPush();
  v40 = self;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
  {
    v42 = HMFGetLogIdentifier();
    *buf = 138543618;
    v74 = v42;
    v75 = 2080;
    v76 = "[HMAccessory _readValueForCharacteristic:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v39);
  v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(v8 + 2))(v8, v11);
LABEL_19:

  v48 = *MEMORY[0x1E69E9840];
}

void __61__HMAccessory__readValueForCharacteristic_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) begin];
  [*(a1 + 40) uuid];

  [v5 domain];
  [v5 code];
  if (v5)
  {
    v3 = [*(a1 + 64) removeCompletionBlockForIdentifier:*(a1 + 72)];
    v4 = [*(a1 + 80) delegateCaller];
    [v4 callCompletion:v3 error:v5];
  }

  [*(a1 + 32) end];
}

- (void)_writeValue:(id)a3 forCharacteristic:(id)a4 service:(id)a5 completionHandler:(id)a6
{
  v92[5] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(HMAccessory *)self context];
  if (!v14)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _writeValue:forCharacteristic:service:completionHandler:]", @"completion"];
    v59 = objc_autoreleasePoolPush();
    v60 = self;
    v61 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      v62 = HMFGetLogIdentifier();
      *buf = 138543618;
      v86 = v62;
      v87 = 2112;
      v88 = v58;
      _os_log_impl(&dword_19BB39000, v61, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v59);
    v63 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v58 userInfo:0];
    objc_exception_throw(v63);
  }

  v16 = v15;
  if (v15)
  {
    aBlock = v14;
    v17 = [(HMAccessory *)self home];
    v74 = v17;
    v75 = v16;
    if (v17)
    {
      v18 = v17;
      v19 = objc_alloc(MEMORY[0x1E69A29C0]);
      v20 = MEMORY[0x1E696AEC0];
      v21 = MEMORY[0x19EAEB2A0](self, a2);
      v22 = [v20 stringWithFormat:@"%@, %s:%ld", v21, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Accessory/HMAccessory.m", 3801];
      v64 = [v19 initWithName:v22];

      v65 = [v12 instanceID];
      v66 = [v12 characteristicType];
      [(HMAccessory *)self uuid];

      v70 = [v18 messageTargetUUID];
      v23 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:v70];
      v68 = MEMORY[0x1E69A2A10];
      v91[0] = @"kAccessoryUUID";
      v24 = [v13 targetAccessoryUUID];
      v25 = [v24 UUIDString];
      v92[0] = v25;
      v92[1] = v11;
      v73 = v11;
      v91[1] = @"kCharacteristicValue";
      v91[2] = @"kServiceInstanceID";
      v71 = v13;
      v26 = [v13 instanceID];
      v92[2] = v26;
      v91[3] = @"kCharacteristicInstanceID";
      v72 = v12;
      v27 = [v12 instanceID];
      v92[3] = v27;
      v91[4] = @"kHomeUUID";
      v28 = [v18 uuid];
      v29 = [v28 UUIDString];
      v92[4] = v29;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:5];
      v31 = v68;
      v69 = v23;
      v32 = [v31 messageWithName:@"kCharacteristicWriteRequestKey" destination:v23 payload:v30];

      [v32 setActivity:v64];
      v33 = [(HMAccessory *)self context];
      v34 = [v33 pendingRequests];

      v35 = [v32 identifier];
      v36 = _Block_copy(aBlock);
      [v34 addCompletionBlock:v36 forIdentifier:v35];

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __71__HMAccessory__writeValue_forCharacteristic_service_completionHandler___block_invoke;
      v77[3] = &unk_1E754B4C0;
      v37 = v64;
      v78 = v37;
      v79 = self;
      v38 = v65;
      v80 = v38;
      v39 = v66;
      v81 = v39;
      v67 = v34;
      v82 = v67;
      v40 = v35;
      v83 = v40;
      v41 = v75;
      v84 = v41;
      [v32 setResponseHandler:v77];
      v42 = objc_autoreleasePoolPush();
      v43 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543874;
        v86 = v45;
        v87 = 2112;
        v88 = v73;
        v89 = 2112;
        v90 = v72;
        _os_log_impl(&dword_19BB39000, v44, OS_LOG_TYPE_INFO, "%{public}@Sending message to write value %@ for characteristic: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v42);
      v46 = [v41 messageDispatcher];
      [v46 sendMessage:v32];

      [v37 end];
      v12 = v72;
      v11 = v73;
      v13 = v71;
      v14 = aBlock;
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      v54 = self;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v56;
        v87 = 2112;
        v88 = v12;
        _os_log_impl(&dword_19BB39000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic %@: home is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      v37 = [(HMAccessory *)v54 context];
      v38 = [v37 delegateCaller];
      v39 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      v14 = aBlock;
      [v38 callCompletion:aBlock error:v39];
    }

    v52 = v74;
    v16 = v75;
  }

  else
  {
    v47 = objc_autoreleasePoolPush();
    v48 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v51 = v50 = v14;
      *buf = 138543618;
      v86 = v51;
      v87 = 2080;
      v88 = "[HMAccessory _writeValue:forCharacteristic:service:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);

      v14 = v50;
    }

    objc_autoreleasePoolPop(v47);
    v52 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v14 + 2))(v14, v52);
  }

  v57 = *MEMORY[0x1E69E9840];
}

void __71__HMAccessory__writeValue_forCharacteristic_service_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  [*(a1 + 32) begin];
  [*(a1 + 40) uuid];

  [v5 domain];
  [v5 code];
  if (v5)
  {
    v3 = [*(a1 + 64) removeCompletionBlockForIdentifier:*(a1 + 72)];
    v4 = [*(a1 + 80) delegateCaller];
    [v4 callCompletion:v3 error:v5];
  }

  [*(a1 + 32) end];
}

- (void)_updateName:(id)a3 completionHandler:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateName:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    v37 = self;
    v38 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v39 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v39;
      v51 = 2112;
      v52 = v35;
      _os_log_impl(&dword_19BB39000, v38, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v36);
    v40 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v35 userInfo:0];
    objc_exception_throw(v40);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v6 length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v10 > HMMaxLengthForNaming__hmf_once_v9)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [v15 callCompletion:v7 error:v16];

      goto LABEL_22;
    }

    v15 = [v6 copy];
    v21 = [(HMAccessory *)self home];
    if (v21)
    {
      v22 = [(HMAccessory *)self name];
      v23 = HMFEqualObjects();

      if (!v23)
      {
        if (v6)
        {
          v47 = @"kAccessoryName";
          v48 = v15;
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v48 forKeys:&v47 count:1];
        }

        else
        {
          v45 = @"kAccessoryNameResetKey";
          v46 = MEMORY[0x1E695E118];
          v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
        }

        v28 = v27;
        v29 = objc_alloc(MEMORY[0x1E69A2A00]);
        v30 = [(HMAccessory *)self messageTargetUUID];
        v31 = [v29 initWithTarget:v30];

        v32 = [MEMORY[0x1E69A2A10] messageWithName:@"kRenameAccessoryRequestKey" destination:v31 payload:v28];
        objc_initWeak(buf, self);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __45__HMAccessory__updateName_completionHandler___block_invoke;
        v41[3] = &unk_1E754D058;
        objc_copyWeak(&v44, buf);
        v42 = v15;
        v43 = v7;
        [v32 setResponseHandler:v41];
        v33 = [v9 messageDispatcher];
        [v33 sendMessage:v32 completionHandler:0];

        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);

        goto LABEL_21;
      }

      v24 = [(HMAccessory *)self context];
      v25 = [v24 delegateCaller];
      [v25 callCompletion:v7 error:0];
    }

    else
    {
      v24 = [(HMAccessory *)self context];
      v25 = [v24 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v25 callCompletion:v7 error:v26];
    }

LABEL_21:
    goto LABEL_22;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543618;
    v50 = v20;
    v51 = 2080;
    v52 = "[HMAccessory _updateName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v17);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(v7 + 2))(v7, v15);
LABEL_22:

  v34 = *MEMORY[0x1E69E9840];
}

void __45__HMAccessory__updateName_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v12 = a3;
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v5)
  {
    [WeakRetained setConfiguredName:*(a1 + 32)];
    v8 = [v12 hmf_stringForKey:@"kAccessoryName"];
    v9 = v8;
    if (!v8)
    {
      v9 = *(a1 + 32);
    }

    [v7 setName:v9];
  }

  v10 = [v7 context];
  v11 = [v10 delegateCaller];
  [v11 callCompletion:*(a1 + 40) error:v5];
}

- (void)updateAccessoryName:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateAccessoryName:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v18;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v23 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v18 userInfo:0];
    objc_exception_throw(v23);
  }

  v9 = v8;
  v10 = [(HMAccessory *)self context];

  if (v10)
  {
    v11 = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMAccessory_updateAccessoryName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v25 = v6;
    v26 = v7;
    dispatch_async(v11, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMAccessory updateAccessoryName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  v8 = [(HMAccessory *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateName:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v21;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HMAccessory_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    v24 = v6;
    v25 = self;
    v26 = v7;
    dispatch_async(v10, block);

    v11 = v24;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMAccessory updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v11 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v11);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __44__HMAccessory_updateName_completionHandler___block_invoke(void *a1)
{
  v3 = a1[4];
  v2 = a1[5];
  if (v3)
  {
    v4 = a1[6];

    [v2 _updateName:? completionHandler:?];
  }

  else
  {
    v8 = [v2 context];
    v5 = [v8 delegateCaller];
    v6 = a1[6];
    v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
    [v5 callCompletion:v6 error:v7];
  }
}

- (void)setCertificationStatus:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_certificationStatus = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)certificationStatus
{
  os_unfair_lock_lock_with_options();
  certificationStatus = self->_certificationStatus;
  os_unfair_lock_unlock(&self->_lock);
  return certificationStatus;
}

- (void)setApplicationData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (int64_t)associationOptions
{
  os_unfair_lock_lock_with_options();
  associationOptions = self->_associationOptions;
  os_unfair_lock_unlock(&self->_lock);
  return associationOptions;
}

- (void)setSuspendedState:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_suspendedState = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)suspendedState
{
  os_unfair_lock_lock_with_options();
  suspendedState = self->_suspendedState;
  os_unfair_lock_unlock(&self->_lock);
  return suspendedState;
}

- (void)setSuspendCapable:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_suspendCapable = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSuspendCapable
{
  os_unfair_lock_lock_with_options();
  suspendCapable = self->_suspendCapable;
  os_unfair_lock_unlock(&self->_lock);
  return suspendCapable;
}

- (void)clearMatterCredentialWithType:(int64_t)a3 index:(int64_t)a4 completion:(id)a5
{
  v32 = *MEMORY[0x1E69E9840];
  v8 = a5;
  v9 = [(HMAccessory *)self context];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMAccessory *)self messageTargetUUID];
    v12 = [v10 initWithTarget:v11];

    v13 = MEMORY[0x1E69A2A10];
    v26[0] = @"type";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v26[1] = @"index";
    v27[0] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v27[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v17 = [v13 messageWithName:@"homeutil_clearClearCredential" destination:v12 payload:v16];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessory_clearMatterCredentialWithType_index_completion___block_invoke;
    v24[3] = &unk_1E754C0F0;
    v25 = v8;
    [v17 setResponseHandler:v24];
    v18 = [v9 messageDispatcher];
    [v18 sendMessage:v17];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v22;
      v30 = 2080;
      v31 = "[HMAccessory clearMatterCredentialWithType:index:completion:]";
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)clearMatterUserWithIndex:(int64_t)a3 completion:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMAccessory *)self context];
  if (v7)
  {
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    v9 = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:v9];

    v11 = MEMORY[0x1E69A2A10];
    v23 = @"index";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v24 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v11 messageWithName:@"homeutil_clearUser" destination:v10 payload:v13];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__HMAccessory_clearMatterUserWithIndex_completion___block_invoke;
    v21[3] = &unk_1E754C0F0;
    v22 = v6;
    [v14 setResponseHandler:v21];
    v15 = [v7 messageDispatcher];
    [v15 sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2080;
      v28 = "[HMAccessory clearMatterUserWithIndex:completion:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)dumpMatterUsersWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"homeutil_getAllUsers" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__HMAccessory_dumpMatterUsersWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = v4;
    [v9 setResponseHandler:v16];
    v10 = [v5 messageDispatcher];
    [v10 sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMAccessory dumpMatterUsersWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __45__HMAccessory_dumpMatterUsersWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  if (a3)
  {
    v5 = a2;
    v8 = [a3 hmf_stringForKey:@"users"];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a2;
    v7(v6, 0);
  }
}

- (void)getAccessoryDiagnosticEventsWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.accessoryDiagnosticEvents" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__HMAccessory_getAccessoryDiagnosticEventsWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = v4;
    [v9 setResponseHandler:v16];
    v10 = [v5 messageDispatcher];
    [v10 sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMAccessory getAccessoryDiagnosticEventsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)getAccessoryDiagnosticCountersWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.accessoryDiagnosticCounters" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__HMAccessory_getAccessoryDiagnosticCountersWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = v4;
    [v9 setResponseHandler:v16];
    v10 = [v5 messageDispatcher];
    [v10 sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMAccessory getAccessoryDiagnosticCountersWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)queryLinkQualityWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = objc_alloc(MEMORY[0x1E69A2A00]);
      v7 = [(HMAccessory *)self messageTargetUUID];
      v8 = [v6 initWithTarget:v7];

      v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.linkQualityRequest" destination:v8 payload:0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__HMAccessory_queryLinkQualityWithCompletion___block_invoke;
      v16[3] = &unk_1E754C0F0;
      v17 = v4;
      [v9 setResponseHandler:v16];
      v10 = [v5 messageDispatcher];
      [v10 sendMessage:v9];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48 description:@"Feature is disabled" reason:@"Feature flag is disabled" suggestion:0];
      (*(v4 + 2))(v4, 0, v8);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMAccessory queryLinkQualityWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __46__HMAccessory_queryLinkQualityWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a3;
  if (v20)
  {
    v5 = a2;
    v6 = [v20 hmf_BOOLForKey:@"kAccessoryLinkQualitySupportedKey"];
    v7 = [v20 hmf_stringForKey:@"kAccessoryMacAddressKey"];
    v8 = [v20 hmf_stringForKey:@"kAccessoryNetworkNameKey"];
    v9 = [v20 allKeys];
    v10 = [v9 containsObject:@"kAccessoryLinkLayerTypeKey"];

    if (v10)
    {
      v11 = [v20 hmf_numberForKey:@"kAccessoryLinkLayerTypeKey"];
      v12 = [v11 unsignedIntegerValue];
    }

    else
    {
      v12 = 0;
    }

    v15 = [v20 allKeys];
    v16 = [v15 containsObject:@"kAccessoryLinkQualityKey"];

    if (v16)
    {
      v17 = [v20 hmf_numberForKey:@"kAccessoryLinkQualityKey"];
      v18 = [v17 unsignedIntegerValue];
    }

    else
    {
      v18 = 0;
    }

    v19 = [[HMAccessoryLinkQualityResult alloc] initWithLinkQualitySupported:v6 linkLayerType:v12 macAddress:v7 networkName:v8 linkQuality:v18];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = *(a1 + 32);
    v14 = *(v13 + 16);
    v7 = a2;
    v14(v13, 0, v7);
  }
}

- (void)validatePairingAuthMethodWithCompletion:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.validateAuthMethod" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__HMAccessory_validatePairingAuthMethodWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = v4;
    [v9 setResponseHandler:v16];
    v10 = [v5 messageDispatcher];
    [v10 sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v14;
      v20 = 2080;
      v21 = "[HMAccessory validatePairingAuthMethodWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55__HMAccessory_validatePairingAuthMethodWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 32) + 16);

    v5();
  }

  else
  {
    v6 = [a3 hmf_numberForKey:@"HMA.authMethod"];
    v7 = *(a1 + 32);
    v9 = v6;
    if (v6)
    {
      (*(v7 + 16))(v7, 0, [v6 integerValue]);
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
      (*(v7 + 16))(v7, v8, 5);
    }
  }
}

- (void)queryAdvertisementInformationWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v22 = @"kAccessoryUUID";
    v6 = [(HMAccessory *)self uuid];
    v7 = [v6 UUIDString];
    v23 = v7;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMAccessory *)self uuid];
    v12 = [v10 initWithTarget:v11];
    v13 = [v9 initWithName:@"kAccessoryAdvertisingParamsRequestKey" destination:v12 payload:v8];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__HMAccessory_queryAdvertisementInformationWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E754C0F0;
    v21 = v4;
    [v13 setResponseHandler:v20];
    v14 = [v5 messageDispatcher];
    [v14 sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v18;
      v26 = 2080;
      v27 = "[HMAccessory queryAdvertisementInformationWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __66__HMAccessory_queryAdvertisementInformationWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = [a3 hmf_stringForKey:@"kIdentifierKey"];
  v6 = v5;
  if (v8)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = [[HMAccessoryAdvertisementInfo alloc] initWithAccessoryIdentifier:v5];
    (*(*(a1 + 32) + 16))();
  }
}

- (void)setControllable:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_controllable = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isControllable
{
  os_unfair_lock_lock_with_options();
  controllable = self->_controllable;
  os_unfair_lock_unlock(&self->_lock);
  return controllable;
}

- (BOOL)isCalibrating
{
  v3 = [(HMAccessory *)self calibrationStatus];
  if (v3)
  {
    LOBYTE(v3) = [(HMAccessory *)self calibrationStatus]== 1;
  }

  return v3;
}

- (BOOL)isAdditionalSetupRequired
{
  v3 = [(HMAccessory *)self additionalSetupStatus];
  if (v3)
  {
    LOBYTE(v3) = [(HMAccessory *)self additionalSetupStatus]== 1;
  }

  return v3;
}

- (void)setHAPInstanceID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  HAPInstanceID = self->_HAPInstanceID;
  self->_HAPInstanceID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)HAPInstanceID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_HAPInstanceID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVendorAccessory:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_vendorAccessory = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isVendorAccessory
{
  os_unfair_lock_lock_with_options();
  vendorAccessory = self->_vendorAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return vendorAccessory;
}

- (void)setFirmwareUpdateAvailable:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_firmwareUpdateAvailable = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFirmwareUpdateAvailable
{
  os_unfair_lock_lock_with_options();
  firmwareUpdateAvailable = self->_firmwareUpdateAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return firmwareUpdateAvailable;
}

- (void)setBundleID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  bundleID = self->_bundleID;
  self->_bundleID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)bundleID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bundleID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setStoreID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  storeID = self->_storeID;
  self->_storeID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)storeID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_storeID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)_valueForCharacteristic:(id)a3 ofService:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a4 characteristics];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 characteristicType];
        v12 = [v11 isEqualToString:v5];

        if (v12)
        {
          v13 = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            v7 = [v10 value];
            goto LABEL_12;
          }
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)_accessoryInformationService
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [(HMAccessory *)self services];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = [v7 serviceType];
        v9 = [v8 isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  v11 = *MEMORY[0x1E69E9840];

  return v10;
}

- (HMAccessoryWiFiController)accessoryWiFiController
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accessoryWiFiController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSoftwareUpdateController:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  softwareUpdateController = self->_softwareUpdateController;
  self->_softwareUpdateController = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)softwareUpdateController
{
  os_unfair_lock_lock_with_options();
  v3 = self->_softwareUpdateController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSoftwareVersion:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  softwareVersion = self->_softwareVersion;
  self->_softwareVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeviceIRKData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  deviceIRKData = self->_deviceIRKData;
  self->_deviceIRKData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)deviceIRKData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIRKData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDevice:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMDevice)device
{
  os_unfair_lock_lock_with_options();
  v3 = self->_device;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

void __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5)
  {
    v15 = [v6 hmf_dataForKey:@"HM.pairingIdentity"];
    if (v15)
    {
      v36 = 0;
      v16 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v15 error:&v36];
      v17 = v36;
      v18 = v17;
      if (!v16)
      {
        v23 = objc_autoreleasePoolPush();
        v24 = *(a1 + 32);
        v25 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v41 = v26;
          v42 = 2112;
          v43 = v18;
          _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive pairing identity for accessory from encoded pairing identity: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v23);
        v27 = [*(a1 + 32) context];
        v28 = [v27 delegateCaller];
        v34[0] = MEMORY[0x1E69E9820];
        v34[1] = 3221225472;
        v34[2] = __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke_1054;
        v34[3] = &unk_1E754E430;
        v35 = *(a1 + 40);
        [v28 invokeBlock:v34];

        v22 = v35;
        goto LABEL_13;
      }
    }

    else
    {
      v16 = 0;
    }

    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke_2;
    v30[3] = &unk_1E754D208;
    v21 = *(a1 + 40);
    v30[4] = *(a1 + 32);
    v31 = v16;
    v32 = 0;
    v33 = v21;
    v18 = v16;
    [v20 invokeBlock:v30];

    v22 = v31;
LABEL_13:

    goto LABEL_14;
  }

  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 32) uuid];
    *buf = 138543874;
    v41 = v11;
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v5;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to retrieve pairing identity for accessory : %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v13 = [*(a1 + 32) context];
  v14 = [v13 delegateCaller];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke_1052;
  v37[3] = &unk_1E754E458;
  v39 = *(a1 + 40);
  v38 = v5;
  [v14 invokeBlock:v37];

  v15 = v39;
LABEL_14:

  v29 = *MEMORY[0x1E69E9840];
}

void __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke_1054(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

uint64_t __63__HMAccessory_pairingIdentityWithPrivateKey_completionHandler___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) uuid];
    v7 = *(a1 + 40);
    v12 = 138543874;
    v13 = v5;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Successfully retrieved pairing identity for accessory : %@ / %@", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = *(a1 + 48);
  v9 = *(a1 + 40);
  result = (*(*(a1 + 56) + 16))();
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)_handlePairingIdentityUpdate:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [(HMAccessory *)self context];
      v8 = [v7 delegateCaller];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __44__HMAccessory__handlePairingIdentityUpdate___block_invoke;
      v23[3] = &unk_1E754E5C0;
      v23[4] = self;
      v24 = v6;
      [v8 invokeBlock:v23];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = v6;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Did not call delegate for pairing identity, unregistered delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Posting notification for HMAccessoryPairingIdentityUpdatedNotification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E696AD88] defaultCenter];
    [v21 postNotificationName:@"HMAccessoryPairingIdentityUpdatedNotification" object:v18];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v12;
      v27 = 2080;
      v28 = "[HMAccessory _handlePairingIdentityUpdate:]";
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v22 = *MEMORY[0x1E69E9840];
}

uint64_t __44__HMAccessory__handlePairingIdentityUpdate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate for pairing identity update: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 40) accessoryDidUpdatePairingIdentity:*(a1 + 32)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)installManagedConfigurationProfileWithData:(id)a3 completionHandler:(id)a4
{
  v35 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMAccessory *)self context];
    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x1E69A2A00]);
      v10 = [(HMAccessory *)self messageTargetUUID];
      v11 = [v9 initWithTarget:v10];

      v30 = @"HMAccessory.mc.data";
      v31 = v6;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryInstallManagedConfigurationProfileMessage" destination:v11 payload:v12];
      objc_initWeak(location, self);
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __76__HMAccessory_installManagedConfigurationProfileWithData_completionHandler___block_invoke;
      v27 = &unk_1E754CFF8;
      objc_copyWeak(&v29, location);
      v28 = v7;
      [v13 setResponseHandler:&v24];
      v14 = [v8 messageDispatcher];
      [v14 sendMessage:v13 completionHandler:0];

      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v22;
        v33 = 2080;
        v34 = "[HMAccessory installManagedConfigurationProfileWithData:completionHandler:]";
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v8 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v18;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil profileData", location, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v8 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    (*(v7 + 2))(v7, 0, v8);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __76__HMAccessory_installManagedConfigurationProfileWithData_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    if (v5)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v11;
        v18 = 2112;
        v19 = v5;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Install managed configuration profiles responded with error: %@", &v16, 0x16u);
      }

      v12 = 0;
    }

    else
    {
      v12 = [v6 hmf_stringForKey:@"HMAccessory.mc.identifier"];
      v8 = objc_autoreleasePoolPush();
      v13 = WeakRetained;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543618;
        v17 = v14;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Install managed configuration profiles succeeded: %@", &v16, 0x16u);
      }
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v12 = 0;
  }

  (*(*(a1 + 32) + 16))();

  v15 = *MEMORY[0x1E69E9840];
}

- (void)removeManagedConfigurationProfileWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(HMAccessory *)self context];
    if (!v7)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory removeManagedConfigurationProfileWithIdentifier:completionHandler:]", @"completionHandler"];
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v29;
        v37 = 2112;
        v38 = v25;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
      v30 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v25 userInfo:0];
      objc_exception_throw(v30);
    }

    v9 = v8;
    if (v8)
    {
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      v11 = [(HMAccessory *)self messageTargetUUID];
      v12 = [v10 initWithTarget:v11];

      v34 = @"HMAccessory.mc.identifier";
      v35 = v6;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveManagedConfigurationProfileMessage" destination:v12 payload:v13];
      objc_initWeak(location, self);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__HMAccessory_removeManagedConfigurationProfileWithIdentifier_completionHandler___block_invoke;
      v31[3] = &unk_1E754CFF8;
      objc_copyWeak(&v33, location);
      v32 = v7;
      [v14 setResponseHandler:v31];
      v15 = [v9 messageDispatcher];
      [v15 sendMessage:v14 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *location = 138543618;
        *&location[4] = v23;
        v37 = 2080;
        v38 = "[HMAccessory removeManagedConfigurationProfileWithIdentifier:completionHandler:]";
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      (*(v7 + 2))(v7, v12);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil identifier", location, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v9 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    (*(v7 + 2))(v7, v9);
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __81__HMAccessory_removeManagedConfigurationProfileWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = WeakRetained;
    v12 = HMFGetOSLogHandle();
    v13 = v12;
    if (v5)
    {
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = v5;
        v15 = "%{public}@Remove managed configuration profiles responded with error: %@";
        v16 = v13;
        v17 = OS_LOG_TYPE_ERROR;
        v18 = 22;
LABEL_7:
        _os_log_impl(&dword_19BB39000, v16, v17, v15, &v20, v18);
      }
    }

    else if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v14;
      v15 = "%{public}@Remove managed configuration profiles responded";
      v16 = v13;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 12;
      goto LABEL_7;
    }

    objc_autoreleasePoolPop(v10);
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v5, v7, v8);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)fetchManagedConfigurationProfilesWithCompletionHandler:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory fetchManagedConfigurationProfilesWithCompletionHandler:]", @"completionHandler"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v21;
      v27 = 2112;
      v28 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = v5;
  if (v5)
  {
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    v8 = [(HMAccessory *)self messageTargetUUID];
    v9 = [v7 initWithTarget:v8];

    v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryFetchManagedConfigurationProfilesMessage" destination:v9 payload:0];
    objc_initWeak(location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__HMAccessory_fetchManagedConfigurationProfilesWithCompletionHandler___block_invoke;
    v23[3] = &unk_1E754CFF8;
    objc_copyWeak(&v25, location);
    v24 = v4;
    [v10 setResponseHandler:v23];
    v11 = [v6 messageDispatcher];
    [v11 sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v15;
      v27 = 2080;
      v28 = "[HMAccessory fetchManagedConfigurationProfilesWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v9);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __70__HMAccessory_fetchManagedConfigurationProfilesWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v44[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v5)
  {
    if (WeakRetained)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v39 = v12;
        v40 = 2112;
        v41 = v5;
        _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Fetch managed configuration profiles responded with error: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v13 = [v6 hmf_dataForKey:@"HMAccessory.mc.profiles"];
    if (v13)
    {
      v14 = MEMORY[0x1E695DFD8];
      v44[0] = objc_opt_class();
      v44[1] = objc_opt_class();
      v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v44 count:2];
      v16 = [v14 setWithArray:v15];

      v37 = 0;
      v17 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v16 fromData:v13 error:&v37];
      v18 = v37;
      if (v17)
      {
        if (v8)
        {
          v19 = objc_autoreleasePoolPush();
          v20 = v8;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v34 = v18;
            v22 = v35 = v19;
            v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "count")}];
            *buf = 138543874;
            v39 = v22;
            v40 = 2112;
            v41 = v23;
            v42 = 2112;
            v43 = v17;
            _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Fetch managed configuration profiles responded: %@, %@", buf, 0x20u);

            v19 = v35;
            v18 = v34;
          }

          objc_autoreleasePoolPop(v19);
        }

        v5 = 0;
      }

      else
      {
        if (v8)
        {
          v29 = objc_autoreleasePoolPush();
          v30 = v8;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
          {
            HMFGetLogIdentifier();
            v32 = v36 = v29;
            *buf = 138543618;
            v39 = v32;
            v40 = 2112;
            v41 = v18;
            _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode profiles: %@", buf, 0x16u);

            v29 = v36;
          }

          objc_autoreleasePoolPop(v29);
        }

        v5 = v18;
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      if (v8)
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v8;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v39 = v27;
          v40 = 2112;
          v41 = 0;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Encoded profiles are nil: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
      }

      v28 = *(a1 + 32);
      v17 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
      (*(v28 + 16))(v28, 0, v17);
      v5 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
}

- (void)updatePreferredMediaUserSelectionType:(unint64_t)a3 user:(id)a4 completionHandler:(id)a5
{
  v54 = *MEMORY[0x1E69E9840];
  v8 = a4;
  v9 = a5;
  v39 = [(HMAccessory *)self context];
  if (!v9)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updatePreferredMediaUserSelectionType:user:completionHandler:]", @"completionHandler"];
    v34 = objc_autoreleasePoolPush();
    v35 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v37;
      v50 = 2112;
      v51 = v33;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v34);
    v38 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v33 userInfo:0];
    objc_exception_throw(v38);
  }

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v39)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v8 uuid];
      v16 = [v15 UUIDString];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
      *buf = 138543874;
      v49 = v14;
      v50 = 2112;
      v51 = v16;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Updating preferredMediaUser: %@, type: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v46 = @"HM.ac.usersel";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v47 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v20 = [v19 mutableCopy];

    if (v8)
    {
      v44 = @"kUserUUIDKey";
      v21 = [v8 uuid];
      v22 = [v21 UUIDString];
      v45 = v22;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v20 addEntriesFromDictionary:v23];
    }

    v24 = objc_alloc(MEMORY[0x1E69A2A00]);
    v25 = [(HMAccessory *)v11 messageTargetUUID];
    v26 = [v24 initWithTarget:v25];

    v27 = MEMORY[0x1E69A2A10];
    v28 = [v20 copy];
    v29 = [v27 messageWithName:@"HM.ac.updatePreferredMediaUser" destination:v26 payload:v28];

    objc_initWeak(buf, v11);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __76__HMAccessory_updatePreferredMediaUserSelectionType_user_completionHandler___block_invoke;
    v40[3] = &unk_1E754B480;
    objc_copyWeak(v43, buf);
    v41 = v8;
    v43[1] = a3;
    v42 = v9;
    [v29 setResponseHandler:v40];
    v30 = [v39 messageDispatcher];
    [v30 sendMessage:v29];

    objc_destroyWeak(v43);
    objc_destroyWeak(buf);
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v49 = v31;
      v50 = 2080;
      v51 = "[HMAccessory updatePreferredMediaUserSelectionType:user:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v20 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v9 + 2))(v9, v20);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __76__HMAccessory_updatePreferredMediaUserSelectionType_user_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v8 = *(a1 + 32);
    if (v8)
    {
      v9 = [v8 uuid];
      v10 = v9;
      if (!v5)
      {
        if (v9)
        {
          [WeakRetained setPreferredMediaUserUUID:v9];
          v11 = 1;
          goto LABEL_11;
        }

LABEL_10:
        [WeakRetained setPreferredMediaUserUUID:0];
        v11 = 0;
        v10 = 0;
LABEL_11:
        [WeakRetained setPreferredUserSelectionType:v11];
        v12 = objc_autoreleasePoolPush();
        v17 = WeakRetained;
        v14 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v18 = HMFGetLogIdentifier();
          v21 = [v17 preferredMediaUserUUID];
          v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v17, "preferredUserSelectionType")}];
          *buf = 138543874;
          v23 = v18;
          v24 = 2112;
          v25 = v21;
          v26 = 2112;
          v27 = v19;
          _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Updated preferredMediaUser on response to %@, type: %@", buf, 0x20u);
        }

LABEL_13:

        objc_autoreleasePoolPop(v12);
        goto LABEL_14;
      }
    }

    else
    {
      if (!v5)
      {
        goto LABEL_10;
      }

      v10 = 0;
    }

    v12 = objc_autoreleasePoolPush();
    v13 = WeakRetained;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 56)];
      *buf = 138544130;
      v23 = v15;
      v24 = 2112;
      v25 = v10;
      v26 = 2112;
      v27 = v16;
      v28 = 2112;
      v29 = v5;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Updating preferredMediaUser on response to %@, type: %@ with error: %@", buf, 0x2Au);
    }

    goto LABEL_13;
  }

LABEL_14:
  (*(*(a1 + 40) + 16))();

  v20 = *MEMORY[0x1E69E9840];
}

- (void)updatePreferredMediaUser:(id)a3 completionHandler:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = a3;
  v6 = a4;
  if (!v13)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Must have valid user", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide valid parameters" userInfo:0];
    objc_exception_throw(v12);
  }

  [(HMAccessory *)self updatePreferredMediaUserSelectionType:1 user:v13 completionHandler:v6];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfUpdatedSettings:(id)a3
{
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  v6 = [v5 delegateCaller];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__HMAccessory__notifyDelegateOfUpdatedSettings___block_invoke;
  v8[3] = &unk_1E754E5C0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [v6 invokeBlock:v8];
}

void __48__HMAccessory__notifyDelegateOfUpdatedSettings___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  if ([v2 conformsToProtocol:&unk_1F0F63E80])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (objc_opt_respondsToSelector())
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v29 = 138543618;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated settings: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    [v4 accessory:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
  }

  v10 = [*(a1 + 32) mediaProfile];
  v11 = [v10 delegate];
  if ([v11 conformsToProtocol:&unk_1F0F63600])
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (objc_opt_respondsToSelector())
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 32);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 40);
      v29 = 138543618;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@(MP) Notifying client of updated settings: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [v13 mediaProfile:v10 didUpdateSettings:*(a1 + 40)];
  }

  v19 = [*(a1 + 32) mediaProfile];
  v20 = [v19 delegate];
  if ([v20 conformsToProtocol:&unk_1F0F5C670])
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  if (objc_opt_respondsToSelector())
  {
    v23 = objc_autoreleasePoolPush();
    v24 = *(a1 + 32);
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      v27 = *(a1 + 40);
      v29 = 138543618;
      v30 = v26;
      v31 = 2112;
      v32 = v27;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_INFO, "%{public}@(MP) Notifying media object client of updated settings: %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    [v22 mediaObject:v19 didUpdateSettings:*(a1 + 40)];
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (void)_handleRootSettingsUpdated:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(HMAccessory *)self supportsMessagedHomePodSettings])
  {
    [v4 respondWithPayload:0];
  }

  else
  {
    v5 = [v4 dataForKey:@"settings"];
    if (v5)
    {
      v27 = 0;
      v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v27];
      v7 = v27;
      if (v6)
      {
        v8 = [[HMAccessorySettingGroup alloc] initWithInternal:v6];
        v9 = [(HMAccessory *)self settings];
        v10 = objc_autoreleasePoolPush();
        v11 = self;
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (v9)
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            *buf = 138543618;
            v29 = v14;
            v30 = 2112;
            v31 = v8;
            _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Merging with new settings: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v15 = [(HMAccessory *)v11 settings];
          [v15 mergeFromNewObject:v9];
        }

        else
        {
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v25 = HMFGetLogIdentifier();
            *buf = 138543618;
            v29 = v25;
            v30 = 2112;
            v31 = v8;
            _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Adding new settings: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v10);
          v9 = [[HMAccessorySettings alloc] initWithSettingsContainer:v11 settingsControl:v11 rootGroup:v8];
          [(HMAccessory *)v11 setSettings:v9];
          [(HMAccessory *)v11 _notifyDelegateOfUpdatedSettings:v9];
        }

        [v4 respondWithPayload:0];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v24;
          v30 = 2112;
          v31 = v7;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting group from root group data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v4 respondWithError:v8];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        v20 = [v4 messagePayload];
        *buf = 138543618;
        v29 = v19;
        v30 = 2112;
        v31 = v20;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized root settings from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v4 respondWithError:v7];
    }
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (NSUUID)preferredMediaUserUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_preferredMediaUserUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setPreferredMediaUserUUID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
  preferredMediaUserUUID = self->_preferredMediaUserUUID;
  self->_preferredMediaUserUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setProductColor:(int64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_productColor = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)productColor
{
  os_unfair_lock_lock_with_options();
  productColor = self->_productColor;
  os_unfair_lock_unlock(&self->_lock);
  return productColor;
}

- (void)setPreferredUserSelectionType:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_preferredUserSelectionType = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)preferredUserSelectionType
{
  os_unfair_lock_lock_with_options();
  preferredUserSelectionType = self->_preferredUserSelectionType;
  os_unfair_lock_unlock(&self->_lock);
  return preferredUserSelectionType;
}

- (id)preferredMediaUser
{
  v3 = [(HMAccessory *)self home];
  v4 = [v3 currentUser];
  v5 = [(HMAccessory *)self preferredMediaUserUUID];
  v6 = [v4 uuid];
  v7 = [v5 hmf_isEqualToUUID:v6];

  if (v7)
  {
    v8 = v4;
  }

  else
  {
    v9 = [v3 users];
    v10 = [(HMAccessory *)self preferredMediaUserUUID];
    v8 = [v9 hmf_firstObjectWithUUID:v10];
  }

  return v8;
}

- (void)setSettings:(id)a3
{
  v8 = a3;
  os_unfair_lock_lock_with_options();
  settings = self->_settings;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_settings, a3);
    [v8 setSettingsControl:self];
    [v8 setSettingsContainerInternal:self];
    v6 = [(HMAccessory *)self context];

    if (v6)
    {
      v7 = [(HMAccessory *)self context];
      [v8 _configureWithContext:v7];
    }
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySettings)settings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsPrimaryResident:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_isPrimaryResident = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPrimaryResident
{
  os_unfair_lock_lock_with_options();
  isPrimaryResident = self->_isPrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  return isPrimaryResident;
}

- (void)setPendingConfigurationIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  pendingConfigurationIdentifier = self->_pendingConfigurationIdentifier;
  self->_pendingConfigurationIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)pendingConfigurationIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_pendingConfigurationIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)assistantIdentifier
{
  v2 = [(HMAccessory *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"AC", v2, 0);

  return v3;
}

- (unint64_t)homePodVariant
{
  os_unfair_lock_lock_with_options();
  homePodVariant = self->_homePodVariant;
  os_unfair_lock_unlock(&self->_lock);
  return homePodVariant;
}

- (void)setHomePodVariant:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_homePodVariant = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)supportedStereoPairVersions
{
  os_unfair_lock_lock_with_options();
  supportedStereoPairVersions = self->_supportedStereoPairVersions;
  os_unfair_lock_unlock(&self->_lock);
  return supportedStereoPairVersions;
}

- (void)setSupportedStereoPairVersions:(unint64_t)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportedStereoPairVersions = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWifiNetworkInfo:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  self->_wifiNetworkInfo = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)targetControllers
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = [(HMAccessory *)self home];
  v3 = [v25 accessories];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v35;
    v27 = *v35;
    v28 = v4;
    do
    {
      v8 = 0;
      v29 = v6;
      do
      {
        if (*v35 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        v10 = [(HMAccessory *)self uuid];
        v11 = [v9 uuid];
        v12 = [v10 isEqual:v11];

        if ((v12 & 1) == 0 && ([v9 supportsTargetControl] & 1) == 0 && objc_msgSend(v9, "supportsTargetController"))
        {
          v13 = [v9 controlTargets];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = v13;
          v15 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v31;
            while (2)
            {
              for (i = 0; i != v16; ++i)
              {
                if (*v31 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = [*(*(&v30 + 1) + 8 * i) uuid];
                v20 = [(HMAccessory *)self uuid];
                v21 = [v19 isEqual:v20];

                if (v21)
                {
                  [v26 addObject:v9];
                  goto LABEL_19;
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v30 objects:v38 count:16];
              if (v16)
              {
                continue;
              }

              break;
            }
          }

LABEL_19:

          v7 = v27;
          v4 = v28;
          v6 = v29;
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [v4 countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v6);
  }

  v22 = [v26 copy];
  v23 = *MEMORY[0x1E69E9840];

  return v22;
}

- (id)controlTargets
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self home];
  v21 = self;
  v4 = [(HMAccessory *)self controlTargetUUIDs];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    v20 = v5;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v11 = [v3 accessoryWithUUID:v10];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          v13 = v21;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            v16 = [v10 UUIDString];
            *buf = 138543618;
            v28 = v15;
            v29 = 2112;
            v30 = v16;
            _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Unable to look up target accessory UUID for %@", buf, 0x16u);

            v5 = v20;
          }

          objc_autoreleasePoolPop(v12);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v7);
  }

  v17 = [v5 copy];
  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (void)setControlTargetUUIDs:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  controlTargetUUIDs = self->_controlTargetUUIDs;
  self->_controlTargetUUIDs = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)controlTargetUUIDs
{
  os_unfair_lock_lock_with_options();
  v3 = self->_controlTargetUUIDs;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHH1EOLEnabled:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_hh1EOLEnabled = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isHH1EOLEnabled
{
  os_unfair_lock_lock_with_options();
  hh1EOLEnabled = self->_hh1EOLEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return hh1EOLEnabled;
}

- (void)setMatterDeviceTypeID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  matterDeviceTypeID = self->_matterDeviceTypeID;
  self->_matterDeviceTypeID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)matterDeviceTypeID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterDeviceTypeID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)bulletinBoardNotificationForEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSDictionary *)self->_bulletinBoardNotificationByEndpoint objectForKeyedSubscript:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setBulletinBoardNotificationByEndpoint:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  bulletinBoardNotificationByEndpoint = self->_bulletinBoardNotificationByEndpoint;
  self->_bulletinBoardNotificationByEndpoint = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)bulletinBoardNotificationByEndpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bulletinBoardNotificationByEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsCrossfadeAsAirPlaySource:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCrossfadeAsAirPlaySource = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  os_unfair_lock_lock_with_options();
  supportsCrossfadeAsAirPlaySource = self->_supportsCrossfadeAsAirPlaySource;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCrossfadeAsAirPlaySource;
}

- (void)setSupportsNetworkDiagnostics:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsNetworkDiagnostics = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsNetworkDiagnostics
{
  os_unfair_lock_lock_with_options();
  supportsNetworkDiagnostics = self->_supportsNetworkDiagnostics;
  os_unfair_lock_unlock(&self->_lock);
  return supportsNetworkDiagnostics;
}

- (void)setSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsStereoOdeonTTSUBypassingPrimary = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  os_unfair_lock_lock_with_options();
  supportsStereoOdeonTTSUBypassingPrimary = self->_supportsStereoOdeonTTSUBypassingPrimary;
  os_unfair_lock_unlock(&self->_lock);
  return supportsStereoOdeonTTSUBypassingPrimary;
}

- (void)setSupportsJustSiri:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsJustSiri = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsJustSiri
{
  os_unfair_lock_lock_with_options();
  supportsJustSiri = self->_supportsJustSiri;
  os_unfair_lock_unlock(&self->_lock);
  return supportsJustSiri;
}

- (void)setSupportsRMVonAppleTV:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsRMVonAppleTV = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsRMVonAppleTV
{
  os_unfair_lock_lock_with_options();
  supportsRMVonAppleTV = self->_supportsRMVonAppleTV;
  os_unfair_lock_unlock(&self->_lock);
  return supportsRMVonAppleTV;
}

- (void)setSupportsSoftwareUpdateV2:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsSoftwareUpdateV2 = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsSoftwareUpdateV2
{
  os_unfair_lock_lock_with_options();
  supportsSoftwareUpdateV2 = self->_supportsSoftwareUpdateV2;
  os_unfair_lock_unlock(&self->_lock);
  return supportsSoftwareUpdateV2;
}

- (void)setSupportsMessagedHomePodSettings:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsMessagedHomePodSettings = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMessagedHomePodSettings
{
  os_unfair_lock_lock_with_options();
  supportsMessagedHomePodSettings = self->_supportsMessagedHomePodSettings;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMessagedHomePodSettings;
}

- (void)setSupportsDropIn:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsDropIn = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsDropIn
{
  os_unfair_lock_lock_with_options();
  supportsDropIn = self->_supportsDropIn;
  os_unfair_lock_unlock(&self->_lock);
  return supportsDropIn;
}

- (void)setSupportsAudioAnalysis:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsAudioAnalysis = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAudioAnalysis
{
  os_unfair_lock_lock_with_options();
  supportsAudioAnalysis = self->_supportsAudioAnalysis;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAudioAnalysis;
}

- (void)setSupportsManagedConfigurationProfile:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsManagedConfigurationProfile = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsManagedConfigurationProfile
{
  os_unfair_lock_lock_with_options();
  supportsManagedConfigurationProfile = self->_supportsManagedConfigurationProfile;
  os_unfair_lock_unlock(&self->_lock);
  return supportsManagedConfigurationProfile;
}

- (void)setSupportsPreferredMediaUser:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsPreferredMediaUser = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsPreferredMediaUser
{
  os_unfair_lock_lock_with_options();
  supportsPreferredMediaUser = self->_supportsPreferredMediaUser;
  os_unfair_lock_unlock(&self->_lock);
  return supportsPreferredMediaUser;
}

- (void)setSupportsThirdPartyMusic:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsThirdPartyMusic = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsThirdPartyMusic
{
  os_unfair_lock_lock_with_options();
  supportsThirdPartyMusic = self->_supportsThirdPartyMusic;
  os_unfair_lock_unlock(&self->_lock);
  return supportsThirdPartyMusic;
}

- (void)setSupportsCoordinationDoorbellChime:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCoordinationDoorbellChime = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCoordinationDoorbellChime
{
  os_unfair_lock_lock_with_options();
  supportsCoordinationDoorbellChime = self->_supportsCoordinationDoorbellChime;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCoordinationDoorbellChime;
}

- (void)setYearDaySchedulesPerUserCapacity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  yearDaySchedulesPerUserCapacity = self->_yearDaySchedulesPerUserCapacity;
  self->_yearDaySchedulesPerUserCapacity = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWeekDaySchedulesPerUserCapacity:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  weekDaySchedulesPerUserCapacity = self->_weekDaySchedulesPerUserCapacity;
  self->_weekDaySchedulesPerUserCapacity = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReaderIDACWG:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  readerIDACWG = self->_readerIDACWG;
  self->_readerIDACWG = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)readerIDACWG
{
  os_unfair_lock_lock_with_options();
  v3 = self->_readerIDACWG;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReaderGroupSubIdentifierACWG:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  readerGroupSubIdentifierACWG = self->_readerGroupSubIdentifierACWG;
  self->_readerGroupSubIdentifierACWG = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)readerGroupSubIdentifierACWG
{
  os_unfair_lock_lock_with_options();
  v3 = self->_readerGroupSubIdentifierACWG;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsUWBUnlock:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsUWBUnlock = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsUWBUnlock
{
  os_unfair_lock_lock_with_options();
  supportsUWBUnlock = self->_supportsUWBUnlock;
  os_unfair_lock_unlock(&self->_lock);
  return supportsUWBUnlock;
}

- (void)setSupportsWalletKey:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsWalletKey = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsWalletKey
{
  os_unfair_lock_lock_with_options();
  supportsWalletKey = self->_supportsWalletKey;
  os_unfair_lock_unlock(&self->_lock);
  return supportsWalletKey;
}

- (void)setSupportsAccessCodes:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsAccessCodes = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAccessCodes
{
  os_unfair_lock_lock_with_options();
  supportsAccessCodes = self->_supportsAccessCodes;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAccessCodes;
}

- (void)setSupportsUserMediaSettings:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsUserMediaSettings = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsUserMediaSettings
{
  os_unfair_lock_lock_with_options();
  supportsUserMediaSettings = self->_supportsUserMediaSettings;
  os_unfair_lock_unlock(&self->_lock);
  return supportsUserMediaSettings;
}

- (void)setSupportsDoorbellChime:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsDoorbellChime = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsDoorbellChime
{
  os_unfair_lock_lock_with_options();
  supportsDoorbellChime = self->_supportsDoorbellChime;
  os_unfair_lock_unlock(&self->_lock);
  return supportsDoorbellChime;
}

- (void)setSupportsMediaActions:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsMediaActions = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMediaActions
{
  os_unfair_lock_lock_with_options();
  supportsMediaActions = self->_supportsMediaActions;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMediaActions;
}

- (void)setSupportsAnnounce:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsAnnounce = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAnnounce
{
  os_unfair_lock_lock_with_options();
  supportsAnnounce = self->_supportsAnnounce;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAnnounce;
}

- (void)setSupportsMusicAlarm:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsMusicAlarm = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMusicAlarm
{
  os_unfair_lock_lock_with_options();
  supportsMusicAlarm = self->_supportsMusicAlarm;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMusicAlarm;
}

- (void)setSupportsCompanionInitiatedObliterate:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCompanionInitiatedObliterate = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  os_unfair_lock_lock_with_options();
  supportsCompanionInitiatedObliterate = self->_supportsCompanionInitiatedObliterate;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCompanionInitiatedObliterate;
}

- (void)setSupportsCompanionInitiatedRestart:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCompanionInitiatedRestart = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCompanionInitiatedRestart
{
  os_unfair_lock_lock_with_options();
  supportsCompanionInitiatedRestart = self->_supportsCompanionInitiatedRestart;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCompanionInitiatedRestart;
}

- (void)setSupportsAudioReturnChannel:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsAudioReturnChannel = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAudioReturnChannel
{
  os_unfair_lock_lock_with_options();
  supportsAudioReturnChannel = self->_supportsAudioReturnChannel;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAudioReturnChannel;
}

- (void)setSupportsMultiUser:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsMultiUser = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMultiUser
{
  os_unfair_lock_lock_with_options();
  supportsMultiUser = self->_supportsMultiUser;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMultiUser;
}

- (void)setTargetControllerHardwareSupport:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_targetControllerHardwareSupport = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)targetControllerHardwareSupport
{
  os_unfair_lock_lock_with_options();
  targetControllerHardwareSupport = self->_targetControllerHardwareSupport;
  os_unfair_lock_unlock(&self->_lock);
  return targetControllerHardwareSupport;
}

- (void)setSupportsTargetController:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsTargetController = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsTargetController
{
  os_unfair_lock_lock_with_options();
  supportsTargetController = self->_supportsTargetController;
  os_unfair_lock_unlock(&self->_lock);
  return supportsTargetController;
}

- (void)setSupportsTargetControl:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsTargetControl = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsTargetControl
{
  os_unfair_lock_lock_with_options();
  supportsTargetControl = self->_supportsTargetControl;
  os_unfair_lock_unlock(&self->_lock);
  return supportsTargetControl;
}

- (HMFWiFiNetworkInfo)wifiNetworkInfo
{
  os_unfair_lock_lock_with_options();
  v3 = self->_wifiNetworkInfo;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleSupportsCleanEnergyAutomationMessage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 BOOLForKey:@"HMA.supportsCleanEnergyAutomation"];
  if (v5 != [(HMAccessory *)self supportsCleanEnergyAutomation])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)v7 supportsCleanEnergyAutomation];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating supportsCleanEnergyAutomations from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMAccessory *)v7 setSupportsCleanEnergyAutomation:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsAdaptiveTemperatureAutomationMessage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 BOOLForKey:@"HMA.supportsAdaptiveTemperatureAutomations"];
  if (v5 != [(HMAccessory *)self supportsAdaptiveTemperatureAutomations])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)v7 supportsAdaptiveTemperatureAutomations];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating supportsAdaptiveTemperatureAutomations from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMAccessory *)v7 setSupportsAdaptiveTemperatureAutomations:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSupportedLinkLayerTypes:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  supportedLinkLayerTypes = self->_supportedLinkLayerTypes;
  self->_supportedLinkLayerTypes = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)supportedLinkLayerTypes
{
  os_unfair_lock_lock_with_options();
  v3 = self->_supportedLinkLayerTypes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMatterExtendedMACAddress:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  matterExtendedMACAddress = self->_matterExtendedMACAddress;
  self->_matterExtendedMACAddress = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)matterExtendedMACAddress
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterExtendedMACAddress;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMatterWEDSupport:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  matterWEDSupport = self->_matterWEDSupport;
  self->_matterWEDSupport = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)matterWEDSupport
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterWEDSupport;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleRequiresThreadRouterUpdateMessage:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 BOOLForKey:@"HMA.requiresThreadRouterUpdate"];
  if (v5 != [(HMAccessory *)self requiresThreadRouter])
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)v7 requiresThreadRouter];
      v10 = HMFBooleanToString();
      v11 = HMFBooleanToString();
      v13 = 138543874;
      v14 = v9;
      v15 = 2112;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Updating requiresThreadRouter from %@ to %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMAccessory *)v7 setRequiresThreadRouter:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setRequiresThreadRouter:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_requiresThreadRouter = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresThreadRouter
{
  os_unfair_lock_lock_with_options();
  requiresThreadRouter = self->_requiresThreadRouter;
  os_unfair_lock_unlock(&self->_lock);
  return requiresThreadRouter;
}

- (void)setDemoAccessory:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_demoAccessory = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDemoAccessory
{
  os_unfair_lock_lock_with_options();
  demoAccessory = self->_demoAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return demoAccessory;
}

- (NSNumber)matterNodeID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterNodeID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setProductID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  productID = self->_productID;
  self->_productID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)productID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVendorID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  vendorID = self->_vendorID;
  self->_vendorID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)vendorID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_vendorID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCommissioningID:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  commissioningID = self->_commissioningID;
  self->_commissioningID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)commissioningID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_commissioningID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNodeID:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  nodeID = self->_nodeID;
  self->_nodeID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)nodeID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_nodeID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setRootPublicKey:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  rootPublicKey = self->_rootPublicKey;
  self->_rootPublicKey = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)rootPublicKey
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rootPublicKey;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setKnownToSystemCommissioner:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_knownToSystemCommissioner = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)knownToSystemCommissioner
{
  os_unfair_lock_lock_with_options();
  knownToSystemCommissioner = self->_knownToSystemCommissioner;
  os_unfair_lock_unlock(&self->_lock);
  return knownToSystemCommissioner;
}

- (void)setSupportsNativeMatter:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsNativeMatter = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsNativeMatter
{
  os_unfair_lock_lock_with_options();
  supportsNativeMatter = self->_supportsNativeMatter;
  os_unfair_lock_unlock(&self->_lock);
  return supportsNativeMatter;
}

- (void)setSupportsCHIP:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsCHIP = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCHIP
{
  os_unfair_lock_lock_with_options();
  supportsCHIP = self->_supportsCHIP;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCHIP;
}

- (void)setSupportsMediaAccessControl:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_supportsMediaAccessControl = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMediaAccessControl
{
  os_unfair_lock_lock_with_options();
  supportsMediaAccessControl = self->_supportsMediaAccessControl;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMediaAccessControl;
}

- (void)setSerialNumber:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  serialNumber = self->_serialNumber;
  self->_serialNumber = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)serialNumber
{
  os_unfair_lock_lock_with_options();
  v3 = self->_serialNumber;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setFirmwareVersion:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  firmwareVersion = self->_firmwareVersion;
  self->_firmwareVersion = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)firmwareVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_firmwareVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setManufacturer:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  manufacturer = self->_manufacturer;
  self->_manufacturer = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)manufacturer
{
  os_unfair_lock_lock_with_options();
  v3 = self->_manufacturer;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setModel:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  model = self->_model;
  self->_model = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)model
{
  os_unfair_lock_lock_with_options();
  v3 = self->_model;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setAccountIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:v6];
  accountIdentifier = self->_accountIdentifier;
  self->_accountIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)accountIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_accountIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setRoom:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_room, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMRoom)room
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_room);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setCategory:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v6];
  category = self->_category;
  self->_category = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessoryCategory)category
{
  v26 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v3 = self->_category;
  supportsTargetController = self->_supportsTargetController;
  os_unfair_lock_unlock(&self->_lock);
  v5 = [(HMAccessoryCategory *)v3 categoryType];
  v6 = [v5 isEqual:@"0FBA259B-05AC-46F2-875F-204ABB6D9FE7"];

  if (v6)
  {
    v7 = +[HMHAPMetadata getSharedInstance];
    v8 = v7;
    if (supportsTargetController)
    {
      v9 = [v7 categoryForCategoryUUIDString:@"770ADB51-8848-491A-BFA3-C34EA096CC92"];

      v3 = v9;
    }

    else
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v10 = [(HMAccessory *)self accessoryProfiles];
      v11 = [v10 array];

      v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v22;
        while (2)
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v22 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v21 + 1) + 8 * i);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();

            if ((isKindOfClass & 1) != 0 && v16)
            {
              v18 = [v8 categoryForCategoryUUIDString:@"C9EE63DB-2FF7-4514-826A-2FC2F0D4C9F0"];

              v3 = v18;
              goto LABEL_15;
            }
          }

          v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v13)
          {
            continue;
          }

          break;
        }
      }

LABEL_15:
    }
  }

  v19 = *MEMORY[0x1E69E9840];

  return v3;
}

- (NSArray)bridgedAccessories
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self home];
  v22 = [(HMAccessory *)self uniqueIdentifiersForBridgedAccessories];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v22, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = v3;
  obj = [v3 accessories];
  v5 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v21 = *v28;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v9 = v22;
        v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v24;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v24 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v23 + 1) + 8 * j);
              v15 = [v8 uniqueIdentifier];
              LODWORD(v14) = [v14 isEqual:v15];

              if (v14)
              {
                [v4 addObject:v8];
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          }

          while (v11);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v6);
  }

  v16 = [v4 copy];
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setUniqueIdentifiersForBridgedAccessories:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  uniqueIdentifiersForBridgedAccessories = self->_uniqueIdentifiersForBridgedAccessories;
  self->_uniqueIdentifiersForBridgedAccessories = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)uniqueIdentifiersForBridgedAccessories
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uniqueIdentifiersForBridgedAccessories;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setBridgedAccessory:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_bridgedAccessory = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)bridgedAccessory
{
  os_unfair_lock_lock_with_options();
  bridgedAccessory = self->_bridgedAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return bridgedAccessory;
}

- (void)setReachable:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_reachable = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setCurrentAccessory:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_currentAccessory = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isCurrentAccessory
{
  os_unfair_lock_lock_with_options();
  currentAccessory = self->_currentAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return currentAccessory;
}

- (void)setDelegate:(id)delegate
{
  v4 = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (id)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDeviceIdentifier:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:v6];
  deviceIdentifier = self->_deviceIdentifier;
  self->_deviceIdentifier = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)deviceIdentifier
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setConfiguredName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  configuredName = self->_configuredName;
  self->_configuredName = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_unconfigure
{
  v40 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (context)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v8;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring accessory", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [(HMAccessory *)v5 services];
    v10 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v33;
      do
      {
        v13 = 0;
        do
        {
          if (*v33 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v32 + 1) + 8 * v13++) _unconfigure];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    v14 = [(HMAccessory *)v5 currentServices];
    [v14 removeAllObjects];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [(HMAccessory *)v5 profiles];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        v19 = 0;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [*(*(&v28 + 1) + 8 * v19) accessoryProfile];
          [v20 _unconfigure];

          ++v19;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    v21 = [(HMAccessory *)v5 accessoryProfiles];
    [v21 removeAllObjects];

    v22 = [(HMAccessory *)v5 settingsAdapter];
    [v22 unconfigure];

    [(HMAccessory *)v5 unconfigureInfoDataProviderWithOptions:4];
    v23 = [(HMAccessory *)v5 context];
    v24 = [v23 messageDispatcher];
    [v24 deregisterReceiver:v5];

    [(HMAccessory *)v5 setContext:0];
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 removeObserver:v5];
  }

  else
  {
    if (v7)
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v39 = v26;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)unconfigureInfoDataProviderWithOptions:(unint64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [(HMAccessory *)self accessoryInfoDataProvider];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2048;
      v19 = a3;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring info data provider with options: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v10 = [(HMAccessory *)v7 accessoryInfoDataProvider];
    v11 = [(HMAccessory *)v7 home];
    v12 = [v11 uniqueIdentifier];
    v13 = [(HMAccessory *)v7 uniqueIdentifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__HMAccessory_unconfigureInfoDataProviderWithOptions___block_invoke;
    v15[3] = &unk_1E754B428;
    v15[4] = v7;
    v15[5] = a3;
    [v10 unsubscribeToAccessoryInfoWithHomeIdentifier:v12 accessoryIdentifier:v13 accessoryInfoOptions:a3 completionHandler:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __54__HMAccessory_unconfigureInfoDataProviderWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v10 = 138543874;
      v11 = v7;
      v12 = 2048;
      v13 = v8;
      v14 = 2112;
      v15 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to unsubscribe to info data provider, option: %lu error: %@", &v10, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)configureInfoDataProviderIfNeededWithOptions:(unint64_t)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = [(HMAccessory *)self home];
  v6 = [v5 homeManager];
  v7 = [(HMAccessory *)self accessoryInfoDataProvider];

  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (v7)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Asked to create info data provider again with option: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v13;
      v22 = 2048;
      v23 = a3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating info data provider with option: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [v6 createAccessoryInfoDataProvider];
    [(HMAccessory *)v9 setAccessoryInfoDataProvider:v14];
  }

  v15 = [(HMAccessory *)v9 accessoryInfoDataProvider];
  v16 = [v5 uniqueIdentifier];
  v17 = [(HMAccessory *)v9 uniqueIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__HMAccessory_configureInfoDataProviderIfNeededWithOptions___block_invoke;
  v19[3] = &unk_1E754E148;
  v19[4] = v9;
  [v15 configureWithHomeIdentifier:v16 accessoryIdentifier:v17 accessoryInfoOptions:a3 dataProviderDelegate:v9 completionHandler:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __60__HMAccessory_configureInfoDataProviderIfNeededWithOptions___block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v7;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_ERROR, "%{public}@Failed to subscribe to info data provider, error: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)configureSettingsAdapterIfNeeded
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = [(HMAccessory *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 configuration];
  v6 = [v5 options];

  if ((v6 & 0x20) != 0)
  {
    v7 = [(HMAccessory *)self settingsAdapter];

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v11;
        v12 = "%{public}@Asked to create settings adaptor again";
        v13 = v10;
        v14 = OS_LOG_TYPE_INFO;
LABEL_16:
        _os_log_impl(&dword_19BB39000, v13, v14, v12, &v36, 0xCu);

        goto LABEL_17;
      }

      goto LABEL_17;
    }

    v15 = [(HMAccessory *)self context];
    if (!v15)
    {
      goto LABEL_14;
    }

    v16 = v15;
    v17 = [(HMAccessory *)self context];
    v18 = [v17 queue];

    if (!v18)
    {
LABEL_14:
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v11;
        v12 = "%{public}@Context or context queue is nil";
        v13 = v10;
        v14 = OS_LOG_TYPE_ERROR;
        goto LABEL_16;
      }

LABEL_17:

      objc_autoreleasePoolPop(v8);
      goto LABEL_18;
    }

    v19 = [(HMAccessory *)self settings];

    if (v19)
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all existing settings on update to support HPLS", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [(HMAccessory *)v21 setSettings:0];
    }

    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating adaptor on settings support", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [(HMAccessory *)v25 home];
    v29 = [v28 homeManager];
    v30 = [v29 createAccessorySettingsDataSource];
    [(HMAccessory *)v25 setAccessorySettingsDataSource:v30];

    v31 = [v29 createAccessorySettingsController];
    [(HMAccessory *)v25 setAccessorySettingsController:v31];

    v32 = [(HMAccessory *)v25 accessorySettingsDataSource];
    v33 = [(HMAccessory *)v25 accessorySettingsController];
    v34 = [(HMAccessory *)v25 context];
    [(HMAccessory *)v25 createSettingsAdapterWithDataSource:v32 controller:v33 context:v34];

    [(HMAccessory *)v25 configureSettingsAdapterWithCompletionHandler:0];
  }

LABEL_18:
  v35 = *MEMORY[0x1E69E9840];
}

- (void)postConfigure
{
  if ([(HMAccessory *)self supportsMessagedHomePodSettings])
  {
    [(HMAccessory *)self configureSettingsAdapterIfNeeded];
  }

  else if (![(HMAccessory *)self supportsPrimaryUserInfoSubscription])
  {
    goto LABEL_5;
  }

  [(HMAccessory *)self configureInfoDataProviderIfNeededWithOptions:4];
LABEL_5:
  v3 = [(HMAccessory *)self remoteLoginHandler];
  [v3 postConfigure];
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v93 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v58 = [(HMAccessory *)self audioDestination];
  v8 = [(HMAccessory *)self deviceIRKData];
  v57 = [(HMAccessory *)self device];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (v58)
    {
      v13 = @" audioDestination: ";
    }

    else
    {
      v13 = &stru_1F0E92498;
    }

    if (v58)
    {
      v14 = v58;
    }

    else
    {
      v14 = &stru_1F0E92498;
    }

    v55 = v14;
    v15 = @" device: ";
    if (!v57)
    {
      v15 = &stru_1F0E92498;
    }

    v51 = v15;
    v52 = v13;
    if (v57)
    {
      v16 = v57;
    }

    else
    {
      v16 = &stru_1F0E92498;
    }

    v17 = @" deviceIRKData: ";
    if (!v8)
    {
      v17 = &stru_1F0E92498;
    }

    v49 = v17;
    if (v8)
    {
      v18 = v8;
    }

    else
    {
      v18 = &stru_1F0E92498;
    }

    v53 = v18;
    v54 = v16;
    v56 = [(HMAccessory *)v10 remoteLoginHandler];
    v19 = v7;
    if (v56)
    {
      v20 = @" remoteLogin";
    }

    else
    {
      v20 = &stru_1F0E92498;
    }

    v21 = [(HMAccessory *)v10 remoteLoginHandler];
    v22 = v21;
    *buf = 138546434;
    if (v21)
    {
      v23 = v21;
    }

    else
    {
      v23 = &stru_1F0E92498;
    }

    v68 = v12;
    v69 = 2112;
    v70 = v10;
    v71 = 2112;
    v72 = v6;
    v73 = 2112;
    v74 = v52;
    v75 = 2112;
    v76 = v55;
    v77 = 2112;
    v78 = v51;
    v79 = 2112;
    v80 = v54;
    v81 = 2112;
    v82 = v50;
    v83 = 2112;
    v84 = v53;
    v85 = 2112;
    v86 = v20;
    v7 = v19;
    v87 = 2112;
    v88 = v23;
    v89 = 2112;
    v90 = v19;
    v91 = 2048;
    v92 = v19;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring accessory: %@ context: %@%@%@%@%@%@%@%@%@ home: %@, %p", buf, 0x84u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMAccessory *)v10 setContext:v6];
  [(HMAccessory *)v10 setHome:v7];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v24 = [(HMAccessory *)v10 services];
  v25 = [v24 countByEnumeratingWithState:&v62 objects:v66 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v63;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v63 != v27)
        {
          objc_enumerationMutation(v24);
        }

        [*(*(&v62 + 1) + 8 * i) __configureWithContext:v6 accessory:v10];
      }

      v26 = [v24 countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v26);
  }

  [(HMAccessory *)v10 _configureProfilesWithContext:v6];
  v29 = [(HMAccessory *)v10 settings];
  [v29 _configureWithContext:v6];

  v30 = [(HMAccessory *)v10 softwareUpdateController];
  [v30 configureWithContext:v6 accessory:v10];

  v31 = [(HMAccessory *)v10 remoteLoginHandler];
  [v31 _configureWithContext:v6 accessory:v10];

  if ([(HMAccessory *)v10 hasSymptomsHandler])
  {
    [(HMAccessory *)v10 _createSymptomsHandler];
  }

  v32 = [(HMAccessory *)v10 audioDestinationController];
  [v32 configureWithContext:v6 dataSource:v10];

  v33 = v10;
  v34 = [(HMAccessory *)v33 context];
  v35 = [v34 messageDispatcher];

  if (v7)
  {
    if (v35)
    {
      [v35 registerForMessage:@"kAccessoryNameChangedNotificationKey" receiver:v33 selector:sel__handleRenamed_];
      [v35 registerForMessage:@"HMA.pairingStateChanged" receiver:v33 selector:sel__handlePairingStateChanged_];
      [v35 registerForMessage:@"kCharacteristicValueUpdatedNotificationKey" receiver:v33 selector:sel__handleCharacteristicValueUpdated_];
      [v35 registerForMessage:@"kAccessoryNotificationsUpdatedNotificationKey" receiver:v33 selector:sel__handleAccessoryNotificationsUpdated_];
      [v35 registerForMessage:@"kAccessoryFlagsChangedNotificationKey" receiver:v33 selector:sel__handleAccessoryFlagsChanged_];
      [v35 registerForMessage:@"kServiceRenamedNotificationKey" receiver:v33 selector:sel__handleServiceRenamed_];
      [v35 registerForMessage:@"kServiceDefaultNameUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceDefaultNameUpdate_];
      [v35 registerForMessage:@"kServiceSubtypeUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceSubtype_];
      [v35 registerForMessage:@"kServiceConfigurationStateUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceConfigurationState_];
      [v35 registerForMessage:@"HM.acu" receiver:v33 selector:sel__handleAccessoryControllableChanged_];
      [v35 registerForMessage:@"HM.us" receiver:v33 selector:sel__handleRootSettingsUpdated_];
      v36 = [(HMAccessory *)v33 remoteLoginHandler];
      [v36 registerForMessages];

      [v35 registerForMessage:@"HMCT.capabilities" receiver:v33 selector:sel__handleTargetControlSupportUpdatedMessage_];
      [v35 registerForMessage:@"supportsMultiUser" receiver:v33 selector:sel__handleMultiUserSupportUpdatedMessage_];
      [v35 registerForMessage:@"HMAccessorySupportsCompanionInitiatedRestartMessageKey" receiver:v33 selector:sel__handleSupportsCompanionInitiatedRestartUpdatedMessage_];
      [v35 registerForMessage:@"HMAccessorySupportsCompanionInitiatedObliterateMessageKey" receiver:v33 selector:sel__handleSupportsCompanionInitiatedObliterateUpdatedMessage_];
      [v35 registerForMessage:@"HMServiceMediaSourceIdentifierUpdatedNotification" receiver:v33 selector:sel__handleServiceMediaSourceIdentifierUpdated_];
      [v35 registerForMessage:@"HMAccessoryPairingIdentityUpdatedNotification" receiver:v33 selector:sel__handlePairingIdentityUpdate_];
      [v35 registerForMessage:@"HMA.supportedDiagnosticsUpdated" receiver:v33 selector:sel__handleSupportedDiagnosticsUpdatedMessage_];
      v37 = @"HMAccessorySupportsCleanEnergyAutomationsMessage";
      v38 = &selRef__handleSupportsCleanEnergyAutomationMessage_;
      v39 = @"HMAccessorySupportsAdaptiveTemperatureAutomationsMessage";
      v40 = &selRef__handleSupportsAdaptiveTemperatureAutomationMessage_;
      v41 = @"HMA.requiresThreadRouterUpdateMessage";
      v42 = &selRef__handleRequiresThreadRouterUpdateMessage_;
LABEL_39:
      [v35 registerForMessage:v41 receiver:v33 selector:*v42];
      [v35 registerForMessage:v39 receiver:v33 selector:*v40];
      [v35 registerForMessage:v37 receiver:v33 selector:*v38];
    }
  }

  else if (v35)
  {
    v37 = @"HMA.MatterDeviceTypeIDUpdateMessage";
    v38 = &selRef__handleMatterDeviceTypeIDChanged_;
    v39 = @"kAccessoryNameChangedNotificationKey";
    v40 = &selRef__handleRenamed_;
    v41 = @"kAccessoryCategoryChangedNotificationKey";
    v42 = &selRef__handleAccessoryCategoryChanged_;
    goto LABEL_39;
  }

  v43 = [(HMAccessory *)v33 audioAnalysisEventBulletinBoardNotification];
  [v43 __configureWithContext:v6];

  v44 = [(HMAccessory *)v33 bulletinBoardNotificationByEndpoint];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __43__HMAccessory___configureWithContext_home___block_invoke;
  v59[3] = &unk_1E754B400;
  v60 = v6;
  v61 = v33;
  v45 = v6;
  [v44 na_each:v59];

  v46 = [[HMAccessoryWiFiController alloc] initWithAccessory:v33];
  accessoryWiFiController = v33->_accessoryWiFiController;
  v33->_accessoryWiFiController = v46;

  v48 = *MEMORY[0x1E69E9840];
}

- (HMAccessory)initWithUUID:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = HMAccessory;
  v6 = [(HMAccessory *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, a3);
    v8 = +[HMMutableArray array];
    currentServices = v7->_currentServices;
    v7->_currentServices = v8;

    v10 = +[HMMutableArray array];
    accessoryProfiles = v7->_accessoryProfiles;
    v7->_accessoryProfiles = v10;

    controlTargetUUIDs = v7->_controlTargetUUIDs;
    v7->_controlTargetUUIDs = MEMORY[0x1E695E0F0];

    v13 = objc_alloc_init(HMApplicationData);
    applicationData = v7->_applicationData;
    v7->_applicationData = v13;

    v7->_additionalSetupStatus = 0;
    v7->_calibrationStatus = 0;
  }

  return v7;
}

- (HMAccessory)init
{
  v3 = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HMAccessory *)self initWithUUID:v3];

  return v4;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t383 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t383, &__block_literal_global_1350);
  }

  v3 = logCategory__hmf_once_v384;

  return v3;
}

uint64_t __26__HMAccessory_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v384;
  logCategory__hmf_once_v384 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

- (void)updatePendingConfigurationIdentifier:(id)a3 completionHandler:(id)a4
{
  v44 = *MEMORY[0x1E69E9840];
  v33 = a3;
  v6 = a4;
  v7 = [(HMAccessory *)self context];
  if (!v6)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(PendingConfiguration) updatePendingConfigurationIdentifier:completionHandler:]", @"completionHandler"];
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v30;
      v42 = 2112;
      v43 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [v9 setObject:v33 forKeyedSubscript:@"HMA.pendingConfigurationIdentifier"];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMAccessory *)self messageTargetUUID];
    v12 = [v10 initWithTarget:v11];

    v32 = v12;
    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryUpdatePendingConfigurationIdentifierMessage" destination:v12 payload:v9];
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __92__HMAccessory_PendingConfiguration__updatePendingConfigurationIdentifier_completionHandler___block_invoke;
    v34[3] = &unk_1E754D820;
    objc_copyWeak(&v38, &location);
    v14 = v33;
    v35 = v14;
    v15 = v8;
    v36 = v15;
    v37 = v6;
    [v13 setResponseHandler:v34];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v19;
      v42 = 2112;
      v43 = v14;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Updating pending configuration identifier to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v20 = [v15 messageDispatcher];
    [v20 sendMessage:v13];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v41 = v24;
      v42 = 2080;
      v43 = "[HMAccessory(PendingConfiguration) updatePendingConfigurationIdentifier:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v9);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __92__HMAccessory_PendingConfiguration__updatePendingConfigurationIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v5)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      v13 = *(a1 + 32);
      v18 = 138543874;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to update pending configuration identifier to %@: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = *(a1 + 32);
      v18 = 138543618;
      v19 = v14;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Updated pending configuration identifier to %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    [v9 setPendingConfigurationIdentifier:*(a1 + 32)];
  }

  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)initiateDiagnosticsTransferWithOptions:(id)a3 completionHandler:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Diagnostics) initiateDiagnosticsTransferWithOptions:completionHandler:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    v32 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v34;
      v41 = 2112;
      v42 = v30;
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v30 userInfo:0];
    objc_exception_throw(v35);
  }

  v8 = v7;
  v9 = [(HMAccessory *)self context];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMAccessory *)v11 uuid];
      *buf = 138543618;
      v40 = v14;
      v41 = 2112;
      v42 = v15;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Dispatching a message to request diagnostics transfer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x1E695DF90] dictionary];
    v17 = [(HMAccessory *)v11 uuid];
    v18 = [v17 UUIDString];
    [v16 setObject:v18 forKeyedSubscript:@"kAccessoryUUID"];

    if (v6)
    {
      v19 = encodeRootObject(v6);
      [v16 setObject:v19 forKeyedSubscript:@"kAccessoryDiagnosticsOptions"];
    }

    else
    {
      [v16 setObject:0 forKeyedSubscript:@"kAccessoryDiagnosticsOptions"];
    }

    v21 = objc_alloc(MEMORY[0x1E69A2A10]);
    v22 = objc_alloc(MEMORY[0x1E69A2A00]);
    v23 = [(HMAccessory *)v11 uuid];
    v24 = [v22 initWithTarget:v23];
    v25 = [v21 initWithName:@"HMA.diagnosticsTransferRequest" destination:v24 payload:v16];

    v26 = [v25 identifier];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __85__HMAccessory_Diagnostics__initiateDiagnosticsTransferWithOptions_completionHandler___block_invoke;
    v36[3] = &unk_1E754E480;
    v36[4] = v11;
    v37 = v26;
    v38 = v8;
    v27 = v26;
    [v25 setResponseHandler:v36];
    v28 = [v9 messageDispatcher];
    [v28 sendMessage:v25];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v20;
      v41 = 2080;
      v42 = "[HMAccessory(Diagnostics) initiateDiagnosticsTransferWithOptions:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v8)[2](v8, v16, 0);
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __85__HMAccessory_Diagnostics__initiateDiagnosticsTransferWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = *(a1 + 40);
    *buf = 138543618;
    v38 = v10;
    v39 = 2112;
    v40 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Message response received for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  if (v5)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v38 = v15;
      v39 = 2112;
      v40 = v5;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@diagnostics transfer request failed with error %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [*(a1 + 32) context];
    v17 = [v16 delegateCaller];
    [v17 callCompletion:*(a1 + 48) error:v5 obj:0];
  }

  else
  {
    v16 = [v6 hmf_dataForKey:@"HMA.diagnosticsMetaDataCodingKey"];
    if (v16)
    {
      v36 = 0;
      v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v16 error:&v36];
      v17 = v36;
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 32);
      v21 = HMFGetOSLogHandle();
      v22 = v21;
      if (v18)
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v23;
          v39 = 2112;
          v40 = v18;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@diagnostics transfer completed successfully with metadata: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v24 = [*(a1 + 32) context];
        v25 = [v24 delegateCaller];
        v26 = v25;
        v27 = *(a1 + 48);
        v28 = 0;
        v29 = v18;
      }

      else
      {
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v34 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v34;
          v39 = 2112;
          v40 = 0;
          _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive diagnostics metadata from encoded metadata: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v19);
        v24 = [*(a1 + 32) context];
        v25 = [v24 delegateCaller];
        v26 = v25;
        v27 = *(a1 + 48);
        v28 = v17;
        v29 = 0;
      }

      [v25 callCompletion:v27 error:v28 obj:v29];
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = *(a1 + 32);
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543362;
        v38 = v33;
        _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@nil encodedMetadata", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v30);
      v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:-1];
      v18 = [*(a1 + 32) context];
      v24 = [v18 delegateCaller];
      [v24 callCompletion:*(a1 + 48) error:v17 obj:0];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (NSDictionary)serializedDictionaryRepresentation
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = [HMPBAccessoryReference accessoryReferenceWithAccessory:self];
  v7[0] = @"HMShortcutsSerializedDictionaryVersion";
  v7[1] = @"HMShortcutsSerializedDictionaryProtocol";
  v8[0] = @"1.0";
  v8[1] = @"ProtoBuf";
  v7[2] = @"HMAccessorySerializedDataKey";
  v3 = [v2 data];
  v8[2] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMAccessory)accessoryWithAccessoryReference:(id)a3 home:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (([v6 hasUniqueIdentifier] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v24;
      v25 = "%{public}@AccessoryReference uniqueIdentifier not set";
LABEL_13:
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, v25, &v45, 0xCu);
    }

LABEL_14:

    objc_autoreleasePoolPop(v21);
    v19 = 0;
    goto LABEL_34;
  }

  if (([v6 hasHomeReference] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    v22 = a1;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v24;
      v25 = "%{public}@HomeReference not set in accessoryReference";
      goto LABEL_13;
    }

    goto LABEL_14;
  }

  v8 = MEMORY[0x1E696AFB0];
  v9 = [v6 uniqueIdentifier];
  v10 = [v8 hmf_UUIDWithBytesAsData:v9];

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = a1;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v29;
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Accessory UniqueIdentifier", &v45, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    v19 = 0;
    goto LABEL_33;
  }

  v11 = [v6 homeReference];
  if (([v11 hasUniqueIdentifier] & 1) == 0)
  {
    v30 = objc_autoreleasePoolPush();
    v31 = a1;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v33;
      _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@HomeReference uniqueIdentifier not set", &v45, 0xCu);
    }

    objc_autoreleasePoolPop(v30);
    v19 = 0;
    goto LABEL_32;
  }

  v12 = MEMORY[0x1E696AFB0];
  v13 = [v11 uniqueIdentifier];
  v14 = [v12 hmf_UUIDWithBytesAsData:v13];

  v15 = [v11 uniqueIdentifier];

  if (v15)
  {
    v16 = [v7 uniqueIdentifier];
    v17 = [v14 isEqual:v16];

    if (v17)
    {
      v18 = [v7 accessoryWithUniqueIdentifier:v10];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        v40 = a1;
        v41 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
        {
          v42 = HMFGetLogIdentifier();
          v45 = 138543618;
          v46 = v42;
          v47 = 2112;
          v48 = v10;
          _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@Can't find accessory %@", &v45, 0x16u);
        }

        objc_autoreleasePoolPop(v39);
      }

      goto LABEL_31;
    }

    v34 = objc_autoreleasePoolPush();
    v35 = a1;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [v7 uniqueIdentifier];
      v45 = 138543874;
      v46 = v37;
      v47 = 2112;
      v48 = v14;
      v49 = 2112;
      v50 = v38;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Trying to dereference Characteristic Reference from different home %@ %@", &v45, 0x20u);

      goto LABEL_25;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v45 = 138543362;
      v46 = v37;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Couldn't decode Home UniqueIdentifier", &v45, 0xCu);
LABEL_25:
    }
  }

  objc_autoreleasePoolPop(v34);
  v19 = 0;
LABEL_31:

LABEL_32:
LABEL_33:

LABEL_34:
  v43 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (HMAccessory)accessoryWithSerializedDictionaryRepresentation:(id)a3 home:(id)a4
{
  v6 = a4;
  v7 = [a3 hmf_dataForKey:@"HMAccessorySerializedDataKey"];
  v8 = [HMPBAccessoryReference accessoryReferenceWithData:v7];
  v9 = [a1 accessoryWithAccessoryReference:v8 home:v6];

  return v9;
}

- (NSArray)cameraProfiles
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self profiles];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          [v3 addObject:{v11, v15}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

+ (id)_cameraProfilesForAccessoryProfiles:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v3, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v11 = v10;
        }

        else
        {
          v11 = 0;
        }

        v12 = v11;

        if (v12)
        {
          v13 = [HMCameraProfile alloc];
          v14 = [(HMCameraProfile *)v13 initWithCameraProfile:v12, v18];
          [v4 addObject:v14];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v15 = [v4 copy];
  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

- (void)removeCorrespondingSystemCommissionerPairingWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Removing corresponding system commissioner pairing", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    v12 = [(HMAccessory *)v7 uuid];
    v13 = [v11 initWithTarget:v12];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveCorrespondingSystemCommissionerPairingMessage" destination:v13 payload:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__HMAccessory_CHIP__removeCorrespondingSystemCommissionerPairingWithCompletion___block_invoke;
    v19[3] = &unk_1E754E480;
    v19[4] = v7;
    v15 = v5;
    v20 = v15;
    v21 = v4;
    [v14 setResponseHandler:v19];
    v16 = [v15 messageDispatcher];
    [v16 sendMessage:v14];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v17;
    v24 = 2080;
    v25 = "[HMAccessory(CHIP) removeCorrespondingSystemCommissionerPairingWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v13);
LABEL_9:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __80__HMAccessory_CHIP__removeCorrespondingSystemCommissionerPairingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to remove corresponding system commissioner pairing: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully removed corresponding system commissioner pairing";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(CHIP) activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Activating CHIP pairing mode and creating setup payload string", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = objc_alloc(MEMORY[0x1E69A2A00]);
    v13 = [(HMAccessory *)v8 uuid];
    v14 = [v12 initWithTarget:v13];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryActivateCHIPPairingModeAndCreateSetupPayloadStringMessage" destination:v14 payload:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__HMAccessory_CHIP__activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion___block_invoke;
    v26[3] = &unk_1E754E480;
    v26[4] = v8;
    v16 = v6;
    v27 = v16;
    v28 = v4;
    [v15 setResponseHandler:v26];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v15];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v18;
      v31 = 2080;
      v32 = "[HMAccessory(CHIP) activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __86__HMAccessory_CHIP__activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_stringForKey:@"HMA.chipSetupPayloadString"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v12;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Successfully activated CHIP pairing mode and created setup payload string: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 40) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 48);
    v16 = v7;
    v17 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Failed to activate CHIP pairing mode and create setup payload string: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [*(a1 + 40) delegateCaller];
    v14 = v13;
    v15 = *(a1 + 48);
    v16 = 0;
    v17 = v5;
  }

  [v13 callCompletion:v15 obj:v16 error:v17];

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setCHIPPairingModeActive:(BOOL)a3 withCompletion:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (a3)
  {
    [(HMAccessory *)self activateCHIPPairingModeWithCompletion:v6];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Setting CHIP pairing mode inactive is not supported", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [(HMAccessory *)v8 context];
    v12 = [v11 delegateCaller];
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [v12 callCompletion:v6 error:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)activateCHIPPairingModeWithCompletion:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Activating CHIP pairing mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_alloc(MEMORY[0x1E69A2A00]);
    v12 = [(HMAccessory *)v7 uuid];
    v13 = [v11 initWithTarget:v12];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryActivateCHIPPairingModeMessage" destination:v13 payload:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__HMAccessory_CHIP__activateCHIPPairingModeWithCompletion___block_invoke;
    v19[3] = &unk_1E754E480;
    v19[4] = v7;
    v15 = v5;
    v20 = v15;
    v21 = v4;
    [v14 setResponseHandler:v19];
    v16 = [v15 messageDispatcher];
    [v16 sendMessage:v14];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v17;
    v24 = 2080;
    v25 = "[HMAccessory(CHIP) activateCHIPPairingModeWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  if (v4)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v13);
LABEL_9:
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __59__HMAccessory_CHIP__activateCHIPPairingModeWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to activate CHIP pairing mode: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully activated CHIP pairing mode";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)removeCHIPPairings:(id)a3 completion:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMAccessory *)self context];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing CHIP pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    v15 = [(HMAccessory *)v10 uuid];
    v16 = [v14 initWithTarget:v15];

    v27 = @"HMA.chipPairings";
    v17 = encodeRootObject(v6);
    v28 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveCHIPPairingsMessage" destination:v16 payload:v18];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__HMAccessory_CHIP__removeCHIPPairings_completion___block_invoke;
    v24[3] = &unk_1E754E480;
    v24[4] = v10;
    v20 = v8;
    v25 = v20;
    v26 = v7;
    [v19 setResponseHandler:v24];
    v21 = [v20 messageDispatcher];
    [v21 sendMessage:v19];

    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v30 = v22;
    v31 = 2080;
    v32 = "[HMAccessory(CHIP) removeCHIPPairings:completion:]";
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (v7)
  {
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v16);
LABEL_9:
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __51__HMAccessory_CHIP__removeCHIPPairings_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = v5;
      v12 = "%{public}@Failed to remove CHIP pairings: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, &v18, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v11;
    v12 = "%{public}@Successfully removed CHIP pairings";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 40) delegateCaller];
  [v16 callCompletion:*(a1 + 48) error:v5];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchCHIPPairingsWithCompletion:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (!v4)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(CHIP) fetchCHIPPairingsWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v24;
      v31 = 2112;
      v32 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v6 = v5;
  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v6)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Fetching CHIP pairings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    v12 = objc_alloc(MEMORY[0x1E69A2A00]);
    v13 = [(HMAccessory *)v8 uuid];
    v14 = [v12 initWithTarget:v13];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryFetchCHIPPairingsMessage" destination:v14 payload:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__HMAccessory_CHIP__fetchCHIPPairingsWithCompletion___block_invoke;
    v26[3] = &unk_1E754E480;
    v26[4] = v8;
    v16 = v6;
    v27 = v16;
    v28 = v4;
    [v15 setResponseHandler:v26];
    v17 = [v16 messageDispatcher];
    [v17 sendMessage:v15];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v18;
      v31 = 2080;
      v32 = "[HMAccessory(CHIP) fetchCHIPPairingsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v14);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __53__HMAccessory_CHIP__fetchCHIPPairingsWithCompletion___block_invoke(id *a1, void *a2, void *a3)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMA.chipPairings"];
  v8 = v7;
  if (v5)
  {
    goto LABEL_7;
  }

  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = MEMORY[0x1E695DFD8];
  v37[0] = objc_opt_class();
  v37[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v37 count:2];
  v11 = [v9 setWithArray:v10];

  v32 = 0;
  v12 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClasses:v11 fromData:v8 error:&v32];
  v5 = v32;

  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v16;
      v35 = 2112;
      v36 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Fetched CHIP pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [a1[5] delegateCaller];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__HMAccessory_CHIP__fetchCHIPPairingsWithCompletion___block_invoke_14;
    v26[3] = &unk_1E754E458;
    v18 = a1[6];
    v27 = v12;
    v28 = v18;
    v19 = v12;
    [v17 invokeBlock:v26];
  }

  else
  {
LABEL_7:
    v20 = objc_autoreleasePoolPush();
    v21 = a1[4];
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v23;
      v35 = 2112;
      v36 = v5;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch CHIP pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = [a1[5] delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __53__HMAccessory_CHIP__fetchCHIPPairingsWithCompletion___block_invoke_12;
    v29[3] = &unk_1E754E458;
    v31 = a1[6];
    v5 = v5;
    v30 = v5;
    [v24 invokeBlock:v29];

    v19 = v31;
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (HMNetworkConfigurationProfile)networkConfigurationProfile
{
  v17 = *MEMORY[0x1E69E9840];
  [(HMAccessory *)self profiles];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = v15 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v13 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v12 + 1) + 8 * v6);
      objc_opt_class();
      v8 = (objc_opt_isKindOfClass() & 1) != 0 ? v7 : 0;
      v9 = v8;

      if (v9)
      {
        break;
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_networkConfigurationProfilesForCoder:(id)a3 accessoryIdentifier:(id)a4
{
  v23[2] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if (![v5 decodeBoolForKey:@"HMA.supportsNetworkProtection"])
  {
    goto LABEL_4;
  }

  v7 = [v5 decodeIntegerForKey:@"HMA.targetNetworkProtectionMode"];
  v8 = [v5 decodeIntegerForKey:@"HMA.currentNetworkProtectionMode"];
  v9 = [v5 decodeBoolForKey:@"HMA.networkRestricted"];
  v10 = [v5 decodeBoolForKey:@"HMA.supportsWiFiReconfiguration"];
  v11 = [v5 decodeIntegerForKey:@"HMA.wifiCredentialType"];
  v12 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v14 = [v12 setWithArray:v13];
  v15 = [v5 decodeObjectOfClasses:v14 forKey:@"HMA.allowedHosts"];

  v16 = [v5 decodeObjectOfClass:objc_opt_class() forKey:@"HMA.networkAccessViolation"];
  LOBYTE(v21) = v10;
  v17 = [[HMNetworkConfigurationProfile alloc] initWithAccessoryIdentifier:v6 targetProtection:v7 currentProtection:v8 networkAccessRestricted:v9 allowedHosts:v15 accessViolation:v16 supportsWiFiReconfiguration:v21 credentialType:v11];

  if (v17)
  {
    v22 = v17;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  }

  else
  {
LABEL_4:
    v18 = MEMORY[0x1E695E0F0];
  }

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

- (void)setHasOnboardedForNaturalLightingWithCompletion:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessory *)self context];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [(HMAccessory *)self uuid];
    v8 = [v6 initWithTarget:v7];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = [v9 initWithName:HMAccessorySetHasOnboardedForNaturalLightingMessage destination:v8 payload:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke;
    aBlock[3] = &unk_1E754DE00;
    aBlock[4] = self;
    v30 = v4;
    v11 = _Block_copy(aBlock);
    v12 = [v10 identifier];
    v13 = [v5 pendingRequests];
    v14 = _Block_copy(v11);
    [v13 addCompletionBlock:v14 forIdentifier:v12];

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke_5;
    v26 = &unk_1E754E570;
    v27 = v13;
    v28 = v12;
    v15 = v12;
    v16 = v13;
    [v10 setResponseHandler:&v23];
    v17 = [v5 messageDispatcher];
    [v17 sendMessage:v10];

LABEL_7:
    goto LABEL_8;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = self;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v32 = v21;
    v33 = 2080;
    v34 = "[HMAccessory(Light) setHasOnboardedForNaturalLightingWithCompletion:]";
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  if (v4)
  {
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v8);
    goto LABEL_7;
  }

LABEL_8:

  v22 = *MEMORY[0x1E69E9840];
}

void __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = *(a1 + 32);
      v23 = 138543874;
      v24 = v10;
      v25 = 2112;
      v26 = v11;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to onboard accessory for natural lighting %@:%@", &v23, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = v5;
  }

  else
  {
    [*(a1 + 32) setHasOnboardedForNaturalLighting:1];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 32);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = *(a1 + 32);
      v23 = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v21;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully onboarded accessory for natural lighting: %@", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v12 = [*(a1 + 32) context];
    v13 = [v12 delegateCaller];
    v14 = v13;
    v15 = *(a1 + 40);
    v16 = 0;
  }

  [v13 callCompletion:v15 error:v16];

  v22 = *MEMORY[0x1E69E9840];
}

void __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke_5(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v8, v5);
  }
}

- (id)lightProfiles
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DFA8]);
  v4 = [(HMAccessory *)self profiles];
  v5 = [v3 initWithCapacity:{objc_msgSend(v4, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(HMAccessory *)self profiles];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = v12;

        if (v13)
        {
          [v5 addObject:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = *MEMORY[0x1E69E9840];

  return v14;
}

- (id)mediaProfile
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [(HMAccessory *)self accessoryProfiles];
  v3 = [v2 array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v15 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v14 + 1) + 8 * v8);
      objc_opt_class();
      v10 = (objc_opt_isKindOfClass() & 1) != 0 ? v9 : 0;
      v11 = v10;

      if (v11)
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    v9 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)_mediaProfilesForAccessoryProfiles:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    v7 = MEMORY[0x1E695E0F0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
        }

        else
        {
          v10 = 0;
        }

        v11 = v10;

        if (v11)
        {
          v12 = [HMMediaProfile alloc];
          v13 = [(HMMediaProfile *)v12 initWithMediaProfile:v11, v16];
          v20 = v13;
          v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v20 count:1];

          goto LABEL_15;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v16 objects:v21 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

LABEL_15:

  v14 = *MEMORY[0x1E69E9840];

  return v7;
}

@end