@interface HMCameraRecordingEventManager
+ (id)logCategory;
- (HMCameraRecordingEventManager)initWithContext:(id)context clipManager:(id)manager reachabilityEventManager:(id)eventManager;
- (NSString)zoneName;
- (id)mergedRecordingEventsWithRecordingEvents1:(id)events1 recordingEvents2:(id)events2 limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending;
- (void)addObserver:(id)observer queue:(id)queue;
- (void)clipManager:(id)manager didRemoveClipsWithUUIDs:(id)ds;
- (void)clipManager:(id)manager didUpdateClips:(id)clips;
- (void)deleteAllEventsWithCompletionHandler:(id)handler;
- (void)fetchAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfAllEventsWithCompletion:(id)completion;
- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion;
- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion;
- (void)notifyObserversOfUpdatedEvents:(id)events removedEventsWithUUIDs:(id)ds;
- (void)performCloudPullWithCompletion:(id)completion;
- (void)reachabilityEventManager:(id)manager didRemoveReachabilityEventsWithUUIDs:(id)ds;
- (void)reachabilityEventManager:(id)manager didUpdateReachabilityEvents:(id)events;
- (void)removeObserver:(id)observer;
@end

@implementation HMCameraRecordingEventManager

- (void)reachabilityEventManager:(id)manager didRemoveReachabilityEventsWithUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = [dsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed reachability event UUIDs", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:v12 removedEventsWithUUIDs:dsCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)reachabilityEventManager:(id)manager didUpdateReachabilityEvents:(id)events
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  eventsCopy = events;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = [eventsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated reachability events", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:eventsCopy removedEventsWithUUIDs:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)clipManager:(id)manager didRemoveClipsWithUUIDs:(id)ds
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  dsCopy = ds;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = [dsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu removed clip UUIDs", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:v12 removedEventsWithUUIDs:dsCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)clipManager:(id)manager didUpdateClips:(id)clips
{
  v18 = *MEMORY[0x1E69E9840];
  managerCopy = manager;
  clipsCopy = clips;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543618;
    v15 = v11;
    v16 = 2048;
    v17 = [clipsCopy count];
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Received %lu updated clips", &v14, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v12 = [MEMORY[0x1E695DFD8] set];
  [(HMCameraRecordingEventManager *)selfCopy notifyObserversOfUpdatedEvents:clipsCopy removedEventsWithUUIDs:v12];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)notifyObserversOfUpdatedEvents:(id)events removedEventsWithUUIDs:(id)ds
{
  v26 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  dsCopy = ds;
  os_unfair_lock_lock_with_options();
  v8 = [(NSMapTable *)self->_delegateCallersByObservers copy];
  os_unfair_lock_unlock(&self->_lock);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = [v8 keyEnumerator];
  v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = *v22;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v21 + 1) + 8 * i);
        v13 = [v8 objectForKey:v12];
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __87__HMCameraRecordingEventManager_notifyObserversOfUpdatedEvents_removedEventsWithUUIDs___block_invoke;
        v16[3] = &unk_1E754DE30;
        v17 = eventsCopy;
        v18 = v12;
        selfCopy = self;
        v20 = dsCopy;
        [v13 invokeBlock:v16];
      }

      v9 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __87__HMCameraRecordingEventManager_notifyObserversOfUpdatedEvents_removedEventsWithUUIDs___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    [*(a1 + 40) recordingEventManager:*(a1 + 48) didUpdateRecordingEvents:*(a1 + 32)];
  }

  result = [*(a1 + 56) count];
  if (result)
  {
    v3 = *(a1 + 40);
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);

    return [v3 recordingEventManager:v4 didRemoveRecordingEventsWithUUIDs:v5];
  }

  return result;
}

