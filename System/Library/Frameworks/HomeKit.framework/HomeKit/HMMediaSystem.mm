@interface HMMediaSystem
+ (id)logCategory;
+ (id)mediaSystemWithDictionary:(id)dictionary home:(id)home;
- (BOOL)_mergeApplicationDataWithNewMediaSystem:(id)system;
- (BOOL)_mergeComponentsWithNewMediaSystem:(id)system;
- (BOOL)_mergeLegacySettingsWithNewMediaSystem:(id)system;
- (BOOL)_mergeNameWithNewMediaSystem:(id)system;
- (BOOL)_mergeSettingsWithNewMediaSystem:(id)system;
- (BOOL)_mergeWithNewMediaSystem:(id)system isFromSerializedData:(BOOL)data;
- (BOOL)configureSettingsAdaptorIfNeeded;
- (BOOL)isCompatible;
- (BOOL)isControllable;
- (BOOL)isEqual:(id)equal;
- (BOOL)mergeAudioDestinationWithNewMediaSystem:(id)system;
- (BOOL)mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:(id)system;
- (BOOL)supportsAudioDestination;
- (BOOL)supportsAudioGroup;
- (BOOL)supportsMessagedHomepodSettings;
- (HMAccessoryCategory)category;
- (HMAccessorySettings)settings;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMMediaSession)mediaSession;
- (HMMediaSystem)initWithCoder:(id)coder;
- (HMMediaSystem)initWithHome:(id)home uuid:(id)uuid name:(id)name configuredName:(id)configuredName compatible:(BOOL)compatible components:(id)components settings:(id)settings;
- (HMMediaSystemDelegate)delegate;
- (NSArray)audioDestinationMediaProfiles;
- (NSArray)components;
- (NSString)audioDestinationIdentifier;
- (NSString)audioDestinationParentIdentifier;
- (NSString)configuredName;
- (NSString)description;
- (NSString)name;
- (NSUUID)audioDestinationGroupIdentifier;
- (NSUUID)uniqueIdentifier;
- (id)logIdentifier;
- (id)targetAccessoryIdentifierBySerial;
- (int64_t)audioDestinationType;
- (unint64_t)hash;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_handleRootSettingsUpdated:(id)updated;
- (void)_handleSystemUpdatedNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updateAccessoryReference;
- (void)_updateApplicationData:(id)data completionHandler:(id)handler;
- (void)adapter:(id)adapter didUpdatePreferredMediaUserUUIDString:(id)string selectionType:(unint64_t)type;
- (void)adapter:(id)adapter didUpdateSettingKeyPaths:(id)paths;
- (void)adapter:(id)adapter didUpdateSettings:(id)settings;
- (void)callCompletionHandler:(id)handler error:(id)error;
- (void)notifyDelegateOfUpdatedApplicationData:(id)data;
- (void)notifyDelegateOfUpdatedAudioDestination;
- (void)notifyDelegateOfUpdatedComponents:(id)components;
- (void)notifyDelegateOfUpdatedConfiguredName:(id)name;
- (void)notifyDelegateOfUpdatedMediaSession:(id)session;
- (void)notifyDelegateOfUpdatedName:(id)name;
- (void)notifyDelegateOfUpdatedSettings:(id)settings;
- (void)postConfigure;
- (void)setApplicationData:(id)data;
- (void)setConfiguredName:(id)name;
- (void)setDelegate:(id)delegate;
- (void)setName:(id)name;
- (void)setSettings:(id)settings;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateAudioDestinationSupportedOptions:(unint64_t)options completion:(id)completion;
- (void)updateComponentsSettingsAdapterToSettingReflected;
- (void)updateMediaSession:(id)session forMediaProfile:(id)profile;
- (void)updateSettingWithKeyPath:(id)path value:(id)value completionHandler:(id)handler;
@end

@implementation HMMediaSystem

- (HMHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (id)targetAccessoryIdentifierBySerial
{
  v36 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  components = [(HMMediaSystem *)self components];
  v4 = [components countByEnumeratingWithState:&v29 objects:v35 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v30;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v30 != v7)
      {
        objc_enumerationMutation(components);
      }

      accessory = [*(*(&v29 + 1) + 8 * v8) accessory];
      if (!accessory)
      {
        break;
      }

      v10 = accessory;
      serialNumber = [accessory serialNumber];

      if (!serialNumber)
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543362;
          v34 = v26;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Missing serial number cannot determine target", buf, 0xCu);
        }

LABEL_22:

        objc_autoreleasePoolPop(v21);
        goto LABEL_23;
      }

      if (!v6 || ([v6 serialNumber], v12 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "serialNumber"), v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v12, "compare:", v13), v13, v12, v14 == 1))
      {
        v15 = v10;

        v6 = v15;
      }

      if (v5 == ++v8)
      {
        v5 = [components countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        uniqueIdentifier = [v6 uniqueIdentifier];

        goto LABEL_24;
      }
    }

    v21 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v24;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Missing accessory cannot determine target", buf, 0xCu);
    }

    v10 = 0;
    goto LABEL_22;
  }

  v17 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v34 = v20;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to find target accessory by serial", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v17);
LABEL_23:
  uniqueIdentifier = 0;
LABEL_24:
  v27 = *MEMORY[0x1E69E9840];

  return uniqueIdentifier;
}

