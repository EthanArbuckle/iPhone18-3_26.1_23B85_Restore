@interface ACAccountStore(AMSSecureToken)
+ (CFTypeRef)_baseQueryDictionaryForIdentifier:()AMSSecureToken numValues:;
+ (id)_secureTokenForIdentifier:()AMSSecureToken error:;
- (id)ams_secureTokenForAccount:()AMSSecureToken;
- (uint64_t)ams_setSecureToken:()AMSSecureToken forAccount:error:;
@end

@implementation ACAccountStore(AMSSecureToken)

+ (CFTypeRef)_baseQueryDictionaryForIdentifier:()AMSSecureToken numValues:
{
  keys[5] = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E697ABD0];
  keys[0] = *MEMORY[0x1E697AC30];
  keys[1] = v4;
  values[0] = a3;
  values[1] = @"apple";
  v5 = *MEMORY[0x1E695E4D0];
  v6 = *MEMORY[0x1E697AE88];
  keys[2] = *MEMORY[0x1E697B390];
  keys[3] = v6;
  values[2] = v5;
  values[3] = @"com.apple.itunesstored.token";
  keys[4] = *MEMORY[0x1E697AFF8];
  values[4] = *MEMORY[0x1E697B008];
  if (a4)
  {
    *a4 = 5;
  }

  v7 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 5, 0, 0);
  return CFAutorelease(v7);
}

+ (id)_secureTokenForIdentifier:()AMSSecureToken error:
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![v6 length])
  {
    v12 = 0;
    goto LABEL_35;
  }

  v39 = 0;
  v7 = [a1 _baseQueryDictionaryForIdentifier:v6 numValues:&v39];
  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v39 + 1, v7);
  CFDictionaryAddValue(MutableCopy, *MEMORY[0x1E697B318], *MEMORY[0x1E695E4D0]);
  result = 0;
  v9 = SecItemCopyMatching(MutableCopy, &result);
  v10 = result;
  if (v9 == -25300)
  {
    v13 = +[AMSLogConfig sharedAccountsConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        a1 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, a1];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543618;
      v43 = v19;
      v44 = 2114;
      v45 = v6;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_INFO, "%{public}@We don't have a secure token stored for %{public}@.", buf, 0x16u);
      if (v15)
      {

        v19 = a1;
      }
    }

    goto LABEL_33;
  }

  v11 = v9;
  if (v9)
  {
    v20 = +[AMSLogConfig sharedAccountsConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = AMSLogKey();
      v23 = MEMORY[0x1E696AEC0];
      v24 = objc_opt_class();
      v25 = v24;
      if (v22)
      {
        v37 = AMSLogKey();
        [v23 stringWithFormat:@"%@: [%@] ", v25, v37];
      }

      else
      {
        [v23 stringWithFormat:@"%@: ", v24];
      }
      v26 = ;
      *buf = 138543874;
      v43 = v26;
      v44 = 2114;
      v45 = v6;
      v46 = 1024;
      v47 = v11;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to fetch the secure token (X-Token) for %{public}@. error = %d", buf, 0x1Cu);
      if (v22)
      {

        v26 = v37;
      }
    }

    if (a4)
    {
      v40 = @"AMSKeychainErrorCode";
      v34 = [MEMORY[0x1E696AD98] numberWithInt:v11];
      v41 = v34;
      v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      *a4 = AMSCustomError(@"AMSErrorDomain", 7, @"Secure Token Not Found", @"Encountered an error querying the keychain.", v35, 0);
    }

LABEL_33:
    v12 = 0;
    goto LABEL_34;
  }

  if (![result length])
  {
    v27 = +[AMSLogConfig sharedAccountsConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = AMSLogKey();
      v30 = MEMORY[0x1E696AEC0];
      v31 = objc_opt_class();
      v32 = v31;
      if (v29)
      {
        a1 = AMSLogKey();
        [v30 stringWithFormat:@"%@: [%@] ", v32, a1];
      }

      else
      {
        [v30 stringWithFormat:@"%@: ", v31];
      }
      v33 = ;
      *buf = 138543618;
      v43 = v33;
      v44 = 2114;
      v45 = v6;
      _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_ERROR, "%{public}@Secure token query succeeded but no data was returned. identifier = %{public}@", buf, 0x16u);
      if (v29)
      {

        v33 = a1;
      }
    }

    if (a4)
    {
      AMSError(0, @"Unknown Keychain Error", @"The keychain operation succeeded but returned no data.", 0);
      *a4 = v12 = 0;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v10 encoding:4];
