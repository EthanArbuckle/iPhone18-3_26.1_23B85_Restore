@interface HMCameraProfile
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)object;
- (HMCameraClipManager)clipManager;
- (HMCameraProfile)initWithCameraProfile:(id)profile;
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
    uniqueIdentifier = [(HMAccessoryProfile *)self uniqueIdentifier];
    uUIDString = [uniqueIdentifier UUIDString];
    accessory = [(HMAccessoryProfile *)self accessory];
    name = [accessory name];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@", uUIDString, name];
  }

  else
  {
    uniqueIdentifier = [(HMAccessoryProfile *)self uniqueIdentifier];
    uUIDString2 = [uniqueIdentifier UUIDString];
  }

  return uUIDString2;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v32 = *MEMORY[0x1E69E9840];
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

  if (v6)
  {
    snapshotControl = [(HMCameraProfile *)self snapshotControl];
    v7SnapshotControl = [snapshotControl snapshotControl];
    snapshotControl2 = [v6 snapshotControl];
    v9SnapshotControl = [snapshotControl2 snapshotControl];
    [v7SnapshotControl mergeNewSnapshotControl:v9SnapshotControl];

    userSettings = [v6 userSettings];
    userSettings2 = [(HMCameraProfile *)self userSettings];

    if (userSettings2)
    {
      userSettings3 = [(HMCameraProfile *)self userSettings];
      [userSettings3 _mergeNewSettings:userSettings];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v17;
        v30 = 2112;
        v31 = userSettings;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@No existing camera settings to merge; adding new settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v14);
      cameraProfile = [(HMCameraProfile *)selfCopy cameraProfile];
      [cameraProfile addUserSettings:userSettings];

      userSettingsDelegate = [(HMCameraProfile *)selfCopy userSettingsDelegate];
      if (objc_opt_respondsToSelector())
      {
        cameraProfile2 = [(HMCameraProfile *)selfCopy cameraProfile];
        context = [cameraProfile2 context];
        delegateCaller = [context delegateCaller];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __38__HMCameraProfile_mergeFromNewObject___block_invoke;
        v25[3] = &unk_1E754E5C0;
        v26 = userSettingsDelegate;
        v27 = selfCopy;
        [delegateCaller invokeBlock:v25];
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
  cameraProfile = [(HMCameraProfile *)self cameraProfile];
  services = [cameraProfile services];

  return services;
}

- (HMCameraRecordingEventManager)recordingEventManager
{
  cameraProfile = [(HMCameraProfile *)self cameraProfile];
  recordingEventManager = [cameraProfile recordingEventManager];

  return recordingEventManager;
}

- (HMCameraRecordingReachabilityEventManager)reachabilityEventManager
{
  cameraProfile = [(HMCameraProfile *)self cameraProfile];
  reachabilityEventManager = [cameraProfile reachabilityEventManager];

  return reachabilityEventManager;
}

- (HMCameraClipManager)clipManager
{
  cameraProfile = [(HMCameraProfile *)self cameraProfile];
  clipManager = [cameraProfile clipManager];

  return clipManager;
}

- (HMCameraUserSettings)userSettings
{
  cameraProfile = [(HMCameraProfile *)self cameraProfile];
  userSettings = [cameraProfile userSettings];

  return userSettings;
}

- (HMCameraProfile)initWithCameraProfile:(id)profile
{
  profileCopy = profile;
  v30.receiver = self;
  v30.super_class = HMCameraProfile;
  v5 = [(HMAccessoryProfile *)&v30 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    v6 = [HMCameraStreamControl alloc];
    streamControl = [profileCopy streamControl];
    v8 = [(HMCameraStreamControl *)v6 initWithStreamControl:streamControl];
    streamControl = v5->_streamControl;
    v5->_streamControl = v8;

    v10 = [HMCameraSnapshotControl alloc];
    snapshotControl = [profileCopy snapshotControl];
    v12 = [(HMCameraSnapshotControl *)v10 initWithSnapshotControl:snapshotControl];
    snapshotControl = v5->_snapshotControl;
    v5->_snapshotControl = v12;

    settingsControl = [profileCopy settingsControl];

    if (settingsControl)
    {
      v15 = [HMCameraSettingsControl alloc];
      settingsControl2 = [profileCopy settingsControl];
      v17 = [(HMCameraSettingsControl *)v15 initWithSettingsControl:settingsControl2];
      settingsControl = v5->_settingsControl;
      v5->_settingsControl = v17;
    }

    microphoneControl = [profileCopy microphoneControl];

    if (microphoneControl)
    {
      v20 = [HMCameraAudioControl alloc];
      microphoneControl2 = [profileCopy microphoneControl];
      v22 = [(HMCameraAudioControl *)v20 initWithAudioControl:microphoneControl2];
      microphoneControl = v5->_microphoneControl;
      v5->_microphoneControl = v22;
    }

    speakerControl = [profileCopy speakerControl];

    if (speakerControl)
    {
      v25 = [HMCameraAudioControl alloc];
      speakerControl2 = [profileCopy speakerControl];
      v27 = [(HMCameraAudioControl *)v25 initWithAudioControl:speakerControl2];
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