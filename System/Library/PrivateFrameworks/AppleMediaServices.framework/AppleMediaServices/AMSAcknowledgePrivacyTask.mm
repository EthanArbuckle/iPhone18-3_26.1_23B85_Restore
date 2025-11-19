@interface AMSAcknowledgePrivacyTask
+ (BOOL)_coreAcknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4 account:(id)a5;
+ (BOOL)_existingAcknowledgements:(id)a3 containsNewAcknowledgements:(id)a4;
+ (BOOL)_isBundleHolderPerDeviceRequirementAppliedToAccount:(id)a3;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4 account:(id)a5;
+ (BOOL)hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4 minimumVersion:(id)a5;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 minimumVersion:(id)a4;
+ (BOOL)hasRejectedPrivacyIdentifier:(id)a3;
+ (BOOL)hasRejectedPrivacyIdentifier:(id)a3 account:(id)a4;
+ (id)_multiplexPrivacyIdentifier:(id)a3 contentVersion:(unint64_t)a4;
+ (id)_storePrivacyIdentifiers;
+ (id)_valueForPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4;
+ (unint64_t)_contentVersionForPrivacyIdentifier:(id)a3;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)a3;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)a3 account:(id)a4;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)a3;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)a3 account:(id)a4;
- (id)_updatePrivacyWithAcknowledgementVersions:(id)a3;
- (id)acknowledgePrivacy:(id)a3;
- (id)rejectPrivacy:(id)a3;
@end

@implementation AMSAcknowledgePrivacyTask

+ (id)_storePrivacyIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F0779B80];

  return v2;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)a3
{
  v4 = MEMORY[0x1E6959A48];
  v5 = a3;
  v6 = [v4 ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];
  v8 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifier:v5 account:v7];

  return v8;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)a3
{
  v4 = MEMORY[0x1E6959A48];
  v5 = a3;
  v6 = [v4 ams_sharedAccountStore];
  v7 = [v6 ams_activeiTunesAccount];
  v8 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifiers:v5 account:v7];

  return v8;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)a3 account:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = [a3 copy];
  v9 = [v6 setWithObject:v8];
  v10 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifiers:v9 account:v7];

  return v10;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = AMSAcknowledgePrivacyTask;
  v8 = [(AMSTask *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    privacyIdentifiers = v8->_privacyIdentifiers;
    v8->_privacyIdentifiers = v9;

    objc_storeStrong(&v8->_account, a4);
  }

  return v8;
}

- (id)acknowledgePrivacy:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v6 = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v29;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v29 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (v4)
        {
          v12 = [v4 integerValue];
        }

        else
        {
          v12 = [AMSAcknowledgePrivacyTask _contentVersionForPrivacyIdentifier:*(*(&v28 + 1) + 8 * i)];
        }

        if (!v12)
        {
          v18 = +[AMSLogConfig sharedPrivacyConfig];
          if (!v18)
          {
            v18 = +[AMSLogConfig sharedConfig];
          }

          v19 = [v18 OSLogObject];
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v20 = AMSLogKey();
            v21 = MEMORY[0x1E696AEC0];
            v22 = objc_opt_class();
            v23 = v22;
            if (v20)
            {
              self = AMSLogKey();
              [v21 stringWithFormat:@"%@: [%@] ", v23, self];
            }

            else
            {
              [v21 stringWithFormat:@"%@: ", v22];
            }
            v24 = ;
            *buf = 138543618;
            v33 = v24;
            v34 = 2114;
            v35 = v11;
            _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@The privacy identifier has an invalid content version. Refusing to acknowledge it. privacyIdentifier = %{public}@", buf, 0x16u);
            if (v20)
            {

              v24 = self;
            }
          }

          v25 = AMSError(2, @"AMSAcknowledgePrivacyTask Failed", @"The OnBoardingKit content version for the identifier is invalid.", 0);
          v14 = [AMSBinaryPromise promiseWithError:v25];

          goto LABEL_24;
        }

        v13 = [AMSAcknowledgePrivacyTask _multiplexPrivacyIdentifier:v11 contentVersion:v12];
        [v5 addEntriesFromDictionary:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(AMSAcknowledgePrivacyTask *)self _updatePrivacyWithAcknowledgementVersions:v5];
  v15 = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  v16 = [objc_opt_class() _appleBundleHolderPrivacyIdentifier];
  v17 = [v15 containsObject:v16];

  if (v17)
  {
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __48__AMSAcknowledgePrivacyTask_acknowledgePrivacy___block_invoke;
    v27[3] = &unk_1E73B3680;
    v27[4] = self;
    [v14 addSuccessBlock:v27];
  }

