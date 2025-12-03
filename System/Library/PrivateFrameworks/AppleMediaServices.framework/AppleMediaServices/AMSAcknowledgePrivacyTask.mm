@interface AMSAcknowledgePrivacyTask
+ (BOOL)_coreAcknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version account:(id)account;
+ (BOOL)_existingAcknowledgements:(id)acknowledgements containsNewAcknowledgements:(id)newAcknowledgements;
+ (BOOL)_isBundleHolderPerDeviceRequirementAppliedToAccount:(id)account;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version;
+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version account:(id)account;
+ (BOOL)hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account minimumVersion:(id)version;
+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier minimumVersion:(id)version;
+ (BOOL)hasRejectedPrivacyIdentifier:(id)identifier;
+ (BOOL)hasRejectedPrivacyIdentifier:(id)identifier account:(id)account;
+ (id)_multiplexPrivacyIdentifier:(id)identifier contentVersion:(unint64_t)version;
+ (id)_storePrivacyIdentifiers;
+ (id)_valueForPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account;
+ (unint64_t)_contentVersionForPrivacyIdentifier:(id)identifier;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)identifier;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)identifier account:(id)account;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)identifiers;
- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)identifiers account:(id)account;
- (id)_updatePrivacyWithAcknowledgementVersions:(id)versions;
- (id)acknowledgePrivacy:(id)privacy;
- (id)rejectPrivacy:(id)privacy;
@end

@implementation AMSAcknowledgePrivacyTask

+ (id)_storePrivacyIdentifiers
{
  v2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F0779B80];

  return v2;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)identifier
{
  v4 = MEMORY[0x1E6959A48];
  identifierCopy = identifier;
  ams_sharedAccountStore = [v4 ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v8 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifier:identifierCopy account:ams_activeiTunesAccount];

  return v8;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)identifiers
{
  v4 = MEMORY[0x1E6959A48];
  identifiersCopy = identifiers;
  ams_sharedAccountStore = [v4 ams_sharedAccountStore];
  ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];
  v8 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifiers:identifiersCopy account:ams_activeiTunesAccount];

  return v8;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifier:(id)identifier account:(id)account
{
  v6 = MEMORY[0x1E695DFD8];
  accountCopy = account;
  v8 = [identifier copy];
  v9 = [v6 setWithObject:v8];
  v10 = [(AMSAcknowledgePrivacyTask *)self initWithPrivacyIdentifiers:v9 account:accountCopy];

  return v10;
}

- (AMSAcknowledgePrivacyTask)initWithPrivacyIdentifiers:(id)identifiers account:(id)account
{
  identifiersCopy = identifiers;
  accountCopy = account;
  v12.receiver = self;
  v12.super_class = AMSAcknowledgePrivacyTask;
  v8 = [(AMSTask *)&v12 init];
  if (v8)
  {
    v9 = [identifiersCopy copy];
    privacyIdentifiers = v8->_privacyIdentifiers;
    v8->_privacyIdentifiers = v9;

    objc_storeStrong(&v8->_account, account);
  }

  return v8;
}

