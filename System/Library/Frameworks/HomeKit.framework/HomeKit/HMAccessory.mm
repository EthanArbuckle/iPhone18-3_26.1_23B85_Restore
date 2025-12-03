@interface HMAccessory
+ (HMAccessory)accessoryWithAccessoryReference:(id)reference home:(id)home;
+ (HMAccessory)accessoryWithSerializedDictionaryRepresentation:(id)representation home:(id)home;
+ (id)_cameraProfilesForAccessoryProfiles:(id)profiles;
+ (id)_doorbellProfilesForAccessoryProfiles:(id)profiles;
+ (id)_lightProfilesForAccessoryProfiles:(id)profiles;
+ (id)_mediaProfilesForAccessoryProfiles:(id)profiles;
+ (id)_networkConfigurationProfilesForCoder:(id)coder accessoryIdentifier:(id)identifier;
+ (id)_siriEndpointProfilesForAccessoryProfiles:(id)profiles;
+ (id)logCategory;
+ (id)shortDescription;
+ (id)televisionProfilesForAccessoryServices:(id)services isSPIEntitled:(BOOL)entitled;
+ (unint64_t)networkRouterStatusFromRouterStatus:(int64_t)status wanStatusListData:(id)data;
+ (unint64_t)networkRouterStatusFromWiFiSatelliteStatus:(int64_t)status;
- (BOOL)_mergeBulletinBoardNotificationByEndpoint:(id)endpoint;
- (BOOL)_mergeControlTargetUUIDs:(id)ds;
- (BOOL)_mergeRemoteLoginHandler:(id)handler;
- (BOOL)_mergeServices:(id)services;
- (BOOL)_updateFromAccessory:(id)accessory;
- (BOOL)_updateHasSymptomsHandler:(BOOL)handler;
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
- (BOOL)mergeFromNewObject:(id)object;
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
- (HMAccessory)initWithCoder:(id)coder;
- (HMAccessory)initWithUUID:(id)d;
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
- (id)_findCharacteristic:(id)characteristic forService:(id)service;
- (id)_findService:(id)service;
- (id)_findServiceWithUniqueIdentifier:(id)identifier;
- (id)_handleMultipleCharacteristicsUpdated:(id)updated message:(id)message informDelegate:(BOOL)delegate;
- (id)_privateDelegate;
- (id)_valueForCharacteristic:(id)characteristic ofService:(id)service;
- (id)assistantIdentifier;
- (id)bulletinBoardNotificationForEndpoint:(id)endpoint;
- (id)controlTargets;
- (id)delegate;
- (id)lightProfiles;
- (id)logIdentifier;
- (id)mediaDestinationController:(id)controller destinationWithIdentifier:(id)identifier;
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
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_auditPairingsWithCompletionHandler:(id)handler;
- (void)_configureProfilesWithContext:(id)context;
- (void)_createSymptomsHandler;
- (void)_deleteSiriHistoryWithCompletion:(id)completion;
- (void)_handleAccessoryCategoryChanged:(id)changed;
- (void)_handleAccessoryControllableChanged:(id)changed;
- (void)_handleAccessoryFlagsChanged:(id)changed;
- (void)_handleAccessoryNotificationsUpdated:(id)updated;
- (void)_handleCharacteristicValueUpdated:(id)updated;
- (void)_handleConnectivityChanged:(id)changed;
- (void)_handleMatterDeviceTypeIDChanged:(id)changed;
- (void)_handleMultiUserSupportUpdatedMessage:(id)message;
- (void)_handlePairingIdentityUpdate:(id)update;
- (void)_handlePairingStateChanged:(id)changed;
- (void)_handleRenamed:(id)renamed;
- (void)_handleRequiresThreadRouterUpdateMessage:(id)message;
- (void)_handleRootSettingsUpdated:(id)updated;
- (void)_handleServiceConfigurationState:(id)state;
- (void)_handleServiceDefaultNameUpdate:(id)update;
- (void)_handleServiceMediaSourceIdentifierUpdated:(id)updated;
- (void)_handleServiceRenamed:(id)renamed;
- (void)_handleServiceSubtype:(id)subtype;
- (void)_handleSupportedDiagnosticsUpdatedMessage:(id)message;
- (void)_handleSupportsAdaptiveTemperatureAutomationMessage:(id)message;
- (void)_handleSupportsCleanEnergyAutomationMessage:(id)message;
- (void)_handleSupportsCompanionInitiatedObliterateUpdatedMessage:(id)message;
- (void)_handleSupportsCompanionInitiatedRestartUpdatedMessage:(id)message;
- (void)_handleTargetControlSupportUpdatedMessage:(id)message;
- (void)_identifyWithCompletionHandler:(id)handler;
- (void)_invokeDidUpdateSupportsUWBUnlockDelegate:(BOOL)delegate;
- (void)_invokeDidUpdateSupportsWalletKeyDelegate:(BOOL)delegate;
- (void)_listPairingsWithCompletionHandler:(id)handler;
- (void)_mergeProfiles:(id)profiles;
- (void)_notifyClientsOfDiagnosticsTransferSupportUpdate;
- (void)_notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate;
- (void)_notifyClientsOfMultiUserSupportUpdate;
- (void)_notifyClientsOfSupportsCompanionInitiatedObliterateUpdate;
- (void)_notifyClientsOfSupportsCompanionInitiatedRestartUpdate;
- (void)_notifyClientsOfSupportsMusicAlarmUpdate;
- (void)_notifyClientsOfTargetControlSupportUpdate;
- (void)_notifyDelegateOfAddedControlTarget:(id)target;
- (void)_notifyDelegateOfRemovedControlTarget:(id)target;
- (void)_notifyDelegateOfUpdatedSettings:(id)settings;
- (void)_notifyDelegatesOfAdditionalSetupRequiredChange;
- (void)_notifyDelegatesOfUpdatedCalibrationStatus;
- (void)_notifyDelegatesOfUpdatedControllable;
- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler;
- (void)_unconfigure;
- (void)_updateApplicationData:(id)data forService:(id)service completionHandler:(id)handler;
- (void)_updateAssociatedServiceType:(id)type forService:(id)service completionHandler:(id)handler;
- (void)_updateAuthorizationData:(id)data forService:(id)service characteristic:(id)characteristic completionHandler:(id)handler;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)_updateName:(id)name forService:(id)service completionHandler:(id)handler;
- (void)_updateRoom:(id)room completionHandler:(id)handler;
- (void)_writeValue:(id)value forCharacteristic:(id)characteristic service:(id)service completionHandler:(id)handler;
- (void)accessoryInfoDataProvider:(id)provider didReceiveUpdatesForAccessoryWithIdentifier:(id)identifier primaryUserInfo:(id)info;
- (void)activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:(id)completion;
- (void)activateCHIPPairingModeWithCompletion:(id)completion;
- (void)adapter:(id)adapter didUpdateSettingKeyPaths:(id)paths;
- (void)adapter:(id)adapter didUpdateSettings:(id)settings;
- (void)addControlTarget:(id)target completionHandler:(id)handler;
- (void)callCompletionHandler:(id)handler error:(id)error;
- (void)clearMatterCredentialWithType:(int64_t)type index:(int64_t)index completion:(id)completion;
- (void)clearMatterUserWithIndex:(int64_t)index completion:(id)completion;
- (void)configureInfoDataProviderIfNeededWithOptions:(unint64_t)options;
- (void)configureSettingsAdapterIfNeeded;
- (void)configureSettingsAdapterWithCompletionHandler:(id)handler;
- (void)createSettingsAdapterWithDataSource:(id)source controller:(id)controller context:(id)context;
- (void)deleteSiriHistoryWithCompletion:(id)completion;
- (void)dumpMatterUsersWithCompletion:(id)completion;
- (void)fetchAdaptiveTemperatureSettingsWithCompletion:(id)completion;
- (void)fetchCHIPPairingsWithCompletion:(id)completion;
- (void)fetchManagedConfigurationProfilesWithCompletionHandler:(id)handler;
- (void)fetchThermostatSleepScheduleWithCompletion:(id)completion;
- (void)getAccessoryDiagnosticCountersWithCompletion:(id)completion;
- (void)getAccessoryDiagnosticEventsWithCompletion:(id)completion;
- (void)handleRuntimeStateUpdate:(id)update;
- (void)identifyWithCompletionHandler:(void *)completion;
- (void)initiateDiagnosticsTransferWithOptions:(id)options completionHandler:(id)handler;
- (void)installManagedConfigurationProfileWithData:(id)data completionHandler:(id)handler;
- (void)notifyClientsOfUpdatedSupportsAudioReturnChannel;
- (void)notifyDelegateOfAppDataUpdateForService:(id)service;
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
- (void)queryAdvertisementInformationWithCompletionHandler:(id)handler;
- (void)queryLinkQualityWithCompletion:(id)completion;
- (void)removeCHIPPairings:(id)pairings completion:(id)completion;
- (void)removeControlTarget:(id)target completionHandler:(id)handler;
- (void)removeCorrespondingSystemCommissionerPairingWithCompletion:(id)completion;
- (void)removeManagedConfigurationProfileWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)resetControlTargetsWithCompletionHandler:(id)handler;
- (void)setAccountIdentifier:(id)identifier;
- (void)setAdaptiveTemperatureDriver:(unint64_t)driver rooms:(id)rooms completion:(id)completion;
- (void)setApplicationData:(id)data;
- (void)setBridgedAccessory:(BOOL)accessory;
- (void)setBulletinBoardNotificationByEndpoint:(id)endpoint;
- (void)setBundleID:(id)d;
- (void)setCHIPPairingModeActive:(BOOL)active withCompletion:(id)completion;
- (void)setCategory:(id)category;
- (void)setCertificationStatus:(int64_t)status;
- (void)setCommissioningID:(id)d;
- (void)setConfiguredName:(id)name;
- (void)setControlTargetUUIDs:(id)ds;
- (void)setControllable:(BOOL)controllable;
- (void)setCurrentAccessory:(BOOL)accessory;
- (void)setDelegate:(id)delegate;
- (void)setDemoAccessory:(BOOL)accessory;
- (void)setDevice:(id)device;
- (void)setDeviceIRKData:(id)data;
- (void)setDeviceIdentifier:(id)identifier;
- (void)setFirmwareUpdateAvailable:(BOOL)available;
- (void)setFirmwareVersion:(id)version;
- (void)setHAPInstanceID:(id)d;
- (void)setHH1EOLEnabled:(BOOL)enabled;
- (void)setHasOnboardedForAdaptiveTemperatureAutomations:(BOOL)automations;
- (void)setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:(id)completion;
- (void)setHasOnboardedForCleanEnergyAutomation:(BOOL)automation;
- (void)setHasOnboardedForCleanEnergyAutomationWithCompletion:(id)completion;
- (void)setHasOnboardedForNaturalLighting:(BOOL)lighting;
- (void)setHasOnboardedForNaturalLightingWithCompletion:(id)completion;
- (void)setHome:(id)home;
- (void)setHomePodVariant:(unint64_t)variant;
- (void)setIsPrimaryResident:(BOOL)resident;
- (void)setKnownToSystemCommissioner:(BOOL)commissioner;
- (void)setManufacturer:(id)manufacturer;
- (void)setMatterDeviceTypeID:(id)d;
- (void)setMatterExtendedMACAddress:(id)address;
- (void)setMatterWEDSupport:(id)support;
- (void)setModel:(id)model;
- (void)setName:(id)name;
- (void)setNetworkProtectionGroupUUID:(id)d;
- (void)setNodeID:(id)d;
- (void)setPendingConfigurationIdentifier:(id)identifier;
- (void)setPreferredMediaUserUUID:(id)d;
- (void)setPreferredUserSelectionType:(unint64_t)type;
- (void)setProductColor:(int64_t)color;
- (void)setProductID:(id)d;
- (void)setReachable:(BOOL)reachable;
- (void)setReaderGroupSubIdentifierACWG:(id)g;
- (void)setReaderIDACWG:(id)g;
- (void)setRemoteLoginHandler:(id)handler;
- (void)setRequiresThreadRouter:(BOOL)router;
- (void)setRoom:(id)room;
- (void)setRootPublicKey:(id)key;
- (void)setSerialNumber:(id)number;
- (void)setSettings:(id)settings;
- (void)setSoftwareUpdateController:(id)controller;
- (void)setSoftwareVersion:(id)version;
- (void)setStoreID:(id)d;
- (void)setSupportedLinkLayerTypes:(id)types;
- (void)setSupportedStereoPairVersions:(unint64_t)versions;
- (void)setSupportsAccessCodes:(BOOL)codes;
- (void)setSupportsAdaptiveTemperatureAutomations:(BOOL)automations;
- (void)setSupportsAnnounce:(BOOL)announce;
- (void)setSupportsAudioAnalysis:(BOOL)analysis;
- (void)setSupportsAudioReturnChannel:(BOOL)channel;
- (void)setSupportsCHIP:(BOOL)p;
- (void)setSupportsCleanEnergyAutomation:(BOOL)automation;
- (void)setSupportsCompanionInitiatedObliterate:(BOOL)obliterate;
- (void)setSupportsCompanionInitiatedRestart:(BOOL)restart;
- (void)setSupportsCoordinationDoorbellChime:(BOOL)chime;
- (void)setSupportsCrossfadeAsAirPlaySource:(BOOL)source;
- (void)setSupportsDoorbellChime:(BOOL)chime;
- (void)setSupportsDropIn:(BOOL)in;
- (void)setSupportsIdentify:(BOOL)identify;
- (void)setSupportsJustSiri:(BOOL)siri;
- (void)setSupportsManagedConfigurationProfile:(BOOL)profile;
- (void)setSupportsMediaAccessControl:(BOOL)control;
- (void)setSupportsMediaActions:(BOOL)actions;
- (void)setSupportsMessagedHomePodSettings:(BOOL)settings;
- (void)setSupportsMultiUser:(BOOL)user;
- (void)setSupportsMusicAlarm:(BOOL)alarm;
- (void)setSupportsNativeMatter:(BOOL)matter;
- (void)setSupportsNetworkDiagnostics:(BOOL)diagnostics;
- (void)setSupportsPreferredMediaUser:(BOOL)user;
- (void)setSupportsRMVonAppleTV:(BOOL)v;
- (void)setSupportsSoftwareUpdateV2:(BOOL)v2;
- (void)setSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)primary;
- (void)setSupportsTargetControl:(BOOL)control;
- (void)setSupportsTargetController:(BOOL)controller;
- (void)setSupportsThirdPartyMusic:(BOOL)music;
- (void)setSupportsUWBUnlock:(BOOL)unlock;
- (void)setSupportsUserMediaSettings:(BOOL)settings;
- (void)setSupportsWalletKey:(BOOL)key;
- (void)setSuspendCapable:(BOOL)capable;
- (void)setSuspendedState:(unint64_t)state;
- (void)setSymptomsHandler:(id)handler;
- (void)setTargetControllerHardwareSupport:(BOOL)support;
- (void)setThermostatSleepSchedule:(id)schedule completion:(id)completion;
- (void)setUniqueIdentifiersForBridgedAccessories:(id)accessories;
- (void)setVendorAccessory:(BOOL)accessory;
- (void)setVendorID:(id)d;
- (void)setWeekDaySchedulesPerUserCapacity:(id)capacity;
- (void)setWifiNetworkInfo:(id)info;
- (void)setYearDaySchedulesPerUserCapacity:(id)capacity;
- (void)unconfigureInfoDataProviderWithOptions:(unint64_t)options;
- (void)updateAccessoryInfo:(id)info;
- (void)updateAccessoryName:(id)name completionHandler:(id)handler;
- (void)updateApplicationData:(id)data forService:(id)service completionHandler:(id)handler;
- (void)updateAudioDestinationSupportedOptions:(unint64_t)options completion:(id)completion;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
- (void)updatePendingConfigurationIdentifier:(id)identifier completionHandler:(id)handler;
- (void)updatePreferredMediaUser:(id)user completionHandler:(id)handler;
- (void)updatePreferredMediaUserSelectionType:(unint64_t)type user:(id)user completionHandler:(id)handler;
- (void)updateSettingWithKeyPath:(id)path value:(id)value completionHandler:(id)handler;
- (void)validatePairingAuthMethodWithCompletion:(id)completion;
@end

@implementation HMAccessory

- (NSArray)services
{
  currentServices = [(HMAccessory *)self currentServices];
  array = [currentServices array];

  return array;
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

+ (id)televisionProfilesForAccessoryServices:(id)services isSPIEntitled:(BOOL)entitled
{
  sub_19BB4A270(0, &qword_1ED8FCBA0, off_1E7545B48);
  v5 = sub_19BE0E0DC();
  _sSo11HMAccessoryC7HomeKitE18televisionProfiles3for13isSPIEntitledSaySo0A7ProfileCGSaySo9HMServiceCG_SbtFZ_0(v5, entitled);

  sub_19BB4A270(0, &qword_1ED8FCBA8, off_1E7545138);
  v6 = sub_19BE0E0CC();

  return v6;
}

- (void)fetchThermostatSleepScheduleWithCompletion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v9 = [v7 initWithTarget:messageTargetUUID];
    v10 = [v6 messageWithName:@"HMA.fetchSleepSchedule" destination:v9 payload:0];

    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    v22[4] = selfCopy;
    v15 = context;
    v23 = v15;
    v24 = completionCopy;
    [v10 setResponseHandler:v22];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v10];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)setThermostatSleepSchedule:(id)schedule completion:(id)completion
{
  v49 = *MEMORY[0x1E69E9840];
  scheduleCopy = schedule;
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setThermostatSleepSchedule:completion:]", @"completion"];
    v35 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    scheduleRules = [scheduleCopy scheduleRules];
    if ([scheduleRules count] < 2)
    {
      v21 = MEMORY[0x1E69A2A10];
      v22 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
      v24 = [v22 initWithTarget:messageTargetUUID];
      v43 = @"HMA.sleepScheduleKey";
      v25 = encodeRootObject(scheduleRules);
      v44 = v25;
      v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      delegateCaller = [v21 messageWithName:@"HMA.setSleepSchedule" destination:v24 payload:v26];

      v27 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v29 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        v30 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v30;
        v47 = 2112;
        v48 = scheduleRules;
        _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_INFO, "%{public}@Setting thermostat sleep schedule rules %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v27);
      v40[0] = MEMORY[0x1E69E9820];
      v40[1] = 3221225472;
      v40[2] = __62__HMAccessory_Climate__setThermostatSleepSchedule_completion___block_invoke;
      v40[3] = &unk_1E754E480;
      v40[4] = selfCopy2;
      v31 = v9;
      v41 = v31;
      v42 = completionCopy;
      [delegateCaller setResponseHandler:v40];
      messageDispatcher = [v31 messageDispatcher];
      [messageDispatcher sendMessage:delegateCaller];
    }

    else
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v46 = v14;
        v47 = 2112;
        v48 = scheduleRules;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@ScheduleRules can only be of length 1, %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:completionCopy error:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
    scheduleRules = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, scheduleRules);
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

- (void)fetchAdaptiveTemperatureSettingsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = MEMORY[0x1E69A2A10];
  v6 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
  v8 = [v6 initWithTarget:messageTargetUUID];
  v9 = [v5 messageWithName:@"HMFetchAdaptiveTemperatureDriverSettingsMessage" destination:v8 payload:0];

  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __71__HMAccessory_Climate__fetchAdaptiveTemperatureSettingsWithCompletion___block_invoke;
  v16 = &unk_1E754DE00;
  selfCopy = self;
  v18 = completionCopy;
  v10 = completionCopy;
  [v9 setResponseHandler:&v13];
  v11 = [(HMAccessory *)self context:v13];
  messageDispatcher = [v11 messageDispatcher];
  [messageDispatcher sendMessage:v9];
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

- (void)setAdaptiveTemperatureDriver:(unint64_t)driver rooms:(id)rooms completion:(id)completion
{
  roomsCopy = rooms;
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if ((driver != 2 || roomsCopy || [0 hmf_isEmpty]) && (driver != 2 ? (v11 = roomsCopy == 0) : (v11 = 1), v11 ? (v12 = 0) : (v12 = 1), driver && !v12))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:driver];
    [dictionary setObject:v14 forKeyedSubscript:@"driver"];

    if (roomsCopy)
    {
      v15 = [roomsCopy na_map:&__block_literal_global_4406];
      allObjects = [v15 allObjects];
      [dictionary setObject:allObjects forKeyedSubscript:@"rooms"];
    }

    v17 = MEMORY[0x1E69A2A10];
    v18 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v20 = [v18 initWithTarget:messageTargetUUID];
    v21 = [dictionary copy];
    v22 = [v17 messageWithName:@"HMSetAdaptiveTemperatureDriverMessage" destination:v20 payload:v21];

    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __70__HMAccessory_Climate__setAdaptiveTemperatureDriver_rooms_completion___block_invoke_2;
    v30 = &unk_1E754DE00;
    v31 = context;
    v32 = completionCopy;
    [v22 setResponseHandler:&v27];
    v23 = [(HMAccessory *)self context:v27];
    messageDispatcher = [v23 messageDispatcher];
    [messageDispatcher sendMessage:v22];
  }

  else
  {
    delegateCaller = [context delegateCaller];
    v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:completionCopy error:v26];
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

- (void)setHasOnboardedForCleanEnergyAutomationWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setHasOnboardedForCleanEnergyAutomationWithCompletion:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:messageTargetUUID];
    v11 = [v7 messageWithName:@"HMA.HasOnboardedForCleanEnergyAutomationMessage" destination:v10 payload:0];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    v29[4] = selfCopy2;
    v30 = v6;
    v31 = completionCopy;
    [v11 setResponseHandler:v29];
    context2 = [(HMAccessory *)selfCopy2 context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v11];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    (*(completionCopy + 2))(completionCopy, v11);
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

