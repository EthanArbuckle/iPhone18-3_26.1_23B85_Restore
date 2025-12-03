@interface HMLightProfile
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)object;
- (HMLightProfile)initWithLightProfile:(id)profile;
- (HMLightProfileDelegate)delegate;
- (HMLightProfileSettings)settings;
- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion;
- (void)fetchSettingsWithCompletion:(id)completion;
- (void)updateSettings:(id)settings withReason:(id)reason;
@end

@implementation HMLightProfile

uint64_t __31___HMLightProfile_lightProfile__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 lightProfile];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (HMLightProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)fetchSettingsWithCompletion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lightProfile = [(HMLightProfile *)self lightProfile];
  context = [lightProfile context];

  if (!completionCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchSettingsWithCompletion:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v25;
      v32 = 2112;
      v33 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  if (context)
  {
    accessory = [(HMAccessoryProfile *)self accessory];
    home = [accessory home];

    if (home)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObject:self];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __46__HMLightProfile_fetchSettingsWithCompletion___block_invoke;
      v27[3] = &unk_1E754E280;
      v27[4] = self;
      v28 = context;
      v29 = completionCopy;
      [home fetchSettingsForLightProfiles:v9 withCompletion:v27];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v17;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home is not set on light profile accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      delegateCaller = [context delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [delegateCaller callCompletion:completionCopy obj:0 error:v19];

      home = 0;
    }
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v13;
      v32 = 2080;
      v33 = "[HMLightProfile fetchSettingsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, home);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __46__HMLightProfile_fetchSettingsWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = a3;
  v5 = [a2 objectForKey:*(a1 + 32)];
  v6 = [v5 settings];

  if (v6)
  {
    v7 = [*(a1 + 40) delegateCaller];
    v8 = *(a1 + 48);
    v9 = [v5 settings];
    v10 = v7;
    v11 = v8;
    v12 = v9;
    v13 = 0;
LABEL_5:
    [v10 callCompletion:v11 obj:v12 error:v13];

    goto LABEL_6;
  }

  v14 = [v5 error];

  v15 = [*(a1 + 40) delegateCaller];
  v7 = v15;
  v16 = *(a1 + 48);
  if (v14)
  {
    v9 = [v5 error];
    v10 = v7;
    v11 = v16;
    v12 = 0;
    v13 = v9;
    goto LABEL_5;
  }

  [v15 callCompletion:v16 obj:0 error:v17];
LABEL_6:
}

- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)brightness completion:(id)completion
{
  v43 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  lightProfile = [(HMLightProfile *)self lightProfile];
  context = [lightProfile context];

  if (!completionCopy)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    selfCopy = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      brightnessCopy = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  if (context)
  {
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    lightProfile2 = [(HMLightProfile *)self lightProfile];
    profileUniqueIdentifier = [lightProfile2 profileUniqueIdentifier];
    v12 = [v9 initWithTarget:profileUniqueIdentifier];

    v37 = @"HMLightProfile.bmk";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:brightness];
    v38 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMLightProfile.fnlctfbm" destination:v12 payload:v14];
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v19;
      v41 = 2048;
      brightnessCopy = brightness;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching natural lighting color temperature for brightness: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __76__HMLightProfile_fetchNaturalLightColorTemperatureForBrightness_completion___block_invoke;
    v34[3] = &unk_1E754E480;
    v34[4] = selfCopy2;
    v35 = context;
    v36 = completionCopy;
    [v15 setResponseHandler:v34];
    lightProfile3 = [(HMLightProfile *)selfCopy2 lightProfile];
    context2 = [lightProfile3 context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher sendMessage:v15];
  }

  else
  {
    v23 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v26;
      v41 = 2080;
      brightnessCopy = "[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(completionCopy + 2))(completionCopy, 0, v12);
  }

  v27 = *MEMORY[0x1E69E9840];
}

void __76__HMLightProfile_fetchNaturalLightColorTemperatureForBrightness_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMLightProfile.ctmk"];
  if (!v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543874;
      v15 = v11;
      v16 = 2112;
      v17 = v6;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch natural lighting color temperature %@:%@", &v14, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = [*(a1 + 40) delegateCaller];
  [v12 callCompletion:*(a1 + 48) obj:v7 error:v5];

  v13 = *MEMORY[0x1E69E9840];
}

