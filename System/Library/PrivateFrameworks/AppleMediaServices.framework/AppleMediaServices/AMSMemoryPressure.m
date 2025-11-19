@interface AMSMemoryPressure
+ (AMSObservable)observable;
+ (NSString)lastKnownStatus;
+ (void)initialize;
+ (void)subscribe:(id)a3;
+ (void)unsubscribe:(id)a3;
@end

@implementation AMSMemoryPressure

+ (void)initialize
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__AMSMemoryPressure_initialize__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (initialize_onceToken[0] != -1)
  {
    dispatch_once(initialize_onceToken, block);
  }
}

void __31__AMSMemoryPressure_initialize__block_invoke(uint64_t a1)
{
  v2 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 7uLL, 0);
  v3 = qword_1ED6E2E18;
  qword_1ED6E2E18 = v2;

  objc_initWeak(&location, *(a1 + 32));
  v4 = qword_1ED6E2E18;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__AMSMemoryPressure_initialize__block_invoke_2;
  v5[3] = &unk_1E73B4418;
  objc_copyWeak(&v6, &location);
  dispatch_source_set_event_handler(v4, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __31__AMSMemoryPressure_initialize__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [AMSMemoryPressure _memoryPressureStatusForMemoryPressure:dispatch_source_get_data(qword_1ED6E2E18)];
  v3 = WeakRetained;
  objc_sync_enter(v3);
  if ([_MergedGlobals_128 isEqualToString:v2])
  {
    v4 = 0;
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v9 = 138543874;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = _MergedGlobals_128;
      v13 = 2114;
      v14 = v2;
      v7 = v10;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@: The memory pressure status changed. old = %{public}@ | new = %{public}@", &v9, 0x20u);
    }

    if (_MergedGlobals_128 || ([v2 isEqualToString:0] & 1) == 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    objc_storeStrong(&_MergedGlobals_128, v2);
  }

  objc_sync_exit(v3);

  if (v4)
  {
    v8 = [v3 observable];
    [v8 sendResult:v4];
  }
}

+ (NSString)lastKnownStatus
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _MergedGlobals_128;
  objc_sync_exit(v2);

  return v3;
}

+ (AMSObservable)observable
{
  if (qword_1ED6E2E20 != -1)
  {
    dispatch_once(&qword_1ED6E2E20, &__block_literal_global_86);
  }

  v3 = qword_1ED6E2E28;

  return v3;
}

uint64_t __31__AMSMemoryPressure_observable__block_invoke()
{
  qword_1ED6E2E28 = objc_alloc_init(AMSObservable);

  return MEMORY[0x1EEE66BB8]();
}

+ (void)subscribe:(id)a3
{
  v4 = a3;
  v5 = [a1 observable];
  [v5 subscribe:v4];
}

+ (void)unsubscribe:(id)a3
{
  v4 = a3;
  v5 = [a1 observable];
  [v5 unsubscribe:v4];
}

@end