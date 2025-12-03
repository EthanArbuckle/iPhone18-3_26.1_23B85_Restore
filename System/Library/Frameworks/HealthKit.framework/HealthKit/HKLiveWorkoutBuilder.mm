@interface HKLiveWorkoutBuilder
- (BOOL)shouldCollectWorkoutEvents;
- (HKLiveWorkoutBuilder)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)configuration device:(HKDevice *)device;
- (HKLiveWorkoutBuilder)initWithHealthStore:(id)store session:(id)session builderConfiguration:(id)configuration builderIdentifier:(id)identifier;
- (HKLiveWorkoutDataSource)dataSource;
- (HKWorkoutActivity)currentWorkoutActivity;
- (HKWorkoutSession)workoutSession;
- (NSArray)additionalDataSources;
- (id)_privateDelegate;
- (id)delegate;
- (void)_lock_updateElapsedTimeCache;
- (void)_lock_updateEvents:(id)events;
- (void)clientRemote_didBeginActivity:(id)activity;
- (void)clientRemote_didEndActivity:(id)activity;
- (void)clientRemote_didUpdateActivities:(id)activities;
- (void)clientRemote_didUpdateMetadata:(id)metadata;
- (void)clientRemote_didUpdateStatistics:(id)statistics;
- (void)connectionInterrupted;
- (void)setAdditionalDataSources:(id)sources;
- (void)setDataSource:(HKLiveWorkoutDataSource *)dataSource;
- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error;
@end

@implementation HKLiveWorkoutBuilder

- (HKLiveWorkoutBuilder)initWithHealthStore:(id)store session:(id)session builderConfiguration:(id)configuration builderIdentifier:(id)identifier
{
  sessionCopy = session;
  identifierCopy = identifier;
  configurationCopy = configuration;
  storeCopy = store;
  identifier = [sessionCopy identifier];
  [configurationCopy setAssociatedSessionUUID:identifier];

  v18.receiver = self;
  v18.super_class = HKLiveWorkoutBuilder;
  v15 = [(HKWorkoutBuilder *)&v18 initWithHealthStore:storeCopy builderConfiguration:configurationCopy builderIdentifier:identifierCopy];

  if (v15)
  {
    objc_storeWeak(&v15->_workoutSession, sessionCopy);
    lock_additionalDataSources = v15->_lock_additionalDataSources;
    v15->_lock_additionalDataSources = MEMORY[0x1E695E0F0];
  }

  return v15;
}

- (HKLiveWorkoutBuilder)initWithHealthStore:(HKHealthStore *)healthStore configuration:(HKWorkoutConfiguration *)configuration device:(HKDevice *)device
{
  v8 = device;
  v9 = configuration;
  v10 = healthStore;
  v11 = objc_alloc_init(HKWorkoutBuilderConfiguration);
  [(HKWorkoutBuilderConfiguration *)v11 setDevice:v8];

  [(HKWorkoutBuilderConfiguration *)v11 setWorkoutConfiguration:v9];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v13 = [(HKLiveWorkoutBuilder *)self initWithHealthStore:v10 session:0 builderConfiguration:v11 builderIdentifier:uUID];

  return v13;
}

- (BOOL)shouldCollectWorkoutEvents
{
  os_unfair_lock_lock(&self->super._lock);
  configuration = [(HKWorkoutBuilder *)self configuration];
  shouldCollectWorkoutEvents = [configuration shouldCollectWorkoutEvents];

  os_unfair_lock_unlock(&self->super._lock);
  return shouldCollectWorkoutEvents;
}

void __54__HKLiveWorkoutBuilder_setShouldCollectWorkoutEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __54__HKLiveWorkoutBuilder_setShouldCollectWorkoutEvents___block_invoke_2_cold_1();
  }
}

- (id)_privateDelegate
{
  delegate = [(HKLiveWorkoutBuilder *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F06F8558])
  {
    v3 = delegate;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  return v3;
}

- (HKWorkoutActivity)currentWorkoutActivity
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(HKWorkoutActivity *)self->super._currentActivity copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)_lock_updateElapsedTimeCache
{
  v9.receiver = self;
  v9.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v9 _lock_updateElapsedTimeCache];
  delegate = [(HKLiveWorkoutBuilder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __52__HKLiveWorkoutBuilder__lock_updateElapsedTimeCache__block_invoke;
    v6[3] = &unk_1E7378400;
    v7 = delegate;
    selfCopy = self;
    dispatch_async(clientQueue, v6);
  }
}

- (void)_lock_updateEvents:(id)events
{
  eventsCopy = events;
  v12.receiver = self;
  v12.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v12 _lock_updateEvents:eventsCopy];
  _privateDelegate = [(HKLiveWorkoutBuilder *)self _privateDelegate];
  if (_privateDelegate)
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __43__HKLiveWorkoutBuilder__lock_updateEvents___block_invoke;
    block[3] = &unk_1E7376640;
    v9 = eventsCopy;
    v10 = _privateDelegate;
    selfCopy = self;
    dispatch_async(clientQueue, block);
  }
}

