@interface HMUserActionPredictionProvider
+ (id)logCategory;
- (HMUserActionPredictionProvider)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher UUID:(id)d dataSource:(id)source predictionDataSource:(id)dataSource predictionTransformer:(id)transformer darwinNotificationProvider:(id)provider;
- (HMUserActionPredictionProviderDataSource)dataSource;
- (void)_fetchPredictionsFromBackendAndUpdateHomes;
- (void)_fetchPredictionsFromBackendAndUpdateHomesWithCompletion:(uint64_t)completion;
- (void)_recalculatePredictions;
- (void)addSubscriber:(id)subscriber forHomeIdentifier:(id)identifier;
- (void)configure;
- (void)dealloc;
- (void)fetchPredictionsForHomeWithIdentifier:(id)identifier completion:(id)completion;
- (void)handleRefreshPredictionsMessage:(id)message;
- (void)notifySubscribersOfChangedPredictions:(void *)predictions forHomeWithIdentifier:;
- (void)recalculatePredictions;
- (void)removeSubscriber:(id)subscriber forHomeIdentifier:(id)identifier;
@end

@implementation HMUserActionPredictionProvider

- (HMUserActionPredictionProviderDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)fetchPredictionsForHomeWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = [(HMUserActionPredictionProvider *)self workQueue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __83__HMUserActionPredictionProvider_fetchPredictionsForHomeWithIdentifier_completion___block_invoke;
  v11[3] = &unk_1E754C9E8;
  objc_copyWeak(&v14, &location);
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(workQueue, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __83__HMUserActionPredictionProvider_fetchPredictionsForHomeWithIdentifier_completion___block_invoke(id *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    os_unfair_lock_lock_with_options();
    if (*(WeakRetained + 24) == 1)
    {
      *(WeakRetained + 24) = 0;
      os_unfair_lock_unlock(WeakRetained + 2);
      v3 = objc_autoreleasePoolPush();
      v4 = WeakRetained;
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier();
        *buf = 138543362;
        v18 = v6;
        _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Running deferred fetch from backend before returning predictions", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v3);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __83__HMUserActionPredictionProvider_fetchPredictionsForHomeWithIdentifier_completion___block_invoke_52;
      v14[3] = &unk_1E754E0F8;
      v14[4] = v4;
      v15 = a1[4];
      v16 = a1[5];
      [(HMUserActionPredictionProvider *)v4 _fetchPredictionsFromBackendAndUpdateHomesWithCompletion:v14];
    }

    else
    {
      os_unfair_lock_unlock(WeakRetained + 2);
      v7 = [WeakRetained lastMappedPredictionsPerHome];
      v8 = [v7 objectForKeyedSubscript:a1[4]];
      v9 = [v8 copy];
      v10 = v9;
      v11 = MEMORY[0x1E695E0F0];
      if (v9)
      {
        v11 = v9;
      }

      v12 = v11;

      (*(a1[5] + 2))();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

void __83__HMUserActionPredictionProvider_fetchPredictionsForHomeWithIdentifier_completion___block_invoke_52(uint64_t a1)
{
  v2 = [*(a1 + 32) lastMappedPredictionsPerHome];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = [v3 copy];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  (*(*(a1 + 48) + 16))();
}

- (void)_fetchPredictionsFromBackendAndUpdateHomesWithCompletion:(uint64_t)completion
{
  v27[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  workQueue = [completion workQueue];
  dispatch_assert_queue_V2(workQueue);

  dataSource = [completion dataSource];
  v6 = [dataSource deviceUnlockedSinceBootForUserActionPredictionProvider:completion];

  if (v6)
  {
    objc_initWeak(&location, completion);
    predictionDataSource = [completion predictionDataSource];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __91__HMUserActionPredictionProvider__fetchPredictionsFromBackendAndUpdateHomesWithCompletion___block_invoke;
    v20[3] = &unk_1E754C958;
    objc_copyWeak(&v22, &location);
    v21 = v3;
    [predictionDataSource fetchPredictionsFromBackendWithCompletion:v20];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  else
  {
    os_unfair_lock_lock_with_options();
    *(completion + 24) = 1;
    os_unfair_lock_unlock((completion + 8));
    workQueue2 = [completion workQueue];
    dispatch_assert_queue_V2(workQueue2);

    v9 = completion + 12;
    v10 = *(completion + 12) == -1;
    v11 = objc_autoreleasePoolPush();
    completionCopy = completion;
    v13 = HMFGetOSLogHandle();
    v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
    if (v10)
    {
      if (v14)
      {
        v16 = HMFGetLogIdentifier();
        LODWORD(location) = 138543362;
        *(&location + 4) = v16;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Device has not been unlocked once, registering for first unlock notification", &location, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      objc_initWeak(&from, completionCopy);
      darwinNotificationProvider = [completionCopy darwinNotificationProvider];
      workQueue3 = [completionCopy workQueue];
      *&location = MEMORY[0x1E69E9820];
      *(&location + 1) = 3221225472;
      v25 = __53__HMUserActionPredictionProvider__waitForFirstUnlock__block_invoke;
      v26 = &unk_1E754C980;
      objc_copyWeak(v27, &from);
      [darwinNotificationProvider notifyRegisterDispatch:"com.apple.mobile.keybagd.lock_status" outToken:v9 queue:workQueue3 handler:&location];

      objc_destroyWeak(v27);
      objc_destroyWeak(&from);
    }

    else
    {
      if (v14)
      {
        v15 = HMFGetLogIdentifier();
        LODWORD(location) = 138543362;
        *(&location + 4) = v15;
        _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Device has not been unlocked once, waiting for first unlock notification", &location, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
    }

    v3[2](v3);
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __91__HMUserActionPredictionProvider__fetchPredictionsFromBackendAndUpdateHomesWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = [WeakRetained workQueue];
    dispatch_assert_queue_V2(v2);

    [(HMUserActionPredictionProvider *)WeakRetained _recalculatePredictions];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)_recalculatePredictions
{
  v78 = *MEMORY[0x1E69E9840];
  if (self)
  {
    selfCopy = self;
    workQueue = [self workQueue];
    dispatch_assert_queue_V2(workQueue);

    predictionDataSource = [selfCopy predictionDataSource];
    predictions = [predictionDataSource predictions];

    v59 = predictions;
    v5 = [predictions na_dictionaryByBucketingObjectsUsingKeyGenerator:&__block_literal_global_34];
    dataSource = [selfCopy dataSource];
    v7 = [dataSource homesForUserActionPredictionProvider:selfCopy];

    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
    v63 = v5;
    if (v8)
    {
      v9 = v8;
      v62 = *v69;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v69 != v62)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v68 + 1) + 8 * i);
          uniqueIdentifier = [v11 uniqueIdentifier];
          v13 = [v5 objectForKeyedSubscript:uniqueIdentifier];

          if (v13)
          {
            uniqueIdentifier2 = [v11 uniqueIdentifier];
            v15 = [v5 objectForKeyedSubscript:uniqueIdentifier2];

            v16 = v15;
            v17 = v11;
            if (!v16)
            {
              goto LABEL_37;
            }

            if (!v11)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v16 = MEMORY[0x1E695E0F0];
            v18 = MEMORY[0x1E695E0F0];
            v19 = v11;
            if (!v11)
            {
              goto LABEL_38;
            }
          }

          workQueue2 = [selfCopy workQueue];
          dispatch_assert_queue_V2(workQueue2);

          predictionTransformer = [selfCopy predictionTransformer];
          v22 = [predictionTransformer predictionsWithDuetPredictions:v16 forHome:v11];

          uniqueIdentifier3 = [v11 uniqueIdentifier];
          v24 = v22;
          v25 = uniqueIdentifier3;
          if (!v25)
          {
LABEL_36:
            _HMFPreconditionFailure();
LABEL_37:
            _HMFPreconditionFailure();
LABEL_38:
            _HMFPreconditionFailure();
LABEL_39:
            _HMFPreconditionFailure();
          }

          if (!v24)
          {
            goto LABEL_39;
          }

          v26 = v25;
          workQueue3 = [selfCopy workQueue];
          dispatch_assert_queue_V2(workQueue3);

          lastMappedPredictionsPerHome = [selfCopy lastMappedPredictionsPerHome];
          v29 = [lastMappedPredictionsPerHome objectForKeyedSubscript:v26];
          v30 = v29;
          v31 = MEMORY[0x1E695E0F0];
          if (v29)
          {
            v31 = v29;
          }

          v32 = v31;

          v33 = [v32 isEqualToArray:v24];
          if ((v33 & 1) == 0)
          {
            v34 = [v24 copy];
            lastMappedPredictionsPerHome2 = [selfCopy lastMappedPredictionsPerHome];
            [lastMappedPredictionsPerHome2 setObject:v34 forKeyedSubscript:v26];

            [(HMUserActionPredictionProvider *)selfCopy notifySubscribersOfChangedPredictions:v24 forHomeWithIdentifier:v26];
          }

          v5 = v63;
        }

        v9 = [obj countByEnumeratingWithState:&v68 objects:v73 count:16];
      }

      while (v9);
    }

    v36 = [obj na_map:&__block_literal_global_38];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    lastMappedPredictionsPerHome3 = [selfCopy lastMappedPredictionsPerHome];
    v38 = [lastMappedPredictionsPerHome3 copy];

    v39 = [v38 countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v65;
      v60 = selfCopy;
      do
      {
        for (j = 0; j != v40; ++j)
        {
          if (*v65 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v64 + 1) + 8 * j);
          if (([v36 containsObject:v43] & 1) == 0)
          {
            v44 = v43;
            if (!v44)
            {
              goto LABEL_36;
            }

            v45 = v44;
            workQueue4 = [selfCopy workQueue];
            dispatch_assert_queue_V2(workQueue4);

            v47 = objc_autoreleasePoolPush();
            v48 = selfCopy;
            v49 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v49, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v50 = v40;
              v51 = v41;
              v52 = v36;
              v54 = v53 = v38;
              *buf = 138543618;
              v75 = v54;
              v76 = 2112;
              v77 = v45;
              _os_log_impl(&dword_19BB39000, v49, OS_LOG_TYPE_INFO, "%{public}@Removing all predictions for home: %@", buf, 0x16u);

              v38 = v53;
              v36 = v52;
              v41 = v51;
              v40 = v50;
              selfCopy = v60;
            }

            objc_autoreleasePoolPop(v47);
            lastMappedPredictionsPerHome4 = [v48 lastMappedPredictionsPerHome];
            v56 = [lastMappedPredictionsPerHome4 objectForKeyedSubscript:v45];

            lastMappedPredictionsPerHome5 = [v48 lastMappedPredictionsPerHome];
            [lastMappedPredictionsPerHome5 setObject:0 forKeyedSubscript:v45];

            if ([v56 count])
            {
              [(HMUserActionPredictionProvider *)v48 notifySubscribersOfChangedPredictions:v45 forHomeWithIdentifier:?];
            }
          }
        }

        v40 = [v38 countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v40);
    }
  }

  v58 = *MEMORY[0x1E69E9840];
}

- (void)notifySubscribersOfChangedPredictions:(void *)predictions forHomeWithIdentifier:
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  predictionsCopy = predictions;
  if (!v5)
  {
    _HMFPreconditionFailure();
  }

  v7 = predictionsCopy;
  array = [MEMORY[0x1E695DF70] array];
  os_unfair_lock_lock_with_options();
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = *(self + 16);
  v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [*(self + 16) objectForKey:v12];
        v14 = [v13 containsObject:v7];

        if (v14)
        {
          [array addObject:v12];
        }
      }

      v9 = [v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock((self + 8));
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v15 = array;
  v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v16)
  {
    v17 = *v22;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v15);
        }

        [*(*(&v21 + 1) + 8 * j) didUpdatePredictions:v5 forHomeWithIdentifier:v7];
      }

      v16 = [v15 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  v19 = *MEMORY[0x1E69E9840];
}

