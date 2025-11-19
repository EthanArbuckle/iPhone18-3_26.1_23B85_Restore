@interface AMSOpenURL
+ (BOOL)_openURL:(id)a3 inApp:(id)a4;
+ (BOOL)_openURLWithLaunchServices:(id)a3;
+ (BOOL)_shouldOpenStandardURL:(id)a3 inApp:(id)a4 withLinks:(id)a5;
+ (BOOL)openStandardURL:(id)a3;
+ (id)_modifiedURLFromURL:(id)a3 bundleInfo:(id)a4;
+ (id)openURL:(id)a3 clientInfo:(id)a4 bag:(id)a5;
+ (void)openURL:(id)a3 account:(id)a4 preferredClient:(id)a5;
- (AMSOpenURL)initWithURL:(id)a3 clientInfo:(id)a4 bag:(id)a5;
- (BOOL)_openURL:(id)a3 bundleInfo:(id)a4;
- (BOOL)_shouldOpenURL:(id)a3;
- (id)_performOpen;
@end

@implementation AMSOpenURL

- (AMSOpenURL)initWithURL:(id)a3 clientInfo:(id)a4 bag:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = AMSOpenURL;
  v12 = [(AMSOpenURL *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_URL, a3);
    objc_storeStrong(&v13->_bag, a5);
    if (v10)
    {
      v14 = v10;
    }

    else
    {
      v14 = +[AMSProcessInfo currentProcess];
    }

    clientInfo = v13->_clientInfo;
    v13->_clientInfo = v14;
  }

  return v13;
}

+ (BOOL)openStandardURL:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = AMSLogableURL(v4);
    *buf = 138543874;
    v24 = v8;
    v25 = 2114;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Opening URL: %{public}@", buf, 0x20u);
  }

  v22 = 0;
  v11 = [MEMORY[0x1E69635C0] appLinksWithURL:v4 limit:1 includeLinksForCurrentApplication:1 error:&v22];
  v12 = v22;
  v13 = +[AMSProcessInfo currentProcess];
  v14 = [v13 bundleIdentifier];

  v15 = +[AMSLogConfig sharedConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = objc_opt_class();
    v18 = AMSLogKey();
    v19 = AMSLogableURL(v4);
    *buf = 138544642;
    v24 = v17;
    v25 = 2114;
    v26 = v18;
    v27 = 2114;
    v28 = v19;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v11;
    v33 = 2114;
    v34 = v12;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Asking for appLinks for URL: %{public}@ from app %{public}@ returned: %{public}@ with error: %{public}@", buf, 0x3Eu);
  }

  if ([a1 _openModeForStandardURL:v4 inApp:v14 withLinks:v11] == 1 && (objc_msgSend(a1, "_openURL:inApp:", v4, v14) & 1) != 0)
  {
    v20 = 1;
  }

  else
  {
    v20 = [a1 _openURLWithLaunchServices:v4];
  }

  return v20;
}

+ (void)openURL:(id)a3 account:(id)a4 preferredClient:(id)a5
{
  v10 = a3;
  v7 = a5;
  v8 = +[AMSProcessInfo currentProcess];
  [v8 setProxyAppBundleID:v7];

  v9 = [a1 openURL:v10 clientInfo:v8 bag:0];
}

+ (id)openURL:(id)a3 clientInfo:(id)a4 bag:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[AMSOpenURL alloc] initWithURL:v9 clientInfo:v8 bag:v7];

  v11 = [(AMSOpenURL *)v10 _performOpen];

  return v11;
}