void __43__HKLiveWorkoutBuilder__lock_updateEvents___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
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

        [*(a1 + 40) workoutBuilder:*(a1 + 48) didCollectEvent:{*(*(&v8 + 1) + 8 * v6++), v8}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)setAdditionalDataSources:(id)sources
{
  sourcesCopy = sources;
  os_unfair_lock_lock(&self->super._lock);
  v5 = [MEMORY[0x1E695DFD8] setWithArray:self->_lock_additionalDataSources];
  v6 = [MEMORY[0x1E695DFD8] setWithArray:sourcesCopy];
  v7 = [v6 hk_minus:v5];
  v8 = [v5 hk_minus:v6];
  v9 = [MEMORY[0x1E695DFB8] orderedSetWithArray:sourcesCopy];

  array = [v9 array];
  lock_additionalDataSources = self->_lock_additionalDataSources;
  self->_lock_additionalDataSources = array;

  os_unfair_lock_unlock(&self->super._lock);
  proxyProvider = [(HKWorkoutBuilder *)self proxyProvider];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke;
  v15[3] = &unk_1E7383DE8;
  v16 = v7;
  v17 = v8;
  v13 = v8;
  v14 = v7;
  [proxyProvider fetchProxyWithHandler:v15 errorHandler:&__block_literal_global_80_0];
}

void __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 allObjects];
  v6 = [v5 hk_map:&__block_literal_global_76];
  [v4 remote_addDataSourcesWithIdentifiers:v6];

  v8 = [*(a1 + 40) allObjects];
  v7 = [v8 hk_map:&__block_literal_global_78];
  [v4 remote_removeDataSourcesWithIdentifiers:v7];
}

void __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke_4_cold_1();
  }
}

- (NSArray)additionalDataSources
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = [(NSArray *)self->_lock_additionalDataSources copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (HKLiveWorkoutDataSource)dataSource
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_lock_dataSource;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setDataSource:(HKLiveWorkoutDataSource *)dataSource
{
  v5 = dataSource;
  os_unfair_lock_lock(&self->super._lock);
  if (self->_lock_dataSource == v5)
  {
    os_unfair_lock_unlock(&self->super._lock);
  }

  else
  {
    objc_storeStrong(&self->_lock_dataSource, dataSource);
    os_unfair_lock_unlock(&self->super._lock);
    if (v5)
    {
      proxyProvider = [(HKWorkoutBuilder *)self proxyProvider];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __38__HKLiveWorkoutBuilder_setDataSource___block_invoke;
      v10[3] = &unk_1E7376870;
      v10[4] = self;
      [proxyProvider fetchProxyWithHandler:v10 errorHandler:&__block_literal_global_83_0];

      proxyProvider2 = [(HKWorkoutBuilder *)self proxyProvider];
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __38__HKLiveWorkoutBuilder_setDataSource___block_invoke_84;
      v8[3] = &unk_1E7376870;
      v9 = v5;
      [proxyProvider2 fetchProxyWithHandler:v8 errorHandler:&__block_literal_global_87];
    }
  }
}

void __38__HKLiveWorkoutBuilder_setDataSource___block_invoke(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 232);
  v3 = a2;
  v4 = [v2 identifier];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 remote_removeDataSourcesWithIdentifiers:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __38__HKLiveWorkoutBuilder_setDataSource___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke_4_cold_1();
  }
}

void __38__HKLiveWorkoutBuilder_setDataSource___block_invoke_84(uint64_t a1, void *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 identifier];
  v7[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
  [v3 remote_addDataSourcesWithIdentifiers:v5];

  v6 = *MEMORY[0x1E69E9840];
}

void __38__HKLiveWorkoutBuilder_setDataSource___block_invoke_2_85(uint64_t a1, void *a2)
{
  v2 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke_4_cold_1();
  }
}

- (void)stateMachine:(id)machine didEnterState:(id)state date:(id)date error:(id)error
{
  v27 = *MEMORY[0x1E69E9840];
  machineCopy = machine;
  stateCopy = state;
  dateCopy = date;
  errorCopy = error;
  os_unfair_lock_assert_owner(&self->super._lock);
  v25.receiver = self;
  v25.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v25 stateMachine:machineCopy didEnterState:stateCopy date:dateCopy error:errorCopy];
  if ([stateCopy index] == 3)
  {
    currentActivity = self->super._currentActivity;
    self->super._currentActivity = 0;

    [(HKLiveWorkoutDataSource *)self->_lock_dataSource workoutBuilderDidFinish];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v15 = self->_lock_additionalDataSources;
    v16 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v22;
      do
      {
        v19 = 0;
        do
        {
          if (*v22 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v21 + 1) + 8 * v19++) workoutBuilderDidFinish];
        }

        while (v17 != v19);
        v17 = [(NSArray *)v15 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v17);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)clientRemote_didUpdateStatistics:(id)statistics
{
  statisticsCopy = statistics;
  v12.receiver = self;
  v12.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v12 clientRemote_didUpdateStatistics:statisticsCopy];
  delegate = [(HKLiveWorkoutBuilder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __57__HKLiveWorkoutBuilder_clientRemote_didUpdateStatistics___block_invoke;
    block[3] = &unk_1E7376640;
    v9 = delegate;
    selfCopy = self;
    v11 = statisticsCopy;
    dispatch_async(clientQueue, block);
  }
}

