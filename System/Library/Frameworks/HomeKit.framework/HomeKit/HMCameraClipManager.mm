@interface HMCameraClipManager
+ (id)logCategory;
+ (id)zoneNameForRecordingManagementServiceUUID:(id)a3;
- (HMCameraClipManager)initWithContext:(id)a3 profileUniqueIdentifier:(id)a4 zoneName:(id)a5 home:(id)a6;
- (HMCameraClipManager)initWithContext:(id)a3 profileUniqueIdentifier:(id)a4 zoneName:(id)a5 notificationCenter:(id)a6;
- (id)logIdentifier;
- (id)videoSegmentsAssetContextForClip:(id)a3;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)configure;
- (void)dealloc;
- (void)deleteAllClipsWithCompletionHandler:(id)a3;
- (void)deleteClipWithUUID:(id)a3 completion:(id)a4;
- (void)donateClipsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchAllClipsWithCompletion:(id)a3;
- (void)fetchAllSignificantEventsWithCompletion:(id)a3;
- (void)fetchClipForSignificantEventWithUUID:(id)a3 completion:(id)a4;
- (void)fetchClipWithUUID:(id)a3 completion:(id)a4;
- (void)fetchClipsWithDateInterval:(id)a3 quality:(int64_t)a4 limit:(unint64_t)a5 shouldOrderAscending:(BOOL)a6 completion:(id)a7;
- (void)fetchCountOfAllClipsWithCompletion:(id)a3;
- (void)fetchCountOfClipsWithDateInterval:(id)a3 quality:(int64_t)a4 completion:(id)a5;
- (void)fetchFaceCropDataRepresentationForSignificantEventWithUUID:(id)a3 completion:(id)a4;
- (void)fetchHeroFrameDataRepresentationForClipWithUUID:(id)a3 completion:(id)a4;
- (void)fetchIsCloudStorageEnabledWithCompletion:(id)a3;
- (void)fetchSignificantEventsWithUUIDs:(id)a3 completion:(id)a4;
- (void)fetchVideoSegmentsAssetContextForClip:(id)a3 completion:(id)a4;
- (void)handleDaemonReconnectedNotification:(id)a3;
- (void)handleDidChangeClipsMessage:(id)a3;
- (void)handleDidChangeSignificantEventsMessage:(id)a3;
- (void)handleFaceMisclassificationForSignificantEvent:(id)a3 completion:(id)a4;
- (void)importClipsWithImportData:(id)a3 completion:(id)a4;
- (void)notifyObserversWithBlock:(id)a3;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMCameraClipManager

- (id)logIdentifier
{
  v2 = [(HMCameraClipManager *)self profileUniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleDaemonReconnectedNotification:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling daemon reconnected notification by reconnecting to daemon if necessary", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(NSMapTable *)v6->_delegateCallersByObservers count];
  os_unfair_lock_unlock(&v6->_lock);
  if (v9)
  {
    [(HMCameraClipManager *)v6 subscribe];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)handleDidChangeSignificantEventsMessage:(id)a3
{
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v26 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling significant events changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
  v10 = [v4 unarchivedObjectForKey:@"HMCCM.mk.use" ofClasses:v9];

  v11 = [v4 setForKey:@"HMCCM.mk.rseu"];
  v12 = objc_autoreleasePoolPush();
  v13 = v6;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v10 count];
    v17 = [v11 count];
    *buf = 138543874;
    v26 = v15;
    v27 = 2048;
    v28 = v16;
    v29 = 2048;
    v30 = v17;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated significant events, %lu removed significant event UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v12);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63__HMCameraClipManager_handleDidChangeSignificantEventsMessage___block_invoke;
  v21[3] = &unk_1E754C440;
  v22 = v10;
  v23 = v13;
  v24 = v11;
  v18 = v11;
  v19 = v10;
  [(HMCameraClipManager *)v13 notifyObserversWithBlock:v21];
  [v4 respondWithPayload:0];

  v20 = *MEMORY[0x1E69E9840];
}

void __63__HMCameraClipManager_handleDidChangeSignificantEventsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didUpdateSignificantEvents:*(a1 + 32)];
  }

  if ([*(a1 + 48) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didRemoveSignificantEventsWithUUIDs:*(a1 + 48)];
  }
}

- (void)handleDidChangeClipsMessage:(id)a3
{
  v43[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v37 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling clips changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v10 = [v4 unarchivedObjectForKey:@"HMCCM.mk.uc" ofClasses:v9];

  v11 = [v4 setForKey:@"HMCCM.mk.rcu"];
  os_unfair_lock_lock_with_options();
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v12 = v10;
  v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
  if (v13)
  {
    v14 = *v33;
    do
    {
      v15 = 0;
      do
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v32 + 1) + 8 * v15);
        v17 = [(HMCameraClipManager *)v6 videoAssetContextsByClipUUID];
        v18 = [v16 uniqueIdentifier];
        [v17 setObject:0 forKeyedSubscript:v18];

        ++v15;
      }

      while (v13 != v15);
      v13 = [v12 countByEnumeratingWithState:&v32 objects:v42 count:16];
    }

    while (v13);
  }

  os_unfair_lock_unlock(&v6->_lock);
  v19 = objc_autoreleasePoolPush();
  v20 = v6;
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = HMFGetLogIdentifier();
    v23 = [v12 count];
    v24 = [v11 count];
    *buf = 138543874;
    v37 = v22;
    v38 = 2048;
    v39 = v23;
    v40 = 2048;
    v41 = v24;
    _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated clips, %lu removed clip UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v19);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __51__HMCameraClipManager_handleDidChangeClipsMessage___block_invoke;
  v28[3] = &unk_1E754C440;
  v29 = v12;
  v30 = v20;
  v31 = v11;
  v25 = v11;
  v26 = v12;
  [(HMCameraClipManager *)v20 notifyObserversWithBlock:v28];
  [v4 respondWithPayload:0];

  v27 = *MEMORY[0x1E69E9840];
}