- (id)mergedRecordingEventsWithRecordingEvents1:(id)events1 recordingEvents2:(id)events2 limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending
{
  ascendingCopy = ascending;
  events1Copy = events1;
  events2Copy = events2;
  v26 = events1Copy;
  objectEnumerator = [events1Copy objectEnumerator];
  v25 = events2Copy;
  objectEnumerator2 = [events2Copy objectEnumerator];
  if (ascendingCopy)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  nextObject = [objectEnumerator nextObject];
  nextObject2 = [objectEnumerator2 nextObject];
  array = [MEMORY[0x1E695DF70] array];
  while (nextObject | nextObject2)
  {
    if ([array count] >= limit)
    {
      goto LABEL_16;
    }

    if (nextObject != 0 && nextObject2 != 0)
    {
      dateOfOccurrence = [nextObject2 dateOfOccurrence];
      dateOfOccurrence2 = [nextObject dateOfOccurrence];
      v19 = [dateOfOccurrence compare:dateOfOccurrence2];

      if (v19 != v13)
      {
        goto LABEL_11;
      }

      [array addObject:nextObject2];
      nextObject3 = [objectEnumerator2 nextObject];
    }

    else
    {
      if (nextObject)
      {
LABEL_11:
        [array addObject:nextObject];
        nextObject4 = [objectEnumerator nextObject];
        v22 = nextObject;
        nextObject = nextObject4;
        goto LABEL_14;
      }

      [array addObject:nextObject2];
      nextObject3 = [objectEnumerator2 nextObject];
      nextObject = 0;
    }

    v22 = nextObject2;
    nextObject2 = nextObject3;
LABEL_14:
  }

  nextObject2 = 0;
  nextObject = 0;
LABEL_16:
  v23 = [array copy];

  return v23;
}

- (void)deleteAllEventsWithCompletionHandler:(id)handler
{
  v16 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v15 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Deleting all recording events", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke;
  v12[3] = &unk_1E754D870;
  v12[4] = selfCopy;
  v13 = handlerCopy;
  v10 = handlerCopy;
  [clipManager deleteAllClipsWithCompletionHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 context];
    v6 = [v5 delegateCaller];
    [v6 callCompletion:*(a1 + 40) error:v3];
  }

  else
  {
    v7 = [v4 reachabilityEventManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke_2;
    v9[3] = &unk_1E754D870;
    v8 = *(a1 + 40);
    v9[4] = *(a1 + 32);
    v10 = v8;
    [v7 deleteAllEventsWithCompletionHandler:v9];
  }
}

void __70__HMCameraRecordingEventManager_deleteAllEventsWithCompletionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v6 = [v3 context];
  v5 = [v6 delegateCaller];
  [v5 callCompletion:*(a1 + 40) error:v4];
}

- (void)fetchCountOfAllEventsWithCompletion:(id)completion
{
  v4 = MEMORY[0x1E696AB80];
  completionCopy = completion;
  v6 = [v4 alloc];
  distantPast = [MEMORY[0x1E695DF00] distantPast];
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  v9 = [v6 initWithStartDate:distantPast endDate:distantFuture];

  [(HMCameraRecordingEventManager *)self fetchCountOfEventsWithDateInterval:v9 completion:completionCopy];
}

