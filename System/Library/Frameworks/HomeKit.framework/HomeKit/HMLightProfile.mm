@interface HMLightProfile
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMLightProfile)initWithLightProfile:(id)a3;
- (HMLightProfileDelegate)delegate;
- (HMLightProfileSettings)settings;
- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)a3 completion:(id)a4;
- (void)fetchSettingsWithCompletion:(id)a3;
- (void)updateSettings:(id)a3 withReason:(id)a4;
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

- (void)fetchSettingsWithCompletion:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMLightProfile *)self lightProfile];
  v6 = [v5 context];

  if (!v4)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchSettingsWithCompletion:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
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

  if (v6)
  {
    v7 = [(HMAccessoryProfile *)self accessory];
    v8 = [v7 home];

    if (v8)
    {
      v9 = [MEMORY[0x1E695DFD8] setWithObject:self];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __46__HMLightProfile_fetchSettingsWithCompletion___block_invoke;
      v27[3] = &unk_1E754E280;
      v27[4] = self;
      v28 = v6;
      v29 = v4;
      [v8 fetchSettingsForLightProfiles:v9 withCompletion:v27];
    }

    else
    {
      v14 = objc_autoreleasePoolPush();
      v15 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543362;
        v31 = v17;
        _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Home is not set on light profile accessory", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v14);
      v18 = [v6 delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
      [v18 callCompletion:v4 obj:0 error:v19];

      v8 = 0;
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
      v31 = v13;
      v32 = 2080;
      v33 = "[HMLightProfile fetchSettingsWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, 0, v8);
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

- (void)fetchNaturalLightColorTemperatureForBrightness:(int64_t)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMLightProfile *)self lightProfile];
  v8 = [v7 context];

  if (!v6)
  {
    v28 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]", @"completion"];
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v32;
      v41 = 2112;
      v42 = v28;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v28 userInfo:0];
    objc_exception_throw(v33);
  }

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E69A2A00]);
    v10 = [(HMLightProfile *)self lightProfile];
    v11 = [v10 profileUniqueIdentifier];
    v12 = [v9 initWithTarget:v11];

    v37 = @"HMLightProfile.bmk";
    v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    v38 = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];

    v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMLightProfile.fnlctfbm" destination:v12 payload:v14];
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v19;
      v41 = 2048;
      v42 = a3;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@Fetching natural lighting color temperature for brightness: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __76__HMLightProfile_fetchNaturalLightColorTemperatureForBrightness_completion___block_invoke;
    v34[3] = &unk_1E754E480;
    v34[4] = v17;
    v35 = v8;
    v36 = v6;
    [v15 setResponseHandler:v34];
    v20 = [(HMLightProfile *)v17 lightProfile];
    v21 = [v20 context];
    v22 = [v21 messageDispatcher];
    [v22 sendMessage:v15];
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
      v40 = v26;
      v41 = 2080;
      v42 = "[HMLightProfile fetchNaturalLightColorTemperatureForBrightness:completion:]";
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, 0, v12);
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
  v2 = [(HMLightProfile *)self lightProfile];
  v3 = [v2 settings];

  return v3;
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

- (void)updateSettings:(id)a3 withReason:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMLightProfile *)self lightProfile];
  v9 = [v8 settings];
  v10 = [v9 isEqual:v6];

  if ((v10 & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [(HMLightProfile *)v12 settings];
      *buf = 138544130;
      v24 = v14;
      v25 = 2112;
      v26 = v7;
      v27 = 2112;
      v28 = v15;
      v29 = 2112;
      v30 = v6;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Updating settings with reason: %@ (%@:%@)", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [(HMLightProfile *)v12 lightProfile];
    [v16 setSettings:v6];

    v17 = [(HMLightProfile *)v12 lightProfile];
    v18 = [v17 context];
    v19 = [v18 delegateCaller];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __44__HMLightProfile_updateSettings_withReason___block_invoke;
    v21[3] = &unk_1E754E5C0;
    v21[4] = v12;
    v22 = v6;
    [v19 invokeBlock:v21];
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __44__HMLightProfile_updateSettings_withReason___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 lightProfile:*(a1 + 32) didUpdateSettings:*(a1 + 40)];
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
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
    v7 = [v6 settings];
    v8 = [(HMLightProfile *)self settings];
    v9 = [v8 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [(HMLightProfile *)v11 lightProfile];
        v15 = [v14 settings];
        [v6 settings];
        v16 = v24 = v10;
        *buf = 138543874;
        v28 = v13;
        v29 = 2112;
        v30 = v15;
        v31 = 2112;
        v32 = v16;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating settings because of merge: %@ to %@ ", buf, 0x20u);

        v10 = v24;
      }

      objc_autoreleasePoolPop(v10);
      v17 = [(HMLightProfile *)v11 lightProfile];
      [v17 setSettings:v7];

      v18 = [(HMLightProfile *)v11 lightProfile];
      v19 = [v18 context];
      v20 = [v19 delegateCaller];
      v25[0] = MEMORY[0x1E69E9820];
      v25[1] = 3221225472;
      v25[2] = __37__HMLightProfile_mergeFromNewObject___block_invoke;
      v25[3] = &unk_1E754E5C0;
      v25[4] = v11;
      v26 = v7;
      [v20 invokeBlock:v25];
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

- (HMLightProfile)initWithLightProfile:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMLightProfile;
  v5 = [(HMAccessoryProfile *)&v10 initWithAccessoryProfile:v4];
  if (v5)
  {
    v6 = [v4 profileUniqueIdentifier];
    v7 = [v6 UUIDString];
    logIdentifier = v5->_logIdentifier;
    v5->_logIdentifier = v7;
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