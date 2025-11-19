@interface ACAccount
@end

@implementation ACAccount

uint64_t __44__ACAccount_AppleMediaServices__ams_cookies__block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = [a2 name];
  v5 = [v4 isEqualToString:0x1F071FA58];

  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
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
      v13 = AMSHashIfNeeded(*(a1 + 32));
      *buf = 138543618;
      v16 = v12;
      v17 = 2114;
      v18 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Found ITFE user cookie which will be ignored. ITFE enablement should not be configured using account cookies. account = %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v2;
      }
    }
  }

  return v5 ^ 1u;
}

uint64_t __44__ACAccount_AppleMediaServices__ams_cookies__block_invoke_165(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 ams_isDeleted])
  {
    v3 = 0;
  }

  else
  {
    v3 = [v2 ams_isExpired] ^ 1;
  }

  return v3;
}

id __77__ACAccount_AppleMediaServices__ams_isInRestrictedRegionWithBag_waitForSync___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = *(a1 + 40);
      v11 = AMSHashIfNeeded(*(a1 + 32));
      v12 = AMSLogableError(v6);
      v23 = 138544130;
      v24 = v9;
      v25 = 2114;
      v26 = v10;
      v27 = 2114;
      v28 = v11;
      v29 = 2114;
      v30 = v12;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] AMSSyncRestrictedRegionTask has failed. account = %{public}@ | error = %{public}@", &v23, 0x2Au);
    }

    v13 = [AMSPromise promiseWithResult:*(a1 + 48)];
  }

  else
  {
    v14 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = +[AMSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = objc_opt_class();
      v19 = *(a1 + 40);
      v20 = [v15 BOOLValue];
      v21 = @"NO";
      v23 = 138543874;
      v24 = v18;
      v25 = 2114;
      if (v20)
      {
        v21 = @"YES";
      }

      v26 = v19;
      v27 = 2114;
      v28 = v21;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_INFO, "%{public}@ [%{public}@]: AMSSyncRestrictedRegionTask has finished, IsInRestrictedRegion = %{public}@", &v23, 0x20u);
    }

    v13 = [AMSPromise promiseWithResult:v15];
  }

  return v13;
}

void __65__ACAccount_AppleMediaServices__ams_mergePrivacyAcknowledgement___block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSUnitTests isRunningUnitTests];
  v5 = +[AMSLogConfig sharedPrivacyConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        a1 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, a1];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected value in local privacy acknowledgement. Expected NSNumber, got %{public}@: %{public}@", buf, 0x20u);
      if (v8)
      {

        v12 = a1;
      }
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[AMSLogConfig sharedPrivacyConfig];
    [v6 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v13 userInfo:0];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v26 = v18;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_FAULT, "%{public}@Unexpected value in local privacy acknowledgement. Expected NSNumber, got %{public}@: %{public}@", buf, 0x20u);
      if (v14)
      {

        v18 = a1;
      }
    }
  }
}

void __65__ACAccount_AppleMediaServices__ams_mergePrivacyAcknowledgement___block_invoke_243(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSUnitTests isRunningUnitTests];
  v5 = +[AMSLogConfig sharedPrivacyConfig];
  v6 = v5;
  if (v4)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        a1 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, a1];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v19 = objc_opt_class();
      v20 = NSStringFromClass(v19);
      v21 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v26 = v12;
      v27 = 2114;
      v28 = v20;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@Unexpected value in remote privacy acknowledgement. Expected NSNumber, got %{public}@: %{public}@", buf, 0x20u);
      if (v8)
      {

        v12 = a1;
      }
    }

    v6 = [MEMORY[0x1E696AD88] defaultCenter];
    v13 = +[AMSLogConfig sharedPrivacyConfig];
    [v6 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v13 userInfo:0];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v13 = [v6 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v14 = AMSLogKey();
      v15 = MEMORY[0x1E696AEC0];
      v16 = objc_opt_class();
      v17 = v16;
      if (v14)
      {
        a1 = AMSLogKey();
        [v15 stringWithFormat:@"%@: [%@] ", v17, a1];
      }

      else
      {
        [v15 stringWithFormat:@"%@: ", v16];
      }
      v18 = ;
      v22 = objc_opt_class();
      v23 = NSStringFromClass(v22);
      v24 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v26 = v18;
      v27 = 2114;
      v28 = v23;
      v29 = 2114;
      v30 = v24;
      _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_FAULT, "%{public}@Unexpected value in remote privacy acknowledgement. Expected NSNumber, got %{public}@: %{public}@", buf, 0x20u);
      if (v14)
      {

        v18 = a1;
      }
    }
  }
}