void __51__HMCameraClipManager_handleDidChangeClipsMessage___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didUpdateClips:*(a1 + 32)];
  }

  if ([*(a1 + 48) count] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v3 clipManager:*(a1 + 40) didRemoveClipsWithUUIDs:*(a1 + 48)];
  }
}

- (void)notifyObserversWithBlock:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(NSMapTable *)self->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = [v5 keyEnumerator];
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v5 objectForKey:v9];
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = __48__HMCameraClipManager_notifyObserversWithBlock___block_invoke;
        v14[3] = &unk_1E754E458;
        v11 = v4;
        v14[4] = v9;
        v15 = v11;
        [v10 invokeBlock:v14];
      }

      v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)unsubscribe
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from camera clip changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [(HMCameraClipManager *)v4 profileUniqueIdentifier];
  v9 = [v7 initWithTarget:v8];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.u" destination:v9 payload:0];
  v11 = [(HMCameraClipManager *)v4 context];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v10 completionHandler:0];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)subscribe
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Subscribing to camera clip changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [(HMCameraClipManager *)v4 profileUniqueIdentifier];
  v9 = [v7 initWithTarget:v8];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.s" destination:v9 payload:0];
  v11 = [(HMCameraClipManager *)v4 context];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v10 completionHandler:0];

  v13 = *MEMORY[0x1E69E9840];
}

void __57__HMCameraClipManager_setCloudStorageEnabled_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to update cloud storage: %@", &v21, 0x20u);

LABEL_6:
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = [*(a1 + 40) identifier];
    v15 = [v14 shortDescription];
    v16 = *(a1 + 56);
    v17 = HMFEnabledStatusToString();
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v15;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully set cloud storage to %@", &v21, 0x20u);

    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchIsCloudStorageEnabledWithCompletion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetching is cloud storage enabled"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 identifier];
    v11 = [v10 shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching is cloud storage enabled", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  v13 = [(HMCameraClipManager *)v7 profileUniqueIdentifier];
  v14 = [v12 initWithTarget:v13];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.ficse" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __64__HMCameraClipManager_fetchIsCloudStorageEnabledWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = v7;
  v22 = v5;
  v23 = v4;
  v16 = v4;
  v17 = v5;
  [v15 setResponseHandler:v21];
  v18 = [(HMCameraClipManager *)v7 context];
  v19 = [v18 messageDispatcher];
  [v19 sendMessage:v15 completionHandler:0];

  v20 = *MEMORY[0x1E69E9840];
}

void __64__HMCameraClipManager_fetchIsCloudStorageEnabledWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMCMM.mk.ie"];
  v8 = objc_autoreleasePoolPush();
  v9 = *(a1 + 32);
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [*(a1 + 40) identifier];
      v14 = [v13 shortDescription];
      [v7 BOOLValue];
      HMFEnabledStatusToString();
      v27 = v8;
      v16 = v15 = v5;
      *buf = 138543874;
      v29 = v12;
      v30 = 2114;
      v31 = v14;
      v32 = 2112;
      v33 = v16;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched is cloud storage enabled: %@", buf, 0x20u);

      v5 = v15;
      v8 = v27;
    }

    objc_autoreleasePoolPop(v8);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v19 = v18;
    v20 = *(a1 + 48);
    v21 = v7;
    v22 = 0;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v23 = HMFGetLogIdentifier();
      v24 = [*(a1 + 40) identifier];
      v25 = [v24 shortDescription];
      *buf = 138543874;
      v29 = v23;
      v30 = 2114;
      v31 = v25;
      v32 = 2112;
      v33 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch is cloud storage enabled: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v19 = v18;
    v20 = *(a1 + 48);
    v21 = 0;
    v22 = v5;
  }

  [v18 callCompletion:v20 obj:v21 error:v22];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)importClipsWithImportData:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Import clips"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v38 = v12;
    v39 = 2114;
    v40 = v14;
    v41 = 2048;
    v42 = [v6 count];
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Importing %lu clips", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v35 = @"HMCCM.mk.cid";
  v18 = encodeRootObject(v6);
  v36 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.ic" destination:v17 payload:v19];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __60__HMCameraClipManager_importClipsWithImportData_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = v10;
  v32 = v8;
  v33 = v6;
  v34 = v7;
  v21 = v7;
  v22 = v6;
  v23 = v8;
  [v20 setResponseHandler:&v27];
  v24 = [(HMCameraClipManager *)v10 context:v27];
  v25 = [v24 messageDispatcher];
  [v25 sendMessage:v20 completionHandler:0];

  v26 = *MEMORY[0x1E69E9840];
}