- (void)fetchCountOfEventsWithDateInterval:(id)interval completion:(id)completion
{
  v30 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v8 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch count of recording events with date interval"];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    identifier = [v8 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v25 = v12;
    v26 = 2114;
    v27 = shortDescription;
    v28 = 2112;
    v29 = intervalCopy;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching count of recording events with date interval %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke;
  v20[3] = &unk_1E7547AB8;
  v20[4] = selfCopy;
  v21 = v8;
  v22 = intervalCopy;
  v23 = completionCopy;
  v16 = intervalCopy;
  v17 = v8;
  v18 = completionCopy;
  [clipManager fetchCountOfClipsWithDateInterval:v16 completion:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = v12;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) reachabilityEventManager];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_22;
    v18[3] = &unk_1E7547AB8;
    v18[4] = *(a1 + 32);
    v14 = *(a1 + 48);
    v21 = *(a1 + 56);
    v19 = *(a1 + 40);
    v20 = v5;
    [v13 fetchCountOfEventsWithDateInterval:v14 completion:v18];
  }

  else
  {
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    [v16 callCompletion:*(a1 + 56) obj:0 error:v6];
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __79__HMCameraRecordingEventManager_fetchCountOfEventsWithDateInterval_completion___block_invoke_22(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      v22 = 138543874;
      v23 = v10;
      v24 = 2114;
      v25 = v12;
      v26 = 2112;
      v27 = v5;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched count of %@ reachability events", &v22, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 48) unsignedIntegerValue];
    v14 = [v5 unsignedIntegerValue];
    v15 = [*(a1 + 32) context];
    v16 = [v15 delegateCaller];
    v17 = *(a1 + 56);
    v18 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v14 + v13];
    [v16 callCompletion:v17 obj:v18 error:0];
  }

  else
  {
    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    [v20 callCompletion:*(a1 + 56) obj:0 error:v6];
  }

  v21 = *MEMORY[0x1E69E9840];
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
  v10[2] = __62__HMCameraRecordingEventManager_fetchAllEventsWithCompletion___block_invoke;
  v10[3] = &unk_1E754DDD8;
  v11 = completionCopy;
  v9 = completionCopy;
  [(HMCameraRecordingEventManager *)self fetchEventsWithDateInterval:v8 quality:0 limit:-1 shouldOrderAscending:1 completion:v10];
}

void __62__HMCameraRecordingEventManager_fetchAllEventsWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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

void __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      *buf = 138543874;
      v29 = v10;
      v30 = 2114;
      v31 = v12;
      v32 = 2048;
      v33 = [v5 count];
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu clips", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) reachabilityEventManager];
    v14 = *(a1 + 64);
    v15 = *(a1 + 72);
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke_14;
    v22[3] = &unk_1E7547A90;
    v22[4] = *(a1 + 32);
    v16 = *(a1 + 48);
    v25 = *(a1 + 56);
    v23 = *(a1 + 40);
    v17 = v5;
    v18 = *(a1 + 64);
    v24 = v17;
    v26 = v18;
    v27 = *(a1 + 72);
    [v13 fetchEventsWithDateInterval:v16 limit:v14 shouldOrderAscending:v15 completion:v22];
  }

  else
  {
    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    [v20 callCompletion:*(a1 + 56) obj:0 error:v6];
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __107__HMCameraRecordingEventManager_fetchEventsWithDateInterval_quality_limit_shouldOrderAscending_completion___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = *(a1 + 32);
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = [*(a1 + 40) identifier];
      v12 = [v11 shortDescription];
      v17 = 138543874;
      v18 = v10;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = [v5 count];
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully fetched %lu reachability events", &v17, 0x20u);
    }

    objc_autoreleasePoolPop(v7);
    v13 = [*(a1 + 32) mergedRecordingEventsWithRecordingEvents1:*(a1 + 48) recordingEvents2:v5 limit:*(a1 + 64) shouldOrderAscending:*(a1 + 72)];
    v14 = [*(a1 + 32) context];
    v15 = [v14 delegateCaller];
    [v15 callCompletion:*(a1 + 56) obj:v13 error:0];
  }

  else
  {
    v13 = [*(a1 + 32) context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 56) obj:0 error:v6];
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)fetchEventsWithDateInterval:(id)interval limit:(unint64_t)limit shouldOrderAscending:(BOOL)ascending completion:(id)completion
{
  ascendingCopy = ascending;
  v37 = *MEMORY[0x1E69E9840];
  intervalCopy = interval;
  completionCopy = completion;
  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Fetch recording events with date interval"];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    identifier = [v12 identifier];
    shortDescription = [identifier shortDescription];
    v19 = ascendingCopy;
    v20 = shortDescription;
    *buf = 138544386;
    v28 = v16;
    v29 = 2114;
    v30 = shortDescription;
    v31 = 2112;
    v32 = intervalCopy;
    v33 = 2048;
    limitCopy = limit;
    v35 = 1024;
    v36 = v19;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Fetching recording events with date interval: %@ limit: %lu shouldOrderAscending: %d", buf, 0x30u);
  }

  objc_autoreleasePoolPop(v13);
  context = [(HMCameraRecordingEventManager *)selfCopy context];
  delegateCaller = [context delegateCaller];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __99__HMCameraRecordingEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke;
  v25[3] = &unk_1E754E430;
  v26 = completionCopy;
  v23 = completionCopy;
  [delegateCaller invokeBlock:v25];

  v24 = *MEMORY[0x1E69E9840];
}

