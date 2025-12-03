@interface APRequestExtension
- (void)_finish;
- (void)beginRequestWithExtensionContext:(id)context;
- (void)checkDownloadQueue;
- (void)requestUpdatedWithResult:(id)result completion:(id)completion;
@end

@implementation APRequestExtension

- (void)checkDownloadQueue
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = +[APLogConfig sharedExtensionConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: checkDownloadQueue has not been overriden.", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestUpdatedWithResult:(id)result completion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = +[APLogConfig sharedExtensionConfig];
  if (!v5)
  {
    v5 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v9 = 138543362;
    v10 = objc_opt_class();
    v7 = v10;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: requestUpdatedWithResult:completion: has not been overriden.", &v9, 0xCu);
  }

  completionCopy[2](completionCopy);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_finish
{
  objc_initWeak(&location, self);
  extensionContext = [(APRequestExtension *)self extensionContext];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__APRequestExtension__finish__block_invoke;
  v4[3] = &unk_278CC1718;
  objc_copyWeak(&v5, &location);
  [extensionContext completeRequestReturningItems:0 completionHandler:v4];

  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __29__APRequestExtension__finish__block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedExtensionConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_241063000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Extension finished", &v6, 0xCu);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)beginRequestWithExtensionContext:(id)context
{
  v34 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  [(APRequestExtension *)self setExtensionContext:contextCopy];
  inputItems = [contextCopy inputItems];
  firstObject = [inputItems firstObject];

  userInfo = [firstObject userInfo];
  v8 = +[APLogConfig sharedExtensionConfig];
  if (!v8)
  {
    v8 = +[APLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSHashIfNeeded();
    *buf = 138543618;
    v31 = v10;
    v32 = 2112;
    v33 = v12;
    _os_log_impl(&dword_241063000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: Begun extension succesfully. User info: %@", buf, 0x16u);
  }

  v13 = [userInfo objectForKeyedSubscript:@"checkDownloadQueue"];
  bOOLValue = [v13 BOOLValue];

  if (bOOLValue)
  {
    [(APRequestExtension *)self checkDownloadQueue];
    [(APRequestExtension *)self _finish];
  }

  else
  {
    v15 = [APResult alloc];
    v16 = [userInfo objectForKeyedSubscript:@"result"];
    v17 = [(APResult *)v15 initWithDictionary:v16];

    v18 = +[APLogConfig sharedExtensionConfig];
    v19 = v18;
    if (v17)
    {
      if (!v18)
      {
        v19 = +[APLogConfig sharedConfig];
      }

      oSLogObject2 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = v21;
        v23 = AMSHashIfNeeded();
        *buf = 138543618;
        v31 = v21;
        v32 = 2112;
        v33 = v23;
        _os_log_impl(&dword_241063000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: Begun extension succesfully. Result: %@", buf, 0x16u);
      }

      objc_initWeak(buf, self);
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __55__APRequestExtension_beginRequestWithExtensionContext___block_invoke;
      v28[3] = &unk_278CC15D8;
      objc_copyWeak(&v29, buf);
      [(APRequestExtension *)self requestUpdatedWithResult:v17 completion:v28];
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);
    }

    else
    {
      if (!v18)
      {
        v19 = +[APLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v25 = objc_opt_class();
        *buf = 138543362;
        v31 = v25;
        v26 = v25;
        _os_log_impl(&dword_241063000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Context input item doesn't have result", buf, 0xCu);
      }

      [(APRequestExtension *)self _finish];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __55__APRequestExtension_beginRequestWithExtensionContext___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = +[APLogConfig sharedExtensionConfig];
  if (!v2)
  {
    v2 = +[APLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    v7 = objc_opt_class();
    v4 = v7;
    _os_log_impl(&dword_241063000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: Result observer finished", &v6, 0xCu);
  }

  [WeakRetained _finish];
  v5 = *MEMORY[0x277D85DE8];
}

@end