id __57__HMUserActionPredictionProvider__recalculatePredictions__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 homeIdentifier];

  v6 = [v4 initWithUUIDString:v5];

  return v6;
}

void __53__HMUserActionPredictionProvider__waitForFirstUnlock__block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained dataSource];
    if ([v3 deviceUnlockedSinceBootForUserActionPredictionProvider:v2])
    {
      v4 = v2[3];

      if (v4 != -1)
      {
        v5 = objc_autoreleasePoolPush();
        v6 = v2;
        v7 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          v8 = HMFGetLogIdentifier();
          v11 = 138543362;
          v12 = v8;
          _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Notified that device has been unlocked for the first time, fetching predictions from backend", &v11, 0xCu);
        }

        objc_autoreleasePoolPop(v5);
        v9 = [(os_unfair_lock_s *)v6 darwinNotificationProvider];
        [v9 notifyCancel:v2[3]];

        v2[3] = -1;
        os_unfair_lock_lock_with_options();
        LOBYTE(v6[6]._os_unfair_lock_opaque) = 0;
        os_unfair_lock_unlock(v6 + 2);
        [(HMUserActionPredictionProvider *)v6 _fetchPredictionsFromBackendAndUpdateHomes];
      }
    }

    else
    {
    }
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)_fetchPredictionsFromBackendAndUpdateHomes
{
  if (result)
  {
    v1 = result;
    workQueue = [result workQueue];
    dispatch_assert_queue_V2(workQueue);

    return [(HMUserActionPredictionProvider *)v1 _fetchPredictionsFromBackendAndUpdateHomesWithCompletion:?];
  }

  return result;
}

