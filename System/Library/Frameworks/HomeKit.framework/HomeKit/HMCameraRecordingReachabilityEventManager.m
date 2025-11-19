@interface HMCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)a3 uniqueIdentifier:(id)a4;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)a3 uniqueIdentifier:(id)a4 notificationCenter:(id)a5;
- (id)logIdentifier;
- (void)addObserver:(id)a3 queue:(id)a4;
- (void)configure;
- (void)dealloc;
- (void)deleteAllEventsWithCompletionHandler:(id)a3;
- (void)fetchAllEventsWithCompletion:(id)a3;
- (void)fetchCountOfAllEventsWithCompletion:(id)a3;
- (void)fetchCountOfEventsWithDateInterval:(id)a3 completion:(id)a4;
- (void)fetchEventsAfterDate:(id)a3 withLimit:(unint64_t)a4 completion:(id)a5;
- (void)fetchEventsBeforeDate:(id)a3 withLimit:(unint64_t)a4 completion:(id)a5;
- (void)handleDaemonReconnectedNotification:(id)a3;
- (void)handleDidChangeEventsMessage:(id)a3;
- (void)performCloudPullWithCompletion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMCameraRecordingReachabilityEventManager

- (id)logIdentifier
{
  v2 = [(HMCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)handleDaemonReconnectedNotification:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543362;
    v13 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Handling daemon reconnected notification by reconnecting to daemon if necessary", &v12, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  os_unfair_lock_lock_with_options();
  v9 = [(HMCameraRecordingReachabilityEventManager *)v6 delegateCallersByObservers];
  v10 = [v9 count] == 0;

  os_unfair_lock_unlock(&v6->_lock);
  if (!v10)
  {
    [(HMCameraRecordingReachabilityEventManager *)v6 subscribe];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleDidChangeEventsMessage:(id)a3
{
  v43[2] = *MEMORY[0x1E69E9840];
  v22 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v7;
    _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling reachability events changed message", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v25 = [v22 unarchivedObjectForKey:@"HMCRREM.mk.ue" ofClasses:v8];

  v24 = [v22 setForKey:@"HMCRREM.mk.reu"];
  os_unfair_lock_lock_with_options();
  v26 = [(NSMapTable *)v5->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&v5->_lock);
  v9 = objc_autoreleasePoolPush();
  v10 = v5;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v25 count];
    v14 = [v24 count];
    *buf = 138543874;
    v38 = v12;
    v39 = 2048;
    v40 = v13;
    v41 = 2048;
    v42 = v14;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated events, %lu removed event UUIDs", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = [v26 keyEnumerator];
  v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v15)
  {
    v16 = *v33;
    v17 = MEMORY[0x1E69E9820];
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v33 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v32 + 1) + 8 * i);
        v20 = [v26 objectForKey:v19];
        v27[0] = v17;
        v27[1] = 3221225472;
        v27[2] = __74__HMCameraRecordingReachabilityEventManager_handleDidChangeEventsMessage___block_invoke;
        v27[3] = &unk_1E754DE30;
        v28 = v25;
        v29 = v19;
        v30 = v10;
        v31 = v24;
        [v20 invokeBlock:v27];
      }

      v15 = [obj countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v15);
  }

  [v22 respondWithSuccess];
  v21 = *MEMORY[0x1E69E9840];
}

