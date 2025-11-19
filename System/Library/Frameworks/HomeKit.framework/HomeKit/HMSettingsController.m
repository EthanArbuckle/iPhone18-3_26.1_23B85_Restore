@interface HMSettingsController
+ (id)logCategory;
- (BOOL)hasSettingGroups;
- (BOOL)hasSettings;
- (HMSettingGroup)rootGroup;
- (HMSettingsController)initWithParentIdentifier:(id)a3 codingKey:(id)a4 messageHandler:(id)a5 settingsCreator:(id)a6;
- (HMSettingsController)initWithParentIdentifier:(id)a3 homeUUID:(id)a4 codingKey:(id)a5;
- (HMSettingsDelegate)delegate;
- (id)logIdentifier;
- (id)settingForKeyPath:(id)a3;
- (id)settingGroupForKeyPath:(id)a3;
- (void)__notifyDelegateDidUpdateKeyPath:(id)a3;
- (void)__notifyDelegateSettingsDidUpdate;
- (void)configureWithContext:(id)a3;
- (void)decodeWithCoder:(id)a3;
- (void)mergeWith:(id)a3 settingsInitializedWasModified:(BOOL)a4;
- (void)notifyDelegateOfUpdate;
- (void)setDelegate:(id)a3;
- (void)setRootGroup:(id)a3;
- (void)setSetting:(id)a3 withGroupKeyPath:(id)a4;
- (void)setSettingGroup:(id)a3 withParentGroupKeyPath:(id)a4;
- (void)updateValueForSetting:(id)a3 value:(id)a4 completionHandler:(id)a5;
@end

@implementation HMSettingsController