LABEL_24:

  return v14;
}

void __48__AMSAcknowledgePrivacyTask_acknowledgePrivacy___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = AMSLogKey();
    v6 = MEMORY[0x1E696AEC0];
    v7 = objc_opt_class();
    v8 = v7;
    if (v5)
    {
      v1 = AMSLogKey();
      [v6 stringWithFormat:@"%@: [%@] ", v8, v1];
    }

    else
    {
      [v6 stringWithFormat:@"%@: ", v7];
    }
    v9 = ;
    *buf = 138543362;
    v15 = v9;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating account bundle holder record.@", buf, 0xCu);
    if (v5)
    {

      v9 = v1;
    }
  }

  v10 = [*(a1 + 32) account];
  if (!v10)
  {
    v11 = objc_opt_class();
    v12 = [objc_opt_class() _appleBundleHolderPrivacyIdentifier];
    v13 = [v11 _accountStoreForPrivacyIdentifier:v12];

    v10 = [v13 _ams_localiTunesAccount];
  }

  [v10 ams_setDidAcknowledgeBundleHolderPrivacyAcknowledgementOnDevice:1];
}

- (id)rejectPrivacy:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v6 = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  v7 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v25;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v25 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (v4)
        {
          if (![v4 integerValue])
          {
            goto LABEL_13;
          }
        }

        else if (![AMSAcknowledgePrivacyTask _contentVersionForPrivacyIdentifier:*(*(&v24 + 1) + 8 * i)])
        {
LABEL_13:
          v14 = +[AMSLogConfig sharedPrivacyConfig];
          if (!v14)
          {
            v14 = +[AMSLogConfig sharedConfig];
          }

          v15 = [v14 OSLogObject];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v16 = AMSLogKey();
            v17 = MEMORY[0x1E696AEC0];
            v18 = objc_opt_class();
            v19 = v18;
            if (v16)
            {
              self = AMSLogKey();
              [v17 stringWithFormat:@"%@: [%@] ", v19, self];
            }

            else
            {
              [v17 stringWithFormat:@"%@: ", v18];
            }
            v20 = ;
            *buf = 138543618;
            v29 = v20;
            v30 = 2114;
            v31 = v11;
            _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@The privacy identifier has an invalid content version. Refusing to reject it. privacyIdentifier = %{public}@", buf, 0x16u);
            if (v16)
            {

              v20 = self;
            }
          }

          v21 = AMSError(2, @"AMSAcknowledgePrivacyTask Failed to reject", @"The OnBoardingKit content version for the identifier is invalid.", 0);
          v13 = [AMSBinaryPromise promiseWithError:v21];

          goto LABEL_23;
        }

        v12 = [AMSAcknowledgePrivacyTask _multiplexPrivacyIdentifier:v11 contentVersion:0];
        [v5 addEntriesFromDictionary:v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v6 = [(AMSAcknowledgePrivacyTask *)self _updatePrivacyWithAcknowledgementVersions:v5];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__AMSAcknowledgePrivacyTask_rejectPrivacy___block_invoke;
  v23[3] = &unk_1E73B3808;
  v23[4] = self;
  v13 = [v6 thenWithBlock:v23];
LABEL_23:

  return v13;
}