id __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 ams_isExpired] & 1) != 0 || (objc_msgSend(v3, "ams_matchesURL:", *(a1 + 32)) & 1) == 0)
  {
    v10 = +[AMSOptional optionalWithNil];
  }

  else
  {
    if (*(a1 + 64) == 1)
    {
      v4 = [v3 domain];
      v5 = [v4 isEqualToString:@".apple.com"];

      if (v5)
      {
        v6 = objc_opt_class();
        v7 = AMSGlobalCookieAllowlistWithBag(v6, *(a1 + 48), *(a1 + 32));
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke_2;
        v12[3] = &unk_1E73B2EC8;
        v8 = *(a1 + 56);
        v12[4] = *(a1 + 40);
        v15 = v8;
        v13 = v3;
        v14 = *(a1 + 32);
        v9 = [v7 continueWithBlock:v12];

        goto LABEL_8;
      }
    }

    v10 = [AMSOptional optionalWithValue:v3];
  }

  v7 = v10;
  v9 = [AMSPromise promiseWithResult:v10];
LABEL_8:

  return v9;
}

id __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[AMSLogConfig sharedAccountsCookiesConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v25 = v5;
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      if (v9)
      {
        v12 = AMSLogKey();
        v24 = NSStringFromSelector(*(a1 + 56));
        [v10 stringWithFormat:@"%@: [%@] %@ ", v11, v12, v24];
      }

      else
      {
        v12 = NSStringFromSelector(*(a1 + 56));
        [v10 stringWithFormat:@"%@: %@ ", v11, v12];
      }
      v13 = ;
      v19 = [v6 description];
      v20 = [*(a1 + 40) name];
      v21 = [*(a1 + 40) value];
      *buf = 138544130;
      v29 = v13;
      v30 = 2114;
      v31 = v19;
      v32 = 2114;
      v33 = v20;
      v34 = 2114;
      v35 = v21;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Failed to get globalCookieAllowlist key with error=%{public}@, skip allowlist feature and add cookie(name=%{public}@, value=%{public}@)", buf, 0x2Au);

      if (v9)
      {

        v13 = v24;
      }

      v5 = v25;
    }

    v16 = [AMSOptional optionalWithValue:*(a1 + 40)];
    v18 = [AMSPromise promiseWithResult:v16];
  }

  else
  {
    v14 = [*(a1 + 40) name];
    v15 = [v5 objectForKeyedSubscript:v14];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;

      if (v16)
      {
        v26[0] = MEMORY[0x1E69E9820];
        v26[1] = 3221225472;
        v26[2] = __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke_260;
        v26[3] = &unk_1E73B2EA0;
        v26[4] = *(a1 + 32);
        v27 = *(a1 + 48);
        if ([v16 ams_anyWithTest:v26])
        {
          [AMSOptional optionalWithValue:*(a1 + 40)];
        }

        else
        {
          +[AMSOptional optionalWithNil];
        }
        v23 = ;
        v18 = [AMSPromise promiseWithResult:v23];

        goto LABEL_18;
      }
    }

    else
    {
    }

    v17 = [AMSOptional optionalWithValue:*(a1 + 40)];
    v18 = [AMSPromise promiseWithResult:v17];

    v16 = 0;
  }

LABEL_18:

  return v18;
}

uint64_t __76__ACAccount_AppleMediaServices__ams_cookiesForURL_bag_cleanupGlobalCookies___block_invoke_260(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [*(a1 + 40) host];
      v6 = v5;
      if (v5 && ([v5 hasPrefix:@"."] & 1) == 0)
      {
        v7 = [@"." stringByAppendingString:v6];

        v6 = v7;
      }

      v8 = [v6 hasSuffix:v4];

      goto LABEL_30;
    }
  }

  else
  {
  }

  v9 = +[AMSUnitTests isRunningUnitTests];
  v10 = +[AMSLogConfig sharedAccountsCookiesConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        a1 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, a1];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      v24 = AMSHashIfNeeded(v3);
      *buf = 138543618;
      v29 = v17;
      v30 = 2114;
      v31 = v24;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@Unexpected value in global cookie allowlist: %{public}@", buf, 0x16u);
      if (v13)
      {

        v17 = a1;
      }
    }

    v11 = [MEMORY[0x1E696AD88] defaultCenter];
    v25 = +[AMSLogConfig sharedAccountsCookiesConfig];
    [v11 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v25 userInfo:0];
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v11 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v19)
      {
        a1 = AMSLogKey();
        [v20 stringWithFormat:@"%@: [%@] ", v22, a1];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v21];
      }
      v23 = ;
      v26 = AMSHashIfNeeded(v3);
      *buf = 138543618;
      v29 = v23;
      v30 = 2114;
      v31 = v26;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_FAULT, "%{public}@Unexpected value in global cookie allowlist: %{public}@", buf, 0x16u);
      if (v19)
      {

        v23 = a1;
      }
    }
  }

  v4 = 0;
  v8 = 0;
