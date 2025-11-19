@interface AMSTelephonyDataCache
+ (id)sharedCache;
- (AMSTelephonyDataCache)initWithClientClass:(Class)a3;
- (AMSTelephonyDataCache)initWithTelephonyClient:(id)a3 queue:(id)a4;
- (CTXPCContexts)activeContexts;
- (id)carrierNamesPromise;
- (id)carrierNamesWithError:(id *)a3;
- (void)_clearCaches:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)phoneNumberChanged:(id)a3;
@end

@implementation AMSTelephonyDataCache

+ (id)sharedCache
{
  if (_MergedGlobals_152 != -1)
  {
    dispatch_once(&_MergedGlobals_152, &__block_literal_global_139);
  }

  v3 = qword_1ED6E3168;

  return v3;
}

uint64_t __36__AMSTelephonyDataCache_sharedCache__block_invoke()
{
  qword_1ED6E3168 = [[AMSTelephonyDataCache alloc] initWithClientClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

- (AMSTelephonyDataCache)initWithClientClass:(Class)a3
{
  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.AppleMediaServices.CoreTelephonyDataCache", v5);

  v7 = [[a3 alloc] initWithQueue:v6];
  v8 = [(AMSTelephonyDataCache *)self initWithTelephonyClient:v7 queue:v6];

  return v8;
}

- (AMSTelephonyDataCache)initWithTelephonyClient:(id)a3 queue:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v21 = v9;
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v4 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v4];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v24 = v16;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_INFO, "%{public}@Creating a new telephony data cache.", buf, 0xCu);
    if (v12)
    {

      v16 = v4;
    }

    v9 = v21;
  }

  v22.receiver = self;
  v22.super_class = AMSTelephonyDataCache;
  v17 = [(AMSTelephonyDataCache *)&v22 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_client, a3);
    [v8 setDelegate:v18];
    objc_storeStrong(&v18->_queue, a4);
    v19 = [MEMORY[0x1E696AD88] defaultCenter];
    [v19 addObserver:v18 selector:sel__clearCaches_ name:@"UIApplicationDidEnterBackgroundNotification" object:0];
  }

  return v18;
}

- (CTXPCContexts)activeContexts
{
  v3 = [(AMSTelephonyDataCache *)self queue];
  dispatch_assert_queue_not_V2(v3);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__66;
  v12 = __Block_byref_object_dispose__66;
  v13 = 0;
  v4 = [(AMSTelephonyDataCache *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__AMSTelephonyDataCache_activeContexts__block_invoke;
  v7[3] = &unk_1E73B82D0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(v4, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __39__AMSTelephonyDataCache_activeContexts__block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(*(a1 + 32) + 8);
  if (!v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        v1 = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, v1];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v2 = ;
      *buf = 138543362;
      v36 = v2;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetching active contexts.", buf, 0xCu);
      if (v7)
      {

        v2 = v1;
      }
    }

    v11 = [*(a1 + 32) client];
    v34 = 0;
    v12 = [v11 getActiveContexts:&v34];
    v13 = v34;
    v14 = *(a1 + 32);
    v15 = *(v14 + 8);
    *(v14 + 8) = v12;

    v16 = *(*(a1 + 32) + 8);
    v17 = +[AMSLogConfig sharedConfig];
    v18 = v17;
    if (v16)
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        v20 = AMSLogKey();
        v21 = MEMORY[0x1E696AEC0];
        v22 = objc_opt_class();
        v23 = v22;
        if (v20)
        {
          v2 = AMSLogKey();
          [v21 stringWithFormat:@"%@: [%@] ", v23, v2];
        }

        else
        {
          [v21 stringWithFormat:@"%@: ", v22];
        }
        v24 = ;
        *buf = 138543362;
        v36 = v24;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_INFO, "%{public}@Successfully fetched active contexts.", buf, 0xCu);
        if (v20)
        {

          v24 = v2;
        }
      }
    }

    else
    {
      if (!v17)
      {
        v18 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v18 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v25 = AMSLogKey();
        v26 = MEMORY[0x1E696AEC0];
        v27 = objc_opt_class();
        v28 = v27;
        if (v25)
        {
          v2 = AMSLogKey();
          [v26 stringWithFormat:@"%@: [%@] ", v28, v2];
        }

        else
        {
          [v26 stringWithFormat:@"%@: ", v27];
        }
        v29 = ;
        v30 = AMSLogableError(v13);
        *buf = 138543618;
        v36 = v29;
        v37 = 2114;
        v38 = v30;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@An error occurred fetching active contexts. error = %{public}@", buf, 0x16u);
        if (v25)
        {

          v29 = v2;
        }
      }
    }

    v4 = *(*(a1 + 32) + 8);
  }

  v31 = [v4 copy];
  v32 = *(*(a1 + 40) + 8);
  v33 = *(v32 + 40);
  *(v32 + 40) = v31;
}