id __43__AMSAcknowledgePrivacyTask_rejectPrivacy___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = [*(a1 + 32) privacyIdentifiers];
  v3 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v13 + 1) + 8 * i);
        v8 = objc_opt_class();
        v9 = [*(a1 + 32) account];
        LODWORD(v7) = [v8 hasRejectedPrivacyIdentifier:v7 account:v9];

        if (!v7)
        {
          v11 = AMSError(0, @"Failed to Reject Privacy", @"An unknown error occurred.", 0);
          v10 = [AMSBinaryPromise promiseWithError:v11];

          goto LABEL_11;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v10 = +[AMSBinaryPromise promiseWithSuccess];
LABEL_11:

  return v10;
}

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _accountStoreForPrivacyIdentifier:v4];
  v6 = [v5 ams_activeiTunesAccount];
  LOBYTE(a1) = [a1 acknowledgementNeededForPrivacyIdentifier:v4 account:v6];

  return a1;
}

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _accountStoreForPrivacyIdentifier:v7];
  v9 = [v8 ams_activeiTunesAccount];
  LOBYTE(a1) = [a1 acknowledgementNeededForPrivacyIdentifier:v7 privacyVersion:v6 account:v9];

  return a1;
}

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4 account:(id)a5
{
  v8 = a5;
  v9 = a3;
  v10 = [a1 _coreAcknowledgementNeededForPrivacyIdentifier:v9 privacyVersion:a4 account:v8];
  v11 = [objc_opt_class() _appleBundleHolderPrivacyIdentifier];
  v12 = [v9 isEqualToString:v11];

  v13 = v12 | v10;
  if (v12 && (v10 & 1) == 0)
  {
    v13 = [a1 _isBundleHolderPerDeviceRequirementAppliedToAccount:v8];
  }

  return v13 & 1;
}

