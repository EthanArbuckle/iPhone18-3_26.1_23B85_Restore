@interface _HKBackgroundObservationExtensionRemoteContext
- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5;
- (void)backgroundObservationExtensionTimeWillExpire;
- (void)didReceiveUpdateForSampleType:(id)a3 completionHandler:(id)a4;
- (void)performCleanup;
@end

@implementation _HKBackgroundObservationExtensionRemoteContext

- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)a3 listenerEndpoint:(id)a4 contextUUID:(id)a5
{
  v8.receiver = self;
  v8.super_class = _HKBackgroundObservationExtensionRemoteContext;
  v5 = [(_HKBackgroundObservationExtensionRemoteContext *)&v8 initWithInputItems:a3 listenerEndpoint:a4 contextUUID:a5];
  if (v5)
  {
    _HKInitializeLogging();
    v6 = HKLogBackgroundUpdates;
    if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_DEBUG))
    {
      [_HKBackgroundObservationExtensionRemoteContext initWithInputItems:v6 listenerEndpoint:v5 contextUUID:?];
    }
  }

  return v5;
}

- (void)performCleanup
{
  v9 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v7 = 138543362;
    v8 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension cleaning up for UUID: %{public}@", &v7, 0xCu);
  }

  [(_HKBackgroundObservationExtensionRemoteContext *)self setExtensionInstance:0];
  [(_HKBackgroundObservationExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveUpdateForSampleType:(id)a3 completionHandler:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  _HKInitializeLogging();
  v9 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v13 = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ did receive update for sample type: %{public}@", &v13, 0x16u);
  }

  if (v8)
  {
    [v8 didReceiveUpdateForSampleType:v6 completionHandler:v7];
  }

  else
  {
    v7[2](v7);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)backgroundObservationExtensionTimeWillExpire
{
  v10 = *MEMORY[0x1E69E9840];
  _HKInitializeLogging();
  v3 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v4 = v3;
    v5 = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ will time out", &v8, 0xCu);
  }

  v6 = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  [v6 backgroundObservationExtensionTimeWillExpire];

  v7 = *MEMORY[0x1E69E9840];
}

- (void)initWithInputItems:(void *)a1 listenerEndpoint:(void *)a2 contextUUID:.cold.1(void *a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = [a2 _UUID];
  v6 = 138543362;
  v7 = v4;
  _os_log_debug_impl(&dword_19197B000, v3, OS_LOG_TYPE_DEBUG, "HealthKit app extension context initialized for UUID: %{public}@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

@end