- (void)recalculatePredictions
{
  workQueue = [(HMUserActionPredictionProvider *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__HMUserActionPredictionProvider_recalculatePredictions__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)handleRefreshPredictionsMessage:(id)message
{
  workQueue = [(HMUserActionPredictionProvider *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __66__HMUserActionPredictionProvider_handleRefreshPredictionsMessage___block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __66__HMUserActionPredictionProvider_handleRefreshPredictionsMessage___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  if (!v1)
  {
LABEL_9:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v2 = [*(a1 + 32) workQueue];
  dispatch_assert_queue_V2(v2);

  os_unfair_lock_lock_with_options();
  if (![*(v1 + 16) count])
  {
    *(v1 + 24) = 1;
    v4 = objc_autoreleasePoolPush();
    v5 = v1;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@No active prediction subscribers, will fetch from backend later.", &v9, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    os_unfair_lock_unlock((v1 + 8));
    goto LABEL_9;
  }

  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 8));
  v3 = *MEMORY[0x1E69E9840];

  [(HMUserActionPredictionProvider *)v1 _fetchPredictionsFromBackendAndUpdateHomes];
}

- (void)removeSubscriber:(id)subscriber forHomeIdentifier:(id)identifier
{
  v33 = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v25 = 138543874;
    v26 = v11;
    v27 = 2112;
    v28 = subscriberCopy;
    v29 = 2112;
    v30 = identifierCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Removing subscriber (%@) for predictions in home: %@", &v25, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [(NSMapTable *)selfCopy->_subscribers objectForKey:subscriberCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
  }

  v15 = v14;

  if ([v15 containsObject:identifierCopy])
  {
    v16 = [MEMORY[0x1E695DFD8] setWithObject:identifierCopy];
    v17 = [v15 na_setByRemovingObjectsFromSet:v16];

    v18 = [v17 count];
    subscribers = selfCopy->_subscribers;
    if (v18)
    {
      [(NSMapTable *)subscribers setObject:v17 forKey:subscriberCopy];
    }

    else
    {
      [(NSMapTable *)subscribers removeObjectForKey:subscriberCopy];
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v20 = objc_autoreleasePoolPush();
    v21 = selfCopy;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      v25 = 138544130;
      v26 = v23;
      v27 = 2112;
      v28 = subscriberCopy;
      v29 = 2112;
      v30 = identifierCopy;
      v31 = 2112;
      v32 = v17;
      _os_log_impl(&dword_19BB39000, v22, OS_LOG_TYPE_INFO, "%{public}@Removed subscriber (%@) for predictions in home: %@, and updated subscribed homes to: %@", &v25, 0x2Au);
    }

    objc_autoreleasePoolPop(v20);
  }

  else
  {

    os_unfair_lock_unlock(&selfCopy->_lock);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)addSubscriber:(id)subscriber forHomeIdentifier:(id)identifier
{
  v30[3] = *MEMORY[0x1E69E9840];
  subscriberCopy = subscriber;
  identifierCopy = identifier;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *v28 = 138543874;
    *&v28[4] = v11;
    *&v28[12] = 2112;
    *&v28[14] = subscriberCopy;
    *&v28[22] = 2112;
    v29 = identifierCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_INFO, "%{public}@Adding subscriber (%@) for predictions in home: %@", v28, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  os_unfair_lock_lock_with_options();
  v12 = [(NSMapTable *)selfCopy->_subscribers objectForKey:subscriberCopy];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DFD8] set];
  }

  v15 = v14;

  if ([v15 containsObject:identifierCopy])
  {

    os_unfair_lock_unlock(&selfCopy->_lock);
    v16 = 0;
  }

  else
  {
    v16 = [v15 setByAddingObject:identifierCopy];
    [(NSMapTable *)selfCopy->_subscribers setObject:v16 forKey:subscriberCopy];
    shouldRefetchFromBackend = selfCopy->_shouldRefetchFromBackend;
    if (shouldRefetchFromBackend)
    {
      selfCopy->_shouldRefetchFromBackend = 0;
    }

    os_unfair_lock_unlock(&selfCopy->_lock);
    v18 = objc_autoreleasePoolPush();
    v19 = selfCopy;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      *v28 = 138544130;
      *&v28[4] = v21;
      *&v28[12] = 2112;
      *&v28[14] = subscriberCopy;
      *&v28[22] = 2112;
      v29 = identifierCopy;
      LOWORD(v30[0]) = 2112;
      *(v30 + 2) = v16;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Added subscriber (%@) for predictions in home: %@, and updated subscribed homes to: %@", v28, 0x2Au);
    }

    objc_autoreleasePoolPop(v18);
    if (shouldRefetchFromBackend)
    {
      v22 = objc_autoreleasePoolPush();
      v23 = v19;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        *v28 = 138543362;
        *&v28[4] = v25;
        _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@Running fetch from backend on subscriber addition", v28, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      workQueue = [(HMUserActionPredictionProvider *)v23 workQueue];
      *v28 = MEMORY[0x1E69E9820];
      *&v28[8] = 3221225472;
      *&v28[16] = __75__HMUserActionPredictionProvider_fetchPredictionsFromBackendAndUpdateHomes__block_invoke;
      v29 = &unk_1E754E2A8;
      v30[0] = v23;
      dispatch_async(workQueue, v28);
    }
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)configure
{
  workQueue = [(HMUserActionPredictionProvider *)self workQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__HMUserActionPredictionProvider_configure__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(workQueue, block);

  messageDispatcher = [(HMUserActionPredictionProvider *)self messageDispatcher];
  [messageDispatcher registerForMessage:@"HMUserActionPredictionRefreshMessage" receiver:self selector:sel_handleRefreshPredictionsMessage_];
}

void __43__HMUserActionPredictionProvider_configure__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) predictionDataSource];
  v3 = [v2 fetchPredictionsFromCache];

  v4 = *(a1 + 32);

  [(HMUserActionPredictionProvider *)v4 _recalculatePredictions];
}

