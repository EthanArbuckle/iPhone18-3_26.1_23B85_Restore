@interface AMSSharedStoreReview
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)_shouldLogNewSessionWithLastLoggedTimeStamp:(id)a3 currentTime:(id)a4 sessionInterval:(int64_t)a5;
+ (BOOL)_shouldPromptReviewForStoreReviewMetrics:(id)a3 currentTime:(id)a4 sessionCount:(int64_t)a5 promptInterval:(int64_t)a6;
+ (BOOL)_shouldPromptReviewForStoreReviewMetrics:(id)a3 sessionCount:(int64_t)a4;
+ (id)_storeReviewMetrics;
+ (id)createBagForSubProfile;
+ (void)_applicationDidForegroundWithCurrentTime:(id)a3 storeReviewMetrics:(id)a4 sessionInterval:(int64_t)a5;
+ (void)_logDidAttemptPromptReviewWithStoreReviewMetrics:(id)a3 currentTime:(id)a4;
+ (void)_logNewSessionWithStoreReviewMetrics:(id)a3 currentTime:(id)a4;
+ (void)_persistStoreReviewMetrics:(id)a3;
- (AMSSharedStoreReview)initWithBag:(id)a3;
- (BOOL)isEnabled;
- (BOOL)shouldAttemptPromptReview;
- (id)isReviewEnabled;
- (id)shouldAttemptReview;
- (void)applicationDidForeground;
- (void)didAttemptPromptReview;
@end

@implementation AMSSharedStoreReview

- (void)applicationDidForeground
{
  if (+[AMSSharedStoreReview _isGroupedLogicSupported])
  {
    storeReviewGatingController = self->_storeReviewGatingController;

    [(AMSStoreReviewGatingController *)storeReviewGatingController didEnterForegroundWithCompletionHandler:&__block_literal_global_128];
  }

  else
  {
    v4 = [(AMSSharedStoreReview *)self sharedStoreReviewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__AMSSharedStoreReview_applicationDidForeground__block_invoke_2;
    block[3] = &unk_1E73B3680;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (BOOL)isEnabled
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = [(AMSSharedStoreReview *)self bag];
  v3 = [v2 BOOLForKey:@"shared-store-review-enabled"];
  v13 = 0;
  v4 = [v3 valueWithError:&v13];
  v5 = v13;
  v6 = [v4 BOOLValue];

  if (v5)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSSetLogKeyIfNeeded();
      v11 = AMSLogableError(v5);
      *buf = 138543874;
      v15 = v9;
      v16 = 2114;
      v17 = v10;
      v18 = 2114;
      v19 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetching enabled bag value error: %{public}@", buf, 0x20u);
    }

    v6 = 0;
  }

  return v6;
}

- (AMSSharedStoreReview)initWithBag:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = AMSSharedStoreReview;
  v6 = [(AMSSharedStoreReview *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bag, a3);
    if (+[AMSSharedStoreReview _isGroupedLogicSupported])
    {
      v8 = [[AMSStoreReviewGatingController alloc] initWithBag:v5];
      p_super = &v7->_storeReviewGatingController->super;
      v7->_storeReviewGatingController = v8;
    }

    else
    {
      p_super = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v10 = dispatch_queue_create("com.apple.AppleMediaServices.sharedstorereview", p_super);
      sharedStoreReviewQueue = v7->_sharedStoreReviewQueue;
      v7->_sharedStoreReviewQueue = v10;
    }
  }

  return v7;
}

- (id)isReviewEnabled
{
  v2 = [(AMSSharedStoreReview *)self bag];
  v3 = [v2 BOOLForKey:@"shared-store-review-enabled"];
  v4 = [v3 valuePromise];

  return v4;
}