void __60__HMCameraClipManager_importClipsWithImportData_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to import clips: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v17 = [*(a1 + 48) count];
    v21 = 138543874;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v25 = 2048;
    v26 = v17;
    v14 = "%{public}@[%{public}@] Successfully imported %lu clips";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 56) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchVideoSegmentsAssetContextForClip:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch video segments asset context"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = v14;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching video segments asset context for clip %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [(HMCameraClipManager *)v10 videoSegmentsAssetContextForClip:v6];
  if (v15)
  {
    v7[2](v7, v15, 0);
  }

  else
  {
    v16 = objc_alloc(MEMORY[0x1E69A2A00]);
    v17 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
    v18 = [v16 initWithTarget:v17];

    v28 = @"HMCCM.mk.cu";
    v19 = [v6 uniqueIdentifier];
    v29 = v19;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];

    v21 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCCM.m.fvsac" destination:v18 payload:v20];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke;
    v25[3] = &unk_1E754E480;
    v25[4] = v10;
    v26 = v8;
    v27 = v7;
    [v21 setResponseHandler:v25];
    v22 = [(HMCameraClipManager *)v10 context];
    v23 = [v22 messageDispatcher];
    [v23 sendMessage:v21 completionHandler:0];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v66[1] = *MEMORY[0x1E69E9840];
  v48 = a2;
  v49 = a3;
  v66[0] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v66 count:1];
  v6 = [v49 hmf_unarchivedObjectForKey:@"HMCCM.mk.ac" ofClasses:v5];

  if (v6)
  {
    v65 = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v65 count:{1, v48}];
    v8 = [v49 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

    v9 = objc_autoreleasePoolPush();
    v10 = a1[4];
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (v8)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [a1[5] identifier];
        v15 = [v14 shortDescription];
        *buf = 138544130;
        v58 = v13;
        v59 = 2114;
        v60 = v15;
        v61 = 2112;
        v62 = v6;
        v63 = 2112;
        v64 = v8;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched video segments asset context: %@ clip: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v9);
      v16 = [HMCameraClipVideoHLSPlaylistGenerator alloc];
      v17 = [v6 url];
      v18 = [(HMCameraClipVideoHLSPlaylistGenerator *)v16 initWithClip:v8 url:v17];

      v19 = [v6 videoSegments];
      [(HMCameraClipVideoHLSPlaylistGenerator *)v18 addSegments:v19];

      if ([v8 isComplete])
      {
        [(HMCameraClipVideoHLSPlaylistGenerator *)v18 finish];
      }

      v20 = [(HMCameraClipVideoHLSPlaylistGenerator *)v18 hlsPlaylist];
      v21 = [HMCameraClipVideoAssetContext alloc];
      v22 = [v6 url];
      v23 = [v6 expirationDate];
      v24 = [v6 requiredHTTPHeaders];
      v25 = [v6 videoSegments];
      v26 = [(HMCameraClipVideoAssetContext *)v21 initWithURL:v22 expirationDate:v23 requiredHTTPHeaders:v24 videoSegments:v25 hlsPlaylist:v20];

      v27 = a1[4];
      os_unfair_lock_lock_with_options();
      v28 = *(a1[4] + 7);
      v29 = [v8 uniqueIdentifier];
      [v28 setObject:v26 forKeyedSubscript:v29];

      os_unfair_lock_unlock(v27 + 2);
      v30 = [a1[4] context];
      v31 = [v30 delegateCaller];
      v50[0] = MEMORY[0x1E69E9820];
      v50[1] = 3221225472;
      v50[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_226;
      v50[3] = &unk_1E754E458;
      v32 = a1[6];
      v51 = v26;
      v52 = v32;
      v33 = v26;
      [v31 invokeBlock:v50];
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v42 = HMFGetLogIdentifier();
        v43 = [a1[5] identifier];
        v44 = [v43 shortDescription];
        *buf = 138543874;
        v58 = v42;
        v59 = 2114;
        v60 = v44;
        v61 = 2112;
        v62 = v49;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v9);
      v45 = [a1[4] context];
      v46 = [v45 delegateCaller];
      v53[0] = MEMORY[0x1E69E9820];
      v53[1] = 3221225472;
      v53[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_223;
      v53[3] = &unk_1E754E430;
      v54 = a1[6];
      [v46 invokeBlock:v53];

      v18 = v54;
    }
  }

  else
  {
    v34 = objc_autoreleasePoolPush();
    v35 = a1[4];
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = HMFGetLogIdentifier();
      v38 = [a1[5] identifier];
      v39 = [v38 shortDescription];
      *buf = 138543874;
      v58 = v37;
      v59 = 2114;
      v60 = v39;
      v61 = 2112;
      v62 = v49;
      _os_log_impl(&dword_19BB39000, v36, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find video segments asset context in response payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v34);
    v40 = [a1[4] context];
    v41 = [v40 delegateCaller];
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_222;
    v55[3] = &unk_1E754E430;
    v56 = a1[6];
    [v41 invokeBlock:v55];

    v8 = v56;
  }

  v47 = *MEMORY[0x1E69E9840];
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_222(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

void __72__HMCameraClipManager_fetchVideoSegmentsAssetContextForClip_completion___block_invoke_223(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)configure
{
  v3 = [(HMCameraClipManager *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMCCM.m.dcc" receiver:self selector:sel_handleDidChangeClipsMessage_];

  v5 = [(HMCameraClipManager *)self context];
  v6 = [v5 messageDispatcher];
  [v6 registerForMessage:@"HMCCM.m.dcse" receiver:self selector:sel_handleDidChangeSignificantEventsMessage_];

  v7 = [(HMCameraClipManager *)self notificationCenter];
  [v7 addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)donateClipsWithUUIDs:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Handle feedback submission"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = v14;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Handling feedback submission for clips %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v34 = @"HMCCM.mk.cus";
  v35 = v6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v19 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMCCM.m.sc" destination:v17 payload:v18];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __55__HMCameraClipManager_donateClipsWithUUIDs_completion___block_invoke;
  v29 = &unk_1E754D030;
  v30 = v10;
  v31 = v8;
  v32 = v6;
  v33 = v7;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  [v19 setResponseHandler:&v26];
  v23 = [(HMCameraClipManager *)v10 context:v26];
  v24 = [v23 messageDispatcher];
  [v24 sendMessage:v19 completionHandler:0];

  v25 = *MEMORY[0x1E69E9840];
}

void __55__HMCameraClipManager_donateClipsWithUUIDs_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v14 = *(a1 + 48);
      v23 = 138544130;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v5;
      v15 = "%{public}@[%{public}@] Failed to handle feedback submission for clips %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v23, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v23 = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v13;
    v27 = 2112;
    v28 = v19;
    v15 = "%{public}@[%{public}@] Successfully handled feedback submission for clips %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)handleFaceMisclassificationForSignificantEvent:(id)a3 completion:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Handle face misclassification"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v36 = v12;
    v37 = 2114;
    v38 = v14;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Handling face misclassification for significant event %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v32 = v6;
  v33 = @"HMCCM.mk.se";
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
  v19 = encodeRootObject(v18);
  v34 = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];

  v21 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.hfm" destination:v17 payload:v20];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __81__HMCameraClipManager_handleFaceMisclassificationForSignificantEvent_completion___block_invoke;
  v28[3] = &unk_1E754D030;
  v28[4] = v10;
  v29 = v8;
  v30 = v6;
  v31 = v7;
  v22 = v7;
  v23 = v6;
  v24 = v8;
  [v21 setResponseHandler:v28];
  v25 = [(HMCameraClipManager *)v10 context];
  v26 = [v25 messageDispatcher];
  [v26 sendMessage:v21 completionHandler:0];

  v27 = *MEMORY[0x1E69E9840];
}

void __81__HMCameraClipManager_handleFaceMisclassificationForSignificantEvent_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v14 = *(a1 + 48);
      v23 = 138544130;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v5;
      v15 = "%{public}@[%{public}@] Failed to handle face misclassification for significant event %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v23, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v23 = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v13;
    v27 = 2112;
    v28 = v19;
    v15 = "%{public}@[%{public}@] Successfully handled face misclassification for significant event %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)deleteAllClipsWithCompletionHandler:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Delete all clips"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 identifier];
    v11 = [v10 shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Deleting all clips", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  v13 = [(HMCameraClipManager *)v7 profileUniqueIdentifier];
  v14 = [v12 initWithTarget:v13];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.dac" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __59__HMCameraClipManager_deleteAllClipsWithCompletionHandler___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = v7;
  v22 = v5;
  v23 = v4;
  v16 = v4;
  v17 = v5;
  [v15 setResponseHandler:v21];
  v18 = [(HMCameraClipManager *)v7 context];
  v19 = [v18 messageDispatcher];
  [v19 sendMessage:v15 completionHandler:0];

  v20 = *MEMORY[0x1E69E9840];
}

