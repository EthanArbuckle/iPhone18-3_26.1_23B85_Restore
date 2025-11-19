@interface HMMediaSystem
+ (id)logCategory;
+ (id)mediaSystemWithDictionary:(id)a3 home:(id)a4;
- (BOOL)_mergeApplicationDataWithNewMediaSystem:(id)a3;
- (BOOL)_mergeComponentsWithNewMediaSystem:(id)a3;
- (BOOL)_mergeLegacySettingsWithNewMediaSystem:(id)a3;
- (BOOL)_mergeNameWithNewMediaSystem:(id)a3;
- (BOOL)_mergeSettingsWithNewMediaSystem:(id)a3;
- (BOOL)_mergeWithNewMediaSystem:(id)a3 isFromSerializedData:(BOOL)a4;
- (BOOL)configureSettingsAdaptorIfNeeded;
- (BOOL)isCompatible;
- (BOOL)isControllable;
- (BOOL)isEqual:(id)a3;
- (BOOL)mergeAudioDestinationWithNewMediaSystem:(id)a3;
- (BOOL)mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:(id)a3;
- (BOOL)supportsAudioDestination;
- (BOOL)supportsAudioGroup;
- (BOOL)supportsMessagedHomepodSettings;
- (HMAccessoryCategory)category;
- (HMAccessorySettings)settings;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMMediaSession)mediaSession;
- (HMMediaSystem)initWithCoder:(id)a3;
- (HMMediaSystem)initWithHome:(id)a3 uuid:(id)a4 name:(id)a5 configuredName:(id)a6 compatible:(BOOL)a7 components:(id)a8 settings:(id)a9;
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
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_handleRootSettingsUpdated:(id)a3;
- (void)_handleSystemUpdatedNotification:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)_updateAccessoryReference;
- (void)_updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)adapter:(id)a3 didUpdatePreferredMediaUserUUIDString:(id)a4 selectionType:(unint64_t)a5;
- (void)adapter:(id)a3 didUpdateSettingKeyPaths:(id)a4;
- (void)adapter:(id)a3 didUpdateSettings:(id)a4;
- (void)callCompletionHandler:(id)a3 error:(id)a4;
- (void)notifyDelegateOfUpdatedApplicationData:(id)a3;
- (void)notifyDelegateOfUpdatedAudioDestination;
- (void)notifyDelegateOfUpdatedComponents:(id)a3;
- (void)notifyDelegateOfUpdatedConfiguredName:(id)a3;
- (void)notifyDelegateOfUpdatedMediaSession:(id)a3;
- (void)notifyDelegateOfUpdatedName:(id)a3;
- (void)notifyDelegateOfUpdatedSettings:(id)a3;
- (void)postConfigure;
- (void)setApplicationData:(id)a3;
- (void)setConfiguredName:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setName:(id)a3;
- (void)setSettings:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateAudioDestinationSupportedOptions:(unint64_t)a3 completion:(id)a4;
- (void)updateComponentsSettingsAdapterToSettingReflected;
- (void)updateMediaSession:(id)a3 forMediaProfile:(id)a4;
- (void)updateSettingWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5;
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
  v3 = [(HMMediaSystem *)self components];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
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
        objc_enumerationMutation(v3);
      }

      v9 = [*(*(&v29 + 1) + 8 * v8) accessory];
      if (!v9)
      {
        break;
      }

      v10 = v9;
      v11 = [v9 serialNumber];

      if (!v11)
      {
        v21 = objc_autoreleasePoolPush();
        v25 = self;
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
        v5 = [v3 countByEnumeratingWithState:&v29 objects:v35 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        v16 = [v6 uniqueIdentifier];

        goto LABEL_24;
      }
    }

    v21 = objc_autoreleasePoolPush();
    v22 = self;
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
  v18 = self;
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
  v16 = 0;
