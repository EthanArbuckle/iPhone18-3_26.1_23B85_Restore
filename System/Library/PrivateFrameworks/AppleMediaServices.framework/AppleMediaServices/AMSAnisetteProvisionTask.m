@interface AMSAnisetteProvisionTask
- (AMSAnisetteProvisionTask)initWithData:(id)a3 type:(int64_t)a4 account:(id)a5 bag:(id)a6;
- (BOOL)_processFinishProvisioningResult:(id)a3 sessionID:(unsigned int)a4 error:(id *)a5;
- (id)_createFinishProvisioningRequestWithClientData:(id)a3 error:(id *)a4;
- (id)_startProvisioningWithOutputSessionID:(unsigned int *)a3 error:(id *)a4;
- (id)performProvisioning;
@end

@implementation AMSAnisetteProvisionTask

- (AMSAnisetteProvisionTask)initWithData:(id)a3 type:(int64_t)a4 account:(id)a5 bag:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = AMSAnisetteProvisionTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, a3);
    objc_storeStrong(&v15->_account, a5);
    objc_storeStrong(&v15->_bag, a6);
    v15->_type = a4;
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

- (id)_createFinishProvisioningRequestWithClientData:(id)a3 error:(id *)a4
{
  v54 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(AMSAnisetteProvisionTask *)self account];
  v8 = [AMSURLRequestEncoder alloc];
  v9 = [(AMSAnisetteProvisionTask *)self bag];
  v10 = [(AMSURLRequestEncoder *)v8 initWithBag:v9];

  [(AMSURLRequestEncoder *)v10 setAccount:v7];
  [(AMSURLRequestEncoder *)v10 setRequestEncoding:2];
  [(AMSURLRequestEncoder *)v10 setDialogOptions:1];
  v11 = AMSLogKey();
  [(AMSURLRequestEncoder *)v10 setLogUUID:v11];

  v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = [v6 base64EncodedStringWithOptions:0];

  [v12 ams_setNullableObject:v13 forKey:@"clientData"];
  v14 = +[AMSDevice deviceGUID];
  [v12 ams_setNullableObject:v14 forKey:@"guid"];

  v15 = [(AMSAnisetteProvisionTask *)self type];
  if (v15 == 2)
  {
    v28 = [(AMSAnisetteProvisionTask *)self bag];
    v27 = [v28 URLForKey:@"amd-finish-provisioning"];

LABEL_11:
    v29 = [(AMSURLRequestEncoder *)v10 requestWithMethod:4 bagURL:v27 parameters:v12];
    v30 = [v29 resultWithError:a4];

    goto LABEL_24;
  }

  if (v15 == 1)
  {
    v16 = +[AMSKeybag sharedInstance];
    v17 = [v7 ams_DSID];
    v45 = 0;
    v18 = [v16 keybagSyncDataWithAccountID:v17 transactionType:1 error:&v45];
    v19 = v45;

    [v12 ams_setNullableObject:v18 forKey:@"kbsync"];
    v20 = [v7 ams_DSID];
    [v12 ams_setNullableObject:v20 forKey:@"dsId"];

    if (v19)
    {
      v21 = +[AMSLogConfig sharedAccountsConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v44 = a4;
        v23 = objc_opt_class();
        v41 = v23;
        v24 = AMSLogKey();
        v40 = [v7 ams_DSID];
        AMSHashIfNeeded(v40);
        v25 = v42 = v18;
        *buf = 138544130;
        v47 = v23;
        a4 = v44;
        v48 = 2114;
        v49 = v24;
        v50 = 2114;
        v51 = v25;
        v52 = 2114;
        v53 = v19;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch keybag data for account: %{public}@. Error: %{public}@", buf, 0x2Au);

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

  v32 = [v31 OSLogObject];
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    v33 = a4;
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
    v53 = [(AMSAnisetteProvisionTask *)self type];
    _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid type. Expected %ld or %ld, got %ld.", buf, 0x2Au);
    if (v34)
    {

      v38 = v43;
    }

    a4 = v33;
  }

  if (a4)
  {
    AMSError(2, @"Anisette Provisioning Error", @"Invalid type.", 0);
    *a4 = v30 = 0;
  }

  else
  {
    v30 = 0;
  }

LABEL_24:

  return v30;
}

- (BOOL)_processFinishProvisioningResult:(id)a3 sessionID:(unsigned int)a4 error:(id *)a5
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = [a3 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
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
          if (a5)
          {
            v26 = v28;
            AMSError(307, @"Anisette Provisioning Failed", @"Failed to import key bag data.", v28);
            *a5 = v16 = 0;
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

        v18 = [v17 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = objc_opt_class();
          v20 = AMSLogKey();
          *buf = 138543618;
          v33 = v19;
          v34 = 2114;
          v35 = v20;
          _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Anisette provisioning did not provide keybag data", buf, 0x16u);
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
      if (a5 && v23)
      {
        v30 = @"AMSAnisetteErrorCode";
        v24 = [MEMORY[0x1E696AD98] numberWithInt:v23];
        v31 = v24;
        v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *a5 = AMSCustomError(@"AMSErrorDomain", 307, @"Anisette Provisioning Failed", @"Failed to finish machine provisioning.", v25, 0);
      }

      goto LABEL_31;
    }
  }

  else
  {

    v13 = 0;
  }

  if (a5)
  {
    AMSError(307, @"Anisette Provisioning Failed", @"The finish provisioning request's response was invalid.", 0);
    *a5 = v16 = 0;
  }

  else
  {
    v16 = 0;
  }

LABEL_33:

  return v16;
}

- (id)_startProvisioningWithOutputSessionID:(unsigned int *)a3 error:(id *)a4
{
  v27[1] = *MEMORY[0x1E69E9840];
  v7 = [(AMSAnisetteProvisionTask *)self data];
  v8 = [v7 length];

  if (!v8)
  {
    if (a4)
    {
      v19 = AMSError(307, @"Anisette Provisioning Failed", @"No data found", 0);
      v20 = v19;
      v21 = 0;
      *a4 = v19;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v9 = [(AMSAnisetteProvisionTask *)self type];
  v10 = [(AMSAnisetteProvisionTask *)self account];
  v11 = [AMSAnisette _accountIDForType:v9 account:v10];

  v25 = 0;
  v24 = 0;
  v12 = [(AMSAnisetteProvisionTask *)self data];
  v13 = [v12 bytes];
  v14 = [(AMSAnisetteProvisionTask *)self data];
  rsegvyrt87(v11, v13, [v14 length], &v25, &v24, a3);
  v16 = v15;

  if (v16)
  {
    if (v25)
    {
      jk24uiwqrg(v25);
    }

    if (a4)
    {
      v26 = @"AMSAnisetteErrorCode";
      v17 = [MEMORY[0x1E696AD98] numberWithInt:v16];
      v27[0] = v17;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:&v26 count:1];
      *a4 = AMSCustomError(@"AMSErrorDomain", 307, @"Anisette Provisioning Failed", @"We failed to start provisioning", v18, 0);
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