@interface HMCameraUserSettings
+ (id)logCategory;
+ (id)shortDescription;
- (BOOL)areActivityZonesIncludedForSignificantEventDetection;
- (BOOL)isAccessModeChangeNotificationEnabled;
- (BOOL)isCameraManuallyDisabled;
- (BOOL)isReachabilityEventNotificationEnabled;
- (HMAccessory)accessory;
- (HMCameraBulletinBoardSmartNotification)smartNotificationBulletin;
- (HMCameraUserSettings)initWithCameraUserSettings:(id)settings;
- (HMCameraUserSettingsDelegate)delegate;
- (NSArray)attributeDescriptions;
- (NSSet)activityZones;
- (NSString)shortDescription;
- (NSUUID)messageTargetUUID;
- (NSUUID)uniqueIdentifier;
- (_HMCameraUserSettings)cameraUserSettings;
- (id)_characteristicWithType:(id)type serviceType:(id)serviceType;
- (id)createSmartNotificationBulletin;
- (id)logIdentifier;
- (id)messageDestination;
- (unint64_t)accessModeAtHome;
- (unint64_t)accessModeForCameraHomePresence:(unint64_t)presence;
- (unint64_t)accessModeNotAtHome;
- (unint64_t)currentAccessMode;
- (unint64_t)recordingEventTriggers;
- (unint64_t)supportedFeatures;
- (void)_mergeNewSettings:(id)settings;
- (void)_sendSettingsUpdateMessage:(id)message completion:(id)completion successHandler:(id)handler;
- (void)_updateSettings:(id)settings shouldNotifyDelegate:(BOOL)delegate;
- (void)configureWithAccessory:(id)accessory context:(id)context;
- (void)handleSettingsDidUpdateMessage:(id)message;
- (void)setCameraUserSettings:(id)settings;
- (void)setSmartNotificationBulletin:(id)bulletin;
- (void)updateAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completionHandler:(id)handler;
- (void)updateAccessMode:(unint64_t)mode forPresenceEventType:(unint64_t)type completionHandler:(id)handler;
- (void)updateAccessModeIndicatorEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateNightVisionModeEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateRecordingAudioEnabled:(BOOL)enabled completionHandler:(id)handler;
- (void)updateRecordingEventTriggers:(unint64_t)triggers completionHandler:(id)handler;
- (void)updateSnapshotsAllowed:(BOOL)allowed completionHandler:(id)handler;
@end

@implementation HMCameraUserSettings

- (HMAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

- (HMCameraUserSettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_sendSettingsUpdateMessage:(id)message completion:(id)completion successHandler:(id)handler
{
  completionCopy = completion;
  handlerCopy = handler;
  messageCopy = message;
  shortDescription = [messageCopy shortDescription];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __77__HMCameraUserSettings__sendSettingsUpdateMessage_completion_successHandler___block_invoke;
  v20 = &unk_1E754B980;
  selfCopy = self;
  v22 = shortDescription;
  v23 = completionCopy;
  v24 = handlerCopy;
  v12 = handlerCopy;
  v13 = completionCopy;
  v14 = shortDescription;
  [messageCopy setResponseHandler:&v17];
  v15 = [(HMCameraUserSettings *)self context:v17];
  messageDispatcher = [v15 messageDispatcher];
  [messageDispatcher sendMessage:messageCopy];
}

void __77__HMCameraUserSettings__sendSettingsUpdateMessage_completion_successHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
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
      v12 = *(a1 + 40);
      v19 = 138543874;
      v20 = v11;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Camera settings request failed for %@: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 48) error:v5];
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = *(a1 + 40);
      v19 = 138543618;
      v20 = v15;
      v21 = 2112;
      v22 = v16;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Camera settings request succeeded for %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(*(a1 + 32) + 16) mutableCopy];
    (*(*(a1 + 56) + 16))();
    [*(a1 + 32) _updateSettings:v13 shouldNotifyDelegate:0];
    v14 = [*(a1 + 32) context];
    v17 = [v14 delegateCaller];
    [v17 callCompletion:*(a1 + 48) error:0];
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (id)_characteristicWithType:(id)type serviceType:(id)serviceType
{
  typeCopy = type;
  serviceTypeCopy = serviceType;
  accessory = [(HMCameraUserSettings *)self accessory];
  services = [accessory services];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __60__HMCameraUserSettings__characteristicWithType_serviceType___block_invoke;
  v18[3] = &unk_1E754B930;
  v19 = serviceTypeCopy;
  v10 = serviceTypeCopy;
  v11 = [services hmf_objectPassingTest:v18];
  characteristics = [v11 characteristics];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __60__HMCameraUserSettings__characteristicWithType_serviceType___block_invoke_2;
  v16[3] = &unk_1E754B958;
  v17 = typeCopy;
  v13 = typeCopy;
  v14 = [characteristics hmf_objectPassingTest:v16];

  return v14;
}