+ (BOOL)_coreAcknowledgementNeededForPrivacyIdentifier:(id)a3 privacyVersion:(id)a4 account:(id)a5
{
  v92 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = AMSSetLogKeyIfNeeded();
  v13 = 0x1E73B0000uLL;
  v14 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v10;
    v5 = AMSLogKey();
    v17 = MEMORY[0x1E696AEC0];
    v18 = objc_opt_class();
    v19 = v18;
    if (v5)
    {
      v13 = AMSLogKey();
      [v17 stringWithFormat:@"%@: [%@] ", v19, v13];
    }

    else
    {
      [v17 stringWithFormat:@"%@: ", v18];
    }
    v20 = ;
    v21 = AMSHashIfNeeded(v11);
    *buf = 138543874;
    v87 = v20;
    v88 = 2114;
    v89 = v9;
    v90 = 2114;
    v91 = v21;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Determining if privacy acknowledgement is needed. privacyIdentifier = %{public}@ | account = %{public}@", buf, 0x20u);
    if (v5)
    {

      v20 = v13;
    }

    v10 = v16;
  }

  if (+[AMSDefaults acknowledgePrivacyOverride]!= 1)
  {
    if (+[AMSDefaults acknowledgePrivacyOverride]== 2)
    {
      v22 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v22 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v31 = MEMORY[0x1E696AEC0];
      v32 = objc_opt_class();
      v33 = v32;
      if (v30)
      {
        a1 = AMSLogKey();
        [v31 stringWithFormat:@"%@: [%@] ", v33, a1];
      }

      else
      {
        [v31 stringWithFormat:@"%@: ", v32];
      }
      v34 = ;
      *buf = 138543362;
      v87 = v34;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDefaults.acknowledgePrivacyOverride is DISABLED.";
LABEL_53:
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
      if (v30)
      {

        v34 = a1;
      }

LABEL_56:
      v41 = 0;
      goto LABEL_57;
    }

    if (+[AMSDefaults disablePrivacyAcknowledgement])
    {
      v22 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v22 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = v36;
      if (v30)
      {
        a1 = AMSLogKey();
        [v35 stringWithFormat:@"%@: [%@] ", v37, a1];
      }

      else
      {
        [v35 stringWithFormat:@"%@: ", v36];
      }
      v34 = ;
      *buf = 138543362;
      v87 = v34;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDefaults.disablePrivacyAcknowledgement is true.";
      goto LABEL_53;
    }

    if (+[AMSDevice isRunningInStoreDemoMode])
    {
      v22 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v29 = [v22 OSLogObject];
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = v39;
      if (v30)
      {
        a1 = AMSLogKey();
        [v38 stringWithFormat:@"%@: [%@] ", v40, a1];
      }

      else
      {
        [v38 stringWithFormat:@"%@: ", v39];
      }
      v34 = ;
      *buf = 138543362;
      v87 = v34;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDevice.isRunningInStoreDemoMode is true.";
      goto LABEL_53;
    }

    if (!v11)
    {
      v42 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      v43 = [v42 OSLogObject];
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = AMSLogKey();
        v45 = MEMORY[0x1E696AEC0];
        v46 = objc_opt_class();
        v47 = v46;
        if (v44)
        {
          v5 = AMSLogKey();
          [v45 stringWithFormat:@"%@: [%@] ", v47, v5];
        }

        else
        {
          [v45 stringWithFormat:@"%@: ", v46];
        }
        v48 = ;
        *buf = 138543362;
        v87 = v48;
        _os_log_impl(&dword_192869000, v43, OS_LOG_TYPE_DEFAULT, "%{public}@No account provided, attempting to use the local account.", buf, 0xCu);
        if (v44)
        {

          v48 = v5;
        }
      }

      v51 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v11 = [v51 _ams_localiTunesAccount];

      if (!v11)
      {
        v11 = +[AMSLogConfig sharedPrivacyConfig];
        if (!v11)
        {
          v11 = +[AMSLogConfig sharedConfig];
        }

        v22 = [v11 OSLogObject];
        if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        v23 = AMSLogKey();
        v75 = MEMORY[0x1E696AEC0];
        v76 = objc_opt_class();
        v77 = v76;
        if (v23)
        {
          a1 = AMSLogKey();
          [v75 stringWithFormat:@"%@: [%@] ", v77, a1];
        }

        else
        {
          [v75 stringWithFormat:@"%@: ", v76];
        }
        v24 = ;
        *buf = 138543362;
        v87 = v24;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@Privacy acknowledgement is needed because we failed to get an account.", buf, 0xCu);
        if (v23)
        {

          v24 = a1;
        }

        goto LABEL_38;
      }
    }

    v52 = [v11 ams_privacyAcknowledgement];
    v22 = [v52 objectForKeyedSubscript:v9];

    if (v10)
    {
      v53 = v10;
    }

    else
    {
      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(a1, "_contentVersionForPrivacyIdentifier:", v9)}];
    }

    v54 = v53;
    if (!v22 || [v22 compare:v53]== -1)
    {
      [v11 reload];
      v55 = [v11 ams_privacyAcknowledgement];
      v56 = [v55 objectForKeyedSubscript:v9];

      v22 = v56;
    }

    if ([v22 isEqualToNumber:&unk_1F0778F38])
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      v58 = [v57 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v54;
        v59 = v9;
        v60 = v10;
        v61 = AMSLogKey();
        v62 = MEMORY[0x1E696AEC0];
        v63 = objc_opt_class();
        v64 = v63;
        if (v61)
        {
          a1 = AMSLogKey();
          [v62 stringWithFormat:@"%@: [%@] ", v64, a1];
        }

        else
        {
          [v62 stringWithFormat:@"%@: ", v63];
        }
        v65 = ;
        *buf = 138543618;
        v87 = v65;
        v88 = 2114;
        v89 = v22;
        v83 = "%{public}@Privacy bundle was rejected. No need to prompt for acknowledgement. acknowledgedVersion = %{public}@";
LABEL_104:
        _os_log_impl(&dword_192869000, v58, OS_LOG_TYPE_DEFAULT, v83, buf, 0x16u);
        if (v61)
        {

          v65 = a1;
        }

        v41 = 0;
        v10 = v60;
        v9 = v59;
        v54 = v84;
        goto LABEL_119;
      }

      goto LABEL_88;
    }

    if ([v54 isEqualToNumber:&unk_1F0778F50])
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      v58 = [v57 OSLogObject];
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v54;
        v59 = v9;
        v60 = v10;
        v61 = AMSLogKey();
        v66 = MEMORY[0x1E696AEC0];
        v67 = objc_opt_class();
        v68 = v67;
        if (v61)
        {
          a1 = AMSLogKey();
          [v66 stringWithFormat:@"%@: [%@] ", v68, a1];
        }

        else
        {
          [v66 stringWithFormat:@"%@: ", v67];
        }
        v65 = ;
        *buf = 138543618;
        v87 = v65;
        v88 = 2114;
        v89 = v22;
        v83 = "%{public}@Current version is 0. No need to prompt for acknowledgement. acknowledgedVersion = %{public}@";
        goto LABEL_104;
      }

      goto LABEL_88;
    }

    if (!v22 || [v22 compare:v54]== -1)
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      v58 = [v57 OSLogObject];
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 1;
        goto LABEL_119;
      }

      v85 = v9;
      v69 = v10;
      v78 = AMSLogKey();
      v79 = MEMORY[0x1E696AEC0];
      v80 = objc_opt_class();
      v81 = v80;
      if (v78)
      {
        a1 = AMSLogKey();
        [v79 stringWithFormat:@"%@: [%@] ", v81, a1];
      }

      else
      {
        [v79 stringWithFormat:@"%@: ", v80];
      }
      v82 = ;
      *buf = 138543874;
      v87 = v82;
      v88 = 2114;
      v89 = v22;
      v90 = 2114;
      v91 = v54;
      _os_log_impl(&dword_192869000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is needed. acknowledgedVersion = %{public}@ | currentVersion = %{public}@", buf, 0x20u);
      if (v78)
      {

        v82 = a1;
      }

      v41 = 1;
    }

    else
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      v58 = [v57 OSLogObject];
      if (!os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
LABEL_88:
        v41 = 0;
LABEL_119:

        goto LABEL_57;
      }

      v85 = v9;
      v69 = v10;
      v70 = AMSLogKey();
      v71 = MEMORY[0x1E696AEC0];
      v72 = objc_opt_class();
      v73 = v72;
      if (v70)
      {
        a1 = AMSLogKey();
        [v71 stringWithFormat:@"%@: [%@] ", v73, a1];
      }

      else
      {
        [v71 stringWithFormat:@"%@: ", v72];
      }
      v74 = ;
      *buf = 138543874;
      v87 = v74;
      v88 = 2114;
      v89 = v22;
      v90 = 2114;
      v91 = v54;
      _os_log_impl(&dword_192869000, v58, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is not needed. acknowledgedVersion = %{public}@ | currentVersion = %{public}@", buf, 0x20u);
      if (v70)
      {

        v74 = a1;
      }

      v41 = 0;
    }

    v10 = v69;
    v9 = v85;
    goto LABEL_119;
  }

  v22 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v22)
  {
    v22 = +[AMSLogConfig sharedConfig];
  }

  v23 = [v22 OSLogObject];
  if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_39;
  }

  v24 = AMSLogKey();
  v25 = MEMORY[0x1E696AEC0];
  v26 = objc_opt_class();
  v27 = v26;
  if (v24)
  {
    a1 = AMSLogKey();
    [v25 stringWithFormat:@"%@: [%@] ", v27, a1];
  }

  else
  {
    [v25 stringWithFormat:@"%@: ", v26];
  }
  v28 = ;
  *buf = 138543362;
  v87 = v28;
  _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is needed because AMSDefaults.acknowledgePrivacyOverride is ALWAYS.", buf, 0xCu);
  if (v24)
  {

    v28 = a1;
  }

