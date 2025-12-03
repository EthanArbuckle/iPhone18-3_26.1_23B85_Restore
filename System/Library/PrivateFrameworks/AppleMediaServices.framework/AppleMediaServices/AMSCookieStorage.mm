@interface AMSCookieStorage
+ (BOOL)updateCookiesWithCookiesToAdd:(id)add cookiesToRemove:(id)remove forAccount:(id)account error:(id *)error;
+ (id)cookiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error;
+ (id)updateCookiesWithCookiesToAdd:(id)add cookiesToRemove:(id)remove forAccount:(id)account;
@end

@implementation AMSCookieStorage

+ (id)cookiesForAccount:(id)account cookieDatabaseOnly:(BOOL)only error:(id *)error
{
  onlyCopy = only;
  v60 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (([accountCopy ams_isiTunesAccount] & 1) == 0)
  {
    v52 = onlyCopy;
    errorCopy = error;
    v9 = +[AMSUnitTests isRunningUnitTests];
    v10 = +[AMSLogConfig sharedAccountsCookiesConfig];
    defaultCenter = v10;
    if (v9)
    {
      if (!v10)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = AMSLogKey();
        v14 = MEMORY[0x1E696AEC0];
        v15 = objc_opt_class();
        v50 = a2;
        if (v13)
        {
          v16 = AMSLogKey();
          v47 = NSStringFromSelector(a2);
          v48 = v16;
          [v14 stringWithFormat:@"%@: [%@] %@ ", v15, v16, v47];
        }

        else
        {
          v48 = NSStringFromSelector(a2);
          [v14 stringWithFormat:@"%@: %@ ", v15, v48];
        }
        v17 = ;
        v24 = AMSHashIfNeeded(*MEMORY[0x1E6959930]);
        accountType = [accountCopy accountType];
        identifier = [accountType identifier];
        v9 = AMSHashIfNeeded(identifier);
        *buf = 138543874;
        v55 = v17;
        v56 = 2114;
        v57 = v24;
        v58 = 2114;
        v59 = v9;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unexpected account type. Expected %{public}@, got %{public}@.", buf, 0x20u);

        if (v13)
        {

          v17 = v47;
        }

        a2 = v50;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedAccountsCookiesConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v10)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v19 = AMSLogKey();
        v20 = MEMORY[0x1E696AEC0];
        v21 = objc_opt_class();
        v51 = a2;
        if (v19)
        {
          v22 = AMSLogKey();
          v47 = NSStringFromSelector(a2);
          v49 = v22;
          [v20 stringWithFormat:@"%@: [%@] %@ ", v21, v22, v47];
        }

        else
        {
          v49 = NSStringFromSelector(a2);
          [v20 stringWithFormat:@"%@: %@ ", v21, v49];
        }
        v23 = ;
        v27 = AMSHashIfNeeded(*MEMORY[0x1E6959930]);
        accountType2 = [accountCopy accountType];
        identifier2 = [accountType2 identifier];
        v9 = AMSHashIfNeeded(identifier2);
        *buf = 138543874;
        v55 = v23;
        v56 = 2114;
        v57 = v27;
        v58 = 2114;
        v59 = v9;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Unexpected account type. Expected %{public}@, got %{public}@.", buf, 0x20u);

        if (v19)
        {

          v23 = v47;
        }

        a2 = v51;
      }
    }

    v30 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v30)
    {
      v30 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v30 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v32 = AMSLogKey();
      v33 = MEMORY[0x1E696AEC0];
      v34 = objc_opt_class();
      if (v32)
      {
        v35 = AMSLogKey();
        v9 = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: [%@] %@ ", v34, v35, v9];
      }

      else
      {
        v35 = NSStringFromSelector(a2);
        [v33 stringWithFormat:@"%@: %@ ", v34, v35];
      }
      v36 = ;
      v37 = AMSHashIfNeeded(accountCopy);
      *buf = 138543618;
      v55 = v36;
      v56 = 2114;
      v57 = v37;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@account: %{public}@", buf, 0x16u);
      if (v32)
      {

        v36 = v9;
      }
    }

    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v39 = [ams_sharedAccountStore ams_iTunesAccountForAccount:accountCopy];
    v40 = v39;
    if (v39)
    {
      v41 = v39;
    }

    else
    {
      v41 = accountCopy;
    }

    v42 = v41;

    accountCopy = v42;
    error = errorCopy;
    onlyCopy = v52;
  }

  v43 = +[AMSCookieService sharedService];
  v44 = [v43 getCookiePropertiesForAccount:accountCopy cookieDatabaseOnly:onlyCopy error:error];

  v45 = [MEMORY[0x1E695ABF8] ams_cookiesForProperties:v44];

  return v45;
}

