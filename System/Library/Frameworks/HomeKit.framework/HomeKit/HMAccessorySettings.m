@interface HMAccessorySettings
+ (id)localizationKeyForKeyPath:(id)a3;
+ (id)logCategory;
- (BOOL)isControllable;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMAccessory)accessory;
- (HMAccessorySettings)initWithSettingsContainer:(id)a3 settingsControl:(id)a4 rootGroup:(id)a5;
- (HMAccessorySettingsContainerInternal)settingsContainerInternal;
- (HMAccessorySettingsDelegate)delegate;
- (HMControllable)settingsControl;
- (void)_configureWithContext:(id)a3;
- (void)_notifyDelegateDidUpdateKeyPath:(id)a3;
- (void)_updateSettingsWithBlock:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setSettingsContainerInternal:(id)a3;
- (void)setSettingsControl:(id)a3;
@end

@implementation HMAccessorySettings

- (BOOL)mergeFromNewObject:(id)a3
{
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
    v7 = [(HMAccessorySettings *)self rootGroup];
    v8 = [v6 rootGroup];
    v9 = [v7 isEqual:v8];

    if ((v9 & 1) == 0)
    {
      objc_initWeak(&location, self);
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __42__HMAccessorySettings_mergeFromNewObject___block_invoke;
      v17[3] = &unk_1E754A2B8;
      objc_copyWeak(&v20, &location);
      v18 = v7;
      v19 = v6;
      [(HMAccessorySettings *)self _updateSettingsWithBlock:v17];

      objc_destroyWeak(&v20);
      objc_destroyWeak(&location);
    }

    v10 = [v6 rootGroup];
    v11 = [v7 isReflectedEqual:v10];

    if (v11)
    {
      v12 = v9 ^ 1;
    }

    else
    {
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __42__HMAccessorySettings_mergeFromNewObject___block_invoke_24;
      v14[3] = &unk_1E754E5C0;
      v15 = v7;
      v16 = v6;
      [(HMAccessorySettings *)self _updateSettingsWithBlock:v14];

      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void __42__HMAccessorySettings_mergeFromNewObject___block_invoke(id *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [a1[4] internal];
  v4 = [a1[5] rootGroup];
  v5 = [v4 internal];
  v6 = [v3 mergeObject:v5];

  if ((v6 & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@The merge unexpectedly did not result in a change.", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __42__HMAccessorySettings_mergeFromNewObject___block_invoke_24(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) rootGroup];
  [v1 mergeReflected:v2];
}

- (void)_notifyDelegateDidUpdateKeyPath:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessorySettings *)self rootGroup];
  v6 = [v5 internal];
  v7 = [v6 context];
  v8 = [v7 delegateCaller];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v13;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Finished update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, v10);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __55__HMAccessorySettings__notifyDelegateDidUpdateKeyPath___block_invoke;
    v16[3] = &unk_1E754D848;
    objc_copyWeak(&v18, buf);
    v17 = v4;
    [v8 invokeBlock:v16];

    objc_destroyWeak(&v18);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v12)
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v20 = v14;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v9);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __55__HMAccessorySettings__notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [v5 accessory];
      v9 = [v8 uniqueIdentifier];
      v10 = *(a1 + 32);
      v14 = 138544130;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      v18 = 2112;
      v19 = v9;
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@", &v14, 0x2Au);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [v5 accessory];
    v12 = [v11 uniqueIdentifier];
    [v3 settings:v5 didUpdateForIdentifier:v12 keyPath:*(a1 + 32)];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_updateSettingsWithBlock:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v19 = __48__HMAccessorySettings__updateSettingsWithBlock___block_invoke;
  v20 = &unk_1E754E458;
  v21 = self;
  v22 = v4;
  v5 = v4;
  v6 = v18;
  if (self)
  {
    v7 = [(HMAccessorySettings *)self rootGroup];
    v8 = [v7 internal];
    v9 = [v8 context];
    v10 = [v9 delegateCaller];

    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Starting update", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(&location, v12);
      *&buf = MEMORY[0x1E69E9820];
      *(&buf + 1) = 3221225472;
      v25 = __79__HMAccessorySettings___notifyDelegateSettingsWillUpdateWithCompletionHandler___block_invoke;
      v26 = &unk_1E754A290;
      objc_copyWeak(v28, &location);
      v27 = v6;
      [v10 invokeBlock:&buf];

      objc_destroyWeak(v28);
      objc_destroyWeak(&location);
    }

    else
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v16;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updating settings", &buf, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v19(v6);
    }
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __48__HMAccessorySettings__updateSettingsWithBlock___block_invoke(uint64_t a1)
{
  v25[2] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    (*(v2 + 16))();
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = [*(a1 + 32) rootGroup];
    v5 = [v4 internal];
    v6 = [v5 context];
    v7 = [v6 delegateCaller];

    if (v7)
    {
      v8 = [v3 rootGroup];
      v9 = [v8 internal];
      v10 = [v9 identifier];

      v11 = objc_autoreleasePoolPush();
      v12 = v3;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = v10;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@%@: Finished update", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(&location, v12);
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = __56__HMAccessorySettings___notifyDelegateSettingsDidUpdate__block_invoke;
      v23 = &unk_1E754D848;
      objc_copyWeak(v25, &location);
      v15 = v10;
      v24 = v15;
      [v7 invokeBlock:buf];

      objc_destroyWeak(v25);
      objc_destroyWeak(&location);
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = v3;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v19;
        _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __79__HMAccessorySettings___notifyDelegateSettingsWillUpdateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v5;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings will update: %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 settingsWillUpdate:v5];
  }

  v8 = *(a1 + 32);
  if (v8)
  {
    (*(v8 + 16))();
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __56__HMAccessorySettings___notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = objc_autoreleasePoolPush();
    v5 = WeakRetained;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v14 = 138543618;
      v15 = v7;
      v16 = 2112;
      v17 = v5;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings did update: %@", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    [v3 settingsDidUpdate:v5];
  }

  else if (v3)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = WeakRetained;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = *(a1 + 32);
      v14 = 138543618;
      v15 = v11;
      v16 = 2112;
      v17 = v12;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@%@: Delegate does not implement settingsDidUpdate:", &v14, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)isControllable
{
  v2 = [(HMAccessorySettings *)self settingsControl];
  v3 = [v2 isControllable];

  return v3;
}