- (id)carrierNamesWithError:(id *)a3
{
  v4 = self;
  v32 = *MEMORY[0x1E69E9840];
  v5 = [(AMSTelephonyDataCache *)self client];
  v27 = 0;
  v6 = [v5 getSubscriptionInfoWithError:&v27];
  v7 = v27;

  if (v6 || !v7)
  {
    if (v6)
    {
      v15 = [v6 subscriptionsInUse];
      if ([v15 count])
      {
        v16 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v15, "count")}];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __47__AMSTelephonyDataCache_carrierNamesWithError___block_invoke;
        v25[3] = &unk_1E73BC9C0;
        v25[4] = v4;
        v17 = v16;
        v26 = v17;
        v18 = [v15 ams_mapWithTransformIgnoresNil:v25];
        v19 = [v17 count];
        if (v19 == [v15 count])
        {
          if (a3)
          {
            v20 = [v17 copy];
            *a3 = AMSErrorWithMultipleUnderlyingErrors(15, @"Error fetching carrier names", 0, v20);
          }

          v21 = 0;
        }

        else
        {
          v21 = v18;
        }
      }

      else
      {
        v21 = MEMORY[0x1E695E0F0];
      }
    }

    else
    {
      v21 = MEMORY[0x1E695E0F0];
    }
  }

  else
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = AMSLogKey();
      v11 = MEMORY[0x1E696AEC0];
      v12 = objc_opt_class();
      v13 = v12;
      if (v10)
      {
        v4 = AMSLogKey();
        [v11 stringWithFormat:@"%@: [%@] ", v13, v4];
      }

      else
      {
        [v11 stringWithFormat:@"%@: ", v12];
      }
      v14 = ;
      v22 = AMSLogableError(v7);
      *buf = 138543618;
      v29 = v14;
      v30 = 2114;
      v31 = v22;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@Error fetching subscription info: %{public}@", buf, 0x16u);
      if (v10)
      {

        v14 = v4;
      }
    }

    if (a3)
    {
      v23 = v7;
      v21 = 0;
      *a3 = v7;
    }

    else
    {
      v21 = 0;
    }
  }

  return v21;
}

id __47__AMSTelephonyDataCache_carrierNamesWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a1;
  v35 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 client];
  v7 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  v30 = 0;
  v8 = [v6 copyCarrierBundleValue:v5 key:@"CarrierName" bundleType:v7 error:&v30];

  v9 = v30;
  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = AMSLogKey();
      v13 = MEMORY[0x1E696AEC0];
      v14 = objc_opt_class();
      v15 = v14;
      if (v12)
      {
        v2 = AMSLogKey();
        [v13 stringWithFormat:@"%@: [%@] ", v15, v2];
      }

      else
      {
        [v13 stringWithFormat:@"%@: ", v14];
      }
      v16 = ;
      v25 = AMSLogableError(v9);
      *buf = 138543618;
      v32 = v16;
      v33 = 2114;
      v34 = v25;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Error copying carrier name: %{public}@", buf, 0x16u);
      if (v12)
      {

        v16 = v2;
      }
    }

    [*(v3 + 40) addObject:v9];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v17 = v8;
      goto LABEL_25;
    }

    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      v23 = v22;
      if (v20)
      {
        v3 = AMSLogKey();
        [v21 stringWithFormat:@"%@: [%@] ", v23, v3];
      }

      else
      {
        [v21 stringWithFormat:@"%@: ", v22];
      }
      v24 = ;
      v26 = objc_opt_class();
      v27 = NSStringFromClass(v26);
      v28 = AMSHashIfNeeded(v27);
      *buf = 138543618;
      v32 = v24;
      v33 = 2114;
      v34 = v28;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@Error copying carrier name. Expected an NSString, got %{public}@", buf, 0x16u);

      if (v20)
      {

        v24 = v3;
      }
    }
  }

  v17 = 0;
