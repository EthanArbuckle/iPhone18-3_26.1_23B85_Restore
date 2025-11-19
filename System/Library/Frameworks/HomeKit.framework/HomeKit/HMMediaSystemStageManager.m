@interface HMMediaSystemStageManager
+ (id)logCategory;
- (BOOL)mergeMediaSystems:(id)a3 withHome:(id)a4 context:(id)a5;
- (HMMediaSystemStageManager)initWithIdentifier:(id)a3 mediaSystems:(id)a4;
- (HMMediaSystemStageManager)initWithIdentifier:(id)a3 mediaSystems:(id)a4 addedMediaSystemTimerManager:(id)a5 removedMediaSystemTimerManager:(id)a6;
- (HMMediaSystemStageManagerDataSource)dataSource;
- (NSArray)mediaSystems;
- (id)committedMediaSystems;
- (id)dataSourceContext;
- (id)dataSourceHome;
- (id)logIdentifier;
- (id)mediaSystemWithUUID:(id)a3;
- (id)mediaSystemWithUniqueIdentifier:(id)a3;
- (void)configureWithHome:(id)a3 context:(id)a4;
- (void)notifyDelegateOfAddedMediaSystem:(id)a3;
- (void)notifyDelegateOfAddedMediaSystem:(id)a3 usingHome:(id)a4 context:(id)a5;
- (void)notifyDelegateOfRemovedMediaSystem:(id)a3;
- (void)notifyDelegateOfRemovedMediaSystem:(id)a3 usingHome:(id)a4 context:(id)a5;
- (void)postConfigure;
- (void)setCommittedMediaSystems:(id)a3;
- (void)stageAddedMediaSystem:(id)a3;
- (void)stageRemovedMediaSystemUUID:(id)a3;
- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4;
- (void)unconfigure;
- (void)unstageAndCommitMediaSystemWithUUID:(id)a3;
- (void)unstageAndCommitMediaSystems:(id)a3;
- (void)unstageExpiredStagedAddedMediaSystemUUID:(id)a3;
- (void)unstageExpiredStagedRemovedMediaSystemUUID:(id)a3;
@end

@implementation HMMediaSystemStageManager