void __59__HMCameraClipManager_deleteAllClipsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to delete all clips: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v21 = 138543618;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v14 = "%{public}@[%{public}@] Successfully deleted all clips";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)deleteClipWithUUID:(id)a3 completion:(id)a4
{
  v42 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Delete clip"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v37 = v12;
    v38 = 2114;
    v39 = v14;
    v40 = 2112;
    v41 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Deleting clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v34 = @"HMCCM.mk.cu";
  v35 = v6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.dc" destination:v17 payload:v18];
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __53__HMCameraClipManager_deleteClipWithUUID_completion___block_invoke;
  v29 = &unk_1E754D030;
  v30 = v10;
  v31 = v8;
  v32 = v6;
  v33 = v7;
  v20 = v7;
  v21 = v6;
  v22 = v8;
  [v19 setResponseHandler:&v26];
  v23 = [(HMCameraClipManager *)v10 context:v26];
  v24 = [v23 messageDispatcher];
  [v24 sendMessage:v19 completionHandler:0];

  v25 = *MEMORY[0x1E69E9840];
}

void __53__HMCameraClipManager_deleteClipWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v14 = *(a1 + 48);
      v23 = 138544130;
      v24 = v11;
      v25 = 2114;
      v26 = v13;
      v27 = 2112;
      v28 = v14;
      v29 = 2112;
      v30 = v5;
      v15 = "%{public}@[%{public}@] Failed to delete clip with UUID %@: %@";
      v16 = v10;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v16, v17, v15, &v23, v18);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v19 = *(a1 + 48);
    v23 = 138543874;
    v24 = v11;
    v25 = 2114;
    v26 = v13;
    v27 = 2112;
    v28 = v19;
    v15 = "%{public}@[%{public}@] Successfully deleted clip with UUID %@";
    v16 = v10;
    v17 = OS_LOG_TYPE_INFO;
    v18 = 32;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v20 = [*(a1 + 32) context];
  v21 = [v20 delegateCaller];
  [v21 callCompletion:*(a1 + 56) error:v5];

  v22 = *MEMORY[0x1E69E9840];
}

void __100__HMCameraClipManager_fetchSignificantEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2048;
      v23 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu significant events", &v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    v18 = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch significant events: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllSignificantEventsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  v6 = [MEMORY[0x1E695DF00] distantPast];
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:v6 endDate:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __63__HMCameraClipManager_fetchAllSignificantEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = v4;
  v9 = v4;
  [(HMCameraClipManager *)self fetchSignificantEventsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __63__HMCameraClipManager_fetchAllSignificantEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v8 = [v5 setWithArray:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = a3;
    v7(v3, 0);
  }
}

- (void)fetchSignificantEventsWithUUIDs:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch significant events with UUIDs"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = v14;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching significant events with UUIDs %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v28 = @"HMCCM.mk.seu";
  v29 = v6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fse" destination:v17 payload:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = v10;
  v26 = v8;
  v27 = v7;
  v20 = v7;
  v21 = v8;
  [v19 setResponseHandler:v25];
  v22 = [(HMCameraClipManager *)v10 context];
  v23 = [v22 messageDispatcher];
  [v23 sendMessage:v19 completionHandler:0];

  v24 = *MEMORY[0x1E69E9840];
}

