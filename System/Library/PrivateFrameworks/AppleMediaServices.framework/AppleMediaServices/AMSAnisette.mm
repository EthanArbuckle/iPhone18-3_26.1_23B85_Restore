@interface AMSAnisette
+ (AMSBagKeySet)bagKeySet;
+ (BOOL)_shouldRetryAfterError:(id)error;
+ (BOOL)handleResponse:(id)response account:(id)account type:(int64_t)type bag:(id)bag;
+ (NSString)bagSubProfile;
+ (NSString)bagSubProfileVersion;
+ (id)_eraseProvisioningForType:(int64_t)type account:(id)account;
+ (id)_handleActionName:(id)name actionData:(id)data account:(id)account type:(int64_t)type bag:(id)bag;
+ (id)_headersForRequest:(id)request account:(id)account type:(int64_t)type;
+ (id)_provisionMachineWithActionData:(id)data type:(int64_t)type account:(id)account bag:(id)bag;
+ (id)_syncMachineWithActionData:(id)data type:(int64_t)type account:(id)account bag:(id)bag;
+ (id)createBagForSubProfile;
+ (id)handleResponse:(id)response type:(int64_t)type bag:(id)bag account:(id)account;
+ (id)headersForRequest:(id)request account:(id)account type:(int64_t)type bag:(id)bag;
+ (unint64_t)_accountIDForType:(int64_t)type account:(id)account;
+ (void)_bagDomainExistsForURL:(id)l type:(int64_t)type bag:(id)bag completion:(id)completion;
@end

@implementation AMSAnisette

+ (BOOL)handleResponse:(id)response account:(id)account type:(int64_t)type bag:(id)bag
{
  v6 = [self handleResponse:response type:type bag:bag account:account];
  v7 = [v6 actionType] == 2;

  return v7;
}

+ (id)handleResponse:(id)response type:(int64_t)type bag:(id)bag account:(id)account
{
  responseCopy = response;
  bagCopy = bag;
  accountCopy = account;
  v12 = responseCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;

    if (!v13)
    {
      v17 = 0;
      goto LABEL_12;
    }

    ams_actionNameV1 = [v13 ams_actionNameV1];
    if (ams_actionNameV1)
    {
      ams_actionDataV1 = [v13 ams_actionDataV1];
      v16 = [self _handleActionName:ams_actionNameV1 actionData:ams_actionDataV1 account:accountCopy type:1 bag:bagCopy];
    }

    else
    {
      v16 = 0;
    }

    ams_actionNameV12 = [v13 ams_actionNameV1];
    if (ams_actionNameV12)
    {
      ams_actionDataV12 = [v13 ams_actionDataV1];
      v21 = [self _handleActionName:ams_actionNameV12 actionData:ams_actionDataV12 account:accountCopy type:2 bag:bagCopy];

      v16 = v21;
    }

    v18 = v16;

    v17 = v18;
  }

  else
  {
    v13 = 0;
    v17 = 0;
    v18 = v12;
  }

LABEL_12:

  return v17;
}

+ (id)headersForRequest:(id)request account:(id)account type:(int64_t)type bag:(id)bag
{
  v49[2] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  accountCopy = account;
  bagCopy = bag;
  v32 = objc_alloc_init(AMSMutablePromise);
  v13 = AMSLogKey();
  v14 = objc_alloc_init(AMSMutablePromise);
  v15 = [requestCopy URL];
  v42[0] = MEMORY[0x1E69E9820];
  v42[1] = 3221225472;
  v42[2] = __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke;
  v42[3] = &unk_1E73B3930;
  v16 = v13;
  v43 = v16;
  typeCopy = type;
  selfCopy = self;
  v17 = requestCopy;
  v44 = v17;
  v18 = accountCopy;
  v45 = v18;
  v46 = v14;
  v19 = v14;
  [self _bagDomainExistsForURL:v15 type:1 bag:bagCopy completion:v42];

  v20 = objc_alloc_init(AMSMutablePromise);
  v21 = [v17 URL];
  v35[0] = MEMORY[0x1E69E9820];
  v35[1] = 3221225472;
  v35[2] = __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke_10;
  v35[3] = &unk_1E73B3930;
  typeCopy2 = type;
  selfCopy2 = self;
  v36 = v16;
  v37 = v17;
  v38 = v18;
  v39 = v20;
  v22 = v20;
  v23 = v18;
  v24 = v17;
  v25 = v16;
  [self _bagDomainExistsForURL:v21 type:2 bag:bagCopy completion:v35];

  v49[0] = v19;
  v49[1] = v22;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v49 count:2];
  v27 = [AMSPromise promiseWithAll:v26];

  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke_13;
  v33[3] = &unk_1E73B3958;
  v28 = v32;
  v34 = v28;
  [v27 addFinishBlock:v33];
  v29 = v34;
  v30 = v28;

  return v28;
}