LABEL_38:
LABEL_39:

LABEL_40:
  v41 = 1;
LABEL_57:

  return v41;
}

+ (BOOL)_isBundleHolderPerDeviceRequirementAppliedToAccount:(id)a3
{
  v3 = a3;
  if (+[AMSDevice deviceIsBundle])
  {
    v4 = [v3 ams_isSubjectToPerDeviceBundleHolderAcknowledgement];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)hasRejectedPrivacyIdentifier:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v17 = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = v4;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining if user has rejected privacy acknowledgement. privacyIdentifier = %{public}@", &v17, 0x20u);
  }

  v10 = [a1 _accountStoreForPrivacyIdentifier:v4];
  v11 = [v10 ams_activeiTunesAccount];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v10 _ams_localiTunesAccount];
  }

  v14 = v13;

  v15 = [objc_opt_class() hasRejectedPrivacyIdentifier:v4 account:v14];
  return v15;
}

+ (BOOL)hasRejectedPrivacyIdentifier:(id)a3 account:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v29 = 138543874;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    v33 = 2114;
    v34 = v6;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining if user has rejected privacy acknowledgement. privacyIdentifier = %{public}@", &v29, 0x20u);
  }

  if (!v7)
  {
    v13 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v29 = 138543874;
      v30 = v15;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = v6;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No account provided, attempting to use the local account. privacyIdentifier = %{public}@", &v29, 0x20u);
    }

    v17 = [a1 _accountStoreForPrivacyIdentifier:v6];
    v7 = [v17 _ams_localiTunesAccount];

    if (!v7)
    {
      v7 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v7)
      {
        v7 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v7 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        v29 = 138543618;
        v30 = v26;
        v31 = 2114;
        v32 = v27;
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We failed to get an account, so do not have record of user rejecting privacy acknowledgement.", &v29, 0x16u);
      }

      goto LABEL_21;
    }
  }

  v18 = [v7 ams_privacyAcknowledgement];
  v19 = [v18 objectForKeyedSubscript:v6];

  v20 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSHashIfNeeded(v7);
    v29 = 138544130;
    v30 = v22;
    v31 = 2114;
    v32 = v23;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = v19;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] account = %{public}@ | acknowledgedVersion = %{public}@", &v29, 0x2Au);
  }

  if (!v19)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v25 = [v19 isEqualToNumber:&unk_1F0778F38];