void __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v33[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v33[0] = objc_opt_class();
  v33[1] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.se" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v28 = v13;
      v29 = 2114;
      v30 = v15;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched significant events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke_195;
    v24[3] = &unk_1E754E458;
    v26 = a1[6];
    v25 = v8;
    [v17 invokeBlock:v24];

    v18 = v26;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [a1[5] identifier];
      v21 = [v20 shortDescription];
      *buf = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v21;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find significant events in response payload %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v22 = a1[6];
    v18 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    v22[2](v22, 0, v18);
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __66__HMCameraClipManager_fetchSignificantEventsWithUUIDs_completion___block_invoke_195(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [MEMORY[0x1E695DFD8] setWithArray:*(a1 + 32)];
  (*(v1 + 16))(v1, v2, 0);
}

- (void)fetchFaceCropDataRepresentationForSignificantEventWithUUID:(id)a3 completion:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch face crop image data for significant event"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v32 = v12;
    v33 = 2114;
    v34 = v14;
    v35 = 2112;
    v36 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching face crop image data for significant event with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v29 = @"HMCCM.mk.seu";
  v18 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  v30 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.ffcdr" destination:v17 payload:v19];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke;
  v26[3] = &unk_1E754E480;
  v26[4] = v10;
  v27 = v8;
  v28 = v7;
  v21 = v7;
  v22 = v8;
  [v20 setResponseHandler:v26];
  v23 = [(HMCameraClipManager *)v10 context];
  v24 = [v23 messageDispatcher];
  [v24 sendMessage:v20 completionHandler:0];

  v25 = *MEMORY[0x1E69E9840];
}

void __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMCCM.mk.id"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v12 = v26 = v5;
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      v15 = [v7 shortDescription];
      *buf = 138543874;
      v34 = v12;
      v35 = 2114;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched face crop image data: %@", buf, 0x20u);

      v5 = v26;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke_190;
    v27[3] = &unk_1E754E458;
    v18 = &v29;
    v29 = a1[6];
    v19 = &v28;
    v28 = v7;
    v20 = v27;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v21 = v5;
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138544130;
      v34 = v22;
      v35 = 2114;
      v36 = v24;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch face crop image data from response payload %@: %@", buf, 0x2Au);

      v5 = v21;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __93__HMCameraClipManager_fetchFaceCropDataRepresentationForSignificantEventWithUUID_completion___block_invoke_189;
    v30[3] = &unk_1E754E458;
    v18 = &v32;
    v32 = a1[6];
    v19 = &v31;
    v31 = v5;
    v20 = v30;
  }

  [v17 invokeBlock:v20];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchHeroFrameDataRepresentationForClipWithUUID:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch hero frame image data for clip"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = v14;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching hero frame image data for clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v28 = @"HMCCM.mk.cu";
  v29 = v6;
  v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.fhfdr" destination:v17 payload:v18];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = v10;
  v26 = v8;
  v27 = v7;
  v20 = v7;
  v21 = v8;
  [v19 setResponseHandler:v25];
  v22 = [(HMCameraClipManager *)v10 context];
  v23 = [v22 messageDispatcher];
  [v23 sendMessage:v19 completionHandler:0];

  v24 = *MEMORY[0x1E69E9840];
}

void __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_dataForKey:@"HMCCM.mk.id"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v12 = v26 = v5;
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      v15 = [v7 shortDescription];
      *buf = 138543874;
      v34 = v12;
      v35 = 2114;
      v36 = v14;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched hero frame image data: %@", buf, 0x20u);

      v5 = v26;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke_185;
    v27[3] = &unk_1E754E458;
    v18 = &v29;
    v29 = a1[6];
    v19 = &v28;
    v28 = v7;
    v20 = v27;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      HMFGetLogIdentifier();
      v22 = v21 = v5;
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138544130;
      v34 = v22;
      v35 = 2114;
      v36 = v24;
      v37 = 2112;
      v38 = v6;
      v39 = 2112;
      v40 = v21;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch hero frame image data from response payload %@: %@", buf, 0x2Au);

      v5 = v21;
    }

    objc_autoreleasePoolPop(v8);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __82__HMCameraClipManager_fetchHeroFrameDataRepresentationForClipWithUUID_completion___block_invoke_184;
    v30[3] = &unk_1E754E458;
    v18 = &v32;
    v32 = a1[6];
    v19 = &v31;
    v31 = v5;
    v20 = v30;
  }

  [v17 invokeBlock:v20];

  v25 = *MEMORY[0x1E69E9840];
}

