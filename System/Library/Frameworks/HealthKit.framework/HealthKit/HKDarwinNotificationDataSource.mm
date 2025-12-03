@interface HKDarwinNotificationDataSource
- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle;
- (void)unregisterBridgedObserver:(id)observer forKey:(id)key;
@end

@implementation HKDarwinNotificationDataSource

- (id)makeAndRegisterBridgedObserverForKey:(id)key handle:(id)handle
{
  keyCopy = key;
  handleCopy = handle;
  out_token = 0;
  uTF8String = [keyCopy UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __78__HKDarwinNotificationDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke;
  handler[3] = &unk_1E7384080;
  v13 = handleCopy;
  v14 = keyCopy;
  v8 = keyCopy;
  v9 = handleCopy;
  notify_register_dispatch(uTF8String, &out_token, MEMORY[0x1E69E96A0], handler);
  v10 = [MEMORY[0x1E696AD98] numberWithInt:out_token];

  return v10;
}

void __78__HKDarwinNotificationDataSource_makeAndRegisterBridgedObserverForKey_handle___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = [MEMORY[0x1E695DFB0] null];
  [v1 notifyObserversOfChangeForKey:v2 newValue:v3];
}

- (void)unregisterBridgedObserver:(id)observer forKey:(id)key
{
  observerCopy = observer;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    intValue = [observerCopy intValue];
    if (intValue != -1)
    {
      notify_cancel(intValue);
    }
  }

  else
  {
    _HKInitializeLogging();
    v7 = HKLogInfrastructure();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [(HKDarwinNotificationDataSource *)self unregisterBridgedObserver:observerCopy forKey:v7];
    }
  }
}

- (void)unregisterBridgedObserver:(NSObject *)a3 forKey:.cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = v4;
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v9 = 138543618;
  v10 = v4;
  v11 = 2114;
  v12 = v7;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot unregister observer of type %{public}@", &v9, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

@end