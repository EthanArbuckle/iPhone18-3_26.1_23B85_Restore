@interface AMSUIContentImageFetchOperation
- (AMSUIContentImageFetchOperation)initWithURL:(id)a3;
- (void)_fallbackWithURL:(id)a3;
- (void)main;
@end

@implementation AMSUIContentImageFetchOperation

- (AMSUIContentImageFetchOperation)initWithURL:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMSUIContentImageFetchOperation;
  v6 = [(AMSUIContentImageFetchOperation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_imageURL, a3);
  }

  return v7;
}

- (void)main
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc(MEMORY[0x1E696AF20]);
  v5 = [(AMSUIContentImageFetchOperation *)self imageURL];
  v6 = [v4 initWithURL:v5 resolvingAgainstBaseURL:0];

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v7 = [v6 queryItems];
  v8 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v42;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v41 + 1) + 8 * i);
        v13 = [v12 value];
        if (v13)
        {
          v14 = [v12 name];
          [v3 setObject:v13 forKey:v14];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v9);
  }

  v15 = [v3 objectForKey:@"fallbackURL"];
  v16 = [v15 stringByRemovingPercentEncoding];

  if (v16)
  {
    v17 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v16];
  }

  else
  {
    v17 = 0;
  }

  v18 = [v3 objectForKey:@"app"];
  if (v18)
  {
    v19 = [v3 objectForKey:@"cacheKey"];
    if (v19)
    {
      v20 = objc_alloc_init(MEMORY[0x1E698C8D8]);
      v21 = [v3 objectForKey:@"version"];
      v22 = [v20 contentInfoForApp:v18 cacheKey:v19 version:v21];

      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 3221225472;
      v39[2] = __39__AMSUIContentImageFetchOperation_main__block_invoke;
      v39[3] = &unk_1E7F24990;
      v39[4] = self;
      v23 = v17;
      v40 = v23;
      [v22 addErrorBlock:v39];
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __39__AMSUIContentImageFetchOperation_main__block_invoke_15;
      v37[3] = &unk_1E7F249D8;
      v37[4] = self;
      v38 = v23;
      [v22 addSuccessBlock:v37];
    }

    else
    {
      v29 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v29)
      {
        v29 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v30 = [v29 OSLogObject];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v31 = objc_opt_class();
        v34 = v31;
        AMSLogKey();
        v32 = v36 = v6;
        *buf = 138543618;
        v46 = v31;
        v47 = 2114;
        v48 = v32;
        _os_log_impl(&dword_1BB036000, v30, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing content cache key", buf, 0x16u);

        v6 = v36;
      }

      [(AMSUIContentImageFetchOperation *)self _fallbackWithURL:v17];
    }
  }

  else
  {
    v24 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v24)
    {
      v24 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = objc_opt_class();
      v35 = v6;
      v27 = v26;
      v28 = AMSLogKey();
      *buf = 138543618;
      v46 = v26;
      v47 = 2114;
      v48 = v28;
      _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Missing application identifier", buf, 0x16u);

      v6 = v35;
    }

    [(AMSUIContentImageFetchOperation *)self _fallbackWithURL:v17];
  }

  v33 = *MEMORY[0x1E69E9840];
}

void __39__AMSUIContentImageFetchOperation_main__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v9;
    v15 = 2114;
    v16 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to get content info: %{public}@", &v11, 0x20u);
  }

  [*(a1 + 32) _fallbackWithURL:*(a1 + 40)];
  v10 = *MEMORY[0x1E69E9840];
}

void __39__AMSUIContentImageFetchOperation_main__block_invoke_15(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (([*(a1 + 32) isCancelled] & 1) == 0)
  {
    v4 = [v3 allKeys];
    v5 = [v4 sortedArrayUsingComparator:&__block_literal_global_4];
    v6 = [v5 lastObject];

    v7 = [v3 objectForKey:v6];
    v8 = [v7 path];

    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x1E69DCAB8]) initWithContentsOfFile:v8];
      if (v9)
      {
        v10 = v9;
        [*(a1 + 32) _finishWithImage:v9 error:0];

LABEL_11:
        goto LABEL_12;
      }

      v11 = [MEMORY[0x1E698C968] sharedConfig];
      if (!v11)
      {
        v11 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = *(a1 + 32);
        v14 = objc_opt_class();
        v15 = v14;
        v16 = AMSLogKey();
        v18 = 138543874;
        v19 = v14;
        v20 = 2114;
        v21 = v16;
        v22 = 2114;
        v23 = v8;
        _os_log_impl(&dword_1BB036000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load image: %{public}@", &v18, 0x20u);
      }
    }

    [*(a1 + 32) _fallbackWithURL:*(a1 + 40)];
    goto LABEL_11;
  }

LABEL_12:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_fallbackWithURL:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIContentImageFetchOperation *)self fallbackBlock];
  v6 = v5;
  if (v4 && v5 && ((*(v5 + 16))(v5, v4), (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __52__AMSUIContentImageFetchOperation__fallbackWithURL___block_invoke;
    v9[3] = &unk_1E7F24A00;
    v9[4] = self;
    [v7 addFinishBlock:v9];
  }

  else
  {
    v8 = AMSError();
    [(AMSUIAssetFetchOperation *)self _finishWithImage:0 error:v8];
  }
}

@end