- (id)logIdentifier
{
  v2 = [(HMSettingsController *)self parentIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)__notifyDelegateDidUpdateKeyPath:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSettingsController *)self context];
  v6 = [v5 delegateCaller];

  v7 = objc_autoreleasePoolPush();
  v8 = self;
  v9 = HMFGetOSLogHandle();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v6)
  {
    if (v10)
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v11;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Finished update", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    objc_initWeak(buf, v8);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__HMSettingsController___notifyDelegateDidUpdateKeyPath___block_invoke;
    v14[3] = &unk_1E754D848;
    objc_copyWeak(&v16, buf);
    v15 = v4;
    [v6 invokeBlock:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(buf);
  }

  else
  {
    if (v10)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v12;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate caller, not invoking delegate for updated settings", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __57__HMSettingsController___notifyDelegateDidUpdateKeyPath___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v4 = MEMORY[0x1E696AFB0];
    v5 = [WeakRetained parentIdentifier];
    v6 = [v4 hm_deriveUUIDFromBaseUUID:v5];

    v7 = objc_autoreleasePoolPush();
    v8 = WeakRetained;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [v8 settings];
      v12 = *(a1 + 32);
      v15 = 138544386;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v6;
      v21 = 2112;
      v22 = v12;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Notifying clients settings: %@ didUpdateForIdentifier: %@ keyPath: %@ delegate: %@", &v15, 0x34u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [v8 settings];
    [v3 settings:v13 didUpdateForIdentifier:v6 keyPath:*(a1 + 32)];
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)__notifyDelegateSettingsDidUpdate
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [(HMSettingsController *)self context];
  v4 = [v3 delegateCaller];
  if (v4)
  {
    v5 = [(HMSettingsController *)self delegate];
    objc_initWeak(location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__HMSettingsController___notifyDelegateSettingsDidUpdate__block_invoke;
    v12[3] = &unk_1E754D848;
    objc_copyWeak(&v14, location);
    v6 = v5;
    v13 = v6;
    [v4 invokeBlock:v12];

    objc_destroyWeak(&v14);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v10;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify clients of updated settings due to no delegate caller in context: %@", location, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void __57__HMSettingsController___notifyDelegateSettingsDidUpdate__block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = [v4 settings];
    v8 = *(a1 + 32);
    v13 = 138543874;
    v14 = v6;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Notifying clients of did update settings: %@ delegate: %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  v9 = *(a1 + 32);
  if (objc_opt_respondsToSelector())
  {
    v10 = *(a1 + 32);
    v11 = [v4 settings];
    [v10 settingsDidUpdate:v11];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)updateValueForSetting:(id)a3 value:(id)a4 completionHandler:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(HMSettingsController *)self context];
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSettingsController updateValueForSetting:value:completionHandler:]", @"completionHandler"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v25;
      v35 = 2112;
      v36 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v12 = v11;
  if (v11)
  {
    v13 = [v9 copy];
    v14 = [v12 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke;
    block[3] = &unk_1E754D7A8;
    v28 = v8;
    v29 = self;
    v32 = v10;
    v30 = v13;
    v31 = v9;
    v15 = v13;
    dispatch_async(v14, block);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v19;
      v35 = 2080;
      v36 = "[HMSettingsController updateValueForSetting:value:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v10 + 2))(v10, v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x1E69E9840];
  if (([*(a1 + 32) properties] & 2) == 0)
  {
    v25 = [*(a1 + 40) context];
    v2 = [v25 delegateCaller];
    v3 = *(a1 + 64);
    v4 = [MEMORY[0x1E696ABC0] hmErrorWithCode:48 description:@"Setting is not writable" reason:@"Setting is not writable" suggestion:0];
    [v2 callCompletion:v3 error:v4];

LABEL_5:
    v7 = *MEMORY[0x1E69E9840];

    return;
  }

  v5 = *(a1 + 48);
  v6 = [*(a1 + 32) value];
  LODWORD(v5) = HMFEqualObjects();

  if (v5)
  {
    v25 = [*(a1 + 40) context];
    v2 = [v25 delegateCaller];
    [v2 callCompletion:*(a1 + 64) error:0];
    goto LABEL_5;
  }

  v8 = [*(a1 + 32) valueForUpdate:*(a1 + 56)];
  v31 = 0;
  v9 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v8 requiringSecureCoding:1 error:&v31];
  v10 = v31;
  if (v9)
  {
    v11 = [*(a1 + 40) messageHandler];
    v12 = [*(a1 + 32) keyPath];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_81;
    v27[3] = &unk_1E754C7E8;
    *v26 = *(a1 + 32);
    v13 = v26[0];
    v28 = vextq_s8(*v26, *v26, 8uLL);
    v29 = *(a1 + 56);
    v30 = *(a1 + 64);
    [v11 sendUpdateValueMessage:v12 value:v9 completionHandler:v27];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = *(a1 + 40);
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v18 = *(a1 + 56);
      v19 = *(a1 + 32);
      *buf = 138544130;
      v33 = v17;
      v34 = 2112;
      v35 = v18;
      v36 = 2112;
      v37 = v19;
      v38 = 2112;
      v39 = v10;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Could not obtain encoded setting value %@ for setting %@. Error : %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v14);
    v20 = [*(a1 + 40) context];
    v21 = [v20 delegateCaller];
    v22 = *(a1 + 64);
    v23 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Could not encode value" reason:@"Could not encode value" suggestion:0];
    [v21 callCompletion:v22 error:v23];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_81(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 context];
  v6 = [v5 delegateCaller];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_2;
  v12[3] = &unk_1E754C7E8;
  v11 = *(a1 + 32);
  v7 = *(&v11 + 1);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  *&v10 = v8;
  *(&v10 + 1) = v9;
  v13 = v11;
  v14 = v10;
  [v6 callCompletion:v12 error:v4];
}

void __70__HMSettingsController_updateValueForSetting_value_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v9 = *(a1 + 48);
      v11 = 138543874;
      v12 = v7;
      v13 = 2112;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Updating setting %@ to %@", &v11, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 40) setValue:*(a1 + 48)];
  }

  (*(*(a1 + 56) + 16))();

  v10 = *MEMORY[0x1E69E9840];
}

- (void)configureWithContext:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [(HMSettingsController *)v6 settings];
    v10 = [v9 longDescription];
    v13 = 138543618;
    v14 = v8;
    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Configure with settings: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMSettingsController *)v6 setContext:v4];
  v11 = [(HMSettingsController *)v6 messageHandler];
  [v11 configureWithContext:v4];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)decodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [(HMSettingsController *)self codingKey];
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  [(HMSettingsController *)self setRootGroup:v7];
}

- (void)notifyDelegateOfUpdate
{
  v3 = [(HMSettingsController *)self context];
  v4 = [v3 delegateCaller];

  if (v4)
  {
    objc_initWeak(&location, self);
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __46__HMSettingsController_notifyDelegateOfUpdate__block_invoke;
    v5[3] = &unk_1E754E540;
    objc_copyWeak(&v6, &location);
    [v4 invokeBlock:v5];
    objc_destroyWeak(&v6);
    objc_destroyWeak(&location);
  }
}

