@interface HMCameraProfile
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMCameraClipManager)clipManager;
- (HMCameraProfile)initWithCameraProfile:(id)a3;
- (HMCameraProfileUserSettingsDelegate)userSettingsDelegate;
- (HMCameraRecordingEventManager)recordingEventManager;
- (HMCameraRecordingReachabilityEventManager)reachabilityEventManager;
- (HMCameraUserSettings)userSettings;
- (id)logIdentifier;
- (id)services;
@end

@implementation HMCameraProfile

uint64_t __53___HMCameraProfile___configureWithContext_accessory___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 serviceType];
  v3 = [v2 isEqualToString:@"00000204-0000-1000-8000-0026BB765291"];

  return v3;
}

- (HMCameraProfileUserSettingsDelegate)userSettingsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_userSettingsDelegate);

  return WeakRetained;
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(HMAccessoryProfile *)self uniqueIdentifier];
    v5 = [v4 UUIDString];
    v6 = [(HMAccessoryProfile *)self accessory];
    v7 = [v6 name];
    v8 = [v3 stringWithFormat:@"%@/%@", v5, v7];
  }

  else
  {
    v4 = [(HMAccessoryProfile *)self uniqueIdentifier];
    v8 = [v4 UUIDString];
  }

  return v8;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v32 = *MEMORY[0x1E69E9840];
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

  if (v6)
  {
    v7 = [(HMCameraProfile *)self snapshotControl];
    v8 = [v7 snapshotControl];
    v9 = [v6 snapshotControl];
    v10 = [v9 snapshotControl];
    [v8 mergeNewSnapshotControl:v10];

    v11 = [v6 userSettings];
    v12 = [(HMCameraProfile *)self userSettings];

    if (v12)
    {
      v13 = [(HMCameraProfile *)self userSettings];
      [v13 _mergeNewSettings:v11];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v17;
        v30 = 2112;
        v31 = v11;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@No existing camera settings to merge; adding new settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [(HMCameraProfile *)v15 cameraProfile];
      [v18 addUserSettings:v11];

      v19 = [(HMCameraProfile *)v15 userSettingsDelegate];
      if (objc_opt_respondsToSelector())
      {
        v20 = [(HMCameraProfile *)v15 cameraProfile];
        v21 = [v20 context];
        v22 = [v21 delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __38__HMCameraProfile_mergeFromNewObject___block_invoke;
        v25[3] = &unk_1E754E5C0;
        v26 = v19;
        v27 = v15;
        [v22 invokeBlock:v25];
      }
    }
  }

  v23 = *MEMORY[0x1E69E9840];
  return 0;
}

void __38__HMCameraProfile_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [v2 userSettings];
  [v1 cameraProfile:v2 didAddUserSettings:v3];
}

- (id)services
{
  v2 = [(HMCameraProfile *)self cameraProfile];
  v3 = [v2 services];

  return v3;
}

- (HMCameraRecordingEventManager)recordingEventManager
{
  v2 = [(HMCameraProfile *)self cameraProfile];
  v3 = [v2 recordingEventManager];

  return v3;
}

- (HMCameraRecordingReachabilityEventManager)reachabilityEventManager
{
  v2 = [(HMCameraProfile *)self cameraProfile];
  v3 = [v2 reachabilityEventManager];

  return v3;
}

- (HMCameraClipManager)clipManager
{
  v2 = [(HMCameraProfile *)self cameraProfile];
  v3 = [v2 clipManager];

  return v3;
}

- (HMCameraUserSettings)userSettings
{
  v2 = [(HMCameraProfile *)self cameraProfile];
  v3 = [v2 userSettings];

  return v3;
}

- (HMCameraProfile)initWithCameraProfile:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = HMCameraProfile;
  v5 = [(HMAccessoryProfile *)&v30 initWithAccessoryProfile:v4];
  if (v5)
  {
    v6 = [HMCameraStreamControl alloc];
    v7 = [v4 streamControl];
    v8 = [(HMCameraStreamControl *)v6 initWithStreamControl:v7];
    streamControl = v5->_streamControl;
    v5->_streamControl = v8;

    v10 = [HMCameraSnapshotControl alloc];
    v11 = [v4 snapshotControl];
    v12 = [(HMCameraSnapshotControl *)v10 initWithSnapshotControl:v11];
    snapshotControl = v5->_snapshotControl;
    v5->_snapshotControl = v12;

    v14 = [v4 settingsControl];

    if (v14)
    {
      v15 = [HMCameraSettingsControl alloc];
      v16 = [v4 settingsControl];
      v17 = [(HMCameraSettingsControl *)v15 initWithSettingsControl:v16];
      settingsControl = v5->_settingsControl;
      v5->_settingsControl = v17;
    }

    v19 = [v4 microphoneControl];

    if (v19)
    {
      v20 = [HMCameraAudioControl alloc];
      v21 = [v4 microphoneControl];
      v22 = [(HMCameraAudioControl *)v20 initWithAudioControl:v21];
      microphoneControl = v5->_microphoneControl;
      v5->_microphoneControl = v22;
    }

    v24 = [v4 speakerControl];

    if (v24)
    {
      v25 = [HMCameraAudioControl alloc];
      v26 = [v4 speakerControl];
      v27 = [(HMCameraAudioControl *)v25 initWithAudioControl:v26];
      speakerControl = v5->_speakerControl;
      v5->_speakerControl = v27;
    }
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_30335 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_30335, &__block_literal_global_30336);
  }

  v3 = logCategory__hmf_once_v3_30337;

  return v3;
}

uint64_t __30__HMCameraProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_30337;
  logCategory__hmf_once_v3_30337 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end