- (void)fetchCountOfClipsWithDateInterval:(id)a3 quality:(int64_t)a4 completion:(id)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of clips with date interval"];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    [v10 identifier];
    v15 = v33 = v9;
    v16 = [v15 shortDescription];
    v17 = HMStringFromCameraClipQuality(a4);
    *buf = 138544130;
    v40 = v14;
    v41 = 2114;
    v42 = v16;
    v43 = 2112;
    v44 = v8;
    v45 = 2112;
    v46 = v17;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of clips with date interval: %@ quality: %@", buf, 0x2Au);

    v9 = v33;
  }

  objc_autoreleasePoolPop(v11);
  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  v19 = [(HMCameraClipManager *)v12 profileUniqueIdentifier];
  v20 = [v18 initWithTarget:v19];

  v37[0] = @"HMCCM.mk.daf";
  v21 = [v8 startDate];
  v38[0] = v21;
  v37[1] = @"HMCCM.mk.db";
  v22 = [v8 endDate];
  v38[1] = v22;
  v37[2] = @"HMCCM.mk.v";
  v23 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v38[2] = v23;
  v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v38 forKeys:v37 count:3];

  v25 = MEMORY[0x1E69A2A10];
  v26 = [v24 copy];
  v27 = [v25 messageWithName:@"HMCCM.m.fcoc" destination:v20 payload:v26];

  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke;
  v34[3] = &unk_1E754E480;
  v34[4] = v12;
  v35 = v10;
  v36 = v9;
  v28 = v9;
  v29 = v10;
  [v27 setResponseHandler:v34];
  v30 = [(HMCameraClipManager *)v12 context];
  v31 = [v30 messageDispatcher];
  [v31 sendMessage:v27 completionHandler:0];

  v32 = *MEMORY[0x1E69E9840];
}

void __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_numberForKey:@"HMCCM.mk.coc"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      *buf = 138543874;
      v34 = v12;
      v35 = 2114;
      v36 = v14;
      v37 = 2112;
      v38 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] context];
    v16 = [v15 delegateCaller];
    v24 = MEMORY[0x1E69E9820];
    v25 = 3221225472;
    v26 = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke_180;
    v27 = &unk_1E754E458;
    v17 = &v29;
    v29 = a1[6];
    v18 = &v28;
    v28 = v7;
    v19 = &v24;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      *buf = 138543874;
      v34 = v20;
      v35 = 2114;
      v36 = v22;
      v37 = 2112;
      v38 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch count of clips: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v15 = [a1[4] context];
    v16 = [v15 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __76__HMCameraClipManager_fetchCountOfClipsWithDateInterval_quality_completion___block_invoke_179;
    v30[3] = &unk_1E754E458;
    v17 = &v32;
    v32 = a1[6];
    v18 = &v31;
    v31 = v5;
    v19 = v30;
  }

  [v16 invokeBlock:{v19, v24, v25, v26, v27, v28}];

  v23 = *MEMORY[0x1E69E9840];
}

- (void)fetchCountOfAllClipsWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:v7 endDate:v8];

  [(HMCameraClipManager *)self fetchCountOfClipsWithDateInterval:v9 completion:v5];
}

- (void)fetchClipsWithDateInterval:(id)a3 quality:(int64_t)a4 limit:(unint64_t)a5 shouldOrderAscending:(BOOL)a6 completion:(id)a7
{
  v39 = a6;
  v57 = *MEMORY[0x1E69E9840];
  v38 = a3;
  v37 = a7;
  v11 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clips with date interval"];
  v12 = objc_autoreleasePoolPush();
  v13 = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v16 = [v11 identifier];
    v17 = [v16 shortDescription];
    HMStringFromCameraClipQuality(a4);
    v35 = a4;
    v19 = v18 = a5;
    *buf = 138544642;
    v46 = v15;
    v47 = 2114;
    v48 = v17;
    v49 = 2112;
    v50 = v19;
    v51 = 2112;
    v52 = v38;
    v53 = 2048;
    v54 = v18;
    v55 = 1024;
    v56 = v39;
    _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clips with date interval: %@ quality: %@ limit: %lu shouldOrderAscending: %d", buf, 0x3Au);

    a5 = v18;
    a4 = v35;
  }

  objc_autoreleasePoolPop(v12);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  v21 = [(HMCameraClipManager *)v13 profileUniqueIdentifier];
  v36 = [v20 initWithTarget:v21];

  v43[0] = @"HMCCM.mk.daf";
  v22 = [v38 startDate];
  v44[0] = v22;
  v43[1] = @"HMCCM.mk.db";
  v23 = [v38 endDate];
  v44[1] = v23;
  v43[2] = @"HMCCM.mk.v";
  v24 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v44[2] = v24;
  v43[3] = @"HMCCM.mk.l";
  v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a5];
  v44[3] = v25;
  v43[4] = @"HMCCM.mk.soa";
  v26 = [MEMORY[0x1E696AD98] numberWithBool:v39];
  v44[4] = v26;
  v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:v43 count:5];

  v28 = [(HMCameraClipManager *)v13 fetchClientFactory];
  v29 = [v11 identifier];
  v30 = [(HMCameraClipManager *)v13 context];
  v31 = (v28)[2](v28, v29, v30, @"HMCCM.m.fcs", v36);

  [v31 setClassForUnarchiving:objc_opt_class()];
  [v31 setPayload:v27];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __96__HMCameraClipManager_fetchClipsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke;
  v40[3] = &unk_1E754C418;
  v40[4] = v13;
  v41 = v11;
  v42 = v37;
  v32 = v37;
  v33 = v11;
  [v31 fetchWithCompletion:v40];

  v34 = *MEMORY[0x1E69E9840];
}

void __96__HMCameraClipManager_fetchClipsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v18 = 138543874;
      v19 = v11;
      v20 = 2114;
      v21 = v13;
      v22 = 2048;
      v23 = [v5 count];
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu clips", &v18, 0x20u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [*(a1 + 40) identifier];
    v16 = [v15 shortDescription];
    v18 = 138543874;
    v19 = v14;
    v20 = 2114;
    v21 = v16;
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch clips: %@", &v18, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))();

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllClipsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  v6 = [MEMORY[0x1E695DF00] distantPast];
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:v6 endDate:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__HMCameraClipManager_fetchAllClipsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = v4;
  v9 = v4;
  [(HMCameraClipManager *)self fetchClipsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __51__HMCameraClipManager_fetchAllClipsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v5 = MEMORY[0x1E695DFD8];
    v6 = a3;
    v8 = [v5 setWithArray:a2];
    (*(v3 + 16))(v3);
  }

  else
  {
    v7 = *(v3 + 16);
    v8 = a3;
    v7(v3, 0);
  }
}

