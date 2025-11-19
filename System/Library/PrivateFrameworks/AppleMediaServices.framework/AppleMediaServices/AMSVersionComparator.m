@interface AMSVersionComparator
+ (BOOL)isVersionSupported:(id)a3 requiredVersion:(id)a4;
+ (id)_sanitizedVersionStringForVersionString:(id)a3;
@end

@implementation AMSVersionComparator

+ (BOOL)isVersionSupported:(id)a3 requiredVersion:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [a1 _sanitizedVersionStringForVersionString:v6];
    v10 = [a1 _sanitizedVersionStringForVersionString:v8];
    v11 = [v10 compare:v9 options:64] != 1;
  }

  else
  {
    v12 = +[AMSLogConfig sharedConfig];
    if (!v12)
    {
      v12 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = 138412802;
      v16 = objc_opt_class();
      v17 = 2112;
      v18 = v6;
      v19 = 2112;
      v20 = v8;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%@: Comparing version strings with nil: candidate: %@, required: %@", &v15, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

+ (id)_sanitizedVersionStringForVersionString:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"."];
  if ([v4 count] < 2)
  {
    v7 = v3;
    if (v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __64__AMSVersionComparator__sanitizedVersionStringForVersionString___block_invoke;
    v12[3] = &unk_1E73B3A38;
    v13 = v5;
    v6 = v5;
    [v4 enumerateObjectsUsingBlock:v12];
    v7 = [v6 componentsJoinedByString:@"."];

    if (v7)
    {
      goto LABEL_10;
    }
  }

  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    *buf = 138543618;
    v15 = v10;
    v16 = 2114;
    v17 = v3;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: Failed to sanitize version string: %{public}@", buf, 0x16u);
  }

LABEL_10:

  return v7;
}

void __64__AMSVersionComparator__sanitizedVersionStringForVersionString___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(a2, "integerValue")}];
  v5 = [v3 stringWithFormat:@"%@", v4];

  [*(a1 + 32) addObject:v5];
}

@end