uint64_t __60__HMCameraUserSettings__characteristicWithType_serviceType___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 serviceType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

uint64_t __60__HMCameraUserSettings__characteristicWithType_serviceType___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 characteristicType];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (void)_mergeNewSettings:(id)settings
{
  cameraUserSettings = [settings cameraUserSettings];
  [(HMCameraUserSettings *)self _updateSettings:cameraUserSettings shouldNotifyDelegate:1];
}

- (void)_updateSettings:(id)settings shouldNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v25 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  v8 = [settingsCopy isEqual:cameraUserSettings];

  if ((v8 & 1) == 0)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v12;
      v23 = 2112;
      v24 = settingsCopy;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Updating camera user settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMCameraUserSettings *)selfCopy setCameraUserSettings:settingsCopy];
    createSmartNotificationBulletin = [(HMCameraUserSettings *)selfCopy createSmartNotificationBulletin];
    [(HMCameraUserSettings *)selfCopy setSmartNotificationBulletin:createSmartNotificationBulletin];

    if (delegateCopy)
    {
      delegate = [(HMCameraUserSettings *)selfCopy delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMCameraUserSettings *)selfCopy context];
        delegateCaller = [context delegateCaller];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __61__HMCameraUserSettings__updateSettings_shouldNotifyDelegate___block_invoke;
        v18[3] = &unk_1E754E5C0;
        v19 = delegate;
        v20 = selfCopy;
        [delegateCaller invokeBlock:v18];
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)isReachabilityEventNotificationEnabled
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  notificationSettings = [cameraUserSettings notificationSettings];
  isReachabilityEventNotificationEnabled = [notificationSettings isReachabilityEventNotificationEnabled];

  return isReachabilityEventNotificationEnabled;
}

- (BOOL)areActivityZonesIncludedForSignificantEventDetection
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  areActivityZonesIncludedForSignificantEventDetection = [cameraUserSettings areActivityZonesIncludedForSignificantEventDetection];

  return areActivityZonesIncludedForSignificantEventDetection;
}

- (NSSet)activityZones
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  activityZones = [cameraUserSettings activityZones];

  return activityZones;
}

- (BOOL)isCameraManuallyDisabled
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  isCameraManuallyDisabled = [cameraUserSettings isCameraManuallyDisabled];

  return isCameraManuallyDisabled;
}

- (BOOL)isAccessModeChangeNotificationEnabled
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  notificationSettings = [cameraUserSettings notificationSettings];
  isAccessModeChangeNotificationEnabled = [notificationSettings isAccessModeChangeNotificationEnabled];

  return isAccessModeChangeNotificationEnabled;
}

- (unint64_t)recordingEventTriggers
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  recordingEventTriggers = [cameraUserSettings recordingEventTriggers];

  return recordingEventTriggers;
}

- (unint64_t)supportedFeatures
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  supportedFeatures = [cameraUserSettings supportedFeatures];

  return supportedFeatures;
}

- (unint64_t)currentAccessMode
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  currentAccessMode = [cameraUserSettings currentAccessMode];

  return currentAccessMode;
}

- (unint64_t)accessModeNotAtHome
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  accessModeNotAtHome = [cameraUserSettings accessModeNotAtHome];

  return accessModeNotAtHome;
}

- (unint64_t)accessModeAtHome
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  accessModeAtHome = [cameraUserSettings accessModeAtHome];

  return accessModeAtHome;
}

- (NSUUID)uniqueIdentifier
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  uUID = [cameraUserSettings UUID];

  return uUID;
}

- (void)setSmartNotificationBulletin:(id)bulletin
{
  bulletinCopy = bulletin;
  os_unfair_lock_lock_with_options();
  smartNotificationBulletin = self->_smartNotificationBulletin;
  self->_smartNotificationBulletin = bulletinCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCameraBulletinBoardSmartNotification)smartNotificationBulletin
{
  os_unfair_lock_lock_with_options();
  v3 = self->_smartNotificationBulletin;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setCameraUserSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  v4 = [settingsCopy copy];
  cameraUserSettings = self->_cameraUserSettings;
  self->_cameraUserSettings = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (_HMCameraUserSettings)cameraUserSettings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraUserSettings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)attributeDescriptions
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  accessory = [(HMCameraUserSettings *)self accessory];
  name = [accessory name];
  v7 = [v4 initWithName:@"Accessory Name" value:name];
  [array addObject:v7];

  v8 = objc_alloc(MEMORY[0x1E69A29C8]);
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  v10 = [v8 initWithName:@"Settings" value:cameraUserSettings];
  [array addObject:v10];

  v11 = [array copy];

  return v11;
}

