@interface _HKBackgroundObservationExtensionRemoteContext
- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d;
- (void)backgroundObservationExtensionTimeWillExpire;
- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler;
- (void)performCleanup;
@end

@implementation _HKBackgroundObservationExtensionRemoteContext

- (_HKBackgroundObservationExtensionRemoteContext)initWithInputItems:(id)items listenerEndpoint:(id)endpoint contextUUID:(id)d
{
  v8.receiver = self;
  v8.super_class = _HKBackgroundObservationExtensionRemoteContext;
  v5 = [(_HKBackgroundObservationExtensionRemoteContext *)&v8 initWithInputItems:items listenerEndpoint:endpoint contextUUID:d];
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
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v7 = 138543362;
    v8 = _UUID;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension cleaning up for UUID: %{public}@", &v7, 0xCu);
  }

  [(_HKBackgroundObservationExtensionRemoteContext *)self setExtensionInstance:0];
  [(_HKBackgroundObservationExtensionRemoteContext *)self completeRequestReturningItems:0 completionHandler:0];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)didReceiveUpdateForSampleType:(id)type completionHandler:(id)handler
{
  v17 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  handlerCopy = handler;
  extensionInstance = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  _HKInitializeLogging();
  v9 = HKLogBackgroundUpdates;
  if (os_log_type_enabled(HKLogBackgroundUpdates, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v13 = 138543618;
    v14 = _UUID;
    v15 = 2114;
    v16 = typeCopy;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ did receive update for sample type: %{public}@", &v13, 0x16u);
  }

  if (extensionInstance)
  {
    [extensionInstance didReceiveUpdateForSampleType:typeCopy completionHandler:handlerCopy];
  }

  else
  {
    handlerCopy[2](handlerCopy);
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
    _UUID = [(_HKBackgroundObservationExtensionRemoteContext *)self _UUID];
    v8 = 138543362;
    v9 = _UUID;
    _os_log_impl(&dword_19197B000, v4, OS_LOG_TYPE_INFO, "HealthKit app extension with UUID: %{public}@ will time out", &v8, 0xCu);
  }

  extensionInstance = [(_HKBackgroundObservationExtensionRemoteContext *)self extensionInstance];
  [extensionInstance backgroundObservationExtensionTimeWillExpire];

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