LABEL_34:
  CFRelease(MutableCopy);

LABEL_35:

  return v12;
}

- (id)ams_secureTokenForAccount:()AMSSecureToken
{
  v56 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = AMSLogKey();
    v10 = MEMORY[0x1E696AEC0];
    v11 = a1;
    v12 = objc_opt_class();
    if (v9)
    {
      v13 = AMSLogKey();
      v3 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: [%@] %@ ", v12, v13, v3];
    }

    else
    {
      v13 = NSStringFromSelector(a2);
      [v10 stringWithFormat:@"%@: %@ ", v12, v13];
    }
    v14 = ;
    v15 = AMSHashIfNeeded(v6);
    *buf = 138543618;
    v51 = v14;
    v52 = 2114;
    v53 = v15;
    _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_INFO, "%{public}@Fetching secure token for account: %{public}@", buf, 0x16u);
    if (v9)
    {

      v14 = v3;
    }

    a1 = v11;
  }

  v16 = MEMORY[0x1E6959A48];
  v17 = [v6 identifier];
  v49 = 0;
  v18 = [v16 _secureTokenForIdentifier:v17 error:&v49];
  v19 = v49;

  if (v18)
  {
    goto LABEL_29;
  }

  if (v19)
  {
    v20 = +[AMSLogConfig sharedAccountsConfig];
    if (!v20)
    {
      v20 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v20 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = a2;
      v23 = AMSLogKey();
      v43 = MEMORY[0x1E696AEC0];
      v47 = a1;
      v24 = objc_opt_class();
      v45 = v23;
      if (v23)
      {
        v25 = AMSLogKey();
        a2 = v22;
        v42 = NSStringFromSelector(v22);
        v44 = v25;
        [v43 stringWithFormat:@"%@: [%@] %@ ", v24, v25, v42];
      }

      else
      {
        a2 = v22;
        v44 = NSStringFromSelector(v22);
        [v43 stringWithFormat:@"%@: %@ ", v24, v44];
      }
      v26 = ;
      v27 = AMSHashIfNeeded(v6);
      v28 = AMSLogableError(v19);
      *buf = 138543874;
      v51 = v26;
      v52 = 2114;
      v53 = v27;
      v54 = 2114;
      v55 = v28;
      _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_ERROR, "%{public}@Error fetching secure token. account = %{public}@ | error = %{public}@", buf, 0x20u);
      if (v45)
      {

        v26 = v42;
      }

      a1 = v47;
    }
  }

  if ([v6 ams_isiCloudAccount] && (objc_msgSend(a1, "ams_iTunesAccountForAccount:", v6), (v29 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v30 = v29;
    v31 = +[AMSLogConfig sharedAccountsConfig];
    if (!v31)
    {
      v31 = +[AMSLogConfig sharedConfig];
    }

    v32 = [v31 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = AMSLogKey();
      v34 = MEMORY[0x1E696AEC0];
      v48 = a1;
      v35 = objc_opt_class();
      v46 = v33;
      if (v33)
      {
        v36 = AMSLogKey();
        v44 = NSStringFromSelector(a2);
        [v34 stringWithFormat:@"%@: [%@] %@ ", v35, v36, v44];
      }

      else
      {
        v36 = NSStringFromSelector(a2);
        [v34 stringWithFormat:@"%@: %@ ", v35, v36];
      }
      v37 = ;
      v40 = AMSHashIfNeeded(v6);
      v41 = AMSHashIfNeeded(v30);
      *buf = 138543874;
      v51 = v37;
      v52 = 2114;
      v53 = v40;
      v54 = 2114;
      v55 = v41;
      _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_INFO, "%{public}@Found iTunes account for iCloud account, fetching secure token. account = %{public}@ | iTunesAccount = %{public}@", buf, 0x20u);
      if (v46)
      {

        v37 = v44;
      }

      a1 = v48;
    }

    v38 = [a1 ams_secureTokenForAccount:v30];
  }

  else
  {
LABEL_29:
    v38 = v18;
  }

  return v38;
}

- (uint64_t)ams_setSecureToken:()AMSSecureToken forAccount:error:
{
  v64 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = [v10 identifier];
  v12 = [v11 length];

  if (!v12)
  {
    goto LABEL_25;
  }

  v13 = +[AMSLogConfig sharedAccountsConfig];
  v14 = v13;
  if (v9)
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v56 = a5;
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      if (v16)
      {
        v19 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v17 stringWithFormat:@"%@: [%@] %@ ", v18, v19, a2];
      }

      else
      {
        v19 = NSStringFromSelector(a2);
        [v17 stringWithFormat:@"%@: %@ ", v18, v19];
      }
      v20 = ;
      v23 = AMSHashIfNeeded(v10);
      *buf = 138543618;
      v61 = v20;
      v62 = 2114;
      v63 = v23;
      v24 = "%{public}@Setting secure token for account: %{public}@";