- (HMMediaSystemStageManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)timerManager:(id)a3 didFireForTimerContext:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v7 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    v11 = [(HMMediaSystemStageManager *)self addedMediaSystemTimerManager];

    if (v11 == v6)
    {
      [(HMMediaSystemStageManager *)self unstageExpiredStagedAddedMediaSystemUUID:v10];
    }

    else
    {
      v12 = [(HMMediaSystemStageManager *)self removedMediaSystemTimerManager];

      if (v12 == v6)
      {
        [(HMMediaSystemStageManager *)self unstageExpiredStagedRemovedMediaSystemUUID:v10];
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v18 = 138543618;
      v19 = v16;
      v20 = 2112;
      v21 = v7;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Failed to get media system uuid from timer context: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (id)logIdentifier
{
  v2 = [(HMMediaSystemStageManager *)self identifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (id)dataSourceContext
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSystemStageManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 contextForMediaSystemStageManager:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source context due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)dataSourceHome
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = [(HMMediaSystemStageManager *)self dataSource];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 homeForMediaSystemStageManager:self];
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v9;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to data source home due to no data source", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v5 = 0;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (void)notifyDelegateOfRemovedMediaSystem:(id)a3 usingHome:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 delegateCaller];
  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __82__HMMediaSystemStageManager_notifyDelegateOfRemovedMediaSystem_usingHome_context___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    [v11 invokeBlock:v17];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to notify client of did removed media system due to no delegate caller for context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __82__HMMediaSystemStageManager_notifyDelegateOfRemovedMediaSystem_usingHome_context___block_invoke(id *a1)
{
  v25 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v4 = [v2 mediaSystemWithUUID:v3];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = a1[4];
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = [a1[5] uuid];
      v19 = 138543618;
      v20 = v8;
      v21 = 2112;
      v22 = v9;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping remove notification due to existing media system: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v10 = [a1[6] delegate];
    if ([v10 conformsToProtocol:&unk_1F0F63B38])
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11;

    v13 = objc_autoreleasePoolPush();
    v14 = a1[4];
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = a1[5];
      v19 = 138543874;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Notifying client of did remove media system: %@ with delegate: %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    if (objc_opt_respondsToSelector())
    {
      [v12 home:a1[6] didRemoveMediaSystem:a1[5]];
    }
  }

  v18 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfRemovedMediaSystem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemStageManager *)self dataSourceHome];
  v6 = [(HMMediaSystemStageManager *)self dataSourceContext];
  v7 = v6;
  if (v5 && v6)
  {
    [(HMMediaSystemStageManager *)self notifyDelegateOfRemovedMediaSystem:v4 usingHome:v5 context:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 uuid];
      v13 = [v5 uuid];
      v15 = 138544130;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of removed media system: %@ due to no home: %@ context: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAddedMediaSystem:(id)a3 usingHome:(id)a4 context:(id)a5
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v10 delegateCaller];
  if (v11)
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __80__HMMediaSystemStageManager_notifyDelegateOfAddedMediaSystem_usingHome_context___block_invoke;
    v17[3] = &unk_1E754E5E8;
    v17[4] = self;
    v18 = v8;
    v19 = v9;
    [v11 invokeBlock:v17];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v15;
      v22 = 2112;
      v23 = v10;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify client of added media system due to no delegate caller provided by context: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __80__HMMediaSystemStageManager_notifyDelegateOfAddedMediaSystem_usingHome_context___block_invoke(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = a1[4];
  v3 = [a1[5] uuid];
  v4 = [v2 mediaSystemWithUUID:v3];

  if (v4)
  {
    v5 = [a1[6] delegate];
    if ([v5 conformsToProtocol:&unk_1F0F63B38])
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v18 = 138543874;
      v19 = v11;
      v20 = 2112;
      v21 = v4;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Notifying client of added media system: %@ private delegate: %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    if (objc_opt_respondsToSelector())
    {
      [v7 home:a1[6] didAddMediaSystem:v4];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = a1[4];
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [a1[5] uuid];
      v18 = 138543618;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Skipping add media system notification due to not found media system: %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)notifyDelegateOfAddedMediaSystem:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMMediaSystemStageManager *)self dataSourceHome];
  v6 = [(HMMediaSystemStageManager *)self dataSourceContext];
  v7 = v6;
  if (v5 && v6)
  {
    [(HMMediaSystemStageManager *)self notifyDelegateOfAddedMediaSystem:v4 usingHome:v5 context:v6];
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [v4 uuid];
      v13 = [v5 uuid];
      v15 = 138544130;
      v16 = v11;
      v17 = 2112;
      v18 = v12;
      v19 = 2112;
      v20 = v13;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to notify of added media system: %@ due to no home: %@ context: %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
  }

  v14 = *MEMORY[0x1E69E9840];
}

- (NSArray)mediaSystems
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_committedMediaSystemsMap mutableCopy];
  v4 = [(NSMutableDictionary *)self->_stagedAddedMediaSystemsMap allValues];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __41__HMMediaSystemStageManager_mediaSystems__block_invoke;
  v15[3] = &unk_1E7547FA8;
  v5 = v3;
  v16 = v5;
  [v4 na_each:v15];

  stagedRemovedMediaSystemUUIDs = self->_stagedRemovedMediaSystemUUIDs;
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __41__HMMediaSystemStageManager_mediaSystems__block_invoke_2;
  v13 = &unk_1E7547FD0;
  v7 = v5;
  v14 = v7;
  [(NSMutableSet *)stagedRemovedMediaSystemUUIDs na_each:&v10];
  v8 = [v7 allValues];

  os_unfair_lock_unlock(&self->_lock);

  return v8;
}

void __41__HMMediaSystemStageManager_mediaSystems__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uuid];
  [v2 setObject:v3 forKey:v4];
}

- (id)mediaSystemWithUniqueIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystemStageManager *)self mediaSystems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HMMediaSystemStageManager_mediaSystemWithUniqueIdentifier___block_invoke;
  v9[3] = &unk_1E75484D8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __61__HMMediaSystemStageManager_mediaSystemWithUniqueIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

- (id)mediaSystemWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(HMMediaSystemStageManager *)self mediaSystems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__HMMediaSystemStageManager_mediaSystemWithUUID___block_invoke;
  v9[3] = &unk_1E75484D8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 na_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __49__HMMediaSystemStageManager_mediaSystemWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uuid];
  v4 = [v3 hmf_isEqualToUUID:*(a1 + 32)];

  return v4;
}

- (void)unstageExpiredStagedAddedMediaSystemUUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unstaging expired staged added media system with UUID: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMutableDictionary *)v6->_stagedAddedMediaSystemsMap objectForKey:v4];
  [(NSMutableDictionary *)v6->_stagedAddedMediaSystemsMap removeObjectForKey:v4];
  os_unfair_lock_unlock(&v6->_lock);
  if (v9)
  {
    v10 = [(HMMediaSystemStageManager *)v6 mediaSystemWithUUID:v4];
    v11 = v10 == 0;

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v6;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v17 = 138543618;
        v18 = v15;
        v19 = 2112;
        v20 = v9;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Removed expired staged media system: %@", &v17, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      [v9 _unconfigure];
      [(HMMediaSystemStageManager *)v13 notifyDelegateOfRemovedMediaSystem:v9];
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)unstageExpiredStagedRemovedMediaSystemUUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v8;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Unstaging expired staged removed media system with UUID: %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)v6->_stagedRemovedMediaSystemUUIDs removeObject:v4];
  os_unfair_lock_unlock(&v6->_lock);
  v9 = [(HMMediaSystemStageManager *)v6 mediaSystemWithUUID:v4];
  if (v9)
  {
    [(HMMediaSystemStageManager *)v6 notifyDelegateOfAddedMediaSystem:v9];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unstageAndCommitMediaSystemWithUUID:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_stagedAddedMediaSystemsMap objectForKey:v4];
  if (v5)
  {
    [(NSMutableDictionary *)self->_stagedAddedMediaSystemsMap removeObjectForKey:v4];
    [(NSMutableDictionary *)self->_committedMediaSystemsMap setObject:v5 forKey:v4];

    os_unfair_lock_unlock(&self->_lock);
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v9;
      v13 = 2112;
      v14 = v4;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Unstaged and committed media system: %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)unstageAndCommitMediaSystems:(id)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __58__HMMediaSystemStageManager_unstageAndCommitMediaSystems___block_invoke;
  v3[3] = &unk_1E7547FA8;
  v3[4] = self;
  [a3 na_each:v3];
}

void __58__HMMediaSystemStageManager_unstageAndCommitMediaSystems___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 uuid];
  [v2 unstageAndCommitMediaSystemWithUUID:v3];
}

- (void)stageRemovedMediaSystemUUID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging removed media system: %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMMediaSystemStageManager *)v6 mediaSystemWithUUID:v4];
  if (v9)
  {
    os_unfair_lock_lock_with_options();
    [(NSMutableSet *)v6->_stagedRemovedMediaSystemUUIDs addObject:v4];
    os_unfair_lock_unlock(&v6->_lock);
    v10 = [(HMMediaSystemStageManager *)v6 removedMediaSystemTimerManager];
    v11 = [v10 startTimerWithTimeInterval:v4 andReplaceObject:180.0];

    [(HMMediaSystemStageManager *)v6 notifyDelegateOfRemovedMediaSystem:v9];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = v6;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v15;
      v19 = 2112;
      v20 = v4;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Skipping staging removed media system: %@ due to no existing media system", &v17, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)stageAddedMediaSystem:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v15 = 138543618;
    v16 = v8;
    v17 = 2112;
    v18 = v4;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Staging media system: %@", &v15, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  stagedAddedMediaSystemsMap = v6->_stagedAddedMediaSystemsMap;
  v10 = [v4 uuid];
  [(NSMutableDictionary *)stagedAddedMediaSystemsMap setObject:v4 forKey:v10];

  os_unfair_lock_unlock(&v6->_lock);
  v11 = [(HMMediaSystemStageManager *)v6 addedMediaSystemTimerManager];
  v12 = [v4 uuid];
  v13 = [v11 startTimerWithTimeInterval:v12 andReplaceObject:180.0];

  [(HMMediaSystemStageManager *)v6 notifyDelegateOfAddedMediaSystem:v4];
  v14 = *MEMORY[0x1E69E9840];
}