void __99__HMCameraRecordingEventManager_fetchEventsWithDateInterval_limit_shouldOrderAscending_completion___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:48 userInfo:0];
  (*(*(a1 + 32) + 16))();
}

- (void)performCloudPullWithCompletion:(id)completion
{
  v13 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Performing cloud pull", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  clipManager = [(HMCameraRecordingEventManager *)selfCopy clipManager];
  [clipManager performCloudPullWithCompletion:completionCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock_with_options();
  delegateCallersByObservers = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  v5 = [delegateCallersByObservers count];

  delegateCallersByObservers2 = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers2 removeObjectForKey:observerCopy];

  delegateCallersByObservers3 = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  v8 = [delegateCallersByObservers3 count];

  os_unfair_lock_unlock(&self->_lock);
  if (!v8 && v5)
  {
    clipManager = [(HMCameraRecordingEventManager *)self clipManager];
    [clipManager removeObserver:self];

    reachabilityEventManager = [(HMCameraRecordingEventManager *)self reachabilityEventManager];
    [reachabilityEventManager removeObserver:self];
  }
}

- (void)addObserver:(id)observer queue:(id)queue
{
  observerCopy = observer;
  queueCopy = queue;
  os_unfair_lock_lock_with_options();
  if (queueCopy)
  {
    delegateCaller = [[HMDelegateCaller alloc] initWithQueue:queueCopy];
  }

  else
  {
    context = [(HMCameraRecordingEventManager *)self context];
    delegateCaller = [context delegateCaller];
  }

  delegateCallersByObservers = [(HMCameraRecordingEventManager *)self delegateCallersByObservers];
  [delegateCallersByObservers setObject:delegateCaller forKey:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
  clipManager = [(HMCameraRecordingEventManager *)self clipManager];
  [clipManager addObserver:self queue:queueCopy];

  reachabilityEventManager = [(HMCameraRecordingEventManager *)self reachabilityEventManager];
  [reachabilityEventManager addObserver:self queue:queueCopy];
}

- (NSString)zoneName
{
  clipManager = [(HMCameraRecordingEventManager *)self clipManager];
  zoneName = [clipManager zoneName];

  return zoneName;
}

- (HMCameraRecordingEventManager)initWithContext:(id)context clipManager:(id)manager reachabilityEventManager:(id)eventManager
{
  contextCopy = context;
  managerCopy = manager;
  eventManagerCopy = eventManager;
  if (!contextCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!managerCopy)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v12 = eventManagerCopy;
  if (!eventManagerCopy)
  {
LABEL_9:
    v18 = _HMFPreconditionFailure();
    return [(HMCameraRecordingEventManager *)v18 initWithContext:v19 clipManager:v20 reachabilityEventManager:v21 home:v22, v23];
  }

  v24.receiver = self;
  v24.super_class = HMCameraRecordingEventManager;
  v13 = [(HMCameraRecordingEventManager *)&v24 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_context, context);
    objc_storeStrong(&v14->_clipManager, manager);
    objc_storeStrong(&v14->_reachabilityEventManager, eventManager);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    delegateCallersByObservers = v14->_delegateCallersByObservers;
    v14->_delegateCallersByObservers = weakToStrongObjectsMapTable;
  }

  return v14;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t16 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t16, &__block_literal_global_14537);
  }

  v3 = logCategory__hmf_once_v17;

  return v3;
}

uint64_t __44__HMCameraRecordingEventManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v17;
  logCategory__hmf_once_v17 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end