@interface HMAccessorySettingsController
+ (id)logCategory;
- (HMAccessorySettingsController)initWithContext:(id)a3 messengerFactory:(id)a4 metricsDispatcher:(id)a5;
- (HMAccessorySettingsControllerDataSource)dataSource;
- (HMAccessorySettingsMessengerFactory)messengerFactory;
- (id)dataSourceHomeWithHomeIdentifier:(id)a3;
- (id)messengerWithHomeUUID:(id)a3;
- (void)updateAccessorySettingWithAccessoryIdentifier:(id)a3 keyPath:(id)a4 settingValue:(id)a5 completionHandler:(id)a6;
- (void)updateAccessorySettingWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPath:(id)a5 settingValue:(id)a6 completionHandler:(id)a7;
@end

@implementation HMAccessorySettingsController

- (HMAccessorySettingsControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMAccessorySettingsMessengerFactory)messengerFactory
{
  WeakRetained = objc_loadWeakRetained(&self->_messengerFactory);

  return WeakRetained;
}

- (id)dataSourceHomeWithHomeIdentifier:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessorySettingsController *)self dataSource];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 accessorySettingsController:self homeWithHomeIdentifier:v4];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v11;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source accessory UUID due to no data source", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v7 = 0;
  }

  v12 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)messengerWithHomeUUID:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAccessorySettingsController *)self messengerFactory];
  os_unfair_lock_lock_with_options();
  messenger = self->_messenger;
  if (!messenger)
  {
    v7 = [v5 createAccessorySettingsMessengerWithHomeUUID:v4];
    v8 = self->_messenger;
    self->_messenger = v7;

    messenger = self->_messenger;
  }

  v9 = messenger;
  os_unfair_lock_unlock(&self->_lock);
  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to get accessory settings messenger with factory: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)updateAccessorySettingWithHomeIdentifier:(id)a3 accessoryIdentifier:(id)a4 keyPath:(id)a5 settingValue:(id)a6 completionHandler:(id)a7
{
  v67 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138544386;
    v58 = v20;
    v59 = 2112;
    v60 = v12;
    v61 = 2112;
    v62 = v13;
    v63 = 2114;
    v64 = v14;
    v65 = 2112;
    v66 = v15;
    _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating accessory setting with home identifier: %@ accessory identifier: %@ key path: %{public}@ value: %@", buf, 0x34u);
  }

  objc_autoreleasePoolPop(v17);
  v21 = [(HMAccessorySettingsController *)v18 dataSourceHomeWithHomeIdentifier:v12];
  v22 = v21;
  if (v21)
  {
    v23 = [v21 accessoryWithUniqueIdentifier:v13];
    if (v23)
    {
      v24 = v23;
      v25 = [v22 uuid];
      v26 = [(HMAccessorySettingsController *)v18 messengerWithHomeUUID:v25];

      if (v26)
      {
        v27 = [v24 uuid];
        v53[0] = MEMORY[0x1E69E9820];
        v53[1] = 3221225472;
        v53[2] = __133__HMAccessorySettingsController_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_settingValue_completionHandler___block_invoke;
        v53[3] = &unk_1E754C7E8;
        v53[4] = v18;
        v54 = v14;
        v28 = v15;
        v51 = v15;
        v29 = v14;
        v30 = v28;
        v55 = v28;
        v56 = v16;
        v31 = v30;
        v14 = v29;
        v15 = v51;
        [v26 sendUpdateAccessorySettingRequestWithAccessoryUUID:v27 keyPath:v54 settingValue:v31 completionHandler:v53];
      }

      else
      {
        v43 = objc_autoreleasePoolPush();
        v44 = v18;
        v45 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v46 = v52 = v43;
          *buf = 138543362;
          v58 = v46;
          _os_log_impl(&dword_19BB39000, v45, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessory setting due to no messenger", buf, 0xCu);

          v43 = v52;
        }

        objc_autoreleasePoolPop(v43);
        v47 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
        v48 = [(HMAccessorySettingsController *)v44 context];
        v49 = [v48 delegateCaller];
        [v49 callCompletion:v16 error:v47];

        v26 = 0;
      }
    }

    else
    {
      v37 = objc_autoreleasePoolPush();
      v38 = v18;
      v39 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        v40 = HMFGetLogIdentifier();
        *buf = 138543618;
        v58 = v40;
        v59 = 2112;
        v60 = v13;
        _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessory setting due to unknown accessory identifier: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v37);
      v26 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      v41 = [(HMAccessorySettingsController *)v38 context];
      v42 = [v41 delegateCaller];
      [v42 callCompletion:v16 error:v26];

      v24 = 0;
    }
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    v33 = v18;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v35;
      v59 = 2112;
      v60 = v12;
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Failed to update accessory setting due to unknown home identifier: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    v26 = [(HMAccessorySettingsController *)v33 context];
    v36 = [v26 delegateCaller];
    [v36 callCompletion:v16 error:v24];
  }

  v50 = *MEMORY[0x1E69E9840];
}