void __48__AMSSharedStoreReview_applicationDidForeground__block_invoke_2(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEnabled])
  {
    v2 = [*(a1 + 32) bag];
    v3 = [v2 integerForKey:@"shared-store-review-session-interval"];
    v12 = 0;
    v4 = [v3 valueWithError:&v12];
    v5 = v12;

    if (v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
      if (!v6)
      {
        v6 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v6 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = objc_opt_class();
        v9 = AMSSetLogKeyIfNeeded();
        v10 = AMSLogableError(v5);
        *buf = 138543874;
        v14 = v8;
        v15 = 2114;
        v16 = v9;
        v17 = 2114;
        v18 = v10;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Session interval bag value error: %{public}@", buf, 0x20u);
      }
    }

    else
    {
      v6 = +[AMSSharedStoreReview _storeReviewMetrics];
      v7 = [MEMORY[0x1E695DF00] date];
      [AMSSharedStoreReview _applicationDidForegroundWithCurrentTime:v7 storeReviewMetrics:v6 sessionInterval:[v4 integerValue]];
    }

    goto LABEL_13;
  }

  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v5 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v6 = AMSSetLogKeyIfNeeded();
    *buf = 138543618;
    v14 = v11;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping tracking for foreground as shared store review is disabled.", buf, 0x16u);
LABEL_13:
  }
}

- (void)didAttemptPromptReview
{
  if (+[AMSSharedStoreReview _isGroupedLogicSupported])
  {
    storeReviewGatingController = self->_storeReviewGatingController;

    [(AMSStoreReviewGatingController *)storeReviewGatingController didPromptWithCompletionHandler:&__block_literal_global_22_1];
  }

  else
  {
    v4 = [(AMSSharedStoreReview *)self sharedStoreReviewQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __46__AMSSharedStoreReview_didAttemptPromptReview__block_invoke_2;
    block[3] = &unk_1E73B3680;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

void __46__AMSSharedStoreReview_didAttemptPromptReview__block_invoke_2(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isEnabled])
  {
    v6 = +[AMSSharedStoreReview _storeReviewMetrics];
    v1 = [MEMORY[0x1E695DF00] date];
    [AMSSharedStoreReview _logDidAttemptPromptReviewWithStoreReviewMetrics:v6 currentTime:v1];
  }

  else
  {
    v2 = +[AMSLogConfig sharedConfig];
    if (!v2)
    {
      v2 = +[AMSLogConfig sharedConfig];
    }

    v3 = [v2 OSLogObject];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = objc_opt_class();
      v5 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v8 = v4;
      v9 = 2114;
      v10 = v5;
      _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping tracking for did attempt review as shared store review is disabled.", buf, 0x16u);
    }
  }
}

- (id)shouldAttemptReview
{
  if (+[AMSSharedStoreReview _isGroupedLogicSupported])
  {
    v3 = objc_alloc_init(AMSMutablePromise);
    storeReviewGatingController = self->_storeReviewGatingController;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke;
    v9[3] = &unk_1E73BBDC0;
    v5 = v3;
    v10 = v5;
    [(AMSStoreReviewGatingController *)storeReviewGatingController canPromptWithCompletionHandler:v9];
    v6 = v10;
  }

  else
  {
    v6 = [(AMSSharedStoreReview *)self isReviewEnabled];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_2;
    v8[3] = &unk_1E73BB788;
    v8[4] = self;
    v5 = [v6 continueWithBlock:v8];
  }

  return v5;
}

void __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithBool:a2];
  [v2 finishWithResult:v3];
}

id __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      v16 = v7;
      v17 = 2114;
      v18 = v8;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping checking for should attempt review as shared store review is disabled.", buf, 0x16u);
    }

    v9 = [AMSPromise promiseWithError:v4];
  }

  else
  {
    v10 = [*(a1 + 32) bag];
    v11 = [v10 integerForKey:@"shared-store-review-session-count"];
    v12 = [v11 valuePromise];

    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_27;
    v14[3] = &unk_1E73BB788;
    v14[4] = *(a1 + 32);
    v9 = [v12 continueWithBlock:v14];
  }

  return v9;
}

