@interface HKGymKitDataSource
+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration;
- (HKGymKitDataSource)initWithHealthStore:(id)store workoutConfiguration:(id)configuration;
- (void)_startTaskServerIfNeeded;
- (void)connectionInterrupted;
- (void)workoutBuilderDidFinish;
@end

@implementation HKGymKitDataSource

- (HKGymKitDataSource)initWithHealthStore:(id)store workoutConfiguration:(id)configuration
{
  storeCopy = store;
  configurationCopy = configuration;
  v16.receiver = self;
  v16.super_class = HKGymKitDataSource;
  v9 = [(HKGymKitDataSource *)&v16 init];
  if (v9)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;

    objc_storeStrong(&v9->_healthStore, store);
    v12 = [HKGymKitDataSource defaultConfigurationWithWorkoutConfiguration:configurationCopy];
    v13 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v9->_healthStore taskIdentifier:@"HKGymKitDataSourceServerIdentifier" exportedObject:v9 taskUUID:v9->_identifier];
    proxyProvider = v9->_proxyProvider;
    v9->_proxyProvider = v13;

    [(HKTaskServerProxyProvider *)v9->_proxyProvider setTaskConfiguration:v12];
    [(HKGymKitDataSource *)v9 _startTaskServerIfNeeded];
  }

  return v9;
}

+ (id)defaultConfigurationWithWorkoutConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v4 = +[HKWorkoutDataSource observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:](HKWorkoutDataSource, "observedTypesForActivityType:isIndoor:connectedToFitnessMachine:activityMode:", [configurationCopy activityType], objc_msgSend(configurationCopy, "locationType") == 2, 1, 1);
  v5 = [HKWorkoutDataSourceConfiguration alloc];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = [(HKWorkoutDataSourceConfiguration *)v5 initWithWorkoutConfiguration:configurationCopy sampleTypesToCollect:v4 filters:MEMORY[0x1E695E0F8] eventTypesToCollect:v6 collectsDefaultTypes:1];

  return v7;
}

- (void)workoutBuilderDidFinish
{
  proxyProvider = self->_proxyProvider;
  self->_proxyProvider = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)connectionInterrupted
{
  proxyProvider = self->_proxyProvider;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __43__HKGymKitDataSource_connectionInterrupted__block_invoke_2;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_13 errorHandler:v3];
}

void __43__HKGymKitDataSource_connectionInterrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __43__HKGymKitDataSource_connectionInterrupted__block_invoke_2_cold_1(a1);
  }
}

- (void)_startTaskServerIfNeeded
{
  proxyProvider = self->_proxyProvider;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__HKGymKitDataSource__startTaskServerIfNeeded__block_invoke_2;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:&__block_literal_global_60 errorHandler:v3];
}

void __46__HKGymKitDataSource__startTaskServerIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __46__HKGymKitDataSource__startTaskServerIfNeeded__block_invoke_2_cold_1(a1);
  }
}

void __43__HKGymKitDataSource_connectionInterrupted__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "HKGymKitDataSource: Unable to fetch data source %@ proxy after interrupted connection with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

void __46__HKGymKitDataSource__startTaskServerIfNeeded__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "HKGymKitDataSource: Unable to start task server %@ with error: %@");
  v4 = *MEMORY[0x1E69E9840];
}

@end