- (id)_performOpen
{
  v3 = objc_alloc_init(AMSMutableBinaryPromise);
  v4 = AMSSetLogKeyIfNeeded();
  v5 = dispatch_get_global_queue(25, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __26__AMSOpenURL__performOpen__block_invoke;
  block[3] = &unk_1E73B71B0;
  v12 = v4;
  v13 = self;
  v6 = v3;
  v14 = v6;
  v7 = v4;
  dispatch_async(v5, block);

  v8 = v14;
  v9 = v6;

  return v6;
}

void __26__AMSOpenURL__performOpen__block_invoke(void **a1)
{
  v46 = *MEMORY[0x1E69E9840];
  v2 = AMSSetLogKey(a1[4]);
  v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [a1[5] setAttemptedTargets:v3];

  v4 = [a1[5] URL];

  if (v4 || (AMSError(2, @"Open URL Failed", @"No URL to open", 0), (v12 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v5 = [a1[5] clientInfo];
    v6 = [v5 proxyAppBundleID];

    if (v6)
    {
      v7 = [AMSProcessInfo alloc];
      v8 = [a1[5] clientInfo];
      v9 = [v8 proxyAppBundleID];
      v10 = [(AMSProcessInfo *)v7 initWithBundleIdentifier:v9];

      v11 = [AMSMappedBundleInfo bundleInfoForProcessInfo:v10];
    }

    else
    {
      v11 = 0;
    }

    v13 = a1[5];
    v14 = [v13 URL];
    LOBYTE(v13) = [v13 _openURL:v14 bundleInfo:v11];

    if (v13 & 1) != 0 || ([a1[5] clientInfo], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) && (objc_msgSend(a1[5], "clientInfo"), v16 = objc_claimAutoreleasedReturnValue(), +[AMSMappedBundleInfo bundleInfoForProcessInfo:](AMSMappedBundleInfo, "bundleInfoForProcessInfo:", v16), v17 = objc_claimAutoreleasedReturnValue(), v16, v18 = a1[5], objc_msgSend(v18, "URL"), v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v18, "_openURL:bundleInfo:", v19, v17), v19, v17, (v18) || (objc_msgSend(a1[5], "clientInfo"), v20 = objc_claimAutoreleasedReturnValue(), v20, v20) && (objc_msgSend(a1[5], "clientInfo"), v21 = objc_claimAutoreleasedReturnValue(), +[AMSMappedBundleInfo bundleInfoForMobileAppStoreWithProcessInfo:](AMSMappedBundleInfo, "bundleInfoForMobileAppStoreWithProcessInfo:", v21), v22 = objc_claimAutoreleasedReturnValue(), v21, v23 = a1[5], objc_msgSend(v23, "URL"), v24 = objc_claimAutoreleasedReturnValue(), LOBYTE(v23) = objc_msgSend(v23, "_openURL:bundleInfo:", v24, v22), v24, v22, (v23) || (v25 = a1[5], objc_msgSend(v25, "URL"), v26 = objc_claimAutoreleasedReturnValue(), LODWORD(v25) = objc_msgSend(v25, "_shouldOpenURL:", v26), v26, v25) && (v27 = objc_opt_class(), objc_msgSend(a1[5], "URL"), v28 = objc_claimAutoreleasedReturnValue(), LODWORD(v27) = objc_msgSend(v27, "openStandardURL:", v28), v28, v27))
    {
      v29 = a1[6];

      [v29 finishWithSuccess];
      return;
    }

    v30 = [a1[5] URL];
    v12 = AMSErrorWithFormat(0, @"Open URL Failed", @"Unable to open the given URL: %@", v31, v32, v33, v34, v35, v30);
  }

  v36 = +[AMSLogConfig sharedConfig];
  if (!v36)
  {
    v36 = +[AMSLogConfig sharedConfig];
  }

  v37 = [v36 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_opt_class();
    v39 = AMSLogKey();
    *buf = 138543874;
    v41 = v38;
    v42 = 2114;
    v43 = v39;
    v44 = 2114;
    v45 = v12;
    _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to open URL. %{public}@", buf, 0x20u);
  }

  [a1[6] finishWithError:v12];
}

+ (id)_modifiedURLFromURL:(id)a3 bundleInfo:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = 0;
    goto LABEL_12;
  }

  v7 = [v5 scheme];
  if ([v7 isEqualToString:@"http"])
  {
    v8 = [v6 scheme];
  }

  else
  {
    if (![v7 isEqualToString:@"https"])
    {
      v10 = 0;
      goto LABEL_10;
    }

    v8 = [v6 secureScheme];
  }

  v10 = v8;
  if (!v8)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v11 = [v5 absoluteString];
  v12 = [v11 substringFromIndex:{objc_msgSend(v7, "length")}];
  v13 = [v10 stringByAppendingString:v12];

  v9 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v13];
LABEL_11:

LABEL_12:

  return v9;
}

