@interface HMCameraRecordingReachabilityEventManager
+ (id)logCategory;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier;
- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier notificationCenter:(id)center;
- (id)logIdentifier;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)configure;
- (void)dealloc;
- (void)deleteAllEventsWithCompletionHandler:(id)handler;
- (void)fetchAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion;
- (void)fetchEventsAfterDate:(id)date withLimit:(unint64_t)limit completion:(id)completion;
- (void)fetchEventsBeforeDate:(id)date withLimit:(unint64_t)limit completion:(id)completion;
- (void)handleDaemonReconnectedNotification:(id)notification;
- (void)handleDidChangeEventsMessage:(id)message;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)removeObserver:(id)observer;
- (void)subscribe;
- (void)unsubscribe;
@end

@implementation HMCameraRecordingReachabilityEventManager

- (id)logIdentifier
{
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)self uniqueIdentifier];
  uUIDString = [uniqueIdentifier UUIDString];

  return uUIDString;
}

- (void)handleDaemonReconnectedNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)selfCopy delegateCallersByObservers];
  v10 = [delegateCallersByObservers count] == 0;

  os_unfair_lock_unlock(&selfCopy->_lock);
  if (!v10)
  {
    [(HMCameraRecordingReachabilityEventManager *)selfCopy subscribe];
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)handleDidChangeEventsMessage:(id)message
{
  v43[2] = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  v25 = [messageCopy unarchivedObjectForKey:@"HMCRREM.mk.ue" ofClasses:v8];

  v24 = [messageCopy setForKey:@"HMCRREM.mk.reu"];
  os_unfair_lock_lock_with_options();
  v26 = [(NSMapTable *)selfCopy->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&selfCopy->_lock);
  v9 = objc_autoreleasePoolPush();
  v10 = selfCopy;
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

  [messageCopy respondWithSuccess];
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
  selfCopy = self;
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
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v9 = [v7 initWithTarget:uniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.um" destination:v9 payload:0];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)subscribe
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v9 = [v7 initWithTarget:uniqueIdentifier];

  v10 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.sm" destination:v9 payload:0];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v10];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  context = [(HMCameraRecordingReachabilityEventManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCRREM.m.dcem" receiver:self selector:sel_handleDidChangeEventsMessage_];

  notificationCenter = [(HMCameraRecordingReachabilityEventManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleDaemonReconnectedNotification_ name:@"HMDaemonReconnectedNotification" object:0];
}

- (void)deleteAllEventsWithCompletionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
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
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v11 = [v9 initWithTarget:uniqueIdentifier];

  v12 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.daem" destination:v11 payload:0];
  v17 = MEMORY[0x1E69E9820];
  v18 = 3221225472;
  v19 = __82__HMCameraRecordingReachabilityEventManager_deleteAllEventsWithCompletionHandler___block_invoke;
  v20 = &unk_1E754DE00;
  v21 = selfCopy;
  v22 = handlerCopy;
  v13 = handlerCopy;
  [v12 setResponseHandler:&v17];
  v14 = [(HMCameraRecordingReachabilityEventManager *)selfCopy context:v17];
  messageDispatcher = [v14 messageDispatcher];
  [messageDispatcher sendMessage:v12 completionHandler:0];

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

- (void)fetchCountOfAllEventsWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  v6 = [v4 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:distantPast endDate:distantFuture];

  [(HMCameraRecordingReachabilityEventManager *)self fetchCountOfEventsWithDateInterval:v9 completion:completionCopy];
}

- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion
{
  v38 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of reachability events with date interval"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v33 = v12;
    v34 = 2114;
    v35 = shortDescription;
    v36 = 2112;
    v37 = intervalCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of reachability events with date interval %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  startDate = [intervalCopy startDate];
  [dictionary setObject:startDate forKeyedSubscript:@"HMCRREM.mk.da"];

  endDate = [intervalCopy endDate];
  [dictionary setObject:endDate forKeyedSubscript:@"HMCRREM.mk.db"];

  v18 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v20 = [v18 initWithTarget:uniqueIdentifier];

  v21 = MEMORY[0x1E69A2A10];
  v22 = [dictionary copy];
  v23 = [v21 messageWithName:@"HMCRREM.m.fcoem" destination:v20 payload:v22];

  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __91__HMCameraRecordingReachabilityEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke;
  v29[3] = &unk_1E754E480;
  v29[4] = selfCopy;
  v30 = v8;
  v31 = completionCopy;
  v24 = completionCopy;
  v25 = v8;
  [v23 setResponseHandler:v29];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v23];

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