uint64_t __74__HMCameraRecordingReachabilityEventManager_handleDidChangeEventsMessage___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) reachabilityEventManager:*(a1 + 48) didUpdateReachabilityEvents:*(a1 + 32)];
  }

  result = [*(a1 + 56) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 reachabilityEventManager:v4 didRemoveReachabilityEventsWithUUIDs:v5];
  }

  return result;
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
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Unsubscribing from camera reachability event changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [(HMCameraRecordingReachabilityEventManager *)v4 uniqueIdentifier];
  v9 = [v7 initWithTarget:v8];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.um" destination:v9 payload:0];
  v11 = [(HMCameraRecordingReachabilityEventManager *)v4 context];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v10];

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
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Subscribing to camera reachability event changes", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = objc_alloc(MEMORY[0x1E69A2A00]);
  v8 = [(HMCameraRecordingReachabilityEventManager *)v4 uniqueIdentifier];
  v9 = [v7 initWithTarget:v8];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.sm" destination:v9 payload:0];
  v11 = [(HMCameraRecordingReachabilityEventManager *)v4 context];
  v12 = [v11 messageDispatcher];
  [v12 sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  v3 = [(HMCameraRecordingReachabilityEventManager *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMCRREM.m.dcem" receiver:self selector:sel_handleDidChangeEventsMessage_];

  v5 = [(HMCameraRecordingReachabilityEventManager *)self notificationCenter];
  [v5 addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)deleteAllEventsWithCompletionHandler:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v24 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting all reachability events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = objc_alloc(MEMORY[0x1E69A2A00]);
  v10 = [(HMCameraRecordingReachabilityEventManager *)v6 uniqueIdentifier];
  v11 = [v9 initWithTarget:v10];

  v12 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.daem" destination:v11 payload:0];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke;
  v20 = &unk_1E754DE00;
  v21 = v6;
  v22 = v4;
  v13 = v4;
  [v12 setResponseHandler:&v17];
  v14 = [(HMCameraRecordingReachabilityEventManager *)v6 context:v17];
  v15 = [v14 messageDispatcher];
  [v15 sendMessage:v12 completionHandler:0];

  v16 = *MEMORY[0x1E69E9840];
}

void __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
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
      *buf = 138543618;
      v25 = v11;
      v26 = 2112;
      v27 = v5;
      v12 = "%{public}@Failed to delete all reachability events: %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_ERROR;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v13, v14, v12, buf, v15);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543362;
    v25 = v11;
    v12 = "%{public}@Successfully deleted all reachability events";
    v13 = v10;
    v14 = OS_LOG_TYPE_INFO;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  v16 = [*(a1 + 32) context];
  v17 = [v16 delegateCaller];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke_82;
  v21[3] = &unk_1E754E458;
  v18 = *(a1 + 40);
  v22 = v5;
  v23 = v18;
  v19 = v5;
  [v17 invokeBlock:v21];

  v20 = *MEMORY[0x1E69E9840];
}

- (void)fetchCountOfAllEventsWithCompletion:(id)a3
{
  v4 = MEMORY[0x1E696AB80];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [MEMORY[0x1E695DF00] distantPast];
  v8 = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:v7 endDate:v8];

  [(HMCameraRecordingReachabilityEventManager *)self fetchCountOfEventsWithDateInterval:v9 completion:v5];
}

- (void)fetchCountOfEventsWithDateInterval:(id)a3 completion:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of reachability events with date interval"];
  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = [v8 identifier];
    v14 = [v13 shortDescription];
    *buf = 138543874;
    v33 = v12;
    v34 = 2114;
    v35 = v14;
    v36 = 2112;
    v37 = v6;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of reachability events with date interval %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v15 = [MEMORY[0x1E695DF90] dictionary];
  v16 = [v6 startDate];
  [v15 setObject:v16 forKeyedSubscript:@"HMCRREM.mk.da"];

  v17 = [v6 endDate];
  [v15 setObject:v17 forKeyedSubscript:@"HMCRREM.mk.db"];

  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  v19 = [(HMCameraRecordingReachabilityEventManager *)v10 uniqueIdentifier];
  v20 = [v18 initWithTarget:v19];

  v21 = MEMORY[0x1E69A2A10];
  v22 = [v15 copy];
  v23 = [v21 messageWithName:@"HMCRREM.m.fcoem" destination:v20 payload:v22];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke;
  v29[3] = &unk_1E754E480;
  v29[4] = v10;
  v30 = v8;
  v31 = v7;
  v24 = v7;
  v25 = v8;
  [v23 setResponseHandler:v29];
  v26 = [(HMCameraRecordingReachabilityEventManager *)v10 context];
  v27 = [v26 messageDispatcher];
  [v27 sendMessage:v23];

  v28 = *MEMORY[0x1E69E9840];
}

void __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = a1[4];
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [a1[5] identifier];
      v13 = [v12 shortDescription];
      *buf = 138543874;
      v35 = v11;
      v36 = 2114;
      v37 = v13;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch count of reachability events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v14 = [a1[4] context];
    v15 = [v14 delegateCaller];
    v31[0] = MEMORY[0x1E69E9820];
    v31[1] = 3221225472;
    v31[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_80;
    v31[3] = &unk_1E754E458;
    v33 = a1[6];
    v32 = v5;
    [v15 invokeBlock:v31];

    v16 = v33;
  }

  else
  {
    v17 = [v6 hmf_numberForKey:@"HMCRREM.mk.coe"];
    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138543874;
      v35 = v21;
      v36 = 2114;
      v37 = v23;
      v38 = 2048;
      v39 = [v17 unsignedIntegerValue];
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %lu reachability events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v24 = [a1[4] context];
    v25 = [v24 delegateCaller];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_81;
    v28[3] = &unk_1E754E458;
    v26 = a1[6];
    v29 = v17;
    v30 = v26;
    v16 = v17;
    [v25 invokeBlock:v28];
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)fetchAllEventsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  v6 = [MEMORY[0x1E695DF00] distantPast];
  v7 = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:v6 endDate:v7];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HMCameraRecordingReachabilityEventManager_fetchAllEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = v4;
  v9 = v4;
  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v8 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __74__HMCameraRecordingReachabilityEventManager_fetchAllEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

- (void)fetchEventsAfterDate:(id)a3 withLimit:(unint64_t)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E696AB80];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x1E695DF00] distantFuture];
  v13 = [v11 initWithStartDate:v10 endDate:v12];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:a4 shouldOrderAscending:1 completion:v9];
}