- (HMLightProfileSettings)settings
{
  lightProfile = [(HMLightProfile *)self lightProfile];
  settings = [lightProfile settings];

  return settings;
}

void __76__HMLightProfile_setNaturalLightingEnabled_shouldRetryOnFailure_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 hmf_dataForKey:@"hmlp.sck"];
    v24 = 0;
    v9 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:&v24];
    v10 = v24;
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    v14 = v13;
    if (v9)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v15;
        v27 = 2112;
        v28 = v9;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Successfully updated settings to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      [*(a1 + 32) updateSettings:v9 withReason:@"HMLightProfile.snlem"];
    }

    else
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v20 = HMFGetLogIdentifier();
        *buf = 138543618;
        v26 = v20;
        v27 = 2112;
        v28 = v10;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode light profile settings: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v21 = v10;

      v5 = v21;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v19;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to update the natural light setting: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
  }

  v22 = [*(a1 + 40) delegateCaller];
  [v22 callCompletion:*(a1 + 48) error:v5];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)updateSettings:(id)settings withReason:(id)reason
{
  v31 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  reasonCopy = reason;
  lightProfile = [(HMLightProfile *)self lightProfile];
  settings = [lightProfile settings];
  v10 = [settings isEqual:settingsCopy];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      settings2 = [(HMLightProfile *)selfCopy settings];
      *buf = 138544130;
      v24 = v14;
      v25 = 2112;
      v26 = reasonCopy;
      v27 = 2112;
      v28 = settings2;
      v29 = 2112;
      v30 = settingsCopy;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating settings with reason: %@ (%@:%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    lightProfile2 = [(HMLightProfile *)selfCopy lightProfile];
    [lightProfile2 setSettings:settingsCopy];

    lightProfile3 = [(HMLightProfile *)selfCopy lightProfile];
    context = [lightProfile3 context];
    delegateCaller = [context delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__HMLightProfile_updateSettings_withReason___block_invoke;
    v21[3] = &unk_1E754E5C0;
    v21[4] = selfCopy;
    v22 = settingsCopy;
    [delegateCaller invokeBlock:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __44__HMLightProfile_updateSettings_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightProfile:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
}

- (BOOL)mergeFromNewObject:(id)object
{
  v33 = *MEMORY[0x1E69E9840];
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
    settings = [v6 settings];
    settings2 = [(HMLightProfile *)self settings];
    v9 = [settings2 isEqual:settings];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        lightProfile = [(HMLightProfile *)selfCopy lightProfile];
        settings3 = [lightProfile settings];
        [v6 settings];
        v16 = v24 = v10;
        *buf = 138543874;
        v28 = v13;
        v29 = 2112;
        v30 = settings3;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating settings because of merge: %@ to %@ ", buf, 0x20u);

        v10 = v24;
      }

      objc_autoreleasePoolPop(v10);
      lightProfile2 = [(HMLightProfile *)selfCopy lightProfile];
      [lightProfile2 setSettings:settings];

      lightProfile3 = [(HMLightProfile *)selfCopy lightProfile];
      context = [lightProfile3 context];
      delegateCaller = [context delegateCaller];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __37__HMLightProfile_mergeFromNewObject___block_invoke;
      v25[3] = &unk_1E754E5C0;
      v25[4] = selfCopy;
      v26 = settings;
      [delegateCaller invokeBlock:v25];
    }

    v21 = v9 ^ 1;
  }

  else
  {
    v21 = 0;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v21;
}

void __37__HMLightProfile_mergeFromNewObject___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightProfile:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
}

- (HMLightProfile)initWithLightProfile:(id)profile
{
  profileCopy = profile;
  v10.receiver = self;
  v10.super_class = HMLightProfile;
  v5 = [(HMAccessoryProfile *)&v10 initWithAccessoryProfile:profileCopy];
  if (v5)
  {
    profileUniqueIdentifier = [profileCopy profileUniqueIdentifier];
    uUIDString = [profileUniqueIdentifier UUIDString];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = uUIDString;
  }

  return v5;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_65266 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_65266, &__block_literal_global_65267);
  }

  v3 = logCategory__hmf_once_v17_65268;

  return v3;
}

uint64_t __29__HMLightProfile_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_65268;
  logCategory__hmf_once_v17_65268 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end