+ (id)updateCookiesWithCookiesToAdd:(id)add cookiesToRemove:(id)remove forAccount:(id)account
{
  v66 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  removeCopy = remove;
  addCopy = add;
  if (([accountCopy ams_isiTunesAccount] & 1) == 0)
  {
    v11 = +[AMSUnitTests isRunningUnitTests];
    v12 = +[AMSLogConfig sharedAccountsCookiesConfig];
    defaultCenter = v12;
    if (v11)
    {
      if (!v12)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v15 = AMSLogKey();
        v16 = MEMORY[0x1E696AEC0];
        v17 = objc_opt_class();
        v56 = v15;
        v58 = a2;
        if (v15)
        {
          v18 = AMSLogKey();
          v53 = NSStringFromSelector(a2);
          v54 = v18;
          [v16 stringWithFormat:@"%@: [%@] %@ ", v17, v18, v53];
        }

        else
        {
          v54 = NSStringFromSelector(a2);
          [v16 stringWithFormat:@"%@: %@ ", v17, v54];
        }
        v19 = ;
        v26 = AMSHashIfNeeded(*MEMORY[0x1E6959930]);
        accountType = [accountCopy accountType];
        identifier = [accountType identifier];
        v11 = AMSHashIfNeeded(identifier);
        *buf = 138543874;
        v61 = v19;
        v62 = 2114;
        v63 = v26;
        v64 = 2114;
        v65 = v11;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unexpected account type. Expected %{public}@, got %{public}@.", buf, 0x20u);

        if (v56)
        {

          v19 = v53;
        }

        a2 = v58;
      }

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      oSLogObject2 = +[AMSLogConfig sharedAccountsCookiesConfig];
      [defaultCenter postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:oSLogObject2 userInfo:0];
    }

    else
    {
      if (!v12)
      {
        defaultCenter = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [defaultCenter OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_FAULT))
      {
        v21 = AMSLogKey();
        v22 = MEMORY[0x1E696AEC0];
        v23 = objc_opt_class();
        v57 = v21;
        v59 = a2;
        if (v21)
        {
          v24 = AMSLogKey();
          v53 = NSStringFromSelector(a2);
          v55 = v24;
          [v22 stringWithFormat:@"%@: [%@] %@ ", v23, v24, v53];
        }

        else
        {
          v55 = NSStringFromSelector(a2);
          [v22 stringWithFormat:@"%@: %@ ", v23, v55];
        }
        v25 = ;
        v29 = AMSHashIfNeeded(*MEMORY[0x1E6959930]);
        accountType2 = [accountCopy accountType];
        identifier2 = [accountType2 identifier];
        v11 = AMSHashIfNeeded(identifier2);
        *buf = 138543874;
        v61 = v25;
        v62 = 2114;
        v63 = v29;
        v64 = 2114;
        v65 = v11;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_FAULT, "%{public}@Unexpected account type. Expected %{public}@, got %{public}@.", buf, 0x20u);

        if (v57)
        {

          v25 = v53;
        }

        a2 = v59;
      }
    }

    v32 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEBUG))
    {
      v34 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      if (v34)
      {
        v37 = AMSLogKey();
        v38 = a2;
        v39 = v37;
        v11 = NSStringFromSelector(v38);
        [v35 stringWithFormat:@"%@: [%@] %@ ", v36, v39, v11];
      }

      else
      {
        v39 = NSStringFromSelector(a2);
        [v35 stringWithFormat:@"%@: %@ ", v36, v39];
      }
      v40 = ;
      v41 = AMSHashIfNeeded(accountCopy);
      *buf = 138543618;
      v61 = v40;
      v62 = 2114;
      v63 = v41;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEBUG, "%{public}@account: %{public}@", buf, 0x16u);
      if (v34)
      {

        v40 = v11;
      }
    }

    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v43 = [ams_sharedAccountStore ams_iTunesAccountForAccount:accountCopy];
    v44 = v43;
    if (v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = accountCopy;
    }

    v46 = v45;

    accountCopy = v46;
  }

  v47 = objc_alloc_init(AMSBinaryPromise);
  v48 = +[AMSCookieService sharedService];
  v49 = [MEMORY[0x1E695ABF8] ams_propertiesForCookies:addCopy];

  v50 = [MEMORY[0x1E695ABF8] ams_propertiesForCookies:removeCopy];

  completionHandlerAdapter = [(AMSBinaryPromise *)v47 completionHandlerAdapter];
  [v48 updateCookiesWithCookiePropertiesToAdd:v49 cookiePropertiesToRemove:v50 forAccount:accountCopy withCompletion:completionHandlerAdapter];

  return v47;
}

+ (BOOL)updateCookiesWithCookiesToAdd:(id)add cookiesToRemove:(id)remove forAccount:(id)account error:(id *)error
{
  v7 = [self updateCookiesWithCookiesToAdd:add cookiesToRemove:remove forAccount:account];
  LOBYTE(error) = [v7 resultWithError:error];

  return error;
}

@end