@interface NSMutableURLRequest
@end

@implementation NSMutableURLRequest

void __86__NSMutableURLRequest_AppleMediaServices__ams_addBiometricsHeadersForAccount_options___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (!v6)
  {
    [*(a1 + 40) setValue:v5 forHTTPHeaderField:v7];
  }
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v7)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v3 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v3];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      v17 = AMSLogableError(v7);
      *buf = 138543618;
      v21 = v15;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Local account couldn't be fetched for request-cookie addition. error = %{public}@", buf, 0x16u);
      if (v11)
      {

        v15 = v3;
      }
    }
  }

  else
  {
    if ([*(a1 + 40) ams_isLocalAccount])
    {
      v16 = 0;
    }

    else
    {
      v16 = v6;
    }

    [v8 ams_addNullableObject:v16];
  }

  [v8 ams_addNullableObject:*(a1 + 40)];
  v18 = [AMSPromise promiseWithResult:v8];

  return v18;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_153(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
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
      v18 = AMSLogableError(v6);
      v19 = [*(a1 + 32) URL];
      v20 = AMSHashIfNeeded(v19);
      *buf = 138543874;
      v24 = v13;
      v25 = 2114;
      v26 = v18;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Defaulting to not including analytics cookies since client ID domains couldn't be fetched from bag. This is not an error. This has no functional impact. bag-result = %{public}@ | URL = %{public}@", buf, 0x20u);

      if (v9)
      {

        v13 = v3;
      }
    }

    v17 = [AMSPromise promiseWithResult:MEMORY[0x1E695E110]];
  }

  else
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_154;
    v22[3] = &unk_1E73B42A8;
    v22[4] = *(a1 + 32);
    v14 = [a2 ams_firstObjectPassingTest:v22];
    v15 = v14 != 0;

    v16 = [MEMORY[0x1E696AD98] numberWithBool:v15];
    v17 = [AMSPromise promiseWithResult:v16];
  }

  return v17;
}

uint64_t __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_154(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (!v4)
    {
      v7 = 0;
      goto LABEL_6;
    }

    v5 = [*(a1 + 32) URL];
    v6 = [v5 host];
    v7 = [v6 hasSuffix:v4];
  }

  else
  {
    v4 = 0;
    v7 = 0;
    v5 = v3;
  }