- (HMAccessorySettingsDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMAccessorySettings *)v6 rootGroup];
    v10 = [(HMAccessorySettings *)v6 settingsContainer];
    v12 = 138544130;
    v13 = v8;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Setting delegate %@ on settings %@ for %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v5);
  objc_storeWeak(&v6->_delegate, v4);

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setSettingsControl:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_settingsControl, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMControllable)settingsControl
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_settingsControl);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setSettingsContainerInternal:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_settingsContainerInternal, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessorySettingsContainerInternal)settingsContainerInternal
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_settingsContainerInternal);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMAccessory)accessory
{
  v2 = [(HMAccessorySettings *)self settingsContainer];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (void)_configureWithContext:(id)a3
{
  objc_storeStrong(&self->_context, a3);
  v5 = a3;
  v7 = [(HMAccessorySettings *)self rootGroup];
  v6 = [v7 internal];
  [v6 configureWithAccessorySettings:self context:v5];
}

- (HMAccessorySettings)initWithSettingsContainer:(id)a3 settingsControl:(id)a4 rootGroup:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMAccessorySettings;
  v11 = [(HMAccessorySettings *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_settingsContainerInternal, v8);
    objc_storeWeak(&v12->_settingsControl, v9);
    objc_storeStrong(&v12->_rootGroup, a5);
  }

  return v12;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16_31885 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16_31885, &__block_literal_global_31886);
  }

  v3 = logCategory__hmf_once_v17_31887;

  return v3;
}

uint64_t __34__HMAccessorySettings_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17_31887;
  logCategory__hmf_once_v17_31887 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)localizationKeyForKeyPath:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 replaceOccurrencesOfString:@" " withString:&stru_1F0E92498 options:1 range:{0, objc_msgSend(v3, "length")}];
  [v3 replaceOccurrencesOfString:@"." withString:@"_" options:1 range:{0, objc_msgSend(v3, "length")}];
  v4 = [v3 uppercaseString];

  return v4;
}

@end