id __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_27(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = AMSSetLogKeyIfNeeded();
      v11 = AMSLogableError(v6);
      *buf = 138543874;
      v23 = v9;
      v24 = 2114;
      v25 = v10;
      v26 = 2114;
      v27 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Session count bag value error: %{public}@", buf, 0x20u);
    }

    v12 = [AMSPromise promiseWithError:v6];
  }

  else
  {
    v13 = +[AMSSharedStoreReview _storeReviewMetrics];
    if (+[AMSSharedStoreReview _isRepeatedPromptsSupported])
    {
      v14 = [*(a1 + 32) bag];
      v15 = [v14 integerForKey:@"shared-store-review-prompt-interval"];
      v16 = [v15 valuePromise];

      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_28;
      v19[3] = &unk_1E73B7D98;
      v19[4] = *(a1 + 32);
      v20 = v13;
      v21 = v5;
      v12 = [v16 continueWithBlock:v19];
    }

    else
    {
      v17 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:sessionCount:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:sessionCount:", v13, [v5 integerValue]);
      v16 = [MEMORY[0x1E696AD98] numberWithBool:v17];
      v12 = [AMSPromise promiseWithResult:v16];
    }
  }

  return v12;
}

id __43__AMSSharedStoreReview_shouldAttemptReview__block_invoke_28(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSSetLogKeyIfNeeded();
      v11 = AMSLogableError(v6);
      v20 = 138543874;
      v21 = v9;
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v11;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Prompt interval bag value fetch failed: %{public}@, falling back to behaviour without repeated prompt support", &v20, 0x20u);
    }

    v12 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:sessionCount:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:sessionCount:", *(a1 + 40), [*(a1 + 48) integerValue]);
    v13 = [MEMORY[0x1E696AD98] numberWithBool:v12];
    v14 = [AMSPromise promiseWithResult:v13];
  }

  else
  {
    v15 = *(a1 + 40);
    v16 = [MEMORY[0x1E695DF00] date];
    v17 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:currentTime:sessionCount:promptInterval:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:currentTime:sessionCount:promptInterval:", v15, v16, [*(a1 + 48) integerValue], objc_msgSend(v5, "integerValue"));

    v18 = [MEMORY[0x1E696AD98] numberWithBool:v17];
    v14 = [AMSPromise promiseWithResult:v18];
  }

  return v14;
}

- (BOOL)shouldAttemptPromptReview
{
  v35 = *MEMORY[0x1E69E9840];
  if (+[AMSSharedStoreReview _isGroupedLogicSupported])
  {
    v3 = dispatch_semaphore_create(0);
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v34) = 0;
    storeReviewGatingController = self->_storeReviewGatingController;
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __49__AMSSharedStoreReview_shouldAttemptPromptReview__block_invoke;
    v30[3] = &unk_1E73BBDE8;
    v32 = buf;
    v5 = v3;
    v31 = v5;
    [(AMSStoreReviewGatingController *)storeReviewGatingController canPromptWithCompletionHandler:v30];
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
    v6 = *(*&buf[8] + 24);

    _Block_object_dispose(buf, 8);
  }

  else if ([(AMSSharedStoreReview *)self isEnabled])
  {
    v7 = [(AMSSharedStoreReview *)self bag];
    v8 = [v7 integerForKey:@"shared-store-review-session-count"];
    v29 = 0;
    v9 = [v8 valueWithError:&v29];
    v5 = v29;

    if (v5)
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v13 = AMSSetLogKeyIfNeeded();
        v14 = AMSLogableError(v5);
        *buf = 138543874;
        *&buf[4] = v12;
        *&buf[12] = 2114;
        *&buf[14] = v13;
        *&buf[22] = 2114;
        v34 = v14;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Session count bag value error: %{public}@", buf, 0x20u);
      }

      v6 = 0;
    }

    else
    {
      v10 = +[AMSSharedStoreReview _storeReviewMetrics];
      if (+[AMSSharedStoreReview _isRepeatedPromptsSupported])
      {
        v18 = [(AMSSharedStoreReview *)self bag];
        v19 = [v18 integerForKey:@"shared-store-review-prompt-interval"];
        v28 = 0;
        v20 = [v19 valueWithError:&v28];
        v5 = v28;

        if (v5)
        {
          v21 = +[AMSLogConfig sharedConfig];
          if (!v21)
          {
            v21 = +[AMSLogConfig sharedConfig];
          }

          v22 = [v21 OSLogObject];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v23 = objc_opt_class();
            v24 = AMSSetLogKeyIfNeeded();
            v25 = AMSLogableError(v5);
            *buf = 138543874;
            *&buf[4] = v23;
            *&buf[12] = 2114;
            *&buf[14] = v24;
            *&buf[22] = 2114;
            v34 = v25;
            _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Prompt interval bag value fetch failed: %{public}@, falling back to behaviour without repeated prompt support", buf, 0x20u);
          }

          v6 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:sessionCount:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:sessionCount:", v10, [v9 integerValue]);
        }

        else
        {
          v26 = [MEMORY[0x1E695DF00] date];
          v6 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:currentTime:sessionCount:promptInterval:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:currentTime:sessionCount:promptInterval:", v10, v26, [v9 integerValue], objc_msgSend(v20, "integerValue"));
        }
      }

      else
      {
        v6 = +[AMSSharedStoreReview _shouldPromptReviewForStoreReviewMetrics:sessionCount:](AMSSharedStoreReview, "_shouldPromptReviewForStoreReviewMetrics:sessionCount:", v10, [v9 integerValue]);
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v5 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = AMSSetLogKeyIfNeeded();
      *buf = 138543618;
      *&buf[4] = v16;
      *&buf[12] = 2114;
      *&buf[14] = v17;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping checking for should attempt review as shared store review is disabled.", buf, 0x16u);
    }

    v6 = 0;
  }

  return v6 & 1;
}