LABEL_24:
  v27 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)updateSettingWithKeyPath:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMMediaSystem *)self mediaSystemSettingsAdapter];

  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  v15 = v14;
  if (v11)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v20 = 138544130;
      v21 = v16;
      v22 = 2112;
      v23 = v13;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v9;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Media system %@ update setting %@ with value %@", &v20, 0x2Au);
    }

    objc_autoreleasePoolPop(v12);
    v17 = [(HMMediaSystem *)v13 mediaSystemSettingsAdapter];
    [v17 updateWithKeyPath:v8 value:v9 completionHandler:v10];
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
    v17 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:8 reason:@"Adapter is nil" suggestion:@"Configure adapter before use it"];
    v10[2](v10, v17);
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)adapter:(id)a3 didUpdatePreferredMediaUserUUIDString:(id)a4 selectionType:(unint64_t)a5
{
  v16 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = self;
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

- (void)adapter:(id)a3 didUpdateSettingKeyPaths:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v19 = v11;
    v20 = 2112;
    v21 = v9;
    v22 = 2112;
    v23 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Media system %@ did update settings %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [(HMMediaSystem *)v9 context];
  v13 = [v12 delegateCaller];

  if (v13)
  {
    objc_initWeak(buf, v9);
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __50__HMMediaSystem_adapter_didUpdateSettingKeyPaths___block_invoke;
    v15[3] = &unk_1E754D848;
    objc_copyWeak(&v17, buf);
    v16 = v7;
    [v13 invokeBlock:v15];

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

- (void)adapter:(id)a3 didUpdateSettings:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMediaSystem *)self settings];

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
    [(HMMediaSystem *)self setSettings:v7];
    v13 = [(HMMediaSystem *)self settings];
    [(HMMediaSystem *)self notifyDelegateOfUpdatedSettings:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
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
  v12 = [(HMMediaSystem *)v8 context];
  v13 = [v12 messageDispatcher];
  if (v13)
  {
    v33 = @"HMMediaDestinationSupportedOptionsPayloadKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v34 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    v17 = [(HMMediaSystem *)v8 audioDestination];
    v18 = [v17 uniqueIdentifier];
    v19 = [v16 initWithTarget:v18];

    v20 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMMediaDestinationUpdateSupportedOptionsRequestMessage" destination:v19 payload:v15];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __67__HMMediaSystem_updateAudioDestinationSupportedOptions_completion___block_invoke;
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
    [(HMMediaSystem *)v23 callCompletionHandler:v6 error:v15];
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
  v2 = [(HMMediaSystem *)self audioDestination];
  v3 = [v2 audioGroupIdentifier];

  return v3;
}

- (NSArray)audioDestinationMediaProfiles
{
  v2 = [(HMMediaSystem *)self components];
  v3 = [v2 copy];

  v4 = [v3 na_map:&__block_literal_global_85];

  return v4;
}

- (NSString)audioDestinationParentIdentifier
{
  v2 = [(HMMediaSystem *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (BOOL)supportsMessagedHomepodSettings
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [(HMMediaSystem *)self components];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = *v11;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = [*(*(&v10 + 1) + 8 * i) accessory];
        v7 = [v6 supportsMessagedHomePodSettings];

        if (v7)
        {
          LOBYTE(v3) = 1;
          goto LABEL_11;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
  v2 = [(HMMediaSystem *)self audioDestination];
  v3 = [v2 containsSupportedOptions:8];

  return v3;
}

- (BOOL)supportsAudioDestination
{
  v2 = [(HMMediaSystem *)self audioDestination];
  v3 = [v2 containsHomeTheaterSupportedOptions];

  return v3;
}

- (int64_t)audioDestinationType
{
  v2 = [(HMMediaSystem *)self audioDestination];
  v3 = v2 != 0;

  return 2 * v3;
}

- (NSString)audioDestinationIdentifier
{
  v2 = [(HMMediaSystem *)self audioDestination];
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
    v8 = [(HMMediaSystem *)self context];
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

- (HMMediaSystem)initWithCoder:(id)a3
{
  v25[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 decodeBoolForKey:kMediaSystemInvalidObjectFlagCodingKey])
  {
    v5 = 0;
  }

  else
  {
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemUUIDCodingKey];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemNameCodingKey];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemConfiguredNameCodingKey];
    v9 = [v4 decodeBoolForKey:kMediaSystemCompatibleCodingKey];
    v10 = MEMORY[0x1E695DFD8];
    v25[0] = objc_opt_class();
    v25[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:kMediaSystemComponentsCodingKey];

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:kMediaSystemRootSettingsCodingKey];
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
      v18 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
      applicationData = v17->_applicationData;
      v17->_applicationData = v18;

      v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:HMMediaSystemAudioDestinationCodingKey];
      audioDestination = v17->_audioDestination;
      v17->_audioDestination = v20;
    }

    self = v17;

    v5 = self;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)logIdentifier
{
  v2 = [(HMMediaSystem *)self uuid];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)notifyDelegateOfUpdatedAudioDestination
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSystem *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMMediaSystem *)self delegate];
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(HMMediaSystem *)v7 audioDestination];
      *buf = 138543874;
      v20 = v9;
      v21 = 2112;
      v22 = v10;
      v23 = 2112;
      v24 = v5;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Notifying client of updated audio destination: %@ with delegate: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v6);
    if (objc_opt_respondsToSelector())
    {
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __56__HMMediaSystem_notifyDelegateOfUpdatedAudioDestination__block_invoke;
      v16[3] = &unk_1E754E5C0;
      v17 = v5;
      v18 = v7;
      [v4 invokeBlock:v16];
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
      v20 = v14;
      v21 = 2112;
      v22 = v3;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of updated audio destination due to no delegate caller for context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfUpdatedMediaSession:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __53__HMMediaSystem_notifyDelegateOfUpdatedMediaSession___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
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

- (void)notifyDelegateOfUpdatedSettings:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__HMMediaSystem_notifyDelegateOfUpdatedSettings___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
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

- (void)notifyDelegateOfUpdatedApplicationData:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56__HMMediaSystem_notifyDelegateOfUpdatedApplicationData___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
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

- (void)notifyDelegateOfUpdatedComponents:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 delegateCaller];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __51__HMMediaSystem_notifyDelegateOfUpdatedComponents___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    [v7 invokeBlock:v13];
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