LABEL_25:

  return v17;
}

- (id)carrierNamesPromise
{
  v3 = objc_alloc_init(AMSPromise);
  v4 = [(AMSTelephonyDataCache *)self client];
  v5 = [(AMSPromise *)v3 completionHandlerAdapter];
  [v4 getSubscriptionInfo:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke;
  v8[3] = &unk_1E73BCA38;
  v8[4] = self;
  v6 = [(AMSPromise *)v3 thenWithBlock:v8];

  return v6;
}

id __44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 subscriptionsInUse];
  v4 = v3;
  if (v3)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke_2;
    v8[3] = &unk_1E73BCA10;
    v8[4] = *(a1 + 32);
    v5 = [v3 ams_mapWithTransform:v8];
    v6 = [AMSPromise promiseWithSome:v5];
  }

  else
  {
    v6 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F0]];
  }

  return v6;
}

AMSMutablePromise *__44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v5 = [*(a1 + 32) client];
  v6 = [objc_alloc(MEMORY[0x1E6964F68]) initWithBundleType:1];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke_3;
  v9[3] = &unk_1E73BC9E8;
  v7 = v4;
  v10 = v7;
  [v5 copyCarrierBundleValue:v3 key:@"CarrierName" bundleType:v6 completion:v9];

  return v7;
}

void __44__AMSTelephonyDataCache_carrierNamesPromise__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v10;

    v8 = *(a1 + 32);
    if (v7)
    {
      [v8 finishWithResult:v7];
      goto LABEL_6;
    }
  }

  else
  {

    v8 = *(a1 + 32);
  }

  v9 = AMSError(7, @"Carrier Name Not Found", @"Did not receive a carrier name.", v6);
  [v8 finishWithError:v9];

  v7 = 0;
LABEL_6:
}

- (void)_clearCaches:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v3 = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, v3];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543362;
    v16 = v11;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_INFO, "%{public}@Received UIApplicationDidEnterBackgroundNotification notification, clearing caches.", buf, 0xCu);
    if (v7)
    {

      v11 = v3;
    }
  }

  v12 = [(AMSTelephonyDataCache *)self queue];
  dispatch_assert_queue_not_V2(v12);

  v13 = [(AMSTelephonyDataCache *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AMSTelephonyDataCache__clearCaches___block_invoke;
  block[3] = &unk_1E73B3680;
  block[4] = self;
  dispatch_async(v13, block);
}

void __38__AMSTelephonyDataCache__clearCaches___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 8);
  *(v1 + 8) = 0;
}

- (void)activeSubscriptionsDidChange
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = [(AMSTelephonyDataCache *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = AMSLogKey();
    v9 = MEMORY[0x1E696AEC0];
    v10 = objc_opt_class();
    v11 = v10;
    if (v8)
    {
      v2 = AMSLogKey();
      [v9 stringWithFormat:@"%@: [%@] ", v11, v2];
    }

    else
    {
      [v9 stringWithFormat:@"%@: ", v10];
    }
    v12 = ;
    v13 = NSStringFromSelector(a2);
    *buf = 138543618;
    v16 = v12;
    v17 = 2114;
    v18 = v13;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_INFO, "%{public}@%{public}@", buf, 0x16u);
    if (v8)
    {

      v12 = v2;
    }
  }

  activeContexts = self->_activeContexts;
  self->_activeContexts = 0;
}

- (void)phoneNumberChanged:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = [(AMSTelephonyDataCache *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = +[AMSLogConfig sharedConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = objc_opt_class();
    v12 = v11;
    if (v9)
    {
      v3 = AMSLogKey();
      [v10 stringWithFormat:@"%@: [%@] ", v12, v3];
    }

    else
    {
      [v10 stringWithFormat:@"%@: ", v11];
    }
    v13 = ;
    v14 = NSStringFromSelector(a2);
    *buf = 138543618;
    v17 = v13;
    v18 = 2114;
    v19 = v14;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@%{public}@", buf, 0x16u);
    if (v9)
    {

      v13 = v3;
    }
  }

  activeContexts = self->_activeContexts;
  self->_activeContexts = 0;
}

@end