- (void)fetchEventsBeforeDate:(id)a3 withLimit:(unint64_t)a4 completion:(id)a5
{
  v8 = MEMORY[0x1E696AB80];
  v9 = a5;
  v10 = a3;
  v11 = [v8 alloc];
  v12 = [MEMORY[0x1E695DF00] distantPast];
  v13 = [v11 initWithStartDate:v12 endDate:v10];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:a4 shouldOrderAscending:0 completion:v9];
}

void __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(id *a1, void *a2, void *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = a1[4];
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [a1[5] identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v37 = v10;
      v38 = 2114;
      v39 = v12;
      v40 = 2112;
      v41 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to fetch reachability events: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [a1[4] context];
    v14 = [v13 delegateCaller];
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke_68;
    v32[3] = &unk_1E754E458;
    v34 = a1[6];
    v33 = v5;
    [v14 invokeBlock:v32];

    v15 = v34;
  }

  else
  {
    v35[0] = objc_opt_class();
    v35[1] = objc_opt_class();
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];
    v17 = [v6 hmf_unarchivedObjectForKey:@"HMCRREM.mrk.fe" ofClasses:v16];

    v18 = objc_autoreleasePoolPush();
    v19 = a1[4];
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      v24 = [v17 count];
      *buf = 138543874;
      v37 = v21;
      v38 = 2114;
      v39 = v23;
      v40 = 2048;
      v41 = v24;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu reachability events", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v25 = [a1[4] context];
    v26 = [v25 delegateCaller];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = __111__HMCameraRecordingReachabilityEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke_72;
    v29[3] = &unk_1E754E458;
    v27 = a1[6];
    v30 = v17;
    v31 = v27;
    v15 = v17;
    [v26 invokeBlock:v29];
  }

  v28 = *MEMORY[0x1E69E9840];
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
  v13 = [(HMCameraRecordingReachabilityEventManager *)v7 uniqueIdentifier];
  v14 = [v12 initWithTarget:v13];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.pcp" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__HMCameraRecordingReachabilityEventManager_performCloudPullWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = v7;
  v22 = v5;
  v23 = v4;
  v16 = v4;
  v17 = v5;
  [v15 setResponseHandler:v21];
  v18 = [(HMCameraRecordingReachabilityEventManager *)v7 context];
  v19 = [v18 messageDispatcher];
  [v19 sendMessage:v15];

  v20 = *MEMORY[0x1E69E9840];
}

void __76__HMCameraRecordingReachabilityEventManager_performCloudPullWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
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
  v4 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v5 = [v4 count];

  v6 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [v6 removeObjectForKey:v9];

  v7 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [v7 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)a3 queue:(id)a4
{
  v12 = a3;
  v6 = a4;
  os_unfair_lock_lock_with_options();
  v7 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [v7 count];

  if (v6)
  {
    v9 = [[HMDelegateCaller alloc] initWithQueue:v6];
  }

  else
  {
    v10 = [(HMCameraRecordingReachabilityEventManager *)self context];
    v9 = [v10 delegateCaller];
  }

  v11 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [v11 setObject:v9 forKey:v12];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [(HMCameraRecordingReachabilityEventManager *)self subscribe];
  }
}

- (void)dealloc
{
  v3 = [(NSMapTable *)self->_delegateCallersByObservers keyEnumerator];
  v4 = [v3 nextObject];

  if (v4)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }

  v5 = [(HMCameraRecordingReachabilityEventManager *)self context];
  v6 = [v5 messageDispatcher];
  [v6 deregisterReceiver:self];

  v7.receiver = self;
  v7.super_class = HMCameraRecordingReachabilityEventManager;
  [(HMCameraRecordingReachabilityEventManager *)&v7 dealloc];
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)a3 uniqueIdentifier:(id)a4 notificationCenter:(id)a5
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
    v18 = _HMFPreconditionFailure();
    return [(HMCameraRecordingReachabilityEventManager *)v18 initWithContext:v19 uniqueIdentifier:v20, v21];
  }

  v22.receiver = self;
  v22.super_class = HMCameraRecordingReachabilityEventManager;
  v13 = [(HMCameraRecordingReachabilityEventManager *)&v22 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, a3);
    objc_storeStrong(&v14->_uniqueIdentifier, a4);
    objc_storeStrong(&v14->_notificationCenter, a5);
    v15 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v14->_delegateCallersByObservers;
    v14->_delegateCallersByObservers = v15;
  }

  return v14;
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = MEMORY[0x1E696AD88];
  v7 = a4;
  v8 = a3;
  v9 = [v6 defaultCenter];
  v10 = [(HMCameraRecordingReachabilityEventManager *)self initWithContext:v8 uniqueIdentifier:v7 notificationCenter:v9];

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21_62823 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21_62823, &__block_literal_global_62824);
  }

  v3 = logCategory__hmf_once_v22_62825;

  return v3;
}

uint64_t __56__HMCameraRecordingReachabilityEventManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v22_62825;
  logCategory__hmf_once_v22_62825 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end