- (void)setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:(id)completion
{
  v36 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Climate) setHasOnboardedForAdaptiveTemperatureAutomationsWithCompletion:]", @"completion"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    v7 = MEMORY[0x1E69A2A10];
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:messageTargetUUID];
    v11 = [v7 messageWithName:@"HMA.HasOnboardedForAdaptiveTemperatureAutomationsMessage" destination:v10 payload:0];

    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    v29[4] = selfCopy2;
    v30 = v6;
    v31 = completionCopy;
    [v11 setResponseHandler:v29];
    context2 = [(HMAccessory *)selfCopy2 context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v11];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    (*(completionCopy + 2))(completionCopy, v11);
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
  accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
  array = [accessoryProfiles array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = array;
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

+ (id)_siriEndpointProfilesForAccessoryProfiles:(id)profiles
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  profilesCopy = profiles;
  v4 = [profilesCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(profilesCopy);
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

      v5 = [profilesCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
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
  profiles = [(HMAccessory *)self profiles];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(profiles, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = profiles;
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

+ (id)_lightProfilesForAccessoryProfiles:(id)profiles
{
  v23 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:{objc_msgSend(profilesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = profilesCopy;
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
  accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
  array = [accessoryProfiles array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = array;
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

+ (id)_doorbellProfilesForAccessoryProfiles:(id)profiles
{
  v23 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(profilesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = profilesCopy;
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

+ (unint64_t)networkRouterStatusFromWiFiSatelliteStatus:(int64_t)status
{
  v3 = 0x40000000;
  if (status != 2)
  {
    v3 = 1;
  }

  if (status == 1)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

+ (unint64_t)networkRouterStatusFromRouterStatus:(int64_t)status wanStatusListData:(id)data
{
  v46 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (status == 1)
  {
    v7 = 0x20000000;
  }

  else
  {
    v39 = 0;
    v8 = [HMNetworkRouterWANStatusList parsedFromData:dataCopy error:&v39];
    v9 = v39;
    if (v8)
    {
      statuses = [v8 statuses];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __84__HMAccessory_NetworkRouter__networkRouterStatusFromRouterStatus_wanStatusListData___block_invoke;
      v38[3] = &__block_descriptor_40_e41_B32__0__HMNetworkRouterWANStatus_8Q16_B24l;
      v38[4] = self;
      v11 = [statuses hmf_objectPassingTest:v38];

      if (v11)
      {
        status = [v11 status];
        value = [status value];

        if (value)
        {
          v7 = 0;
          if ([value unsignedIntegerValue])
          {
            v14 = 1;
            do
            {
              if (([value unsignedIntegerValue] & v14) != 0)
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

            while (v14 - 1 < [value unsignedIntegerValue]);
          }
        }

        else
        {
          v32 = objc_autoreleasePoolPush();
          selfCopy = self;
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
        selfCopy2 = self;
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
      selfCopy3 = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = HMFGetLogIdentifier();
        *buf = 138543874;
        v41 = v27;
        v42 = 2112;
        v43 = dataCopy;
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

- (void)accessoryInfoDataProvider:(id)provider didReceiveUpdatesForAccessoryWithIdentifier:(id)identifier primaryUserInfo:(id)info
{
  v42 = *MEMORY[0x1E69E9840];
  providerCopy = provider;
  identifierCopy = identifier;
  infoCopy = info;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v36 = 138543618;
    v37 = v14;
    v38 = 2112;
    v39 = infoCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Did receive update primaryUserInfo: %@", &v36, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (![(HMAccessory *)selfCopy supportsMessagedHomePodSettings])
  {
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
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

  if (![infoCopy selectionType])
  {
    uuidString = [infoCopy uuidString];
    if (uuidString)
    {

      goto LABEL_15;
    }
  }

  if ([infoCopy selectionType] == 1)
  {
    uuidString2 = [infoCopy uuidString];
    v16 = uuidString2 == 0;

    if (v16)
    {
LABEL_15:
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        uuidString3 = [infoCopy uuidString];
        v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(infoCopy, "selectionType")}];
        v36 = 138543874;
        v37 = v31;
        v38 = 2112;
        v39 = uuidString3;
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
  uUIDString = [(NSUUID *)selfCopy->_preferredMediaUserUUID UUIDString];
  uuidString4 = [infoCopy uuidString];
  v19 = HMFEqualObjects();

  if ((v19 & 1) == 0)
  {
    uuidString5 = [infoCopy uuidString];
    v21 = uuidString5 == 0;

    if (v21)
    {
      preferredMediaUserUUID = selfCopy->_preferredMediaUserUUID;
      selfCopy->_preferredMediaUserUUID = 0;
    }

    else
    {
      v22 = objc_alloc(MEMORY[0x1E696AFB0]);
      preferredMediaUserUUID = [infoCopy uuidString];
      v24 = [v22 initWithUUIDString:preferredMediaUserUUID];
      v25 = selfCopy->_preferredMediaUserUUID;
      selfCopy->_preferredMediaUserUUID = v24;
    }
  }

  preferredUserSelectionType = selfCopy->_preferredUserSelectionType;
  if (preferredUserSelectionType == [infoCopy selectionType])
  {
    os_unfair_lock_unlock(&selfCopy->_lock);
    if (v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    selfCopy->_preferredUserSelectionType = [infoCopy selectionType];
    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  [(HMAccessory *)selfCopy notifyDelegateUpdatedPreferredMediaUser];
LABEL_26:

  v35 = *MEMORY[0x1E69E9840];
}

- (void)updateSettingWithKeyPath:(id)path value:(id)value completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  handlerCopy = handler;
  settingsAdapter = [(HMAccessory *)self settingsAdapter];

  if (settingsAdapter)
  {
    settingsAdapter2 = [(HMAccessory *)self settingsAdapter];
    [settingsAdapter2 updateWithKeyPath:pathCopy value:valueCopy completionHandler:handlerCopy];
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543362;
      v19 = v16;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Calling update setting with settings adapter object being nil", &v18, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    settingsAdapter2 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8 reason:@"Adapter is nil" suggestion:@"Configure adapter before use it"];
    handlerCopy[2](handlerCopy, settingsAdapter2);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)adapter didUpdateSettingKeyPaths:(id)paths
{
  adapterCopy = adapter;
  pathsCopy = paths;
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];

  if (delegateCaller)
  {
    objc_initWeak(&location, self);
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__HMAccessory_adapter_didUpdateSettingKeyPaths___block_invoke;
    v10[3] = &unk_1E754D848;
    objc_copyWeak(&v12, &location);
    v11 = pathsCopy;
    [delegateCaller invokeBlock:v10];

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

- (void)adapter:(id)adapter didUpdateSettings:(id)settings
{
  v17 = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  settingsCopy = settings;
  settings = [(HMAccessory *)self settings];

  if (settings)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    [(HMAccessory *)self setSettings:settingsCopy];
    settings2 = [(HMAccessory *)self settings];
    [(HMAccessory *)self _notifyDelegateOfUpdatedSettings:settings2];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)configureSettingsAdapterWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  settingsAdapter = [(HMAccessory *)self settingsAdapter];
  [settingsAdapter configureWithCompletionHandler:handlerCopy];
}

- (void)createSettingsAdapterWithDataSource:(id)source controller:(id)controller context:(id)context
{
  contextCopy = context;
  controllerCopy = controller;
  sourceCopy = source;
  v11 = [HMAccessorySettingsAdapter alloc];
  home = [(HMAccessory *)self home];
  uniqueIdentifier = [home uniqueIdentifier];
  context = [(HMAccessory *)self context];
  queue = [context queue];
  uniqueIdentifier2 = [(HMAccessory *)self uniqueIdentifier];
  v18 = [(HMAccessorySettingsAdapter *)v11 initWithHomeIdentifier:uniqueIdentifier dataSource:sourceCopy controller:controllerCopy workQueue:queue settingsContainer:self containerIdentifier:uniqueIdentifier2 containerType:1 settingsControl:self context:contextCopy];

  [(HMAccessory *)self setSettingsAdapter:v18];
  settingsAdapter = [(HMAccessory *)self settingsAdapter];
  [settingsAdapter setDelegate:self];
}

- (NSArray)attributeDescriptions
{
  v49[12] = *MEMORY[0x1E69E9840];
  room = [(HMAccessory *)self room];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  name = [(HMAccessory *)self name];
  v47 = [v4 initWithName:@"Name" value:name];
  v49[0] = v47;
  v5 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMAccessory *)self uniqueIdentifier];
  v45 = [v5 initWithName:@"Identifier" value:uniqueIdentifier];
  v49[1] = v45;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  [(HMAccessory *)self isReachable];
  v43 = HMFBooleanToString();
  v42 = [v6 initWithName:@"Reachable" value:v43];
  v49[2] = v42;
  v7 = objc_alloc(MEMORY[0x1E69A29C8]);
  v8 = MEMORY[0x1E696AEC0];
  v44 = room;
  uuid = [room uuid];
  name2 = [room name];
  v39 = [v8 stringWithFormat:@"%@/%@", uuid, name2];
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
  rootPublicKey = [(HMAccessory *)self rootPublicKey];
  v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey, "hash")}];
  v18 = [v14 initWithName:@"Root Public Key (HASH)" value:v17];
  v49[8] = v18;
  v19 = objc_alloc(MEMORY[0x1E69A29C8]);
  nodeID = [(HMAccessory *)self nodeID];
  v21 = [v19 initWithName:@"NodeID" value:nodeID];
  v49[9] = v21;
  v22 = objc_alloc(MEMORY[0x1E69A29C8]);
  matterNodeID = [(HMAccessory *)self matterNodeID];
  v24 = [v22 initWithName:@"Matter NodeID" value:matterNodeID];
  v49[10] = v24;
  v25 = objc_alloc(MEMORY[0x1E69A29C8]);
  bulletinBoardNotificationByEndpoint = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
  v27 = [v25 initWithName:@"Matter Bulletins" value:bulletinBoardNotificationByEndpoint];
  v49[11] = v27;
  v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:12];

  v28 = *MEMORY[0x1E69E9840];

  return v30;
}

- (NSString)shortDescription
{
  uniqueIdentifier = [(HMAccessory *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)_invokeDidUpdateSupportsUWBUnlockDelegate:(BOOL)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  if (context)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      delegateCaller = [context delegateCaller];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__HMAccessory__invokeDidUpdateSupportsUWBUnlockDelegate___block_invoke;
      v15[3] = &unk_1E754DC70;
      v16 = v8;
      selfCopy = self;
      delegateCopy = delegate;
      [delegateCaller invokeBlock:v15];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_invokeDidUpdateSupportsWalletKeyDelegate:(BOOL)delegate
{
  v23 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  if (context)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v7 = delegate;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    if (objc_opt_respondsToSelector())
    {
      delegateCaller = [context delegateCaller];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __57__HMAccessory__invokeDidUpdateSupportsWalletKeyDelegate___block_invoke;
      v15[3] = &unk_1E754DC70;
      v16 = v8;
      selfCopy = self;
      delegateCopy = delegate;
      [delegateCaller invokeBlock:v15];
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_handleSupportedDiagnosticsUpdatedMessage:(id)message
{
  v20[1] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v20[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v6 = [messageCopy unarchivedObjectForKey:@"HMA.supportedDiagnosticsCodingKey" ofClasses:v5];

  supportedDiagnostics = [(HMAccessory(Diagnostics) *)self supportedDiagnostics];

  if (v6 != supportedDiagnostics)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      supportedDiagnostics2 = [(HMAccessory(Diagnostics) *)selfCopy supportedDiagnostics];
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = supportedDiagnostics2;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating supported diagnostics from %@ -> %@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMAccessory(Diagnostics) *)selfCopy setSupportedDiagnostics:v6];
    [(HMAccessory *)selfCopy _notifyClientsOfDiagnosticsTransferSupportUpdate];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfDiagnosticsTransferSupportUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = _privateDelegate;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of accessory diagnostics transfer support update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __63__HMAccessory__notifyClientsOfDiagnosticsTransferSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
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

- (id)mediaDestinationController:(id)controller destinationWithIdentifier:(id)identifier
{
  v26 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  identifierCopy = identifier;
  home = [(HMAccessory *)self home];
  mediaDestinationsWithHomeTheaterSupportedOptions = [home mediaDestinationsWithHomeTheaterSupportedOptions];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __68__HMAccessory_mediaDestinationController_destinationWithIdentifier___block_invoke;
  v18[3] = &unk_1E754B5C0;
  v10 = identifierCopy;
  v19 = v10;
  v11 = [mediaDestinationsWithHomeTheaterSupportedOptions na_firstObjectPassingTest:v18];
  if (!v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543874;
      v21 = v15;
      v22 = 2112;
      v23 = mediaDestinationsWithHomeTheaterSupportedOptions;
      v24 = 2112;
      v25 = home;
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

- (void)updateAudioDestinationSupportedOptions:(unint64_t)options completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    *buf = 138543618;
    v36 = v10;
    v37 = 2112;
    v38 = v11;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Sending update audio destination support options message with options: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  context = [(HMAccessory *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  if (messageDispatcher)
  {
    v33 = @"HMMediaDestinationSupportedOptionsPayloadKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    v34 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    audioDestination = [(HMAccessory *)selfCopy audioDestination];
    uniqueIdentifier = [audioDestination uniqueIdentifier];
    v19 = [v16 initWithTarget:uniqueIdentifier];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMMediaDestinationUpdateSupportedOptionsRequestMessage" destination:v19 payload:v15];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __65__HMAccessory_updateAudioDestinationSupportedOptions_completion___block_invoke;
    v30 = &unk_1E754DE00;
    v31 = selfCopy;
    v32 = completionCopy;
    [v20 setResponseHandler:&v27];
    v21 = [v20 copy];
    [messageDispatcher sendMessage:v21];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = selfCopy;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v36 = v25;
      v37 = 2112;
      v38 = context;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to update destination support options due to no message dispatcher given by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v15 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
    [(HMAccessory *)v23 callCompletionHandler:completionCopy error:v15];
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

- (void)setHasOnboardedForCleanEnergyAutomation:(BOOL)automation
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForCleanEnergyAutomation = automation;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForCleanEnergyAutomation
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForCleanEnergyAutomation = self->_hasOnboardedForCleanEnergyAutomation;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForCleanEnergyAutomation;
}

- (void)setHasOnboardedForAdaptiveTemperatureAutomations:(BOOL)automations
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForAdaptiveTemperatureAutomations = automations;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)hasOnboardedForAdaptiveTemperatureAutomations
{
  os_unfair_lock_lock_with_options();
  hasOnboardedForAdaptiveTemperatureAutomations = self->_hasOnboardedForAdaptiveTemperatureAutomations;
  os_unfair_lock_unlock(&self->_lock);
  return hasOnboardedForAdaptiveTemperatureAutomations;
}

- (void)setSupportsCleanEnergyAutomation:(BOOL)automation
{
  os_unfair_lock_lock_with_options();
  self->_supportsCleanEnergyAutomation = automation;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCleanEnergyAutomation
{
  os_unfair_lock_lock_with_options();
  supportsCleanEnergyAutomation = self->_supportsCleanEnergyAutomation;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCleanEnergyAutomation;
}

- (void)setSupportsAdaptiveTemperatureAutomations:(BOOL)automations
{
  os_unfair_lock_lock_with_options();
  self->_supportsAdaptiveTemperatureAutomations = automations;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAdaptiveTemperatureAutomations
{
  os_unfair_lock_lock_with_options();
  supportsAdaptiveTemperatureAutomations = self->_supportsAdaptiveTemperatureAutomations;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAdaptiveTemperatureAutomations;
}

- (void)setHasOnboardedForNaturalLighting:(BOOL)lighting
{
  os_unfair_lock_lock_with_options();
  self->_hasOnboardedForNaturalLighting = lighting;

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
  audioDestination = [(HMAccessory *)self audioDestination];
  audioGroupIdentifier = [audioDestination audioGroupIdentifier];

  return audioGroupIdentifier;
}

- (NSArray)audioDestinationMediaProfiles
{
  v7[1] = *MEMORY[0x1E69E9840];
  mediaProfile = [(HMAccessory *)self mediaProfile];
  v3 = mediaProfile;
  if (mediaProfile)
  {
    v7[0] = mediaProfile;
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
  uuid = [(HMAccessory *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (BOOL)supportsAudioGroup
{
  audioDestination = [(HMAccessory *)self audioDestination];
  v3 = [audioDestination containsSupportedOptions:8];

  return v3;
}

- (BOOL)supportsAudioDestination
{
  audioDestination = [(HMAccessory *)self audioDestination];
  containsHomeTheaterSupportedOptions = [audioDestination containsHomeTheaterSupportedOptions];

  return containsHomeTheaterSupportedOptions;
}

- (int64_t)audioDestinationType
{
  audioDestination = [(HMAccessory *)self audioDestination];

  return audioDestination != 0;
}

- (NSString)audioDestinationIdentifier
{
  audioDestination = [(HMAccessory *)self audioDestination];
  identifier = [audioDestination identifier];

  return identifier;
}

- (void)callCompletionHandler:(id)handler error:(id)error
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  errorCopy = error;
  if (handlerCopy)
  {
    context = [(HMAccessory *)self context];
    delegateCaller = [context delegateCaller];
    v10 = delegateCaller;
    if (delegateCaller)
    {
      [delegateCaller callCompletion:handlerCopy error:errorCopy];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v18 = HMFGetLogIdentifier();
        v20 = 138543618;
        v21 = v18;
        v22 = 2112;
        v23 = context;
        _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Failed to call client completion handler due to no delegate caller given by context: %@", &v20, 0x16u);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)setNetworkProtectionGroupUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  networkProtectionGroupUUID = self->_networkProtectionGroupUUID;
  self->_networkProtectionGroupUUID = dCopy;

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
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = _privateDelegate;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports creating music alarms update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __55__HMAccessory__notifyClientsOfSupportsMusicAlarmUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsCompanionInitiatedObliterateUpdatedMessage:(id)message
{
  v4 = [message BOOLForKey:@"HMAccessorySupportsCompanionInitiatedObliterateMessageKey"];
  if (v4 != [(HMAccessory *)self supportsCompanionInitiatedObliterate])
  {
    [(HMAccessory *)self setSupportsCompanionInitiatedObliterate:v4];

    [(HMAccessory *)self _notifyClientsOfSupportsCompanionInitiatedObliterateUpdate];
  }
}

- (void)_notifyClientsOfSupportsCompanionInitiatedObliterateUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = _privateDelegate;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports companion initiated obliterate update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __73__HMAccessory__notifyClientsOfSupportsCompanionInitiatedObliterateUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsCompanionInitiatedRestartUpdatedMessage:(id)message
{
  v4 = [message BOOLForKey:@"HMAccessorySupportsCompanionInitiatedRestartMessageKey"];
  if (v4 != [(HMAccessory *)self supportsCompanionInitiatedRestart])
  {
    [(HMAccessory *)self setSupportsCompanionInitiatedRestart:v4];

    [(HMAccessory *)self _notifyClientsOfSupportsCompanionInitiatedRestartUpdate];
  }
}

- (void)_notifyClientsOfSupportsCompanionInitiatedRestartUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = _privateDelegate;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of supports companion initiated restart update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __70__HMAccessory__notifyClientsOfSupportsCompanionInitiatedRestartUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleMultiUserSupportUpdatedMessage:(id)message
{
  v4 = [message BOOLForKey:@"supportsMultiUser"];
  if (v4 != [(HMAccessory *)self supportsMultiUser])
  {
    [(HMAccessory *)self setSupportsMultiUser:v4];

    [(HMAccessory *)self _notifyClientsOfMultiUserSupportUpdate];
  }
}

- (void)_notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate
{
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __75__HMAccessory__notifyClientsOfHomeLevelLocationServiceSettingSupportUpdate__block_invoke;
  v5[3] = &unk_1E754E2A8;
  v5[4] = self;
  [delegateCaller invokeBlock:v5];
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
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying client of multi-user support update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __53__HMAccessory__notifyClientsOfMultiUserSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)notifyClientsOfUpdatedSupportsAudioReturnChannel
{
  v22 = *MEMORY[0x1E69E9840];
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543618;
    v19 = v7;
    v20 = 2112;
    v21 = _privateDelegate;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying delegate of accessory did update supports audio return: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    if (delegateCaller)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __63__HMAccessory_notifyClientsOfUpdatedSupportsAudioReturnChannel__block_invoke;
      v15[3] = &unk_1E754E5C0;
      v16 = _privateDelegate;
      v17 = selfCopy;
      [delegateCaller invokeBlock:v15];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = selfCopy;
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

- (void)_handleTargetControlSupportUpdatedMessage:(id)message
{
  messageCopy = message;
  v4 = [messageCopy BOOLForKey:@"supportsTargetControl"];
  v5 = v4 ^ [(HMAccessory *)self supportsTargetControl];
  if (v5 == 1)
  {
    [(HMAccessory *)self setSupportsTargetControl:v4];
  }

  v6 = [messageCopy BOOLForKey:@"supportsTargetController"];
  if (v6 != [(HMAccessory *)self supportsTargetController])
  {
    [(HMAccessory *)self setSupportsTargetController:v6];
    v5 = 1;
  }

  v7 = [messageCopy BOOLForKey:@"targetControllerHardwareSupport"];
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

- (void)resetControlTargetsWithCompletionHandler:(id)handler
{
  v47 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v31 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory resetControlTargetsWithCompletionHandler:]", @"completion"];
    v32 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (home)
    {
      v8 = home;
      v41 = @"reset";
      v42 = MEMORY[0x1E695E0F0];
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v10 = objc_alloc(MEMORY[0x1E69A2A10]);
      v11 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMAccessory *)self uuid];
      v13 = [v11 initWithTarget:uuid];
      v14 = [v10 initWithName:@"HMCT.configure" destination:v13 payload:v9];

      context2 = [(HMAccessory *)self context];
      pendingRequests = [context2 pendingRequests];

      identifier = [v14 identifier];
      v18 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v18 forIdentifier:identifier];

      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __56__HMAccessory_resetControlTargetsWithCompletionHandler___block_invoke;
      v37[3] = &unk_1E754E0A8;
      v38 = pendingRequests;
      v39 = identifier;
      v19 = v6;
      v40 = v19;
      v20 = identifier;
      v21 = pendingRequests;
      [v14 setResponseHandler:v37];
      messageDispatcher = [v19 messageDispatcher];
      [messageDispatcher sendMessage:v14];
    }

    else
    {
      context3 = [(HMAccessory *)self context];
      delegateCaller = [context3 delegateCaller];
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:handlerCopy error:v29];

      v8 = 0;
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v8);
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

- (void)removeControlTarget:(id)target completionHandler:(id)handler
{
  v60 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory removeControlTarget:completionHandler:]", @"completion"];
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (!home)
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller = [context2 delegateCaller];
      v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:handlerCopy error:v37];

      v11 = 0;
      goto LABEL_14;
    }

    v11 = home;
    uuid = [targetCopy uuid];

    if (uuid)
    {
      home2 = [targetCopy home];
      v14 = [v11 isEqual:home2];

      if (v14)
      {
        v54 = @"remove";
        uuid2 = [targetCopy uuid];
        uUIDString = [uuid2 UUIDString];
        v55 = uUIDString;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

        v18 = objc_alloc(MEMORY[0x1E69A2A10]);
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid3 = [(HMAccessory *)self uuid];
        v21 = [v19 initWithTarget:uuid3];
        v22 = [v18 initWithName:@"HMCT.configure" destination:v21 payload:v17];

        context3 = [(HMAccessory *)self context];
        pendingRequests = [context3 pendingRequests];

        identifier = [v22 identifier];
        v26 = _Block_copy(handlerCopy);
        [pendingRequests addCompletionBlock:v26 forIdentifier:identifier];

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __53__HMAccessory_removeControlTarget_completionHandler___block_invoke;
        v50[3] = &unk_1E754E0A8;
        v51 = pendingRequests;
        v52 = identifier;
        v27 = v9;
        v53 = v27;
        v28 = identifier;
        v29 = pendingRequests;
        [v22 setResponseHandler:v50];
        messageDispatcher = [v27 messageDispatcher];
        [messageDispatcher sendMessage:v22];

        goto LABEL_14;
      }

      context4 = [(HMAccessory *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 11;
    }

    else
    {
      context4 = [(HMAccessory *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 20;
    }

    v42 = [v40 hmErrorWithCode:v41];
    [delegateCaller2 callCompletion:handlerCopy error:v42];

    goto LABEL_14;
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  (*(handlerCopy + 2))(handlerCopy, v11);
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

- (void)addControlTarget:(id)target completionHandler:(id)handler
{
  v60 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v44 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory addControlTarget:completionHandler:]", @"completion"];
    v45 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (!home)
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller = [context2 delegateCaller];
      v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:handlerCopy error:v37];

      v11 = 0;
      goto LABEL_14;
    }

    v11 = home;
    uuid = [targetCopy uuid];

    if (uuid)
    {
      home2 = [targetCopy home];
      v14 = [v11 isEqual:home2];

      if (v14)
      {
        v54 = @"add";
        uuid2 = [targetCopy uuid];
        uUIDString = [uuid2 UUIDString];
        v55 = uUIDString;
        v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v55 forKeys:&v54 count:1];

        v18 = objc_alloc(MEMORY[0x1E69A2A10]);
        v19 = objc_alloc(MEMORY[0x1E69A2A00]);
        uuid3 = [(HMAccessory *)self uuid];
        v21 = [v19 initWithTarget:uuid3];
        v22 = [v18 initWithName:@"HMCT.configure" destination:v21 payload:v17];

        context3 = [(HMAccessory *)self context];
        pendingRequests = [context3 pendingRequests];

        identifier = [v22 identifier];
        v26 = _Block_copy(handlerCopy);
        [pendingRequests addCompletionBlock:v26 forIdentifier:identifier];

        v50[0] = MEMORY[0x1E69E9820];
        v50[1] = 3221225472;
        v50[2] = __50__HMAccessory_addControlTarget_completionHandler___block_invoke;
        v50[3] = &unk_1E754E0A8;
        v51 = pendingRequests;
        v52 = identifier;
        v27 = v9;
        v53 = v27;
        v28 = identifier;
        v29 = pendingRequests;
        [v22 setResponseHandler:v50];
        messageDispatcher = [v27 messageDispatcher];
        [messageDispatcher sendMessage:v22];

        goto LABEL_14;
      }

      context4 = [(HMAccessory *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 11;
    }

    else
    {
      context4 = [(HMAccessory *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v40 = MEMORY[0x1E696ABC0];
      v41 = 20;
    }

    v42 = [v40 hmErrorWithCode:v41];
    [delegateCaller2 callCompletion:handlerCopy error:v42];

    goto LABEL_14;
  }

  v31 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  (*(handlerCopy + 2))(handlerCopy, v11);
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

- (void)_notifyDelegateOfRemovedControlTarget:(id)target
{
  v22 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      name = [targetCopy name];
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = name;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of removed control target - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __53__HMAccessory__notifyDelegateOfRemovedControlTarget___block_invoke;
    v14[3] = &unk_1E754E5E8;
    v15 = _privateDelegate;
    v16 = selfCopy;
    v17 = targetCopy;
    [delegateCaller invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfAddedControlTarget:(id)target
{
  v22 = *MEMORY[0x1E69E9840];
  targetCopy = target;
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      name = [targetCopy name];
      *buf = 138543618;
      v19 = v9;
      v20 = 2112;
      v21 = name;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added target - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __51__HMAccessory__notifyDelegateOfAddedControlTarget___block_invoke;
    v14[3] = &unk_1E754E5E8;
    v15 = _privateDelegate;
    v16 = selfCopy;
    v17 = targetCopy;
    [delegateCaller invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_notifyClientsOfTargetControlSupportUpdate
{
  v16 = *MEMORY[0x1E69E9840];
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v15 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying client of target control support update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMAccessory__notifyClientsOfTargetControlSupportUpdate__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v12 = _privateDelegate;
    v13 = selfCopy;
    [delegateCaller invokeBlock:v11];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (BOOL)_updateHasSymptomsHandler:(BOOL)handler
{
  handlerCopy = handler;
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (![(HMAccessory *)self hasSymptomsHandler]&& handlerCopy)
  {
    [(HMAccessory *)self setHasSymptomsHandler:1];
    [(HMAccessory *)self _createSymptomsHandler];
    context = [(HMAccessory *)self context];
    queue = [context queue];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke;
    v14[3] = &unk_1E754E5C0;
    v8 = v15;
    v15[0] = _privateDelegate;
    v15[1] = self;
    v9 = v14;
LABEL_7:
    dispatch_async(queue, v9);

    v10 = 1;
    goto LABEL_8;
  }

  v10 = 0;
  if ([(HMAccessory *)self hasSymptomsHandler]&& !handlerCopy)
  {
    [(HMAccessory *)self setHasSymptomsHandler:0];
    [(HMAccessory *)self setSymptomsHandler:0];
    context = [(HMAccessory *)self context];
    queue = [context queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __41__HMAccessory__updateHasSymptomsHandler___block_invoke_2;
    v12[3] = &unk_1E754E5C0;
    v8 = v13;
    v13[0] = _privateDelegate;
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

  symptomsHandler = [(HMAccessory *)self symptomsHandler];
  [symptomsHandler configure];
}

- (void)setSymptomsHandler:(id)handler
{
  handlerCopy = handler;
  os_unfair_lock_lock_with_options();
  symptomsHandler = self->_symptomsHandler;
  self->_symptomsHandler = handlerCopy;

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
  delegate = [(HMAccessory *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63E80])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_notifyDelegatesOfUpdatedControllable
{
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__HMAccessory__notifyDelegatesOfUpdatedControllable__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegatesOfUpdatedCalibrationStatus
{
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __57__HMAccessory__notifyDelegatesOfUpdatedCalibrationStatus__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_notifyDelegatesOfAdditionalSetupRequiredChange
{
  _privateDelegate = [(HMAccessory *)self _privateDelegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)self context];
    delegateCaller = [context delegateCaller];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __62__HMAccessory__notifyDelegatesOfAdditionalSetupRequiredChange__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v7 = _privateDelegate;
    selfCopy = self;
    [delegateCaller invokeBlock:v6];
  }
}

- (void)_handleAccessoryControllableChanged:(id)changed
{
  -[HMAccessory setControllable:](self, "setControllable:", [changed BOOLForKey:@"controllable"]);

  [(HMAccessory *)self _notifyDelegatesOfUpdatedControllable];
}

- (void)notifyDelegateOfAppDataUpdateForService:(id)service
{
  v20 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  context = [(HMAccessory *)self context];
  if (context)
  {
    _privateDelegate = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      queue = [context queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __55__HMAccessory_notifyDelegateOfAppDataUpdateForService___block_invoke;
      block[3] = &unk_1E754E5E8;
      block[4] = self;
      v14 = _privateDelegate;
      v15 = serviceCopy;
      dispatch_async(queue, block);
    }
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)_updateApplicationData:(id)data forService:(id)service completionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (home)
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      if (dataCopy)
      {
        dictionary2 = [dataCopy dictionary];
        [dictionary setObject:dictionary2 forKeyedSubscript:@"kAppDataInformationKey"];
      }

      selfCopy = self;
      v14 = selfCopy;
      if (serviceCopy)
      {
        v15 = serviceCopy;

        instanceID = [(HMAccessory *)v15 instanceID];
        [dictionary setObject:instanceID forKeyedSubscript:@"kServiceInstanceID"];

        uuid = [(HMAccessory *)v15 uuid];
      }

      else
      {
        uuid = [(HMAccessory *)selfCopy messageTargetUUID];
        v15 = v14;
      }

      v24 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:uuid];
      v25 = MEMORY[0x1E69A2A10];
      v26 = [dictionary copy];
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
      v49 = dataCopy;
      v50 = handlerCopy;
      v29 = _Block_copy(aBlock);
      context2 = [(HMAccessory *)v14 context];
      pendingRequests = [context2 pendingRequests];

      identifier = [v27 identifier];
      v33 = _Block_copy(v29);
      [pendingRequests addCompletionBlock:v33 forIdentifier:identifier];

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __67__HMAccessory__updateApplicationData_forService_completionHandler___block_invoke_2;
      v43[3] = &unk_1E754E480;
      v34 = pendingRequests;
      v44 = v34;
      v35 = identifier;
      v45 = v35;
      v36 = v29;
      v46 = v36;
      [v27 setResponseHandler:v43];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v27 completionHandler:0];

      objc_destroyWeak(&v51);
      objc_destroyWeak(buf);
    }

    else
    {
      context3 = [(HMAccessory *)self context];
      delegateCaller = [context3 delegateCaller];
      v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      [delegateCaller callCompletion:handlerCopy error:v23];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)updateApplicationData:(id)data forService:(id)service completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateApplicationData:forService:completionHandler:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __66__HMAccessory_updateApplicationData_forService_completionHandler___block_invoke;
    block[3] = &unk_1E754D208;
    block[4] = self;
    v27 = dataCopy;
    v28 = serviceCopy;
    v29 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v18);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_configureProfilesWithContext:(id)context
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  profiles = [(HMAccessory *)self profiles];
  v6 = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(profiles);
        }

        accessoryProfile = [*(*(&v12 + 1) + 8 * v9) accessoryProfile];
        [accessoryProfile __configureWithContext:contextCopy accessory:self];

        ++v9;
      }

      while (v7 != v9);
      v7 = [profiles countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (NSArray)profiles
{
  accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
  array = [accessoryProfiles array];

  return array;
}

- (void)_handleMatterDeviceTypeIDChanged:(id)changed
{
  v4 = [changed numberForKey:@"HMA.MatterDeviceTypeIDUpdate"];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMAccessory *)self setMatterDeviceTypeID:v4];
    v5 = v6;
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)_handleAccessoryCategoryChanged:(id)changed
{
  v18 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = [changedCopy dataForKey:@"kAccessoryCategory"];
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
      selfCopy = self;
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

- (void)_handleServiceMediaSourceIdentifierUpdated:(id)updated
{
  updatedCopy = updated;
  v8 = [updatedCopy numberForKey:@"mediaSourceIdentifier"];
  v5 = [updatedCopy numberForKey:@"kServiceInstanceID"];

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

- (void)_handleServiceConfigurationState:(id)state
{
  stateCopy = state;
  v5 = [stateCopy numberForKey:@"kServiceConfigurationState"];
  v6 = [stateCopy numberForKey:@"kServiceInstanceID"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [stateCopy identifier];

  v10 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5 && v6)
  {
    services = [(HMAccessory *)self services];
    v12 = [services hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateConfigurationState:{+[HMService _mapToServiceConfigurationStateFromIsConfiguredValue:](HMService, "_mapToServiceConfigurationStateFromIsConfiguredValue:", v5)}];
      if (v10)
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:v10 error:0];
      }

      else
      {
        _privateDelegate = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          context3 = [(HMAccessory *)self context];
          delegateCaller2 = [context3 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __48__HMAccessory__handleServiceConfigurationState___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = _privateDelegate;
          selfCopy = self;
          v21 = v12;
          [delegateCaller2 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceSubtype:(id)subtype
{
  subtypeCopy = subtype;
  v5 = [subtypeCopy stringForKey:@"kServiceSubtype"];
  v6 = [subtypeCopy numberForKey:@"kServiceInstanceID"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [subtypeCopy identifier];

  v10 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5 && v6)
  {
    services = [(HMAccessory *)self services];
    v12 = [services hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateServiceSubtype:v5];
      if (v10)
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:v10 error:0];
      }

      else
      {
        _privateDelegate = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          context3 = [(HMAccessory *)self context];
          delegateCaller2 = [context3 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __37__HMAccessory__handleServiceSubtype___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = _privateDelegate;
          selfCopy = self;
          v21 = v12;
          [delegateCaller2 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceDefaultNameUpdate:(id)update
{
  updateCopy = update;
  v5 = [updateCopy stringForKey:@"kServiceName"];
  v6 = [updateCopy numberForKey:@"kServiceInstanceID"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updateCopy identifier];

  v10 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5 && v6)
  {
    services = [(HMAccessory *)self services];
    v12 = [services hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateDefaultName:v5];
      if (v10)
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:v10 error:0];
      }

      else
      {
        _privateDelegate = [(HMAccessory *)self _privateDelegate];
        if (objc_opt_respondsToSelector())
        {
          context3 = [(HMAccessory *)self context];
          delegateCaller2 = [context3 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __47__HMAccessory__handleServiceDefaultNameUpdate___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = _privateDelegate;
          selfCopy = self;
          v21 = v12;
          [delegateCaller2 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_handleServiceRenamed:(id)renamed
{
  renamedCopy = renamed;
  v5 = [renamedCopy stringForKey:@"kServiceName"];
  v6 = [renamedCopy numberForKey:@"kServiceInstanceID"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [renamedCopy identifier];

  v10 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5 && v6)
  {
    services = [(HMAccessory *)self services];
    v12 = [services hmf_firstObjectWithInstanceID:v6];

    if (v12)
    {
      [v12 _handleUpdateName:v5];
      if (v10)
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:v10 error:0];
      }

      else
      {
        delegate = [(HMAccessory *)self delegate];
        if (objc_opt_respondsToSelector())
        {
          context3 = [(HMAccessory *)self context];
          delegateCaller2 = [context3 delegateCaller];
          v18[0] = MEMORY[0x1E69E9820];
          v18[1] = 3221225472;
          v18[2] = __37__HMAccessory__handleServiceRenamed___block_invoke;
          v18[3] = &unk_1E754E5E8;
          v19 = delegate;
          selfCopy = self;
          v21 = v12;
          [delegateCaller2 invokeBlock:v18];
        }
      }
    }
  }
}

- (void)_deleteSiriHistoryWithCompletion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _deleteSiriHistoryWithCompletion:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    dispatch_assert_queue_V2(queue);

    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Sending delete siri history request", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    siriEndpointProfile = [(HMAccessory *)selfCopy2 siriEndpointProfile];
    v13 = siriEndpointProfile;
    if (siriEndpointProfile)
    {
      [siriEndpointProfile deleteSiriHistoryWithCompletionHandler:completionCopy];
    }

    else
    {
      messageDispatcher = [v6 messageDispatcher];
      v19 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMAccessory *)selfCopy2 uuid];
      v21 = [v19 initWithTarget:uuid];

      v22 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryDeleteSiriHistoryRequestMessage" destination:v21 payload:0];
      objc_initWeak(buf, selfCopy2);
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __48__HMAccessory__deleteSiriHistoryWithCompletion___block_invoke;
      v30[3] = &unk_1E754D058;
      objc_copyWeak(&v33, buf);
      v31 = v6;
      v32 = completionCopy;
      [v22 setResponseHandler:v30];
      [messageDispatcher sendMessage:v22 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(buf);

      v13 = 0;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    (*(completionCopy + 2))(completionCopy, v13);
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

- (void)deleteSiriHistoryWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory deleteSiriHistoryWithCompletion:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__HMAccessory_deleteSiriHistoryWithCompletion___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = completionCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(completionCopy + 2))(completionCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_auditPairingsWithCompletionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _auditPairingsWithCompletionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (home)
    {
      v8 = home;
      v9 = objc_alloc(MEMORY[0x1E69A2A10]);
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMAccessory *)self uuid];
      v12 = [v10 initWithTarget:uuid];
      v13 = [v9 initWithName:@"HMA.auditPairings" destination:v12 payload:0];

      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 3221225472;
      v29[2] = __51__HMAccessory__auditPairingsWithCompletionHandler___block_invoke;
      v29[3] = &unk_1E754DE00;
      v29[4] = self;
      v30 = handlerCopy;
      [v13 setResponseHandler:v29];
      messageDispatcher = [v6 messageDispatcher];
      [messageDispatcher sendMessage:v13];
    }

    else
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller = [context2 delegateCaller];
      v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v21];

      v8 = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v8);
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

- (void)_listPairingsWithCompletionHandler:(id)handler
{
  v40 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"You must provide a completion handler" userInfo:0];
    objc_exception_throw(v27);
  }

  v5 = handlerCopy;
  home = [(HMAccessory *)self home];
  context = [(HMAccessory *)self context];
  v8 = context;
  if (home)
  {
    if (context)
    {
      v9 = objc_alloc(MEMORY[0x1E69A2A10]);
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid = [(HMAccessory *)self uuid];
      v12 = [v10 initWithTarget:uuid];
      v13 = [v9 initWithName:@"kListPairingsRequestKey" destination:v12 payload:0];

      pendingRequests = [v8 pendingRequests];
      identifier = [v13 identifier];
      v16 = _Block_copy(v5);
      [pendingRequests addCompletionBlock:v16 forIdentifier:identifier];

      v28 = MEMORY[0x1E69E9820];
      v29 = 3221225472;
      v30 = __50__HMAccessory__listPairingsWithCompletionHandler___block_invoke;
      v31 = &unk_1E754D030;
      v32 = pendingRequests;
      v33 = identifier;
      selfCopy = self;
      v35 = v5;
      v17 = identifier;
      v18 = pendingRequests;
      [v13 setResponseHandler:&v28];
      messageDispatcher = [v8 messageDispatcher];
      [messageDispatcher sendMessage:v13];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
    delegateCaller = [context delegateCaller];
    v21 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    [delegateCaller callCompletion:v5 obj:0 error:v21];
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

- (BOOL)_updateFromAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  transportTypes = [(HMAccessory *)self transportTypes];
  transportTypes2 = [accessoryCopy transportTypes];
  v7 = transportTypes == transportTypes2;
  v8 = transportTypes != transportTypes2;
  if (!v7)
  {
    -[HMAccessory setTransportTypes:](self, "setTransportTypes:", [accessoryCopy transportTypes]);
  }

  os_unfair_lock_unlock(&self->_lock);
  knownToSystemCommissioner = [(HMAccessory *)self knownToSystemCommissioner];
  if (knownToSystemCommissioner != [accessoryCopy knownToSystemCommissioner])
  {
    -[HMAccessory setKnownToSystemCommissioner:](self, "setKnownToSystemCommissioner:", [accessoryCopy knownToSystemCommissioner]);
    v8 = 1;
  }

  serialNumber = [(HMAccessory *)self serialNumber];
  serialNumber2 = [accessoryCopy serialNumber];
  v12 = [serialNumber isEqualToString:serialNumber2];

  if ((v12 & 1) == 0)
  {
    serialNumber3 = [accessoryCopy serialNumber];
    [(HMAccessory *)self setSerialNumber:serialNumber3];

    v8 = 1;
  }

  productID = [(HMAccessory *)self productID];
  productID2 = [accessoryCopy productID];
  v16 = HMFEqualObjects();

  if ((v16 & 1) == 0)
  {
    productID3 = [accessoryCopy productID];
    [(HMAccessory *)self setProductID:productID3];

    v8 = 1;
  }

  vendorID = [(HMAccessory *)self vendorID];
  vendorID2 = [accessoryCopy vendorID];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    vendorID3 = [accessoryCopy vendorID];
    [(HMAccessory *)self setVendorID:vendorID3];

    v8 = 1;
  }

  nodeID = [(HMAccessory *)self nodeID];
  nodeID2 = [accessoryCopy nodeID];
  v24 = HMFEqualObjects();

  if ((v24 & 1) == 0)
  {
    nodeID3 = [accessoryCopy nodeID];
    [(HMAccessory *)self setNodeID:nodeID3];

    v8 = 1;
  }

  requiresThreadRouter = [(HMAccessory *)self requiresThreadRouter];
  if (requiresThreadRouter != [accessoryCopy requiresThreadRouter])
  {
    -[HMAccessory setRequiresThreadRouter:](self, "setRequiresThreadRouter:", [accessoryCopy requiresThreadRouter]);
    v8 = 1;
  }

  matterWEDSupport = [(HMAccessory *)self matterWEDSupport];
  matterWEDSupport2 = [accessoryCopy matterWEDSupport];
  v29 = HMFEqualObjects();

  if ((v29 & 1) == 0)
  {
    matterWEDSupport3 = [accessoryCopy matterWEDSupport];
    [(HMAccessory *)self setMatterWEDSupport:matterWEDSupport3];

    v8 = 1;
  }

  matterExtendedMACAddress = [(HMAccessory *)self matterExtendedMACAddress];
  matterExtendedMACAddress2 = [accessoryCopy matterExtendedMACAddress];
  v33 = HMFEqualObjects();

  if ((v33 & 1) == 0)
  {
    matterExtendedMACAddress3 = [accessoryCopy matterExtendedMACAddress];
    [(HMAccessory *)self setMatterExtendedMACAddress:matterExtendedMACAddress3];

    v8 = 1;
  }

  supportedLinkLayerTypes = [(HMAccessory *)self supportedLinkLayerTypes];
  supportedLinkLayerTypes2 = [accessoryCopy supportedLinkLayerTypes];
  v37 = HMFEqualObjects();

  if ((v37 & 1) == 0)
  {
    supportedLinkLayerTypes3 = [accessoryCopy supportedLinkLayerTypes];
    [(HMAccessory *)self setSupportedLinkLayerTypes:supportedLinkLayerTypes3];

    v8 = 1;
  }

  rootPublicKey = [(HMAccessory *)self rootPublicKey];
  rootPublicKey2 = [accessoryCopy rootPublicKey];
  v41 = [rootPublicKey isEqualToData:rootPublicKey2];

  if ((v41 & 1) == 0)
  {
    rootPublicKey3 = [accessoryCopy rootPublicKey];
    [(HMAccessory *)self setRootPublicKey:rootPublicKey3];

    v8 = 1;
  }

  matterDeviceTypeID = [(HMAccessory *)self matterDeviceTypeID];
  matterDeviceTypeID2 = [accessoryCopy matterDeviceTypeID];
  v45 = HMFEqualObjects();

  if ((v45 & 1) == 0)
  {
    matterDeviceTypeID3 = [accessoryCopy matterDeviceTypeID];

    if (matterDeviceTypeID3)
    {
      matterDeviceTypeID4 = [accessoryCopy matterDeviceTypeID];
      [(HMAccessory *)self setMatterDeviceTypeID:matterDeviceTypeID4];

      v8 = 1;
    }
  }

  return v8;
}

- (void)_identifyWithCompletionHandler:(id)handler
{
  v33 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v27 = @"kAccessoryUUID";
    uuid = [(HMAccessory *)self uuid];
    uUIDString = [uuid UUIDString];
    v28 = uUIDString;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMAccessory *)self uuid];
    v12 = [v10 initWithTarget:uuid2];
    v13 = [v9 initWithName:@"kIdentifyAccessoryRequestKey" destination:v12 payload:v8];

    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __46__HMAccessory__identifyWithCompletionHandler___block_invoke;
    v24 = &unk_1E754DE00;
    v14 = context;
    v25 = v14;
    v26 = handlerCopy;
    [v13 setResponseHandler:&v21];
    messageDispatcher = [v14 messageDispatcher];
    [messageDispatcher sendMessage:v13];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  context = [(HMAccessory *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory identifyWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __45__HMAccessory_identifyWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)setSupportsIdentify:(BOOL)identify
{
  os_unfair_lock_lock_with_options();
  self->_supportsIdentify = identify;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)updateAccessoryInfo:(id)info
{
  infoCopy = info;
  delegate = [(HMAccessory *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63E80])
  {
    v6 = delegate;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [infoCopy hmf_stringForKey:@"kAccessoryVendorInfoBundleIDKey"];
  bundleID = [(HMAccessory *)self bundleID];
  v10 = HMFEqualObjects();

  if ((v10 & 1) == 0)
  {
    [(HMAccessory *)self setBundleID:v8];
    if (objc_opt_respondsToSelector())
    {
      context = [(HMAccessory *)self context];
      delegateCaller = [context delegateCaller];
      v51[0] = MEMORY[0x1E69E9820];
      v51[1] = 3221225472;
      v51[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke;
      v51[3] = &unk_1E754E5E8;
      v52 = v7;
      selfCopy = self;
      v54 = v8;
      [delegateCaller invokeBlock:v51];
    }
  }

  v13 = [infoCopy hmf_stringForKey:@"kAccessoryVendorInfoStoreIDKey"];
  storeID = [(HMAccessory *)self storeID];
  v15 = HMFEqualObjects();

  if ((v15 & 1) == 0)
  {
    [(HMAccessory *)self setStoreID:v13];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_2;
      v47[3] = &unk_1E754E5E8;
      v48 = v7;
      selfCopy2 = self;
      v50 = v13;
      [delegateCaller2 invokeBlock:v47];
    }
  }

  v18 = [infoCopy hmf_BOOLForKey:@"kAccessoryVendorInfoFirmwareUpdateAvailableKey"];
  if (v18 != [(HMAccessory *)self isFirmwareUpdateAvailable])
  {
    [(HMAccessory *)self setFirmwareUpdateAvailable:v18];
    if (objc_opt_respondsToSelector())
    {
      context3 = [(HMAccessory *)self context];
      delegateCaller3 = [context3 delegateCaller];
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_3;
      v43[3] = &unk_1E754DC70;
      v44 = v7;
      selfCopy3 = self;
      v46 = v18;
      [delegateCaller3 invokeBlock:v43];
    }
  }

  v21 = [infoCopy hmf_stringForKey:{@"kAccessoryInfoManufacturerKey", v13}];
  manufacturer = [(HMAccessory *)self manufacturer];
  v23 = HMFEqualObjects();

  if ((v23 & 1) == 0)
  {
    [(HMAccessory *)self setManufacturer:v21];
  }

  v24 = v7;
  v25 = [infoCopy hmf_stringForKey:@"kAccessoryInfoModelKey"];
  model = [(HMAccessory *)self model];
  v27 = HMFEqualObjects();

  if ((v27 & 1) == 0)
  {
    [(HMAccessory *)self setModel:v25];
  }

  v28 = v8;
  v29 = [infoCopy hmf_stringForKey:@"kAccessoryInfoFirmwareVersionKey"];
  firmwareVersion = [(HMAccessory *)self firmwareVersion];
  v31 = HMFEqualObjects();

  if ((v31 & 1) == 0)
  {
    [(HMAccessory *)self setFirmwareVersion:v29];
    delegate2 = [(HMAccessory *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      context4 = [(HMAccessory *)self context];
      delegateCaller4 = [context4 delegateCaller];
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __35__HMAccessory_updateAccessoryInfo___block_invoke_4;
      v39[3] = &unk_1E754E5E8;
      v40 = delegate2;
      selfCopy4 = self;
      v42 = v29;
      [delegateCaller4 invokeBlock:v39];
    }
  }

  v35 = [infoCopy hmf_stringForKey:@"kAccessoryInfoSerialNumberKey"];
  serialNumber = [(HMAccessory *)self serialNumber];
  v37 = HMFEqualObjects();

  if ((v37 & 1) == 0)
  {
    [(HMAccessory *)self setSerialNumber:v35];
  }
}

- (void)_handleAccessoryFlagsChanged:(id)changed
{
  v21 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  messagePayload = [changedCopy messagePayload];
  v6 = [messagePayload hmf_numberForKey:@"HM.accessoryFlagsKey"];

  LOBYTE(messagePayload) = [v6 integerValue];
  additionalSetupStatus = [(HMAccessory *)self additionalSetupStatus];
  if (messagePayload)
  {
    if (additionalSetupStatus == 1)
    {
      goto LABEL_7;
    }

    v8 = 1;
  }

  else
  {
    if (additionalSetupStatus == 2)
    {
      goto LABEL_7;
    }

    v8 = 2;
  }

  [(HMAccessory *)self setAdditionalSetupStatus:v8];
  [(HMAccessory *)self _notifyDelegatesOfAdditionalSetupRequiredChange];
LABEL_7:
  integerValue = [v6 integerValue];
  calibrationStatus = [(HMAccessory *)self calibrationStatus];
  if ((integerValue & 2) != 0)
  {
    if (calibrationStatus != 1)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
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

  else if (calibrationStatus != 2)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

- (void)_handleAccessoryNotificationsUpdated:(id)updated
{
  v60 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  selfCopy = self;
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v31 = pendingRequests;
  v42 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v32 = updatedCopy;
  [updatedCopy dictionaryForKey:@"kModifiedNotificationsForAccessoryKey"];
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
        home = [(HMAccessory *)selfCopy home];
        v12 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v10];
        v43 = [home accessoryWithUUID:v12];

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
    context2 = [(HMAccessory *)selfCopy context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v42 error:v8];
  }

  v30 = *MEMORY[0x1E69E9840];
}

- (void)handleRuntimeStateUpdate:(id)update
{
  v16 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  [(HMAccessory *)self _handleConnectivityChanged:updateCopy];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  profiles = [(HMAccessory *)self profiles];
  v6 = [profiles countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(profiles);
        }

        [*(*(&v11 + 1) + 8 * v9++) handleRuntimeStateUpdate:updateCopy];
      }

      while (v7 != v9);
      v7 = [profiles countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_handleConnectivityChanged:(id)changed
{
  v45 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = [changedCopy hmf_numberForKey:@"kAccessoryIsReachableKey"];
  v6 = v5;
  if (!v5 || (v7 = [v5 BOOLValue], v8 = -[HMAccessory suspendCapable](self, "suspendCapable") | v7, (v8 & 1) == -[HMAccessory isReachable](self, "isReachable")))
  {
    v15 = 0;
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy isReachable];
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
    [(HMAccessory *)selfCopy setReachable:v8 & 1];
    v15 = 1;
  }

  v16 = [changedCopy hmf_numberForKey:@"HM.suspendedState"];
  v17 = v16;
  if (v16 && (v18 = [v16 unsignedIntegerValue], v18 != -[HMAccessory suspendedState](self, "suspendedState")))
  {
    [(HMAccessory *)self setSuspendedState:v18];
  }

  else if (!v15)
  {
    goto LABEL_15;
  }

  delegate = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)self context];
    delegateCaller = [context delegateCaller];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __42__HMAccessory__handleConnectivityChanged___block_invoke;
    v36[3] = &unk_1E754E5C0;
    v37 = delegate;
    selfCopy2 = self;
    [delegateCaller invokeBlock:v36];
  }

LABEL_15:
  v22 = [changedCopy hmf_numberForKey:@"controllable"];
  v23 = v22;
  if (v22)
  {
    bOOLValue = [v22 BOOLValue];
    if (bOOLValue != [(HMAccessory *)self isControllable])
    {
      [(HMAccessory *)self setControllable:bOOLValue];
      [(HMAccessory *)self _notifyDelegatesOfUpdatedControllable];
    }
  }

  v25 = [changedCopy hmf_numberForKey:@"HM.accessoryReachableTransports"];
  if (v25)
  {
    reachableTransports = [(HMAccessory *)self reachableTransports];
    if (reachableTransports != [v25 integerValue])
    {
      -[HMAccessory setReachableTransports:](self, "setReachableTransports:", [v25 integerValue]);
      delegate2 = [(HMAccessory *)self delegate];
      if ([delegate2 conformsToProtocol:&unk_1F0F63E80])
      {
        v28 = delegate2;
      }

      else
      {
        v28 = 0;
      }

      v29 = v28;

      if (objc_opt_respondsToSelector())
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller2 = [context2 delegateCaller];
        v33[0] = MEMORY[0x1E69E9820];
        v33[1] = 3221225472;
        v33[2] = __42__HMAccessory__handleConnectivityChanged___block_invoke_2;
        v33[3] = &unk_1E754E5C0;
        v34 = v29;
        selfCopy3 = self;
        [delegateCaller2 invokeBlock:v33];
      }
    }
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)_handlePairingStateChanged:(id)changed
{
  v27 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  v5 = [changedCopy numberForKey:@"kAccessoryIsPairedKey"];
  v6 = v5;
  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
    if (bOOLValue != [(HMAccessory *)self paired])
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        [(HMAccessory *)selfCopy paired];
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
      [(HMAccessory *)selfCopy setPaired:bOOLValue];
      delegate = [(HMAccessory *)selfCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMAccessory *)selfCopy context];
        delegateCaller = [context delegateCaller];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __42__HMAccessory__handlePairingStateChanged___block_invoke;
        v18[3] = &unk_1E754E5C0;
        v19 = delegate;
        v20 = selfCopy;
        [delegateCaller invokeBlock:v18];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_handleRenamed:(id)renamed
{
  v32 = *MEMORY[0x1E69E9840];
  renamedCopy = renamed;
  v5 = [renamedCopy stringForKey:@"kAccessoryName"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [renamedCopy identifier];
  v9 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5)
  {
    name = [(HMAccessory *)self name];
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
      selfCopy = self;
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
      [(HMAccessory *)selfCopy setName:v5];
      if (!v9)
      {
        delegate = [(HMAccessory *)selfCopy delegate];
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          goto LABEL_10;
        }

        v19 = objc_autoreleasePoolPush();
        v20 = selfCopy;
        v21 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier();
          *buf = 138543362;
          v29 = v22;
          _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated name", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v19);
        context2 = [(HMAccessory *)v20 context];
        delegateCaller = [context2 delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __30__HMAccessory__handleRenamed___block_invoke;
        v25[3] = &unk_1E754E5C0;
        delegate = delegate;
        v26 = delegate;
        v27 = v20;
        [delegateCaller invokeBlock:v25];

        delegateCaller2 = v26;
LABEL_9:

LABEL_10:
        goto LABEL_11;
      }
    }

    delegate = [(HMAccessory *)self context];
    delegateCaller2 = [delegate delegateCaller];
    [delegateCaller2 callCompletion:v9 error:0];
    goto LABEL_9;
  }

LABEL_11:

  v18 = *MEMORY[0x1E69E9840];
}

- (void)_handleCharacteristicValueUpdated:(id)updated
{
  updatedCopy = updated;
  v5 = [updatedCopy numberForKey:@"kServiceInstanceID"];
  v6 = [updatedCopy numberForKey:@"kCharacteristicInstanceID"];
  messagePayload = [updatedCopy messagePayload];
  v8 = [messagePayload objectForKeyedSubscript:@"kCharacteristicValue"];

  v9 = [updatedCopy errorForKey:@"kCharacteristicErrorDataKey"];
  context = [(HMAccessory *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v13 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v5 && v6 && v8)
  {
    services = [(HMAccessory *)self services];
    v15 = [services hmf_firstObjectWithInstanceID:v5];

    if (v15)
    {
      v30 = v9;
      characteristics = [v15 characteristics];
      v17 = [characteristics hmf_firstObjectWithInstanceID:v6];

      v31 = v17;
      if (v17)
      {
        null = [MEMORY[0x1E695DFB0] null];

        v27 = v15;
        if (v8 == null)
        {

          v8 = 0;
        }

        value = [v17 value];
        headers = [updatedCopy headers];
        v20 = [headers hmf_dateForKey:@"HMXPCMessageSentDateKey"];

        v28 = v20;
        [v17 _updateValue:v8 valueUpdatedDate:v20];
        if (v13)
        {
          context2 = [(HMAccessory *)self context];
          delegateCaller = [context2 delegateCaller];
          v9 = v30;
          [delegateCaller callCompletion:v13 error:v30];

          v23 = value;
          v15 = v27;
        }

        else
        {
          v9 = v30;
          v23 = value;
          v15 = v27;
          if ((HMFEqualObjects() & 1) == 0)
          {
            delegate = [(HMAccessory *)self delegate];
            if (objc_opt_respondsToSelector())
            {
              context3 = [(HMAccessory *)self context];
              delegateCaller2 = [context3 delegateCaller];
              v32[0] = MEMORY[0x1E69E9820];
              v32[1] = 3221225472;
              v32[2] = __49__HMAccessory__handleCharacteristicValueUpdated___block_invoke;
              v32[3] = &unk_1E754DE30;
              v33 = delegate;
              selfCopy = self;
              v35 = v27;
              v36 = v31;
              [delegateCaller2 invokeBlock:v32];

              v23 = value;
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
  uniqueIdentifier = [(HMAccessory *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)notifyDelegateOfUpdatedWiFiNetworkInfo
{
  v20 = *MEMORY[0x1E69E9840];
  delegate = [(HMAccessory *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63E80])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMAccessory_notifyDelegateOfUpdatedWiFiNetworkInfo__block_invoke;
    v13[3] = &unk_1E754E5C0;
    v14 = v5;
    v15 = selfCopy;
    [delegateCaller invokeBlock:v13];
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
  delegate = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(HMAccessory *)self context];
    queue = [context queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __46__HMAccessory_notifyDelegateOfUpdatedServices__block_invoke;
    v6[3] = &unk_1E754E5C0;
    v6[4] = self;
    v7 = delegate;
    dispatch_async(queue, v6);
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
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy supportsMediaContentProfile];
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
      v20 = selfCopy;
      [delegateCaller invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = context;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsMediaContentProfile support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsJustSiri
{
  v27 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy supportsJustSiri];
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
      v20 = selfCopy;
      [delegateCaller invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = context;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsJustSiri support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsRMVonAppleTV
{
  v27 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy supportsRMVonAppleTV];
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
      v20 = selfCopy;
      [delegateCaller invokeBlock:v18];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v16;
      v23 = 2112;
      v24 = context;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated supportsRMVonAppleTV support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedPreferredMediaUser
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v19 = selfCopy;
      [delegateCaller invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = context;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated preferred media user missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateUpdatedSupportsPreferredMediaUser
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v19 = selfCopy;
      [delegateCaller invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = context;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated preferred media user support due to missing delegateCaller: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAudioDestinationControllerUpdate
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v19 = selfCopy;
      [delegateCaller invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = context;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of audio destination controller update due to missing delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAudioDestinationUpdate
{
  v24 = *MEMORY[0x1E69E9840];
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMAccessory *)self delegate];
    if ([delegate conformsToProtocol:&unk_1F0F63E80])
    {
      v6 = delegate;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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
      v19 = selfCopy;
      [delegateCaller invokeBlock:v17];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = context;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of audio destination update due to missing delegate caller from context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_mergeProfiles:(id)profiles
{
  v27 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v5 = [HMObjectMergeCollection alloc];
  accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
  array = [accessoryProfiles array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:profilesCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __30__HMAccessory__mergeProfiles___block_invoke;
  v24[3] = &unk_1E754B578;
  v24[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v24];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __30__HMAccessory__mergeProfiles___block_invoke_1333;
  v23[3] = &unk_1E754B578;
  v23[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v23];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
  accessoryProfiles2 = [(HMAccessory *)self accessoryProfiles];
  [accessoryProfiles2 setArray:finalObjects];

  removedObjects2 = [(HMObjectMergeCollection *)v8 removedObjects];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __30__HMAccessory__mergeProfiles___block_invoke_1334;
  v22[3] = &unk_1E754B578;
  v22[4] = self;
  [removedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v22];

  addedObjects2 = [(HMObjectMergeCollection *)v8 addedObjects];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __30__HMAccessory__mergeProfiles___block_invoke_1336;
  v21[3] = &unk_1E754B578;
  v21[4] = self;
  [addedObjects2 hmf_enumerateWithAutoreleasePoolUsingBlock:v21];

  if ([(HMObjectMergeCollection *)v8 isModified])
  {
    delegate = [(HMAccessory *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v26 = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Delegate does not implement accessory profile methods, calling accessoryDidUpdateServices:. This behavior is not documented and will be removed in the near future. Please adopt accessory:didAddProfile: and/or accessory:didRemoveProfile:.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      [(HMAccessory *)selfCopy notifyDelegateOfUpdatedServices];
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

- (BOOL)_mergeRemoteLoginHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  remoteLoginHandler = [(HMAccessory *)self remoteLoginHandler];

  if (!handlerCopy || remoteLoginHandler)
  {
    remoteLoginHandler2 = [(HMAccessory *)self remoteLoginHandler];

    v11 = 0;
    if (handlerCopy && remoteLoginHandler2)
    {
      remoteLoginHandler3 = [(HMAccessory *)self remoteLoginHandler];
      v11 = [remoteLoginHandler3 mergeFromNewObject:handlerCopy];
    }
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = handlerCopy;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Merging new remote login handler: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    [(HMAccessory *)selfCopy setRemoteLoginHandler:handlerCopy];
    context = [(HMAccessory *)selfCopy context];
    [handlerCopy _configureWithContext:context accessory:selfCopy];

    [handlerCopy registerForMessages];
    [handlerCopy postConfigure];
    v11 = 1;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v747 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  home = [(HMAccessory *)self home];
  if (!v6)
  {
    v48 = 0;
    goto LABEL_424;
  }

  v656 = objectCopy;
  services = [v6 services];
  v8 = [(HMAccessory *)self _mergeServices:services];

  LODWORD(services) = [(HMAccessory *)self isDemoAccessory];
  if (services != [v6 isDemoAccessory])
  {
    -[HMAccessory setDemoAccessory:](self, "setDemoAccessory:", [v6 demoAccessory]);
    v8 = 1;
  }

  controlTargetUUIDs = [v6 controlTargetUUIDs];
  v10 = [(HMAccessory *)self _mergeControlTargetUUIDs:controlTargetUUIDs];

  LODWORD(controlTargetUUIDs) = [(HMAccessory *)self supportsTargetControl];
  if (controlTargetUUIDs == [v6 supportsTargetControl] && (v11 = -[HMAccessory supportsTargetController](self, "supportsTargetController"), v11 == objc_msgSend(v6, "supportsTargetController")) && (v12 = -[HMAccessory targetControllerHardwareSupport](self, "targetControllerHardwareSupport"), v12 == objc_msgSend(v6, "targetControllerHardwareSupport")))
  {
    v15 = v10 || v8;
  }

  else
  {
    -[HMAccessory setSupportsTargetControl:](self, "setSupportsTargetControl:", [v6 supportsTargetControl]);
    -[HMAccessory setSupportsTargetController:](self, "setSupportsTargetController:", [v6 supportsTargetController]);
    -[HMAccessory setTargetControllerHardwareSupport:](self, "setTargetControllerHardwareSupport:", [v6 targetControllerHardwareSupport]);
    context = [(HMAccessory *)self context];
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __34__HMAccessory_mergeFromNewObject___block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);

    v15 = 1;
  }

  supportsMultiUser = [(HMAccessory *)self supportsMultiUser];
  if (supportsMultiUser != [v6 supportsMultiUser])
  {
    -[HMAccessory setSupportsMultiUser:](self, "setSupportsMultiUser:", [v6 supportsMultiUser]);
    context2 = [(HMAccessory *)self context];
    queue2 = [context2 queue];
    v737[0] = MEMORY[0x1E69E9820];
    v737[1] = 3221225472;
    v737[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2;
    v737[3] = &unk_1E754E2A8;
    v737[4] = self;
    dispatch_async(queue2, v737);
  }

  supportsHomeLevelLocationServiceSetting = [(HMAccessory *)self supportsHomeLevelLocationServiceSetting];
  if (supportsHomeLevelLocationServiceSetting != [v6 supportsHomeLevelLocationServiceSetting])
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy = self;
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
    -[HMAccessory setSupportsHomeLevelLocationServiceSetting:](selfCopy, "setSupportsHomeLevelLocationServiceSetting:", [v6 supportsHomeLevelLocationServiceSetting]);
    context3 = [(HMAccessory *)selfCopy context];
    queue3 = [context3 queue];
    v736[0] = MEMORY[0x1E69E9820];
    v736[1] = 3221225472;
    v736[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1128;
    v736[3] = &unk_1E754E2A8;
    v736[4] = selfCopy;
    dispatch_async(queue3, v736);
  }

  supportsAudioReturnChannel = [(HMAccessory *)self supportsAudioReturnChannel];
  if (supportsAudioReturnChannel != [v6 supportsAudioReturnChannel])
  {
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    -[HMAccessory setSupportsAudioReturnChannel:](selfCopy2, "setSupportsAudioReturnChannel:", [v6 supportsAudioReturnChannel]);
    context4 = [(HMAccessory *)selfCopy2 context];
    queue4 = [context4 queue];
    v735[0] = MEMORY[0x1E69E9820];
    v735[1] = 3221225472;
    v735[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1129;
    v735[3] = &unk_1E754E2A8;
    v735[4] = selfCopy2;
    dispatch_async(queue4, v735);
  }

  supportsCompanionInitiatedRestart = [(HMAccessory *)self supportsCompanionInitiatedRestart];
  if (supportsCompanionInitiatedRestart != [v6 supportsCompanionInitiatedRestart])
  {
    -[HMAccessory setSupportsCompanionInitiatedRestart:](self, "setSupportsCompanionInitiatedRestart:", [v6 supportsCompanionInitiatedRestart]);
    context5 = [(HMAccessory *)self context];
    queue5 = [context5 queue];
    v734[0] = MEMORY[0x1E69E9820];
    v734[1] = 3221225472;
    v734[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1130;
    v734[3] = &unk_1E754E2A8;
    v734[4] = self;
    dispatch_async(queue5, v734);
  }

  supportsCompanionInitiatedObliterate = [(HMAccessory *)self supportsCompanionInitiatedObliterate];
  if (supportsCompanionInitiatedObliterate != [v6 supportsCompanionInitiatedObliterate])
  {
    -[HMAccessory setSupportsCompanionInitiatedObliterate:](self, "setSupportsCompanionInitiatedObliterate:", [v6 supportsCompanionInitiatedObliterate]);
    context6 = [(HMAccessory *)self context];
    queue6 = [context6 queue];
    v733[0] = MEMORY[0x1E69E9820];
    v733[1] = 3221225472;
    v733[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3;
    v733[3] = &unk_1E754E2A8;
    v733[4] = self;
    dispatch_async(queue6, v733);
  }

  supportsMusicAlarm = [(HMAccessory *)self supportsMusicAlarm];
  if (supportsMusicAlarm != [v6 supportsMusicAlarm])
  {
    -[HMAccessory setSupportsMusicAlarm:](self, "setSupportsMusicAlarm:", [v6 supportsMusicAlarm]);
    context7 = [(HMAccessory *)self context];
    queue7 = [context7 queue];
    v732[0] = MEMORY[0x1E69E9820];
    v732[1] = 3221225472;
    v732[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4;
    v732[3] = &unk_1E754E2A8;
    v732[4] = self;
    dispatch_async(queue7, v732);
  }

  supportsAnnounce = [(HMAccessory *)self supportsAnnounce];
  if (supportsAnnounce != [v6 supportsAnnounce])
  {
    -[HMAccessory setSupportsAnnounce:](self, "setSupportsAnnounce:", [v6 supportsAnnounce]);
    _privateDelegate = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context8 = [(HMAccessory *)self context];
      queue8 = [context8 queue];
      v730[0] = MEMORY[0x1E69E9820];
      v730[1] = 3221225472;
      v730[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_5;
      v730[3] = &unk_1E754E5C0;
      v730[4] = self;
      v731 = _privateDelegate;
      dispatch_async(queue8, v730);
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v52;
        v741 = 2112;
        v742 = _privateDelegate;
        _os_log_impl(&dword_19BB39000, v51, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports announce update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  supportsMediaActions = [(HMAccessory *)self supportsMediaActions];
  if (supportsMediaActions != [v6 supportsMediaActions])
  {
    -[HMAccessory setSupportsMediaActions:](self, "setSupportsMediaActions:", [v6 supportsMediaActions]);
    _privateDelegate2 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context9 = [(HMAccessory *)self context];
      queue9 = [context9 queue];
      v728[0] = MEMORY[0x1E69E9820];
      v728[1] = 3221225472;
      v728[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1133;
      v728[3] = &unk_1E754E5C0;
      v728[4] = self;
      v729 = _privateDelegate2;
      dispatch_async(queue9, v728);
    }

    else
    {
      v57 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v59 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v60;
        v741 = 2112;
        v742 = _privateDelegate2;
        _os_log_impl(&dword_19BB39000, v59, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports media actions update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v57);
    }
  }

  supportsDropIn = [(HMAccessory *)self supportsDropIn];
  if (supportsDropIn != [v6 supportsDropIn])
  {
    -[HMAccessory setSupportsDropIn:](self, "setSupportsDropIn:", [v6 supportsDropIn]);
    _privateDelegate3 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context10 = [(HMAccessory *)self context];
      queue10 = [context10 queue];
      v726[0] = MEMORY[0x1E69E9820];
      v726[1] = 3221225472;
      v726[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1136;
      v726[3] = &unk_1E754E5C0;
      v726[4] = self;
      v727 = _privateDelegate3;
      dispatch_async(queue10, v726);
    }

    else
    {
      v65 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v67 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
      {
        v68 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v68;
        v741 = 2112;
        v742 = _privateDelegate3;
        _os_log_impl(&dword_19BB39000, v67, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports drop in update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v65);
    }
  }

  supportsAudioAnalysis = [(HMAccessory *)self supportsAudioAnalysis];
  if (supportsAudioAnalysis != [v6 supportsAudioAnalysis])
  {
    -[HMAccessory setSupportsAudioAnalysis:](self, "setSupportsAudioAnalysis:", [v6 supportsAudioAnalysis]);
    _privateDelegate4 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context11 = [(HMAccessory *)self context];
      queue11 = [context11 queue];
      v724[0] = MEMORY[0x1E69E9820];
      v724[1] = 3221225472;
      v724[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1139;
      v724[3] = &unk_1E754E5C0;
      v724[4] = self;
      v725 = _privateDelegate4;
      dispatch_async(queue11, v724);
    }

    else
    {
      v73 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v75 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v75, OS_LOG_TYPE_INFO))
      {
        v76 = HMFGetLogIdentifier();
        *buf = 138543618;
        v740 = v76;
        v741 = 2112;
        v742 = _privateDelegate4;
        _os_log_impl(&dword_19BB39000, v75, OS_LOG_TYPE_INFO, "%{public}@Delegate does not implement supports audio analysis update: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v73);
    }
  }

  supportsThirdPartyMusic = [(HMAccessory *)self supportsThirdPartyMusic];
  if (supportsThirdPartyMusic != [v6 supportsThirdPartyMusic])
  {
    -[HMAccessory setSupportsThirdPartyMusic:](self, "setSupportsThirdPartyMusic:", [v6 supportsThirdPartyMusic]);
    _privateDelegate5 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context12 = [(HMAccessory *)self context];
      queue12 = [context12 queue];
      v722[0] = MEMORY[0x1E69E9820];
      v722[1] = 3221225472;
      v722[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1142;
      v722[3] = &unk_1E754E5C0;
      v722[4] = self;
      v723 = _privateDelegate5;
      dispatch_async(queue12, v722);
    }
  }

  supportsDoorbellChime = [(HMAccessory *)self supportsDoorbellChime];
  if (supportsDoorbellChime != [v6 supportsDoorbellChime])
  {
    -[HMAccessory setSupportsDoorbellChime:](self, "setSupportsDoorbellChime:", [v6 supportsDoorbellChime]);
    _privateDelegate6 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context13 = [(HMAccessory *)self context];
      queue13 = [context13 queue];
      v720[0] = MEMORY[0x1E69E9820];
      v720[1] = 3221225472;
      v720[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1145;
      v720[3] = &unk_1E754E5C0;
      v720[4] = self;
      v721 = _privateDelegate6;
      dispatch_async(queue13, v720);
    }
  }

  supportsUserMediaSettings = [(HMAccessory *)self supportsUserMediaSettings];
  if (supportsUserMediaSettings != [v6 supportsUserMediaSettings])
  {
    -[HMAccessory setSupportsUserMediaSettings:](self, "setSupportsUserMediaSettings:", [v6 supportsUserMediaSettings]);
    _privateDelegate7 = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context14 = [(HMAccessory *)self context];
      queue14 = [context14 queue];
      v718[0] = MEMORY[0x1E69E9820];
      v718[1] = 3221225472;
      v718[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1148;
      v718[3] = &unk_1E754E5C0;
      v718[4] = self;
      v719 = _privateDelegate7;
      dispatch_async(queue14, v718);
    }
  }

  name = [(HMAccessory *)self name];
  name2 = [v6 name];
  v91 = HMFEqualObjects();

  if ((v91 & 1) == 0)
  {
    v92 = objc_autoreleasePoolPush();
    selfCopy7 = self;
    v94 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
    {
      v95 = HMFGetLogIdentifier();
      name3 = [v6 name];
      *buf = 138543618;
      v740 = v95;
      v741 = 2112;
      v742 = name3;
      _os_log_impl(&dword_19BB39000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@Updated name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v92);
    name4 = [v6 name];
    [(HMAccessory *)selfCopy7 setName:name4];

    delegate = [(HMAccessory *)selfCopy7 delegate];
    v99 = objc_autoreleasePoolPush();
    v100 = selfCopy7;
    v101 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v101, OS_LOG_TYPE_INFO))
    {
      v102 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v102;
      v741 = 2112;
      v742 = delegate;
      _os_log_impl(&dword_19BB39000, v101, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update name with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v99);
    if (objc_opt_respondsToSelector())
    {
      context15 = [(HMAccessory *)v100 context];
      queue15 = [context15 queue];
      v716[0] = MEMORY[0x1E69E9820];
      v716[1] = 3221225472;
      v716[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1151;
      v716[3] = &unk_1E754E5C0;
      v716[4] = v100;
      v717 = delegate;
      dispatch_async(queue15, v716);
    }

    v15 = 1;
  }

  configuredName = [(HMAccessory *)self configuredName];
  configuredName2 = [v6 configuredName];
  v107 = HMFEqualObjects();

  if ((v107 & 1) == 0)
  {
    v108 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v110 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v110, OS_LOG_TYPE_INFO))
    {
      v111 = HMFGetLogIdentifier();
      configuredName3 = [v6 configuredName];
      *buf = 138543618;
      v740 = v111;
      v741 = 2112;
      v742 = configuredName3;
      _os_log_impl(&dword_19BB39000, v110, OS_LOG_TYPE_INFO, "%{public}@Updated configured name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v108);
    configuredName4 = [v6 configuredName];
    [(HMAccessory *)selfCopy8 setConfiguredName:configuredName4];

    delegate2 = [(HMAccessory *)selfCopy8 delegate];
    v115 = objc_autoreleasePoolPush();
    v116 = selfCopy8;
    v117 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v117, OS_LOG_TYPE_INFO))
    {
      v118 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v118;
      v741 = 2112;
      v742 = delegate2;
      _os_log_impl(&dword_19BB39000, v117, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update configured name with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v115);
    if (objc_opt_respondsToSelector())
    {
      context16 = [(HMAccessory *)v116 context];
      queue16 = [context16 queue];
      v714[0] = MEMORY[0x1E69E9820];
      v714[1] = 3221225472;
      v714[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1153;
      v714[3] = &unk_1E754E5C0;
      v714[4] = v116;
      v715 = delegate2;
      dispatch_async(queue16, v714);
    }
  }

  applicationData = [(HMAccessory *)self applicationData];
  applicationData2 = [v6 applicationData];
  v123 = HMFEqualObjects();

  if ((v123 & 1) == 0)
  {
    v124 = objc_autoreleasePoolPush();
    selfCopy9 = self;
    v126 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
    {
      v127 = HMFGetLogIdentifier();
      *buf = 138543362;
      v740 = v127;
      _os_log_impl(&dword_19BB39000, v126, OS_LOG_TYPE_INFO, "%{public}@Updated application data", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v124);
    applicationData3 = [v6 applicationData];
    [(HMAccessory *)selfCopy9 setApplicationData:applicationData3];

    _privateDelegate8 = [(HMAccessory *)selfCopy9 _privateDelegate];
    v130 = objc_autoreleasePoolPush();
    v131 = selfCopy9;
    v132 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v132, OS_LOG_TYPE_INFO))
    {
      v133 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v133;
      v741 = 2112;
      v742 = _privateDelegate8;
      _os_log_impl(&dword_19BB39000, v132, OS_LOG_TYPE_INFO, "%{public}@Notifying client of accessory did update application data with delegate: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v130);
    if (objc_opt_respondsToSelector())
    {
      context17 = [(HMAccessory *)v131 context];
      queue17 = [context17 queue];
      v712[0] = MEMORY[0x1E69E9820];
      v712[1] = 3221225472;
      v712[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1156;
      v712[3] = &unk_1E754E5C0;
      v712[4] = v131;
      v713 = _privateDelegate8;
      dispatch_async(queue17, v712);
    }

    v15 = 1;
  }

  room = [v6 room];
  room2 = [(HMAccessory *)self room];
  uuid = [room2 uuid];
  v657 = room;
  uuid2 = [room uuid];
  v140 = [uuid isEqual:uuid2];

  if ((v140 & 1) == 0)
  {
    uuid3 = [v657 uuid];
    v142 = [home roomWithUUID:uuid3];

    if (v142)
    {
      [(HMAccessory *)self setRoom:v142];
    }

    else
    {
      v143 = objc_autoreleasePoolPush();
      selfCopy10 = self;
      v145 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v145, OS_LOG_TYPE_DEFAULT))
      {
        v146 = HMFGetLogIdentifier();
        uuid4 = [v657 uuid];
        *buf = 138543618;
        v740 = v146;
        v741 = 2112;
        v742 = uuid4;
        _os_log_impl(&dword_19BB39000, v145, OS_LOG_TYPE_DEFAULT, "%{public}@Could not find HMRoom for updated room UUID via merge: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v143);
    }

    delegate3 = [home delegate];
    v149 = objc_autoreleasePoolPush();
    selfCopy11 = self;
    v151 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v151, OS_LOG_TYPE_INFO))
    {
      v152 = HMFGetLogIdentifier();
      *buf = 138544130;
      v740 = v152;
      v741 = 2112;
      v742 = v142;
      v743 = 2112;
      v744 = selfCopy11;
      v745 = 2112;
      v746 = delegate3;
      _os_log_impl(&dword_19BB39000, v151, OS_LOG_TYPE_INFO, "%{public}@Notifying client did update room: %@ for accessory: %@ delegate: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v149);
    if (objc_opt_respondsToSelector())
    {
      context18 = [(HMAccessory *)selfCopy11 context];
      queue18 = [context18 queue];
      v708[0] = MEMORY[0x1E69E9820];
      v708[1] = 3221225472;
      v708[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1160;
      v708[3] = &unk_1E754DE30;
      v708[4] = selfCopy11;
      v709 = delegate3;
      v710 = home;
      v711 = v142;
      dispatch_async(queue18, v708);
    }

    v15 = 1;
  }

  paired = [(HMAccessory *)self paired];
  v156 = paired ^ [v6 paired];
  if (v156 == 1)
  {
    -[HMAccessory setPaired:](self, "setPaired:", [v6 paired]);
    v15 = 1;
  }

  suspendedState = [(HMAccessory *)self suspendedState];
  if (suspendedState != [v6 suspendedState])
  {
    -[HMAccessory setSuspendedState:](self, "setSuspendedState:", [v6 suspendedState]);
    v156 = 1;
    v15 = 1;
  }

  supportsAccessCodes = [(HMAccessory *)self supportsAccessCodes];
  if (supportsAccessCodes != [v6 supportsAccessCodes])
  {
    -[HMAccessory setSupportsAccessCodes:](self, "setSupportsAccessCodes:", [v6 supportsAccessCodes]);
    v15 = 1;
  }

  supportsWalletKey = [(HMAccessory *)self supportsWalletKey];
  if (supportsWalletKey != [v6 supportsWalletKey])
  {
    -[HMAccessory setSupportsWalletKey:](self, "setSupportsWalletKey:", [v6 supportsWalletKey]);
    context19 = [(HMAccessory *)self context];
    queue19 = [context19 queue];
    v707[0] = MEMORY[0x1E69E9820];
    v707[1] = 3221225472;
    v707[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3_1162;
    v707[3] = &unk_1E754E2A8;
    v707[4] = self;
    dispatch_async(queue19, v707);

    v15 = 1;
  }

  supportsUWBUnlock = [(HMAccessory *)self supportsUWBUnlock];
  if (supportsUWBUnlock != [v6 supportsUWBUnlock])
  {
    -[HMAccessory setSupportsUWBUnlock:](self, "setSupportsUWBUnlock:", [v6 supportsUWBUnlock]);
    context20 = [(HMAccessory *)self context];
    queue20 = [context20 queue];
    v706[0] = MEMORY[0x1E69E9820];
    v706[1] = 3221225472;
    v706[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4_1163;
    v706[3] = &unk_1E754E2A8;
    v706[4] = self;
    dispatch_async(queue20, v706);

    v15 = 1;
  }

  readerGroupSubIdentifierACWG = [(HMAccessory *)self readerGroupSubIdentifierACWG];
  readerGroupSubIdentifierACWG2 = [v6 readerGroupSubIdentifierACWG];
  v167 = HMFEqualObjects();

  if ((v167 & 1) == 0)
  {
    v168 = objc_autoreleasePoolPush();
    selfCopy12 = self;
    v170 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v170, OS_LOG_TYPE_INFO))
    {
      v171 = HMFGetLogIdentifier();
      readerGroupSubIdentifierACWG3 = [(HMAccessory *)selfCopy12 readerGroupSubIdentifierACWG];
      readerGroupSubIdentifierACWG4 = [v6 readerGroupSubIdentifierACWG];
      *buf = 138543874;
      v740 = v171;
      v741 = 2112;
      v742 = readerGroupSubIdentifierACWG3;
      v743 = 2112;
      v744 = readerGroupSubIdentifierACWG4;
      _os_log_impl(&dword_19BB39000, v170, OS_LOG_TYPE_INFO, "%{public}@Updating readerGroupSubIdentifierACWG from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v168);
    readerGroupSubIdentifierACWG5 = [v6 readerGroupSubIdentifierACWG];
    [(HMAccessory *)selfCopy12 setReaderGroupSubIdentifierACWG:readerGroupSubIdentifierACWG5];

    v15 = 1;
  }

  readerIDACWG = [(HMAccessory *)self readerIDACWG];
  readerIDACWG2 = [v6 readerIDACWG];
  v177 = HMFEqualObjects();

  if ((v177 & 1) == 0)
  {
    v178 = objc_autoreleasePoolPush();
    selfCopy13 = self;
    v180 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v180, OS_LOG_TYPE_INFO))
    {
      v181 = HMFGetLogIdentifier();
      readerIDACWG3 = [(HMAccessory *)selfCopy13 readerIDACWG];
      readerIDACWG4 = [v6 readerIDACWG];
      *buf = 138543874;
      v740 = v181;
      v741 = 2112;
      v742 = readerIDACWG3;
      v743 = 2112;
      v744 = readerIDACWG4;
      _os_log_impl(&dword_19BB39000, v180, OS_LOG_TYPE_INFO, "%{public}@Updating readerIDACWG from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v178);
    readerIDACWG5 = [v6 readerIDACWG];
    [(HMAccessory *)selfCopy13 setReaderIDACWG:readerIDACWG5];

    v15 = 1;
  }

  weekDaySchedulesPerUserCapacity = [(HMAccessory *)self weekDaySchedulesPerUserCapacity];
  weekDaySchedulesPerUserCapacity2 = [v6 weekDaySchedulesPerUserCapacity];
  v187 = HMFEqualObjects();

  if ((v187 & 1) == 0)
  {
    v188 = objc_autoreleasePoolPush();
    selfCopy14 = self;
    v190 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v190, OS_LOG_TYPE_INFO))
    {
      v191 = HMFGetLogIdentifier();
      weekDaySchedulesPerUserCapacity3 = [(HMAccessory *)selfCopy14 weekDaySchedulesPerUserCapacity];
      weekDaySchedulesPerUserCapacity4 = [v6 weekDaySchedulesPerUserCapacity];
      *buf = 138543874;
      v740 = v191;
      v741 = 2112;
      v742 = weekDaySchedulesPerUserCapacity3;
      v743 = 2112;
      v744 = weekDaySchedulesPerUserCapacity4;
      _os_log_impl(&dword_19BB39000, v190, OS_LOG_TYPE_INFO, "%{public}@Updating weekDaySchedulesPerUserCapacity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v188);
    weekDaySchedulesPerUserCapacity5 = [v6 weekDaySchedulesPerUserCapacity];
    [(HMAccessory *)selfCopy14 setWeekDaySchedulesPerUserCapacity:weekDaySchedulesPerUserCapacity5];

    v15 = 1;
  }

  yearDaySchedulesPerUserCapacity = [(HMAccessory *)self yearDaySchedulesPerUserCapacity];
  yearDaySchedulesPerUserCapacity2 = [v6 yearDaySchedulesPerUserCapacity];
  v197 = HMFEqualObjects();

  if ((v197 & 1) == 0)
  {
    v198 = objc_autoreleasePoolPush();
    selfCopy15 = self;
    v200 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
    {
      v201 = HMFGetLogIdentifier();
      yearDaySchedulesPerUserCapacity3 = [(HMAccessory *)selfCopy15 yearDaySchedulesPerUserCapacity];
      yearDaySchedulesPerUserCapacity4 = [v6 yearDaySchedulesPerUserCapacity];
      *buf = 138543874;
      v740 = v201;
      v741 = 2112;
      v742 = yearDaySchedulesPerUserCapacity3;
      v743 = 2112;
      v744 = yearDaySchedulesPerUserCapacity4;
      _os_log_impl(&dword_19BB39000, v200, OS_LOG_TYPE_INFO, "%{public}@Updating yearDaySchedulesPerUserCapacity from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v198);
    yearDaySchedulesPerUserCapacity5 = [v6 yearDaySchedulesPerUserCapacity];
    [(HMAccessory *)selfCopy15 setYearDaySchedulesPerUserCapacity:yearDaySchedulesPerUserCapacity5];

    v15 = 1;
  }

  suspendCapable = [(HMAccessory *)self suspendCapable];
  if (suspendCapable != [v6 suspendCapable])
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

  isReachable = [(HMAccessory *)self isReachable];
  if (isReachable == [v6 isReachable])
  {
    if (!v156)
    {
      goto LABEL_143;
    }
  }

  else
  {
    v207 = objc_autoreleasePoolPush();
    selfCopy16 = self;
    v209 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v209, OS_LOG_TYPE_INFO))
    {
      v210 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy16 isReachable];
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
    -[HMAccessory setReachable:](selfCopy16, "setReachable:", [v6 isReachable]);
    v15 = 1;
  }

  delegate4 = [(HMAccessory *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context21 = [(HMAccessory *)self context];
    queue21 = [context21 queue];
    v704[0] = MEMORY[0x1E69E9820];
    v704[1] = 3221225472;
    v704[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1165;
    v704[3] = &unk_1E754E5C0;
    v704[4] = self;
    v705 = delegate4;
    dispatch_async(queue21, v704);
  }

LABEL_143:
  reachableTransports = [(HMAccessory *)self reachableTransports];
  v217 = "llMessage";
  if (reachableTransports != [v6 reachableTransports])
  {
    -[HMAccessory setReachableTransports:](self, "setReachableTransports:", [v6 reachableTransports]);
    delegate5 = [(HMAccessory *)self delegate];
    if ([delegate5 conformsToProtocol:&unk_1F0F63E80])
    {
      v219 = delegate5;
    }

    else
    {
      v219 = 0;
    }

    v220 = v219;

    if (objc_opt_respondsToSelector())
    {
      context22 = [(HMAccessory *)self context];
      queue22 = [context22 queue];
      v702[0] = MEMORY[0x1E69E9820];
      v702[1] = 3221225472;
      v702[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_3_1168;
      v702[3] = &unk_1E754E5C0;
      v702[4] = self;
      v703 = v220;
      dispatch_async(queue22, v702);
    }

    v15 = 1;
  }

  isControllable = [(HMAccessory *)self isControllable];
  if (isControllable != [v6 isControllable])
  {
    -[HMAccessory setControllable:](self, "setControllable:", [v6 isControllable]);
    context23 = [(HMAccessory *)self context];
    queue23 = [context23 queue];
    v701[0] = MEMORY[0x1E69E9820];
    v701[1] = 3221225472;
    v701[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_5_1170;
    v701[3] = &unk_1E754E2A8;
    v701[4] = self;
    dispatch_async(queue23, v701);

    v15 = 1;
  }

  accessoryReprovisionState = [(HMAccessory *)self accessoryReprovisionState];
  if (accessoryReprovisionState != [v6 accessoryReprovisionState])
  {
    -[HMAccessory setAccessoryReprovisionState:](self, "setAccessoryReprovisionState:", [v6 accessoryReprovisionState]);
    delegate6 = [home delegate];
    if ([delegate6 conformsToProtocol:&unk_1F0F63B38])
    {
      v228 = delegate6;
    }

    else
    {
      v228 = 0;
    }

    v229 = v228;

    if (objc_opt_respondsToSelector())
    {
      context24 = [(HMAccessory *)self context];
      queue24 = [context24 queue];
      v698[0] = MEMORY[0x1E69E9820];
      v698[1] = 3221225472;
      v698[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_6_1292;
      v698[3] = &unk_1E754E5E8;
      v698[4] = self;
      v699 = v229;
      v700 = home;
      dispatch_async(queue24, v698);
    }

    v15 = 1;
  }

  firmwareVersion = [(HMAccessory *)self firmwareVersion];
  firmwareVersion2 = [v6 firmwareVersion];
  v234 = HMFEqualObjects();

  if ((v234 & 1) == 0)
  {
    firmwareVersion3 = [v6 firmwareVersion];
    [(HMAccessory *)self setFirmwareVersion:firmwareVersion3];

    delegate7 = [(HMAccessory *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      context25 = [(HMAccessory *)self context];
      queue25 = [context25 queue];
      v696[0] = MEMORY[0x1E69E9820];
      v696[1] = 3221225472;
      v696[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_8;
      v696[3] = &unk_1E754E5C0;
      v696[4] = self;
      v697 = delegate7;
      dispatch_async(queue25, v696);
    }
  }

  isVendorAccessory = [(HMAccessory *)self isVendorAccessory];
  if (isVendorAccessory != [v6 isVendorAccessory])
  {
    -[HMAccessory setVendorAccessory:](self, "setVendorAccessory:", [v6 isVendorAccessory]);
    v15 = 1;
  }

  hAPInstanceID = [(HMAccessory *)self HAPInstanceID];
  hAPInstanceID2 = [v6 HAPInstanceID];
  v242 = HMFEqualObjects();

  if ((v242 & 1) == 0)
  {
    hAPInstanceID3 = [v6 HAPInstanceID];
    [(HMAccessory *)self setHAPInstanceID:hAPInstanceID3];

    v15 = 1;
  }

  delegate8 = [(HMAccessory *)self delegate];
  if ([delegate8 conformsToProtocol:&unk_1F0F63E80])
  {
    v245 = delegate8;
  }

  else
  {
    v245 = 0;
  }

  v246 = v245;

  bundleID = [(HMAccessory *)self bundleID];
  bundleID2 = [v6 bundleID];
  v249 = HMFEqualObjects();

  if ((v249 & 1) == 0)
  {
    bundleID3 = [v6 bundleID];
    [(HMAccessory *)self setBundleID:bundleID3];

    if (objc_opt_respondsToSelector())
    {
      context26 = [(HMAccessory *)self context];
      queue26 = [context26 queue];
      v694[0] = MEMORY[0x1E69E9820];
      v694[1] = 3221225472;
      v694[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_10;
      v694[3] = &unk_1E754E5C0;
      v694[4] = self;
      v695 = v246;
      dispatch_async(queue26, v694);
    }
  }

  storeID = [(HMAccessory *)self storeID];
  storeID2 = [v6 storeID];
  v255 = HMFEqualObjects();

  if ((v255 & 1) == 0)
  {
    storeID3 = [v6 storeID];
    [(HMAccessory *)self setStoreID:storeID3];

    if (objc_opt_respondsToSelector())
    {
      context27 = [(HMAccessory *)self context];
      queue27 = [context27 queue];
      v692[0] = MEMORY[0x1E69E9820];
      v692[1] = 3221225472;
      v692[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_12;
      v692[3] = &unk_1E754E5C0;
      v692[4] = self;
      v693 = v246;
      dispatch_async(queue27, v692);
    }
  }

  isFirmwareUpdateAvailable = [(HMAccessory *)self isFirmwareUpdateAvailable];
  if (isFirmwareUpdateAvailable != [v6 isFirmwareUpdateAvailable])
  {
    -[HMAccessory setFirmwareUpdateAvailable:](self, "setFirmwareUpdateAvailable:", [v6 isFirmwareUpdateAvailable]);
    if (objc_opt_respondsToSelector())
    {
      context28 = [(HMAccessory *)self context];
      queue28 = [context28 queue];
      v690[0] = MEMORY[0x1E69E9820];
      v690[1] = 3221225472;
      v690[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_14;
      v690[3] = &unk_1E754E5C0;
      v690[4] = self;
      v691 = v246;
      dispatch_async(queue28, v690);
    }
  }

  if ([v6 hasOnboardedForNaturalLighting] && !-[HMAccessory hasOnboardedForNaturalLighting](self, "hasOnboardedForNaturalLighting"))
  {
    v262 = objc_autoreleasePoolPush();
    selfCopy17 = self;
    v264 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
    {
      v265 = HMFGetLogIdentifier();
      *buf = 138543362;
      v740 = v265;
      _os_log_impl(&dword_19BB39000, v264, OS_LOG_TYPE_INFO, "%{public}@Updating has onboarded accessory for natural lighting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v262);
    [(HMAccessory *)selfCopy17 setHasOnboardedForNaturalLighting:1];
    if (objc_opt_respondsToSelector())
    {
      context29 = [(HMAccessory *)selfCopy17 context];
      queue29 = [context29 queue];
      v688[0] = MEMORY[0x1E69E9820];
      v688[1] = 3221225472;
      v688[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1298;
      v688[3] = &unk_1E754E5C0;
      v688[4] = selfCopy17;
      v689 = v246;
      dispatch_async(queue29, v688);
    }
  }

  supportedDiagnostics = [(HMAccessory(Diagnostics) *)self supportedDiagnostics];
  supportedDiagnostics2 = [v6 supportedDiagnostics];

  if (supportedDiagnostics != supportedDiagnostics2)
  {
    v270 = objc_autoreleasePoolPush();
    selfCopy18 = self;
    v272 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
    {
      v273 = HMFGetLogIdentifier();
      supportedDiagnostics3 = [v6 supportedDiagnostics];
      *buf = 138543618;
      v740 = v273;
      v741 = 2112;
      v742 = supportedDiagnostics3;
      _os_log_impl(&dword_19BB39000, v272, OS_LOG_TYPE_INFO, "%{public}@Updating diagnostics support to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v270);
    supportedDiagnostics4 = [v6 supportedDiagnostics];
    [(HMAccessory(Diagnostics) *)selfCopy18 setSupportedDiagnostics:supportedDiagnostics4];

    context30 = [(HMAccessory *)selfCopy18 context];
    queue30 = [context30 queue];
    v687[0] = MEMORY[0x1E69E9820];
    v687[1] = 3221225472;
    v687[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1300;
    v687[3] = &unk_1E754E2A8;
    v687[4] = selfCopy18;
    dispatch_async(queue30, v687);
  }

  isCurrentAccessory = [(HMAccessory *)self isCurrentAccessory];
  if (isCurrentAccessory != [v6 isCurrentAccessory])
  {
    -[HMAccessory setCurrentAccessory:](self, "setCurrentAccessory:", [v6 isCurrentAccessory]);
  }

  manufacturer = [(HMAccessory *)self manufacturer];
  manufacturer2 = [v6 manufacturer];
  v281 = HMFEqualObjects();

  if ((v281 & 1) == 0)
  {
    manufacturer3 = [v6 manufacturer];
    [(HMAccessory *)self setManufacturer:manufacturer3];
  }

  model = [(HMAccessory *)self model];
  model2 = [v6 model];
  v285 = HMFEqualObjects();

  if ((v285 & 1) == 0)
  {
    model3 = [v6 model];
    [(HMAccessory *)self setModel:model3];
  }

  serialNumber = [(HMAccessory *)self serialNumber];
  serialNumber2 = [v6 serialNumber];
  v289 = HMFEqualObjects();

  if ((v289 & 1) == 0)
  {
    serialNumber3 = [v6 serialNumber];
    [(HMAccessory *)self setSerialNumber:serialNumber3];
  }

  accountIdentifier = [(HMAccessory *)self accountIdentifier];
  accountIdentifier2 = [v6 accountIdentifier];
  v293 = HMFEqualObjects();

  if ((v293 & 1) == 0)
  {
    accountIdentifier3 = [v6 accountIdentifier];
    [(HMAccessory *)self setAccountIdentifier:accountIdentifier3];
  }

  supportsIdentify = [(HMAccessory *)self supportsIdentify];
  if (supportsIdentify != [v6 supportsIdentify])
  {
    -[HMAccessory setSupportsIdentify:](self, "setSupportsIdentify:", [v6 supportsIdentify]);
  }

  accessoryFlags = [(HMAccessory *)self accessoryFlags];
  accessoryFlags2 = [v6 accessoryFlags];
  v298 = HMFEqualObjects();

  if ((v298 & 1) == 0)
  {
    accessoryFlags3 = [v6 accessoryFlags];
    if ([accessoryFlags3 integerValue])
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
      context31 = [(HMAccessory *)self context];
      queue31 = [context31 queue];
      v686[0] = MEMORY[0x1E69E9820];
      v686[1] = 3221225472;
      v686[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1301;
      v686[3] = &unk_1E754E2A8;
      v686[4] = self;
      dispatch_async(queue31, v686);

      v15 = 1;
    }

    accessoryFlags4 = [v6 accessoryFlags];
    integerValue = [accessoryFlags4 integerValue];
    if ((integerValue & 2) != 0)
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
      selfCopy19 = self;
      v308 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v308, OS_LOG_TYPE_INFO))
      {
        v309 = HMFGetLogIdentifier();
        calibrationStatus = [(HMAccessory *)selfCopy19 calibrationStatus];
        v311 = "Unknown";
        if (calibrationStatus == 1)
        {
          v311 = "InProgress";
        }

        if (calibrationStatus == 2)
        {
          v311 = "Complete";
        }

        *buf = 138543874;
        v740 = v309;
        v741 = 2080;
        v742 = v311;
        if ((integerValue & 2) != 0)
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
      [(HMAccessory *)selfCopy19 setCalibrationStatus:v305];
      context32 = [(HMAccessory *)selfCopy19 context];
      queue32 = [context32 queue];
      v685[0] = MEMORY[0x1E69E9820];
      v217 = "llMessage";
      v685[1] = 3221225472;
      v685[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1302;
      v685[3] = &unk_1E754E2A8;
      v685[4] = selfCopy19;
      dispatch_async(queue32, v685);

      v15 = 1;
    }

    accessoryFlags5 = [v6 accessoryFlags];
    [(HMAccessory *)self setAccessoryFlags:accessoryFlags5];

    -[HMAccessory setCalibrationStatus:](self, "setCalibrationStatus:", [v6 calibrationStatus]);
  }

  certificationStatus = [(HMAccessory *)self certificationStatus];
  if (certificationStatus != [v6 certificationStatus])
  {
    -[HMAccessory setCertificationStatus:](self, "setCertificationStatus:", [v6 certificationStatus]);
  }

  -[HMAccessory setBridgedAccessory:](self, "setBridgedAccessory:", [v6 bridgedAccessory]);
  uniqueIdentifiersForBridgedAccessories = [v6 uniqueIdentifiersForBridgedAccessories];
  [(HMAccessory *)self setUniqueIdentifiersForBridgedAccessories:uniqueIdentifiersForBridgedAccessories];

  category = [(HMAccessory *)self category];
  category2 = [v6 category];
  v320 = HMFEqualObjects();

  if ((v320 & 1) == 0)
  {
    v321 = objc_autoreleasePoolPush();
    selfCopy20 = self;
    v323 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
    {
      v324 = HMFGetLogIdentifier();
      category3 = [(HMAccessory *)selfCopy20 category];
      category4 = [v6 category];
      *buf = 138543874;
      v740 = v324;
      v741 = 2112;
      v742 = category3;
      v743 = 2112;
      v744 = category4;
      _os_log_impl(&dword_19BB39000, v323, OS_LOG_TYPE_INFO, "%{public}@Updating category: %@ with new category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v321);
    category5 = [v6 category];
    [(HMAccessory *)selfCopy20 setCategory:category5];

    v15 = 1;
  }

  accessoryProfiles = [v6 accessoryProfiles];
  array = [accessoryProfiles array];
  [(HMAccessory *)self _mergeProfiles:array];

  if (!-[HMAccessory supportsMessagedHomePodSettings](self, "supportsMessagedHomePodSettings") && ([v6 supportsMessagedHomePodSettings] & 1) == 0)
  {
    settings = [v6 settings];
    settings2 = [(HMAccessory *)self settings];
    v332 = (settings != 0) ^ (settings2 == 0);

    v333 = objc_autoreleasePoolPush();
    if (v332)
    {
      settings3 = [(HMAccessory *)self settings];
      v335 = [settings3 mergeFromNewObject:settings];

      if (v335)
      {
        v336 = objc_autoreleasePoolPush();
        selfCopy21 = self;
        v338 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v338, OS_LOG_TYPE_INFO))
        {
          v339 = HMFGetLogIdentifier();
          longDescription = [settings longDescription];
          *buf = 138543618;
          v740 = v339;
          v741 = 2112;
          v742 = longDescription;
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
      selfCopy22 = self;
      v342 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v342, OS_LOG_TYPE_DEFAULT))
      {
        v343 = HMFGetLogIdentifier();
        longDescription2 = [settings longDescription];
        *buf = 138543618;
        v740 = v343;
        v741 = 2112;
        v742 = longDescription2;
        _os_log_impl(&dword_19BB39000, v342, OS_LOG_TYPE_DEFAULT, "%{public}@Updating settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v333);
      [(HMAccessory *)selfCopy22 setSettings:settings];
      context33 = [(HMAccessory *)selfCopy22 context];
      queue33 = [context33 queue];
      v683[0] = MEMORY[0x1E69E9820];
      v683[1] = 3221225472;
      v683[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1303;
      v683[3] = &unk_1E754E5C0;
      v683[4] = selfCopy22;
      v684 = settings;
      dispatch_async(queue33, v683);

      v15 = 1;
    }
  }

  device = [v6 device];
  device2 = [(HMAccessory *)self device];
  v349 = HMFEqualObjects();

  if (v349)
  {
    device3 = [(HMAccessory *)self device];
    v351 = [device3 mergeFromNewObject:device];

    if (!v351)
    {
      goto LABEL_250;
    }
  }

  else
  {
    v352 = objc_autoreleasePoolPush();
    selfCopy23 = self;
    v354 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v354, OS_LOG_TYPE_INFO))
    {
      v355 = HMFGetLogIdentifier();
      *buf = 138543618;
      v740 = v355;
      v741 = 2112;
      v742 = device;
      _os_log_impl(&dword_19BB39000, v354, OS_LOG_TYPE_INFO, "%{public}@Updating device: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v352);
    [(HMAccessory *)selfCopy23 setDevice:device];
  }

  if (objc_opt_respondsToSelector())
  {
    context34 = [(HMAccessory *)self context];
    queue34 = [context34 queue];
    v681[0] = MEMORY[0x1E69E9820];
    v681[1] = *(v217 + 185);
    v681[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1305;
    v681[3] = &unk_1E754E5C0;
    v681[4] = self;
    v682 = v246;
    dispatch_async(queue34, v681);
  }

  v15 = 1;
LABEL_250:

  deviceIRKData = [(HMAccessory *)self deviceIRKData];
  deviceIRKData2 = [v6 deviceIRKData];
  v360 = HMFEqualObjects();

  if ((v360 & 1) == 0)
  {
    v361 = objc_autoreleasePoolPush();
    selfCopy24 = self;
    v363 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v363, OS_LOG_TYPE_INFO))
    {
      v364 = HMFGetLogIdentifier();
      deviceIRKData3 = [v6 deviceIRKData];
      *buf = 138543618;
      v740 = v364;
      v741 = 2112;
      v742 = deviceIRKData3;
      _os_log_impl(&dword_19BB39000, v363, OS_LOG_TYPE_INFO, "%{public}@Updating deviceIRKData: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v361);
    deviceIRKData4 = [v6 deviceIRKData];
    [(HMAccessory *)selfCopy24 setDeviceIRKData:deviceIRKData4];

    v15 = 1;
  }

  softwareVersion = [v6 softwareVersion];
  softwareVersion2 = [(HMAccessory *)self softwareVersion];
  v369 = HMFEqualObjects();

  if ((v369 & 1) == 0)
  {
    [(HMAccessory *)self setSoftwareVersion:softwareVersion];
    if (objc_opt_respondsToSelector())
    {
      context35 = [(HMAccessory *)self context];
      queue35 = [context35 queue];
      v678[0] = MEMORY[0x1E69E9820];
      v678[1] = *(v217 + 185);
      v678[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1308;
      v678[3] = &unk_1E754E5E8;
      v678[4] = self;
      v679 = v246;
      v680 = softwareVersion;
      dispatch_async(queue35, v678);
    }

    v15 = 1;
  }

  softwareUpdateController = [(HMAccessory *)self softwareUpdateController];

  softwareUpdateController2 = [v6 softwareUpdateController];
  v374 = softwareUpdateController2;
  if (!softwareUpdateController)
  {
    [(HMAccessory *)self setSoftwareUpdateController:softwareUpdateController2];

    softwareUpdateController3 = [(HMAccessory *)self softwareUpdateController];
    context36 = [(HMAccessory *)self context];
    [softwareUpdateController3 configureWithContext:context36 accessory:self];
    goto LABEL_262;
  }

  if (v374)
  {
    softwareUpdateController3 = [(HMAccessory *)self softwareUpdateController];
    context36 = [v6 softwareUpdateController];
    [softwareUpdateController3 mergeFromNewObject:context36];
LABEL_262:

    goto LABEL_264;
  }

  [(HMAccessory *)self setSoftwareUpdateController:0];
LABEL_264:
  v658 = v246;
  remoteLoginHandler = [v6 remoteLoginHandler];
  v378 = [(HMAccessory *)self _mergeRemoteLoginHandler:remoteLoginHandler];

  v379 = -[HMAccessory _updateHasSymptomsHandler:](self, "_updateHasSymptomsHandler:", [v6 hasSymptomsHandler]);
  supportsMediaAccessControl = [(HMAccessory *)self supportsMediaAccessControl];
  if (supportsMediaAccessControl == [v6 supportsMediaAccessControl])
  {
    v48 = (v379 || v378) | v15;
  }

  else
  {
    -[HMAccessory setSupportsMediaAccessControl:](self, "setSupportsMediaAccessControl:", [v6 supportsMediaAccessControl]);
    v48 = 1;
  }

  supportsMediaContentProfile = [(HMAccessory *)self supportsMediaContentProfile];
  if (supportsMediaContentProfile != [v6 supportsMediaContentProfile])
  {
    v382 = objc_autoreleasePoolPush();
    selfCopy25 = self;
    v384 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v384, OS_LOG_TYPE_INFO))
    {
      v385 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy25 supportsMediaContentProfile];
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
    -[HMAccessory setSupportsMediaContentProfile:](selfCopy25, "setSupportsMediaContentProfile:", [v6 supportsMediaContentProfile]);
    context37 = [(HMAccessory *)selfCopy25 context];
    queue36 = [context37 queue];
    v677[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v677[1] = 3221225472;
    v677[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1310;
    v677[3] = &unk_1E754E2A8;
    v677[4] = selfCopy25;
    dispatch_async(queue36, v677);

    v48 = 1;
  }

  supportsCHIP = [(HMAccessory *)self supportsCHIP];
  if (supportsCHIP != [v6 supportsCHIP])
  {
    v391 = objc_autoreleasePoolPush();
    selfCopy26 = self;
    v393 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v393, OS_LOG_TYPE_INFO))
    {
      v394 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy26 supportsCHIP];
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
    -[HMAccessory setSupportsCHIP:](selfCopy26, "setSupportsCHIP:", [v6 supportsCHIP]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  knownToSystemCommissioner = [(HMAccessory *)self knownToSystemCommissioner];
  if (knownToSystemCommissioner != [v6 knownToSystemCommissioner])
  {
    v398 = objc_autoreleasePoolPush();
    selfCopy27 = self;
    v400 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v400, OS_LOG_TYPE_INFO))
    {
      v401 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy27 knownToSystemCommissioner];
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
    -[HMAccessory setKnownToSystemCommissioner:](selfCopy27, "setKnownToSystemCommissioner:", [v6 knownToSystemCommissioner]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  rootPublicKey = [(HMAccessory *)self rootPublicKey];
  rootPublicKey2 = [v6 rootPublicKey];
  v406 = HMFEqualObjects();

  if ((v406 & 1) == 0)
  {
    v407 = objc_autoreleasePoolPush();
    selfCopy28 = self;
    v409 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v409, OS_LOG_TYPE_INFO))
    {
      v410 = HMFGetLogIdentifier();
      v655 = v407;
      v411 = MEMORY[0x1E696AD98];
      rootPublicKey3 = [(HMAccessory *)selfCopy28 rootPublicKey];
      v413 = [v411 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey3, "hash")}];
      v414 = softwareVersion;
      v415 = MEMORY[0x1E696AD98];
      rootPublicKey4 = [v6 rootPublicKey];
      v417 = [v415 numberWithUnsignedInteger:{objc_msgSend(rootPublicKey4, "hash")}];
      *buf = 138543874;
      v740 = v410;
      v741 = 2112;
      v742 = v413;
      v743 = 2112;
      v744 = v417;
      _os_log_impl(&dword_19BB39000, v409, OS_LOG_TYPE_INFO, "%{public}@Updating Root Public Key (Hash) from %@ to %@", buf, 0x20u);

      softwareVersion = v414;
      v407 = v655;
    }

    objc_autoreleasePoolPop(v407);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  nodeID = [(HMAccessory *)self nodeID];
  nodeID2 = [v6 nodeID];
  v420 = HMFEqualObjects();

  if ((v420 & 1) == 0)
  {
    v421 = objc_autoreleasePoolPush();
    selfCopy29 = self;
    v423 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v423, OS_LOG_TYPE_INFO))
    {
      v424 = HMFGetLogIdentifier();
      nodeID3 = [(HMAccessory *)selfCopy29 nodeID];
      nodeID4 = [v6 nodeID];
      *buf = 138543874;
      v740 = v424;
      v741 = 2112;
      v742 = nodeID3;
      v743 = 2112;
      v744 = nodeID4;
      _os_log_impl(&dword_19BB39000, v423, OS_LOG_TYPE_INFO, "%{public}@Updating NodeID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v421);
    v48 = 1;
  }

  commissioningID = [(HMAccessory *)self commissioningID];
  commissioningID2 = [v6 commissioningID];
  v429 = HMFEqualObjects();

  if ((v429 & 1) == 0)
  {
    v430 = objc_autoreleasePoolPush();
    selfCopy30 = self;
    v432 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v432, OS_LOG_TYPE_INFO))
    {
      v433 = HMFGetLogIdentifier();
      commissioningID3 = [(HMAccessory *)selfCopy30 commissioningID];
      commissioningID4 = [v6 commissioningID];
      *buf = 138543874;
      v740 = v433;
      v741 = 2112;
      v742 = commissioningID3;
      v743 = 2112;
      v744 = commissioningID4;
      _os_log_impl(&dword_19BB39000, v432, OS_LOG_TYPE_INFO, "%{public}@Updating commissioningID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v430);
    v48 = 1;
  }

  vendorID = [(HMAccessory *)self vendorID];
  vendorID2 = [v6 vendorID];
  v438 = HMFEqualObjects();

  if ((v438 & 1) == 0)
  {
    v439 = objc_autoreleasePoolPush();
    selfCopy31 = self;
    v441 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v441, OS_LOG_TYPE_INFO))
    {
      v442 = HMFGetLogIdentifier();
      vendorID3 = [(HMAccessory *)selfCopy31 vendorID];
      vendorID4 = [v6 vendorID];
      *buf = 138543874;
      v740 = v442;
      v741 = 2112;
      v742 = vendorID3;
      v743 = 2112;
      v744 = vendorID4;
      _os_log_impl(&dword_19BB39000, v441, OS_LOG_TYPE_INFO, "%{public}@Updating vendorID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v439);
    v48 = 1;
  }

  productID = [(HMAccessory *)self productID];
  productID2 = [v6 productID];
  v447 = HMFEqualObjects();

  if ((v447 & 1) == 0)
  {
    v448 = objc_autoreleasePoolPush();
    selfCopy32 = self;
    v450 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v450, OS_LOG_TYPE_INFO))
    {
      v451 = HMFGetLogIdentifier();
      productID3 = [(HMAccessory *)selfCopy32 productID];
      productID4 = [v6 productID];
      *buf = 138543874;
      v740 = v451;
      v741 = 2112;
      v742 = productID3;
      v743 = 2112;
      v744 = productID4;
      _os_log_impl(&dword_19BB39000, v450, OS_LOG_TYPE_INFO, "%{public}@Updating productID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v448);
    v48 = 1;
  }

  bulletinBoardNotificationByEndpoint = [v6 bulletinBoardNotificationByEndpoint];
  v455 = [(HMAccessory *)self _mergeBulletinBoardNotificationByEndpoint:bulletinBoardNotificationByEndpoint];

  if (v455)
  {
    v456 = objc_autoreleasePoolPush();
    selfCopy33 = self;
    v458 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v458, OS_LOG_TYPE_INFO))
    {
      v459 = HMFGetLogIdentifier();
      bulletinBoardNotificationByEndpoint2 = [v6 bulletinBoardNotificationByEndpoint];
      *buf = 138543618;
      v740 = v459;
      v741 = 2112;
      v742 = bulletinBoardNotificationByEndpoint2;
      _os_log_impl(&dword_19BB39000, v458, OS_LOG_TYPE_INFO, "%{public}@Updated matter bulletin board notification to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v456);
    v48 = 1;
  }

  matterDeviceTypeID = [(HMAccessory *)self matterDeviceTypeID];
  matterDeviceTypeID2 = [v6 matterDeviceTypeID];
  v463 = HMFEqualObjects();

  if ((v463 & 1) == 0)
  {
    v464 = objc_autoreleasePoolPush();
    selfCopy34 = self;
    v466 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v466, OS_LOG_TYPE_INFO))
    {
      v467 = HMFGetLogIdentifier();
      matterDeviceTypeID3 = [(HMAccessory *)selfCopy34 matterDeviceTypeID];
      matterDeviceTypeID4 = [v6 matterDeviceTypeID];
      *buf = 138543874;
      v740 = v467;
      v741 = 2112;
      v742 = matterDeviceTypeID3;
      v743 = 2112;
      v744 = matterDeviceTypeID4;
      _os_log_impl(&dword_19BB39000, v466, OS_LOG_TYPE_INFO, "%{public}@Updating matterDeviceTypeID from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v464);
    v48 = 1;
  }

  requiresThreadRouter = [(HMAccessory *)self requiresThreadRouter];
  if (requiresThreadRouter != [v6 requiresThreadRouter])
  {
    v471 = objc_autoreleasePoolPush();
    selfCopy35 = self;
    v473 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v473, OS_LOG_TYPE_INFO))
    {
      v474 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy35 requiresThreadRouter];
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
    -[HMAccessory setRequiresThreadRouter:](selfCopy35, "setRequiresThreadRouter:", [v6 requiresThreadRouter]);
    v48 = 1;
    v217 = "llMessage";
  }

  matterWEDSupport = [(HMAccessory *)self matterWEDSupport];
  matterWEDSupport2 = [v6 matterWEDSupport];
  v479 = HMFEqualObjects();

  if ((v479 & 1) == 0)
  {
    v480 = objc_autoreleasePoolPush();
    selfCopy36 = self;
    v482 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v482, OS_LOG_TYPE_INFO))
    {
      v483 = HMFGetLogIdentifier();
      matterWEDSupport3 = [(HMAccessory *)selfCopy36 matterWEDSupport];
      matterWEDSupport4 = [v6 matterWEDSupport];
      *buf = 138543874;
      v740 = v483;
      v741 = 2112;
      v742 = matterWEDSupport3;
      v743 = 2112;
      v744 = matterWEDSupport4;
      _os_log_impl(&dword_19BB39000, v482, OS_LOG_TYPE_INFO, "%{public}@Updating matterWEDSupport from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v480);
    matterWEDSupport5 = [v6 matterWEDSupport];
    [(HMAccessory *)selfCopy36 setMatterWEDSupport:matterWEDSupport5];

    v48 = 1;
  }

  matterExtendedMACAddress = [(HMAccessory *)self matterExtendedMACAddress];
  matterExtendedMACAddress2 = [v6 matterExtendedMACAddress];
  v489 = HMFEqualObjects();

  if ((v489 & 1) == 0)
  {
    v490 = objc_autoreleasePoolPush();
    selfCopy37 = self;
    v492 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v492, OS_LOG_TYPE_INFO))
    {
      v493 = HMFGetLogIdentifier();
      matterExtendedMACAddress3 = [(HMAccessory *)selfCopy37 matterExtendedMACAddress];
      matterExtendedMACAddress4 = [v6 matterExtendedMACAddress];
      *buf = 138543874;
      v740 = v493;
      v741 = 2112;
      v742 = matterExtendedMACAddress3;
      v743 = 2112;
      v744 = matterExtendedMACAddress4;
      _os_log_impl(&dword_19BB39000, v492, OS_LOG_TYPE_INFO, "%{public}@Updating matterExtendedMACAddress from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v490);
    matterExtendedMACAddress5 = [v6 matterExtendedMACAddress];
    [(HMAccessory *)selfCopy37 setMatterExtendedMACAddress:matterExtendedMACAddress5];

    v48 = 1;
  }

  supportedLinkLayerTypes = [(HMAccessory *)self supportedLinkLayerTypes];
  supportedLinkLayerTypes2 = [v6 supportedLinkLayerTypes];
  v499 = HMFEqualObjects();

  if ((v499 & 1) == 0)
  {
    v500 = objc_autoreleasePoolPush();
    selfCopy38 = self;
    v502 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v502, OS_LOG_TYPE_INFO))
    {
      v503 = HMFGetLogIdentifier();
      supportedLinkLayerTypes3 = [(HMAccessory *)selfCopy38 supportedLinkLayerTypes];
      supportedLinkLayerTypes4 = [v6 supportedLinkLayerTypes];
      *buf = 138543874;
      v740 = v503;
      v741 = 2112;
      v742 = supportedLinkLayerTypes3;
      v743 = 2112;
      v744 = supportedLinkLayerTypes4;
      _os_log_impl(&dword_19BB39000, v502, OS_LOG_TYPE_INFO, "%{public}@Updating supportedLinkLayerTypes from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v500);
    supportedLinkLayerTypes5 = [v6 supportedLinkLayerTypes];
    [(HMAccessory *)selfCopy38 setSupportedLinkLayerTypes:supportedLinkLayerTypes5];

    v48 = 1;
  }

  wifiNetworkInfo = [(HMAccessory *)self wifiNetworkInfo];
  wifiNetworkInfo2 = [v6 wifiNetworkInfo];
  v509 = HMFEqualObjects();

  if ((v509 & 1) == 0)
  {
    v510 = objc_autoreleasePoolPush();
    selfCopy39 = self;
    v512 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v512, OS_LOG_TYPE_INFO))
    {
      v513 = HMFGetLogIdentifier();
      wifiNetworkInfo3 = [(HMAccessory *)selfCopy39 wifiNetworkInfo];
      wifiNetworkInfo4 = [v6 wifiNetworkInfo];
      *buf = 138543874;
      v740 = v513;
      v741 = 2112;
      v742 = wifiNetworkInfo3;
      v743 = 2112;
      v744 = wifiNetworkInfo4;
      _os_log_impl(&dword_19BB39000, v512, OS_LOG_TYPE_INFO, "%{public}@Updating WiFi network: %@ new WiFi network: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v510);
    wifiNetworkInfo5 = [v6 wifiNetworkInfo];
    [(HMAccessory *)selfCopy39 setWifiNetworkInfo:wifiNetworkInfo5];

    context38 = [(HMAccessory *)selfCopy39 context];
    queue37 = [context38 queue];
    v676[0] = MEMORY[0x1E69E9820];
    v676[1] = *(v217 + 185);
    v676[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1311;
    v676[3] = &unk_1E754E2A8;
    v676[4] = selfCopy39;
    dispatch_async(queue37, v676);

    v48 = 1;
  }

  networkProtectionGroupUUID = [(HMAccessory *)self networkProtectionGroupUUID];
  networkProtectionGroupUUID2 = [v6 networkProtectionGroupUUID];
  v521 = HMFEqualObjects();

  if ((v521 & 1) == 0)
  {
    networkProtectionGroupUUID3 = [v6 networkProtectionGroupUUID];
    [(HMAccessory *)self setNetworkProtectionGroupUUID:networkProtectionGroupUUID3];

    v48 = 1;
  }

  audioDestination = [(HMAccessory *)self audioDestination];
  audioDestination2 = [v6 audioDestination];
  v525 = HMFEqualObjects();

  if ((v525 & 1) == 0)
  {
    v526 = objc_autoreleasePoolPush();
    selfCopy40 = self;
    v528 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v528, OS_LOG_TYPE_INFO))
    {
      v529 = HMFGetLogIdentifier();
      audioDestination3 = [(HMAccessory *)selfCopy40 audioDestination];
      audioDestination4 = [v6 audioDestination];
      *buf = 138543874;
      v740 = v529;
      v741 = 2112;
      v742 = audioDestination3;
      v743 = 2112;
      v744 = audioDestination4;
      _os_log_impl(&dword_19BB39000, v528, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ new audio destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v526);
    audioDestination5 = [v6 audioDestination];
    [(HMAccessory *)selfCopy40 setAudioDestination:audioDestination5];

    context39 = [(HMAccessory *)selfCopy40 context];
    queue38 = [context39 queue];
    v675[0] = MEMORY[0x1E69E9820];
    v675[1] = *(v217 + 185);
    v675[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1312;
    v675[3] = &unk_1E754E2A8;
    v675[4] = selfCopy40;
    dispatch_async(queue38, v675);

    v48 = 1;
  }

  audioDestinationController = [(HMAccessory *)self audioDestinationController];

  audioDestinationController2 = [v6 audioDestinationController];
  v537 = audioDestinationController2;
  if (audioDestinationController)
  {

    if (v537)
    {
      audioDestinationController3 = [(HMAccessory *)self audioDestinationController];
      audioDestinationController4 = [v6 audioDestinationController];
      v540 = [audioDestinationController3 mergeFromNewObject:audioDestinationController4];

      if (!v540)
      {
        goto LABEL_347;
      }

      v541 = objc_autoreleasePoolPush();
      selfCopy41 = self;
      v543 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v543, OS_LOG_TYPE_INFO))
      {
        v544 = HMFGetLogIdentifier();
        audioDestinationController5 = [(HMAccessory *)selfCopy41 audioDestinationController];
        *buf = 138543618;
        v740 = v544;
        v741 = 2112;
        v742 = audioDestinationController5;
        _os_log_impl(&dword_19BB39000, v543, OS_LOG_TYPE_INFO, "%{public}@Updated audio destination controller: %@ due to accessory merge", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v541);
      context40 = [(HMAccessory *)selfCopy41 context];
      queue39 = [context40 queue];
      v548 = queue39;
      v673[0] = MEMORY[0x1E69E9820];
      v673[1] = *(v217 + 185);
      v673[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1314;
      v673[3] = &unk_1E754E2A8;
      v673[4] = selfCopy41;
      v549 = v673;
    }

    else
    {
      v558 = objc_autoreleasePoolPush();
      selfCopy42 = self;
      v560 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v560, OS_LOG_TYPE_INFO))
      {
        v561 = HMFGetLogIdentifier();
        audioDestinationController6 = [(HMAccessory *)selfCopy42 audioDestinationController];
        *buf = 138543618;
        v740 = v561;
        v741 = 2112;
        v742 = audioDestinationController6;
        _os_log_impl(&dword_19BB39000, v560, OS_LOG_TYPE_INFO, "%{public}@Removing audio destination controller: %@ due to accessory merge", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v558);
      audioDestinationController7 = [(HMAccessory *)selfCopy42 audioDestinationController];
      [audioDestinationController7 unconfigure];

      [(HMAccessory *)selfCopy42 setAudioDestinationController:0];
      context40 = [(HMAccessory *)selfCopy42 context];
      queue39 = [context40 queue];
      v548 = queue39;
      v674[0] = MEMORY[0x1E69E9820];
      v674[1] = *(v217 + 185);
      v674[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1313;
      v674[3] = &unk_1E754E2A8;
      v674[4] = selfCopy42;
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
    selfCopy43 = self;
    v552 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v552, OS_LOG_TYPE_INFO))
    {
      v553 = HMFGetLogIdentifier();
      audioDestinationController8 = [v6 audioDestinationController];
      *buf = 138543618;
      v740 = v553;
      v741 = 2112;
      v742 = audioDestinationController8;
      _os_log_impl(&dword_19BB39000, v552, OS_LOG_TYPE_INFO, "%{public}@Adding new audio destination controller: %@ due to accessory merge", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v550);
    audioDestinationController9 = [v6 audioDestinationController];
    [(HMAccessory *)selfCopy43 setAudioDestinationController:audioDestinationController9];

    audioDestinationController10 = [(HMAccessory *)selfCopy43 audioDestinationController];
    context41 = [(HMAccessory *)selfCopy43 context];
    [audioDestinationController10 configureWithContext:context41 dataSource:selfCopy43];

    context40 = [(HMAccessory *)selfCopy43 context];
    queue39 = [context40 queue];
    v548 = queue39;
    v672[0] = MEMORY[0x1E69E9820];
    v672[1] = *(v217 + 185);
    v672[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1315;
    v672[3] = &unk_1E754E2A8;
    v672[4] = selfCopy43;
    v549 = v672;
  }

  dispatch_async(queue39, v549);

  v48 = 1;
LABEL_347:
  audioAnalysisEventBulletinBoardNotification = [v6 audioAnalysisEventBulletinBoardNotification];

  if (audioAnalysisEventBulletinBoardNotification)
  {
    audioAnalysisEventBulletinBoardNotification2 = [(HMAccessory *)self audioAnalysisEventBulletinBoardNotification];
    audioAnalysisEventBulletinBoardNotification3 = [v6 audioAnalysisEventBulletinBoardNotification];
    v48 |= [audioAnalysisEventBulletinBoardNotification2 mergeFromNewObject:audioAnalysisEventBulletinBoardNotification3];
  }

  if (-[HMAccessory supportsMessagedHomePodSettings](self, "supportsMessagedHomePodSettings") || ([v6 supportsMessagedHomePodSettings] & 1) != 0)
  {
    goto LABEL_362;
  }

  preferredUserSelectionType = [(HMAccessory *)self preferredUserSelectionType];
  preferredUserSelectionType2 = [v6 preferredUserSelectionType];
  if (preferredUserSelectionType != preferredUserSelectionType2)
  {
    -[HMAccessory setPreferredUserSelectionType:](self, "setPreferredUserSelectionType:", [v6 preferredUserSelectionType]);
    v569 = objc_autoreleasePoolPush();
    selfCopy44 = self;
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

  preferredMediaUserUUID = [(HMAccessory *)self preferredMediaUserUUID];
  preferredMediaUserUUID2 = [v6 preferredMediaUserUUID];
  v576 = HMFEqualObjects();

  if (v576)
  {
    if (preferredUserSelectionType == preferredUserSelectionType2)
    {
      goto LABEL_362;
    }
  }

  else
  {
    preferredMediaUserUUID3 = [v6 preferredMediaUserUUID];
    [(HMAccessory *)self setPreferredMediaUserUUID:preferredMediaUserUUID3];

    v578 = objc_autoreleasePoolPush();
    selfCopy45 = self;
    v580 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v580, OS_LOG_TYPE_INFO))
    {
      v581 = HMFGetLogIdentifier();
      preferredMediaUserUUID4 = [v6 preferredMediaUserUUID];
      *buf = 138543618;
      v740 = v581;
      v741 = 2112;
      v742 = preferredMediaUserUUID4;
      _os_log_impl(&dword_19BB39000, v580, OS_LOG_TYPE_INFO, "%{public}@Updating Preferred Media User to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v578);
    v48 = 1;
  }

  context42 = [(HMAccessory *)self context];
  queue40 = [context42 queue];
  v671[0] = MEMORY[0x1E69E9820];
  v671[1] = *(v217 + 185);
  v671[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1316;
  v671[3] = &unk_1E754E2A8;
  v671[4] = self;
  dispatch_async(queue40, v671);

LABEL_362:
  supportsPrimaryUserInfoSubscription = [(HMAccessory *)self supportsPrimaryUserInfoSubscription];
  if (supportsPrimaryUserInfoSubscription != [v6 supportsPrimaryUserInfoSubscription])
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

  supportsPreferredMediaUser = [(HMAccessory *)self supportsPreferredMediaUser];
  if (supportsPreferredMediaUser != [v6 supportsPreferredMediaUser])
  {
    -[HMAccessory setSupportsPreferredMediaUser:](self, "setSupportsPreferredMediaUser:", [v6 supportsPreferredMediaUser]);
    v587 = objc_autoreleasePoolPush();
    selfCopy46 = self;
    v589 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v589, OS_LOG_TYPE_INFO))
    {
      v590 = HMFGetLogIdentifier();
      v591 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMAccessory supportsPreferredMediaUser](selfCopy46, "supportsPreferredMediaUser")}];
      *buf = 138543618;
      v740 = v590;
      v741 = 2112;
      v742 = v591;
      _os_log_impl(&dword_19BB39000, v589, OS_LOG_TYPE_INFO, "%{public}@Updating supports Preferred Media User to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v587);
    context43 = [(HMAccessory *)selfCopy46 context];
    queue41 = [context43 queue];
    v670[0] = MEMORY[0x1E69E9820];
    v670[1] = *(v217 + 185);
    v670[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1317;
    v670[3] = &unk_1E754E2A8;
    v670[4] = selfCopy46;
    dispatch_async(queue41, v670);

    v48 = 1;
  }

  pendingConfigurationIdentifier = [(HMAccessory *)self pendingConfigurationIdentifier];
  pendingConfigurationIdentifier2 = [v6 pendingConfigurationIdentifier];
  v596 = HMFEqualObjects();

  if ((v596 & 1) == 0)
  {
    v597 = objc_autoreleasePoolPush();
    selfCopy47 = self;
    v599 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v599, OS_LOG_TYPE_INFO))
    {
      v600 = HMFGetLogIdentifier();
      pendingConfigurationIdentifier3 = [(HMAccessory *)selfCopy47 pendingConfigurationIdentifier];
      pendingConfigurationIdentifier4 = [v6 pendingConfigurationIdentifier];
      *buf = 138543874;
      v740 = v600;
      v741 = 2112;
      v742 = pendingConfigurationIdentifier3;
      v743 = 2112;
      v744 = pendingConfigurationIdentifier4;
      _os_log_impl(&dword_19BB39000, v599, OS_LOG_TYPE_INFO, "%{public}@Updating pendingConfigurationIdentifier from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v597);
    pendingConfigurationIdentifier5 = [v6 pendingConfigurationIdentifier];
    [(HMAccessory *)selfCopy47 setPendingConfigurationIdentifier:pendingConfigurationIdentifier5];

    if (objc_opt_respondsToSelector())
    {
      context44 = [(HMAccessory *)selfCopy47 context];
      queue42 = [context44 queue];
      v668[0] = MEMORY[0x1E69E9820];
      v668[1] = *(v217 + 185);
      v668[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1319;
      v668[3] = &unk_1E754E5C0;
      v668[4] = selfCopy47;
      v669 = v658;
      dispatch_async(queue42, v668);
    }

    v48 = 1;
  }

  supportsManagedConfigurationProfile = [(HMAccessory *)self supportsManagedConfigurationProfile];
  if (supportsManagedConfigurationProfile != [v6 supportsManagedConfigurationProfile])
  {
    v607 = objc_autoreleasePoolPush();
    selfCopy48 = self;
    v609 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v609, OS_LOG_TYPE_INFO))
    {
      v610 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy48 supportsManagedConfigurationProfile];
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
    -[HMAccessory setSupportsManagedConfigurationProfile:](selfCopy48, "setSupportsManagedConfigurationProfile:", [v6 supportsManagedConfigurationProfile]);
    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  productColor = [(HMAccessory *)self productColor];
  if (productColor != [v6 productColor])
  {
    -[HMAccessory setProductColor:](self, "setProductColor:", [v6 productColor]);
    v48 = 1;
  }

  supportsMessagedHomePodSettings = [(HMAccessory *)self supportsMessagedHomePodSettings];
  if (supportsMessagedHomePodSettings != [v6 supportsMessagedHomePodSettings])
  {
    v615 = objc_autoreleasePoolPush();
    selfCopy49 = self;
    v617 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v617, OS_LOG_TYPE_DEFAULT))
    {
      v618 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy49 supportsMessagedHomePodSettings];
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
    -[HMAccessory setSupportsMessagedHomePodSettings:](selfCopy49, "setSupportsMessagedHomePodSettings:", [v6 supportsMessagedHomePodSettings]);
    if ([(HMAccessory *)selfCopy49 supportsMessagedHomePodSettings])
    {
      [(HMAccessory *)selfCopy49 configureSettingsAdapterIfNeeded];
      [(HMAccessory *)selfCopy49 configureInfoDataProviderIfNeededWithOptions:4];
    }

    v48 = 1;
    v217 = "ClearAllMessage" + 6;
  }

  supportsSoftwareUpdateV2 = [(HMAccessory *)self supportsSoftwareUpdateV2];
  if (supportsSoftwareUpdateV2 != [v6 supportsSoftwareUpdateV2])
  {
    -[HMAccessory setSupportsSoftwareUpdateV2:](self, "setSupportsSoftwareUpdateV2:", [v6 supportsSoftwareUpdateV2]);
    v48 = 1;
  }

  supportsRMVonAppleTV = [(HMAccessory *)self supportsRMVonAppleTV];
  if (supportsRMVonAppleTV != [v6 supportsRMVonAppleTV])
  {
    v623 = objc_autoreleasePoolPush();
    selfCopy50 = self;
    v625 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v625, OS_LOG_TYPE_INFO))
    {
      v626 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy50 supportsRMVonAppleTV];
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
    -[HMAccessory setSupportsRMVonAppleTV:](selfCopy50, "setSupportsRMVonAppleTV:", [v6 supportsRMVonAppleTV]);
    context45 = [(HMAccessory *)selfCopy50 context];
    queue43 = [context45 queue];
    v667[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v667[1] = 3221225472;
    v667[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1321;
    v667[3] = &unk_1E754E2A8;
    v667[4] = selfCopy50;
    dispatch_async(queue43, v667);

    v48 = 1;
  }

  supportsJustSiri = [(HMAccessory *)self supportsJustSiri];
  if (supportsJustSiri != [v6 supportsJustSiri])
  {
    v632 = objc_autoreleasePoolPush();
    selfCopy51 = self;
    v634 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v634, OS_LOG_TYPE_INFO))
    {
      v635 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy51 supportsJustSiri];
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
    -[HMAccessory setSupportsJustSiri:](selfCopy51, "setSupportsJustSiri:", [v6 supportsJustSiri]);
    context46 = [(HMAccessory *)selfCopy51 context];
    queue44 = [context46 queue];
    v666[0] = MEMORY[0x1E69E9820];
    v217 = "llMessage";
    v666[1] = 3221225472;
    v666[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_1322;
    v666[3] = &unk_1E754E2A8;
    v666[4] = selfCopy51;
    dispatch_async(queue44, v666);

    v48 = 1;
  }

  supportsStereoOdeonTTSUBypassingPrimary = [(HMAccessory *)self supportsStereoOdeonTTSUBypassingPrimary];
  if (supportsStereoOdeonTTSUBypassingPrimary != [v6 supportsStereoOdeonTTSUBypassingPrimary])
  {
    -[HMAccessory setSupportsStereoOdeonTTSUBypassingPrimary:](self, "setSupportsStereoOdeonTTSUBypassingPrimary:", [v6 supportsStereoOdeonTTSUBypassingPrimary]);
    v48 = 1;
  }

  supportsNetworkDiagnostics = [(HMAccessory *)self supportsNetworkDiagnostics];
  if (supportsNetworkDiagnostics != [v6 supportsNetworkDiagnostics])
  {
    -[HMAccessory setSupportsNetworkDiagnostics:](self, "setSupportsNetworkDiagnostics:", [v6 supportsNetworkDiagnostics]);
    v48 = 1;
  }

  supportsCrossfadeAsAirPlaySource = [(HMAccessory *)self supportsCrossfadeAsAirPlaySource];
  if (supportsCrossfadeAsAirPlaySource != [v6 supportsCrossfadeAsAirPlaySource])
  {
    -[HMAccessory setSupportsCrossfadeAsAirPlaySource:](self, "setSupportsCrossfadeAsAirPlaySource:", [v6 supportsCrossfadeAsAirPlaySource]);
    v48 = 1;
  }

  supportsAdaptiveTemperatureAutomations = [(HMAccessory *)self supportsAdaptiveTemperatureAutomations];
  if (supportsAdaptiveTemperatureAutomations != [v6 supportsAdaptiveTemperatureAutomations])
  {
    -[HMAccessory setSupportsAdaptiveTemperatureAutomations:](self, "setSupportsAdaptiveTemperatureAutomations:", [v6 supportsAdaptiveTemperatureAutomations]);
    v48 = 1;
  }

  supportsCleanEnergyAutomation = [(HMAccessory *)self supportsCleanEnergyAutomation];
  if (supportsCleanEnergyAutomation != [v6 supportsCleanEnergyAutomation])
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
        context47 = [(HMAccessory *)self context];
        queue45 = [context47 queue];
        v664[0] = MEMORY[0x1E69E9820];
        v664[1] = *(v217 + 185);
        v664[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_2_1324;
        v664[3] = &unk_1E754E5C0;
        v664[4] = self;
        v665 = v658;
        dispatch_async(queue45, v664);
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
        context48 = [(HMAccessory *)self context];
        queue46 = [context48 queue];
        v662[0] = MEMORY[0x1E69E9820];
        v662[1] = *(v217 + 185);
        v662[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_4_1327;
        v662[3] = &unk_1E754E5C0;
        v662[4] = self;
        v663 = v658;
        dispatch_async(queue46, v662);
      }
    }
  }

  hh1EOLEnabled = [(HMAccessory *)self hh1EOLEnabled];
  if (hh1EOLEnabled != [v6 hh1EOLEnabled])
  {
    -[HMAccessory setHh1EOLEnabled:](self, "setHh1EOLEnabled:", [v6 hh1EOLEnabled]);
    if (objc_opt_respondsToSelector())
    {
      context49 = [(HMAccessory *)self context];
      queue47 = [context49 queue];
      v660[0] = MEMORY[0x1E69E9820];
      v660[1] = *(v217 + 185);
      v660[2] = __34__HMAccessory_mergeFromNewObject___block_invoke_6_1330;
      v660[3] = &unk_1E754E5C0;
      v660[4] = self;
      v661 = v658;
      dispatch_async(queue47, v660);
    }

    v48 = 1;
  }

  isPrimaryResident = [(HMAccessory *)self isPrimaryResident];
  if (isPrimaryResident != [v6 isPrimaryResident])
  {
    -[HMAccessory setIsPrimaryResident:](self, "setIsPrimaryResident:", [v6 isPrimaryResident]);
    v48 = 1;
  }

  objectCopy = v656;
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

- (BOOL)_mergeControlTargetUUIDs:(id)ds
{
  v64 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = MEMORY[0x1E695DFA8];
  controlTargetUUIDs = [(HMAccessory *)self controlTargetUUIDs];
  if (controlTargetUUIDs)
  {
    controlTargetUUIDs2 = [(HMAccessory *)self controlTargetUUIDs];
    v8 = [v5 setWithArray:controlTargetUUIDs2];
  }

  else
  {
    v8 = [v5 setWithArray:MEMORY[0x1E695E0F0]];
  }

  if (dsCopy)
  {
    v9 = dsCopy;
  }

  else
  {
    v9 = MEMORY[0x1E695E0F0];
  }

  v10 = [MEMORY[0x1E695DFA8] setWithArray:v9];
  if ([(HMAccessory *)self supportsTargetController])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v42 = dsCopy;
  [(HMAccessory *)self setControlTargetUUIDs:dsCopy];
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
        home = [(HMAccessory *)self home];
        v22 = [home accessoryWithUUID:v20];
        if (v22)
        {
          context = [(HMAccessory *)self context];
          queue = [context queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = __40__HMAccessory__mergeControlTargetUUIDs___block_invoke;
          block[3] = &unk_1E754E5C0;
          block[4] = self;
          v51 = v22;
          dispatch_async(queue, block);
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
        home2 = [(HMAccessory *)self home];
        v32 = [home2 accessoryWithUUID:v30];
        if (v32)
        {
          context2 = [(HMAccessory *)self context];
          queue2 = [context2 queue];
          v44[0] = MEMORY[0x1E69E9820];
          v44[1] = 3221225472;
          v44[2] = __40__HMAccessory__mergeControlTargetUUIDs___block_invoke_2;
          v44[3] = &unk_1E754E5C0;
          v44[4] = self;
          v45 = v32;
          dispatch_async(queue2, v44);
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

- (BOOL)_mergeServices:(id)services
{
  servicesCopy = services;
  v5 = [HMObjectMergeCollection alloc];
  currentServices = [(HMAccessory *)self currentServices];
  array = [currentServices array];
  v8 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:servicesCopy];

  removedObjects = [(HMObjectMergeCollection *)v8 removedObjects];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __30__HMAccessory__mergeServices___block_invoke;
  v16[3] = &unk_1E754B550;
  v16[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v16];

  addedObjects = [(HMObjectMergeCollection *)v8 addedObjects];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __30__HMAccessory__mergeServices___block_invoke_1126;
  v15[3] = &unk_1E754B550;
  v15[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v15];

  [(HMObjectMergeCollection *)v8 mergeCommonObjects];
  isModified = [(HMObjectMergeCollection *)v8 isModified];
  if (isModified)
  {
    finalObjects = [(HMObjectMergeCollection *)v8 finalObjects];
    currentServices2 = [(HMAccessory *)self currentServices];
    [currentServices2 setArray:finalObjects];

    [(HMAccessory *)self notifyDelegateOfUpdatedServices];
  }

  return isModified;
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

- (BOOL)_mergeBulletinBoardNotificationByEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  bulletinBoardNotificationByEndpoint = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
  v6 = HMFEqualObjects();

  if (v6)
  {
    v7 = *(v29 + 24);
  }

  else
  {
    bulletinBoardNotificationByEndpoint2 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
    v9 = [bulletinBoardNotificationByEndpoint2 mutableCopy];
    v10 = v9;
    if (v9)
    {
      dictionary = v9;
    }

    else
    {
      dictionary = [MEMORY[0x1E695DF90] dictionary];
    }

    v12 = dictionary;

    bulletinBoardNotificationByEndpoint3 = [(HMAccessory *)self bulletinBoardNotificationByEndpoint];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke;
    v23[3] = &unk_1E754B500;
    v14 = endpointCopy;
    v24 = v14;
    selfCopy = self;
    v15 = v12;
    v26 = v15;
    v27 = &v28;
    [bulletinBoardNotificationByEndpoint3 na_each:v23];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __57__HMAccessory__mergeBulletinBoardNotificationByEndpoint___block_invoke_1123;
    v19[3] = &unk_1E754B528;
    v16 = v15;
    v20 = v16;
    selfCopy2 = self;
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

- (HMAccessory)initWithCoder:(id)coder
{
  v193 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy hm_decodeAndCacheUUIDFromStringForKey:@"accessoryUUID"];
  if (v5)
  {
    v6 = [(HMAccessory *)self initWithUUID:v5];
    if (v6)
    {
      v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
      objc_storeWeak(&v6->_home, v7);

      v8 = [coderCopy hm_decodeHMAccessoryCategoryAndCacheForKey:@"HM.accessoryCategory"];
      category = v6->_category;
      v6->_category = v8;

      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryRoom"];
      objc_storeWeak(&v6->_room, v10);

      v6->_bridgedAccessory = [coderCopy decodeBoolForKey:@"isBridged"];
      v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryName"];
      name = v6->_name;
      v6->_name = v11;

      v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryConfiguredName"];
      configuredName = v6->_configuredName;
      v6->_configuredName = v13;

      v15 = [coderCopy hm_decodeAndCacheStringForKey:@"accessoryServerIdentifier"];
      deviceIdentifier = v6->_deviceIdentifier;
      v6->_deviceIdentifier = v15;

      v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.pendingConfigurationIdentifier"];
      pendingConfigurationIdentifier = v6->_pendingConfigurationIdentifier;
      v6->_pendingConfigurationIdentifier = v17;

      v6->_paired = [coderCopy decodeBoolForKey:@"paired"];
      v6->_reachable = [coderCopy decodeBoolForKey:@"reachable"];
      v6->_reachableTransports = [coderCopy decodeIntegerForKey:@"HM.reachability"];
      v6->_transportTypes = [coderCopy decodeIntegerForKey:@"HM.accessoryTransportTypes"];
      v6->_communicationProtocol = [coderCopy decodeIntegerForKey:@"HMA.communicationProrocol"];
      v6->_supportsIdentify = [coderCopy decodeBoolForKey:@"HM.supportsIdentify"];
      v6->_currentAccessory = [coderCopy decodeBoolForKey:@"HM.currentAccessory"];
      v19 = [coderCopy hm_decodeAndCacheStringForKey:@"HM.manufacturer"];
      manufacturer = v6->_manufacturer;
      v6->_manufacturer = v19;

      v21 = [coderCopy hm_decodeAndCacheStringForKey:@"HM.model"];
      model = v6->_model;
      v6->_model = v21;

      v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterNodeID"];
      matterNodeID = v6->_matterNodeID;
      v6->_matterNodeID = v23;

      if (([coderCopy decodeBoolForKey:@"HMA.supportsCHIP"] & 1) != 0 || v6->_communicationProtocol == 2)
      {
        v6->_supportsCHIP = 1;
        v25 = @"HM.displayableFirmwareVersion";
      }

      else
      {
        unsignedIntValue = [(NSNumber *)v6->_matterNodeID unsignedIntValue];
        v6->_supportsCHIP = unsignedIntValue != 0;
        if (unsignedIntValue)
        {
          v25 = @"HM.displayableFirmwareVersion";
        }

        else
        {
          v25 = @"HM.firmwareVersion";
        }
      }

      v31 = [coderCopy hm_decodeAndCacheStringForKey:v25];
      firmwareVersion = v6->_firmwareVersion;
      v6->_firmwareVersion = v31;

      v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.serialNumber"];
      serialNumber = v6->_serialNumber;
      v6->_serialNumber = v33;

      v35 = [coderCopy hm_decodeAndCacheStringForKey:@"HM.bundleID"];
      bundleID = v6->_bundleID;
      v6->_bundleID = v35;

      v37 = [coderCopy hm_decodeAndCacheStringForKey:@"HM.storeID"];
      storeID = v6->_storeID;
      v6->_storeID = v37;

      v6->_vendorAccessory = [coderCopy decodeBoolForKey:@"HMAccessoryIsVendorAccessoryCodingKey"];
      v39 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryHAPInstanceIDCodingKey"];
      HAPInstanceID = v6->_HAPInstanceID;
      v6->_HAPInstanceID = v39;

      v6->_firmwareUpdateAvailable = [coderCopy decodeBoolForKey:@"HM.firmwareUpdateAvailable"];
      if ([coderCopy containsValueForKey:@"HM.accessoryReprovisionState"])
      {
        v6->_accessoryReprovisionState = [coderCopy decodeInt32ForKey:@"HM.accessoryReprovisionState"];
      }

      v41 = MEMORY[0x1E695DFD8];
      v188[0] = objc_opt_class();
      v188[1] = objc_opt_class();
      v42 = [MEMORY[0x1E695DEC8] arrayWithObjects:v188 count:2];
      v43 = [v41 setWithArray:v42];
      v44 = [coderCopy decodeObjectOfClasses:v43 forKey:@"services"];

      v177 = v44;
      [(HMMutableArray *)v6->_currentServices setArray:v44];
      v45 = [coderCopy decodeBoolForKey:@"suspendCapable"];
      v6->_suspendCapable = v45;
      if (v45)
      {
        v6->_reachable = 1;
      }

      if ([coderCopy containsValueForKey:@"HM.suspendedState"])
      {
        v6->_suspendedState = [coderCopy decodeIntegerForKey:@"HM.suspendedState"];
      }

      if ([coderCopy containsValueForKey:@"HM.certificationStatus"])
      {
        v46 = [coderCopy decodeIntegerForKey:@"HM.certificationStatus"];
      }

      else
      {
        v46 = 0;
      }

      v6->_certificationStatus = v46;
      v47 = ([coderCopy decodeBoolForKey:@"HM.demoAccessory"] & 1) != 0 || v6->_communicationProtocol == 3;
      v6->_demoAccessory = v47;
      v48 = MEMORY[0x1E695DFD8];
      v187[0] = objc_opt_class();
      v187[1] = objc_opt_class();
      v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v187 count:2];
      v50 = [v48 setWithArray:v49];
      v51 = [coderCopy decodeObjectOfClasses:v50 forKey:@"controlTargets"];

      v175 = v51;
      v52 = [v51 na_map:&__block_literal_global_37215];
      controlTargetUUIDs = v6->_controlTargetUUIDs;
      v6->_controlTargetUUIDs = v52;

      v6->_associationOptions = [coderCopy decodeIntegerForKey:@"HM.associationOptions"];
      v54 = MEMORY[0x1E695DFD8];
      v186[0] = objc_opt_class();
      v186[1] = objc_opt_class();
      v55 = [MEMORY[0x1E695DEC8] arrayWithObjects:v186 count:2];
      v56 = [v54 setWithArray:v55];
      v57 = [coderCopy decodeObjectOfClasses:v56 forKey:@"identifiersForBridgedAccessories"];

      v176 = v57;
      if ([v57 count])
      {
        array = [MEMORY[0x1E695DF70] array];
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
              [(NSArray *)array addObject:v64];
            }

            v61 = [v59 countByEnumeratingWithState:&v178 objects:v185 count:16];
          }

          while (v61);
        }

        uniqueIdentifiersForBridgedAccessories = v6->_uniqueIdentifiersForBridgedAccessories;
        v6->_uniqueIdentifiersForBridgedAccessories = array;
      }

      v66 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
      applicationData = v6->_applicationData;
      v6->_applicationData = v66;

      v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessoryFlagsCodingKey"];
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
      v73 = [coderCopy decodeObjectOfClasses:v72 forKey:@"HM.accessoryProfiles"];

      accessoryProfiles = [(HMAccessory *)v6 accessoryProfiles];
      v75 = [HMAccessory _cameraProfilesForAccessoryProfiles:v73];
      [accessoryProfiles addObjectsFromArray:v75];

      accessoryProfiles2 = [(HMAccessory *)v6 accessoryProfiles];
      v77 = [HMAccessory _mediaProfilesForAccessoryProfiles:v73];
      [accessoryProfiles2 addObjectsFromArray:v77];

      accessoryProfiles3 = [(HMAccessory *)v6 accessoryProfiles];
      v79 = [MEMORY[0x1E695DFD8] setWithArray:v73];
      v80 = [HMAccessory _lightProfilesForAccessoryProfiles:v79];
      allObjects = [v80 allObjects];
      [accessoryProfiles3 addObjectsFromArray:allObjects];

      accessoryProfiles4 = [(HMAccessory *)v6 accessoryProfiles];
      v83 = [HMAccessory _siriEndpointProfilesForAccessoryProfiles:v73];
      [accessoryProfiles4 addObjectsFromArray:v83];

      accessoryProfiles5 = [(HMAccessory *)v6 accessoryProfiles];
      if (HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken != -1)
      {
        dispatch_once(&HMIsCurrentProcessSPIEntitled_spiEntitledOnceToken, &__block_literal_global_164);
      }

      v85 = [HMAccessory televisionProfilesForAccessoryServices:v177 isSPIEntitled:HMIsCurrentProcessSPIEntitled_spiEntitled];
      [accessoryProfiles5 addObjectsFromArray:v85];

      accessoryProfiles6 = [(HMAccessory *)v6 accessoryProfiles];
      uniqueIdentifier = [(HMAccessory *)v6 uniqueIdentifier];
      v88 = [HMAccessory _networkConfigurationProfilesForCoder:coderCopy accessoryIdentifier:uniqueIdentifier];
      [accessoryProfiles6 addObjectsFromArray:v88];

      accessoryProfiles7 = [(HMAccessory *)v6 accessoryProfiles];
      v90 = [HMAccessory _doorbellProfilesForAccessoryProfiles:v73];
      [accessoryProfiles7 addObjectsFromArray:v90];

      v91 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.settings"];
      if (v91)
      {
        v92 = [[HMAccessorySettingGroup alloc] initWithInternal:v91];
        v93 = [[HMAccessorySettings alloc] initWithSettingsContainer:v6 settingsControl:v6 rootGroup:v92];
        settings = v6->_settings;
        v6->_settings = v93;
      }

      v95 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
      device = v6->_device;
      v6->_device = v95;

      v97 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.deviceIRK"];
      deviceIRKData = v6->_deviceIRKData;
      v6->_deviceIRKData = v97;

      v99 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.softwareVersion"];
      softwareVersion = v6->_softwareVersion;
      v6->_softwareVersion = v99;

      if ([coderCopy containsValueForKey:@"HM.accountIdentifier"])
      {
        v101 = [coderCopy hm_decodeAndCacheUUIDForKey:@"HM.accountIdentifier"];
        accountIdentifier = v6->_accountIdentifier;
        v6->_accountIdentifier = v101;
      }

      v6->_controllable = [coderCopy decodeBoolForKey:@"HMA.controllable"];
      if ([coderCopy containsValueForKey:@"HM.softwareUpdate"])
      {
        v103 = [[HMSoftwareUpdateController alloc] initWithAccessory:v6];
        softwareUpdateController = v6->_softwareUpdateController;
        v6->_softwareUpdateController = v103;

        v105 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.softwareUpdate"];
        if (v105)
        {
          [(HMSoftwareUpdateController *)v6->_softwareUpdateController setAvailableUpdate:v105];
        }
      }

      v173 = v91;
      v106 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.remoteLoginHandler"];
      remoteLoginHandler = v6->_remoteLoginHandler;
      v6->_remoteLoginHandler = v106;

      v6->_hasSymptomsHandler = [coderCopy decodeBoolForKey:@"HM.hasSymptomsHandler"];
      v6->_supportsMediaAccessControl = [coderCopy decodeBoolForKey:@"HMA.supportsMediaAccessControl"];
      v6->_knownToSystemCommissioner = [coderCopy decodeBoolForKey:@"HMA.knownToSystemCommissioner"];
      v108 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.rootPublicKey"];
      rootPublicKey = v6->_rootPublicKey;
      v6->_rootPublicKey = v108;

      v110 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.nodeID"];
      nodeID = v6->_nodeID;
      v6->_nodeID = v110;

      v112 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.commissioningID"];
      commissioningID = v6->_commissioningID;
      v6->_commissioningID = v112;

      v114 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.vendorID"];
      vendorID = v6->_vendorID;
      v6->_vendorID = v114;

      v116 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.productID"];
      productID = v6->_productID;
      v6->_productID = v116;

      v6->_requiresThreadRouter = [coderCopy decodeBoolForKey:@"HMA.requiresThreadRouter"];
      v118 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterWEDSupport"];
      matterWEDSupport = v6->_matterWEDSupport;
      v6->_matterWEDSupport = v118;

      v120 = [coderCopy hm_decodeAndCacheStringForKey:@"HMA.matterExtendedMACAddress"];
      matterExtendedMACAddress = v6->_matterExtendedMACAddress;
      v6->_matterExtendedMACAddress = v120;

      v122 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.supportedLinkLayerTypes"];
      supportedLinkLayerTypes = v6->_supportedLinkLayerTypes;
      v6->_supportedLinkLayerTypes = v122;

      v6->_supportsNativeMatter = [coderCopy decodeBoolForKey:@"HMA.supportsNativeMatter"];
      v124 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.wifiNetworkInfo"];
      wifiNetworkInfo = v6->_wifiNetworkInfo;
      v6->_wifiNetworkInfo = v124;

      v6->_supportsTargetControl = [coderCopy decodeBoolForKey:@"HMCT.supportsTargetControl"];
      v6->_supportsTargetController = [coderCopy decodeBoolForKey:@"HMCT.supportsTargetController"];
      v6->_targetControllerHardwareSupport = [coderCopy decodeBoolForKey:@"HMCT.targetControllerHardwareSupport"];
      v6->_supportsMultiUser = [coderCopy decodeBoolForKey:@"HMA.supportsMultiUser"];
      v6->_supportsHomeLevelLocationServiceSetting = [coderCopy decodeBoolForKey:@"HMA.HomeLevelLocationServiceSetting"];
      v6->_supportsAudioReturnChannel = [coderCopy decodeBoolForKey:@"HMA.supportsAudioReturnChannel"];
      v6->_supportsCompanionInitiatedRestart = [coderCopy decodeBoolForKey:@"HMA.supportsCompanionInitiatedRestart"];
      v6->_supportsCompanionInitiatedObliterate = [coderCopy decodeBoolForKey:@"HMA.supportsCompanionInitiatedObliterate"];
      v6->_supportsMusicAlarm = [coderCopy decodeBoolForKey:@"HMA.SupportsMusicAlarm"];
      v6->_supportsMediaContentProfile = [coderCopy decodeBoolForKey:@"HM.ac.mediacontentprofile"];
      v126 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.protectionGroupUID"];
      if (v126)
      {
        v127 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v126];
        networkProtectionGroupUUID = v6->_networkProtectionGroupUUID;
        v6->_networkProtectionGroupUUID = v127;
      }

      v174 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAudioDestinationControllerDataCodingKey"];
      v130 = v174;
      v171 = v126;
      if (v174)
      {
        v174 = [[HMMediaDestinationController alloc] initWithControllerData:v174, v126, v173, v174];
      }

      audioDestinationController = v6->_audioDestinationController;
      v6->_audioDestinationController = v174;

      v132 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryAudioDestinationCodingKey"];
      audioDestination = v6->_audioDestination;
      v6->_audioDestination = v132;

      category = [(HMAccessory *)v6 category];
      categoryType = [category categoryType];
      v136 = [categoryType isEqual:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2"];

      if (v136)
      {
        v137 = [coderCopy decodeBoolForKey:@"HMA.audioAnalysisEventBulletinBoardNotificationEnabled"];
        v138 = MEMORY[0x1E695DFD8];
        v183[0] = objc_opt_class();
        v183[1] = objc_opt_class();
        v139 = [MEMORY[0x1E695DEC8] arrayWithObjects:v183 count:2];
        v140 = [v138 setWithArray:v139];
        v141 = [coderCopy decodeObjectOfClasses:v140 forKey:@"HMA.audioAnalysisEventBulletinBoardNotificationCondition"];

        home = [(HMAccessory *)v6 home];
        v143 = [HMPredicateUtilities rewritePredicateForClient:v141 home:home];

        v144 = [[HMAudioAnalysisEventBulletinBoardNotification alloc] initWithEnabled:v137 condition:v143 accessoryIdentifier:v5];
        audioAnalysisEventBulletinBoardNotification = v6->_audioAnalysisEventBulletinBoardNotification;
        v6->_audioAnalysisEventBulletinBoardNotification = v144;
      }

      v6->_supportsAudioAnalysis = [coderCopy decodeBoolForKey:{@"HMA.SupportsAudioAnalysis", v171}];
      v6->_supportsDropIn = [coderCopy decodeBoolForKey:@"HMA.SupportsDropIn"];
      v6->_supportsAnnounce = [coderCopy decodeBoolForKey:@"HMA.SupportsAnnounce"];
      v6->_supportsMediaActions = [coderCopy decodeBoolForKey:@"HMA.SupportsMediaActions"];
      v6->_supportsAccessCodes = [coderCopy decodeBoolForKey:@"HMAccessorySupportsAccessCodeCodingKey"];
      v6->_supportsWalletKey = [coderCopy decodeBoolForKey:@"HMAccessorySupportsWalletCodingKey"];
      v6->_supportsUWBUnlock = [coderCopy decodeBoolForKey:@"HMAccessorySupportsUWBUnlockCodingKey"];
      v146 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryReaderGroupSubIdentifierACWGCodingKey"];
      readerGroupSubIdentifierACWG = v6->_readerGroupSubIdentifierACWG;
      v6->_readerGroupSubIdentifierACWG = v146;

      v148 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryReaderIDACWGCodingKey"];
      readerIDACWG = v6->_readerIDACWG;
      v6->_readerIDACWG = v148;

      v6->_mfiCertifiedACWG = [coderCopy decodeBoolForKey:@"HMAccessoryMFiCertifiedACWGCodingKey"];
      v150 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryWeekDayScheduleCapacityCodingKey"];
      weekDaySchedulesPerUserCapacity = v6->_weekDaySchedulesPerUserCapacity;
      v6->_weekDaySchedulesPerUserCapacity = v150;

      v152 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMAccessoryYearDayScheduleCapacityCodingKey"];
      yearDaySchedulesPerUserCapacity = v6->_yearDaySchedulesPerUserCapacity;
      v6->_yearDaySchedulesPerUserCapacity = v152;

      v6->_supportsDoorbellChime = [coderCopy decodeBoolForKey:@"HMA.SupportsDoorbellChime"];
      v6->_supportsCoordinationDoorbellChime = [coderCopy decodeBoolForKey:@"HMA.SupportsCoordinationDoorbellChime"];
      v6->_supportsUserMediaSettings = [coderCopy decodeBoolForKey:@"HMA.SupportsUserMediaSetting"];
      v6->_supportsThirdPartyMusic = [coderCopy decodeBoolForKey:@"HMA.supportsThirdPartyMusic"];
      v6->_supportsPreferredMediaUser = [coderCopy decodeBoolForKey:@"HM.ac.supportsPreferredMediaUser"];
      v6->_supportsMessagedHomePodSettings = [coderCopy decodeBoolForKey:@"HMA.HMAccessorySupportsMessagedHomePodSettingsCodingKey"];
      v6->_supportsPrimaryUserInfoSubscription = [coderCopy decodeBoolForKey:@"HMA.HMAccessorySupportsPrimaryUserInfoSubscriptionCodingKey"];
      if (!v6->_supportsMessagedHomePodSettings)
      {
        v154 = [coderCopy hm_decodeAndCacheUUIDForKey:@"HM.ac.preferredMediaUser"];
        preferredMediaUserUUID = v6->_preferredMediaUserUUID;
        v6->_preferredMediaUserUUID = v154;

        v156 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.ac.preferredUserSelection"];
        v6->_preferredUserSelectionType = [v156 unsignedIntegerValue];
      }

      v157 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.supportedDiagnosticsCodingKey"];
      supportedDiagnostics = v6->_supportedDiagnostics;
      v6->_supportedDiagnostics = v157;

      if ([coderCopy containsValueForKey:@"HM.supportedStereoPairVersionsCodingKey"])
      {
        v159 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.supportedStereoPairVersionsCodingKey"];
        v6->_supportedStereoPairVersions = [v159 unsignedIntegerValue];
      }

      if ([coderCopy containsValueForKey:@"HM.homePodVariantCodingKey"])
      {
        v160 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.homePodVariantCodingKey"];
        v6->_homePodVariant = [v160 unsignedIntegerValue];
      }

      v161 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.hasOnboardedForNaturalLightingKey"];
      v6->_hasOnboardedForNaturalLighting = [v161 BOOLValue];
      v6->_supportsManagedConfigurationProfile = [coderCopy decodeBoolForKey:@"HMA.ManagedConfigurationProfileCodingKey"];
      v6->_productColor = [coderCopy decodeIntegerForKey:@"HM.productColor"];
      v6->_supportsSoftwareUpdateV2 = [coderCopy decodeBoolForKey:@"HMA.SupportsSoftwareUpdateV2CodingKey"];
      v6->_supportsRMVonAppleTV = [coderCopy decodeBoolForKey:@"HM.ac.supportsRMVonAppleTV"];
      v6->_supportsJustSiri = [coderCopy decodeBoolForKey:@"HM.ac.supportsJustSiri"];
      if ([coderCopy containsValueForKey:@"HM.BulletinBoardNotification"])
      {
        v162 = MEMORY[0x1E695DFD8];
        v182[0] = objc_opt_class();
        v182[1] = objc_opt_class();
        v182[2] = objc_opt_class();
        v163 = [MEMORY[0x1E695DEC8] arrayWithObjects:v182 count:3];
        v164 = [v162 setWithArray:v163];
        v165 = [coderCopy decodeObjectOfClasses:v164 forKey:@"HM.BulletinBoardNotification"];
        bulletinBoardNotificationByEndpoint = v6->_bulletinBoardNotificationByEndpoint;
        v6->_bulletinBoardNotificationByEndpoint = v165;
      }

      v167 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.matterDeviceTypeID"];
      matterDeviceTypeID = v6->_matterDeviceTypeID;
      v6->_matterDeviceTypeID = v167;

      v6->_supportsStereoOdeonTTSUBypassingPrimary = [coderCopy decodeBoolForKey:@"HM.ac.HMAccessorySupportsStereoOdeonBypassingPrimaryCodingKey"];
      v6->_supportsNetworkDiagnostics = [coderCopy decodeBoolForKey:@"HM.ac.HMAccessorySupportsNetworkDiagnosticsCodingKey"];
      v6->_supportsCrossfadeAsAirPlaySource = [coderCopy decodeBoolForKey:@"HM.ac.HMAccessorySupportsCrossfadeAsAirPlaySourceCodingKey"];
      if ([coderCopy containsValueForKey:@"HMA.supportsAdaptiveTemperatureAutomations"])
      {
        v6->_supportsAdaptiveTemperatureAutomations = [coderCopy decodeBoolForKey:@"HMA.supportsAdaptiveTemperatureAutomations"];
      }

      if ([coderCopy containsValueForKey:@"HMA.supportsCleanEnergyAutomation"])
      {
        v6->_supportsCleanEnergyAutomation = [coderCopy decodeBoolForKey:@"HMA.supportsCleanEnergyAutomation"];
      }

      if ([coderCopy containsValueForKey:@"HMA.hasOnboardedForAdaptiveTemperatureAutomations"])
      {
        v6->_hasOnboardedForAdaptiveTemperatureAutomations = [coderCopy decodeBoolForKey:@"HMA.hasOnboardedForAdaptiveTemperatureAutomations"];
      }

      if ([coderCopy containsValueForKey:@"HMA.hasOnboardedForCleanEnergyAutomation"])
      {
        v6->_hasOnboardedForCleanEnergyAutomation = [coderCopy decodeBoolForKey:@"HMA.hasOnboardedForCleanEnergyAutomation"];
      }

      if ([coderCopy containsValueForKey:@"HMAccessoryHH1EOLEnabledCodingKey"])
      {
        v6->_hh1EOLEnabled = [coderCopy decodeBoolForKey:@"HMAccessoryHH1EOLEnabledCodingKey"];
      }

      v6->_isPrimaryResident = [coderCopy decodeBoolForKey:@"HMAccessoryIsPrimaryResidentCodingKey"];
    }

    self = v6;
    selfCopy = self;
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
    selfCopy = 0;
  }

  v169 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

id __29__HMAccessory_initWithCoder___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

- (id)_handleMultipleCharacteristicsUpdated:(id)updated message:(id)message informDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v77 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  messageCopy = message;
  delegate = [(HMAccessory *)self delegate];
  v43 = delegate;
  v48 = delegateCopy && delegate && (objc_opt_respondsToSelector() & 1) != 0;
  v42 = +[HMHAPMetadata getSharedInstance];
  array = [MEMORY[0x1E695DF70] array];
  v54 = objc_alloc_init(MEMORY[0x1E696ADA0]);
  [v54 setNumberStyle:1];
  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = updatedCopy;
  v39 = [obj countByEnumeratingWithState:&v67 objects:v76 count:16];
  if (v39)
  {
    v38 = *v68;
    selfCopy = self;
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
                  null = [MEMORY[0x1E695DFB0] null];
                  v20 = [v18 isEqual:null];

                  if (v20)
                  {

                    v18 = 0;
                  }

                  v21 = [v17 errorFromDataForKey:@"kCharacteristicErrorDataKey"];
                  v22 = [[HMCharacteristicRequest alloc] initWithCharacteristic:v16];
                  v23 = [[HMCharacteristicResponse alloc] initWithRequest:v22 value:v18 error:v21];
                  [array addObject:v23];
                  if (!v21)
                  {
                    value = [v16 value];
                    headers = [messageCopy headers];
                    v25 = [headers hmf_dateForKey:@"HMXPCMessageSentDateKey"];

                    [v16 _updateValue:v18 valueUpdatedDate:v25];
                    if (v48)
                    {
                      if (!HMFEqualObjects() || ([v16 characteristicType], v26 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v42, "shouldNotCacheCharacteristicOfType:", v26), v26, v46))
                      {
                        context = [(HMAccessory *)selfCopy context];
                        delegateCaller = [context delegateCaller];
                        v58[0] = MEMORY[0x1E69E9820];
                        v58[1] = 3221225472;
                        v58[2] = __76__HMAccessory__handleMultipleCharacteristicsUpdated_message_informDelegate___block_invoke;
                        v58[3] = &unk_1E754DE30;
                        v59 = v43;
                        v60 = selfCopy;
                        v61 = v44;
                        v62 = v16;
                        [delegateCaller invokeBlock:v58];
                      }
                    }

                    self = selfCopy;
                  }
                }

                else
                {
                  v27 = objc_autoreleasePoolPush();
                  selfCopy2 = self;
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
          selfCopy3 = self;
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

  v35 = [array copy];
  v36 = *MEMORY[0x1E69E9840];

  return v35;
}

- (void)_updateName:(id)name forService:(id)service completionHandler:(id)handler
{
  v64 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  serviceCopy = service;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateName:forService:completionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    if (home)
    {
      name = [serviceCopy name];
      v15 = [name isEqual:nameCopy];

      if (v15)
      {
        context2 = [(HMAccessory *)self context];
        delegateCaller = [context2 delegateCaller];
        [delegateCaller callCompletion:handlerCopy error:0];
      }

      else
      {
        targetAccessoryUUID = [serviceCopy targetAccessoryUUID];
        v25 = [nameCopy copy];
        v46 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:targetAccessoryUUID];
        v26 = MEMORY[0x1E69A2A10];
        v58[0] = @"kServiceInstanceID";
        instanceID = [serviceCopy instanceID];
        v58[1] = @"kServiceName";
        v59[0] = instanceID;
        v59[1] = v25;
        v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v59 forKeys:v58 count:2];
        v48 = [v26 messageWithName:@"kRenameServiceRequestKey" destination:v46 payload:v28];

        objc_initWeak(buf, serviceCopy);
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 3221225472;
        aBlock[2] = __56__HMAccessory__updateName_forService_completionHandler___block_invoke;
        aBlock[3] = &unk_1E754D960;
        objc_copyWeak(&v57, buf);
        v45 = v25;
        v54 = v45;
        selfCopy2 = self;
        v56 = handlerCopy;
        v29 = _Block_copy(aBlock);
        context3 = [(HMAccessory *)self context];
        pendingRequests = [context3 pendingRequests];

        identifier = [v48 identifier];
        v33 = _Block_copy(v29);
        [pendingRequests addCompletionBlock:v33 forIdentifier:identifier];

        v49[0] = MEMORY[0x1E69E9820];
        v49[1] = 3221225472;
        v49[2] = __56__HMAccessory__updateName_forService_completionHandler___block_invoke_2;
        v49[3] = &unk_1E754E480;
        v34 = pendingRequests;
        v50 = v34;
        v35 = identifier;
        v51 = v35;
        v36 = v29;
        v52 = v36;
        [v48 setResponseHandler:v49];
        messageDispatcher = [v12 messageDispatcher];
        [messageDispatcher sendMessage:v48 completionHandler:0];

        objc_destroyWeak(&v57);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      context4 = [(HMAccessory *)self context];
      delegateCaller2 = [context4 delegateCaller];
      v24 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller2 callCompletion:handlerCopy error:v24];

      home = 0;
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
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

- (void)_updateAuthorizationData:(id)data forService:(id)service characteristic:(id)characteristic completionHandler:(id)handler
{
  v62 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  serviceCopy = service;
  characteristicCopy = characteristic;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v43 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateAuthorizationData:forService:characteristic:completionHandler:]", @"completion"];
    v44 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v15 = context;
  if (context)
  {
    home = [(HMAccessory *)self home];
    v17 = home;
    if (home)
    {
      v49 = v15;
      v56[0] = @"kHomeUUID";
      uuid = [home uuid];
      uUIDString = [uuid UUIDString];
      v20 = serviceCopy;
      v21 = uUIDString;
      v57[0] = uUIDString;
      v56[1] = @"kServiceInstanceID";
      v51 = v20;
      instanceID = [v20 instanceID];
      v57[1] = instanceID;
      v56[2] = @"kCharacteristicInstanceID";
      v50 = characteristicCopy;
      instanceID2 = [characteristicCopy instanceID];
      v57[2] = instanceID2;
      v56[3] = @"kAuthorizationDataKey";
      data = dataCopy;
      if (!dataCopy)
      {
        data = [MEMORY[0x1E695DEF0] data];
      }

      v57[3] = data;
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:4];
      if (!dataCopy)
      {
      }

      v26 = objc_alloc(MEMORY[0x1E69A2A10]);
      v27 = objc_alloc(MEMORY[0x1E69A2A00]);
      uuid2 = [(HMAccessory *)self uuid];
      v29 = [v27 initWithTarget:uuid2];
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
      v55 = handlerCopy;
      [v31 setResponseHandler:v52];
      messageDispatcher = [v33 messageDispatcher];
      [messageDispatcher sendMessage:v31];

      serviceCopy = v51;
    }

    else
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller = [context2 delegateCaller];
      [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      v41 = v32 = characteristicCopy;
      [delegateCaller callCompletion:handlerCopy error:v41];
    }
  }

  else
  {
    v32 = characteristicCopy;
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v17);
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

- (void)_updateAssociatedServiceType:(id)type forService:(id)service completionHandler:(id)handler
{
  v50 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  serviceCopy = service;
  handlerCopy = handler;
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543874;
    v45 = v14;
    v46 = 2112;
    v47 = typeCopy;
    v48 = 2112;
    v49 = serviceCopy;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating service type: %@, for service: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  context = [(HMAccessory *)selfCopy context];
  if (!handlerCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateAssociatedServiceType:forService:completionHandler:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    v32 = selfCopy;
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

  v16 = context;
  if (context)
  {
    home = [(HMAccessory *)selfCopy home];
    if (home)
    {
      uuid = [(HMAccessory *)selfCopy uuid];
      v42[0] = @"kHomeUUID";
      uuid2 = [home uuid];
      uUIDString = [uuid2 UUIDString];
      v43[0] = uUIDString;
      v42[1] = @"kServiceInstanceID";
      [serviceCopy instanceID];
      v21 = v20 = serviceCopy;
      v42[2] = @"kServiceType";
      v43[1] = v21;
      v43[2] = typeCopy;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v43 forKeys:v42 count:3];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __73__HMAccessory__updateAssociatedServiceType_forService_completionHandler___block_invoke;
      v37[3] = &unk_1E754B6C8;
      v37[4] = selfCopy;
      v38 = typeCopy;
      v39 = v16;
      v41 = handlerCopy;
      v40 = v20;
      [(_HMContext *)v39 sendMessage:uuid target:v22 payload:v37 responseHandler:?];

      serviceCopy = v20;
    }

    else
    {
      delegateCaller = [v16 delegateCaller];
      v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v28];
    }
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    v24 = selfCopy;
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
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
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

- (id)_findCharacteristic:(id)characteristic forService:(id)service
{
  v23 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  v7 = [(HMAccessory *)self _findService:service];
  v8 = v7;
  if (v7)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    characteristics = [v7 characteristics];
    v10 = [characteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = *v19;
      while (2)
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(characteristics);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          instanceID = [v13 instanceID];
          v15 = [instanceID isEqual:characteristicCopy];

          if (v15)
          {
            v10 = v13;
            goto LABEL_12;
          }
        }

        v10 = [characteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
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

- (id)_findServiceWithUniqueIdentifier:(id)identifier
{
  v19 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HMAccessory *)self services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        uniqueIdentifier = [v9 uniqueIdentifier];
        v11 = [uniqueIdentifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (id)_findService:(id)service
{
  v19 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  services = [(HMAccessory *)self services];
  v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(services);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        instanceID = [v9 instanceID];
        v11 = [instanceID isEqual:serviceCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [services countByEnumeratingWithState:&v14 objects:v18 count:16];
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

- (void)setRemoteLoginHandler:(id)handler
{
  v15 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = handlerCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting remote login handler: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  remoteLoginHandler = selfCopy->_remoteLoginHandler;
  selfCopy->_remoteLoginHandler = handlerCopy;

  os_unfair_lock_unlock(&selfCopy->_lock);
  v10 = *MEMORY[0x1E69E9840];
}

- (void)_updateRoom:(id)room completionHandler:(id)handler
{
  v66 = *MEMORY[0x1E69E9840];
  roomCopy = room;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateRoom:completionHandler:]", @"completion"];
    v41 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    delegateCaller = [context delegateCaller];
    if (roomCopy)
    {
      home = [(HMAccessory *)self home];
      room = [(HMAccessory *)self room];
      v12 = room;
      if (home)
      {
        if ([room isEqual:roomCopy])
        {
          [delegateCaller callCompletion:handlerCopy error:0];
        }

        else
        {
          v23 = objc_alloc(MEMORY[0x1E69A2A00]);
          messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
          v46 = [v23 initWithTarget:messageTargetUUID];

          v25 = MEMORY[0x1E69A2A10];
          v58 = @"kRoomUUID";
          uuid = [roomCopy uuid];
          uUIDString = [uuid UUIDString];
          v59 = uUIDString;
          v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
          v47 = [v25 messageWithName:@"kUpdateRoomForAccessoryRequestKey" destination:v46 payload:v28];

          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __45__HMAccessory__updateRoom_completionHandler___block_invoke;
          aBlock[3] = &unk_1E754D960;
          objc_copyWeak(&v57, buf);
          v54 = roomCopy;
          v55 = delegateCaller;
          v29 = handlerCopy;
          v56 = v29;
          v30 = _Block_copy(aBlock);
          context2 = [(HMAccessory *)self context];
          pendingRequests = [context2 pendingRequests];

          identifier = [v47 identifier];
          v34 = _Block_copy(v29);
          [pendingRequests addCompletionBlock:v34 forIdentifier:identifier];

          v49[0] = MEMORY[0x1E69E9820];
          v49[1] = 3221225472;
          v49[2] = __45__HMAccessory__updateRoom_completionHandler___block_invoke_2;
          v49[3] = &unk_1E754E480;
          v35 = pendingRequests;
          v50 = v35;
          v36 = identifier;
          v51 = v36;
          v37 = v30;
          v52 = v37;
          [v47 setResponseHandler:v49];
          messageDispatcher = [v9 messageDispatcher];
          [messageDispatcher sendMessage:v47 completionHandler:0];

          objc_destroyWeak(&v57);
          objc_destroyWeak(buf);
        }
      }

      else
      {
        if (!room)
        {
          v18 = objc_autoreleasePoolPush();
          selfCopy2 = self;
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
        [delegateCaller callCompletion:handlerCopy error:v22];
      }
    }

    else
    {
      v17 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v17];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, delegateCaller);
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

- (void)_readValueForCharacteristic:(id)characteristic completionHandler:(id)handler
{
  v77 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v49 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _readValueForCharacteristic:completionHandler:]", @"completion"];
    v50 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v10 = context;
  if (context)
  {
    if (characteristicCopy)
    {
      service = [characteristicCopy service];
      if (service)
      {
        home = [(HMAccessory *)self home];
        if (home)
        {
          properties = [characteristicCopy properties];
          v14 = [properties containsObject:@"HMCharacteristicPropertyReadable"];

          if (v14)
          {
            v15 = objc_alloc(MEMORY[0x1E69A29C0]);
            v16 = MEMORY[0x1E696AEC0];
            v17 = MEMORY[0x19EAEB2A0](self, a2);
            3871 = [v16 stringWithFormat:@"%@, %s:%ld", v17, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Accessory/HMAccessory.m", 3871];
            v57 = [v15 initWithName:3871];

            instanceID = [characteristicCopy instanceID];
            characteristicType = [characteristicCopy characteristicType];
            [service targetAccessoryUUID];

            v71[0] = @"kAccessoryUUID";
            targetAccessoryUUID = [service targetAccessoryUUID];
            uUIDString = [targetAccessoryUUID UUIDString];
            v72[0] = uUIDString;
            v71[1] = @"kServiceInstanceID";
            instanceID2 = [service instanceID];
            v72[1] = instanceID2;
            v71[2] = @"kCharacteristicInstanceID";
            instanceID3 = [characteristicCopy instanceID];
            v72[2] = instanceID3;
            v71[3] = @"kHomeUUID";
            [home uuid];
            v22 = v62 = home;
            uUIDString2 = [v22 UUIDString];
            v72[3] = uUIDString2;
            [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:4];
            v58 = v61 = service;

            v24 = objc_alloc(MEMORY[0x1E69A2A10]);
            v25 = objc_alloc(MEMORY[0x1E69A2A00]);
            messageTargetUUID = [v62 messageTargetUUID];
            v27 = [v25 initWithTarget:messageTargetUUID];
            v28 = [v24 initWithName:@"kCharacteristicReadRequestKey" destination:v27 payload:v58];

            [v28 setActivity:v57];
            context2 = [(HMAccessory *)self context];
            pendingRequests = [context2 pendingRequests];

            identifier = [v28 identifier];
            v32 = _Block_copy(handlerCopy);
            [pendingRequests addCompletionBlock:v32 forIdentifier:identifier];

            v63[0] = MEMORY[0x1E69E9820];
            v63[1] = 3221225472;
            v63[2] = __61__HMAccessory__readValueForCharacteristic_completionHandler___block_invoke;
            v63[3] = &unk_1E754B4C0;
            v64 = v57;
            selfCopy2 = self;
            v66 = instanceID;
            v67 = characteristicType;
            v68 = pendingRequests;
            v69 = identifier;
            v33 = v10;
            v70 = v33;
            v56 = identifier;
            v34 = pendingRequests;
            v35 = characteristicType;
            v36 = instanceID;
            v37 = v57;
            [v28 setResponseHandler:v63];
            messageDispatcher = [v33 messageDispatcher];
            [messageDispatcher sendMessage:v28];

            [v37 end];
            home = v62;

            service = v61;
LABEL_18:

            goto LABEL_19;
          }

          context3 = [(HMAccessory *)self context];
          delegateCaller = [context3 delegateCaller];
          v45 = MEMORY[0x1E696ABC0];
          v46 = 6;
        }

        else
        {
          context3 = [(HMAccessory *)self context];
          delegateCaller = [context3 delegateCaller];
          v45 = MEMORY[0x1E696ABC0];
          v46 = 12;
        }

        v47 = [v45 errorWithDomain:@"HMErrorDomain" code:v46 userInfo:0];
        [delegateCaller callCompletion:handlerCopy error:v47];
      }

      else
      {
        home = [(HMAccessory *)self context];
        context3 = [home delegateCaller];
        delegateCaller = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
        [context3 callCompletion:handlerCopy error:delegateCaller];
      }
    }

    else
    {
      service = [(HMAccessory *)self context];
      home = [service delegateCaller];
      context3 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [home callCompletion:handlerCopy error:context3];
    }

    goto LABEL_18;
  }

  v39 = objc_autoreleasePoolPush();
  selfCopy3 = self;
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
  service = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, service);
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

- (void)_writeValue:(id)value forCharacteristic:(id)characteristic service:(id)service completionHandler:(id)handler
{
  v92[5] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  characteristicCopy = characteristic;
  serviceCopy = service;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _writeValue:forCharacteristic:service:completionHandler:]", @"completion"];
    v59 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v16 = context;
  if (context)
  {
    aBlock = handlerCopy;
    home = [(HMAccessory *)self home];
    v74 = home;
    v75 = v16;
    if (home)
    {
      v18 = home;
      v19 = objc_alloc(MEMORY[0x1E69A29C0]);
      v20 = MEMORY[0x1E696AEC0];
      v21 = MEMORY[0x19EAEB2A0](self, a2);
      3801 = [v20 stringWithFormat:@"%@, %s:%ld", v21, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/Accessory/HMAccessory.m", 3801];
      v64 = [v19 initWithName:3801];

      instanceID = [characteristicCopy instanceID];
      characteristicType = [characteristicCopy characteristicType];
      [(HMAccessory *)self uuid];

      messageTargetUUID = [v18 messageTargetUUID];
      v23 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:messageTargetUUID];
      v68 = MEMORY[0x1E69A2A10];
      v91[0] = @"kAccessoryUUID";
      targetAccessoryUUID = [serviceCopy targetAccessoryUUID];
      uUIDString = [targetAccessoryUUID UUIDString];
      v92[0] = uUIDString;
      v92[1] = valueCopy;
      v73 = valueCopy;
      v91[1] = @"kCharacteristicValue";
      v91[2] = @"kServiceInstanceID";
      v71 = serviceCopy;
      instanceID2 = [serviceCopy instanceID];
      v92[2] = instanceID2;
      v91[3] = @"kCharacteristicInstanceID";
      v72 = characteristicCopy;
      instanceID3 = [characteristicCopy instanceID];
      v92[3] = instanceID3;
      v91[4] = @"kHomeUUID";
      uuid = [v18 uuid];
      uUIDString2 = [uuid UUIDString];
      v92[4] = uUIDString2;
      v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v92 forKeys:v91 count:5];
      v31 = v68;
      v69 = v23;
      v32 = [v31 messageWithName:@"kCharacteristicWriteRequestKey" destination:v23 payload:v30];

      [v32 setActivity:v64];
      context2 = [(HMAccessory *)self context];
      pendingRequests = [context2 pendingRequests];

      identifier = [v32 identifier];
      v36 = _Block_copy(aBlock);
      [pendingRequests addCompletionBlock:v36 forIdentifier:identifier];

      v77[0] = MEMORY[0x1E69E9820];
      v77[1] = 3221225472;
      v77[2] = __71__HMAccessory__writeValue_forCharacteristic_service_completionHandler___block_invoke;
      v77[3] = &unk_1E754B4C0;
      context3 = v64;
      v78 = context3;
      selfCopy2 = self;
      delegateCaller = instanceID;
      v80 = delegateCaller;
      v39 = characteristicType;
      v81 = v39;
      v67 = pendingRequests;
      v82 = v67;
      v40 = identifier;
      v83 = v40;
      v41 = v75;
      v84 = v41;
      [v32 setResponseHandler:v77];
      v42 = objc_autoreleasePoolPush();
      selfCopy3 = self;
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
      messageDispatcher = [v41 messageDispatcher];
      [messageDispatcher sendMessage:v32];

      [context3 end];
      characteristicCopy = v72;
      valueCopy = v73;
      serviceCopy = v71;
      handlerCopy = aBlock;
    }

    else
    {
      v53 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v55 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
      {
        v56 = HMFGetLogIdentifier();
        *buf = 138543618;
        v86 = v56;
        v87 = 2112;
        v88 = characteristicCopy;
        _os_log_impl(&dword_19BB39000, v55, OS_LOG_TYPE_ERROR, "%{public}@Cannot write value for characteristic %@: home is nil", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v53);
      context3 = [(HMAccessory *)selfCopy4 context];
      delegateCaller = [context3 delegateCaller];
      v39 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
      handlerCopy = aBlock;
      [delegateCaller callCompletion:aBlock error:v39];
    }

    v52 = v74;
    v16 = v75;
  }

  else
  {
    v47 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v49 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v51 = v50 = handlerCopy;
      *buf = 138543618;
      v86 = v51;
      v87 = 2080;
      v88 = "[HMAccessory _writeValue:forCharacteristic:service:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);

      handlerCopy = v50;
    }

    objc_autoreleasePoolPop(v47);
    v52 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v52);
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

- (void)_updateName:(id)name completionHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v35 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory _updateName:completionHandler:]", @"completion"];
    v36 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    v10 = [nameCopy length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v10 > HMMaxLengthForNaming__hmf_once_v9)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543362;
        v50 = v14;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      delegateCaller = [v9 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [delegateCaller callCompletion:handlerCopy error:v16];

      goto LABEL_22;
    }

    delegateCaller = [nameCopy copy];
    home = [(HMAccessory *)self home];
    if (home)
    {
      name = [(HMAccessory *)self name];
      v23 = HMFEqualObjects();

      if (!v23)
      {
        if (nameCopy)
        {
          v47 = @"kAccessoryName";
          v48 = delegateCaller;
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
        messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
        v31 = [v29 initWithTarget:messageTargetUUID];

        v32 = [MEMORY[0x1E69A2A10] messageWithName:@"kRenameAccessoryRequestKey" destination:v31 payload:v28];
        objc_initWeak(buf, self);
        v41[0] = MEMORY[0x1E69E9820];
        v41[1] = 3221225472;
        v41[2] = __45__HMAccessory__updateName_completionHandler___block_invoke;
        v41[3] = &unk_1E754D058;
        objc_copyWeak(&v44, buf);
        v42 = delegateCaller;
        v43 = handlerCopy;
        [v32 setResponseHandler:v41];
        messageDispatcher = [v9 messageDispatcher];
        [messageDispatcher sendMessage:v32 completionHandler:0];

        objc_destroyWeak(&v44);
        objc_destroyWeak(buf);

        goto LABEL_21;
      }

      context2 = [(HMAccessory *)self context];
      delegateCaller2 = [context2 delegateCaller];
      [delegateCaller2 callCompletion:handlerCopy error:0];
    }

    else
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller2 = [context2 delegateCaller];
      v26 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller2 callCompletion:handlerCopy error:v26];
    }

LABEL_21:
    goto LABEL_22;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
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
  delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
  (*(handlerCopy + 2))(handlerCopy, delegateCaller);
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

- (void)updateAccessoryName:(id)name completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateAccessoryName:completionHandler:]", @"completion"];
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  context2 = [(HMAccessory *)self context];

  if (context2)
  {
    queue = [v9 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__HMAccessory_updateAccessoryName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v25 = nameCopy;
    v26 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v16);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  context = [(HMAccessory *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updateName:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__HMAccessory_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    v24 = v6;
    selfCopy2 = self;
    v26 = v7;
    dispatch_async(queue, block);

    v11 = v24;
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

- (void)setCertificationStatus:(int64_t)status
{
  os_unfair_lock_lock_with_options();
  self->_certificationStatus = status;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)certificationStatus
{
  os_unfair_lock_lock_with_options();
  certificationStatus = self->_certificationStatus;
  os_unfair_lock_unlock(&self->_lock);
  return certificationStatus;
}

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

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

- (void)setSuspendedState:(unint64_t)state
{
  os_unfair_lock_lock_with_options();
  self->_suspendedState = state;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)suspendedState
{
  os_unfair_lock_lock_with_options();
  suspendedState = self->_suspendedState;
  os_unfair_lock_unlock(&self->_lock);
  return suspendedState;
}

- (void)setSuspendCapable:(BOOL)capable
{
  os_unfair_lock_lock_with_options();
  self->_suspendCapable = capable;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isSuspendCapable
{
  os_unfair_lock_lock_with_options();
  suspendCapable = self->_suspendCapable;
  os_unfair_lock_unlock(&self->_lock);
  return suspendCapable;
}

- (void)clearMatterCredentialWithType:(int64_t)type index:(int64_t)index completion:(id)completion
{
  v32 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v12 = [v10 initWithTarget:messageTargetUUID];

    v13 = MEMORY[0x1E69A2A10];
    v26[0] = @"type";
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:type];
    v26[1] = @"index";
    v27[0] = v14;
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v27[1] = v15;
    v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v17 = [v13 messageWithName:@"homeutil_clearClearCredential" destination:v12 payload:v16];

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __62__HMAccessory_clearMatterCredentialWithType_index_completion___block_invoke;
    v24[3] = &unk_1E754C0F0;
    v25 = completionCopy;
    [v17 setResponseHandler:v24];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v17];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)clearMatterUserWithIndex:(int64_t)index completion:(id)completion
{
  v29 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v10 = [v8 initWithTarget:messageTargetUUID];

    v11 = MEMORY[0x1E69A2A10];
    v23 = @"index";
    v12 = [MEMORY[0x1E696AD98] numberWithInteger:index];
    v24 = v12;
    v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    v14 = [v11 messageWithName:@"homeutil_clearUser" destination:v10 payload:v13];

    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __51__HMAccessory_clearMatterUserWithIndex_completion___block_invoke;
    v21[3] = &unk_1E754C0F0;
    v22 = completionCopy;
    [v14 setResponseHandler:v21];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v14];
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)dumpMatterUsersWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:messageTargetUUID];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"homeutil_getAllUsers" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __45__HMAccessory_dumpMatterUsersWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = completionCopy;
    [v9 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)getAccessoryDiagnosticEventsWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:messageTargetUUID];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.accessoryDiagnosticEvents" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__HMAccessory_getAccessoryDiagnosticEventsWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = completionCopy;
    [v9 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)getAccessoryDiagnosticCountersWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:messageTargetUUID];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.accessoryDiagnosticCounters" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__HMAccessory_getAccessoryDiagnosticCountersWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = completionCopy;
    [v9 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)queryLinkQualityWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    if (_os_feature_enabled_impl())
    {
      v6 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
      v8 = [v6 initWithTarget:messageTargetUUID];

      v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.linkQualityRequest" destination:v8 payload:0];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __46__HMAccessory_queryLinkQualityWithCompletion___block_invoke;
      v16[3] = &unk_1E754C0F0;
      v17 = completionCopy;
      [v9 setResponseHandler:v16];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v9];
    }

    else
    {
      v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48 description:@"Feature is disabled" reason:@"Feature flag is disabled" suggestion:0];
      (*(completionCopy + 2))(completionCopy, 0, v8);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)validatePairingAuthMethodWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v8 = [v6 initWithTarget:messageTargetUUID];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMA.validateAuthMethod" destination:v8 payload:0];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__HMAccessory_validatePairingAuthMethodWithCompletion___block_invoke;
    v16[3] = &unk_1E754C0F0;
    v17 = completionCopy;
    [v9 setResponseHandler:v16];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v9];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)queryAdvertisementInformationWithCompletionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v22 = @"kAccessoryUUID";
    uuid = [(HMAccessory *)self uuid];
    uUIDString = [uuid UUIDString];
    v23 = uUIDString;
    v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid2 = [(HMAccessory *)self uuid];
    v12 = [v10 initWithTarget:uuid2];
    v13 = [v9 initWithName:@"kAccessoryAdvertisingParamsRequestKey" destination:v12 payload:v8];

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __66__HMAccessory_queryAdvertisementInformationWithCompletionHandler___block_invoke;
    v20[3] = &unk_1E754C0F0;
    v21 = handlerCopy;
    [v13 setResponseHandler:v20];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v13];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

- (void)setControllable:(BOOL)controllable
{
  os_unfair_lock_lock_with_options();
  self->_controllable = controllable;

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
  calibrationStatus = [(HMAccessory *)self calibrationStatus];
  if (calibrationStatus)
  {
    LOBYTE(calibrationStatus) = [(HMAccessory *)self calibrationStatus]== 1;
  }

  return calibrationStatus;
}

- (BOOL)isAdditionalSetupRequired
{
  additionalSetupStatus = [(HMAccessory *)self additionalSetupStatus];
  if (additionalSetupStatus)
  {
    LOBYTE(additionalSetupStatus) = [(HMAccessory *)self additionalSetupStatus]== 1;
  }

  return additionalSetupStatus;
}

- (void)setHAPInstanceID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  HAPInstanceID = self->_HAPInstanceID;
  self->_HAPInstanceID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)HAPInstanceID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_HAPInstanceID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVendorAccessory:(BOOL)accessory
{
  os_unfair_lock_lock_with_options();
  self->_vendorAccessory = accessory;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isVendorAccessory
{
  os_unfair_lock_lock_with_options();
  vendorAccessory = self->_vendorAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return vendorAccessory;
}

- (void)setFirmwareUpdateAvailable:(BOOL)available
{
  os_unfair_lock_lock_with_options();
  self->_firmwareUpdateAvailable = available;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isFirmwareUpdateAvailable
{
  os_unfair_lock_lock_with_options();
  firmwareUpdateAvailable = self->_firmwareUpdateAvailable;
  os_unfair_lock_unlock(&self->_lock);
  return firmwareUpdateAvailable;
}

- (void)setBundleID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:dCopy];
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

- (void)setStoreID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:dCopy];
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

- (id)_valueForCharacteristic:(id)characteristic ofService:(id)service
{
  v22 = *MEMORY[0x1E69E9840];
  characteristicCopy = characteristic;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  characteristics = [service characteristics];
  value2 = [characteristics countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (value2)
  {
    v8 = *v18;
    while (2)
    {
      for (i = 0; i != value2; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(characteristics);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        characteristicType = [v10 characteristicType];
        v12 = [characteristicType isEqualToString:characteristicCopy];

        if (v12)
        {
          value = [v10 value];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if (isKindOfClass)
          {
            value2 = [v10 value];
            goto LABEL_12;
          }
        }
      }

      value2 = [characteristics countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (value2)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v15 = *MEMORY[0x1E69E9840];

  return value2;
}

- (id)_accessoryInformationService
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  services = [(HMAccessory *)self services];
  v3 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(services);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        serviceType = [v7 serviceType];
        v9 = [serviceType isEqualToString:@"0000003E-0000-1000-8000-0026BB765291"];

        if (v9)
        {
          v10 = v7;
          goto LABEL_11;
        }
      }

      v4 = [services countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setSoftwareUpdateController:(id)controller
{
  controllerCopy = controller;
  os_unfair_lock_lock_with_options();
  softwareUpdateController = self->_softwareUpdateController;
  self->_softwareUpdateController = controllerCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)softwareUpdateController
{
  os_unfair_lock_lock_with_options();
  v3 = self->_softwareUpdateController;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSoftwareVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  softwareVersion = self->_softwareVersion;
  self->_softwareVersion = versionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMFSoftwareVersion)softwareVersion
{
  os_unfair_lock_lock_with_options();
  v3 = self->_softwareVersion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDeviceIRKData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  deviceIRKData = self->_deviceIRKData;
  self->_deviceIRKData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)deviceIRKData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_deviceIRKData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  os_unfair_lock_lock_with_options();
  device = self->_device;
  self->_device = deviceCopy;

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

- (void)_handlePairingIdentityUpdate:(id)update
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  context = [(HMAccessory *)self context];
  if (context)
  {
    _privateDelegate = [(HMAccessory *)self _privateDelegate];
    if (objc_opt_respondsToSelector())
    {
      context2 = [(HMAccessory *)self context];
      delegateCaller = [context2 delegateCaller];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __44__HMAccessory__handlePairingIdentityUpdate___block_invoke;
      v23[3] = &unk_1E754E5C0;
      v23[4] = self;
      v24 = _privateDelegate;
      [delegateCaller invokeBlock:v23];
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v16;
        v27 = 2112;
        v28 = _privateDelegate;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Did not call delegate for pairing identity, unregistered delegate: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }

    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v20;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Posting notification for HMAccessoryPairingIdentityUpdatedNotification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter postNotificationName:@"HMAccessoryPairingIdentityUpdatedNotification" object:selfCopy2];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

- (void)installManagedConfigurationProfileWithData:(id)data completionHandler:(id)handler
{
  v35 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  if (dataCopy)
  {
    context = [(HMAccessory *)self context];
    if (context)
    {
      v9 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
      v11 = [v9 initWithTarget:messageTargetUUID];

      v30 = @"HMAccessory.mc.data";
      v31 = dataCopy;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryInstallManagedConfigurationProfileMessage" destination:v11 payload:v12];
      objc_initWeak(location, self);
      v24 = MEMORY[0x1E69E9820];
      v25 = 3221225472;
      v26 = __76__HMAccessory_installManagedConfigurationProfileWithData_completionHandler___block_invoke;
      v27 = &unk_1E754CFF8;
      objc_copyWeak(&v29, location);
      v28 = handlerCopy;
      [v13 setResponseHandler:&v24];
      messageDispatcher = [context messageDispatcher];
      [messageDispatcher sendMessage:v13 completionHandler:0];

      objc_destroyWeak(&v29);
      objc_destroyWeak(location);
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
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
      context = 0;
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *location = 138543362;
      *&location[4] = v18;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@Nil profileData", location, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    context = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8];
    (*(handlerCopy + 2))(handlerCopy, 0, context);
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

- (void)removeManagedConfigurationProfileWithIdentifier:(id)identifier completionHandler:(id)handler
{
  v39 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  if (identifierCopy)
  {
    context = [(HMAccessory *)self context];
    if (!handlerCopy)
    {
      v25 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory removeManagedConfigurationProfileWithIdentifier:completionHandler:]", @"completionHandler"];
      v26 = objc_autoreleasePoolPush();
      selfCopy = self;
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

    v9 = context;
    if (context)
    {
      v10 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
      v12 = [v10 initWithTarget:messageTargetUUID];

      v34 = @"HMAccessory.mc.identifier";
      v35 = identifierCopy;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
      v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveManagedConfigurationProfileMessage" destination:v12 payload:v13];
      objc_initWeak(location, self);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 3221225472;
      v31[2] = __81__HMAccessory_removeManagedConfigurationProfileWithIdentifier_completionHandler___block_invoke;
      v31[3] = &unk_1E754CFF8;
      objc_copyWeak(&v33, location);
      v32 = handlerCopy;
      [v14 setResponseHandler:v31];
      messageDispatcher = [v9 messageDispatcher];
      [messageDispatcher sendMessage:v14 completionHandler:0];

      objc_destroyWeak(&v33);
      objc_destroyWeak(location);
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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
      (*(handlerCopy + 2))(handlerCopy, v12);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v9);
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

- (void)fetchManagedConfigurationProfilesWithCompletionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory fetchManagedConfigurationProfilesWithCompletionHandler:]", @"completionHandler"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v9 = [v7 initWithTarget:messageTargetUUID];

    v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryFetchManagedConfigurationProfilesMessage" destination:v9 payload:0];
    objc_initWeak(location, self);
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __70__HMAccessory_fetchManagedConfigurationProfilesWithCompletionHandler___block_invoke;
    v23[3] = &unk_1E754CFF8;
    objc_copyWeak(&v25, location);
    v24 = handlerCopy;
    [v10 setResponseHandler:v23];
    messageDispatcher = [v6 messageDispatcher];
    [messageDispatcher sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v25);
    objc_destroyWeak(location);
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, 0, v9);
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

- (void)updatePreferredMediaUserSelectionType:(unint64_t)type user:(id)user completionHandler:(id)handler
{
  v54 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory updatePreferredMediaUserSelectionType:user:completionHandler:]", @"completionHandler"];
    v34 = objc_autoreleasePoolPush();
    selfCopy = self;
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
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (context)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = HMFGetLogIdentifier();
      uuid = [userCopy uuid];
      uUIDString = [uuid UUIDString];
      v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
      *buf = 138543874;
      v49 = v14;
      v50 = 2112;
      v51 = uUIDString;
      v52 = 2112;
      v53 = v17;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Updating preferredMediaUser: %@, type: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    v46 = @"HM.ac.usersel";
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
    v47 = v18;
    v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
    v20 = [v19 mutableCopy];

    if (userCopy)
    {
      v44 = @"kUserUUIDKey";
      uuid2 = [userCopy uuid];
      uUIDString2 = [uuid2 UUIDString];
      v45 = uUIDString2;
      v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
      [v20 addEntriesFromDictionary:v23];
    }

    v24 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)selfCopy2 messageTargetUUID];
    v26 = [v24 initWithTarget:messageTargetUUID];

    v27 = MEMORY[0x1E69A2A10];
    v28 = [v20 copy];
    v29 = [v27 messageWithName:@"HM.ac.updatePreferredMediaUser" destination:v26 payload:v28];

    objc_initWeak(buf, selfCopy2);
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __76__HMAccessory_updatePreferredMediaUserSelectionType_user_completionHandler___block_invoke;
    v40[3] = &unk_1E754B480;
    objc_copyWeak(v43, buf);
    v41 = userCopy;
    v43[1] = type;
    v42 = handlerCopy;
    [v29 setResponseHandler:v40];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v29];

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
    (*(handlerCopy + 2))(handlerCopy, v20);
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

- (void)updatePreferredMediaUser:(id)user completionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  userCopy = user;
  handlerCopy = handler;
  if (!userCopy)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  [(HMAccessory *)self updatePreferredMediaUserSelectionType:1 user:userCopy completionHandler:handlerCopy];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_notifyDelegateOfUpdatedSettings:(id)settings
{
  settingsCopy = settings;
  context = [(HMAccessory *)self context];
  delegateCaller = [context delegateCaller];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__HMAccessory__notifyDelegateOfUpdatedSettings___block_invoke;
  v8[3] = &unk_1E754E5C0;
  v8[4] = self;
  v9 = settingsCopy;
  v7 = settingsCopy;
  [delegateCaller invokeBlock:v8];
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

- (void)_handleRootSettingsUpdated:(id)updated
{
  v32 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if ([(HMAccessory *)self supportsMessagedHomePodSettings])
  {
    [updatedCopy respondWithPayload:0];
  }

  else
  {
    v5 = [updatedCopy dataForKey:@"settings"];
    if (v5)
    {
      v27 = 0;
      v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v27];
      v7 = v27;
      if (v6)
      {
        v8 = [[HMAccessorySettingGroup alloc] initWithInternal:v6];
        settings = [(HMAccessory *)self settings];
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        v13 = v12;
        if (settings)
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
          settings2 = [(HMAccessory *)selfCopy settings];
          [settings2 mergeFromNewObject:settings];
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
          settings = [[HMAccessorySettings alloc] initWithSettingsContainer:selfCopy settingsControl:selfCopy rootGroup:v8];
          [(HMAccessory *)selfCopy setSettings:settings];
          [(HMAccessory *)selfCopy _notifyDelegateOfUpdatedSettings:settings];
        }

        [updatedCopy respondWithPayload:0];
      }

      else
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
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
        [updatedCopy respondWithError:v8];
      }
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        messagePayload = [updatedCopy messagePayload];
        *buf = 138543618;
        v29 = v19;
        v30 = 2112;
        v31 = messagePayload;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized root settings from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v16);
      v7 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [updatedCopy respondWithError:v7];
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

- (void)setPreferredMediaUserUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:dCopy];
  preferredMediaUserUUID = self->_preferredMediaUserUUID;
  self->_preferredMediaUserUUID = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setProductColor:(int64_t)color
{
  os_unfair_lock_lock_with_options();
  self->_productColor = color;

  os_unfair_lock_unlock(&self->_lock);
}

- (int64_t)productColor
{
  os_unfair_lock_lock_with_options();
  productColor = self->_productColor;
  os_unfair_lock_unlock(&self->_lock);
  return productColor;
}

- (void)setPreferredUserSelectionType:(unint64_t)type
{
  os_unfair_lock_lock_with_options();
  self->_preferredUserSelectionType = type;

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
  home = [(HMAccessory *)self home];
  currentUser = [home currentUser];
  preferredMediaUserUUID = [(HMAccessory *)self preferredMediaUserUUID];
  uuid = [currentUser uuid];
  v7 = [preferredMediaUserUUID hmf_isEqualToUUID:uuid];

  if (v7)
  {
    v8 = currentUser;
  }

  else
  {
    users = [home users];
    preferredMediaUserUUID2 = [(HMAccessory *)self preferredMediaUserUUID];
    v8 = [users hmf_firstObjectWithUUID:preferredMediaUserUUID2];
  }

  return v8;
}

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  settings = self->_settings;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_settings, settings);
    [settingsCopy setSettingsControl:self];
    [settingsCopy setSettingsContainerInternal:self];
    context = [(HMAccessory *)self context];

    if (context)
    {
      context2 = [(HMAccessory *)self context];
      [settingsCopy _configureWithContext:context2];
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

- (void)setIsPrimaryResident:(BOOL)resident
{
  os_unfair_lock_lock_with_options();
  self->_isPrimaryResident = resident;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isPrimaryResident
{
  os_unfair_lock_lock_with_options();
  isPrimaryResident = self->_isPrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  return isPrimaryResident;
}

- (void)setPendingConfigurationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [identifierCopy copy];
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
  uuid = [(HMAccessory *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"AC", uuid, 0);

  return v3;
}

- (unint64_t)homePodVariant
{
  os_unfair_lock_lock_with_options();
  homePodVariant = self->_homePodVariant;
  os_unfair_lock_unlock(&self->_lock);
  return homePodVariant;
}

- (void)setHomePodVariant:(unint64_t)variant
{
  os_unfair_lock_lock_with_options();
  self->_homePodVariant = variant;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)supportedStereoPairVersions
{
  os_unfair_lock_lock_with_options();
  supportedStereoPairVersions = self->_supportedStereoPairVersions;
  os_unfair_lock_unlock(&self->_lock);
  return supportedStereoPairVersions;
}

- (void)setSupportedStereoPairVersions:(unint64_t)versions
{
  os_unfair_lock_lock_with_options();
  self->_supportedStereoPairVersions = versions;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWifiNetworkInfo:(id)info
{
  infoCopy = info;
  os_unfair_lock_lock_with_options();
  wifiNetworkInfo = self->_wifiNetworkInfo;
  self->_wifiNetworkInfo = infoCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)targetControllers
{
  v40 = *MEMORY[0x1E69E9840];
  home = [(HMAccessory *)self home];
  accessories = [home accessories];
  v26 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accessories, "count")}];
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v4 = accessories;
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
        uuid = [(HMAccessory *)self uuid];
        uuid2 = [v9 uuid];
        v12 = [uuid isEqual:uuid2];

        if ((v12 & 1) == 0 && ([v9 supportsTargetControl] & 1) == 0 && objc_msgSend(v9, "supportsTargetController"))
        {
          controlTargets = [v9 controlTargets];
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v14 = controlTargets;
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

                uuid3 = [*(*(&v30 + 1) + 8 * i) uuid];
                uuid4 = [(HMAccessory *)self uuid];
                v21 = [uuid3 isEqual:uuid4];

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
  home = [(HMAccessory *)self home];
  selfCopy = self;
  controlTargetUUIDs = [(HMAccessory *)self controlTargetUUIDs];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(controlTargetUUIDs, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = controlTargetUUIDs;
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
        v11 = [home accessoryWithUUID:v10];
        if (v11)
        {
          [v5 addObject:v11];
        }

        else
        {
          v12 = objc_autoreleasePoolPush();
          v13 = selfCopy;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            v15 = HMFGetLogIdentifier();
            uUIDString = [v10 UUIDString];
            *buf = 138543618;
            v28 = v15;
            v29 = 2112;
            v30 = uUIDString;
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

- (void)setControlTargetUUIDs:(id)ds
{
  dsCopy = ds;
  os_unfair_lock_lock_with_options();
  v4 = [dsCopy copy];
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

- (void)setHH1EOLEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_hh1EOLEnabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isHH1EOLEnabled
{
  os_unfair_lock_lock_with_options();
  hh1EOLEnabled = self->_hh1EOLEnabled;
  os_unfair_lock_unlock(&self->_lock);
  return hh1EOLEnabled;
}

- (void)setMatterDeviceTypeID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  matterDeviceTypeID = self->_matterDeviceTypeID;
  self->_matterDeviceTypeID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)matterDeviceTypeID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterDeviceTypeID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)bulletinBoardNotificationForEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock_with_options();
  v5 = [(NSDictionary *)self->_bulletinBoardNotificationByEndpoint objectForKeyedSubscript:endpointCopy];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setBulletinBoardNotificationByEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  os_unfair_lock_lock_with_options();
  bulletinBoardNotificationByEndpoint = self->_bulletinBoardNotificationByEndpoint;
  self->_bulletinBoardNotificationByEndpoint = endpointCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSDictionary)bulletinBoardNotificationByEndpoint
{
  os_unfair_lock_lock_with_options();
  v3 = self->_bulletinBoardNotificationByEndpoint;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsCrossfadeAsAirPlaySource:(BOOL)source
{
  os_unfair_lock_lock_with_options();
  self->_supportsCrossfadeAsAirPlaySource = source;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCrossfadeAsAirPlaySource
{
  os_unfair_lock_lock_with_options();
  supportsCrossfadeAsAirPlaySource = self->_supportsCrossfadeAsAirPlaySource;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCrossfadeAsAirPlaySource;
}

- (void)setSupportsNetworkDiagnostics:(BOOL)diagnostics
{
  os_unfair_lock_lock_with_options();
  self->_supportsNetworkDiagnostics = diagnostics;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsNetworkDiagnostics
{
  os_unfair_lock_lock_with_options();
  supportsNetworkDiagnostics = self->_supportsNetworkDiagnostics;
  os_unfair_lock_unlock(&self->_lock);
  return supportsNetworkDiagnostics;
}

- (void)setSupportsStereoOdeonTTSUBypassingPrimary:(BOOL)primary
{
  os_unfair_lock_lock_with_options();
  self->_supportsStereoOdeonTTSUBypassingPrimary = primary;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsStereoOdeonTTSUBypassingPrimary
{
  os_unfair_lock_lock_with_options();
  supportsStereoOdeonTTSUBypassingPrimary = self->_supportsStereoOdeonTTSUBypassingPrimary;
  os_unfair_lock_unlock(&self->_lock);
  return supportsStereoOdeonTTSUBypassingPrimary;
}

- (void)setSupportsJustSiri:(BOOL)siri
{
  os_unfair_lock_lock_with_options();
  self->_supportsJustSiri = siri;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsJustSiri
{
  os_unfair_lock_lock_with_options();
  supportsJustSiri = self->_supportsJustSiri;
  os_unfair_lock_unlock(&self->_lock);
  return supportsJustSiri;
}

- (void)setSupportsRMVonAppleTV:(BOOL)v
{
  os_unfair_lock_lock_with_options();
  self->_supportsRMVonAppleTV = v;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsRMVonAppleTV
{
  os_unfair_lock_lock_with_options();
  supportsRMVonAppleTV = self->_supportsRMVonAppleTV;
  os_unfair_lock_unlock(&self->_lock);
  return supportsRMVonAppleTV;
}

- (void)setSupportsSoftwareUpdateV2:(BOOL)v2
{
  os_unfair_lock_lock_with_options();
  self->_supportsSoftwareUpdateV2 = v2;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsSoftwareUpdateV2
{
  os_unfair_lock_lock_with_options();
  supportsSoftwareUpdateV2 = self->_supportsSoftwareUpdateV2;
  os_unfair_lock_unlock(&self->_lock);
  return supportsSoftwareUpdateV2;
}

- (void)setSupportsMessagedHomePodSettings:(BOOL)settings
{
  os_unfair_lock_lock_with_options();
  self->_supportsMessagedHomePodSettings = settings;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMessagedHomePodSettings
{
  os_unfair_lock_lock_with_options();
  supportsMessagedHomePodSettings = self->_supportsMessagedHomePodSettings;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMessagedHomePodSettings;
}

- (void)setSupportsDropIn:(BOOL)in
{
  os_unfair_lock_lock_with_options();
  self->_supportsDropIn = in;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsDropIn
{
  os_unfair_lock_lock_with_options();
  supportsDropIn = self->_supportsDropIn;
  os_unfair_lock_unlock(&self->_lock);
  return supportsDropIn;
}

- (void)setSupportsAudioAnalysis:(BOOL)analysis
{
  os_unfair_lock_lock_with_options();
  self->_supportsAudioAnalysis = analysis;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAudioAnalysis
{
  os_unfair_lock_lock_with_options();
  supportsAudioAnalysis = self->_supportsAudioAnalysis;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAudioAnalysis;
}

- (void)setSupportsManagedConfigurationProfile:(BOOL)profile
{
  os_unfair_lock_lock_with_options();
  self->_supportsManagedConfigurationProfile = profile;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsManagedConfigurationProfile
{
  os_unfair_lock_lock_with_options();
  supportsManagedConfigurationProfile = self->_supportsManagedConfigurationProfile;
  os_unfair_lock_unlock(&self->_lock);
  return supportsManagedConfigurationProfile;
}

- (void)setSupportsPreferredMediaUser:(BOOL)user
{
  os_unfair_lock_lock_with_options();
  self->_supportsPreferredMediaUser = user;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsPreferredMediaUser
{
  os_unfair_lock_lock_with_options();
  supportsPreferredMediaUser = self->_supportsPreferredMediaUser;
  os_unfair_lock_unlock(&self->_lock);
  return supportsPreferredMediaUser;
}

- (void)setSupportsThirdPartyMusic:(BOOL)music
{
  os_unfair_lock_lock_with_options();
  self->_supportsThirdPartyMusic = music;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsThirdPartyMusic
{
  os_unfair_lock_lock_with_options();
  supportsThirdPartyMusic = self->_supportsThirdPartyMusic;
  os_unfair_lock_unlock(&self->_lock);
  return supportsThirdPartyMusic;
}

- (void)setSupportsCoordinationDoorbellChime:(BOOL)chime
{
  os_unfair_lock_lock_with_options();
  self->_supportsCoordinationDoorbellChime = chime;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCoordinationDoorbellChime
{
  os_unfair_lock_lock_with_options();
  supportsCoordinationDoorbellChime = self->_supportsCoordinationDoorbellChime;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCoordinationDoorbellChime;
}

- (void)setYearDaySchedulesPerUserCapacity:(id)capacity
{
  capacityCopy = capacity;
  os_unfair_lock_lock_with_options();
  yearDaySchedulesPerUserCapacity = self->_yearDaySchedulesPerUserCapacity;
  self->_yearDaySchedulesPerUserCapacity = capacityCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setWeekDaySchedulesPerUserCapacity:(id)capacity
{
  capacityCopy = capacity;
  os_unfair_lock_lock_with_options();
  weekDaySchedulesPerUserCapacity = self->_weekDaySchedulesPerUserCapacity;
  self->_weekDaySchedulesPerUserCapacity = capacityCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setReaderIDACWG:(id)g
{
  gCopy = g;
  os_unfair_lock_lock_with_options();
  readerIDACWG = self->_readerIDACWG;
  self->_readerIDACWG = gCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)readerIDACWG
{
  os_unfair_lock_lock_with_options();
  v3 = self->_readerIDACWG;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setReaderGroupSubIdentifierACWG:(id)g
{
  gCopy = g;
  os_unfair_lock_lock_with_options();
  readerGroupSubIdentifierACWG = self->_readerGroupSubIdentifierACWG;
  self->_readerGroupSubIdentifierACWG = gCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSData)readerGroupSubIdentifierACWG
{
  os_unfair_lock_lock_with_options();
  v3 = self->_readerGroupSubIdentifierACWG;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setSupportsUWBUnlock:(BOOL)unlock
{
  os_unfair_lock_lock_with_options();
  self->_supportsUWBUnlock = unlock;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsUWBUnlock
{
  os_unfair_lock_lock_with_options();
  supportsUWBUnlock = self->_supportsUWBUnlock;
  os_unfair_lock_unlock(&self->_lock);
  return supportsUWBUnlock;
}

- (void)setSupportsWalletKey:(BOOL)key
{
  os_unfair_lock_lock_with_options();
  self->_supportsWalletKey = key;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsWalletKey
{
  os_unfair_lock_lock_with_options();
  supportsWalletKey = self->_supportsWalletKey;
  os_unfair_lock_unlock(&self->_lock);
  return supportsWalletKey;
}

- (void)setSupportsAccessCodes:(BOOL)codes
{
  os_unfair_lock_lock_with_options();
  self->_supportsAccessCodes = codes;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAccessCodes
{
  os_unfair_lock_lock_with_options();
  supportsAccessCodes = self->_supportsAccessCodes;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAccessCodes;
}

- (void)setSupportsUserMediaSettings:(BOOL)settings
{
  os_unfair_lock_lock_with_options();
  self->_supportsUserMediaSettings = settings;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsUserMediaSettings
{
  os_unfair_lock_lock_with_options();
  supportsUserMediaSettings = self->_supportsUserMediaSettings;
  os_unfair_lock_unlock(&self->_lock);
  return supportsUserMediaSettings;
}

- (void)setSupportsDoorbellChime:(BOOL)chime
{
  os_unfair_lock_lock_with_options();
  self->_supportsDoorbellChime = chime;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsDoorbellChime
{
  os_unfair_lock_lock_with_options();
  supportsDoorbellChime = self->_supportsDoorbellChime;
  os_unfair_lock_unlock(&self->_lock);
  return supportsDoorbellChime;
}

- (void)setSupportsMediaActions:(BOOL)actions
{
  os_unfair_lock_lock_with_options();
  self->_supportsMediaActions = actions;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMediaActions
{
  os_unfair_lock_lock_with_options();
  supportsMediaActions = self->_supportsMediaActions;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMediaActions;
}

- (void)setSupportsAnnounce:(BOOL)announce
{
  os_unfair_lock_lock_with_options();
  self->_supportsAnnounce = announce;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAnnounce
{
  os_unfair_lock_lock_with_options();
  supportsAnnounce = self->_supportsAnnounce;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAnnounce;
}

- (void)setSupportsMusicAlarm:(BOOL)alarm
{
  os_unfair_lock_lock_with_options();
  self->_supportsMusicAlarm = alarm;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMusicAlarm
{
  os_unfair_lock_lock_with_options();
  supportsMusicAlarm = self->_supportsMusicAlarm;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMusicAlarm;
}

- (void)setSupportsCompanionInitiatedObliterate:(BOOL)obliterate
{
  os_unfair_lock_lock_with_options();
  self->_supportsCompanionInitiatedObliterate = obliterate;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCompanionInitiatedObliterate
{
  os_unfair_lock_lock_with_options();
  supportsCompanionInitiatedObliterate = self->_supportsCompanionInitiatedObliterate;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCompanionInitiatedObliterate;
}

- (void)setSupportsCompanionInitiatedRestart:(BOOL)restart
{
  os_unfair_lock_lock_with_options();
  self->_supportsCompanionInitiatedRestart = restart;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCompanionInitiatedRestart
{
  os_unfair_lock_lock_with_options();
  supportsCompanionInitiatedRestart = self->_supportsCompanionInitiatedRestart;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCompanionInitiatedRestart;
}

- (void)setSupportsAudioReturnChannel:(BOOL)channel
{
  os_unfair_lock_lock_with_options();
  self->_supportsAudioReturnChannel = channel;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsAudioReturnChannel
{
  os_unfair_lock_lock_with_options();
  supportsAudioReturnChannel = self->_supportsAudioReturnChannel;
  os_unfair_lock_unlock(&self->_lock);
  return supportsAudioReturnChannel;
}

- (void)setSupportsMultiUser:(BOOL)user
{
  os_unfair_lock_lock_with_options();
  self->_supportsMultiUser = user;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMultiUser
{
  os_unfair_lock_lock_with_options();
  supportsMultiUser = self->_supportsMultiUser;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMultiUser;
}

- (void)setTargetControllerHardwareSupport:(BOOL)support
{
  os_unfair_lock_lock_with_options();
  self->_targetControllerHardwareSupport = support;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)targetControllerHardwareSupport
{
  os_unfair_lock_lock_with_options();
  targetControllerHardwareSupport = self->_targetControllerHardwareSupport;
  os_unfair_lock_unlock(&self->_lock);
  return targetControllerHardwareSupport;
}

- (void)setSupportsTargetController:(BOOL)controller
{
  os_unfair_lock_lock_with_options();
  self->_supportsTargetController = controller;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsTargetController
{
  os_unfair_lock_lock_with_options();
  supportsTargetController = self->_supportsTargetController;
  os_unfair_lock_unlock(&self->_lock);
  return supportsTargetController;
}

- (void)setSupportsTargetControl:(BOOL)control
{
  os_unfair_lock_lock_with_options();
  self->_supportsTargetControl = control;

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

- (void)_handleSupportsCleanEnergyAutomationMessage:(id)message
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [messageCopy BOOLForKey:@"HMA.supportsCleanEnergyAutomation"];
  if (v5 != [(HMAccessory *)self supportsCleanEnergyAutomation])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy supportsCleanEnergyAutomation];
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
    [(HMAccessory *)selfCopy setSupportsCleanEnergyAutomation:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)_handleSupportsAdaptiveTemperatureAutomationMessage:(id)message
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [messageCopy BOOLForKey:@"HMA.supportsAdaptiveTemperatureAutomations"];
  if (v5 != [(HMAccessory *)self supportsAdaptiveTemperatureAutomations])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy supportsAdaptiveTemperatureAutomations];
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
    [(HMAccessory *)selfCopy setSupportsAdaptiveTemperatureAutomations:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setSupportedLinkLayerTypes:(id)types
{
  typesCopy = types;
  os_unfair_lock_lock_with_options();
  supportedLinkLayerTypes = self->_supportedLinkLayerTypes;
  self->_supportedLinkLayerTypes = typesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)supportedLinkLayerTypes
{
  os_unfair_lock_lock_with_options();
  v3 = self->_supportedLinkLayerTypes;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMatterExtendedMACAddress:(id)address
{
  addressCopy = address;
  os_unfair_lock_lock_with_options();
  matterExtendedMACAddress = self->_matterExtendedMACAddress;
  self->_matterExtendedMACAddress = addressCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)matterExtendedMACAddress
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterExtendedMACAddress;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setMatterWEDSupport:(id)support
{
  supportCopy = support;
  os_unfair_lock_lock_with_options();
  matterWEDSupport = self->_matterWEDSupport;
  self->_matterWEDSupport = supportCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)matterWEDSupport
{
  os_unfair_lock_lock_with_options();
  v3 = self->_matterWEDSupport;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)_handleRequiresThreadRouterUpdateMessage:(id)message
{
  v19 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = [messageCopy BOOLForKey:@"HMA.requiresThreadRouterUpdate"];
  if (v5 != [(HMAccessory *)self requiresThreadRouter])
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      [(HMAccessory *)selfCopy requiresThreadRouter];
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
    [(HMAccessory *)selfCopy setRequiresThreadRouter:v5];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setRequiresThreadRouter:(BOOL)router
{
  os_unfair_lock_lock_with_options();
  self->_requiresThreadRouter = router;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)requiresThreadRouter
{
  os_unfair_lock_lock_with_options();
  requiresThreadRouter = self->_requiresThreadRouter;
  os_unfair_lock_unlock(&self->_lock);
  return requiresThreadRouter;
}

- (void)setDemoAccessory:(BOOL)accessory
{
  os_unfair_lock_lock_with_options();
  self->_demoAccessory = accessory;

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

- (void)setProductID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  productID = self->_productID;
  self->_productID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)productID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_productID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setVendorID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  vendorID = self->_vendorID;
  self->_vendorID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSNumber)vendorID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_vendorID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCommissioningID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  commissioningID = self->_commissioningID;
  self->_commissioningID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)commissioningID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_commissioningID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setNodeID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  v4 = [dCopy copy];
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

- (void)setRootPublicKey:(id)key
{
  keyCopy = key;
  os_unfair_lock_lock_with_options();
  v4 = [keyCopy copy];
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

- (void)setKnownToSystemCommissioner:(BOOL)commissioner
{
  os_unfair_lock_lock_with_options();
  self->_knownToSystemCommissioner = commissioner;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)knownToSystemCommissioner
{
  os_unfair_lock_lock_with_options();
  knownToSystemCommissioner = self->_knownToSystemCommissioner;
  os_unfair_lock_unlock(&self->_lock);
  return knownToSystemCommissioner;
}

- (void)setSupportsNativeMatter:(BOOL)matter
{
  os_unfair_lock_lock_with_options();
  self->_supportsNativeMatter = matter;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsNativeMatter
{
  os_unfair_lock_lock_with_options();
  supportsNativeMatter = self->_supportsNativeMatter;
  os_unfair_lock_unlock(&self->_lock);
  return supportsNativeMatter;
}

- (void)setSupportsCHIP:(BOOL)p
{
  os_unfair_lock_lock_with_options();
  self->_supportsCHIP = p;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsCHIP
{
  os_unfair_lock_lock_with_options();
  supportsCHIP = self->_supportsCHIP;
  os_unfair_lock_unlock(&self->_lock);
  return supportsCHIP;
}

- (void)setSupportsMediaAccessControl:(BOOL)control
{
  os_unfair_lock_lock_with_options();
  self->_supportsMediaAccessControl = control;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)supportsMediaAccessControl
{
  os_unfair_lock_lock_with_options();
  supportsMediaAccessControl = self->_supportsMediaAccessControl;
  os_unfair_lock_unlock(&self->_lock);
  return supportsMediaAccessControl;
}

- (void)setSerialNumber:(id)number
{
  numberCopy = number;
  os_unfair_lock_lock_with_options();
  v4 = [numberCopy copy];
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

- (void)setFirmwareVersion:(id)version
{
  versionCopy = version;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:versionCopy];
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

- (void)setManufacturer:(id)manufacturer
{
  manufacturerCopy = manufacturer;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:manufacturerCopy];
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

- (void)setModel:(id)model
{
  modelCopy = model;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:modelCopy];
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

- (void)setAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A28] hmf_cachedInstanceForNSUUID:identifierCopy];
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

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setRoom:(id)room
{
  roomCopy = room;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_room, roomCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMRoom)room
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_room);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setCategory:(id)category
{
  categoryCopy = category;
  os_unfair_lock_lock_with_options();
  v4 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:categoryCopy];
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
  categoryType = [(HMAccessoryCategory *)v3 categoryType];
  v6 = [categoryType isEqual:@"0FBA259B-05AC-46F2-875F-204ABB6D9FE7"];

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
      accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
      array = [accessoryProfiles array];

      v12 = [array countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(array);
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

          v13 = [array countByEnumeratingWithState:&v21 objects:v25 count:16];
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
  home = [(HMAccessory *)self home];
  uniqueIdentifiersForBridgedAccessories = [(HMAccessory *)self uniqueIdentifiersForBridgedAccessories];
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(uniqueIdentifiersForBridgedAccessories, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v19 = home;
  obj = [home accessories];
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
        v9 = uniqueIdentifiersForBridgedAccessories;
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
              uniqueIdentifier = [v8 uniqueIdentifier];
              LODWORD(v14) = [v14 isEqual:uniqueIdentifier];

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

- (void)setUniqueIdentifiersForBridgedAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  os_unfair_lock_lock_with_options();
  v4 = [accessoriesCopy copy];
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

- (void)setBridgedAccessory:(BOOL)accessory
{
  os_unfair_lock_lock_with_options();
  self->_bridgedAccessory = accessory;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)bridgedAccessory
{
  os_unfair_lock_lock_with_options();
  bridgedAccessory = self->_bridgedAccessory;
  os_unfair_lock_unlock(&self->_lock);
  return bridgedAccessory;
}

- (void)setReachable:(BOOL)reachable
{
  os_unfair_lock_lock_with_options();
  self->_reachable = reachable;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isReachable
{
  os_unfair_lock_lock_with_options();
  reachable = self->_reachable;
  os_unfair_lock_unlock(&self->_lock);
  return reachable;
}

- (void)setCurrentAccessory:(BOOL)accessory
{
  os_unfair_lock_lock_with_options();
  self->_currentAccessory = accessory;

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

- (void)setDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock_with_options();
  v4 = [MEMORY[0x1E69A2A20] hmf_cachedInstanceForString:identifierCopy];
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

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_unconfigure
{
  v40 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
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
    services = [(HMAccessory *)selfCopy services];
    v10 = [services countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(services);
          }

          [*(*(&v32 + 1) + 8 * v13++) _unconfigure];
        }

        while (v11 != v13);
        v11 = [services countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v11);
    }

    currentServices = [(HMAccessory *)selfCopy currentServices];
    [currentServices removeAllObjects];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    profiles = [(HMAccessory *)selfCopy profiles];
    v16 = [profiles countByEnumeratingWithState:&v28 objects:v36 count:16];
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
            objc_enumerationMutation(profiles);
          }

          accessoryProfile = [*(*(&v28 + 1) + 8 * v19) accessoryProfile];
          [accessoryProfile _unconfigure];

          ++v19;
        }

        while (v17 != v19);
        v17 = [profiles countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v17);
    }

    accessoryProfiles = [(HMAccessory *)selfCopy accessoryProfiles];
    [accessoryProfiles removeAllObjects];

    settingsAdapter = [(HMAccessory *)selfCopy settingsAdapter];
    [settingsAdapter unconfigure];

    [(HMAccessory *)selfCopy unconfigureInfoDataProviderWithOptions:4];
    context = [(HMAccessory *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMAccessory *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
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

- (void)unconfigureInfoDataProviderWithOptions:(unint64_t)options
{
  v20 = *MEMORY[0x1E69E9840];
  accessoryInfoDataProvider = [(HMAccessory *)self accessoryInfoDataProvider];

  if (accessoryInfoDataProvider)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v9;
      v18 = 2048;
      optionsCopy = options;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Unconfiguring info data provider with options: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    accessoryInfoDataProvider2 = [(HMAccessory *)selfCopy accessoryInfoDataProvider];
    home = [(HMAccessory *)selfCopy home];
    uniqueIdentifier = [home uniqueIdentifier];
    uniqueIdentifier2 = [(HMAccessory *)selfCopy uniqueIdentifier];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __54__HMAccessory_unconfigureInfoDataProviderWithOptions___block_invoke;
    v15[3] = &unk_1E754B428;
    v15[4] = selfCopy;
    v15[5] = options;
    [accessoryInfoDataProvider2 unsubscribeToAccessoryInfoWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:uniqueIdentifier2 accessoryInfoOptions:options completionHandler:v15];
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

- (void)configureInfoDataProviderIfNeededWithOptions:(unint64_t)options
{
  v24 = *MEMORY[0x1E69E9840];
  home = [(HMAccessory *)self home];
  homeManager = [home homeManager];
  accessoryInfoDataProvider = [(HMAccessory *)self accessoryInfoDataProvider];

  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
  if (accessoryInfoDataProvider)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v12;
      v22 = 2048;
      optionsCopy2 = options;
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
      optionsCopy2 = options;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Creating info data provider with option: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    createAccessoryInfoDataProvider = [homeManager createAccessoryInfoDataProvider];
    [(HMAccessory *)selfCopy setAccessoryInfoDataProvider:createAccessoryInfoDataProvider];
  }

  accessoryInfoDataProvider2 = [(HMAccessory *)selfCopy accessoryInfoDataProvider];
  uniqueIdentifier = [home uniqueIdentifier];
  uniqueIdentifier2 = [(HMAccessory *)selfCopy uniqueIdentifier];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__HMAccessory_configureInfoDataProviderIfNeededWithOptions___block_invoke;
  v19[3] = &unk_1E754E148;
  v19[4] = selfCopy;
  [accessoryInfoDataProvider2 configureWithHomeIdentifier:uniqueIdentifier accessoryIdentifier:uniqueIdentifier2 accessoryInfoOptions:options dataProviderDelegate:selfCopy completionHandler:v19];

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
  home = [(HMAccessory *)self home];
  homeManager = [home homeManager];
  configuration = [homeManager configuration];
  options = [configuration options];

  if ((options & 0x20) != 0)
  {
    settingsAdapter = [(HMAccessory *)self settingsAdapter];

    if (settingsAdapter)
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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

    context = [(HMAccessory *)self context];
    if (!context)
    {
      goto LABEL_14;
    }

    v16 = context;
    context2 = [(HMAccessory *)self context];
    queue = [context2 queue];

    if (!queue)
    {
LABEL_14:
      v8 = objc_autoreleasePoolPush();
      selfCopy2 = self;
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

    settings = [(HMAccessory *)self settings];

    if (settings)
    {
      v20 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier();
        v36 = 138543362;
        v37 = v23;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all existing settings on update to support HPLS", &v36, 0xCu);
      }

      objc_autoreleasePoolPop(v20);
      [(HMAccessory *)selfCopy3 setSettings:0];
    }

    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v36 = 138543362;
      v37 = v27;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating adaptor on settings support", &v36, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    home2 = [(HMAccessory *)selfCopy4 home];
    homeManager2 = [home2 homeManager];
    createAccessorySettingsDataSource = [homeManager2 createAccessorySettingsDataSource];
    [(HMAccessory *)selfCopy4 setAccessorySettingsDataSource:createAccessorySettingsDataSource];

    createAccessorySettingsController = [homeManager2 createAccessorySettingsController];
    [(HMAccessory *)selfCopy4 setAccessorySettingsController:createAccessorySettingsController];

    accessorySettingsDataSource = [(HMAccessory *)selfCopy4 accessorySettingsDataSource];
    accessorySettingsController = [(HMAccessory *)selfCopy4 accessorySettingsController];
    context3 = [(HMAccessory *)selfCopy4 context];
    [(HMAccessory *)selfCopy4 createSettingsAdapterWithDataSource:accessorySettingsDataSource controller:accessorySettingsController context:context3];

    [(HMAccessory *)selfCopy4 configureSettingsAdapterWithCompletionHandler:0];
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
  remoteLoginHandler = [(HMAccessory *)self remoteLoginHandler];
  [remoteLoginHandler postConfigure];
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v93 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  audioDestination = [(HMAccessory *)self audioDestination];
  deviceIRKData = [(HMAccessory *)self deviceIRKData];
  device = [(HMAccessory *)self device];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    if (audioDestination)
    {
      v13 = @" audioDestination: ";
    }

    else
    {
      v13 = &stru_1F0E92498;
    }

    if (audioDestination)
    {
      v14 = audioDestination;
    }

    else
    {
      v14 = &stru_1F0E92498;
    }

    v55 = v14;
    v15 = @" device: ";
    if (!device)
    {
      v15 = &stru_1F0E92498;
    }

    v51 = v15;
    v52 = v13;
    if (device)
    {
      v16 = device;
    }

    else
    {
      v16 = &stru_1F0E92498;
    }

    v17 = @" deviceIRKData: ";
    if (!deviceIRKData)
    {
      v17 = &stru_1F0E92498;
    }

    v49 = v17;
    if (deviceIRKData)
    {
      v18 = deviceIRKData;
    }

    else
    {
      v18 = &stru_1F0E92498;
    }

    v53 = v18;
    v54 = v16;
    remoteLoginHandler = [(HMAccessory *)selfCopy remoteLoginHandler];
    v19 = homeCopy;
    if (remoteLoginHandler)
    {
      v20 = @" remoteLogin";
    }

    else
    {
      v20 = &stru_1F0E92498;
    }

    remoteLoginHandler2 = [(HMAccessory *)selfCopy remoteLoginHandler];
    v22 = remoteLoginHandler2;
    *buf = 138546434;
    if (remoteLoginHandler2)
    {
      v23 = remoteLoginHandler2;
    }

    else
    {
      v23 = &stru_1F0E92498;
    }

    v68 = v12;
    v69 = 2112;
    v70 = selfCopy;
    v71 = 2112;
    v72 = contextCopy;
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
    homeCopy = v19;
    v87 = 2112;
    v88 = v23;
    v89 = 2112;
    v90 = v19;
    v91 = 2048;
    v92 = v19;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Configuring accessory: %@ context: %@%@%@%@%@%@%@%@%@ home: %@, %p", buf, 0x84u);
  }

  objc_autoreleasePoolPop(v9);
  [(HMAccessory *)selfCopy setContext:contextCopy];
  [(HMAccessory *)selfCopy setHome:homeCopy];
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  services = [(HMAccessory *)selfCopy services];
  v25 = [services countByEnumeratingWithState:&v62 objects:v66 count:16];
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
          objc_enumerationMutation(services);
        }

        [*(*(&v62 + 1) + 8 * i) __configureWithContext:contextCopy accessory:selfCopy];
      }

      v26 = [services countByEnumeratingWithState:&v62 objects:v66 count:16];
    }

    while (v26);
  }

  [(HMAccessory *)selfCopy _configureProfilesWithContext:contextCopy];
  settings = [(HMAccessory *)selfCopy settings];
  [settings _configureWithContext:contextCopy];

  softwareUpdateController = [(HMAccessory *)selfCopy softwareUpdateController];
  [softwareUpdateController configureWithContext:contextCopy accessory:selfCopy];

  remoteLoginHandler3 = [(HMAccessory *)selfCopy remoteLoginHandler];
  [remoteLoginHandler3 _configureWithContext:contextCopy accessory:selfCopy];

  if ([(HMAccessory *)selfCopy hasSymptomsHandler])
  {
    [(HMAccessory *)selfCopy _createSymptomsHandler];
  }

  audioDestinationController = [(HMAccessory *)selfCopy audioDestinationController];
  [audioDestinationController configureWithContext:contextCopy dataSource:selfCopy];

  v33 = selfCopy;
  context = [(HMAccessory *)v33 context];
  messageDispatcher = [context messageDispatcher];

  if (homeCopy)
  {
    if (messageDispatcher)
    {
      [messageDispatcher registerForMessage:@"kAccessoryNameChangedNotificationKey" receiver:v33 selector:sel__handleRenamed_];
      [messageDispatcher registerForMessage:@"HMA.pairingStateChanged" receiver:v33 selector:sel__handlePairingStateChanged_];
      [messageDispatcher registerForMessage:@"kCharacteristicValueUpdatedNotificationKey" receiver:v33 selector:sel__handleCharacteristicValueUpdated_];
      [messageDispatcher registerForMessage:@"kAccessoryNotificationsUpdatedNotificationKey" receiver:v33 selector:sel__handleAccessoryNotificationsUpdated_];
      [messageDispatcher registerForMessage:@"kAccessoryFlagsChangedNotificationKey" receiver:v33 selector:sel__handleAccessoryFlagsChanged_];
      [messageDispatcher registerForMessage:@"kServiceRenamedNotificationKey" receiver:v33 selector:sel__handleServiceRenamed_];
      [messageDispatcher registerForMessage:@"kServiceDefaultNameUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceDefaultNameUpdate_];
      [messageDispatcher registerForMessage:@"kServiceSubtypeUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceSubtype_];
      [messageDispatcher registerForMessage:@"kServiceConfigurationStateUpdatedNotificationKey" receiver:v33 selector:sel__handleServiceConfigurationState_];
      [messageDispatcher registerForMessage:@"HM.acu" receiver:v33 selector:sel__handleAccessoryControllableChanged_];
      [messageDispatcher registerForMessage:@"HM.us" receiver:v33 selector:sel__handleRootSettingsUpdated_];
      remoteLoginHandler4 = [(HMAccessory *)v33 remoteLoginHandler];
      [remoteLoginHandler4 registerForMessages];

      [messageDispatcher registerForMessage:@"HMCT.capabilities" receiver:v33 selector:sel__handleTargetControlSupportUpdatedMessage_];
      [messageDispatcher registerForMessage:@"supportsMultiUser" receiver:v33 selector:sel__handleMultiUserSupportUpdatedMessage_];
      [messageDispatcher registerForMessage:@"HMAccessorySupportsCompanionInitiatedRestartMessageKey" receiver:v33 selector:sel__handleSupportsCompanionInitiatedRestartUpdatedMessage_];
      [messageDispatcher registerForMessage:@"HMAccessorySupportsCompanionInitiatedObliterateMessageKey" receiver:v33 selector:sel__handleSupportsCompanionInitiatedObliterateUpdatedMessage_];
      [messageDispatcher registerForMessage:@"HMServiceMediaSourceIdentifierUpdatedNotification" receiver:v33 selector:sel__handleServiceMediaSourceIdentifierUpdated_];
      [messageDispatcher registerForMessage:@"HMAccessoryPairingIdentityUpdatedNotification" receiver:v33 selector:sel__handlePairingIdentityUpdate_];
      [messageDispatcher registerForMessage:@"HMA.supportedDiagnosticsUpdated" receiver:v33 selector:sel__handleSupportedDiagnosticsUpdatedMessage_];
      v37 = @"HMAccessorySupportsCleanEnergyAutomationsMessage";
      v38 = &selRef__handleSupportsCleanEnergyAutomationMessage_;
      v39 = @"HMAccessorySupportsAdaptiveTemperatureAutomationsMessage";
      v40 = &selRef__handleSupportsAdaptiveTemperatureAutomationMessage_;
      v41 = @"HMA.requiresThreadRouterUpdateMessage";
      v42 = &selRef__handleRequiresThreadRouterUpdateMessage_;
LABEL_39:
      [messageDispatcher registerForMessage:v41 receiver:v33 selector:*v42];
      [messageDispatcher registerForMessage:v39 receiver:v33 selector:*v40];
      [messageDispatcher registerForMessage:v37 receiver:v33 selector:*v38];
    }
  }

  else if (messageDispatcher)
  {
    v37 = @"HMA.MatterDeviceTypeIDUpdateMessage";
    v38 = &selRef__handleMatterDeviceTypeIDChanged_;
    v39 = @"kAccessoryNameChangedNotificationKey";
    v40 = &selRef__handleRenamed_;
    v41 = @"kAccessoryCategoryChangedNotificationKey";
    v42 = &selRef__handleAccessoryCategoryChanged_;
    goto LABEL_39;
  }

  audioAnalysisEventBulletinBoardNotification = [(HMAccessory *)v33 audioAnalysisEventBulletinBoardNotification];
  [audioAnalysisEventBulletinBoardNotification __configureWithContext:contextCopy];

  bulletinBoardNotificationByEndpoint = [(HMAccessory *)v33 bulletinBoardNotificationByEndpoint];
  v59[0] = MEMORY[0x1E69E9820];
  v59[1] = 3221225472;
  v59[2] = __43__HMAccessory___configureWithContext_home___block_invoke;
  v59[3] = &unk_1E754B400;
  v60 = contextCopy;
  v61 = v33;
  v45 = contextCopy;
  [bulletinBoardNotificationByEndpoint na_each:v59];

  v46 = [[HMAccessoryWiFiController alloc] initWithAccessory:v33];
  accessoryWiFiController = v33->_accessoryWiFiController;
  v33->_accessoryWiFiController = v46;

  v48 = *MEMORY[0x1E69E9840];
}

- (HMAccessory)initWithUUID:(id)d
{
  dCopy = d;
  v16.receiver = self;
  v16.super_class = HMAccessory;
  v6 = [(HMAccessory *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_uuid, d);
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
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v4 = [(HMAccessory *)self initWithUUID:uUID];

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

- (void)updatePendingConfigurationIdentifier:(id)identifier completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  handlerCopy = handler;
  context = [(HMAccessory *)self context];
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(PendingConfiguration) updatePendingConfigurationIdentifier:completionHandler:]", @"completionHandler"];
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = context;
  if (context)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:identifierCopy forKeyedSubscript:@"HMA.pendingConfigurationIdentifier"];
    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMAccessory *)self messageTargetUUID];
    v12 = [v10 initWithTarget:messageTargetUUID];

    v32 = v12;
    v13 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryUpdatePendingConfigurationIdentifierMessage" destination:v12 payload:dictionary];
    objc_initWeak(&location, self);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __92__HMAccessory_PendingConfiguration__updatePendingConfigurationIdentifier_completionHandler___block_invoke;
    v34[3] = &unk_1E754D820;
    objc_copyWeak(&v38, &location);
    v14 = identifierCopy;
    v35 = v14;
    v15 = v8;
    v36 = v15;
    v37 = handlerCopy;
    [v13 setResponseHandler:v34];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v13];

    objc_destroyWeak(&v38);
    objc_destroyWeak(&location);
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    dictionary = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, dictionary);
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

- (void)initiateDiagnosticsTransferWithOptions:(id)options completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  optionsCopy = options;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(Diagnostics) initiateDiagnosticsTransferWithOptions:completionHandler:]", @"completion"];
    v31 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = handlerCopy;
  context = [(HMAccessory *)self context];
  v10 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (context)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      uuid = [(HMAccessory *)selfCopy2 uuid];
      *buf = 138543618;
      v40 = v14;
      v41 = 2112;
      v42 = uuid;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Dispatching a message to request diagnostics transfer: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    uuid2 = [(HMAccessory *)selfCopy2 uuid];
    uUIDString = [uuid2 UUIDString];
    [dictionary setObject:uUIDString forKeyedSubscript:@"kAccessoryUUID"];

    if (optionsCopy)
    {
      v19 = encodeRootObject(optionsCopy);
      [dictionary setObject:v19 forKeyedSubscript:@"kAccessoryDiagnosticsOptions"];
    }

    else
    {
      [dictionary setObject:0 forKeyedSubscript:@"kAccessoryDiagnosticsOptions"];
    }

    v21 = objc_alloc(MEMORY[0x1E69A2A10]);
    v22 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid3 = [(HMAccessory *)selfCopy2 uuid];
    v24 = [v22 initWithTarget:uuid3];
    v25 = [v21 initWithName:@"HMA.diagnosticsTransferRequest" destination:v24 payload:dictionary];

    identifier = [v25 identifier];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __85__HMAccessory_Diagnostics__initiateDiagnosticsTransferWithOptions_completionHandler___block_invoke;
    v36[3] = &unk_1E754E480;
    v36[4] = selfCopy2;
    v37 = identifier;
    v38 = v8;
    v27 = identifier;
    [v25 setResponseHandler:v36];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v25];
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
    dictionary = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v8)[2](v8, dictionary, 0);
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
  data = [v2 data];
  v8[2] = data;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:3];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (HMAccessory)accessoryWithAccessoryReference:(id)reference home:(id)home
{
  v51 = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  homeCopy = home;
  if (([referenceCopy hasUniqueIdentifier] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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

  if (([referenceCopy hasHomeReference] & 1) == 0)
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  uniqueIdentifier = [referenceCopy uniqueIdentifier];
  v10 = [v8 hmf_UUIDWithBytesAsData:uniqueIdentifier];

  if (!v10)
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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

  homeReference = [referenceCopy homeReference];
  if (([homeReference hasUniqueIdentifier] & 1) == 0)
  {
    v30 = objc_autoreleasePoolPush();
    selfCopy4 = self;
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
  uniqueIdentifier2 = [homeReference uniqueIdentifier];
  v14 = [v12 hmf_UUIDWithBytesAsData:uniqueIdentifier2];

  uniqueIdentifier3 = [homeReference uniqueIdentifier];

  if (uniqueIdentifier3)
  {
    uniqueIdentifier4 = [homeCopy uniqueIdentifier];
    v17 = [v14 isEqual:uniqueIdentifier4];

    if (v17)
    {
      v18 = [homeCopy accessoryWithUniqueIdentifier:v10];
      v19 = v18;
      if (v18)
      {
        v20 = v18;
      }

      else
      {
        v39 = objc_autoreleasePoolPush();
        selfCopy5 = self;
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
    selfCopy7 = self;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      uniqueIdentifier5 = [homeCopy uniqueIdentifier];
      v45 = 138543874;
      v46 = v37;
      v47 = 2112;
      v48 = v14;
      v49 = 2112;
      v50 = uniqueIdentifier5;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@Trying to dereference Characteristic Reference from different home %@ %@", &v45, 0x20u);

      goto LABEL_25;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    selfCopy7 = self;
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

+ (HMAccessory)accessoryWithSerializedDictionaryRepresentation:(id)representation home:(id)home
{
  homeCopy = home;
  v7 = [representation hmf_dataForKey:@"HMAccessorySerializedDataKey"];
  v8 = [HMPBAccessoryReference accessoryReferenceWithData:v7];
  v9 = [self accessoryWithAccessoryReference:v8 home:homeCopy];

  return v9;
}

- (NSArray)cameraProfiles
{
  v20 = *MEMORY[0x1E69E9840];
  profiles = [(HMAccessory *)self profiles];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(profiles, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = profiles;
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

+ (id)_cameraProfilesForAccessoryProfiles:(id)profiles
{
  v23 = *MEMORY[0x1E69E9840];
  profilesCopy = profiles;
  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(profilesCopy, "count")}];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v5 = profilesCopy;
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

- (void)removeCorrespondingSystemCommissionerPairingWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (context)
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
    uuid = [(HMAccessory *)selfCopy uuid];
    v13 = [v11 initWithTarget:uuid];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveCorrespondingSystemCommissionerPairingMessage" destination:v13 payload:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __80__HMAccessory_CHIP__removeCorrespondingSystemCommissionerPairingWithCompletion___block_invoke;
    v19[3] = &unk_1E754E480;
    v19[4] = selfCopy;
    v15 = context;
    v20 = v15;
    v21 = completionCopy;
    [v14 setResponseHandler:v19];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14];

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
  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v13);
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

- (void)activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(CHIP) activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
    uuid = [(HMAccessory *)selfCopy2 uuid];
    v14 = [v12 initWithTarget:uuid];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryActivateCHIPPairingModeAndCreateSetupPayloadStringMessage" destination:v14 payload:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __86__HMAccessory_CHIP__activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion___block_invoke;
    v26[3] = &unk_1E754E480;
    v26[4] = selfCopy2;
    v16 = v6;
    v27 = v16;
    v28 = completionCopy;
    [v15 setResponseHandler:v26];
    messageDispatcher = [v16 messageDispatcher];
    [messageDispatcher sendMessage:v15];
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
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

- (void)setCHIPPairingModeActive:(BOOL)active withCompletion:(id)completion
{
  v17 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  if (active)
  {
    [(HMAccessory *)self activateCHIPPairingModeWithCompletion:completionCopy];
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Setting CHIP pairing mode inactive is not supported", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    context = [(HMAccessory *)selfCopy context];
    delegateCaller = [context delegateCaller];
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48];
    [delegateCaller callCompletion:completionCopy error:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)activateCHIPPairingModeWithCompletion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (context)
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
    uuid = [(HMAccessory *)selfCopy uuid];
    v13 = [v11 initWithTarget:uuid];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryActivateCHIPPairingModeMessage" destination:v13 payload:0];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __59__HMAccessory_CHIP__activateCHIPPairingModeWithCompletion___block_invoke;
    v19[3] = &unk_1E754E480;
    v19[4] = selfCopy;
    v15 = context;
    v20 = v15;
    v21 = completionCopy;
    [v14 setResponseHandler:v19];
    messageDispatcher = [v15 messageDispatcher];
    [messageDispatcher sendMessage:v14];

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
  if (completionCopy)
  {
    v13 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v13);
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

- (void)removeCHIPPairings:(id)pairings completion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  pairingsCopy = pairings;
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (context)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v13;
      v31 = 2112;
      v32 = pairingsCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Removing CHIP pairings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessory *)selfCopy uuid];
    v16 = [v14 initWithTarget:uuid];

    v27 = @"HMA.chipPairings";
    v17 = encodeRootObject(pairingsCopy);
    v28 = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];

    v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryRemoveCHIPPairingsMessage" destination:v16 payload:v18];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __51__HMAccessory_CHIP__removeCHIPPairings_completion___block_invoke;
    v24[3] = &unk_1E754E480;
    v24[4] = selfCopy;
    v20 = context;
    v25 = v20;
    v26 = completionCopy;
    [v19 setResponseHandler:v24];
    messageDispatcher = [v20 messageDispatcher];
    [messageDispatcher sendMessage:v19];

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
  if (completionCopy)
  {
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v16);
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

- (void)fetchCHIPPairingsWithCompletion:(id)completion
{
  v33 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (!completionCopy)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessory(CHIP) fetchCHIPPairingsWithCompletion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
    uuid = [(HMAccessory *)selfCopy2 uuid];
    v14 = [v12 initWithTarget:uuid];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMAccessoryFetchCHIPPairingsMessage" destination:v14 payload:0];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __53__HMAccessory_CHIP__fetchCHIPPairingsWithCompletion___block_invoke;
    v26[3] = &unk_1E754E480;
    v26[4] = selfCopy2;
    v16 = v6;
    v27 = v16;
    v28 = completionCopy;
    [v15 setResponseHandler:v26];
    messageDispatcher = [v16 messageDispatcher];
    [messageDispatcher sendMessage:v15];
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
    (*(completionCopy + 2))(completionCopy, 0, v14);
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

+ (id)_networkConfigurationProfilesForCoder:(id)coder accessoryIdentifier:(id)identifier
{
  v23[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  identifierCopy = identifier;
  if (![coderCopy decodeBoolForKey:@"HMA.supportsNetworkProtection"])
  {
    goto LABEL_4;
  }

  v7 = [coderCopy decodeIntegerForKey:@"HMA.targetNetworkProtectionMode"];
  v8 = [coderCopy decodeIntegerForKey:@"HMA.currentNetworkProtectionMode"];
  v9 = [coderCopy decodeBoolForKey:@"HMA.networkRestricted"];
  v10 = [coderCopy decodeBoolForKey:@"HMA.supportsWiFiReconfiguration"];
  v11 = [coderCopy decodeIntegerForKey:@"HMA.wifiCredentialType"];
  v12 = MEMORY[0x1E695DFD8];
  v23[0] = objc_opt_class();
  v23[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];
  v14 = [v12 setWithArray:v13];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HMA.allowedHosts"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMA.networkAccessViolation"];
  LOBYTE(v21) = v10;
  v17 = [[HMNetworkConfigurationProfile alloc] initWithAccessoryIdentifier:identifierCopy targetProtection:v7 currentProtection:v8 networkAccessRestricted:v9 allowedHosts:v15 accessViolation:v16 supportsWiFiReconfiguration:v21 credentialType:v11];

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

- (void)setHasOnboardedForNaturalLightingWithCompletion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  context = [(HMAccessory *)self context];
  if (context)
  {
    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    uuid = [(HMAccessory *)self uuid];
    v8 = [v6 initWithTarget:uuid];

    v9 = objc_alloc(MEMORY[0x1E69A2A10]);
    v10 = [v9 initWithName:HMAccessorySetHasOnboardedForNaturalLightingMessage destination:v8 payload:0];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke;
    aBlock[3] = &unk_1E754DE00;
    aBlock[4] = self;
    v30 = completionCopy;
    v11 = _Block_copy(aBlock);
    identifier = [v10 identifier];
    pendingRequests = [context pendingRequests];
    v14 = _Block_copy(v11);
    [pendingRequests addCompletionBlock:v14 forIdentifier:identifier];

    v23 = MEMORY[0x1E69E9820];
    v24 = 3221225472;
    v25 = __70__HMAccessory_Light__setHasOnboardedForNaturalLightingWithCompletion___block_invoke_5;
    v26 = &unk_1E754E570;
    v27 = pendingRequests;
    v28 = identifier;
    v15 = identifier;
    v16 = pendingRequests;
    [v10 setResponseHandler:&v23];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v10];

LABEL_7:
    goto LABEL_8;
  }

  v18 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  if (completionCopy)
  {
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, v8);
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
  profiles = [(HMAccessory *)self profiles];
  v5 = [v3 initWithCapacity:{objc_msgSend(profiles, "count")}];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  profiles2 = [(HMAccessory *)self profiles];
  v7 = [profiles2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(profiles2);
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

      v8 = [profiles2 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
  accessoryProfiles = [(HMAccessory *)self accessoryProfiles];
  array = [accessoryProfiles array];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = array;
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

+ (id)_mediaProfilesForAccessoryProfiles:(id)profiles
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  profilesCopy = profiles;
  v4 = [profilesCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
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
          objc_enumerationMutation(profilesCopy);
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

      v5 = [profilesCopy countByEnumeratingWithState:&v16 objects:v21 count:16];
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