- (void)notifyDelegateOfUpdatedConfiguredName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __55__HMMediaSystem_notifyDelegateOfUpdatedConfiguredName___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
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

- (void)notifyDelegateOfUpdatedName:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self context];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __45__HMMediaSystem_notifyDelegateOfUpdatedName___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = v4;
    dispatch_async(v7, v13);
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

- (void)updateMediaSession:(id)a3 forMediaProfile:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMediaSystem *)self context];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HMMediaSystem_updateMediaSession_forMediaProfile___block_invoke;
    block[3] = &unk_1E754E5E8;
    block[4] = self;
    v17 = v6;
    v18 = v7;
    dispatch_async(v10, block);
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

- (BOOL)mergeAudioDestinationWithNewMediaSystem:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self audioDestination];
  v6 = [v4 audioDestination];
  v7 = HMFEqualObjects();
  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v17 = v11;
      v18 = 2112;
      v19 = v5;
      v20 = 2112;
      v21 = v6;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating audio destination: %@ new audio destination: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    [(HMMediaSystem *)v9 setAudioDestination:v6];
    v12 = [(HMMediaSystem *)v9 context];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__HMMediaSystem_mergeAudioDestinationWithNewMediaSystem___block_invoke;
    v15[3] = &unk_1E754E2A8;
    v15[4] = v9;
    HMDispatchToContextQueueIfNotNil(v9, v12, v15);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v7 ^ 1;
}

- (BOOL)mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:(id)a3
{
  v4 = [a3 supportsMessagedHomepodSettings];
  if (v4)
  {

    LOBYTE(v4) = [(HMMediaSystem *)self configureSettingsAdaptorIfNeeded];
  }

  return v4;
}