- (void)updateSettingWithKeyPath:(id)path value:(id)value completionHandler:(id)handler
{
  v28 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  valueCopy = value;
  handlerCopy = handler;
  mediaSystemSettingsAdapter = [(HMMediaSystem *)self mediaSystemSettingsAdapter];

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (mediaSystemSettingsAdapter)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = selfCopy;
      v24 = 2112;
      v25 = pathCopy;
      v26 = 2112;
      v27 = valueCopy;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Media system %@ update setting %@ with value %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    mediaSystemSettingsAdapter2 = [(HMMediaSystem *)selfCopy mediaSystemSettingsAdapter];
    [mediaSystemSettingsAdapter2 updateWithKeyPath:pathCopy value:valueCopy completionHandler:handlerCopy];
  }

  else
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v20 = 138543362;
      v21 = v18;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Calling update setting with settings adapter object being nil", &v20, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    mediaSystemSettingsAdapter2 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8 reason:@"Adapter is nil" suggestion:@"Configure adapter before use it"];
    handlerCopy[2](handlerCopy, mediaSystemSettingsAdapter2);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)adapter didUpdatePreferredMediaUserUUIDString:(id)string selectionType:(unint64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  stringCopy = string;
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v12;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Preferred media user not supported.", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)adapter didUpdateSettingKeyPaths:(id)paths
{
  v24 = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  pathsCopy = paths;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = selfCopy;
    v22 = 2112;
    v23 = pathsCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Media system %@ did update settings %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  context = [(HMMediaSystem *)selfCopy context];
  delegateCaller = [context delegateCaller];

  if (delegateCaller)
  {
    objc_initWeak(buf, selfCopy);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__HMMediaSystem_adapter_didUpdateSettingKeyPaths___block_invoke;
    v15[3] = &unk_1E754D848;
    objc_copyWeak(&v17, buf);
    v16 = pathsCopy;
    [delegateCaller invokeBlock:v15];

    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __50__HMMediaSystem_adapter_didUpdateSettingKeyPaths___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained settings];
  v3 = [v2 delegate];

  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings will update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    v8 = [v5 settings];
    [v3 settingsWillUpdate:v8];
  }

  if (objc_opt_respondsToSelector())
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 32);
    v9 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v30;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v30 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v29 + 1) + 8 * i);
          v14 = objc_autoreleasePoolPush();
          v15 = WeakRetained;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            v17 = HMFGetLogIdentifier();
            v18 = [v15 uniqueIdentifier];
            *buf = 138543874;
            v34 = v17;
            v35 = 2112;
            v36 = v18;
            v37 = 2112;
            v38 = v13;
            _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Notifying clients did update for identifier %@ setting %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v14);
          v19 = [v15 settings];
          v20 = [v15 uniqueIdentifier];
          [v3 settings:v19 didUpdateForIdentifier:v20 keyPath:v13];
        }

        v10 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v10);
    }
  }

  if (objc_opt_respondsToSelector())
  {
    v21 = objc_autoreleasePoolPush();
    v22 = WeakRetained;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v22;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings did update: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [v22 settings];
    [v3 settingsDidUpdate:v25];
  }

  v26 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)adapter didUpdateSettings:(id)settings
{
  v17 = *MEMORY[0x1E69E9840];
  adapterCopy = adapter;
  settingsCopy = settings;
  settings = [(HMMediaSystem *)self settings];

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
    [(HMMediaSystem *)self setSettings:settingsCopy];
    settings2 = [(HMMediaSystem *)self settings];
    [(HMMediaSystem *)self notifyDelegateOfUpdatedSettings:settings2];
  }

  v14 = *MEMORY[0x1E69E9840];
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
  context = [(HMMediaSystem *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  if (messageDispatcher)
  {
    v33 = @"HMMediaDestinationSupportedOptionsPayloadKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options];
    v34 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    audioDestination = [(HMMediaSystem *)selfCopy audioDestination];
    uniqueIdentifier = [audioDestination uniqueIdentifier];
    v19 = [v16 initWithTarget:uniqueIdentifier];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMMediaDestinationUpdateSupportedOptionsRequestMessage" destination:v19 payload:v15];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __67__HMMediaSystem_updateAudioDestinationSupportedOptions_completion___block_invoke;
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
    [(HMMediaSystem *)v23 callCompletionHandler:completionCopy error:v15];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __67__HMMediaSystem_updateAudioDestinationSupportedOptions_completion___block_invoke(uint64_t a1, void *a2, void *a3)
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

- (NSUUID)audioDestinationGroupIdentifier
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
  audioGroupIdentifier = [audioDestination audioGroupIdentifier];

  return audioGroupIdentifier;
}

- (NSArray)audioDestinationMediaProfiles
{
  components = [(HMMediaSystem *)self components];
  v3 = [components copy];

  v4 = [v3 na_map:&__block_literal_global_85];

  return v4;
}

- (NSString)audioDestinationParentIdentifier
{
  uuid = [(HMMediaSystem *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (BOOL)supportsMessagedHomepodSettings
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  components = [(HMMediaSystem *)self components];
  v3 = [components countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(components);
        }

        accessory = [*(*(&v10 + 1) + 8 * i) accessory];
        supportsMessagedHomePodSettings = [accessory supportsMessagedHomePodSettings];

        if (supportsMessagedHomePodSettings)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [components countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

- (BOOL)supportsAudioGroup
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
  v3 = [audioDestination containsSupportedOptions:8];

  return v3;
}

- (BOOL)supportsAudioDestination
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
  containsHomeTheaterSupportedOptions = [audioDestination containsHomeTheaterSupportedOptions];

  return containsHomeTheaterSupportedOptions;
}

- (int64_t)audioDestinationType
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
  v3 = audioDestination != 0;

  return 2 * v3;
}

- (NSString)audioDestinationIdentifier
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
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
    context = [(HMMediaSystem *)self context];
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

- (HMMediaSystem)initWithCoder:(id)coder
{
  v25[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  if ([coderCopy decodeBoolForKey:kMediaSystemInvalidObjectFlagCodingKey])
  {
    selfCopy = 0;
  }

  else
  {
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemUUIDCodingKey];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemNameCodingKey];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemConfiguredNameCodingKey];
    v9 = [coderCopy decodeBoolForKey:kMediaSystemCompatibleCodingKey];
    v10 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:kMediaSystemComponentsCodingKey];

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemRootSettingsCodingKey];
    if (v14 && (_os_feature_enabled_impl() & 1) == 0)
    {
      v16 = [[HMAccessorySettingGroup alloc] initWithInternal:v14];
      v15 = [[HMAccessorySettings alloc] initWithSettingsContainer:self settingsControl:self rootGroup:v16];
    }

    else
    {
      v15 = 0;
    }

    v17 = [(HMMediaSystem *)self initWithHome:v24 uuid:v6 name:v7 configuredName:v8 compatible:v9 components:v13 settings:v15];
    if (v17)
    {
      v18 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
      applicationData = v17->_applicationData;
      v17->_applicationData = v18;

      v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:HMMediaSystemAudioDestinationCodingKey];
      audioDestination = v17->_audioDestination;
      v17->_audioDestination = v20;
    }

    self = v17;

    selfCopy = self;
  }

  v22 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (id)logIdentifier
{
  uuid = [(HMMediaSystem *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (void)notifyDelegateOfUpdatedAudioDestination
{
  v25 = *MEMORY[0x1E69E9840];
  context = [(HMMediaSystem *)self context];
  delegateCaller = [context delegateCaller];
  if (delegateCaller)
  {
    delegate = [(HMMediaSystem *)self delegate];
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      audioDestination = [(HMMediaSystem *)selfCopy audioDestination];
      *buf = 138543874;
      v20 = v9;
      v21 = 2112;
      v22 = audioDestination;
      v23 = 2112;
      v24 = delegate;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated audio destination: %@ with delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__HMMediaSystem_notifyDelegateOfUpdatedAudioDestination__block_invoke;
      v16[3] = &unk_1E754E5C0;
      v17 = delegate;
      v18 = selfCopy;
      [delegateCaller invokeBlock:v16];
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
      *buf = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = context;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated audio destination due to no delegate caller for context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedMediaSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMMediaSystem_notifyDelegateOfUpdatedMediaSession___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = sessionCopy;
    dispatch_async(queue, v13);
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedMediaSession:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __53__HMMediaSystem_notifyDelegateOfUpdatedMediaSession___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) components];
    *buf = 138543874;
    v20 = v5;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media system session: %@ for components: [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v8 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [*(a1 + 32) context];
    v10 = [v9 delegateCaller];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __53__HMMediaSystem_notifyDelegateOfUpdatedMediaSession___block_invoke_69;
    v15[3] = &unk_1E754E5E8;
    v11 = v8;
    v12 = *(a1 + 32);
    v13 = *(a1 + 40);
    v16 = v11;
    v17 = v12;
    v18 = v13;
    [v10 invokeBlock:v15];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedSettings:(id)settings
{
  v19 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__HMMediaSystem_notifyDelegateOfUpdatedSettings___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = settingsCopy;
    dispatch_async(queue, v13);
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedSettings:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __49__HMMediaSystem_notifyDelegateOfUpdatedSettings___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media system settings: {%@}", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __49__HMMediaSystem_notifyDelegateOfUpdatedSettings___block_invoke_66;
    v14[3] = &unk_1E754E5E8;
    v10 = v7;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    [v9 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedApplicationData:(id)data
{
  v19 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__HMMediaSystem_notifyDelegateOfUpdatedApplicationData___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = dataCopy;
    dispatch_async(queue, v13);
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedApplicationData:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __56__HMMediaSystem_notifyDelegateOfUpdatedApplicationData___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media system app data: {%@}", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__HMMediaSystem_notifyDelegateOfUpdatedApplicationData___block_invoke_63;
    v14[3] = &unk_1E754E5E8;
    v10 = v7;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    [v9 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedComponents:(id)components
{
  v19 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    delegateCaller = [context delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__HMMediaSystem_notifyDelegateOfUpdatedComponents___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = componentsCopy;
    [delegateCaller invokeBlock:v13];
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedComponents:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __51__HMMediaSystem_notifyDelegateOfUpdatedComponents___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) delegate];
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 32);
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [*(a1 + 32) components];
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    v13 = 2112;
    v14 = v2;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media system components: %@ delegate: %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  if (objc_opt_respondsToSelector())
  {
    [v2 mediaSystem:*(a1 + 32) didUpdateComponents:*(a1 + 40)];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedConfiguredName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__HMMediaSystem_notifyDelegateOfUpdatedConfiguredName___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = nameCopy;
    dispatch_async(queue, v13);
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedConfiguredName:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __55__HMMediaSystem_notifyDelegateOfUpdatedConfiguredName___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    *buf = 138543618;
    v19 = v5;
    v20 = 2112;
    v21 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated media system configured name: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = [*(a1 + 32) delegate];
  if (objc_opt_respondsToSelector())
  {
    v8 = [*(a1 + 32) context];
    v9 = [v8 delegateCaller];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __55__HMMediaSystem_notifyDelegateOfUpdatedConfiguredName___block_invoke_58;
    v14[3] = &unk_1E754E5E8;
    v10 = v7;
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v15 = v10;
    v16 = v11;
    v17 = v12;
    [v9 invokeBlock:v14];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedName:(id)name
{
  v19 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  context = [(HMMediaSystem *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__HMMediaSystem_notifyDelegateOfUpdatedName___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = nameCopy;
    dispatch_async(queue, v13);
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
      v16 = v11;
      v17 = 2080;
      v18 = "[HMMediaSystem notifyDelegateOfUpdatedName:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

void __45__HMMediaSystem_notifyDelegateOfUpdatedName___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) context];
  v3 = [v2 delegateCaller];

  if (v3)
  {
    v4 = [*(a1 + 32) delegate];
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      *buf = 138543874;
      v24 = v8;
      v25 = 2112;
      v26 = v9;
      v27 = 2112;
      v28 = v4;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did update name: %@ delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    if (objc_opt_respondsToSelector())
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __45__HMMediaSystem_notifyDelegateOfUpdatedName___block_invoke_55;
      v19[3] = &unk_1E754E5E8;
      v10 = v4;
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v20 = v10;
      v21 = v11;
      v22 = v12;
      [v3 invokeBlock:v19];
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      *buf = 138543618;
      v24 = v16;
      v25 = 2112;
      v26 = v17;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get delegate caller to notify client of did update name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)updateMediaSession:(id)session forMediaProfile:(id)profile
{
  v23 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  profileCopy = profile;
  context = [(HMMediaSystem *)self context];
  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMMediaSystem_updateMediaSession_forMediaProfile___block_invoke;
    block[3] = &unk_1E754E5E8;
    block[4] = self;
    v17 = sessionCopy;
    v18 = profileCopy;
    dispatch_async(queue, block);
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
      v20 = v14;
      v21 = 2080;
      v22 = "[HMMediaSystem updateMediaSession:forMediaProfile:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __52__HMMediaSystem_updateMediaSession_forMediaProfile___block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) components];
    *buf = 138543874;
    v22 = v5;
    v23 = 2112;
    v24 = v6;
    v25 = 2112;
    v26 = v7;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated media system session: %@ for components: [%@]", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [*(a1 + 32) components];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v16 + 1) + 8 * i) mediaProfile];
        v14 = *(a1 + 48);

        if (v13 == v14)
        {
          [*(a1 + 32) notifyDelegateOfUpdatedMediaSession:*(a1 + 40)];
          goto LABEL_13;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeAudioDestinationWithNewMediaSystem:(id)system
{
  v22 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  audioDestination = [(HMMediaSystem *)self audioDestination];
  audioDestination2 = [systemCopy audioDestination];
  v7 = HMFEqualObjects();
  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = audioDestination;
      v20 = 2112;
      v21 = audioDestination2;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ new audio destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMMediaSystem *)selfCopy setAudioDestination:audioDestination2];
    context = [(HMMediaSystem *)selfCopy context];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__HMMediaSystem_mergeAudioDestinationWithNewMediaSystem___block_invoke;
    v15[3] = &unk_1E754E2A8;
    v15[4] = selfCopy;
    HMDispatchToContextQueueIfNotNil(selfCopy, context, v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

- (BOOL)mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:(id)system
{
  supportsMessagedHomepodSettings = [system supportsMessagedHomepodSettings];
  if (supportsMessagedHomepodSettings)
  {

    LOBYTE(supportsMessagedHomepodSettings) = [(HMMediaSystem *)self configureSettingsAdaptorIfNeeded];
  }

  return supportsMessagedHomepodSettings;
}

- (BOOL)_mergeLegacySettingsWithNewMediaSystem:(id)system
{
  v39 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  if (([systemCopy supportsMessagedHomepodSettings] & 1) == 0)
  {
    settings = [systemCopy settings];
    settings2 = [(HMMediaSystem *)self settings];
    v8 = settings2 == 0;

    if ((settings == 0) == v8)
    {
      settings3 = [(HMMediaSystem *)self settings];
      rootGroup = [settings3 rootGroup];
      rootGroup2 = [settings rootGroup];
      v17 = [rootGroup isEqual:rootGroup2];

      if (v17)
      {
        v5 = 0;
LABEL_11:

        goto LABEL_12;
      }

      settings4 = [(HMMediaSystem *)self settings];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke_52;
      v30 = &unk_1E754E5C0;
      selfCopy = self;
      v13 = &v32;
      v19 = settings;
      v32 = v19;
      [settings4 _updateSettingsWithBlock:&v27];

      v20 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        longDescription = [v19 longDescription];
        *buf = 138543618;
        v36 = v23;
        v37 = 2112;
        v38 = longDescription;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Merged new settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      rootGroup3 = [settings rootGroup];
      internal = [rootGroup3 internal];
      context = [(HMMediaSystem *)self context];
      [internal configureWithAccessorySettings:settings context:context];

      [(HMMediaSystem *)self setSettings:settings];
      [settings setSettingsControl:self];
      [settings setSettingsContainerInternal:self];
      context2 = [(HMMediaSystem *)self context];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke;
      v33[3] = &unk_1E754E5C0;
      v33[4] = self;
      v13 = &v34;
      v34 = settings;
      HMDispatchToContextQueueIfNotNil(self, context2, v33);
    }

    v5 = 1;
    goto LABEL_11;
  }

  v5 = 0;
LABEL_12:

  v25 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 40) longDescription];
    v9 = 138543618;
    v10 = v5;
    v11 = 2112;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updated new settings: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) notifyDelegateOfUpdatedSettings:*(a1 + 40)];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke_52(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) settings];
  v3 = [v2 rootGroup];
  v4 = [v3 internal];
  v5 = [*(a1 + 40) rootGroup];
  v6 = [v5 internal];
  v7 = [v4 mergeObject:v6];

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@The merge unexpectedly did not result in a change.", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (BOOL)_mergeSettingsWithNewMediaSystem:(id)system
{
  systemCopy = system;
  v5 = [(HMMediaSystem *)self _mergeLegacySettingsWithNewMediaSystem:systemCopy];
  LOBYTE(self) = [(HMMediaSystem *)self mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:systemCopy];

  return (v5 | self) & 1;
}

- (BOOL)_mergeApplicationDataWithNewMediaSystem:(id)system
{
  systemCopy = system;
  applicationData = [(HMMediaSystem *)self applicationData];
  applicationData2 = [systemCopy applicationData];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    applicationData3 = [systemCopy applicationData];
    [(HMMediaSystem *)self setApplicationData:applicationData3];

    context = [(HMMediaSystem *)self context];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMMediaSystem__mergeApplicationDataWithNewMediaSystem___block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    HMDispatchToContextQueueIfNotNil(self, context, v11);
  }

  return v7 ^ 1;
}

void __57__HMMediaSystem__mergeApplicationDataWithNewMediaSystem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationData];
  [v1 notifyDelegateOfUpdatedApplicationData:v2];
}

- (BOOL)_mergeNameWithNewMediaSystem:(id)system
{
  v34 = *MEMORY[0x1E69E9840];
  systemCopy = system;
  name = [(HMMediaSystem *)self name];
  name2 = [systemCopy name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      name3 = [systemCopy name];
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = name3;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating media system name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    name4 = [systemCopy name];
    [(HMMediaSystem *)selfCopy setName:name4];

    context = [(HMMediaSystem *)selfCopy context];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke;
    v29[3] = &unk_1E754E2A8;
    v29[4] = selfCopy;
    HMDispatchToContextQueueIfNotNil(selfCopy, context, v29);
  }

  configuredName = [(HMMediaSystem *)self configuredName];
  configuredName2 = [systemCopy configuredName];
  v17 = HMFEqualObjects();

  if (v17)
  {
    v18 = v7 ^ 1;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      configuredName3 = [systemCopy configuredName];
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = configuredName3;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating media system configured name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    configuredName4 = [systemCopy configuredName];
    [(HMMediaSystem *)selfCopy2 setConfiguredName:configuredName4];

    context2 = [(HMMediaSystem *)selfCopy2 context];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke_51;
    v28[3] = &unk_1E754E2A8;
    v28[4] = selfCopy2;
    HMDispatchToContextQueueIfNotNil(selfCopy2, context2, v28);

    v18 = 1;
  }

  v26 = *MEMORY[0x1E69E9840];
  return v18;
}

void __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 name];
  [v1 notifyDelegateOfUpdatedName:v2];
}

void __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke_51(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 configuredName];
  [v1 notifyDelegateOfUpdatedConfiguredName:v2];
}

- (BOOL)_mergeComponentsWithNewMediaSystem:(id)system
{
  systemCopy = system;
  v5 = [HMObjectMergeCollection alloc];
  componentsArray = [(HMMediaSystem *)self componentsArray];
  array = [componentsArray array];
  componentsArray2 = [systemCopy componentsArray];

  array2 = [componentsArray2 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:array newObjects:array2];

  removedObjects = [(HMObjectMergeCollection *)v10 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke;
  v19[3] = &unk_1E7548690;
  v19[4] = self;
  [removedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  addedObjects = [(HMObjectMergeCollection *)v10 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke_50;
  v18[3] = &unk_1E7548690;
  v18[4] = self;
  [addedObjects hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v10 mergeCommonObjects];
  isModified = [(HMObjectMergeCollection *)v10 isModified];
  if (isModified)
  {
    finalObjects = [(HMObjectMergeCollection *)v10 finalObjects];
    componentsArray3 = [(HMMediaSystem *)self componentsArray];
    [componentsArray3 setArray:finalObjects];

    components = [(HMMediaSystem *)self components];
    [(HMMediaSystem *)self notifyDelegateOfUpdatedComponents:components];
  }

  return isModified;
}

void __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed media system component via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke_50(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added media system component via merge: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  v8 = [*(a1 + 32) home];
  [v3 _updateAccessoryReference:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)_mergeWithNewMediaSystem:(id)system isFromSerializedData:(BOOL)data
{
  systemCopy = system;
  v7 = [(HMMediaSystem *)self _mergeComponentsWithNewMediaSystem:systemCopy];
  v8 = [(HMMediaSystem *)self _mergeNameWithNewMediaSystem:systemCopy];
  if (data)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = [(HMMediaSystem *)self _mergeApplicationDataWithNewMediaSystem:systemCopy];
    v12 = [(HMMediaSystem *)self _mergeSettingsWithNewMediaSystem:systemCopy];
    v10 = [(HMMediaSystem *)self mergeAudioDestinationWithNewMediaSystem:systemCopy];
    v9 = v11 || v12;
  }

  v13 = v7 || v8 || v10 || v9;

  return v13;
}

- (BOOL)isControllable
{
  v17 = *MEMORY[0x1E69E9840];
  components = [(HMMediaSystem *)self components];
  if ([components count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = components;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      isControllable = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (isControllable)
          {
            accessory = [*(*(&v12 + 1) + 8 * i) accessory];
            isControllable = [accessory isControllable];
          }

          else
          {
            isControllable = 0;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      isControllable = 1;
    }
  }

  else
  {
    isControllable = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return isControllable;
}

- (void)_handleSystemUpdatedNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  messagePayload = [notificationCopy messagePayload];
  home = [(HMMediaSystem *)self home];
  v7 = [HMMediaSystem mediaSystemWithDictionary:messagePayload home:home];

  if (v7)
  {
    [(HMMediaSystem *)self mergeFromNewObject:v7 isFromSerializedData:1];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      messagePayload2 = [notificationCopy messagePayload];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = messagePayload2;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create media system from system payload: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleRootSettingsUpdated:(id)updated
{
  v36 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  if (![(HMMediaSystem *)self supportsMessagedHomepodSettings])
  {
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received Root Settings Updated notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [updatedCopy dataForKey:kMediaSystemRootSettingsCodingKey];
    if (v9)
    {
      v31 = 0;
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v31];
      v11 = v31;
      if (v10)
      {
        v30 = [[HMAccessorySettingGroup alloc] initWithInternal:v10];
        v12 = [[HMAccessorySettings alloc] initWithSettingsContainer:selfCopy settingsControl:selfCopy rootGroup:v30];
        [(HMMediaSystem *)selfCopy setSettings:v12];

        settings = [(HMMediaSystem *)selfCopy settings];
        rootGroup = [settings rootGroup];
        internal = [rootGroup internal];
        settings2 = [(HMMediaSystem *)selfCopy settings];
        [(HMMediaSystem *)selfCopy context];
        v18 = v17 = v11;
        [internal configureWithAccessorySettings:settings2 context:v18];

        settings3 = [(HMMediaSystem *)selfCopy settings];
        [(HMMediaSystem *)selfCopy notifyDelegateOfUpdatedSettings:settings3];

        v11 = v17;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = selfCopy;
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v33 = v28;
          v34 = 2112;
          v35 = v11;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive accessory setting group from root group data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = selfCopy;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        messagePayload = [updatedCopy messagePayload];
        *buf = 138543618;
        v33 = v23;
        v34 = 2112;
        v35 = messagePayload;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized root settings from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateApplicationData:(id)data completionHandler:(id)handler
{
  v43 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  context = [(HMMediaSystem *)self context];
  if (context)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (dataCopy)
    {
      dictionary2 = [dataCopy dictionary];
      [dictionary setObject:dictionary2 forKeyedSubscript:@"kAppDataInformationKey"];
    }

    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    messageTargetUUID = [(HMMediaSystem *)self messageTargetUUID];
    v12 = [v10 initWithTarget:messageTargetUUID];

    v13 = MEMORY[0x1E69A2A10];
    v14 = kMediaSystemSetAppDataRequestKey;
    v15 = [dictionary copy];
    v16 = [v13 messageWithName:v14 destination:v12 payload:v15];

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke;
    aBlock[3] = &unk_1E754D988;
    objc_copyWeak(&v39, location);
    v37 = dataCopy;
    v38 = handlerCopy;
    v17 = _Block_copy(aBlock);
    context2 = [(HMMediaSystem *)self context];
    pendingRequests = [context2 pendingRequests];

    identifier = [v16 identifier];
    v21 = _Block_copy(v17);
    [pendingRequests addCompletionBlock:v21 forIdentifier:identifier];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke_2;
    v32[3] = &unk_1E754E480;
    v22 = pendingRequests;
    v33 = v22;
    v23 = identifier;
    v34 = v23;
    v24 = v17;
    v35 = v24;
    [v16 setResponseHandler:v32];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v16 completionHandler:0];

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v29;
      v41 = 2080;
      v42 = "[HMMediaSystem _updateApplicationData:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
  }

  v30 = *MEMORY[0x1E69E9840];
}

void __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setApplicationData:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  context = [(HMMediaSystem *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaSystem updateApplicationData:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
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
    block[2] = __57__HMMediaSystem_updateApplicationData_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = dataCopy;
    v25 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMMediaSystem updateApplicationData:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
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

- (void)setSettings:(id)settings
{
  settingsCopy = settings;
  os_unfair_lock_lock_with_options();
  settings = self->_settings;
  self->_settings = settingsCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySettings)settings
{
  os_unfair_lock_lock_with_options();
  v3 = self->_settings;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMMediaSession)mediaSession
{
  components = [(HMMediaSystem *)self components];
  v3 = [components sortedArrayUsingComparator:&__block_literal_global_30_20306];

  if ([v3 count])
  {
    firstObject = [v3 firstObject];
    mediaProfile = [firstObject mediaProfile];
    mediaSession = [mediaProfile mediaSession];
  }

  else
  {
    mediaSession = 0;
  }

  return mediaSession;
}

uint64_t __29__HMMediaSystem_mediaSession__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 uuid];
  v6 = [v5 UUIDString];
  v7 = [v4 uuid];

  v8 = [v7 UUIDString];
  v9 = [v6 compare:v8];

  return v9;
}

- (HMAccessoryCategory)category
{
  v2 = [[HMAccessoryCategory alloc] initWithType:@"1D8FD40E-7CAE-4AD5-9973-977D18890DE2" name:@"homepod"];
  v3 = [HMFObjectCacheHMAccessoryCategory cachedInstanceForHMAccessoryCategory:v2];

  return v3;
}

- (NSArray)components
{
  componentsArray = [(HMMediaSystem *)self componentsArray];
  array = [componentsArray array];

  return array;
}

- (BOOL)isCompatible
{
  os_unfair_lock_lock_with_options();
  compatible = self->_compatible;
  os_unfair_lock_unlock(&self->_lock);
  return compatible;
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

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  configuredName = self->_configuredName;
  self->_configuredName = nameCopy;

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

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMMediaSystemDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)_updateAccessoryReference
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  components = [(HMMediaSystem *)self components];
  v4 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(components);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        home = [(HMMediaSystem *)self home];
        [v8 _updateAccessoryReference:home];

        ++v7;
      }

      while (v5 != v7);
      v5 = [components countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  context = [(HMMediaSystem *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:kMediaSystemRootSettingsUpdatedNotification receiver:self selector:sel__handleRootSettingsUpdated_];

  context2 = [(HMMediaSystem *)self context];
  messageDispatcher2 = [context2 messageDispatcher];
  [messageDispatcher2 registerForMessage:kMediaSystemUpdatedNotification receiver:self selector:sel__handleSystemUpdatedNotification_];
}

- (void)updateComponentsSettingsAdapterToSettingReflected
{
  v13 = *MEMORY[0x1E69E9840];
  components = [(HMMediaSystem *)self components];
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = components;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating components settings adapter to setting reflected for components: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [components na_each:&__block_literal_global_17_20317];

  v8 = *MEMORY[0x1E69E9840];
}

void __66__HMMediaSystem_updateComponentsSettingsAdapterToSettingReflected__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 accessory];
  [v2 updateSettingsAdapterSettingReflected:1];
}

- (BOOL)configureSettingsAdaptorIfNeeded
{
  v52 = *MEMORY[0x1E69E9840];
  home = [(HMMediaSystem *)self home];
  homeManager = [home homeManager];
  configuration = [homeManager configuration];
  options = [configuration options];

  if ((options & 0x20) == 0)
  {
    goto LABEL_18;
  }

  mediaSystemSettingsAdapter = [(HMMediaSystem *)self mediaSystemSettingsAdapter];

  if (mediaSystemSettingsAdapter)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v11;
      v12 = "%{public}@Asked to create settings adapter again";
      v13 = v10;
      v14 = OS_LOG_TYPE_INFO;
LABEL_16:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, 0xCu);

      goto LABEL_17;
    }

    goto LABEL_17;
  }

  context = [(HMMediaSystem *)self context];
  if (!context)
  {
    goto LABEL_14;
  }

  v16 = context;
  context2 = [(HMMediaSystem *)self context];
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
      *buf = 138543362;
      v47 = v11;
      v12 = "%{public}@Context or context queue is nil";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_16;
    }

LABEL_17:

    objc_autoreleasePoolPop(v8);
LABEL_18:
    result = 0;
    goto LABEL_19;
  }

  settings = [(HMMediaSystem *)self settings];

  if (settings)
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all existing settings on update to support HPLS", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMMediaSystem *)selfCopy3 setSettings:0];
  }

  home2 = [(HMMediaSystem *)self home];
  v25 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543874;
    v47 = v28;
    v48 = 2112;
    v49 = selfCopy4;
    v50 = 2112;
    v51 = home2;
    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Create settings adapter for media system: %@ home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v25);
  homeManager2 = [home2 homeManager];
  createAccessorySettingsDataSource = [homeManager2 createAccessorySettingsDataSource];
  [(HMMediaSystem *)selfCopy4 setAccessorySettingsDataSource:createAccessorySettingsDataSource];

  createAccessorySettingsController = [homeManager2 createAccessorySettingsController];
  [(HMMediaSystem *)selfCopy4 setAccessorySettingsController:createAccessorySettingsController];

  v32 = [HMAccessorySettingsAdapter alloc];
  uniqueIdentifier = [home2 uniqueIdentifier];
  accessorySettingsDataSource = [(HMMediaSystem *)selfCopy4 accessorySettingsDataSource];
  accessorySettingsController = [(HMMediaSystem *)selfCopy4 accessorySettingsController];
  context3 = [(HMMediaSystem *)selfCopy4 context];
  queue2 = [context3 queue];
  uniqueIdentifier2 = [(HMMediaSystem *)selfCopy4 uniqueIdentifier];
  [(HMMediaSystem *)selfCopy4 context];
  v39 = v45 = home2;
  v40 = [(HMAccessorySettingsAdapter *)v32 initWithHomeIdentifier:uniqueIdentifier dataSource:accessorySettingsDataSource controller:accessorySettingsController workQueue:queue2 settingsContainer:selfCopy4 containerIdentifier:uniqueIdentifier2 containerType:2 settingsControl:selfCopy4 context:v39];
  [(HMMediaSystem *)selfCopy4 setMediaSystemSettingsAdapter:v40];

  mediaSystemSettingsAdapter2 = [(HMMediaSystem *)selfCopy4 mediaSystemSettingsAdapter];
  [mediaSystemSettingsAdapter2 setDelegate:selfCopy4];

  mediaSystemSettingsAdapter3 = [(HMMediaSystem *)selfCopy4 mediaSystemSettingsAdapter];
  [mediaSystemSettingsAdapter3 configureWithCompletionHandler:&__block_literal_global_20324];

  [(HMMediaSystem *)selfCopy4 updateComponentsSettingsAdapterToSettingReflected];
  result = 1;
LABEL_19:
  v44 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)postConfigure
{
  if ([(HMMediaSystem *)self supportsMessagedHomepodSettings])
  {

    [(HMMediaSystem *)self configureSettingsAdaptorIfNeeded];
  }
}