void __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMSSetLogKey(*(a1 + 32));
  if ((a2 & 1) != 0 || *(a1 + 64) == 1)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSLogKey();
      v12 = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 1024;
      v17 = 1;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching anisette headers for type: %d", &v12, 0x1Cu);
    }

    v10 = [*(a1 + 72) _headersForRequest:*(a1 + 40) account:*(a1 + 48) type:1];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  [*(a1 + 56) finishWithResult:v11];
}

void __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke_10(uint64_t a1, char a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = AMSSetLogKey(*(a1 + 32));
  if ((a2 & 1) != 0 || *(a1 + 64) == 2)
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = v7;
      v9 = AMSLogKey();
      v12 = 138543874;
      v13 = v7;
      v14 = 2114;
      v15 = v9;
      v16 = 1024;
      v17 = 2;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Fetching anisette headers for type: %d", &v12, 0x1Cu);
    }

    v10 = [*(a1 + 72) _headersForRequest:*(a1 + 40) account:*(a1 + 48) type:2];
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = MEMORY[0x1E695E0F8];
  }

  [*(a1 + 56) finishWithResult:v11];
}

void __50__AMSAnisette_headersForRequest_account_type_bag___block_invoke_13(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addEntriesFromDictionary:{*(*(&v10 + 1) + 8 * v9++), v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) finishWithResult:v4];
}

+ (NSString)bagSubProfile
{
  if (_MergedGlobals_83 != -1)
  {
    dispatch_once(&_MergedGlobals_83, &__block_literal_global_6);
  }

  v3 = qword_1ED6E26D8;

  return v3;
}

void __28__AMSAnisette_bagSubProfile__block_invoke()
{
  v0 = qword_1ED6E26D8;
  qword_1ED6E26D8 = @"AMSAnisette";
}

+ (NSString)bagSubProfileVersion
{
  if (qword_1ED6E26E0 != -1)
  {
    dispatch_once(&qword_1ED6E26E0, &__block_literal_global_21);
  }

  v3 = qword_1ED6E26E8;

  return v3;
}

void __35__AMSAnisette_bagSubProfileVersion__block_invoke()
{
  v0 = qword_1ED6E26E8;
  qword_1ED6E26E8 = @"1";
}

+ (id)createBagForSubProfile
{
  bagSubProfile = [objc_opt_class() bagSubProfile];
  bagSubProfileVersion = [objc_opt_class() bagSubProfileVersion];
  v4 = [AMSBag bagForProfile:bagSubProfile profileVersion:bagSubProfileVersion];

  return v4;
}

+ (unint64_t)_accountIDForType:(int64_t)type account:(id)account
{
  if (type == 2)
  {
    return -1;
  }

  ams_DSID = [account ams_DSID];
  unsignedLongLongValue = [ams_DSID unsignedLongLongValue];

  return unsignedLongLongValue;
}

+ (void)_bagDomainExistsForURL:(id)l type:(int64_t)type bag:(id)bag completion:(id)completion
{
  lCopy = l;
  bagCopy = bag;
  completionCopy = completion;
  if (type == 2)
  {
    v12 = AMSBagKeyAnisetteAMDDomains;
  }

  else
  {
    if (type != 1)
    {
      v14 = 0;
LABEL_10:
      completionCopy[2](completionCopy, 0);
      goto LABEL_13;
    }

    v12 = AMSBagKeyAnisetteMDDomains;
  }

  v13 = *v12;
  v14 = v13;
  if (!bagCopy || !v13)
  {
    goto LABEL_10;
  }

  v15 = [bagCopy arrayForKey:v13];
  if (v15)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __58__AMSAnisette__bagDomainExistsForURL_type_bag_completion___block_invoke;
    v16[3] = &unk_1E73B3980;
    v17 = lCopy;
    v18 = completionCopy;
    [v15 valueWithCompletion:v16];
  }

  else
  {
    completionCopy[2](completionCopy, 0);
  }

