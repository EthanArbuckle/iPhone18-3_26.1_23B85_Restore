@interface HKWorkoutRouteDataSource
- (HKWorkoutRouteDataSource)initWithWorkoutSession:(id)session;
- (HKWorkoutRouteDataSourceDelegate)delegate;
- (void)clientRemote_didUpdateAltitude:(id)altitude;
- (void)clientRemote_didUpdateElevation:(id)elevation;
- (void)clientRemote_didUpdateRoute:(id)route;
- (void)connectionInterrupted;
- (void)workoutBuilderDidFinish;
@end

@implementation HKWorkoutRouteDataSource

- (HKWorkoutRouteDataSource)initWithWorkoutSession:(id)session
{
  sessionCopy = session;
  v21.receiver = self;
  v21.super_class = HKWorkoutRouteDataSource;
  v5 = [(HKWorkoutRouteDataSource *)&v21 init];
  if (v5)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v5->_identifier;
    v5->_identifier = uUID;

    identifier = [sessionCopy identifier];
    sessionIdentifier = v5->_sessionIdentifier;
    v5->_sessionIdentifier = identifier;

    v10 = [HKTaskServerProxyProvider alloc];
    healthStore = [sessionCopy healthStore];
    serverIdentifier = [objc_opt_class() serverIdentifier];
    v13 = [(HKTaskServerProxyProvider *)v10 initWithHealthStore:healthStore taskIdentifier:serverIdentifier exportedObject:v5 taskUUID:v5->_identifier];
    proxyProvider = v5->_proxyProvider;
    v5->_proxyProvider = v13;

    v15 = v5->_proxyProvider;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__HKWorkoutRouteDataSource_initWithWorkoutSession___block_invoke;
    v19[3] = &unk_1E7381EA0;
    v20 = v5;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__HKWorkoutRouteDataSource_initWithWorkoutSession___block_invoke_2;
    v17[3] = &unk_1E7376898;
    v18 = v20;
    [(HKProxyProvider *)v15 fetchProxyWithHandler:v19 errorHandler:v17];
  }

  return v5;
}

void __51__HKWorkoutRouteDataSource_initWithWorkoutSession___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __51__HKWorkoutRouteDataSource_initWithWorkoutSession___block_invoke_2_cold_1(a1);
  }
}

- (void)workoutBuilderDidFinish
{
  proxyProvider = self->_proxyProvider;
  self->_proxyProvider = 0;
  MEMORY[0x1EEE66BB8]();
}

- (void)clientRemote_didUpdateElevation:(id)elevation
{
  elevationCopy = elevation;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained workoutRouteDataSourceDidUpdateElevation:elevationCopy];
}

- (void)clientRemote_didUpdateRoute:(id)route
{
  routeCopy = route;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained workoutRouteDataSourceDidUpdateRoute:routeCopy];
}

- (void)clientRemote_didUpdateAltitude:(id)altitude
{
  altitudeCopy = altitude;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 workoutRouteDataSource:self didUpdateAltitude:altitudeCopy];
  }
}

- (void)connectionInterrupted
{
  proxyProvider = self->_proxyProvider;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__HKWorkoutRouteDataSource_connectionInterrupted__block_invoke;
  v4[3] = &unk_1E7381EA0;
  v4[4] = self;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __49__HKWorkoutRouteDataSource_connectionInterrupted__block_invoke_2;
  v3[3] = &unk_1E7376898;
  v3[4] = self;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v4 errorHandler:v3];
}

void __49__HKWorkoutRouteDataSource_connectionInterrupted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  if (os_log_type_enabled(HKLogWorkouts, OS_LOG_TYPE_ERROR))
  {
    __49__HKWorkoutRouteDataSource_connectionInterrupted__block_invoke_2_cold_1(a1);
  }
}

- (HKWorkoutRouteDataSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __51__HKWorkoutRouteDataSource_initWithWorkoutSession___block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "Unable to setup workout route data source %@ with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

void __49__HKWorkoutRouteDataSource_connectionInterrupted__block_invoke_2_cold_1(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *(*(a1 + 32) + 16);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_19197B000, v2, v3, "Unable to fetch workout route data source %@ proxy after interrupted connection with error: %{public}@");
  v4 = *MEMORY[0x1E69E9840];
}

@end