+ (void)_applicationDidForegroundWithCurrentTime:(id)a3 storeReviewMetrics:(id)a4 sessionInterval:(int64_t)a5
{
  v18 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:@"last-session-timestamp"];
  if ([AMSSharedStoreReview _shouldLogNewSessionWithLastLoggedTimeStamp:v9 currentTime:v7 sessionInterval:a5])
  {
    [AMSSharedStoreReview _logNewSessionWithStoreReviewMetrics:v8 currentTime:v7];
  }

  else
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSSetLogKeyIfNeeded();
      v14 = 138543618;
      v15 = v12;
      v16 = 2114;
      v17 = v13;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping tracking for foreground as last logged time stamp is within session interval.", &v14, 0x16u);
    }
  }
}

+ (BOOL)_shouldLogNewSessionWithLastLoggedTimeStamp:(id)a3 currentTime:(id)a4 sessionInterval:(int64_t)a5
{
  if (!a3)
  {
    return 1;
  }

  [a4 timeIntervalSinceDate:?];
  return v6 >= a5;
}

+ (id)_storeReviewMetrics
{
  v2 = +[AMSProcessInfo currentProcess];
  v3 = [v2 bundleIdentifier];

  if (+[AMSDefaults migratedStorageToDefaultsForNonAMSInternal])
  {
    v4 = AMSDefaults;
  }

  else
  {
    v4 = AMSStorage;
  }

  v5 = [(__objc2_class *)v4 sharedStoreReviewMetricsForProcess:v3];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = v6;
      v8 = v7;
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = objc_alloc_init(MEMORY[0x1E695DF20]);
  v7 = 0;
LABEL_9:

  return v8;
}

+ (void)_logNewSessionWithStoreReviewMetrics:(id)a3 currentTime:(id)a4
{
  v6 = a4;
  v13 = [a3 mutableCopy];
  [v13 setObject:v6 forKeyedSubscript:@"last-session-timestamp"];

  v7 = [v13 objectForKeyedSubscript:@"session-count"];
  v8 = v7;
  v9 = &unk_1F07799D0;
  if (v7)
  {
    v9 = v7;
  }

  v10 = v9;

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "integerValue") + 1}];

  [v13 setObject:v11 forKeyedSubscript:@"session-count"];
  v12 = [v13 copy];
  [a1 _persistStoreReviewMetrics:v12];
}