- (BOOL)_mergeLegacySettingsWithNewMediaSystem:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (([v4 supportsMessagedHomepodSettings] & 1) == 0)
  {
    v6 = [v4 settings];
    v7 = [(HMMediaSystem *)self settings];
    v8 = v7 == 0;

    if ((v6 == 0) == v8)
    {
      v14 = [(HMMediaSystem *)self settings];
      v15 = [v14 rootGroup];
      v16 = [v6 rootGroup];
      v17 = [v15 isEqual:v16];

      if (v17)
      {
        v5 = 0;
LABEL_11:

        goto LABEL_12;
      }

      v18 = [(HMMediaSystem *)self settings];
      v27 = MEMORY[0x1E69E9820];
      v28 = 3221225472;
      v29 = __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke_52;
      v30 = &unk_1E754E5C0;
      v31 = self;
      v13 = &v32;
      v19 = v6;
      v32 = v19;
      [v18 _updateSettingsWithBlock:&v27];

      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v19 longDescription];
        *buf = 138543618;
        v36 = v23;
        v37 = 2112;
        v38 = v24;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Merged new settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    else
    {
      v9 = [v6 rootGroup];
      v10 = [v9 internal];
      v11 = [(HMMediaSystem *)self context];
      [v10 configureWithAccessorySettings:v6 context:v11];

      [(HMMediaSystem *)self setSettings:v6];
      [v6 setSettingsControl:self];
      [v6 setSettingsContainerInternal:self];
      v12 = [(HMMediaSystem *)self context];
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = __56__HMMediaSystem__mergeLegacySettingsWithNewMediaSystem___block_invoke;
      v33[3] = &unk_1E754E5C0;
      v33[4] = self;
      v13 = &v34;
      v34 = v6;
      HMDispatchToContextQueueIfNotNil(self, v12, v33);
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

- (BOOL)_mergeSettingsWithNewMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystem *)self _mergeLegacySettingsWithNewMediaSystem:v4];
  LOBYTE(self) = [(HMMediaSystem *)self mergeSupportsMessagedHomepodSettingsWithNewMediaSystem:v4];

  return (v5 | self) & 1;
}

- (BOOL)_mergeApplicationDataWithNewMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystem *)self applicationData];
  v6 = [v4 applicationData];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = [v4 applicationData];
    [(HMMediaSystem *)self setApplicationData:v8];

    v9 = [(HMMediaSystem *)self context];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__HMMediaSystem__mergeApplicationDataWithNewMediaSystem___block_invoke;
    v11[3] = &unk_1E754E2A8;
    v11[4] = self;
    HMDispatchToContextQueueIfNotNil(self, v9, v11);
  }

  return v7 ^ 1;
}

void __57__HMMediaSystem__mergeApplicationDataWithNewMediaSystem___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [v1 applicationData];
  [v1 notifyDelegateOfUpdatedApplicationData:v2];
}