- (id)acknowledgePrivacy:(id)privacy
{
  v37 = *MEMORY[0x1E69E9840];
  privacyCopy = privacy;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  privacyIdentifiers = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  v7 = [privacyIdentifiers countByEnumeratingWithState:&v28 objects:v36 count:16];
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
          objc_enumerationMutation(privacyIdentifiers);
        }

        v11 = *(*(&v28 + 1) + 8 * i);
        if (privacyCopy)
        {
          integerValue = [privacyCopy integerValue];
        }

        else
        {
          integerValue = [AMSAcknowledgePrivacyTask _contentVersionForPrivacyIdentifier:*(*(&v28 + 1) + 8 * i)];
        }

        if (!integerValue)
        {
          v18 = +[AMSLogConfig sharedPrivacyConfig];
          if (!v18)
          {
            v18 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v18 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
            selfCopy = ;
            *buf = 138543618;
            v33 = selfCopy;
            v34 = 2114;
            v35 = v11;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@The privacy identifier has an invalid content version. Refusing to acknowledge it. privacyIdentifier = %{public}@", buf, 0x16u);
            if (v20)
            {

              selfCopy = self;
            }
          }

          v25 = AMSError(2, @"AMSAcknowledgePrivacyTask Failed", @"The OnBoardingKit content version for the identifier is invalid.", 0);
          v14 = [AMSBinaryPromise promiseWithError:v25];

          goto LABEL_24;
        }

        v13 = [AMSAcknowledgePrivacyTask _multiplexPrivacyIdentifier:v11 contentVersion:integerValue];
        [v5 addEntriesFromDictionary:v13];
      }

      v8 = [privacyIdentifiers countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = [(AMSAcknowledgePrivacyTask *)self _updatePrivacyWithAcknowledgementVersions:v5];
  privacyIdentifiers2 = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  _appleBundleHolderPrivacyIdentifier = [objc_opt_class() _appleBundleHolderPrivacyIdentifier];
  v17 = [privacyIdentifiers2 containsObject:_appleBundleHolderPrivacyIdentifier];

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

- (id)rejectPrivacy:(id)privacy
{
  v33 = *MEMORY[0x1E69E9840];
  privacyCopy = privacy;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  privacyIdentifiers = [(AMSAcknowledgePrivacyTask *)self privacyIdentifiers];
  v7 = [privacyIdentifiers countByEnumeratingWithState:&v24 objects:v32 count:16];
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
          objc_enumerationMutation(privacyIdentifiers);
        }

        v11 = *(*(&v24 + 1) + 8 * i);
        if (privacyCopy)
        {
          if (![privacyCopy integerValue])
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

          oSLogObject = [v14 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
            selfCopy = ;
            *buf = 138543618;
            v29 = selfCopy;
            v30 = 2114;
            v31 = v11;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@The privacy identifier has an invalid content version. Refusing to reject it. privacyIdentifier = %{public}@", buf, 0x16u);
            if (v16)
            {

              selfCopy = self;
            }
          }

          v21 = AMSError(2, @"AMSAcknowledgePrivacyTask Failed to reject", @"The OnBoardingKit content version for the identifier is invalid.", 0);
          v13 = [AMSBinaryPromise promiseWithError:v21];

          goto LABEL_23;
        }

        v12 = [AMSAcknowledgePrivacyTask _multiplexPrivacyIdentifier:v11 contentVersion:0];
        [v5 addEntriesFromDictionary:v12];
      }

      v8 = [privacyIdentifiers countByEnumeratingWithState:&v24 objects:v32 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  privacyIdentifiers = [(AMSAcknowledgePrivacyTask *)self _updatePrivacyWithAcknowledgementVersions:v5];
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __43__AMSAcknowledgePrivacyTask_rejectPrivacy___block_invoke;
  v23[3] = &unk_1E73B3808;
  v23[4] = self;
  v13 = [privacyIdentifiers thenWithBlock:v23];
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

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
  ams_activeiTunesAccount = [v5 ams_activeiTunesAccount];
  LOBYTE(self) = [self acknowledgementNeededForPrivacyIdentifier:identifierCopy account:ams_activeiTunesAccount];

  return self;
}

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version
{
  versionCopy = version;
  identifierCopy = identifier;
  v8 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
  ams_activeiTunesAccount = [v8 ams_activeiTunesAccount];
  LOBYTE(self) = [self acknowledgementNeededForPrivacyIdentifier:identifierCopy privacyVersion:versionCopy account:ams_activeiTunesAccount];

  return self;
}