void __57__HKLiveWorkoutBuilder_clientRemote_didUpdateStatistics___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [*(a1 + 48) allTypes];
  [v1 workoutBuilder:v2 didCollectDataOfTypes:v3];
}

- (void)clientRemote_didUpdateMetadata:(id)metadata
{
  v10.receiver = self;
  v10.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v10 clientRemote_didUpdateMetadata:metadata];
  _privateDelegate = [(HKLiveWorkoutBuilder *)self _privateDelegate];
  if (_privateDelegate)
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __55__HKLiveWorkoutBuilder_clientRemote_didUpdateMetadata___block_invoke;
    v7[3] = &unk_1E7378400;
    v8 = _privateDelegate;
    selfCopy = self;
    dispatch_async(clientQueue, v7);
  }
}

- (void)clientRemote_didBeginActivity:(id)activity
{
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v12 clientRemote_didBeginActivity:activityCopy];
  delegate = [(HKLiveWorkoutBuilder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HKLiveWorkoutBuilder_clientRemote_didBeginActivity___block_invoke;
    block[3] = &unk_1E7376640;
    v9 = delegate;
    selfCopy = self;
    v11 = activityCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)clientRemote_didEndActivity:(id)activity
{
  activityCopy = activity;
  v12.receiver = self;
  v12.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v12 clientRemote_didEndActivity:activityCopy];
  delegate = [(HKLiveWorkoutBuilder *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52__HKLiveWorkoutBuilder_clientRemote_didEndActivity___block_invoke;
    block[3] = &unk_1E7376640;
    v9 = delegate;
    selfCopy = self;
    v11 = activityCopy;
    dispatch_async(clientQueue, block);
  }
}

- (void)clientRemote_didUpdateActivities:(id)activities
{
  v10.receiver = self;
  v10.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v10 clientRemote_didUpdateActivities:activities];
  _privateDelegate = [(HKLiveWorkoutBuilder *)self _privateDelegate];
  if (_privateDelegate)
  {
    healthStore = [(HKWorkoutBuilder *)self healthStore];
    clientQueue = [healthStore clientQueue];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __57__HKLiveWorkoutBuilder_clientRemote_didUpdateActivities___block_invoke;
    v7[3] = &unk_1E7378400;
    v8 = _privateDelegate;
    selfCopy = self;
    dispatch_async(clientQueue, v7);
  }
}

- (void)connectionInterrupted
{
  proxyProvider = [(HKWorkoutBuilder *)self proxyProvider];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke;
  v6[3] = &unk_1E7376AE8;
  v6[4] = self;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke_2;
  v5[3] = &unk_1E7376898;
  v5[4] = self;
  [proxyProvider fetchProxyWithHandler:v6 errorHandler:v5];

  v4.receiver = self;
  v4.super_class = HKLiveWorkoutBuilder;
  [(HKWorkoutBuilder *)&v4 connectionInterrupted];
}

void __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = a2;
  os_unfair_lock_lock(v3 + 4);
  _HKInitializeLogging();
  v5 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    v15 = 138543362;
    v16 = v6;
    _os_log_impl(&dword_19197B000, v5, OS_LOG_TYPE_INFO, "%{public}@: Recovering data sources after server interruption.", &v15, 0xCu);
  }

  v7 = [*(*(a1 + 32) + 240) hk_map:&__block_literal_global_105_0];
  v8 = [v7 mutableCopy];

  v9 = *(a1 + 32);
  v10 = *(v9 + 232);
  if (v10)
  {
    v11 = [v10 identifier];
    [v8 addObject:v11];

    v9 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v9 + 256));
  v13 = [WeakRetained identifier];

  if (v13)
  {
    [v8 addObject:v13];
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  [v4 remote_addDataSourcesWithIdentifiers:v8];

  v14 = *MEMORY[0x1E69E9840];
}

void __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogWorkouts;
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke_2_cold_1(a1, v3, v4);
  }
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HKWorkoutSession)workoutSession
{
  WeakRetained = objc_loadWeakRetained(&self->_workoutSession);

  return WeakRetained;
}

void __54__HKLiveWorkoutBuilder_setShouldCollectWorkoutEvents___block_invoke_2_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Unable to change should collecte events configuration property with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __49__HKLiveWorkoutBuilder_setAdditionalDataSources___block_invoke_4_cold_1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_2(&dword_19197B000, v0, v1, "Unable to update workout builder server's data sources with error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void __45__HKLiveWorkoutBuilder_connectionInterrupted__block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138543618;
  v6 = v3;
  v7 = 2114;
  v8 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: Failed to recover data sources after connection invalidation: %{public}@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

@end