void __133__HMAccessorySettingsController_updateAccessorySettingWithHomeIdentifier_accessoryIdentifier_keyPath_settingValue_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v9 = *(a1 + 40);
      v18 = 138543874;
      v19 = v8;
      v20 = 2114;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      v10 = "%{public}@Update accessory setting completed keyPath: %{public}@, with error: %@";
      v11 = v7;
      v12 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v11, v12, v10, &v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = *(a1 + 40);
    v14 = *(a1 + 48);
    v18 = 138543874;
    v19 = v8;
    v20 = 2114;
    v21 = v13;
    v22 = 2112;
    v23 = v14;
    v10 = "%{public}@Update accessory setting completed keyPath: %{public}@, value: %@";
    v11 = v7;
    v12 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
  v15 = [*(a1 + 32) context];
  v16 = [v15 delegateCaller];
  [v16 callCompletion:*(a1 + 56) error:v3];

  v17 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySettingsController)initWithContext:(id)a3 messengerFactory:(id)a4 metricsDispatcher:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v10)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = v11;
  if (!v11)
  {
LABEL_9:
    v16 = _HMFPreconditionFailure();
    return +[(HMAccessorySettingsController *)v16];
  }

  v18.receiver = self;
  v18.super_class = HMAccessorySettingsController;
  v13 = [(HMAccessorySettingsController *)&v18 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, a3);
    objc_storeWeak(&v14->_messengerFactory, v10);
    objc_storeStrong(&v14->_metricsDispatcher, a5);
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t9 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t9, &__block_literal_global_4492);
  }

  v3 = logCategory__hmf_once_v10;

  return v3;
}

uint64_t __44__HMAccessorySettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  logCategory__hmf_once_v10 = HMFCreateOSLogHandle();

  return MEMORY[0x1EEE66BB8]();
}

- (void)updateAccessorySettingWithAccessoryIdentifier:(id)a3 keyPath:(id)a4 settingValue:(id)a5 completionHandler:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(HMAccessorySettingsController *)self context];
  v15 = [v14 delegateCaller];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __132__HMAccessorySettingsController_Deprecations__updateAccessorySettingWithAccessoryIdentifier_keyPath_settingValue_completionHandler___block_invoke;
  v20[3] = &unk_1E754D7A8;
  v20[4] = self;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v15 invokeBlock:v20];
}

void __132__HMAccessorySettingsController_Deprecations__updateAccessorySettingWithAccessoryIdentifier_keyPath_settingValue_completionHandler___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    v11 = 138544130;
    v12 = v5;
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_ERROR, "%{public}@Deprecated API: Updating accessory setting with accessory identifier: %@ key path: %@ value: %@", &v11, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:23];
  (*(*(a1 + 64) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

@end