LABEL_22:

  return v25;
}

+ (BOOL)hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements
{
  v32[2] = *MEMORY[0x1E69E9840];
  if (+[AMSDefaults disablePrivacyAcknowledgement])
  {
    v3 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v3)
    {
      v3 = +[AMSLogConfig sharedConfig];
    }

    v4 = [v3 OSLogObject];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous bundle acknowledgements will not be fetched because AMSDefaults.disablePrivacyAcknowledgement is true.", buf, 0x16u);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = [a1 _appleBundleOwnerPrivacyIdentifier];
    v3 = [a1 _accountStoreForPrivacyIdentifier:v8];

    v4 = [v3 ams_localiTunesAccount];
    if (v4)
    {
      v9 = [a1 _appleBundleOwnerPrivacyIdentifier];
      v32[0] = v9;
      v10 = [a1 _appleBundleHolderPrivacyIdentifier];
      v32[1] = v10;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __86__AMSAcknowledgePrivacyTask_hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements__block_invoke;
      v23 = &unk_1E73B3830;
      v25 = a1;
      v24 = v4;
      v7 = [v11 ams_anyWithTest:&v20];
      v12 = [AMSLogConfig sharedPrivacyConfig:v20];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        *buf = 138543874;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        v30 = 1024;
        v31 = v7;
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Has previously acknowledged = %d.", buf, 0x1Cu);
      }

      v16 = v24;
    }

    else
    {
      v11 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v11 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No local account!", buf, 0x16u);
      }

      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  if (+[AMSDefaults disablePrivacyAcknowledgement])
  {
    v6 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous acknowledgement will not be fetched because AMSDefaults.disablePrivacyAcknowledgement is true.", &v14, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [a1 _accountStoreForPrivacyIdentifier:v4];
    v12 = [v11 ams_activeiTunesAccount];
    v10 = [a1 hasPreviouslyAcknowledgedPrivacyIdentifier:v4 account:v12];
  }

  return v10;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = a3;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = [a1 _valueForPreviouslyAcknowledgedPrivacyIdentifier:v7 account:v6];

  v10 = +[AMSLogConfig sharedPrivacyConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v20 = 138543874;
      v21 = v13;
      v22 = 2114;
      v23 = v14;
      v24 = 2114;
      v25 = v9;
      v15 = "%{public}@: [%{public}@] Previous Privacy acknowledgement found. acknowledgedVersion = %{public}@";
      v16 = v12;
      v17 = 32;
LABEL_10:
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, v15, &v20, v17);
    }
  }

  else
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v14 = AMSLogKey();
      v20 = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v14;
      v15 = "%{public}@: [%{public}@] No Previous Privacy acknowledgement found.";
      v16 = v12;
      v17 = 22;
      goto LABEL_10;
    }
  }

  return v9 != 0;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 minimumVersion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 _accountStoreForPrivacyIdentifier:v7];
  v9 = [v8 ams_activeiTunesAccount];
  LOBYTE(a1) = [a1 hasPreviouslyAcknowledgedPrivacyIdentifier:v7 account:v9 minimumVersion:v6];

  return a1;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4 minimumVersion:(id)a5
{
  v37 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v27 = 138544386;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = v8;
    v33 = 2114;
    v34 = v9;
    v35 = 2114;
    v36 = v10;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking identifier %{public}@ on account: %{public}@ minimumVersion = %{public}@", &v27, 0x34u);
  }

  v15 = [a1 _valueForPreviouslyAcknowledgedPrivacyIdentifier:v8 account:v9];
  v16 = +[AMSLogConfig sharedPrivacyConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v27 = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous Privacy acknowledgement found. acknowledgedVersion = %{public}@", &v27, 0x20u);
    }

    v21 = [v15 unsignedIntegerValue];
    v22 = v21 >= [v10 unsignedIntegerValue];
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v23 = [v17 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v25;
      _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Previous Privacy acknowledgement found.", &v27, 0x16u);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)_valueForPreviouslyAcknowledgedPrivacyIdentifier:(id)a3 account:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = AMSSetLogKeyIfNeeded();
  if (v7)
  {
    goto LABEL_7;
  }

  v9 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v10 = [v9 OSLogObject];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v6;
    _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No account provided, attempting to use the local account. privacyIdentifier = %{public}@", &v19, 0x20u);
  }

  v13 = [a1 _accountStoreForPrivacyIdentifier:v6];
  v7 = [v13 _ams_localiTunesAccount];

  if (v7)
  {
LABEL_7:
    v14 = [v7 ams_privacyAcknowledgement];
    v15 = [v14 objectForKeyedSubscript:v6];
  }

  else
  {
    v7 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v7 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No Previous acknowledgement because we failed to get an account.", &v19, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_updatePrivacyWithAcknowledgementVersions:(id)a3
{
  v4 = a3;
  v5 = AMSLogKey();
  if (!v5)
  {
    v5 = AMSSetLogKey(0);
  }

  objc_initWeak(&location, self);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AMSAcknowledgePrivacyTask__updatePrivacyWithAcknowledgementVersions___block_invoke;
  v10[3] = &unk_1E73B3858;
  objc_copyWeak(&v14, &location);
  v6 = v5;
  v11 = v6;
  v7 = v4;
  v12 = v7;
  v13 = self;
  v8 = [(AMSTask *)self performBinaryTaskWithBlock:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);

  return v8;
}

uint64_t __71__AMSAcknowledgePrivacyTask__updatePrivacyWithAcknowledgementVersions___block_invoke(uint64_t a1, void *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = AMSSetLogKey(*(a1 + 32));
  v6 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v10 = [WeakRetained privacyIdentifiers];
    *buf = 138543874;
    v62 = v8;
    v63 = 2114;
    v64 = v9;
    v65 = 2114;
    v66 = v10;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Running AMSAcknowledgePrivacyTask. privacyIdentifiers = %{public}@", buf, 0x20u);
  }

  v11 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v12 = [v11 _ams_localiTunesAccount];
  if (([v12 ams_mergePrivacyAcknowledgement:*(a1 + 40)] & 2) != 0)
  {
    v14 = [v11 ams_saveAccount:v12 verifyCredentials:0];
    v13 = [v14 resultWithError:a2];
  }

  else
  {
    v13 = 1;
  }

  v15 = [*(a1 + 48) account];
  if (v15)
  {
    v58 = a2;
    v59 = v12;
    v16 = WeakRetained;
    v17 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = v13;
    v19 = [v17 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = [v15 hashedDescription];
      *buf = 138543874;
      v62 = v20;
      v63 = 2114;
      v64 = v21;
      v65 = 2114;
      v66 = v22;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We have an account. Merging the privacy acknowledgement into it. account = %{public}@", buf, 0x20u);
    }

    v23 = [v15 ams_mergePrivacyAcknowledgement:*(a1 + 40)];
    v24 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = AMSLogKey();
      *buf = 138543874;
      v62 = v26;
      v63 = 2114;
      v64 = v27;
      v65 = 2048;
      v66 = v23;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Merge result = %ld", buf, 0x20u);
    }

    if ((v23 & 2) == 0)
    {
      v13 = v18;
      WeakRetained = v16;
      v12 = v59;
      goto LABEL_39;
    }

    v28 = [v11 ams_saveAccount:v15 verifyCredentials:0];
    v60 = 0;
    v29 = [v28 resultWithError:&v60];
    v30 = v60;
    v13 = v18 & v29;

    if (v30)
    {
      v31 = [v30 code];
      v32 = +[AMSLogConfig sharedPrivacyConfig];
      v33 = v32;
      WeakRetained = v16;
      if (v31 == 102)
      {
        v57 = v13;
        if (!v32)
        {
          v33 = +[AMSLogConfig sharedConfig];
        }

        v34 = [v33 OSLogObject];
        v12 = v59;
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v56 = objc_opt_class();
          v35 = AMSLogKey();
          v36 = [v15 hashedDescription];
          *buf = 138543874;
          v62 = v56;
          v63 = 2114;
          v64 = v35;
          v65 = 2114;
          v66 = v36;
          _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Account not dirty. Checking the privacy acknowledgements match. account = %{public}@", buf, 0x20u);
        }

        [v15 reload];
        v37 = [v15 ams_privacyAcknowledgement];
        v38 = [AMSAcknowledgePrivacyTask _existingAcknowledgements:v37 containsNewAcknowledgements:*(a1 + 40)];

        v39 = +[AMSLogConfig sharedPrivacyConfig];
        v40 = v39;
        if (v38)
        {
          if (!v39)
          {
            v40 = +[AMSLogConfig sharedConfig];
          }

          v41 = [v40 OSLogObject];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v42 = objc_opt_class();
            v43 = AMSLogKey();
            *buf = 138543618;
            v62 = v42;
            v63 = 2114;
            v64 = v43;
            _os_log_impl(&dword_192869000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Acknowledgements match. Returning success.", buf, 0x16u);
          }

          v13 = 1;
        }

        else
        {
          if (!v39)
          {
            v40 = +[AMSLogConfig sharedConfig];
          }

          v51 = [v40 OSLogObject];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            v52 = objc_opt_class();
            v53 = AMSLogKey();
            v54 = [v30 description];
            *buf = 138543874;
            v62 = v52;
            v63 = 2114;
            v64 = v53;
            v65 = 2112;
            v66 = v54;
            _os_log_impl(&dword_192869000, v51, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Acknowledgements do NOT match. %@", buf, 0x20u);
          }

          v55 = v30;
          *v58 = v30;
          v13 = v57;
        }

        goto LABEL_38;
      }

      if (!v32)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      v44 = [v33 OSLogObject];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = objc_opt_class();
        v46 = AMSLogKey();
        [v30 description];
        v48 = v47 = v13;
        *buf = 138543874;
        v62 = v45;
        v63 = 2114;
        v64 = v46;
        v65 = 2112;
        v66 = v48;
        _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Save account error. %@", buf, 0x20u);

        v13 = v47;
        WeakRetained = v16;
      }

      v49 = v30;
      *v58 = v30;
    }

    else
    {
      WeakRetained = v16;
    }

    v12 = v59;