LABEL_13:
}

void __58__AMSAnisette__bagDomainExistsForURL_type_bag_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (!a4)
  {
    v7 = [*(a1 + 32) host];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v9)
    {
      v10 = v9;
      v16 = a1;
      v17 = v6;
      v11 = *v19;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v19 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v18 + 1) + 8 * i);
          if ([v13 hasPrefix:{@".", v16, v17, v18}])
          {
            if ([v7 hasSuffix:v13])
            {
              goto LABEL_16;
            }
          }

          else if ([v13 hasPrefix:@"*"])
          {
            v14 = [v13 substringFromIndex:1];
            v15 = [v7 hasSuffix:v14];

            if (v15)
            {
              goto LABEL_16;
            }
          }

          else if (![v13 caseInsensitiveCompare:v7])
          {
            goto LABEL_16;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v10);
LABEL_16:
      a1 = v16;
      v6 = v17;
    }
  }

  (*(*(a1 + 40) + 16))();
}

+ (id)_eraseProvisioningForType:(int64_t)type account:(id)account
{
  v19 = *MEMORY[0x1E69E9840];
  [AMSAnisette _accountIDForType:type account:account];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSLogKey();
    v13 = 138543874;
    v14 = v7;
    v15 = 2114;
    v16 = v9;
    v17 = 2048;
    typeCopy = type;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Erasing provisioning for type: %ld.", &v13, 0x20u);
  }

  p435tmhbla();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = +[AMSURLAction retryAction];
    [v11 setReason:@"anisette-RP"];
    [v11 setRetryIdentifier:0x1F071D498];
  }

  return v11;
}

+ (id)_handleActionName:(id)name actionData:(id)data account:(id)account type:(int64_t)type bag:(id)bag
{
  v36 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dataCopy = data;
  accountCopy = account;
  bagCopy = bag;
  v16 = +[AMSLogConfig sharedConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v16 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v18 = bagCopy;
    selfCopy = self;
    v20 = dataCopy;
    typeCopy = type;
    v22 = objc_opt_class();
    v27 = v22;
    v23 = AMSLogKey();
    *buf = 138544130;
    v29 = v22;
    type = typeCopy;
    dataCopy = v20;
    self = selfCopy;
    bagCopy = v18;
    v30 = 2114;
    v31 = v23;
    v32 = 2114;
    v33 = nameCopy;
    v34 = 2048;
    typeCopy2 = type;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Handling anisette action name: %{public}@ type: %ld", buf, 0x2Au);
  }

  if ([nameCopy isEqualToString:@"SP"])
  {
    v24 = [self _provisionMachineWithActionData:dataCopy type:type account:accountCopy bag:bagCopy];
LABEL_11:
    v25 = v24;
    goto LABEL_12;
  }

  if ([nameCopy isEqualToString:@"SM"])
  {
    v24 = [self _syncMachineWithActionData:dataCopy type:type account:accountCopy bag:bagCopy];
    goto LABEL_11;
  }

  if ([nameCopy isEqualToString:@"RP"])
  {
    v24 = [self _eraseProvisioningForType:type account:accountCopy];
    goto LABEL_11;
  }

  v25 = 0;
LABEL_12:

  return v25;
}

+ (id)_headersForRequest:(id)request account:(id)account type:(int64_t)type
{
  v35 = *MEMORY[0x1E69E9840];
  v26 = 0;
  v25 = 0;
  v24 = 0;
  v23 = 0;
  qi864985u0([AMSAnisette _accountIDForType:type account:account], &v26, &v25, &v24, &v23);
  if (v6)
  {
    v7 = v6;
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      *buf = 138544130;
      v28 = v10;
      v29 = 2114;
      v30 = v12;
      v31 = 1024;
      typeCopy = type;
      v33 = 1024;
      v34 = v7;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to generate Anisette (type: %d) headers. error = %d", buf, 0x22u);
    }

    v13 = 0;
  }

  else
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    if (v26)
    {
      v14 = objc_alloc(MEMORY[0x1E695DEF0]);
      v15 = [v14 initWithBytesNoCopy:v26 length:v25 freeWhenDone:0];
      v16 = [v15 base64EncodedStringWithOptions:0];
      if (v16)
      {
        v17 = AMSHTTPHeaderXAppleAMDM;
        if (type != 2)
        {
          v17 = AMSHTTPHeaderXAppleMDM;
        }

        [v8 setObject:v16 forKeyedSubscript:*v17];
      }

      jk24uiwqrg(v26);
    }

    if (v24)
    {
      v18 = objc_alloc(MEMORY[0x1E695DEF0]);
      v19 = [v18 initWithBytesNoCopy:v24 length:v23 freeWhenDone:0];
      v20 = [v19 base64EncodedStringWithOptions:0];
      if (v20)
      {
        v21 = AMSHTTPHeaderXAppleAMD;
        if (type != 2)
        {
          v21 = AMSHTTPHeaderXAppleMD;
        }

        [v8 setObject:v20 forKeyedSubscript:*v21];
      }

      jk24uiwqrg(v24);
    }

    v13 = [v8 copy];
  }

  return v13;
}