- (NSString)shortDescription
{
  v2 = objc_opt_class();

  return [v2 shortDescription];
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    accessory = [(HMCameraUserSettings *)self accessory];
    name = [accessory name];
    uniqueIdentifier = [(HMCameraUserSettings *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];
  }

  else
  {
    accessory = [(HMCameraUserSettings *)self uniqueIdentifier];
    uUIDString2 = [accessory UUIDString];
  }

  return uUIDString2;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(HMCameraUserSettings *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  uUID = [cameraUserSettings UUID];

  return uUID;
}

- (void)handleSettingsDidUpdateMessage:(id)message
{
  v31 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v28 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Processing updated settings", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload = [messageCopy messagePayload];
  v10 = selfCopy;
  v11 = messagePayload;
  v12 = [v11 hmf_dataForKey:@"hmcus.uk"];
  if (v12)
  {
    v26 = 0;
    v13 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v12 error:&v26];
    v14 = v26;
    if (v13)
    {
      v15 = v13;
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = v10;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        *buf = 138543618;
        v28 = v23;
        v29 = 2112;
        v30 = v14;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive camera settings from settings data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = v10;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v19;
      v29 = 2112;
      v30 = v11;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid payload for updated settings: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v13 = 0;
  }

  if (v13)
  {
    [(HMCameraUserSettings *)v10 _updateSettings:v13 shouldNotifyDelegate:1];
    [messageCopy respondWithSuccess];
  }

  else
  {
    v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [messageCopy respondWithError:v24];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __86__HMCameraUserSettings_updateBulletinNotificationEnabled_condition_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 notificationSettings];
  v5 = [v4 mutableCopy];

  [v5 setSmartBulletinBoardNotificationEnabled:*(a1 + 40)];
  [v5 setSmartBulletinBoardNotificationCondition:*(a1 + 32)];
  [v3 setNotificationSettings:v5];
}

void __85__HMCameraUserSettings_updateReachabilityEventNotificationEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 notificationSettings];
  v5 = [v4 mutableCopy];

  [v5 setReachabilityEventNotificationEnabled:*(a1 + 32)];
  [v3 setNotificationSettings:v5];
}

void __115__HMCameraUserSettings_updateActivityZones_areActivityZonesIncludedForSignificantEventDetection_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setActivityZones:v3];
  [v4 setActivityZonesIncludedForSignificantEventDetection:*(a1 + 40)];
}

void __84__HMCameraUserSettings_updateAccessModeChangeNotificationEnabled_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 notificationSettings];
  v5 = [v4 mutableCopy];

  [v5 setAccessModeChangeNotificationEnabled:*(a1 + 32)];
  [v3 setNotificationSettings:v5];
}

- (void)updateRecordingAudioEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateRecordingAudioEnabled:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (context)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateRecordingAudioEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is no longer supported. See header for details", buf, 0x16u);
    }

    v13 = 48;
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateRecordingAudioEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    v13 = 12;
  }

  objc_autoreleasePoolPop(v8);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v13];
  (v6)[2](v6, v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateNightVisionModeEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateNightVisionModeEnabled:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (context)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateNightVisionModeEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is no longer supported. See header for details", buf, 0x16u);
    }

    v13 = 48;
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateNightVisionModeEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    v13 = 12;
  }

  objc_autoreleasePoolPop(v8);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v13];
  (v6)[2](v6, v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateSnapshotsAllowed:(BOOL)allowed completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateSnapshotsAllowed:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (context)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateSnapshotsAllowed:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is no longer supported. See header for details", buf, 0x16u);
    }

    v13 = 48;
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateSnapshotsAllowed:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    v13 = 12;
  }

  objc_autoreleasePoolPop(v8);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v13];
  (v6)[2](v6, v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateAccessModeIndicatorEnabled:(BOOL)enabled completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateAccessModeIndicatorEnabled:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v6 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  v8 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (context)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v12;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateAccessModeIndicatorEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@%s is no longer supported. See header for details", buf, 0x16u);
    }

    v13 = 48;
  }

  else
  {
    if (v11)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v14;
      v25 = 2080;
      v26 = "[HMCameraUserSettings updateAccessModeIndicatorEnabled:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    v13 = 12;
  }

  objc_autoreleasePoolPop(v8);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:v13];
  (v6)[2](v6, v15);

  v16 = *MEMORY[0x1E69E9840];
}