void __46__HMSettingsController_notifyDelegateOfUpdate__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained delegate];
  if (objc_opt_respondsToSelector())
  {
    v3 = objc_autoreleasePoolPush();
    v4 = WeakRetained;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v9 = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Calling delegate settings did update: %@", &v9, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    v7 = [v4 settings];
    [v2 settingsDidUpdate:v7];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)mergeWith:(id)a3 settingsInitializedWasModified:(BOOL)a4
{
  v4 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [v6 rootGroup];
  v8 = [(HMSettingsController *)self rootGroup];
  v9 = [v8 identifier];
  v10 = [v7 identifier];
  v11 = HMFEqualObjects();

  if (v11)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v25 = 0;
    v12 = [v6 rootGroup];
    v13 = v12;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_47;
    v22[3] = &unk_1E7547C40;
    v22[4] = self;
    v22[5] = buf;
    if (v12)
    {
      _PreorderTraverseGroupsWithBlock(v12, 0, v22);
    }

    if ((*(*&buf[8] + 24) & 1) != 0 || v4)
    {
      [(HMSettingsController *)self __notifyDelegateSettingsDidUpdate];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v18 = [v7 longDescription];
      *buf = 138543618;
      *&buf[4] = v17;
      *&buf[12] = 2112;
      *&buf[14] = v18;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@Merging new root group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v14);
    [(HMSettingsController *)v15 setRootGroup:v7];
    [(HMSettingsController *)v15 __notifyDelegateSettingsDidUpdate];
    v19 = [v6 rootGroup];
    v20 = v19;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke;
    v23[3] = &unk_1E7547BF0;
    v23[4] = v15;
    if (v19)
    {
      _PreorderTraverseGroupsWithBlock(v19, 0, v23);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = [a2 keyPath];
  v5 = [v3 settingGroupForKeyPath:v4];

  v6 = [v5 settings];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_2;
  v7[3] = &unk_1E7548A38;
  v7[4] = *(a1 + 32);
  [v6 na_each:v7];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_47(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 32);
  v8 = [v5 keyPath];
  v9 = [v7 settingGroupForKeyPath:v8];

  if (!v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = *(a1 + 32);
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [v5 longDescription];
      *buf = 138543618;
      v23 = v13;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging new setting group: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [*(a1 + 32) setSettingGroup:v5 withParentGroupKeyPath:v6];
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  v15 = [v5 settings];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_48;
  v19[3] = &unk_1E7547C18;
  v16 = *(a1 + 40);
  v19[4] = *(a1 + 32);
  v20 = v5;
  v21 = v16;
  v17 = v5;
  [v15 na_each:v19];

  v18 = *MEMORY[0x1E69E9840];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_48(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 keyPath];
  v6 = [v4 settingForKeyPath:v5];

  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Merging new setting: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 32);
    v16 = [*(a1 + 40) keyPath];
    [v15 setSetting:v3 withGroupKeyPath:v16];

    goto LABEL_9;
  }

  if (([v6 isEqual:v3] & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v20 = 138543618;
      v21 = v10;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Merging setting: %@", &v20, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [v6 merge:v3];
LABEL_9:
    *(*(*(a1 + 48) + 8) + 24) = 1;
    v17 = *(a1 + 32);
    v18 = [v3 keyPath];
    [v17 __notifyDelegateDidUpdateKeyPath:v18];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __65__HMSettingsController_mergeWith_settingsInitializedWasModified___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 32) delegate];
    v9 = [v3 keyPath];
    v13 = 138544130;
    v14 = v7;
    v15 = 2112;
    v16 = v8;
    v17 = 2112;
    v18 = v9;
    v19 = 2112;
    v20 = v3;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Initial notify delegate = %@ for keyPath = %@ with setting = %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v4);
  v10 = *(a1 + 32);
  v11 = [v3 keyPath];
  [v10 __notifyDelegateDidUpdateKeyPath:v11];

  v12 = *MEMORY[0x1E69E9840];
}