LABEL_30:

  return v8;
}

uint64_t __60__ACAccount_AppleMediaServices___cookiesMatchingProperties___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [a2 properties];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [*(a1 + 32) objectForKeyedSubscript:{v9, v15}];
        v11 = [v3 objectForKeyedSubscript:v9];
        v12 = [v10 isEqual:v11];

        if (!v12)
        {
          v13 = 0;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v13 = 1;
LABEL_11:

  return v13;
}

void __61__ACAccount_AppleMediaServices___defaultValueForAccountFlag___block_invoke()
{
  v3[14] = *MEMORY[0x1E69E9840];
  v2[0] = AMSAccountFlagAutoPlay;
  v2[1] = AMSAccountFlagCanUseAppClips;
  v3[0] = MEMORY[0x1E695E118];
  v3[1] = MEMORY[0x1E695E118];
  v2[2] = AMSAccountFlagHasAgreedToAppClipTerms;
  v2[3] = AMSAccountFlagHasAgreedToTerms;
  v3[2] = MEMORY[0x1E695E118];
  v3[3] = MEMORY[0x1E695E118];
  v2[4] = AMSAccountFlagHasFamilySharingEnabled;
  v2[5] = AMSAccountFlagHasiCloudFamily;
  v3[4] = MEMORY[0x1E695E110];
  v3[5] = MEMORY[0x1E695E110];
  v2[6] = AMSAccountFlagIsRestrictedAccount;
  v2[7] = AMSAccountFlagIsDisabledAccount;
  v3[6] = MEMORY[0x1E695E110];
  v3[7] = MEMORY[0x1E695E110];
  v2[8] = AMSAccountFlagIsManagedAccount;
  v2[9] = AMSAccountFlagIsInRestrictedRegion;
  v3[8] = MEMORY[0x1E695E110];
  v3[9] = MEMORY[0x1E695E110];
  v2[10] = AMSAccountFlagIsInBadCredit;
  v2[11] = AMSAccountFlagPersonalization;
  v3[10] = MEMORY[0x1E695E110];
  v3[11] = MEMORY[0x1E695E118];
  v2[12] = AMSAccountFlagRetailDemo;
  v2[13] = AMSAccountFlagUnderThirteen;
  v3[12] = MEMORY[0x1E695E110];
  v3[13] = MEMORY[0x1E695E110];
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v3 forKeys:v2 count:14];
  v1 = qword_1ED6E2638;
  qword_1ED6E2638 = v0;
}

void __73__ACAccount_AppleMediaServices___isAccountFlagValue_validForAccountFlag___block_invoke()
{
  v4[15] = *MEMORY[0x1E69E9840];
  v0 = MEMORY[0x1E695DFD8];
  v4[0] = AMSAccountFlagAgeVerificationExpiration;
  v4[1] = AMSAccountFlagAutoPlay;
  v4[2] = AMSAccountFlagCanUseAppClips;
  v4[3] = AMSAccountFlagHasAgreedToAppClipTerms;
  v4[4] = AMSAccountFlagHasAgreedToTerms;
  v4[5] = AMSAccountFlagHasFamilySharingEnabled;
  v4[6] = AMSAccountFlagHasiCloudFamily;
  v4[7] = AMSAccountFlagIsRestrictedAccount;
  v4[8] = AMSAccountFlagIsDisabledAccount;
  v4[9] = AMSAccountFlagIsManagedAccount;
  v4[10] = AMSAccountFlagIsInRestrictedRegion;
  v4[11] = AMSAccountFlagIsInBadCredit;
  v4[12] = AMSAccountFlagPersonalization;
  v4[13] = AMSAccountFlagRetailDemo;
  v4[14] = AMSAccountFlagUnderThirteen;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:15];
  v2 = [v0 setWithArray:v1];
  v3 = qword_1ED6E2648;
  qword_1ED6E2648 = v2;
}

uint64_t __69__ACAccount_AppleMediaServices__ams_globalEphemeralAccountProperties__block_invoke()
{
  qword_1ED6E2658 = objc_alloc_init(AMSThreadSafeDictionary);

  return MEMORY[0x1EEE66BB8]();
}

void __80__ACAccount_AppleMediaServices__ams_globalEphemeralAccountPropertiesForAccount___block_invoke(uint64_t a1, void *a2)
{
  v13 = a2;
  v3 = [*(a1 + 32) identifier];
  v4 = [v13 objectForKeyedSubscript:v3];
  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v7 = objc_alloc_init(AMSThreadSafeDictionary);
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1 + 32);
    v11 = *(*(*(a1 + 40) + 8) + 40);
    v12 = [v10 identifier];
    [v13 setObject:v11 forKeyedSubscript:v12];
  }
}

@end