- (void)fetchAllEventsWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = objc_alloc(MEMORY[0x1E696AB80]);
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v8 = [v5 initWithStartDate:distantPast endDate:distantFuture];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __74__HMCameraRecordingReachabilityEventManager_fetchAllEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
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

- (void)fetchEventsAfterDate:(id)date withLimit:(unint64_t)limit completion:(id)completion
{
  v8 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  dateCopy = date;
  v11 = [v8 alloc];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v13 = [v11 initWithStartDate:dateCopy endDate:distantFuture];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:limit shouldOrderAscending:1 completion:completionCopy];
}

- (void)fetchEventsBeforeDate:(id)date withLimit:(unint64_t)limit completion:(id)completion
{
  v8 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  dateCopy = date;
  v11 = [v8 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  v13 = [v11 initWithStartDate:distantPast endDate:dateCopy];

  [(HMCameraRecordingReachabilityEventManager *)self fetchEventsWithDateInterval:v13 limit:limit shouldOrderAscending:0 completion:completionCopy];
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

- (void)performCloudPullWithCompletion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Perform cloud pull"];
  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    identifier = [v5 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v25 = v9;
    v26 = 2114;
    v27 = shortDescription;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing cloud pull", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  v12 = objc_alloc(MEMORY[0x1E69A2A00]);
  uniqueIdentifier = [(HMCameraRecordingReachabilityEventManager *)selfCopy uniqueIdentifier];
  v14 = [v12 initWithTarget:uniqueIdentifier];

  v15 = [MEMORY[0x1E69A2A10] messageWithName:@"HMCRREM.m.pcp" destination:v14 payload:0];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __76__HMCameraRecordingReachabilityEventManager_performCloudPullWithCompletion___block_invoke;
  v21[3] = &unk_1E754E480;
  v21[4] = selfCopy;
  v22 = v5;
  v23 = completionCopy;
  v16 = completionCopy;
  v17 = v5;
  [v15 setResponseHandler:v21];
  context = [(HMCameraRecordingReachabilityEventManager *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher sendMessage:v15];

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

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v5 = [delegateCallersByObservers count];

  delegateCallersByObservers2 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 removeObjectForKey:observerCopy];

  delegateCallersByObservers3 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers count];

  if (queueCopy)
  {
    delegateCaller = [[HMDelegateCaller alloc] initWithQueue:queueCopy];
  }

  else
  {
    context = [(HMCameraRecordingReachabilityEventManager *)self context];
    delegateCaller = [context delegateCaller];
  }

  delegateCallersByObservers2 = [(HMCameraRecordingReachabilityEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 setObject:delegateCaller forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8)
  {
    [(HMCameraRecordingReachabilityEventManager *)self subscribe];
  }
}

- (void)dealloc
{
  keyEnumerator = [(NSMapTable *)self->_delegateCallersByObservers keyEnumerator];
  nextObject = [keyEnumerator nextObject];

  if (nextObject)
  {
    [(HMCameraRecordingReachabilityEventManager *)self unsubscribe];
  }

  context = [(HMCameraRecordingReachabilityEventManager *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:self];

  v7.receiver = self;
  v7.super_class = HMCameraRecordingReachabilityEventManager;
  [(HMCameraRecordingReachabilityEventManager *)&v7 dealloc];
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier notificationCenter:(id)center
{
  contextCopy = context;
  identifierCopy = identifier;
  centerCopy = center;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!identifierCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = centerCopy;
  if (!centerCopy)
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
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v14->_uniqueIdentifier, identifier);
    objc_storeStrong(&v14->_notificationCenter, center);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v14->_delegateCallersByObservers;
    v14->_delegateCallersByObservers = weakToStrongObjectsMapTable;
  }

  return v14;
}

- (HMCameraRecordingReachabilityEventManager)initWithContext:(id)context uniqueIdentifier:(id)identifier
{
  v6 = MEMORY[0x1E696AD88];
  identifierCopy = identifier;
  contextCopy = context;
  defaultCenter = [v6 defaultCenter];
  v10 = [(HMCameraRecordingReachabilityEventManager *)self initWithContext:contextCopy uniqueIdentifier:identifierCopy notificationCenter:defaultCenter];

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