- (void)__configureWithContext:(id)context home:(id)home
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  homeCopy = home;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v11;
    v19 = 2112;
    v20 = selfCopy;
    v21 = 2112;
    v22 = contextCopy;
    v23 = 2112;
    v24 = homeCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media system: %@ context: %@ home: %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMediaSystem *)selfCopy setHome:homeCopy];
  [(HMMediaSystem *)selfCopy setContext:contextCopy];
  [(HMMediaSystem *)selfCopy _updateAccessoryReference];
  if (![(HMMediaSystem *)selfCopy supportsMessagedHomepodSettings])
  {
    settings = [(HMMediaSystem *)selfCopy settings];
    rootGroup = [settings rootGroup];
    internal = [rootGroup internal];
    settings2 = [(HMMediaSystem *)selfCopy settings];
    [internal configureWithAccessorySettings:settings2 context:contextCopy];
  }

  [(HMMediaSystem *)selfCopy _registerNotificationHandlers];

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(HMMediaSystem *)equalCopy uuid];
      uuid2 = [(HMMediaSystem *)self uuid];
      v7 = [uuid isEqual:uuid2];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  uuid = [(HMMediaSystem *)self uuid];
  v3 = [uuid hash];

  return v3;
}

- (NSString)description
{
  audioDestination = [(HMMediaSystem *)self audioDestination];
  v4 = MEMORY[0x1E696AEC0];
  uniqueIdentifier = [(HMMediaSystem *)self uniqueIdentifier];
  uuid = [(HMMediaSystem *)self uuid];
  name = [(HMMediaSystem *)self name];
  configuredName = [(HMMediaSystem *)self configuredName];
  components = [(HMMediaSystem *)self components];
  v10 = components;
  if (audioDestination)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" audioDestination: %@", audioDestination];
    v12 = [v4 stringWithFormat:@"[HMMediaSystem identifier: %@ uuid: %@ name: %@ configured name: %@ components: %@%@]", uniqueIdentifier, uuid, name, configuredName, v10, v11];
  }

  else
  {
    v12 = [v4 stringWithFormat:@"[HMMediaSystem identifier: %@ uuid: %@ name: %@ configured name: %@ components: %@%@]", uniqueIdentifier, uuid, name, configuredName, components, &stru_1F0E92498];
  }

  return v12;
}