+ (BOOL)acknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version account:(id)account
{
  accountCopy = account;
  identifierCopy = identifier;
  v10 = [self _coreAcknowledgementNeededForPrivacyIdentifier:identifierCopy privacyVersion:version account:accountCopy];
  _appleBundleHolderPrivacyIdentifier = [objc_opt_class() _appleBundleHolderPrivacyIdentifier];
  v12 = [identifierCopy isEqualToString:_appleBundleHolderPrivacyIdentifier];

  v13 = v12 | v10;
  if (v12 && (v10 & 1) == 0)
  {
    v13 = [self _isBundleHolderPerDeviceRequirementAppliedToAccount:accountCopy];
  }

  return v13 & 1;
}

+ (BOOL)_coreAcknowledgementNeededForPrivacyIdentifier:(id)identifier privacyVersion:(id)version account:(id)account
{
  v92 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  versionCopy = version;
  accountCopy = account;
  v12 = AMSSetLogKeyIfNeeded();
  v13 = 0x1E73B0000uLL;
  v14 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v16 = versionCopy;
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
    v21 = AMSHashIfNeeded(accountCopy);
    *buf = 138543874;
    v87 = v20;
    v88 = 2114;
    v89 = identifierCopy;
    v90 = 2114;
    v91 = v21;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Determining if privacy acknowledgement is needed. privacyIdentifier = %{public}@ | account = %{public}@", buf, 0x20u);
    if (v5)
    {

      v20 = v13;
    }

    versionCopy = v16;
  }

  if (+[AMSDefaults acknowledgePrivacyOverride]!= 1)
  {
    if (+[AMSDefaults acknowledgePrivacyOverride]== 2)
    {
      oSLogObject4 = +[AMSLogConfig sharedPrivacyConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v31 = MEMORY[0x1E696AEC0];
      v32 = objc_opt_class();
      v33 = v32;
      if (v30)
      {
        self = AMSLogKey();
        [v31 stringWithFormat:@"%@: [%@] ", v33, self];
      }

      else
      {
        [v31 stringWithFormat:@"%@: ", v32];
      }
      selfCopy = ;
      *buf = 138543362;
      v87 = selfCopy;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDefaults.acknowledgePrivacyOverride is DISABLED.";
LABEL_53:
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, v49, buf, 0xCu);
      if (v30)
      {

        selfCopy = self;
      }

LABEL_56:
      v41 = 0;
      goto LABEL_57;
    }

    if (+[AMSDefaults disablePrivacyAcknowledgement])
    {
      oSLogObject4 = +[AMSLogConfig sharedPrivacyConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v35 = MEMORY[0x1E696AEC0];
      v36 = objc_opt_class();
      v37 = v36;
      if (v30)
      {
        self = AMSLogKey();
        [v35 stringWithFormat:@"%@: [%@] ", v37, self];
      }

      else
      {
        [v35 stringWithFormat:@"%@: ", v36];
      }
      selfCopy = ;
      *buf = 138543362;
      v87 = selfCopy;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDefaults.disablePrivacyAcknowledgement is true.";
      goto LABEL_53;
    }

    if (+[AMSDevice isRunningInStoreDemoMode])
    {
      oSLogObject4 = +[AMSLogConfig sharedPrivacyConfig];
      if (!oSLogObject4)
      {
        oSLogObject4 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject4 OSLogObject];
      if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_56;
      }

      v30 = AMSLogKey();
      v38 = MEMORY[0x1E696AEC0];
      v39 = objc_opt_class();
      v40 = v39;
      if (v30)
      {
        self = AMSLogKey();
        [v38 stringWithFormat:@"%@: [%@] ", v40, self];
      }

      else
      {
        [v38 stringWithFormat:@"%@: ", v39];
      }
      selfCopy = ;
      *buf = 138543362;
      v87 = selfCopy;
      v49 = "%{public}@Privacy acknowledgement is not needed because AMSDevice.isRunningInStoreDemoMode is true.";
      goto LABEL_53;
    }

    if (!accountCopy)
    {
      v42 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v42)
      {
        v42 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v42 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@No account provided, attempting to use the local account.", buf, 0xCu);
        if (v44)
        {

          v48 = v5;
        }
      }

      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      accountCopy = [ams_sharedAccountStore _ams_localiTunesAccount];

      if (!accountCopy)
      {
        accountCopy = +[AMSLogConfig sharedPrivacyConfig];
        if (!accountCopy)
        {
          accountCopy = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [accountCopy OSLogObject];
        if (!os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_40;
        }

        v22OSLogObject = AMSLogKey();
        v75 = MEMORY[0x1E696AEC0];
        v76 = objc_opt_class();
        v77 = v76;
        if (v22OSLogObject)
        {
          self = AMSLogKey();
          [v75 stringWithFormat:@"%@: [%@] ", v77, self];
        }

        else
        {
          [v75 stringWithFormat:@"%@: ", v76];
        }
        selfCopy2 = ;
        *buf = 138543362;
        v87 = selfCopy2;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@Privacy acknowledgement is needed because we failed to get an account.", buf, 0xCu);
        if (v22OSLogObject)
        {

          selfCopy2 = self;
        }

        goto LABEL_38;
      }
    }

    ams_privacyAcknowledgement = [accountCopy ams_privacyAcknowledgement];
    oSLogObject4 = [ams_privacyAcknowledgement objectForKeyedSubscript:identifierCopy];

    if (versionCopy)
    {
      v53 = versionCopy;
    }

    else
    {
      v53 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(self, "_contentVersionForPrivacyIdentifier:", identifierCopy)}];
    }

    v54 = v53;
    if (!oSLogObject4 || [oSLogObject4 compare:v53]== -1)
    {
      [accountCopy reload];
      ams_privacyAcknowledgement2 = [accountCopy ams_privacyAcknowledgement];
      v56 = [ams_privacyAcknowledgement2 objectForKeyedSubscript:identifierCopy];

      oSLogObject4 = v56;
    }

    if ([oSLogObject4 isEqualToNumber:&unk_1F0778F38])
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v57 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v54;
        v59 = identifierCopy;
        v60 = versionCopy;
        v61 = AMSLogKey();
        v62 = MEMORY[0x1E696AEC0];
        v63 = objc_opt_class();
        v64 = v63;
        if (v61)
        {
          self = AMSLogKey();
          [v62 stringWithFormat:@"%@: [%@] ", v64, self];
        }

        else
        {
          [v62 stringWithFormat:@"%@: ", v63];
        }
        selfCopy3 = ;
        *buf = 138543618;
        v87 = selfCopy3;
        v88 = 2114;
        v89 = oSLogObject4;
        v83 = "%{public}@Privacy bundle was rejected. No need to prompt for acknowledgement. acknowledgedVersion = %{public}@";