LABEL_38:
  }

LABEL_39:

  return v13;
}

+ (BOOL)_existingAcknowledgements:(id)a3 containsNewAcknowledgements:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = [v6 allKeys];
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v5 objectForKeyedSubscript:v12];
        v14 = [v6 objectForKeyedSubscript:v12];
        v15 = v14;
        if (!v13 || [v14 compare:v13] == 1)
        {

          v16 = 0;
          goto LABEL_13;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v16 = 1;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v16 = 1;
  }

LABEL_13:

  return v16;
}

+ (unint64_t)_contentVersionForPrivacyIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 _appleBundleHolderPrivacyIdentifier];
  if ([v4 isEqualToString:v5])
  {

LABEL_4:
    v8 = 2;
    goto LABEL_10;
  }

  v6 = [a1 _appleBundleOwnerPrivacyIdentifier];
  v7 = [v4 isEqualToString:v6];

  if (v7)
  {
    goto LABEL_4;
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v9 = _MergedGlobals_3_0;
  v24 = _MergedGlobals_3_0;
  if (!_MergedGlobals_3_0)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getOBBundleClass_block_invoke;
    v19 = &unk_1E73B3880;
    v20 = &v21;
    __getOBBundleClass_block_invoke(&v16);
    v9 = v22[3];
  }

  v10 = v9;
  _Block_object_dispose(&v21, 8);
  v11 = [v9 bundleWithIdentifier:v4];
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v12 = qword_1ED6E24A8;
  v24 = qword_1ED6E24A8;
  if (!qword_1ED6E24A8)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getOBPrivacyFlowClass_block_invoke;
    v19 = &unk_1E73B3880;
    v20 = &v21;
    __getOBPrivacyFlowClass_block_invoke(&v16);
    v12 = v22[3];
  }

  v13 = v12;
  _Block_object_dispose(&v21, 8);
  v14 = [v12 flowWithBundle:v11];
  v8 = [v14 contentVersion];

LABEL_10:
  return v8;
}

+ (id)_multiplexPrivacyIdentifier:(id)a3 contentVersion:(unint64_t)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a1 _storePrivacyIdentifiers];
  v8 = [v7 containsObject:v6];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = [a1 _storePrivacyIdentifiers];
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
          [v9 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
  }

  else
  {
    v24 = v6;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a4];
    v25 = v9;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  v18 = v17;

  return v18;
}

@end