LABEL_6:
  return v7;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_157(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v3 objectAtIndexedSubscript:1];

  LOBYTE(v3) = [v5 BOOLValue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2;
  v13[3] = &unk_1E73BE488;
  v13[4] = *(a1 + 32);
  v11 = *(a1 + 40);
  v6 = v11;
  v14 = v11;
  v15 = *(a1 + 56);
  v16 = v3;
  v7 = [v4 ams_mapWithTransform:v13];
  v8 = [AMSPromise promiseWithAll:v7];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_176;
  v12[3] = &unk_1E73BE440;
  v12[4] = *(a1 + 32);
  v9 = [v8 continueWithBlock:v12];

  return v9;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v2 = NSStringFromSelector(*(a1 + 48));
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v2];
    }

    else
    {
      v10 = NSStringFromSelector(*(a1 + 48));
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    v12 = AMSHashIfNeeded(v4);
    *buf = 138543618;
    v28 = v11;
    v29 = 2114;
    v30 = v12;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Creating cookie-promise for account: %{public}@", buf, 0x16u);
    if (v7)
    {

      v11 = v2;
    }
  }

  v13 = [*(a1 + 32) URL];
  v14 = [v4 ams_cookiesForURL:v13 bag:*(a1 + 40) cleanupGlobalCookies:*(a1 + 56)];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_158;
  v25[3] = &unk_1E73BE440;
  v25[4] = *(a1 + 32);
  v15 = [v14 continueWithBlock:v25];

  if (*(a1 + 57) == 1)
  {
    v16 = [MEMORY[0x1E695DFF8] URLWithString:@"https://xp.apple.com"];
    v17 = [v4 ams_cookiesForURL:v16 bag:*(a1 + 40)];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2_162;
    v24[3] = &unk_1E73BE440;
    v24[4] = *(a1 + 32);
    v18 = [v17 continueWithBlock:v24];
  }

  else
  {
    v18 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  v26[0] = v15;
  v26[1] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
  v20 = [AMSPromise promiseWithAll:v19];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2_166;
  v23[3] = &unk_1E73BE440;
  v23[4] = *(a1 + 32);
  v21 = [v20 continueWithBlock:v23];

  return v21;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_158(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
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
      v16 = AMSLogableError(v6);
      v17 = [*(a1 + 32) URL];
      v18 = AMSHashIfNeeded(v17);
      *buf = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch account cookies for request URL. error = %{public}@ | URL = %{public}@", buf, 0x20u);

      if (v9)
      {

        v13 = v3;
      }
    }

    v15 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v14 = [a2 ams_dictionaryUsingTransform:&__block_literal_global_164];
    v15 = [AMSPromise promiseWithResult:v14];
  }

  return v15;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2_162(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
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
      v16 = AMSLogableError(v6);
      v17 = [*(a1 + 32) URL];
      v18 = AMSHashIfNeeded(v17);
      *buf = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v16;
      v24 = 2114;
      v25 = v18;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch account cookies for metrics base domain. No analytics cookies will be added. error = %{public}@ | URL = %{public}@", buf, 0x20u);

      if (v9)
      {

        v13 = v3;
      }
    }

    v15 = [AMSPromise promiseWithResult:MEMORY[0x1E695E0F8]];
  }

  else
  {
    v14 = [a2 ams_dictionaryUsingTransform:&__block_literal_global_165_0];
    v15 = [AMSPromise promiseWithResult:v14];
  }

  return v15;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_2_166(uint64_t a1, void *a2, void *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = 0x1E73B0000uLL;
    v9 = +[AMSLogConfig sharedConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
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
          v34 = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v15, v34];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        v27 = AMSLogableError(v6);
        v28 = [*(a1 + 32) URL];
        v29 = AMSHashIfNeeded(v28);
        *buf = 138543874;
        v36 = v16;
        v37 = 2114;
        v38 = v27;
        v39 = 2114;
        v40 = v29;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error when handling account and analytics cookie-promises. error = %{public}@ | URL = %{public}@", buf, 0x20u);

        if (v12)
        {

          v16 = v34;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v21 = +[AMSLogConfig sharedConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v21 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v21 = [v10 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_FAULT))
      {
        v22 = AMSLogKey();
        v23 = MEMORY[0x1E696AEC0];
        v24 = objc_opt_class();
        v25 = v24;
        if (v22)
        {
          v8 = AMSLogKey();
          [v23 stringWithFormat:@"%@: [%@] ", v25, v8];
        }

        else
        {
          [v23 stringWithFormat:@"%@: ", v24];
        }
        v26 = ;
        v30 = AMSLogableError(v6);
        v31 = [*(a1 + 32) URL];
        v32 = AMSHashIfNeeded(v31);
        *buf = 138543874;
        v36 = v26;
        v37 = 2114;
        v38 = v30;
        v39 = 2114;
        v40 = v32;
        _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error when handling account and analytics cookie-promises. error = %{public}@ | URL = %{public}@", buf, 0x20u);

        if (v22)
        {

          v26 = v8;
        }
      }
    }

    v17 = AMSError(0, @"Unexpected error when handling combined account and analytics cookie-promises.", 0, 0);
    v20 = [AMSPromise promiseWithError:v17];
  }

  else
  {
    v17 = [v5 objectAtIndexedSubscript:0];
    v18 = [v5 objectAtIndexedSubscript:1];
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v19 addEntriesFromDictionary:v18];
    [v19 addEntriesFromDictionary:v17];
    v20 = [AMSPromise promiseWithResult:v19];
  }

  return v20;
}