LABEL_104:
        _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, v83, buf, 0x16u);
        if (v61)
        {

          selfCopy3 = self;
        }

        v41 = 0;
        versionCopy = v60;
        identifierCopy = v59;
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

      oSLogObject5 = [v57 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v84 = v54;
        v59 = identifierCopy;
        v60 = versionCopy;
        v61 = AMSLogKey();
        v66 = MEMORY[0x1E696AEC0];
        v67 = objc_opt_class();
        v68 = v67;
        if (v61)
        {
          self = AMSLogKey();
          [v66 stringWithFormat:@"%@: [%@] ", v68, self];
        }

        else
        {
          [v66 stringWithFormat:@"%@: ", v67];
        }
        selfCopy3 = ;
        *buf = 138543618;
        v87 = selfCopy3;
        v88 = 2114;
        v89 = oSLogObject4;
        v83 = "%{public}@Current version is 0. No need to prompt for acknowledgement. acknowledgedVersion = %{public}@";
        goto LABEL_104;
      }

      goto LABEL_88;
    }

    if (!oSLogObject4 || [oSLogObject4 compare:v54]== -1)
    {
      v57 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v57)
      {
        v57 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v57 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v41 = 1;
        goto LABEL_119;
      }

      v85 = identifierCopy;
      v69 = versionCopy;
      v78 = AMSLogKey();
      v79 = MEMORY[0x1E696AEC0];
      v80 = objc_opt_class();
      v81 = v80;
      if (v78)
      {
        self = AMSLogKey();
        [v79 stringWithFormat:@"%@: [%@] ", v81, self];
      }

      else
      {
        [v79 stringWithFormat:@"%@: ", v80];
      }
      selfCopy4 = ;
      *buf = 138543874;
      v87 = selfCopy4;
      v88 = 2114;
      v89 = oSLogObject4;
      v90 = 2114;
      v91 = v54;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is needed. acknowledgedVersion = %{public}@ | currentVersion = %{public}@", buf, 0x20u);
      if (v78)
      {

        selfCopy4 = self;
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

      oSLogObject5 = [v57 OSLogObject];
      if (!os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
LABEL_88:
        v41 = 0;
LABEL_119:

        goto LABEL_57;
      }

      v85 = identifierCopy;
      v69 = versionCopy;
      v70 = AMSLogKey();
      v71 = MEMORY[0x1E696AEC0];
      v72 = objc_opt_class();
      v73 = v72;
      if (v70)
      {
        self = AMSLogKey();
        [v71 stringWithFormat:@"%@: [%@] ", v73, self];
      }

      else
      {
        [v71 stringWithFormat:@"%@: ", v72];
      }
      selfCopy5 = ;
      *buf = 138543874;
      v87 = selfCopy5;
      v88 = 2114;
      v89 = oSLogObject4;
      v90 = 2114;
      v91 = v54;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is not needed. acknowledgedVersion = %{public}@ | currentVersion = %{public}@", buf, 0x20u);
      if (v70)
      {

        selfCopy5 = self;
      }

      v41 = 0;
    }

    versionCopy = v69;
    identifierCopy = v85;
    goto LABEL_119;
  }

  oSLogObject4 = +[AMSLogConfig sharedPrivacyConfig];
  if (!oSLogObject4)
  {
    oSLogObject4 = +[AMSLogConfig sharedConfig];
  }

  v22OSLogObject = [oSLogObject4 OSLogObject];
  if (!os_log_type_enabled(v22OSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    goto LABEL_39;
  }

  selfCopy2 = AMSLogKey();
  v25 = MEMORY[0x1E696AEC0];
  v26 = objc_opt_class();
  v27 = v26;
  if (selfCopy2)
  {
    self = AMSLogKey();
    [v25 stringWithFormat:@"%@: [%@] ", v27, self];
  }

  else
  {
    [v25 stringWithFormat:@"%@: ", v26];
  }
  selfCopy6 = ;
  *buf = 138543362;
  v87 = selfCopy6;
  _os_log_impl(&dword_192869000, v22OSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Privacy acknowledgement is needed because AMSDefaults.acknowledgePrivacyOverride is ALWAYS.", buf, 0xCu);
  if (selfCopy2)
  {

    selfCopy6 = self;
  }

LABEL_38:
LABEL_39:

LABEL_40:
  v41 = 1;
LABEL_57:

  return v41;
}

+ (BOOL)_isBundleHolderPerDeviceRequirementAppliedToAccount:(id)account
{
  accountCopy = account;
  if (+[AMSDevice deviceIsBundle])
  {
    ams_isSubjectToPerDeviceBundleHolderAcknowledgement = [accountCopy ams_isSubjectToPerDeviceBundleHolderAcknowledgement];
  }

  else
  {
    ams_isSubjectToPerDeviceBundleHolderAcknowledgement = 0;
  }

  return ams_isSubjectToPerDeviceBundleHolderAcknowledgement;
}

+ (BOOL)hasRejectedPrivacyIdentifier:(id)identifier
{
  v23 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = AMSLogKey();
    v17 = 138543874;
    v18 = v8;
    v19 = 2114;
    v20 = v9;
    v21 = 2114;
    v22 = identifierCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining if user has rejected privacy acknowledgement. privacyIdentifier = %{public}@", &v17, 0x20u);
  }

  v10 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
  ams_activeiTunesAccount = [v10 ams_activeiTunesAccount];
  v12 = ams_activeiTunesAccount;
  if (ams_activeiTunesAccount)
  {
    _ams_localiTunesAccount = ams_activeiTunesAccount;
  }

  else
  {
    _ams_localiTunesAccount = [v10 _ams_localiTunesAccount];
  }

  v14 = _ams_localiTunesAccount;

  v15 = [objc_opt_class() hasRejectedPrivacyIdentifier:identifierCopy account:v14];
  return v15;
}

