@interface HKLiveWorkoutDataSource
+ (id)clientInterface;
+ (id)serverInterface;
- (HKLiveWorkoutDataSource)initWithHealthStore:(HKHealthStore *)healthStore workoutConfiguration:(HKWorkoutConfiguration *)configuration;
- (NSSet)currentCollectedTypes;
- (NSSet)typesToCollect;
- (id)_queue_dataSourceConfiguration;
- (void)_queue_finishSetup;
- (void)clientRemote_didUpdateDataSourceConfiguration:(id)a3 shouldUpdateSampleTypesToCollect:(BOOL)a4;
- (void)connectionInterrupted;
- (void)disableCollectionForType:(HKQuantityType *)quantityType;
- (void)enableCollectionForType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate;
- (void)unitTest_synchronizeWithCompletion:(id)a3;
- (void)workoutBuilderDidFinish;
@end

@implementation HKLiveWorkoutDataSource

- (HKLiveWorkoutDataSource)initWithHealthStore:(HKHealthStore *)healthStore workoutConfiguration:(HKWorkoutConfiguration *)configuration
{
  v7 = healthStore;
  v8 = configuration;
  v24.receiver = self;
  v24.super_class = HKLiveWorkoutDataSource;
  v9 = [(HKLiveWorkoutDataSource *)&v24 init];
  if (v9)
  {
    v10 = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v10;

    objc_storeStrong(&v9->_healthStore, healthStore);
    v12 = [(HKWorkoutConfiguration *)v8 copy];
    workoutConfiguration = v9->_workoutConfiguration;
    v9->_workoutConfiguration = v12;

    v14 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    mutableCurrentCollectedTypes = v9->_mutableCurrentCollectedTypes;
    v9->_mutableCurrentCollectedTypes = v14;

    v9->_collectsGeneratedTypes = 1;
    v16 = HKCreateSerialDispatchQueue(v9, @"queue");
    queue = v9->_queue;
    v9->_queue = v16;

    v18 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v9->_healthStore taskIdentifier:@"HKLiveWorkoutDataSourceServerIdentifier" exportedObject:v9 taskUUID:v9->_identifier];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v18;

    v20 = v9->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __68__HKLiveWorkoutDataSource_initWithHealthStore_workoutConfiguration___block_invoke;
    block[3] = &unk_1E7376780;
    v23 = v9;
    dispatch_async(v20, block);
  }

  return v9;
}

- (NSSet)currentCollectedTypes
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__HKLiveWorkoutDataSource_currentCollectedTypes__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __48__HKLiveWorkoutDataSource_currentCollectedTypes__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 64) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (NSSet)typesToCollect
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__31;
  v10 = __Block_byref_object_dispose__31;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __41__HKLiveWorkoutDataSource_typesToCollect__block_invoke;
  v5[3] = &unk_1E7378528;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __41__HKLiveWorkoutDataSource_typesToCollect__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x1EEE66BB8]();
}

- (void)enableCollectionForType:(HKQuantityType *)quantityType predicate:(NSPredicate *)predicate
{
  v6 = quantityType;
  v7 = predicate;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke;
  block[3] = &unk_1E7376640;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

void __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) addObject:*(a1 + 40)];
  v2 = *(a1 + 48);
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 40)];
    v4 = [v2 hk_filterRepresentationForDataTypes:v3];
    [*(*(a1 + 32) + 56) setObject:v4 forKeyedSubscript:*(a1 + 40)];
  }

  *(*(a1 + 32) + 16) = 0;
  v5 = [*(a1 + 32) _queue_dataSourceConfiguration];
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_2;
  v10[3] = &unk_1E7380110;
  v11 = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_3;
  v9[3] = &unk_1E7376898;
  v9[4] = v6;
  v8 = v5;
  [v7 fetchProxyWithHandler:v10 errorHandler:v9];
}

void __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_3_cold_1(a1);
  }
}

- (void)disableCollectionForType:(HKQuantityType *)quantityType
{
  v4 = quantityType;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HKLiveWorkoutDataSource_disableCollectionForType___block_invoke;
  v7[3] = &unk_1E7378400;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

void __52__HKLiveWorkoutDataSource_disableCollectionForType___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 48) removeObject:*(a1 + 40)];
  [*(*(a1 + 32) + 56) removeObjectForKey:*(a1 + 40)];
  *(*(a1 + 32) + 16) = 0;
  v2 = [*(a1 + 32) _queue_dataSourceConfiguration];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__HKLiveWorkoutDataSource_disableCollectionForType___block_invoke_2;
  v7[3] = &unk_1E7380110;
  v8 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__HKLiveWorkoutDataSource_disableCollectionForType___block_invoke_3;
  v6[3] = &unk_1E7376898;
  v6[4] = v3;
  v5 = v2;
  [v4 fetchProxyWithHandler:v7 errorHandler:v6];
}

