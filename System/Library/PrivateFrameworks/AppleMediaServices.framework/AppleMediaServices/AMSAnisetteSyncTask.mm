@interface AMSAnisetteSyncTask
- (AMSAnisetteSyncTask)initWithData:(id)data type:(int64_t)type account:(id)account bag:(id)bag;
- (id)performSync;
@end

@implementation AMSAnisetteSyncTask

- (AMSAnisetteSyncTask)initWithData:(id)data type:(int64_t)type account:(id)account bag:(id)bag
{
  dataCopy = data;
  accountCopy = account;
  bagCopy = bag;
  v17.receiver = self;
  v17.super_class = AMSAnisetteSyncTask;
  v14 = [(AMSTask *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_data, data);
    v15->_type = type;
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v15->_bag, bag);
  }

  return v15;
}

- (id)performSync
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AMSAnisetteSyncTask_performSync__block_invoke;
  v4[3] = &unk_1E73B39D0;
  v4[4] = self;
  v2 = [(AMSTask *)self performBinaryTaskWithBlock:v4];

  return v2;
}

BOOL __34__AMSAnisetteSyncTask_performSync__block_invoke(uint64_t a1, void *a2)
{
  v74 = *MEMORY[0x1E69E9840];
  v3 = 0x1E73B0000uLL;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = v6;
    v8 = AMSLogKey();
    v9 = [*(a1 + 32) type];
    v10 = [*(a1 + 32) account];
    v11 = [v10 ams_DSID];
    v12 = AMSHashIfNeeded(v11);
    *buf = 138544130;
    v67 = v6;
    v68 = 2114;
    v69 = v8;
    v70 = 2048;
    v71 = v9;
    v72 = 2114;
    v73 = v12;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting sync with type: %ld account: %{public}@", buf, 0x2Au);

    v3 = 0x1E73B0000;
  }

  v65 = 0;
  v64 = 0;
  v63 = 0;
  v62 = 0;
  v13 = [*(a1 + 32) type];
  v14 = [*(a1 + 32) account];
  v15 = [AMSAnisette _accountIDForType:v13 account:v14];

  v16 = [*(a1 + 32) data];
  v17 = [v16 bytes];
  v18 = [*(a1 + 32) data];
  tn46gtiuhw(v15, v17, [v18 length], &v65, &v64, &v63, &v62);
  v20 = v19;

  if (v20)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Sync failed with error code: %ld", v20];
    v22 = AMSError(307, @"Anisette Sync Failed", v21, 0);
    v23 = 0;
  }

  else
  {
    v24 = objc_alloc(MEMORY[0x1E695DEF0]);
    v21 = [v24 initWithBytesNoCopy:v63 length:v62 freeWhenDone:0];
    v25 = objc_alloc(MEMORY[0x1E695DEF0]);
    v26 = [v25 initWithBytesNoCopy:v65 length:v64 freeWhenDone:0];
    v27 = [AMSURLRequestEncoder alloc];
    v28 = [*(a1 + 32) bag];
    v29 = [(AMSURLRequestEncoder *)v27 initWithBag:v28];

    [(AMSURLRequestEncoder *)v29 setDialogOptions:1];
    [(AMSURLRequestEncoder *)v29 setRequestEncoding:2];
    v30 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v31 = [v21 base64EncodedStringWithOptions:0];
    [v30 setObject:v31 forKeyedSubscript:@"clientData"];

    v32 = [v26 base64EncodedStringWithOptions:0];
    [v30 setObject:v32 forKeyedSubscript:@"machineId"];

    v33 = [*(a1 + 32) type];
    v34 = [*(a1 + 32) bag];
    v35 = v34;
    if (v33 == 2)
    {
      v36 = [v34 URLForKey:@"amd-sync-machine"];
    }

    else
    {
      v36 = [v34 URLForKey:@"md-sync-machine"];

      v35 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v15];
      [v30 setObject:v35 forKeyedSubscript:@"dsId"];
    }

    v37 = [(AMSURLRequestEncoder *)v29 requestWithMethod:4 bagURL:v36 parameters:v30];
    v61 = 0;
    v38 = [v37 resultWithError:&v61];
    v22 = v61;

    if (v22)
    {
      v39 = 0;
      v23 = 0;
    }

    else
    {
      v58 = v26;
      v40 = +[AMSURLSession defaultSession];
      v41 = [v40 dataTaskPromiseWithRequest:v38];
      v60 = 0;
      v39 = [v41 resultWithError:&v60];
      v22 = v60;

      if (v22)
      {
        v23 = 0;
        v26 = v58;
      }

      else
      {
        v42 = [v39 object];
        objc_opt_class();
        v26 = v58;
        if (objc_opt_isKindOfClass())
        {
          v43 = v42;
        }

        else
        {
          v43 = 0;
        }

        v57 = v43;
        v44 = [v43 objectForKeyedSubscript:@"syncState"];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v23 = v44;
        }

        else
        {
          v23 = 0;
        }

        v22 = 0;
      }
    }

    v3 = 0x1E73B0000uLL;
  }

  if (v65)
  {
    jk24uiwqrg(v65);
  }

  if (v63)
  {
    jk24uiwqrg(v63);
  }

  v45 = [*(v3 + 3552) sharedAccountsConfig];
  v46 = v45;
  if (v22)
  {
    if (!v45)
    {
      v46 = [*(v3 + 3552) sharedConfig];
    }

    v47 = [v46 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = v48;
      v50 = AMSLogKey();
      *buf = 138544130;
      v67 = v48;
      v68 = 2114;
      v69 = v50;
      v70 = 2112;
      v71 = v23;
      v72 = 2114;
      v73 = v22;
      _os_log_impl(&dword_192869000, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Synchronize failed. (state: %@) %{public}@", buf, 0x2Au);
    }

    if (a2)
    {
      v51 = v22;
      *a2 = v22;
    }
  }

  else
  {
    if (!v45)
    {
      v46 = [*(v3 + 3552) sharedConfig];
    }

    v52 = [v46 OSLogObject];
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      v53 = objc_opt_class();
      v54 = v53;
      v55 = AMSLogKey();
      *buf = 138543874;
      v67 = v53;
      v68 = 2114;
      v69 = v55;
      v70 = 2112;
      v71 = v23;
      _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Synchronize succeeded. (state: %@)", buf, 0x20u);
    }
  }

  return v22 == 0;
}

@end