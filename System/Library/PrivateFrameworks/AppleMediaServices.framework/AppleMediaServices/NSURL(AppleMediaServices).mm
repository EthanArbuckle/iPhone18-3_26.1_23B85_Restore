@interface NSURL(AppleMediaServices)
+ (id)ams_cachesDirectory;
+ (id)ams_dataVaultDirectory;
+ (id)ams_dynamicUIDirectory;
+ (id)ams_engagementDirectory;
+ (id)ams_paymentSheetsUIDirectory;
+ (id)ams_unescapedStringForString:()AppleMediaServices;
- (id)ams_parameters;
- (id)ams_unmodifiedParameters;
@end

@implementation NSURL(AppleMediaServices)

+ (id)ams_cachesDirectory
{
  v31 = *MEMORY[0x1E69E9840];
  ams_realHomeDirectory = [self ams_realHomeDirectory];
  v3 = [ams_realHomeDirectory stringByAppendingPathComponent:@"/Library/Caches/com.apple.AppleMediaServices"];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  if (v3)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3 isDirectory:1];
    if (v5)
    {
      v26 = 0;
      v6 = [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v26];
      v7 = v26;
      if (!v6)
      {
LABEL_7:
        v8 = +[AMSLogConfig sharedConfig];
        if (!v8)
        {
          v8 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v8 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v10 = objc_opt_class();
          *buf = 138543618;
          v28 = v10;
          v29 = 2114;
          v30 = v7;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create caches directory. %{public}@", buf, 0x16u);
        }

        goto LABEL_12;
      }
    }

    else
    {
      v7 = 0;
    }

    if ([defaultManager isWritableFileAtPath:v3])
    {
      goto LABEL_28;
    }

    goto LABEL_7;
  }

LABEL_12:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__NSURL_AppleMediaServices__ams_cachesDirectory__block_invoke;
  block[3] = &unk_1E73B40A8;
  selfCopy = self;
  v11 = v3;
  v24 = v11;
  if (ams_cachesDirectory_onceToken[0] != -1)
  {
    dispatch_once(ams_cachesDirectory_onceToken, block);
  }

  v12 = [defaultManager URLForDirectory:13 inDomain:1 appropriateForURL:0 create:1 error:0];
  v5 = [v12 URLByAppendingPathComponent:@"com.apple.AppleMediaServices"];

  if (v5)
  {
    v22 = 0;
    v13 = [defaultManager createDirectoryAtURL:v5 withIntermediateDirectories:1 attributes:0 error:&v22];
    v14 = v22;
    if ((v13 & 1) == 0)
    {
      v15 = +[AMSLogConfig sharedConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543618;
        v28 = v17;
        v29 = 2114;
        v30 = v14;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create caches directory. %{public}@", buf, 0x16u);
      }
    }

    v18 = v5;
  }

  else
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      *buf = 138543618;
      v28 = v20;
      v29 = 2114;
      v30 = v11;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Could not create caches URL from caches path: %{public}@", buf, 0x16u);
    }
  }

  v7 = v24;
LABEL_28:

  return v5;
}

+ (id)ams_engagementDirectory
{
  ams_cachesDirectory = [self ams_cachesDirectory];
  v2 = [ams_cachesDirectory URLByAppendingPathComponent:@"Engagement"];

  return v2;
}