- (void)dealloc
{
  if (self->_firstUnlockToken != -1)
  {
    [(HMDarwinNotificationProvider *)self->_darwinNotificationProvider notifyCancel:?];
  }

  v3.receiver = self;
  v3.super_class = HMUserActionPredictionProvider;
  [(HMUserActionPredictionProvider *)&v3 dealloc];
}

- (HMUserActionPredictionProvider)initWithWorkQueue:(id)queue messageDispatcher:(id)dispatcher UUID:(id)d dataSource:(id)source predictionDataSource:(id)dataSource predictionTransformer:(id)transformer darwinNotificationProvider:(id)provider
{
  queueCopy = queue;
  obj = dispatcher;
  dispatcherCopy = dispatcher;
  dCopy = d;
  dCopy2 = d;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  dataSourceCopy2 = dataSource;
  transformerCopy = transformer;
  transformerCopy2 = transformer;
  providerCopy = provider;
  if (!queueCopy)
  {
    _HMFPreconditionFailure();
    goto LABEL_12;
  }

  if (!dispatcherCopy)
  {
LABEL_12:
    _HMFPreconditionFailure();
    goto LABEL_13;
  }

  if (!dCopy2)
  {
LABEL_13:
    _HMFPreconditionFailure();
    goto LABEL_14;
  }

  if (!dataSourceCopy2)
  {
LABEL_14:
    _HMFPreconditionFailure();
    goto LABEL_15;
  }

  if (!sourceCopy)
  {
LABEL_15:
    _HMFPreconditionFailure();
    goto LABEL_16;
  }

  if (!transformerCopy2)
  {
LABEL_16:
    _HMFPreconditionFailure();
    goto LABEL_17;
  }

  v23 = providerCopy;
  if (!providerCopy)
  {
LABEL_17:
    v31 = _HMFPreconditionFailure();
    return +[(HMUserActionPredictionProvider *)v31];
  }

  v37.receiver = self;
  v37.super_class = HMUserActionPredictionProvider;
  v24 = [(HMUserActionPredictionProvider *)&v37 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_workQueue, queue);
    objc_storeWeak(&v25->_dataSource, sourceCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    lastMappedPredictionsPerHome = v25->_lastMappedPredictionsPerHome;
    v25->_lastMappedPredictionsPerHome = dictionary;

    objc_storeStrong(&v25->_messageDispatcher, obj);
    objc_storeStrong(&v25->_uuid, dCopy);
    objc_storeStrong(&v25->_predictionDataSource, dataSourceCopy);
    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    subscribers = v25->_subscribers;
    v25->_subscribers = weakToStrongObjectsMapTable;

    objc_storeStrong(&v25->_predictionTransformer, transformerCopy);
    *&v25->_lock._os_unfair_lock_opaque = 0xFFFFFFFF00000000;
    objc_storeStrong(&v25->_darwinNotificationProvider, provider);
    v25->_shouldRefetchFromBackend = 1;
  }

  return v25;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t18 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t18, &__block_literal_global_54_52529);
  }

  v3 = logCategory__hmf_once_v19;

  return v3;
}

uint64_t __45__HMUserActionPredictionProvider_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v19;
  logCategory__hmf_once_v19 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end