+ (id)_provisionMachineWithActionData:(id)data type:(int64_t)type account:(id)account bag:(id)bag
{
  v37 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  accountCopy = account;
  bagCopy = bag;
  v12 = 0;
  v13 = 5;
  *&v14 = 138543618;
  v28 = v14;
  v29 = bagCopy;
  do
  {
    v15 = v12;
    v16 = [[AMSAnisetteProvisionTask alloc] initWithData:dataCopy type:type account:accountCopy bag:bagCopy];
    performProvisioning = [(AMSAnisetteProvisionTask *)v16 performProvisioning];
    v32 = v12;
    v18 = [performProvisioning resultWithError:&v32];
    v12 = v32;

    if (v18)
    {

      v26 = +[AMSURLAction retryAction];
      [v26 setReason:@"anisette-SP"];
      [v26 setRetryIdentifier:0x1F071D4B8];
      goto LABEL_12;
    }

    if (![self _shouldRetryAfterError:v12])
    {

      if (!v12)
      {
        goto LABEL_14;
      }

LABEL_10:
      v26 = [AMSURLAction actionWithError:v12, v28];
LABEL_12:

      goto LABEL_15;
    }

    v19 = +[AMSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v19 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      typeCopy = type;
      v22 = dataCopy;
      v23 = objc_opt_class();
      v30 = v23;
      AMSLogKey();
      v25 = v24 = accountCopy;
      *buf = v28;
      v34 = v23;
      dataCopy = v22;
      type = typeCopy;
      v35 = 2114;
      v36 = v25;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Retrying machine data proivsioning", buf, 0x16u);

      accountCopy = v24;
      bagCopy = v29;
    }

    --v13;
  }

  while (v13);
  if (v12)
  {
    goto LABEL_10;
  }

LABEL_14:
  v26 = 0;
LABEL_15:

  return v26;
}

+ (id)_syncMachineWithActionData:(id)data type:(int64_t)type account:(id)account bag:(id)bag
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  accountCopy = account;
  bagCopy = bag;
  v10 = 0;
  v11 = 5;
  p_cache = AMSFeatureFlagController.cache;
  *&v13 = 138543618;
  v25 = v13;
  typeCopy = type;
  while (1)
  {

    v14 = [objc_alloc((p_cache + 273)) initWithData:dataCopy type:type account:accountCopy bag:bagCopy];
    performSync = [v14 performSync];
    v31 = 0;
    v16 = [performSync resultWithError:&v31];
    v10 = v31;

    if (v16)
    {

      v23 = +[AMSURLAction retryAction];
      [v23 setReason:@"anisette-SM"];
      [v23 setRetryIdentifier:0x1F071D4D8];
      goto LABEL_13;
    }

    if (![self _shouldRetryAfterError:v10])
    {
      break;
    }

    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v19 = p_cache;
      selfCopy = self;
      v21 = objc_opt_class();
      v27 = v21;
      v22 = AMSLogKey();
      *buf = v25;
      v33 = v21;
      self = selfCopy;
      p_cache = v19;
      v34 = 2114;
      v35 = v22;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Retrying machine data sync", buf, 0x16u);

      type = typeCopy;
    }

    if (!--v11)
    {
      goto LABEL_12;
    }
  }

LABEL_12:
  v23 = 0;
LABEL_13:

  return v23;
}

+ (BOOL)_shouldRetryAfterError:(id)error
{
  domain = [error domain];
  v4 = [domain isEqualToString:*MEMORY[0x1E696A978]];

  return v4;
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

@end