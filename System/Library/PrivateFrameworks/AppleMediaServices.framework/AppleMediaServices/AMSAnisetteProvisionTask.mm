@interface AMSAnisetteProvisionTask
- (AMSAnisetteProvisionTask)initWithData:(id)data type:(int64_t)type account:(id)account bag:(id)bag;
- (BOOL)_processFinishProvisioningResult:(id)result sessionID:(unsigned int)d error:(id *)error;
- (id)_createFinishProvisioningRequestWithClientData:(id)data error:(id *)error;
- (id)_startProvisioningWithOutputSessionID:(unsigned int *)d error:(id *)error;
- (id)performProvisioning;
@end

@implementation AMSAnisetteProvisionTask

- (AMSAnisetteProvisionTask)initWithData:(id)data type:(int64_t)type account:(id)account bag:(id)bag
{
  dataCopy = data;
  accountCopy = account;
  bagCopy = bag;
  v17.receiver = self;
  v17.super_class = AMSAnisetteProvisionTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, data);
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v15->_bag, bag);
    v15->_type = type;
  }

  return v15;
}

- (id)performProvisioning
{
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__AMSAnisetteProvisionTask_performProvisioning__block_invoke;
  v5[3] = &unk_1E73B39A8;
  objc_copyWeak(&v6, &location);
  v5[4] = self;
  v3 = [(AMSTask *)self performBinaryTaskWithBlock:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);

  return v3;
}

BOOL __47__AMSAnisetteProvisionTask_performProvisioning__block_invoke(uint64_t a1, uint64_t *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = +[AMSLogConfig sharedAnisetteConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = [*(a1 + 32) type];
    *buf = 138543874;
    v35 = v7;
    v36 = 2114;
    v37 = v8;
    v38 = 2048;
    v39 = v9;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing provisioning. type: %ld", buf, 0x20u);
  }

  v33 = 0;
  v10 = *(a1 + 32);
  v32 = 0;
  v11 = [v10 _startProvisioningWithOutputSessionID:&v33 error:&v32];
  v12 = v32;
  if (!(v12 | v11))
  {
    v12 = AMSError(307, @"Anisette Provisioning Failed", @"Client data is nil", 0);
  }

  if (v12)
  {
    v13 = 0;
LABEL_11:
    v16 = 0;
    goto LABEL_12;
  }

  v14 = *(a1 + 32);
  v31 = 0;
  v13 = [v14 _createFinishProvisioningRequestWithClientData:v11 error:&v31];
  v15 = v31;
  if (v15)
  {
    v12 = v15;
    goto LABEL_11;
  }

  v25 = +[AMSURLSession defaultSession];
  v26 = [v25 dataTaskPromiseWithRequest:v13];
  v30 = 0;
  v16 = [v26 resultWithError:&v30];
  v12 = v30;

  if (!v12)
  {
    v27 = *(a1 + 32);
    v29 = 0;
    v28 = [v27 _processFinishProvisioningResult:v16 sessionID:v33 error:&v29];
    v12 = v29;
    if (!v12 && (v28 & 1) == 0)
    {
      v12 = AMSError(307, @"Anisette Provisioning Failed", @"Provisioning finished without an error", 0);
    }
  }

LABEL_12:
  if (v33)
  {
    fy34trz2st();
  }

  if (v12)
  {
    v17 = v12;
    *a2 = v12;
    v18 = +[AMSLogConfig sharedAnisetteConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = objc_opt_class();
      v21 = AMSLogKey();
      v22 = AMSLogableError(v12);
      *buf = 138543874;
      v35 = v20;
      v36 = 2114;
      v37 = v21;
      v38 = 2114;
      v39 = v22;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Provisioning failed. Error = %{public}@", buf, 0x20u);

LABEL_23:
    }
  }

  else
  {
    v18 = +[AMSLogConfig sharedAnisetteConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v23 = objc_opt_class();
      v21 = AMSLogKey();
      *buf = 138543618;
      v35 = v23;
      v36 = 2114;
      v37 = v21;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Provisioning succeeded.", buf, 0x16u);
      goto LABEL_23;
    }
  }

  return v12 == 0;
}