- (void)setCommittedMediaSystems:(id)a3
{
  v7 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v7 na_dictionaryWithKeyGenerator:&__block_literal_global_19_16519];
  v5 = [v4 mutableCopy];
  committedMediaSystemsMap = self->_committedMediaSystemsMap;
  self->_committedMediaSystemsMap = v5;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)committedMediaSystems
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableDictionary *)self->_committedMediaSystemsMap allValues];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (BOOL)mergeMediaSystems:(id)a3 withHome:(id)a4 context:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  [(HMMediaSystemStageManager *)self unstageAndCommitMediaSystems:v10];
  v11 = [HMObjectMergeCollection alloc];
  v12 = [(HMMediaSystemStageManager *)self committedMediaSystems];
  v13 = [(HMObjectMergeCollection *)v11 initWithCurrentObjects:v12 newObjects:v10];

  v14 = [(HMObjectMergeCollection *)v13 removedObjects];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke;
  v40[3] = &unk_1E7547F58;
  v40[4] = self;
  [v14 hmf_enumerateWithAutoreleasePoolUsingBlock:v40];

  v15 = [(HMObjectMergeCollection *)v13 addedObjects];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_15;
  v37[3] = &unk_1E7547F80;
  v37[4] = self;
  v16 = v9;
  v38 = v16;
  v17 = v8;
  v39 = v17;
  [v15 hmf_enumerateWithAutoreleasePoolUsingBlock:v37];

  [(HMObjectMergeCollection *)v13 mergeCommonObjects];
  v18 = [(HMObjectMergeCollection *)v13 finalObjects];
  [(HMMediaSystemStageManager *)self setCommittedMediaSystems:v18];

  v19 = [(HMObjectMergeCollection *)v13 removedObjects];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_16;
  v33[3] = &unk_1E7547F80;
  v20 = v16;
  v34 = v20;
  v35 = self;
  v21 = v17;
  v36 = v21;
  [v19 hmf_enumerateWithAutoreleasePoolUsingBlock:v33];

  v22 = [(HMObjectMergeCollection *)v13 addedObjects];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_3;
  v29 = &unk_1E7547F80;
  v30 = v20;
  v31 = self;
  v32 = v21;
  v23 = v21;
  v24 = v20;
  [v22 hmf_enumerateWithAutoreleasePoolUsingBlock:&v26];

  LOBYTE(v20) = [(HMObjectMergeCollection *)v13 isModified:v26];
  return v20;
}

void __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Removed media system via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 _unconfigure];

  v8 = *MEMORY[0x1E69E9840];
}

void __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_15(uint64_t a1, void *a2)
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
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Added media system via merge: %@", &v9, 0x16u);
  }

  objc_autoreleasePoolPop(v4);
  [v3 __configureWithContext:*(a1 + 40) home:*(a1 + 48)];

  v8 = *MEMORY[0x1E69E9840];
}

void __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_16(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_2;
  v7[3] = &unk_1E754DE30;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v4, v7);
}

void __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 postConfigure];
  v4 = [*(a1 + 32) queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __64__HMMediaSystemStageManager_mergeMediaSystems_withHome_context___block_invoke_4;
  v7[3] = &unk_1E754DE30;
  v5 = *(a1 + 48);
  v7[4] = *(a1 + 40);
  v8 = v3;
  v9 = v5;
  v10 = *(a1 + 32);
  v6 = v3;
  dispatch_async(v4, v7);
}