- (BOOL)_mergeNameWithNewMediaSystem:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystem *)self name];
  v6 = [v4 name];
  v7 = HMFEqualObjects();

  if ((v7 & 1) == 0)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 name];
      *buf = 138543618;
      v31 = v11;
      v32 = 2112;
      v33 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating media system name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v13 = [v4 name];
    [(HMMediaSystem *)v9 setName:v13];

    v14 = [(HMMediaSystem *)v9 context];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke;
    v29[3] = &unk_1E754E2A8;
    v29[4] = v9;
    HMDispatchToContextQueueIfNotNil(v9, v14, v29);
  }

  v15 = [(HMMediaSystem *)self configuredName];
  v16 = [v4 configuredName];
  v17 = HMFEqualObjects();

  if (v17)
  {
    v18 = v7 ^ 1;
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [v4 configuredName];
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating media system configured name: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = [v4 configuredName];
    [(HMMediaSystem *)v20 setConfiguredName:v24];

    v25 = [(HMMediaSystem *)v20 context];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__HMMediaSystem__mergeNameWithNewMediaSystem___block_invoke_51;
    v28[3] = &unk_1E754E2A8;
    v28[4] = v20;
    HMDispatchToContextQueueIfNotNil(v20, v25, v28);

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

- (BOOL)_mergeComponentsWithNewMediaSystem:(id)a3
{
  v4 = a3;
  v5 = [HMObjectMergeCollection alloc];
  v6 = [(HMMediaSystem *)self componentsArray];
  v7 = [v6 array];
  v8 = [v4 componentsArray];

  v9 = [v8 array];
  v10 = [(HMObjectMergeCollection *)v5 initWithCurrentObjects:v7 newObjects:v9];

  v11 = [(HMObjectMergeCollection *)v10 removedObjects];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke;
  v19[3] = &unk_1E7548690;
  v19[4] = self;
  [v11 hmf_enumerateWithAutoreleasePoolUsingBlock:v19];

  v12 = [(HMObjectMergeCollection *)v10 addedObjects];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __52__HMMediaSystem__mergeComponentsWithNewMediaSystem___block_invoke_50;
  v18[3] = &unk_1E7548690;
  v18[4] = self;
  [v12 hmf_enumerateWithAutoreleasePoolUsingBlock:v18];

  [(HMObjectMergeCollection *)v10 mergeCommonObjects];
  v13 = [(HMObjectMergeCollection *)v10 isModified];
  if (v13)
  {
    v14 = [(HMObjectMergeCollection *)v10 finalObjects];
    v15 = [(HMMediaSystem *)self componentsArray];
    [v15 setArray:v14];

    v16 = [(HMMediaSystem *)self components];
    [(HMMediaSystem *)self notifyDelegateOfUpdatedComponents:v16];
  }

  return v13;
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

- (BOOL)_mergeWithNewMediaSystem:(id)a3 isFromSerializedData:(BOOL)a4
{
  v6 = a3;
  v7 = [(HMMediaSystem *)self _mergeComponentsWithNewMediaSystem:v6];
  v8 = [(HMMediaSystem *)self _mergeNameWithNewMediaSystem:v6];
  if (a4)
  {
    v9 = 0;
    v10 = 0;
  }

  else
  {
    v11 = [(HMMediaSystem *)self _mergeApplicationDataWithNewMediaSystem:v6];
    v12 = [(HMMediaSystem *)self _mergeSettingsWithNewMediaSystem:v6];
    v10 = [(HMMediaSystem *)self mergeAudioDestinationWithNewMediaSystem:v6];
    v9 = v11 || v12;
  }

  v13 = v7 || v8 || v10 || v9;

  return v13;
}

- (BOOL)isControllable
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [(HMMediaSystem *)self components];
  if ([v2 count])
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v3 = v2;
    v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v13;
      v7 = 1;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v13 != v6)
          {
            objc_enumerationMutation(v3);
          }

          if (v7)
          {
            v9 = [*(*(&v12 + 1) + 8 * i) accessory];
            v7 = [v9 isControllable];
          }

          else
          {
            v7 = 0;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v5);
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

- (void)_handleSystemUpdatedNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [(HMMediaSystem *)self home];
  v7 = [HMMediaSystem mediaSystemWithDictionary:v5 home:v6];

  if (v7)
  {
    [(HMMediaSystem *)self mergeFromNewObject:v7 isFromSerializedData:1];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 messagePayload];
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not create media system from system payload: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleRootSettingsUpdated:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (![(HMMediaSystem *)self supportsMessagedHomepodSettings])
  {
    v5 = objc_autoreleasePoolPush();
    v6 = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received Root Settings Updated notification", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [v4 dataForKey:kMediaSystemRootSettingsCodingKey];
    if (v9)
    {
      v31 = 0;
      v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v9 error:&v31];
      v11 = v31;
      if (v10)
      {
        v30 = [[HMAccessorySettingGroup alloc] initWithInternal:v10];
        v12 = [[HMAccessorySettings alloc] initWithSettingsContainer:v6 settingsControl:v6 rootGroup:v30];
        [(HMMediaSystem *)v6 setSettings:v12];

        v13 = [(HMMediaSystem *)v6 settings];
        v14 = [v13 rootGroup];
        v15 = [v14 internal];
        v16 = [(HMMediaSystem *)v6 settings];
        [(HMMediaSystem *)v6 context];
        v18 = v17 = v11;
        [v15 configureWithAccessorySettings:v16 context:v18];

        v19 = [(HMMediaSystem *)v6 settings];
        [(HMMediaSystem *)v6 notifyDelegateOfUpdatedSettings:v19];

        v11 = v17;
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = v6;
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
      v21 = v6;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v24 = [v4 messagePayload];
        *buf = 138543618;
        v33 = v23;
        v34 = 2112;
        v35 = v24;
        _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_ERROR, "%{public}@Missing serialized root settings from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

- (void)_updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v31 = a4;
  v7 = [(HMMediaSystem *)self context];
  if (v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    if (v6)
    {
      v9 = [v6 dictionary];
      [v8 setObject:v9 forKeyedSubscript:@"kAppDataInformationKey"];
    }

    v10 = objc_alloc(MEMORY[0x1E69A2A00]);
    v11 = [(HMMediaSystem *)self messageTargetUUID];
    v12 = [v10 initWithTarget:v11];

    v13 = MEMORY[0x1E69A2A10];
    v14 = kMediaSystemSetAppDataRequestKey;
    v15 = [v8 copy];
    v16 = [v13 messageWithName:v14 destination:v12 payload:v15];

    objc_initWeak(location, self);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke;
    aBlock[3] = &unk_1E754D988;
    objc_copyWeak(&v39, location);
    v37 = v6;
    v38 = v31;
    v17 = _Block_copy(aBlock);
    v18 = [(HMMediaSystem *)self context];
    v19 = [v18 pendingRequests];

    v20 = [v16 identifier];
    v21 = _Block_copy(v17);
    [v19 addCompletionBlock:v21 forIdentifier:v20];

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __58__HMMediaSystem__updateApplicationData_completionHandler___block_invoke_2;
    v32[3] = &unk_1E754E480;
    v22 = v19;
    v33 = v22;
    v23 = v20;
    v34 = v23;
    v24 = v17;
    v35 = v24;
    [v16 setResponseHandler:v32];
    v25 = [v7 messageDispatcher];
    [v25 sendMessage:v16 completionHandler:0];

    objc_destroyWeak(&v39);
    objc_destroyWeak(location);
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
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

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMMediaSystem *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMediaSystem updateApplicationData:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HMMediaSystem_updateApplicationData_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(v10, block);
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
      v27 = v14;
      v28 = 2080;
      v29 = "[HMMediaSystem updateApplicationData:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
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

- (void)setSettings:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  settings = self->_settings;
  self->_settings = v4;

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
  v2 = [(HMMediaSystem *)self components];
  v3 = [v2 sortedArrayUsingComparator:&__block_literal_global_30_20306];

  if ([v3 count])
  {
    v4 = [v3 firstObject];
    v5 = [v4 mediaProfile];
    v6 = [v5 mediaSession];
  }

  else
  {
    v6 = 0;
  }

  return v6;
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
  v2 = [(HMMediaSystem *)self componentsArray];
  v3 = [v2 array];

  return v3;
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

- (void)setConfiguredName:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
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

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

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
  v3 = [(HMMediaSystem *)self components];
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        v9 = [(HMMediaSystem *)self home];
        [v8 _updateAccessoryReference:v9];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  v3 = [(HMMediaSystem *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:kMediaSystemRootSettingsUpdatedNotification receiver:self selector:sel__handleRootSettingsUpdated_];

  v6 = [(HMMediaSystem *)self context];
  v5 = [v6 messageDispatcher];
  [v5 registerForMessage:kMediaSystemUpdatedNotification receiver:self selector:sel__handleSystemUpdatedNotification_];
}

- (void)updateComponentsSettingsAdapterToSettingReflected
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSystem *)self components];
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v9 = 138543618;
    v10 = v7;
    v11 = 2112;
    v12 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating components settings adapter to setting reflected for components: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 na_each:&__block_literal_global_17_20317];

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
  v3 = [(HMMediaSystem *)self home];
  v4 = [v3 homeManager];
  v5 = [v4 configuration];
  v6 = [v5 options];

  if ((v6 & 0x20) == 0)
  {
    goto LABEL_18;
  }

  v7 = [(HMMediaSystem *)self mediaSystemSettingsAdapter];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
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

  v15 = [(HMMediaSystem *)self context];
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = v15;
  v17 = [(HMMediaSystem *)self context];
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

  v19 = [(HMMediaSystem *)self settings];

  if (v19)
  {
    v20 = objc_autoreleasePoolPush();
    v21 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543362;
      v47 = v23;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@Removing all existing settings on update to support HPLS", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v20);
    [(HMMediaSystem *)v21 setSettings:0];
  }

  v24 = [(HMMediaSystem *)self home];
  v25 = objc_autoreleasePoolPush();
  v26 = self;
  v27 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
  {
    v28 = HMFGetLogIdentifier();
    *buf = 138543874;
    v47 = v28;
    v48 = 2112;
    v49 = v26;
    v50 = 2112;
    v51 = v24;
    _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_INFO, "%{public}@Create settings adapter for media system: %@ home: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v25);
  v29 = [v24 homeManager];
  v30 = [v29 createAccessorySettingsDataSource];
  [(HMMediaSystem *)v26 setAccessorySettingsDataSource:v30];

  v31 = [v29 createAccessorySettingsController];
  [(HMMediaSystem *)v26 setAccessorySettingsController:v31];

  v32 = [HMAccessorySettingsAdapter alloc];
  v33 = [v24 uniqueIdentifier];
  v34 = [(HMMediaSystem *)v26 accessorySettingsDataSource];
  v35 = [(HMMediaSystem *)v26 accessorySettingsController];
  v36 = [(HMMediaSystem *)v26 context];
  v37 = [v36 queue];
  v38 = [(HMMediaSystem *)v26 uniqueIdentifier];
  [(HMMediaSystem *)v26 context];
  v39 = v45 = v24;
  v40 = [(HMAccessorySettingsAdapter *)v32 initWithHomeIdentifier:v33 dataSource:v34 controller:v35 workQueue:v37 settingsContainer:v26 containerIdentifier:v38 containerType:2 settingsControl:v26 context:v39];
  [(HMMediaSystem *)v26 setMediaSystemSettingsAdapter:v40];

  v41 = [(HMMediaSystem *)v26 mediaSystemSettingsAdapter];
  [v41 setDelegate:v26];

  v42 = [(HMMediaSystem *)v26 mediaSystemSettingsAdapter];
  [v42 configureWithCompletionHandler:&__block_literal_global_20324];

  [(HMMediaSystem *)v26 updateComponentsSettingsAdapterToSettingReflected];
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

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v17 = 138544130;
    v18 = v11;
    v19 = 2112;
    v20 = v9;
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Configuring media system: %@ context: %@ home: %@", &v17, 0x2Au);
  }

  objc_autoreleasePoolPop(v8);
  [(HMMediaSystem *)v9 setHome:v7];
  [(HMMediaSystem *)v9 setContext:v6];
  [(HMMediaSystem *)v9 _updateAccessoryReference];
  if (![(HMMediaSystem *)v9 supportsMessagedHomepodSettings])
  {
    v12 = [(HMMediaSystem *)v9 settings];
    v13 = [v12 rootGroup];
    v14 = [v13 internal];
    v15 = [(HMMediaSystem *)v9 settings];
    [v14 configureWithAccessorySettings:v15 context:v6];
  }

  [(HMMediaSystem *)v9 _registerNotificationHandlers];

  v16 = *MEMORY[0x1E69E9840];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(HMMediaSystem *)v4 uuid];
      v6 = [(HMMediaSystem *)self uuid];
      v7 = [v5 isEqual:v6];
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
  v2 = [(HMMediaSystem *)self uuid];
  v3 = [v2 hash];

  return v3;
}