+ (BOOL)hasRejectedPrivacyIdentifier:(id)identifier account:(id)account
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v29 = 138543874;
    v30 = v11;
    v31 = 2114;
    v32 = v12;
    v33 = 2114;
    v34 = identifierCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining if user has rejected privacy acknowledgement. privacyIdentifier = %{public}@", &v29, 0x20u);
  }

  if (!accountCopy)
  {
    v13 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v29 = 138543874;
      v30 = v15;
      v31 = 2114;
      v32 = v16;
      v33 = 2114;
      v34 = identifierCopy;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No account provided, attempting to use the local account. privacyIdentifier = %{public}@", &v29, 0x20u);
    }

    v17 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
    accountCopy = [v17 _ams_localiTunesAccount];

    if (!accountCopy)
    {
      accountCopy = +[AMSLogConfig sharedPrivacyConfig];
      if (!accountCopy)
      {
        accountCopy = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [accountCopy OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        v29 = 138543618;
        v30 = v26;
        v31 = 2114;
        v32 = v27;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] We failed to get an account, so do not have record of user rejecting privacy acknowledgement.", &v29, 0x16u);
      }

      goto LABEL_21;
    }
  }

  ams_privacyAcknowledgement = [accountCopy ams_privacyAcknowledgement];
  oSLogObject3 = [ams_privacyAcknowledgement objectForKeyedSubscript:identifierCopy];

  v20 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v20 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v22 = objc_opt_class();
    v23 = AMSLogKey();
    v24 = AMSHashIfNeeded(accountCopy);
    v29 = 138544130;
    v30 = v22;
    v31 = 2114;
    v32 = v23;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = oSLogObject3;
    _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] account = %{public}@ | acknowledgedVersion = %{public}@", &v29, 0x2Au);
  }

  if (!oSLogObject3)
  {
LABEL_21:
    v25 = 0;
    goto LABEL_22;
  }

  v25 = [oSLogObject3 isEqualToNumber:&unk_1F0778F38];
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

    oSLogObject = [v3 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_opt_class();
      v6 = AMSLogKey();
      *buf = 138543618;
      v27 = v5;
      v28 = 2114;
      v29 = v6;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous bundle acknowledgements will not be fetched because AMSDefaults.disablePrivacyAcknowledgement is true.", buf, 0x16u);
    }

    LOBYTE(v7) = 0;
  }

  else
  {
    _appleBundleOwnerPrivacyIdentifier = [self _appleBundleOwnerPrivacyIdentifier];
    v3 = [self _accountStoreForPrivacyIdentifier:_appleBundleOwnerPrivacyIdentifier];

    oSLogObject = [v3 ams_localiTunesAccount];
    if (oSLogObject)
    {
      _appleBundleOwnerPrivacyIdentifier2 = [self _appleBundleOwnerPrivacyIdentifier];
      v32[0] = _appleBundleOwnerPrivacyIdentifier2;
      _appleBundleHolderPrivacyIdentifier = [self _appleBundleHolderPrivacyIdentifier];
      v32[1] = _appleBundleHolderPrivacyIdentifier;
      v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];

      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __86__AMSAcknowledgePrivacyTask_hasPreviouslyAcknowledgedAnyBundlePrivacyAcknowledgements__block_invoke;
      v23 = &unk_1E73B3830;
      selfCopy = self;
      v24 = oSLogObject;
      v7 = [v11 ams_anyWithTest:&v20];
      v12 = [AMSLogConfig sharedPrivacyConfig:v20];
      if (!v12)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v14 = objc_opt_class();
        v15 = AMSLogKey();
        *buf = 138543874;
        v27 = v14;
        v28 = 2114;
        v29 = v15;
        v30 = 1024;
        v31 = v7;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Has previously acknowledged = %d.", buf, 0x1Cu);
      }

      oSLogObject3 = v24;
    }

    else
    {
      v11 = +[AMSLogConfig sharedPrivacyConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v17 = objc_opt_class();
        v18 = AMSLogKey();
        *buf = 138543618;
        v27 = v17;
        v28 = 2114;
        v29 = v18;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No local account!", buf, 0x16u);
      }

      LOBYTE(v7) = 0;
    }
  }

  return v7;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier
{
  v18 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = AMSSetLogKeyIfNeeded();
  if (+[AMSDefaults disablePrivacyAcknowledgement])
  {
    v6 = +[AMSLogConfig sharedPrivacyConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v14 = 138543618;
      v15 = v8;
      v16 = 2114;
      v17 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous acknowledgement will not be fetched because AMSDefaults.disablePrivacyAcknowledgement is true.", &v14, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v11 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
    ams_activeiTunesAccount = [v11 ams_activeiTunesAccount];
    v10 = [self hasPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy account:ams_activeiTunesAccount];
  }

  return v10;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account
{
  v26 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  identifierCopy = identifier;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = [self _valueForPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy account:accountCopy];

  v10 = +[AMSLogConfig sharedPrivacyConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      v16 = oSLogObject;
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

    oSLogObject = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v14 = AMSLogKey();
      v20 = 138543618;
      v21 = v18;
      v22 = 2114;
      v23 = v14;
      v15 = "%{public}@: [%{public}@] No Previous Privacy acknowledgement found.";
      v16 = oSLogObject;
      v17 = 22;
      goto LABEL_10;
    }
  }

  return v9 != 0;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier minimumVersion:(id)version
{
  versionCopy = version;
  identifierCopy = identifier;
  v8 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
  ams_activeiTunesAccount = [v8 ams_activeiTunesAccount];
  LOBYTE(self) = [self hasPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy account:ams_activeiTunesAccount minimumVersion:versionCopy];

  return self;
}

+ (BOOL)hasPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account minimumVersion:(id)version
{
  v37 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  versionCopy = version;
  v11 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    v27 = 138544386;
    v28 = v13;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = identifierCopy;
    v33 = 2114;
    v34 = accountCopy;
    v35 = 2114;
    v36 = versionCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Checking identifier %{public}@ on account: %{public}@ minimumVersion = %{public}@", &v27, 0x34u);
  }

  v15 = [self _valueForPreviouslyAcknowledgedPrivacyIdentifier:identifierCopy account:accountCopy];
  v16 = +[AMSLogConfig sharedPrivacyConfig];
  v17 = v16;
  if (v15)
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v27 = 138543874;
      v28 = v19;
      v29 = 2114;
      v30 = v20;
      v31 = 2114;
      v32 = v15;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Previous Privacy acknowledgement found. acknowledgedVersion = %{public}@", &v27, 0x20u);
    }

    unsignedIntegerValue = [v15 unsignedIntegerValue];
    v22 = unsignedIntegerValue >= [versionCopy unsignedIntegerValue];
  }

  else
  {
    if (!v16)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v24 = objc_opt_class();
      v25 = AMSLogKey();
      v27 = 138543618;
      v28 = v24;
      v29 = 2114;
      v30 = v25;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No Previous Privacy acknowledgement found.", &v27, 0x16u);
    }

    v22 = 0;
  }

  return v22;
}