- (void)unconfigure
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(HMMediaSystemStageManager *)self mediaSystems];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = *v15;
    do
    {
      v6 = 0;
      do
      {
        if (*v15 != v5)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v14 + 1) + 8 * v6++) _unconfigure];
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v4);
  }

  os_unfair_lock_lock_with_options();
  v7 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  committedMediaSystemsMap = self->_committedMediaSystemsMap;
  self->_committedMediaSystemsMap = v7;

  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
  stagedAddedMediaSystemsMap = self->_stagedAddedMediaSystemsMap;
  self->_stagedAddedMediaSystemsMap = v9;

  v11 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
  stagedRemovedMediaSystemUUIDs = self->_stagedRemovedMediaSystemUUIDs;
  self->_stagedRemovedMediaSystemUUIDs = v11;

  os_unfair_lock_unlock(&self->_lock);
  v13 = *MEMORY[0x1E69E9840];
}

- (void)postConfigure
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(HMMediaSystemStageManager *)self mediaSystems];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) postConfigure];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)configureWithHome:(id)a3 context:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v8 = [(HMMediaSystemStageManager *)self mediaSystems];
  v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v16 + 1) + 8 * v12++) __configureWithContext:v7 home:v6];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  [(HMFTimerManager *)self->_addedMediaSystemTimerManager setDelegate:self];
  [(HMFTimerManager *)self->_removedMediaSystemTimerManager setDelegate:self];
  v13 = [v7 queue];
  [(HMFTimerManager *)self->_addedMediaSystemTimerManager setDelegateQueue:v13];

  v14 = [v7 queue];
  [(HMFTimerManager *)self->_removedMediaSystemTimerManager setDelegateQueue:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (HMMediaSystemStageManager)initWithIdentifier:(id)a3 mediaSystems:(id)a4 addedMediaSystemTimerManager:(id)a5 removedMediaSystemTimerManager:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  if (!v12)
  {
LABEL_9:
    _HMFPreconditionFailure();
    goto LABEL_10;
  }

  if (!v13)
  {
LABEL_10:
    _HMFPreconditionFailure();
    goto LABEL_11;
  }

  v15 = v14;
  if (!v14)
  {
LABEL_11:
    v26 = _HMFPreconditionFailure();
    return __121__HMMediaSystemStageManager_initWithIdentifier_mediaSystems_addedMediaSystemTimerManager_removedMediaSystemTimerManager___block_invoke(v26);
  }

  v27.receiver = self;
  v27.super_class = HMMediaSystemStageManager;
  v16 = [(HMMediaSystemStageManager *)&v27 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_identifier, a3);
    v18 = [v12 na_dictionaryWithKeyGenerator:&__block_literal_global_16534];
    v19 = [v18 mutableCopy];
    committedMediaSystemsMap = v17->_committedMediaSystemsMap;
    v17->_committedMediaSystemsMap = v19;

    v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:0];
    stagedAddedMediaSystemsMap = v17->_stagedAddedMediaSystemsMap;
    v17->_stagedAddedMediaSystemsMap = v21;

    v23 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:0];
    stagedRemovedMediaSystemUUIDs = v17->_stagedRemovedMediaSystemUUIDs;
    v17->_stagedRemovedMediaSystemUUIDs = v23;

    objc_storeStrong(&v17->_addedMediaSystemTimerManager, a5);
    objc_storeStrong(&v17->_removedMediaSystemTimerManager, a6);
  }

  return v17;
}

- (HMMediaSystemStageManager)initWithIdentifier:(id)a3 mediaSystems:(id)a4
{
  v6 = MEMORY[0x1E69A2A70];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithOptions:2];
  v10 = [objc_alloc(MEMORY[0x1E69A2A70]) initWithOptions:2];
  v11 = [(HMMediaSystemStageManager *)self initWithIdentifier:v8 mediaSystems:v7 addedMediaSystemTimerManager:v9 removedMediaSystemTimerManager:v10];

  return v11;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t30 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t30, &__block_literal_global_191);
  }

  v3 = logCategory__hmf_once_v31;

  return v3;
}

uint64_t __40__HMMediaSystemStageManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v31;
  logCategory__hmf_once_v31 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end