- (NSString)description
{
  v3 = [(HMMediaSystem *)self audioDestination];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(HMMediaSystem *)self uniqueIdentifier];
  v6 = [(HMMediaSystem *)self uuid];
  v7 = [(HMMediaSystem *)self name];
  v8 = [(HMMediaSystem *)self configuredName];
  v9 = [(HMMediaSystem *)self components];
  v10 = v9;
  if (v3)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" audioDestination: %@", v3];
    v12 = [v4 stringWithFormat:@"[HMMediaSystem identifier: %@ uuid: %@ name: %@ configured name: %@ components: %@%@]", v5, v6, v7, v8, v10, v11];
  }

  else
  {
    v12 = [v4 stringWithFormat:@"[HMMediaSystem identifier: %@ uuid: %@ name: %@ configured name: %@ components: %@%@]", v5, v6, v7, v8, v9, &stru_1F0E92498];
  }

  return v12;
}

- (void)_unconfigure
{
  v39 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v29 = self;
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

    v8 = v29;
    objc_autoreleasePoolPop(v4);
    [(HMMediaSystem *)v29 setSettings:0];
    v9 = [(HMMediaSystem *)v29 mediaSystemSettingsAdapter];
    [v9 unconfigure];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [(HMMediaSystem *)v29 components];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
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
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v30 + 1) + 8 * i);
          v17 = [v16 accessory];
          v18 = objc_autoreleasePoolPush();
          v19 = v8;
          v20 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
          {
            v21 = HMFGetLogIdentifier();
            *buf = v28;
            v35 = v21;
            v36 = 2112;
            v37 = v17;
            _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Reset component accessory %@ settings reflected", buf, 0x16u);

            v8 = v29;
          }

          objc_autoreleasePoolPop(v18);
          [v17 updateSettingsAdapterSettingReflected:0];
          [v16 _unconfigure];
        }

        v13 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v13);
    }

    v22 = [(HMMediaSystem *)v8 componentsArray];
    [v22 setArray:0];

    v23 = [(HMMediaSystem *)v8 context];
    v24 = [v23 messageDispatcher];
    [v24 deregisterReceiver:v8];

    [(HMMediaSystem *)v8 setContext:0];
    v25 = [MEMORY[0x1E696AD88] defaultCenter];
    [v25 removeObserver:v8];
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