- (void)updateRecordingEventTriggers:(unint64_t)triggers completionHandler:(id)handler
{
  v46[1] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateRecordingEventTriggers:completionHandler:]", @"completion"];
    v33 = objc_autoreleasePoolPush();
    selfCopy = self;
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v36;
      v41 = 2112;
      v42 = v32;
      _os_log_impl(&dword_19BB39000, v35, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
    v37 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v32 userInfo:0];
    objc_exception_throw(v37);
  }

  v7 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  if (context)
  {
    v9 = triggers & 0xFFFFFFFFFFFFFFE0;
    if ((triggers & 0xFFFFFFFFFFFFFFE0) != 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v40 = v13;
        v41 = 2048;
        v42 = v9;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Invalid bit set in trigger: %lX", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v10);
      context2 = [(HMCameraUserSettings *)selfCopy2 context];
      delegateCaller = [context2 delegateCaller];
      v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:v7 error:v16];
    }

    else
    {
      v21 = MEMORY[0x1E69A2A10];
      messageDestination = [(HMCameraUserSettings *)self messageDestination];
      v45 = @"hmcus.rtk";
      v23 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:triggers];
      v46[0] = v23;
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:&v45 count:1];
      context2 = [v21 messageWithName:@"hmcus.rt" destination:messageDestination payload:v24];

      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        shortDescription = [context2 shortDescription];
        v30 = NSPrintF();
        *buf = 138543874;
        v40 = v28;
        v41 = 2112;
        v42 = shortDescription;
        v43 = 2112;
        v44 = v30;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Dispatching message %@ to update recordingEventTriggers to %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v25);
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __71__HMCameraUserSettings_updateRecordingEventTriggers_completionHandler___block_invoke;
      v38[3] = &__block_descriptor_40_e38_v16__0___HMMutableCameraUserSettings_8l;
      v38[4] = triggers;
      [(HMCameraUserSettings *)selfCopy3 _sendSettingsUpdateMessage:context2 completion:v7 successHandler:v38];
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
      v40 = v20;
      v41 = 2080;
      v42 = "[HMCameraUserSettings updateRecordingEventTriggers:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v7)[2](v7, context2);
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)updateAccessMode:(unint64_t)mode forCameraHomePresence:(unint64_t)presence completionHandler:(id)handler
{
  v53[2] = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateAccessMode:forCameraHomePresence:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v40;
      v46 = 2112;
      v47 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v9 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  if (context)
  {
    if (presence - 3 >= 2)
    {
      v28 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v30 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = HMFGetLogIdentifier();
        v32 = HMCameraHomePresenceAsString(presence);
        *buf = 138543618;
        v45 = v31;
        v46 = 2112;
        v47 = v32;
        _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Invalid camera home presence: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v28);
      context2 = [(HMCameraUserSettings *)selfCopy2 context];
      delegateCaller = [context2 delegateCaller];
      v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:v9 error:v34];
    }

    else
    {
      v11 = MEMORY[0x1E69A2A10];
      messageDestination = [(HMCameraUserSettings *)self messageDestination];
      v52[0] = @"hmcus.amk";
      v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mode];
      v53[0] = v13;
      v52[1] = @"hmcus.ptk";
      v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:presence];
      v53[1] = v14;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v53 forKeys:v52 count:2];
      context2 = [v11 messageWithName:@"hmcus.am" destination:messageDestination payload:v15];

      v17 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v19 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = HMFGetLogIdentifier();
        shortDescription = [context2 shortDescription];
        v22 = HMCameraHomePresenceAsString(presence);
        HMCameraAccessModeAsString(mode);
        v23 = v42 = v17;
        *buf = 138544130;
        v45 = v20;
        v46 = 2112;
        v47 = shortDescription;
        v48 = 2112;
        v49 = v22;
        v50 = 2112;
        v51 = v23;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Dispatching message %@ to update access mode for %@ to %@", buf, 0x2Au);

        v17 = v42;
      }

      objc_autoreleasePoolPop(v17);
      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __81__HMCameraUserSettings_updateAccessMode_forCameraHomePresence_completionHandler___block_invoke;
      v43[3] = &__block_descriptor_48_e38_v16__0___HMMutableCameraUserSettings_8l;
      v43[4] = presence;
      v43[5] = mode;
      [(HMCameraUserSettings *)selfCopy3 _sendSettingsUpdateMessage:context2 completion:v9 successHandler:v43];
    }
  }

  else
  {
    v24 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v27;
      v46 = 2080;
      v47 = "[HMCameraUserSettings updateAccessMode:forCameraHomePresence:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v9)[2](v9, context2);
  }

  v35 = *MEMORY[0x1E69E9840];
}