id __118__NSMutableURLRequest_AppleMediaServices__ams_addCookiesAsynchronouslyForAccount_clientInfo_bag_cleanupGlobalCookies___block_invoke_176(uint64_t a1, void *a2, void *a3)
{
  v52 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSUnitTests isRunningUnitTests];
    v8 = 0x1E73B0000uLL;
    v9 = +[AMSLogConfig sharedConfig];
    v10 = v9;
    if (v7)
    {
      if (!v9)
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
          v40 = AMSLogKey();
          [v13 stringWithFormat:@"%@: [%@] ", v15, v40];
        }

        else
        {
          [v13 stringWithFormat:@"%@: ", v14];
        }
        v16 = ;
        v32 = AMSLogableError(v6);
        v33 = [*(a1 + 32) URL];
        v34 = AMSHashIfNeeded(v33);
        *buf = 138543874;
        v47 = v16;
        v48 = 2114;
        v49 = v32;
        v50 = 2114;
        v51 = v34;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@Unexpected error when handling combined cookie-promises. error = %{public}@ | URL = %{public}@", buf, 0x20u);

        if (v12)
        {

          v16 = v40;
        }
      }

      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[AMSLogConfig sharedConfig];
      [v10 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v9)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v10 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v27 = AMSLogKey();
        v28 = MEMORY[0x1E696AEC0];
        v29 = objc_opt_class();
        v30 = v29;
        if (v27)
        {
          v8 = AMSLogKey();
          [v28 stringWithFormat:@"%@: [%@] ", v30, v8];
        }

        else
        {
          [v28 stringWithFormat:@"%@: ", v29];
        }
        v31 = ;
        v35 = AMSLogableError(v6);
        v36 = [*(a1 + 32) URL];
        v37 = AMSHashIfNeeded(v36);
        *buf = 138543874;
        v47 = v31;
        v48 = 2114;
        v49 = v35;
        v50 = 2114;
        v51 = v37;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_FAULT, "%{public}@Unexpected error when handling combined cookie-promises. error = %{public}@ | URL = %{public}@", buf, 0x20u);

        if (v27)
        {

          v31 = v8;
        }
      }
    }

    v17 = AMSError(0, @"Unexpected error when handling combined cookie-promises.", 0, 0);
    v25 = [AMSPromise promiseWithError:v17];
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v42;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v17 addEntriesFromDictionary:*(*(&v41 + 1) + 8 * i)];
        }

        v20 = [v18 countByEnumeratingWithState:&v41 objects:v45 count:16];
      }

      while (v20);
    }

    v23 = *(a1 + 32);
    v24 = [v17 allValues];
    [v23 _ams_replaceCookies:v24];

    v25 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  v38 = v25;

  return v38;
}

id __97__NSMutableURLRequest_AppleMediaServices__ams_addXGroupDSIDsWithPrimaryAccount_andGroupAccounts___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 ams_DSID];
  v3 = [v2 stringValue];

  return v3;
}

void __69__NSMutableURLRequest_AppleMediaServices__ams_addHeadersFromPromise___block_invoke(uint64_t a1, void *a2)
{
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __69__NSMutableURLRequest_AppleMediaServices__ams_addHeadersFromPromise___block_invoke_2;
  v6[3] = &unk_1E73B5C28;
  v2 = *(a1 + 32);
  v6[4] = *(a1 + 40);
  v3 = a2;
  v4 = [v2 thenWithBlock:v6];
  v5 = [v4 binaryPromiseAdapter];
  [v5 addFinishBlock:v3];
}

AMSPromise *__69__NSMutableURLRequest_AppleMediaServices__ams_addHeadersFromPromise___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) ams_addHeaders:a2];
  v2 = MEMORY[0x1E695E118];

  return [AMSPromise promiseWithResult:v2];
}

void __62__NSMutableURLRequest_AppleMediaServices___ams_authKitHeaders__block_invoke(uint64_t a1)
{
  v4 = +[AMSURLSession sharedAuthKitSession];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) completionHandlerAdapter];
  [v4 appleIDHeadersForRequest:v2 completion:v3];
}

@end