- (HMMediaSystem)initWithHome:(id)a3 uuid:(id)a4 name:(id)a5 configuredName:(id)a6 compatible:(BOOL)a7 components:(id)a8 settings:(id)a9
{
  v14 = a3;
  v27 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a8;
  v18 = a9;
  v28.receiver = self;
  v28.super_class = HMMediaSystem;
  v19 = [(HMMediaSystem *)&v28 init];
  v20 = v19;
  if (v19)
  {
    objc_storeWeak(&v19->_home, v14);
    objc_storeStrong(&v20->_uuid, a4);
    objc_storeStrong(&v20->_name, a5);
    objc_storeStrong(&v20->_configuredName, a6);
    v20->_compatible = a7;
    v21 = [HMMutableArray arrayWithArray:v17];
    componentsArray = v20->_componentsArray;
    v20->_componentsArray = v21;

    objc_storeStrong(&v20->_settings, a9);
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

+ (id)mediaSystemWithDictionary:(id)a3 home:(id)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v23 = [v5 hmf_stringForKey:kMediaSystemNameCodingKey];
  v22 = [v5 hmf_stringForKey:kMediaSystemConfiguredNameCodingKey];
  v7 = [v5 hmf_UUIDForKey:kMediaSystemUUIDCodingKey];
  v21 = [v5 hmf_BOOLForKey:kMediaSystemCompatibleCodingKey];
  v8 = [v5 hmf_arrayForKey:kMediaSystemComponentsCodingKey];
  v9 = [MEMORY[0x1E695DF70] array];
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

        v15 = [HMMediaSystemComponent mediaSystemComponentWithDictionary:*(*(&v24 + 1) + 8 * i) home:v6];
        [v9 addObject:v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v16 = [HMMediaSystem alloc];
  v17 = [v9 copy];
  v18 = [(HMMediaSystem *)v16 initWithHome:v6 uuid:v7 name:v23 configuredName:v22 compatible:v21 components:v17 settings:0];

  v19 = *MEMORY[0x1E69E9840];

  return v18;
}

@end