void __81__HMCameraUserSettings_updateAccessMode_forCameraHomePresence_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 == 4)
  {
    v5 = v3;
    [v3 setAccessModeNotAtHome:*(a1 + 40)];
  }

  else
  {
    if (v4 != 3)
    {
      goto LABEL_6;
    }

    v5 = v3;
    [v3 setAccessModeAtHome:*(a1 + 40)];
  }

  v3 = v5;
LABEL_6:
}

- (void)updateAccessMode:(unint64_t)mode forPresenceEventType:(unint64_t)type completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCameraUserSettings updateAccessMode:forPresenceEventType:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v28;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v9 = handlerCopy;
  context = [(HMCameraUserSettings *)self context];

  if (!context)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v14;
      v32 = 2080;
      v33 = "[HMCameraUserSettings updateAccessMode:forPresenceEventType:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    context2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (v9)[2](v9, context2);
    goto LABEL_11;
  }

  if (type - 3 >= 2)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = HMPresenceEventTypeAsString(type);
      *buf = 138543618;
      v31 = v19;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Invalid presence event type: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    context2 = [(HMCameraUserSettings *)selfCopy3 context];
    delegateCaller = [context2 delegateCaller];
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:v9 error:v22];

LABEL_11:
    goto LABEL_12;
  }

  [(HMCameraUserSettings *)self updateAccessMode:mode forCameraHomePresence:type completionHandler:v9];
LABEL_12:

  v23 = *MEMORY[0x1E69E9840];
}

- (id)createSmartNotificationBulletin
{
  cameraUserSettings = [(HMCameraUserSettings *)self cameraUserSettings];
  if (([cameraUserSettings supportedFeatures] & 2) != 0)
  {
    notificationSettings = [cameraUserSettings notificationSettings];
    isSmartBulletinBoardNotificationEnabled = [notificationSettings isSmartBulletinBoardNotificationEnabled];

    notificationSettings2 = [cameraUserSettings notificationSettings];
    smartBulletinBoardNotificationCondition = [notificationSettings2 smartBulletinBoardNotificationCondition];

    if (smartBulletinBoardNotificationCondition)
    {
      accessory = [(HMCameraUserSettings *)self accessory];
      home = [accessory home];
      v11 = [HMPredicateUtilities rewritePredicateForClient:smartBulletinBoardNotificationCondition home:home];
    }

    else
    {
      v11 = 0;
    }

    v12 = [HMCameraBulletinBoardSmartNotification alloc];
    context = [(HMCameraUserSettings *)self context];
    v4 = [(HMCameraBulletinBoardSmartNotification *)v12 initWithEnabled:isSmartBulletinBoardNotificationEnabled condition:v11 context:context cameraUserSettings:self];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)accessModeForCameraHomePresence:(unint64_t)presence
{
  if (presence == 4)
  {
    return [(HMCameraUserSettings *)self accessModeNotAtHome];
  }

  if (presence == 3)
  {
    return [(HMCameraUserSettings *)self accessModeAtHome];
  }

  return 3;
}

- (void)configureWithAccessory:(id)accessory context:(id)context
{
  objc_storeStrong(&self->_context, context);
  contextCopy = context;
  accessoryCopy = accessory;
  objc_storeWeak(&self->_accessory, accessoryCopy);

  createSmartNotificationBulletin = [(HMCameraUserSettings *)self createSmartNotificationBulletin];
  [(HMCameraUserSettings *)self setSmartNotificationBulletin:createSmartNotificationBulletin];

  messageDispatcher = [contextCopy messageDispatcher];
  [messageDispatcher registerForMessage:@"hmcus.du" receiver:self selector:sel_handleSettingsDidUpdateMessage_];
}

- (HMCameraUserSettings)initWithCameraUserSettings:(id)settings
{
  settingsCopy = settings;
  v9.receiver = self;
  v9.super_class = HMCameraUserSettings;
  v6 = [(HMCameraUserSettings *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_cameraUserSettings, settings);
  }

  return v7;
}

+ (id)shortDescription
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t38 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t38, &__block_literal_global_39795);
  }

  v3 = logCategory__hmf_once_v39;

  return v3;
}

uint64_t __35__HMCameraUserSettings_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v39;
  logCategory__hmf_once_v39 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end