- (void)fetchClipForSignificantEventWithUUID:(id)a3 completion:(id)a4
{
  v43 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clip for significant event"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v38 = v12;
    v39 = 2114;
    v40 = v14;
    v41 = 2112;
    v42 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clip for significant event with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = objc_alloc(MEMORY[0x1E69A2A00]);
  v16 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v17 = [v15 initWithTarget:v16];

  v35 = @"HMCCM.mk.seu";
  v18 = [MEMORY[0x1E695DFD8] setWithObject:v6];
  v36 = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fcfse" destination:v17 payload:v19];
  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke;
  v30 = &unk_1E754D030;
  v31 = v10;
  v32 = v8;
  v33 = v6;
  v34 = v7;
  v21 = v6;
  v22 = v7;
  v23 = v8;
  [v20 setResponseHandler:&v27];
  v24 = [(HMCameraClipManager *)v10 context:v27];
  v25 = [v24 messageDispatcher];
  [v25 sendMessage:v20 completionHandler:0];

  v26 = *MEMORY[0x1E69E9840];
}

void __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v39[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v39[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [*(a1 + 40) identifier];
      v15 = [v14 shortDescription];
      v16 = *(a1 + 48);
      *buf = 138544130;
      v32 = v13;
      v33 = 2114;
      v34 = v15;
      v35 = 2112;
      v36 = v16;
      v37 = 2112;
      v38 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched clip for significant event with UUID %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v17 = [*(a1 + 32) context];
    v18 = [v17 delegateCaller];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_169;
    v26[3] = &unk_1E754E458;
    v19 = &v28;
    v28 = *(a1 + 56);
    v27 = v8;
    [v18 invokeBlock:v26];

    v20 = v27;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [*(a1 + 40) identifier];
      v23 = [v22 shortDescription];
      *buf = 138543874;
      v32 = v21;
      v33 = 2114;
      v34 = v23;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v20 = [*(a1 + 32) context];
    v24 = [v20 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_168;
    v29[3] = &unk_1E754E430;
    v19 = &v30;
    v30 = *(a1 + 56);
    [v24 invokeBlock:v29];
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __71__HMCameraClipManager_fetchClipForSignificantEventWithUUID_completion___block_invoke_168(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)fetchClipWithUUID:(id)a3 completion:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch clip for significant event"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v31 = v12;
    v32 = 2114;
    v33 = v14;
    v34 = 2112;
    v35 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching clip with UUID %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v28 = @"HMCCM.mk.cu";
  v29 = v6;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  v17 = [(HMCameraClipManager *)v10 profileUniqueIdentifier];
  v18 = [v16 initWithTarget:v17];

  v19 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.fc" destination:v18 payload:v15];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = v10;
  v26 = v8;
  v27 = v7;
  v20 = v7;
  v21 = v8;
  [v19 setResponseHandler:v25];
  v22 = [(HMCameraClipManager *)v10 context];
  v23 = [v22 messageDispatcher];
  [v23 sendMessage:v19 completionHandler:0];

  v24 = *MEMORY[0x1E69E9840];
}

void __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v36[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v36 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMCCM.mk.c" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v15;
      v34 = 2112;
      v35 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched clip: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v16 = [a1[4] context];
    v17 = [v16 delegateCaller];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_166;
    v25[3] = &unk_1E754E458;
    v18 = &v27;
    v27 = a1[6];
    v26 = v8;
    [v17 invokeBlock:v25];

    v19 = v26;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      v21 = [a1[5] identifier];
      v22 = [v21 shortDescription];
      *buf = 138543874;
      v31 = v20;
      v32 = 2114;
      v33 = v22;
      v34 = 2112;
      v35 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find clip in response payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v19 = [a1[4] context];
    v23 = [v19 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_163;
    v28[3] = &unk_1E754E430;
    v18 = &v29;
    v29 = a1[6];
    [v23 invokeBlock:v28];
  }

  v24 = *MEMORY[0x1E69E9840];
}

void __52__HMCameraClipManager_fetchClipWithUUID_completion___block_invoke_163(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (id)videoSegmentsAssetContextForClip:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  os_unfair_lock_lock_with_options();
  v5 = [(HMCameraClipManager *)self videoAssetContextsByClipUUID];
  v6 = [v4 uniqueIdentifier];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (v7)
  {
    v8 = [v7 expirationDate];
    v9 = [MEMORY[0x1E695DF00] date];
    [v8 timeIntervalSinceDate:v9];
    v11 = v10;

    if (v11 < 120.0)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        v16 = [v4 uniqueIdentifier];
        v17 = [v16 UUIDString];
        v22 = 138543874;
        v23 = v15;
        v24 = 2112;
        v25 = v17;
        v26 = 2112;
        v27 = v7;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Video segments asset context for clip UUID %@ has expired: %@", &v22, 0x20u);
      }

      objc_autoreleasePoolPop(v12);
      v18 = [(HMCameraClipManager *)v13 videoAssetContextsByClipUUID];
      v19 = [v4 uniqueIdentifier];
      [v18 setObject:0 forKeyedSubscript:v19];

      v7 = 0;
    }
  }

  os_unfair_lock_unlock(&self->_lock);

  v20 = *MEMORY[0x1E69E9840];

  return v7;
}