LABEL_17:
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_INFO, v24, buf, 0x16u);
      if (v16)
      {

        v20 = a2;
      }

      a5 = v56;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v56 = a5;
      v16 = AMSLogKey();
      v21 = MEMORY[0x1E696AEC0];
      v22 = objc_opt_class();
      if (v16)
      {
        v19 = AMSLogKey();
        a2 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: [%@] %@ ", v22, v19, a2];
      }

      else
      {
        v19 = NSStringFromSelector(a2);
        [v21 stringWithFormat:@"%@: %@ ", v22, v19];
      }
      v20 = ;
      v23 = AMSHashIfNeeded(v10);
      *buf = 138543618;
      v61 = v20;
      v62 = 2114;
      v63 = v23;
      v24 = "%{public}@Deleting secure token for account: %{public}@";
      goto LABEL_17;
    }
  }

  v59 = 0;
  v25 = objc_opt_class();
  v26 = [v10 identifier];
  v27 = [v25 _baseQueryDictionaryForIdentifier:v26 numValues:&v59];

  if (v9)
  {
    v28 = [v9 dataUsingEncoding:4];
    v29 = [a1 ams_secureTokenForAccount:v10];
    v30 = v29;
    if (v29)
    {
      if ([v29 isEqualToString:v9])
      {
        v31 = 0;
        goto LABEL_47;
      }

      v40 = +[AMSLogConfig sharedAccountsConfig];
      if (!v40)
      {
        v40 = +[AMSLogConfig sharedConfig];
      }

      v41 = [v40 OSLogObject];
      if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
      {
        v58 = a5;
        v42 = AMSLogKey();
        v43 = MEMORY[0x1E696AEC0];
        v44 = objc_opt_class();
        v45 = v44;
        if (v42)
        {
          v55 = AMSLogKey();
          [v43 stringWithFormat:@"%@: [%@] ", v45, v55];
        }

        else
        {
          [v43 stringWithFormat:@"%@: ", v44];
        }
        v46 = ;
        v50 = AMSHashIfNeeded(v10);
        *buf = 138543618;
        v61 = v46;
        v62 = 2114;
        v63 = v50;
        _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@Updating an existing secure token. account = %{public}@.", buf, 0x16u);
        if (v42)
        {

          v46 = v55;
        }

        a5 = v58;
      }

      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE8]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v28);
      v49 = SecItemUpdate(v27, Mutable);
    }

    else
    {
      v33 = +[AMSLogConfig sharedAccountsConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v34 = [v33 OSLogObject];
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        v57 = a5;
        v35 = AMSLogKey();
        v36 = MEMORY[0x1E696AEC0];
        v37 = objc_opt_class();
        v38 = v37;
        if (v35)
        {
          v55 = AMSLogKey();
          [v36 stringWithFormat:@"%@: [%@] ", v38, v55];
        }

        else
        {
          [v36 stringWithFormat:@"%@: ", v37];
        }
        v39 = ;
        v47 = AMSHashIfNeeded(v10);
        *buf = 138543618;
        v61 = v39;
        v62 = 2114;
        v63 = v47;
        _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@Adding a new secure token to keychain. account = %{public}@", buf, 0x16u);
        if (v35)
        {

          v39 = v55;
        }

        a5 = v57;
      }

      Mutable = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], v59 + 2, v27);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD8], *MEMORY[0x1E697ABE8]);
      CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B3C0], v28);
      v49 = SecItemAdd(Mutable, 0);
    }

    v31 = v49;
    CFRelease(Mutable);
LABEL_47:

    if (v31)
    {
      goto LABEL_48;
    }

LABEL_25:
    v32 = 1;
    goto LABEL_51;
  }

  v31 = SecItemDelete(v27);
  if (!v31)
  {
    goto LABEL_25;
  }

LABEL_48:
  v51 = MEMORY[0x1E696AEC0];
  v52 = [v10 identifier];
  v53 = [v51 stringWithFormat:@"Failed to set the secure token for %@. err = %d", v52, v31];

  if (a5)
  {
    *a5 = AMSError(104, @"Failed to Set Secure Token", v53, 0);
  }

  v32 = 0;
LABEL_51:

  return v32;
}

@end