- (BOOL)_openURL:(id)a3 bundleInfo:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [objc_opt_class() _modifiedURLFromURL:v6 bundleInfo:v7];
  v10 = [MEMORY[0x1E6963608] defaultWorkspace];
  v11 = [v10 applicationsAvailableForOpeningURL:v9];

  if (v9 && [v11 count])
  {
    v12 = v9;
  }

  else
  {
    v12 = 0;
  }

  if ([(AMSOpenURL *)self _shouldOpenURL:v12])
  {
    v13 = [(AMSOpenURL *)self attemptedTargets];
    v14 = [v12 absoluteString];
    [v13 addObject:v14];

    v15 = [objc_opt_class() openStandardURL:v12];
  }

  else
  {
    v15 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v15;
}

- (BOOL)_shouldOpenURL:(id)a3
{
  v4 = a3;
  v5 = [v4 absoluteString];
  if ([v5 length])
  {
    v6 = [(AMSOpenURL *)self attemptedTargets];
    v7 = [v4 absoluteString];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (BOOL)_shouldOpenStandardURL:(id)a3 inApp:(id)a4 withLinks:(id)a5
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [a5 firstObject];
  v10 = v9;
  v11 = 0;
  if (!v8 || !v9)
  {
    goto LABEL_14;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  v12 = [v10 targetApplicationRecord];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
LABEL_12:

    goto LABEL_13;
  }

  v13 = [v12 bundleIdentifier];
  if (![v8 isEqualToString:v13])
  {

    goto LABEL_12;
  }

  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v18 = AMSLogableURL(v7);
    v20 = 138544130;
    v21 = v16;
    v22 = 2114;
    v23 = v17;
    v24 = 2114;
    v25 = v18;
    v26 = 2114;
    v27 = v8;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] URL (%{public}@) is a universal link for the currently open app (%{public}@).", &v20, 0x2Au);
  }

  v11 = 1;
LABEL_14:

  return v11;
}

+ (BOOL)_openURLWithLaunchServices:(id)a3
{
  v22[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E699F990];
  v21[0] = *MEMORY[0x1E699F970];
  v21[1] = v3;
  v22[0] = MEMORY[0x1E695E118];
  v22[1] = MEMORY[0x1E695E118];
  v21[2] = *MEMORY[0x1E699F940];
  v22[2] = @"AMSOpenURL";
  v4 = MEMORY[0x1E695DF20];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v22 forKeys:v21 count:3];
  v7 = [MEMORY[0x1E6963608] defaultWorkspace];
  v8 = [v7 openSensitiveURL:v5 withOptions:v6];

  v9 = +[AMSLogConfig sharedConfig];
  v10 = v9;
  if (v8)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      v17 = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v13;
      v14 = "%{public}@: [%{public}@] URL opened successfully.";
LABEL_10:
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, v14, &v17, 0x16u);
    }
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v13 = AMSLogKey();
      v17 = 138543618;
      v18 = v15;
      v19 = 2114;
      v20 = v13;
      v14 = "%{public}@: [%{public}@] URL failed to open.";
      goto LABEL_10;
    }
  }

  return v8;
}

+ (BOOL)_openURL:(id)a3 inApp:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[AMSProcessInfo alloc] initWithBundleIdentifier:v6];

  v9 = [AMSMappedBundleInfo bundleInfoForProcessInfo:v8];
  v10 = [a1 _modifiedURLFromURL:v7 bundleInfo:v9];

  if (v10)
  {
    v11 = [a1 _openURLWithLaunchServices:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end