+ (void)_logDidAttemptPromptReviewWithStoreReviewMetrics:(id)a3 currentTime:(id)a4
{
  v6 = a4;
  v8 = [a3 mutableCopy];
  [v8 setObject:v6 forKeyedSubscript:@"did-attempt-review-timestamp"];

  v7 = [v8 copy];
  [a1 _persistStoreReviewMetrics:v7];
}

+ (void)_persistStoreReviewMetrics:(id)a3
{
  v3 = a3;
  v4 = +[AMSProcessInfo currentProcess];
  v9 = [v4 bundleIdentifier];

  v5 = +[AMSDefaults migratedStorageToDefaultsForNonAMSInternal];
  v6 = off_1E73B10E0;
  if (v5)
  {
    v6 = off_1E73B0B88;
  }

  v7 = *v6;
  v8 = [v3 copy];

  [(__objc2_class *)v7 setSharedStoreReviewMetrics:v8 forProcess:v9];
}

+ (BOOL)_shouldPromptReviewForStoreReviewMetrics:(id)a3 sessionCount:(int64_t)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"session-count"];
  v7 = v6;
  v8 = &unk_1F07799D0;
  if (v6)
  {
    v8 = v6;
  }

  v9 = v8;

  v10 = [v5 objectForKeyedSubscript:@"did-attempt-review-timestamp"];

  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = [v9 integerValue] >= a4;
  }

  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = objc_opt_class();
    v15 = AMSSetLogKeyIfNeeded();
    v16 = v15;
    v19 = 138544386;
    v17 = @"Not prompted before.";
    v20 = v14;
    if (v10)
    {
      v17 = v10;
    }

    v21 = 2114;
    v22 = v15;
    v23 = 1024;
    v24 = v11;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v17;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Should prompt: %d, with session count: %{public}@, last attempt: %{public}@", &v19, 0x30u);
  }

  return v11;
}

+ (BOOL)_shouldPromptReviewForStoreReviewMetrics:(id)a3 currentTime:(id)a4 sessionCount:(int64_t)a5 promptInterval:(int64_t)a6
{
  v39 = *MEMORY[0x1E69E9840];
  v9 = a4;
  v10 = a3;
  v11 = [v10 objectForKeyedSubscript:@"session-count"];
  v12 = v11;
  v13 = &unk_1F07799D0;
  if (v11)
  {
    v13 = v11;
  }

  v14 = v13;

  v15 = [v10 objectForKeyedSubscript:@"did-attempt-review-timestamp"];

  [v9 timeIntervalSinceDate:v15];
  v17 = v16;

  v19 = (v17 >= a6 || v15 == 0) && [v14 integerValue] >= a5;
  v20 = +[AMSLogConfig sharedConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = AMSSetLogKeyIfNeeded();
    v24 = v23;
    v27 = 138544642;
    v25 = @"Not prompted before.";
    v28 = v22;
    if (v15)
    {
      v25 = v15;
    }

    v29 = 2114;
    v30 = v23;
    v31 = 1024;
    v32 = v19;
    v33 = 2114;
    v34 = v14;
    v35 = 2114;
    v36 = v25;
    v37 = 2048;
    v38 = a6;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Should prompt: %d, with session count: %{public}@, last attempt: %{public}@, prompt interval: %ld", &v27, 0x3Au);
  }

  return v19;
}

+ (id)createBagForSubProfile
{
  v2 = [objc_opt_class() bagKeySet];
  v3 = [objc_opt_class() bagSubProfile];
  v4 = [objc_opt_class() bagSubProfileVersion];
  [AMSBagKeySet registerBagKeySet:v2 forProfile:v3 profileVersion:v4];

  v5 = [objc_opt_class() bagSubProfile];
  v6 = [objc_opt_class() bagSubProfileVersion];
  v7 = [AMSBag bagForProfile:v5 profileVersion:v6];

  return v7;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end