- (void)_unconfigure
{
  v39 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (context)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring mediaSystem and child objects", buf, 0xCu);
    }

    v8 = selfCopy;
    objc_autoreleasePoolPop(v4);
    [(HMMediaSystem *)selfCopy setSettings:0];
    mediaSystemSettingsAdapter = [(HMMediaSystem *)selfCopy mediaSystemSettingsAdapter];
    [mediaSystemSettingsAdapter unconfigure];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    components = [(HMMediaSystem *)selfCopy components];
    v11 = [components countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v31;
      *&v12 = 138543618;
      v28 = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v31 != v14)
          {
            objc_enumerationMutation(components);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          accessory = [v16 accessory];
          v18 = objc_autoreleasePoolPush();
          v19 = v8;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = HMFGetLogIdentifier();
            *buf = v28;
            v35 = v21;
            v36 = 2112;
            v37 = accessory;
            _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Reset component accessory %@ settings reflected", buf, 0x16u);

            v8 = selfCopy;
          }

          objc_autoreleasePoolPop(v18);
          [accessory updateSettingsAdapterSettingReflected:0];
          [v16 _unconfigure];
        }

        v13 = [components countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v13);
    }

    componentsArray = [(HMMediaSystem *)v8 componentsArray];
    [componentsArray setArray:0];

    context = [(HMMediaSystem *)v8 context];
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher deregisterReceiver:v8];

    [(HMMediaSystem *)v8 setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:v8];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v26;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (HMMediaSystem)initWithHome:(id)home uuid:(id)uuid name:(id)name configuredName:(id)configuredName compatible:(BOOL)compatible components:(id)components settings:(id)settings
{
  homeCopy = home;
  uuidCopy = uuid;
  nameCopy = name;
  configuredNameCopy = configuredName;
  componentsCopy = components;
  settingsCopy = settings;
  v28.receiver = self;
  v28.super_class = HMMediaSystem;
  v19 = [(HMMediaSystem *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, homeCopy);
    objc_storeStrong(&v20->_uuid, uuid);
    objc_storeStrong(&v20->_name, name);
    objc_storeStrong(&v20->_configuredName, configuredName);
    v20->_compatible = compatible;
    v21 = [HMMutableArray arrayWithArray:componentsCopy];
    componentsArray = v20->_componentsArray;
    v20->_componentsArray = v21;

    objc_storeStrong(&v20->_settings, settings);
    v23 = objc_alloc_init(HMApplicationData);
    applicationData = v20->_applicationData;
    v20->_applicationData = v23;
  }

  return v20;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t55 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t55, &__block_literal_global_73);
  }

  v3 = logCategory__hmf_once_v56;

  return v3;
}

uint64_t __28__HMMediaSystem_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v56;
  logCategory__hmf_once_v56 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)mediaSystemWithDictionary:(id)dictionary home:(id)home
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  homeCopy = home;
  v23 = [dictionaryCopy hmf_stringForKey:kMediaSystemNameCodingKey];
  v22 = [dictionaryCopy hmf_stringForKey:kMediaSystemConfiguredNameCodingKey];
  v7 = [dictionaryCopy hmf_UUIDForKey:kMediaSystemUUIDCodingKey];
  v21 = [dictionaryCopy hmf_BOOLForKey:kMediaSystemCompatibleCodingKey];
  v8 = [dictionaryCopy hmf_arrayForKey:kMediaSystemComponentsCodingKey];
  array = [MEMORY[0x1E695DF70] array];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [HMMediaSystemComponent mediaSystemComponentWithDictionary:*(*(&v24 + 1) + 8 * i) home:homeCopy];
        [array addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = [HMMediaSystem alloc];
  v17 = [array copy];
  v18 = [(HMMediaSystem *)v16 initWithHome:homeCopy uuid:v7 name:v23 configuredName:v22 compatible:v21 components:v17 settings:0];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end