void __52__HKLiveWorkoutDataSource_disableCollectionForType___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_3_cold_1(a1);
  }
}

- (id)_queue_dataSourceConfiguration
{
  dispatch_assert_queue_V2(self->_queue);
  v3 = [HKWorkoutDataSourceConfiguration alloc];
  workoutConfiguration = self->_workoutConfiguration;
  mutableSampleTypesToCollect = self->_mutableSampleTypesToCollect;
  mutableFiltersBySampleType = self->_mutableFiltersBySampleType;
  v7 = [MEMORY[0x1E695DFD8] set];
  v8 = [(HKWorkoutDataSourceConfiguration *)v3 initWithWorkoutConfiguration:workoutConfiguration sampleTypesToCollect:mutableSampleTypesToCollect filters:mutableFiltersBySampleType eventTypesToCollect:v7 collectsDefaultTypes:self->_collectsGeneratedTypes];

  return v8;
}

- (void)workoutBuilderDidFinish
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __50__HKLiveWorkoutDataSource_workoutBuilderDidFinish__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

void __50__HKLiveWorkoutDataSource_workoutBuilderDidFinish__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
}

- (void)unitTest_synchronizeWithCompletion:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__HKLiveWorkoutDataSource_unitTest_synchronizeWithCompletion___block_invoke;
  v7[3] = &unk_1E73765F0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __62__HKLiveWorkoutDataSource_unitTest_synchronizeWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __62__HKLiveWorkoutDataSource_unitTest_synchronizeWithCompletion___block_invoke_2;
  v5[3] = &unk_1E7380138;
  v6 = *(a1 + 40);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __62__HKLiveWorkoutDataSource_unitTest_synchronizeWithCompletion___block_invoke_3;
  v3[3] = &unk_1E7376960;
  v4 = *(a1 + 40);
  [v2 fetchProxyWithHandler:v5 errorHandler:v3];
}

+ (id)clientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7CB8];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_clientRemote_didUpdateDataSourceConfiguration_shouldUpdateSampleTypesToCollect_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serverInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F06F7D18];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  [v2 setClasses:v3 forSelector:sel_remote_setDataSourceConfiguration_ argumentIndex:0 ofReply:0];

  return v2;
}

- (void)connectionInterrupted
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke;
  block[3] = &unk_1E7376780;
  block[4] = self;
  dispatch_async(queue, block);
}

void __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _queue_dataSourceConfiguration];
  v3 = *(a1 + 32);
  v4 = *(v3 + 24);
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke_2;
  v7[3] = &unk_1E7380110;
  v8 = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke_3;
  v6[3] = &unk_1E7376898;
  v6[4] = v3;
  v5 = v2;
  [v4 fetchProxyWithHandler:v7 errorHandler:v6];
}

void __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke_3_cold_1(a1);
  }
}

- (void)clientRemote_didUpdateDataSourceConfiguration:(id)a3 shouldUpdateSampleTypesToCollect:(BOOL)a4
{
  v6 = a3;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __106__HKLiveWorkoutDataSource_clientRemote_didUpdateDataSourceConfiguration_shouldUpdateSampleTypesToCollect___block_invoke;
  block[3] = &unk_1E7379F98;
  v11 = a4;
  block[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, block);
}

void __106__HKLiveWorkoutDataSource_clientRemote_didUpdateDataSourceConfiguration_shouldUpdateSampleTypesToCollect___block_invoke(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v2 = [*(a1 + 40) sampleTypesToCollect];
    v3 = [v2 mutableCopy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 48);
    *(v4 + 48) = v3;
  }

  v6 = [*(a1 + 40) filtersBySampleType];
  v7 = [v6 mutableCopy];
  v8 = *(a1 + 32);
  v9 = *(v8 + 56);
  *(v8 + 56) = v7;

  v13 = [*(a1 + 40) sampleTypesToCollect];
  v10 = [v13 mutableCopy];
  v11 = *(a1 + 32);
  v12 = *(v11 + 64);
  *(v11 + 64) = v10;
}

- (void)_queue_finishSetup
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error getting activity mode %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __45__HKLiveWorkoutDataSource__queue_finishSetup__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __45__HKLiveWorkoutDataSource__queue_finishSetup__block_invoke_2_cold_1(a1);
  }
}

void __61__HKLiveWorkoutDataSource_enableCollectionForType_predicate___block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "Unable to set data source %@ configuration with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __48__HKLiveWorkoutDataSource_connectionInterrupted__block_invoke_3_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "Unable to fetch data source %@ proxy after interrupted connection with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

void __45__HKLiveWorkoutDataSource__queue_finishSetup__block_invoke_2_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_2_5(a1, *MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v1, v2, "Unable to start task server %@ with error: %@");
  v3 = *MEMORY[0x1E69E9840];
}

@end