- (id)_createFinishProvisioningRequestWithClientData:(id)data error:(id *)error
{
  v54 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  account = [(AMSAnisetteProvisionTask *)self account];
  v8 = [AMSURLRequestEncoder alloc];
  v9 = [(AMSAnisetteProvisionTask *)self bag];
  v10 = [(AMSURLRequestEncoder *)v8 initWithBag:v9];

  [(AMSURLRequestEncoder *)v10 setAccount:account];
  [(AMSURLRequestEncoder *)v10 setRequestEncoding:2];
  [(AMSURLRequestEncoder *)v10 setDialogOptions:1];
  v11 = AMSLogKey();
  [(AMSURLRequestEncoder *)v10 setLogUUID:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [dataCopy base64EncodedStringWithOptions:0];

  [v12 ams_setNullableObject:v13 forKey:@"clientData"];
  v14 = +[AMSDevice deviceGUID];
  [v12 ams_setNullableObject:v14 forKey:@"guid"];

  type = [(AMSAnisetteProvisionTask *)self type];
  if (type == 2)
  {
    v28 = [(AMSAnisetteProvisionTask *)self bag];
    v27 = [v28 URLForKey:@"amd-finish-provisioning"];

LABEL_11:
    v29 = [(AMSURLRequestEncoder *)v10 requestWithMethod:4 bagURL:v27 parameters:v12];
    v30 = [v29 resultWithError:error];

    goto LABEL_24;
  }

  if (type == 1)
  {
    v16 = +[AMSKeybag sharedInstance];
    ams_DSID = [account ams_DSID];
    v45 = 0;
    v18 = [v16 keybagSyncDataWithAccountID:ams_DSID transactionType:1 error:&v45];
    v19 = v45;

    [v12 ams_setNullableObject:v18 forKey:@"kbsync"];
    ams_DSID2 = [account ams_DSID];
    [v12 ams_setNullableObject:ams_DSID2 forKey:@"dsId"];

    if (v19)
    {
      v21 = +[AMSLogConfig sharedAccountsConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        errorCopy = error;
        v23 = objc_opt_class();
        v41 = v23;
        v24 = AMSLogKey();
        ams_DSID3 = [account ams_DSID];
        AMSHashIfNeeded(ams_DSID3);
        v25 = v42 = v18;
        *buf = 138544130;
        v47 = v23;
        error = errorCopy;
        v48 = 2114;
        v49 = v24;
        v50 = 2114;
        v51 = v25;
        v52 = 2114;
        type2 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch keybag data for account: %{public}@. Error: %{public}@", buf, 0x2Au);

        v18 = v42;
      }
    }

    v26 = [(AMSAnisetteProvisionTask *)self bag];
    v27 = [v26 URLForKey:@"md-finish-provisioning"];

    goto LABEL_11;
  }

  v31 = +[AMSLogConfig sharedAccountsConfig];
  if (!v31)
  {
    v31 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v31 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
  {
    errorCopy2 = error;
    v34 = AMSLogKey();
    v35 = MEMORY[0x1E696AEC0];
    v36 = objc_opt_class();
    v37 = v36;
    if (v34)
    {
      v43 = AMSLogKey();
      [v35 stringWithFormat:@"%@: [%@] ", v37, v43];
    }

    else
    {
      [v35 stringWithFormat:@"%@: ", v36];
    }
    v38 = ;
    *buf = 138544130;
    v47 = v38;
    v48 = 2048;
    v49 = 1;
    v50 = 2048;
    v51 = 2;
    v52 = 2048;
    type2 = [(AMSAnisetteProvisionTask *)self type];
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Invalid type. Expected %ld or %ld, got %ld.", buf, 0x2Au);
    if (v34)
    {

      v38 = v43;
    }

    error = errorCopy2;
  }

  if (error)
  {
    AMSError(2, @"Anisette Provisioning Error", @"Invalid type.", 0);
    *error = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_24:

  return v30;
}

- (BOOL)_processFinishProvisioningResult:(id)result sessionID:(unsigned int)d error:(id *)error
{
  v36 = *MEMORY[0x1E69E9840];
  object = [result object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = object;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 objectForKeyedSubscript:@"transportKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = [v7 objectForKeyedSubscript:@"keybag"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v7 objectForKeyedSubscript:@"settingInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;

    if (v9 && v13)
    {
      if ([v11 length])
      {
        v14 = +[AMSKeybag sharedInstance];
        v29 = 0;
        v15 = [v14 importKeybagWithData:v11 error:&v29];
        v28 = v29;

        if ((v15 & 1) == 0)
        {
          if (error)
          {
            v26 = v28;
            AMSError(307, @"Anisette Provisioning Failed", @"Failed to import key bag data.", v28);
            *error = v16 = 0;
            goto LABEL_32;
          }

          v16 = 0;
LABEL_31:
          v26 = v28;
LABEL_32:

          goto LABEL_33;
        }
      }

      else
      {
        v28 = 0;
      }

      if (![v11 length])
      {
        v17 = +[AMSLogConfig sharedConfig];
        if (!v17)
        {
          v17 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v17 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          *buf = 138543618;
          v33 = v19;
          v34 = 2114;
          v35 = v20;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Anisette provisioning did not provide keybag data", buf, 0x16u);
        }
      }

      v21 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v13 options:0];
      v22 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v9 options:0];
      [v21 bytes];
      [v21 length];
      [v22 bytes];
      [v22 length];
      uv5t6nhkui();
      v16 = v23 == 0;
      if (error && v23)
      {
        v30 = @"AMSAnisetteErrorCode";
        v24 = [MEMORY[0x1E696AD98] numberWithInt:v23];
        v31 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *error = AMSCustomError(@"AMSErrorDomain", 307, @"Anisette Provisioning Failed", @"Failed to finish machine provisioning.", v25, 0);
      }

      goto LABEL_31;
    }
  }

  else
  {

    v13 = 0;
  }

  if (error)
  {
    AMSError(307, @"Anisette Provisioning Failed", @"The finish provisioning request's response was invalid.", 0);
    *error = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_33:

  return v16;
}

- (id)_startProvisioningWithOutputSessionID:(unsigned int *)d error:(id *)error
{
  v27[1] = *MEMORY[0x1E69E9840];
  data = [(AMSAnisetteProvisionTask *)self data];
  v8 = [data length];

  if (!v8)
  {
    if (error)
    {
      v19 = AMSError(307, @"Anisette Provisioning Failed", @"No data found", 0);
      v20 = v19;
      v21 = 0;
      *error = v19;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  type = [(AMSAnisetteProvisionTask *)self type];
  account = [(AMSAnisetteProvisionTask *)self account];
  v11 = [AMSAnisette _accountIDForType:type account:account];

  v25 = 0;
  v24 = 0;
  data2 = [(AMSAnisetteProvisionTask *)self data];
  bytes = [data2 bytes];
  data3 = [(AMSAnisetteProvisionTask *)self data];
  rsegvyrt87(v11, bytes, [data3 length], &v25, &v24, d);
  v16 = v15;

  if (v16)
  {
    if (v25)
    {
      jk24uiwqrg(v25);
    }

    if (error)
    {
      v26 = @"AMSAnisetteErrorCode";
      v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
      v27[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *error = AMSCustomError(@"AMSErrorDomain", 307, @"Anisette Provisioning Failed", @"We failed to start provisioning", v18, 0);
    }

LABEL_9:
    v21 = 0;
    goto LABEL_11;
  }

  v22 = objc_alloc(MEMORY[0x1E695DEF0]);
  v21 = [v22 initWithBytesNoCopy:v25 length:v24 deallocator:&__block_literal_global_7];
LABEL_11:

  return v21;
}

@end