+ (id)ams_dataVaultDirectory
{
  v34 = *MEMORY[0x1E69E9840];
  if ([AMSProcessInfo BOOLForEntitlement:@"com.apple.private.security.storage.AppleMediaServices"])
  {
    ams_realHomeDirectory = [self ams_realHomeDirectory];
    oSLogObject5 = [ams_realHomeDirectory stringByAppendingPathComponent:@"/Library/AppleMediaServices"];
    v4 = +[AMSLogConfig sharedConfig];
    if (!v4)
    {
      v4 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v4 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v6 = objc_opt_class();
      v7 = AMSHashIfNeeded(oSLogObject5);
      v8 = AMSHashIfNeeded(ams_realHomeDirectory);
      v9 = AMSHashIfNeeded(@"/Library/AppleMediaServices");
      *buf = 138544130;
      v27 = v6;
      v28 = 2114;
      v29 = v7;
      v30 = 2114;
      v31 = v8;
      v32 = 2114;
      v33 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: Computed data vault path is %{public}@. homeDirectory = %{public}@ | relativeDirectory = %{public}@", buf, 0x2Au);
    }

    if (oSLogObject5)
    {
      v10 = [MEMORY[0x1E695DFF8] fileURLWithPath:oSLogObject5];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [v10 path];
      v25 = 0;
      v13 = [defaultManager createDirectoryAtPath:path withIntermediateDirectories:1 attributes:0 error:&v25];
      oSLogObject4 = v25;

      v15 = +[AMSLogConfig sharedConfig];
      v16 = v15;
      if (v13)
      {
        if (!v15)
        {
          v16 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v16 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
        {
          v18 = objc_opt_class();
          v19 = AMSHashIfNeeded(v10);
          *buf = 138543618;
          v27 = v18;
          v28 = 2114;
          v29 = v19;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_INFO, "%{public}@: Successfully created data vault directory (or it already exists). dataVaultURL = %{public}@", buf, 0x16u);
        }

        v10 = v10;
        v20 = v10;
        goto LABEL_28;
      }

      if (!v15)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        *buf = 138543618;
        v27 = v23;
        v28 = 2114;
        v29 = oSLogObject4;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: Failed to create data vault directory. %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v10 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v21 = objc_opt_class();
        *buf = 138543362;
        v27 = v21;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: Could not compute data vault path.", buf, 0xCu);
      }
    }

    v20 = 0;
LABEL_28:

    goto LABEL_29;
  }

  ams_realHomeDirectory = +[AMSLogConfig sharedConfig];
  if (!ams_realHomeDirectory)
  {
    ams_realHomeDirectory = +[AMSLogConfig sharedConfig];
  }

  oSLogObject5 = [ams_realHomeDirectory OSLogObject];
  if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v27 = objc_opt_class();
    _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: Cannot access data vault. Current process does not have the correct entitlement.", buf, 0xCu);
  }

  v20 = 0;
LABEL_29:

  return v20;
}

- (id)ams_unmodifiedParameters
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  percentEncodedQueryItems = [v3 percentEncodedQueryItems];
  v5 = percentEncodedQueryItems;
  v6 = MEMORY[0x1E695E0F0];
  if (percentEncodedQueryItems)
  {
    v6 = percentEncodedQueryItems;
  }

  v7 = v6;

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        name = [v12 name];
        if ([name length])
        {
          value = [v12 value];
          v15 = [value length];

          if (!v15)
          {
            continue;
          }

          name = [v12 value];
          name2 = [v12 name];
          [v2 setObject:name forKeyedSubscript:name2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v2;
}

- (id)ams_parameters
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:self resolvingAgainstBaseURL:0];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  queryItems = [v3 queryItems];
  v5 = queryItems;
  v6 = MEMORY[0x1E695E0F0];
  if (queryItems)
  {
    v6 = queryItems;
  }

  v7 = v6;

  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        name = [v12 name];
        if ([name length])
        {
          value = [v12 value];
          v15 = [value length];

          if (!v15)
          {
            continue;
          }

          name = [v12 value];
          name2 = [v12 name];
          [v2 setObject:name forKeyedSubscript:name2];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v9);
  }

  return v2;
}

+ (id)ams_dynamicUIDirectory
{
  ams_cachesDirectory = [self ams_cachesDirectory];
  v2 = [ams_cachesDirectory URLByAppendingPathComponent:@"DynamicUI"];

  return v2;
}

+ (id)ams_paymentSheetsUIDirectory
{
  ams_cachesDirectory = [self ams_cachesDirectory];
  v2 = [ams_cachesDirectory URLByAppendingPathComponent:@"PaymentSheetsUI"];

  return v2;
}

+ (id)ams_unescapedStringForString:()AppleMediaServices
{
  v3 = a3;
  stringByRemovingPercentEncoding = v3;
  if ([v3 length])
  {
    stringByRemovingPercentEncoding = [v3 stringByRemovingPercentEncoding];
  }

  return stringByRemovingPercentEncoding;
}

@end