- (id)settingGroupForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_groupsMap objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setSettingGroup:(id)a3 withParentGroupKeyPath:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = [(HMSettingsController *)self settingGroupForKeyPath:v7];
  v10 = v9;
  if (v9)
  {
    [v9 addGroup:v6];
    os_unfair_lock_lock_with_options();
    groupsMap = self->_groupsMap;
    v12 = [v6 keyPath];
    [(NSMapTable *)groupsMap setObject:v6 forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v16;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get parent group with key path: %@ for setting group: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSettingGroups
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_groupsMap count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (HMSettingsDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setDelegate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Setting user settings delegate: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  objc_storeWeak(&v6->_delegate, v4);
  os_unfair_lock_unlock(&self->_lock);

  v9 = *MEMORY[0x1E69E9840];
}

- (id)settingForKeyPath:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_settingsMap objectForKey:v4];
  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)setSetting:(id)a3 withGroupKeyPath:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = [(HMSettingsController *)self settingGroupForKeyPath:v7];
  v10 = v9;
  if (v9)
  {
    [v9 addSetting:v6];
    [v6 setSettingManager:self];
    os_unfair_lock_lock_with_options();
    settingsMap = self->_settingsMap;
    v12 = [v6 keyPath];
    [(NSMapTable *)settingsMap setObject:v6 forKey:v12];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v16;
      v20 = 2112;
      v21 = v8;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to get group with key path: %@ for setting: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (BOOL)hasSettings
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMapTable *)self->_settingsMap count]!= 0;
  os_unfair_lock_unlock(&self->_lock);
  return v3;
}

- (void)setRootGroup:(id)a3
{
  v5 = a3;
  os_unfair_lock_lock_with_options();
  v6 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  groupsMap = self->_groupsMap;
  self->_groupsMap = v6;

  v8 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
  settingsMap = self->_settingsMap;
  self->_settingsMap = v8;

  objc_storeStrong(&self->_rootGroup, a3);
  v10 = self->_groupsMap;
  v11 = [v5 keyPath];
  [(NSMapTable *)v10 setObject:v5 forKey:v11];

  os_unfair_lock_unlock(&self->_lock);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __37__HMSettingsController_setRootGroup___block_invoke;
  v12[3] = &unk_1E7547BF0;
  v12[4] = self;
  if (v5)
  {
    _PreorderTraverseGroupsWithBlock(v5, 0, v12);
  }
}

void __37__HMSettingsController_setRootGroup___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (a3)
  {
    [*(a1 + 32) setSettingGroup:v5 withParentGroupKeyPath:a3];
  }

  v6 = [v5 settings];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__HMSettingsController_setRootGroup___block_invoke_2;
  v8[3] = &unk_1E7547BC8;
  v8[4] = *(a1 + 32);
  v9 = v5;
  v7 = v5;
  [v6 na_each:v8];
}

void __37__HMSettingsController_setRootGroup___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v3 keyPath];
  [v2 setSetting:v4 withGroupKeyPath:v5];
}

- (HMSettingGroup)rootGroup
{
  os_unfair_lock_lock_with_options();
  v3 = self->_rootGroup;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (HMSettingsController)initWithParentIdentifier:(id)a3 homeUUID:(id)a4 codingKey:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [HMSettingsMessageHandler alloc];
  v12 = v10;
  v13 = v9;
  v14 = v8;
  if (v11)
  {
    v24.receiver = v11;
    v24.super_class = HMSettingsMessageHandler;
    v11 = [(HMSettingsController *)&v24 init];
    if (v11)
    {
      v15 = [v12 copy];
      userTargetUUID = v11->_userTargetUUID;
      v11->_userTargetUUID = v15;

      v17 = [v13 copy];
      homeTargetUUID = v11->_homeTargetUUID;
      v11->_homeTargetUUID = v17;

      v19 = [v14 copy];
      targetSettingsType = v11->_targetSettingsType;
      v11->_targetSettingsType = v19;
    }
  }

  v21 = objc_alloc_init(HMSettingsCreator);
  v22 = [(HMSettingsController *)self initWithParentIdentifier:v12 codingKey:v14 messageHandler:v11 settingsCreator:v21];

  return v22;
}

- (HMSettingsController)initWithParentIdentifier:(id)a3 codingKey:(id)a4 messageHandler:(id)a5 settingsCreator:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v24.receiver = self;
  v24.super_class = HMSettingsController;
  v15 = [(HMSettingsController *)&v24 init];
  v16 = v15;
  if (v15)
  {
    v15->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v15->_parentIdentifier, a3);
    v17 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    groupsMap = v16->_groupsMap;
    v16->_groupsMap = v17;

    v19 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    settingsMap = v16->_settingsMap;
    v16->_settingsMap = v19;

    objc_storeStrong(&v16->_messageHandler, a5);
    objc_storeStrong(&v16->_codingKey, a4);
    v21 = [v14 createSettingsWithOwner:v16];
    settings = v16->_settings;
    v16->_settings = v21;
  }

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t31 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t31, &__block_literal_global_15373);
  }

  v3 = logCategory__hmf_once_v32;

  return v3;
}

uint64_t __35__HMSettingsController_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v32;
  logCategory__hmf_once_v32 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end