- (void)performCloudPullWithCompletion:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Perform cloud pull"];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 identifier];
    v11 = [v10 shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = v11;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing cloud pull", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  v13 = [(HMCameraClipManager *)v7 profileUniqueIdentifier];
  v14 = [v12 initWithTarget:v13];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCCM.m.pcp" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __54__HMCameraClipManager_performCloudPullWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = v7;
  v22 = v5;
  v23 = v4;
  v16 = v4;
  v17 = v5;
  [v15 setResponseHandler:v21];
  v18 = [(HMCameraClipManager *)v7 context];
  v19 = [v18 messageDispatcher];
  [v19 sendMessage:v15];

  v20 = *MEMORY[0x1E69E9840];
}

void __54__HMCameraClipManager_performCloudPullWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v27 = *MEMORY[0x1E69E9840];
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
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v21 = 138543874;
      v22 = v11;
      v23 = 2114;
      v24 = v13;
      v25 = 2112;
      v26 = v5;
      v14 = "%{public}@[%{public}@] Failed to perform cloud pull: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v21, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v21 = 138543618;
    v22 = v11;
    v23 = 2114;
    v24 = v13;
    v14 = "%{public}@[%{public}@] Successfully performed cloud pull";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v18 = [*(a1 + 32) context];
  v19 = [v18 delegateCaller];
  [v19 callCompletion:*(a1 + 48) error:v5];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [(HMCameraClipManager *)self delegateCallersByObservers];
  v5 = [v4 count];

  v6 = [(HMCameraClipManager *)self delegateCallersByObservers];
  [v6 removeObjectForKey:v9];

  v7 = [(HMCameraClipManager *)self delegateCallersByObservers];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMCameraClipManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  v12 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMCameraClipManager *)self delegateCallersByObservers];
  v8 = [v7 count];

  if (v6)
  {
    v9 = [[HMDelegateCaller alloc] initWithQueue:v6];
  }

  else
  {
    v10 = [(HMCameraClipManager *)self context];
    v9 = [v10 delegateCaller];
  }

  v11 = [(HMCameraClipManager *)self delegateCallersByObservers];
  [v11 setObject:v9 forKey:v12];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [(HMCameraClipManager *)self subscribe];
  }
}

- (void)dealloc
{
  v3 = [(NSMapTable *)self->_delegateCallersByObservers keyEnumerator];
  v4 = [v3 nextObject];

  if (v4)
  {
    [(HMCameraClipManager *)self unsubscribe];
  }

  v5 = [(HMCameraClipManager *)self context];
  v6 = [v5 messageDispatcher];
  [v6 deregisterReceiver:self];

  v7.receiver = self;
  v7.super_class = HMCameraClipManager;
  [(HMCameraClipManager *)&v7 dealloc];
}

- (HMCameraClipManager)initWithContext:(id)a3 profileUniqueIdentifier:(id)a4 zoneName:(id)a5 notificationCenter:(id)a6
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
    v32 = _HMFPreconditionFailure();
    return __91__HMCameraClipManager_initWithContext_profileUniqueIdentifier_zoneName_notificationCenter___block_invoke(v32);
  }

  v33.receiver = self;
  v33.super_class = HMCameraClipManager;
  v16 = [(HMCameraClipManager *)&v33 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_context, a3);
    v18 = [v12 copy];
    profileUniqueIdentifier = v17->_profileUniqueIdentifier;
    v17->_profileUniqueIdentifier = v18;

    v20 = [v13 copy];
    zoneName = v17->_zoneName;
    v17->_zoneName = v20;

    objc_storeStrong(&v17->_notificationCenter, a6);
    v22 = [MEMORY[0x1E695DF90] dictionary];
    clipsByFetchUUID = v17->_clipsByFetchUUID;
    v17->_clipsByFetchUUID = v22;

    v24 = [MEMORY[0x1E695DF90] dictionary];
    significantEventsByFetchUUID = v17->_significantEventsByFetchUUID;
    v17->_significantEventsByFetchUUID = v24;

    v26 = [MEMORY[0x1E695DF90] dictionary];
    videoAssetContextsByClipUUID = v17->_videoAssetContextsByClipUUID;
    v17->_videoAssetContextsByClipUUID = v26;

    v28 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v17->_delegateCallersByObservers;
    v17->_delegateCallersByObservers = v28;

    fetchClientFactory = v17->_fetchClientFactory;
    v17->_fetchClientFactory = &__block_literal_global_47985;
  }

  return v17;
}

HMCameraObjectFetchClient *__91__HMCameraClipManager_initWithContext_profileUniqueIdentifier_zoneName_notificationCenter___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = a2;
  v12 = [[HMCameraObjectFetchClient alloc] initWithUUID:v11 context:v10 messageName:v9 destination:v8];

  return v12;
}

- (HMCameraClipManager)initWithContext:(id)a3 profileUniqueIdentifier:(id)a4 zoneName:(id)a5 home:(id)a6
{
  v9 = MEMORY[0x1E696AD88];
  v10 = a5;
  v11 = a4;
  v12 = a3;
  v13 = [v9 defaultCenter];
  v14 = [(HMCameraClipManager *)self initWithContext:v12 profileUniqueIdentifier:v11 zoneName:v10 notificationCenter:v13];

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t67 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t67, &__block_literal_global_246);
  }

  v3 = logCategory__hmf_once_v68;

  return v3;
}

uint64_t __34__HMCameraClipManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v68;
  logCategory__hmf_once_v68 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)zoneNameForRecordingManagementServiceUUID:(id)a3
{
  v3 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:a3 identifierSalt:0 withSalts:0];
  v4 = [v3 UUIDString];
  v5 = [@"camera-clips-" stringByAppendingString:v4];

  return v5;
}

@end