+ (id)_valueForPreviouslyAcknowledgedPrivacyIdentifier:(id)identifier account:(id)account
{
  v25 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  v8 = AMSSetLogKeyIfNeeded();
  if (accountCopy)
  {
    goto LABEL_7;
  }

  v9 = +[AMSLogConfig sharedPrivacyConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v11 = objc_opt_class();
    v12 = AMSLogKey();
    v19 = 138543874;
    v20 = v11;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = identifierCopy;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No account provided, attempting to use the local account. privacyIdentifier = %{public}@", &v19, 0x20u);
  }

  v13 = [self _accountStoreForPrivacyIdentifier:identifierCopy];
  accountCopy = [v13 _ams_localiTunesAccount];

  if (accountCopy)
  {
LABEL_7:
    ams_privacyAcknowledgement = [accountCopy ams_privacyAcknowledgement];
    v15 = [ams_privacyAcknowledgement objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    accountCopy = +[AMSLogConfig sharedPrivacyConfig];
    if (!accountCopy)
    {
      accountCopy = +[AMSLogConfig sharedConfig];
    }

    ams_privacyAcknowledgement = [accountCopy OSLogObject];
    if (os_log_type_enabled(ams_privacyAcknowledgement, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = 138543618;
      v20 = v17;
      v21 = 2114;
      v22 = v18;
      _os_log_impl(&dword_192869000, ams_privacyAcknowledgement, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] No Previous acknowledgement because we failed to get an account.", &v19, 0x16u);
    }

    v15 = 0;
  }

  return v15;
}

- (id)_updatePrivacyWithAcknowledgementVersions:(id)versions
{
  versionsCopy = versions;
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
  v7 = versionsCopy;
  v12 = v7;
  selfCopy = self;
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

+ (BOOL)_existingAcknowledgements:(id)acknowledgements containsNewAcknowledgements:(id)newAcknowledgements
{
  v23 = *MEMORY[0x1E69E9840];
  acknowledgementsCopy = acknowledgements;
  newAcknowledgementsCopy = newAcknowledgements;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  allKeys = [newAcknowledgementsCopy allKeys];
  v8 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(allKeys);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [acknowledgementsCopy objectForKeyedSubscript:v12];
        v14 = [newAcknowledgementsCopy objectForKeyedSubscript:v12];
        v15 = v14;
        if (!v13 || [v14 compare:v13] == 1)
        {

          v16 = 0;
          goto LABEL_13;
        }
      }

      v9 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (unint64_t)_contentVersionForPrivacyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _appleBundleHolderPrivacyIdentifier = [self _appleBundleHolderPrivacyIdentifier];
  if ([identifierCopy isEqualToString:_appleBundleHolderPrivacyIdentifier])
  {

LABEL_4:
    contentVersion = 2;
    goto LABEL_10;
  }

  _appleBundleOwnerPrivacyIdentifier = [self _appleBundleOwnerPrivacyIdentifier];
  v7 = [identifierCopy isEqualToString:_appleBundleOwnerPrivacyIdentifier];

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
  v11 = [v9 bundleWithIdentifier:identifierCopy];
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
  contentVersion = [v14 contentVersion];

LABEL_10:
  return contentVersion;
}

+ (id)_multiplexPrivacyIdentifier:(id)identifier contentVersion:(unint64_t)version
{
  v27 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  _storePrivacyIdentifiers = [self _storePrivacyIdentifiers];
  v8 = [_storePrivacyIdentifiers containsObject:identifierCopy];

  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    _storePrivacyIdentifiers2 = [self _storePrivacyIdentifiers];
    v11 = [_storePrivacyIdentifiers2 countByEnumeratingWithState:&v20 objects:v26 count:16];
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
            objc_enumerationMutation(_storePrivacyIdentifiers2);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
          [v9 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [_storePrivacyIdentifiers2 countByEnumeratingWithState:&v20 objects:v26 count:16];
      }

      while (v12);
    }

    v17 = [v9 copy];
  }

  else
  {
    v24 = identifierCopy;
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:version];
    v25 = v9;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
  }

  v18 = v17;

  return v18;
}

@end