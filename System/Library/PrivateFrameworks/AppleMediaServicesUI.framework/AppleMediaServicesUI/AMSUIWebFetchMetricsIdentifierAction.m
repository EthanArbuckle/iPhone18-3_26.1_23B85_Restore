@interface AMSUIWebFetchMetricsIdentifierAction
- (AMSUIWebFetchMetricsIdentifierAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
@end

@implementation AMSUIWebFetchMetricsIdentifierAction

- (AMSUIWebFetchMetricsIdentifierAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v29.receiver = self;
  v29.super_class = AMSUIWebFetchMetricsIdentifierAction;
  v8 = [(AMSUIWebAction *)&v29 initWithJSObject:v6 context:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"account"];
    v10 = [v7 iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;

    v12 = [v6 objectForKeyedSubscript:@"bagNamespace"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    bagNamespace = v8->_bagNamespace;
    v8->_bagNamespace = v13;

    v15 = [v6 objectForKeyedSubscript:@"bagProfile"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    bagProfile = v8->_bagProfile;
    v8->_bagProfile = v16;

    v18 = [v6 objectForKeyedSubscript:@"bagProfileVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    bagProfileVersion = v8->_bagProfileVersion;
    v8->_bagProfileVersion = v19;

    v21 = [v6 objectForKeyedSubscript:@"crossDeviceSync"];
    if (objc_opt_respondsToSelector())
    {
      v22 = [v6 objectForKeyedSubscript:@"crossDeviceSync"];
      v8->_crossDeviceSync = [v22 BOOLValue];
    }

    else
    {
      v8->_crossDeviceSync = 0;
    }

    v23 = [v6 objectForKeyedSubscript:@"generateEventFields"];
    if (objc_opt_respondsToSelector())
    {
      v24 = [v6 objectForKeyedSubscript:@"generateEventFields"];
      v8->_generateEventFields = [v24 BOOLValue];
    }

    else
    {
      v8->_generateEventFields = 0;
    }

    v25 = [v6 objectForKeyedSubscript:@"identifierKey"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    identifierKey = v8->_identifierKey;
    v8->_identifierKey = v26;
  }

  return v8;
}

- (id)runAction
{
  v63 = *MEMORY[0x1E69E9840];
  v48.receiver = self;
  v48.super_class = AMSUIWebFetchMetricsIdentifierAction;
  v3 = [(AMSUIWebAction *)&v48 runAction];
  v4 = [(AMSUIWebFetchMetricsIdentifierAction *)self bagNamespace];
  if (v4)
  {
    v5 = [(AMSUIWebFetchMetricsIdentifierAction *)self crossDeviceSync];
    v6 = [(AMSUIWebFetchMetricsIdentifierAction *)self generateEventFields];
    v7 = [(AMSUIWebFetchMetricsIdentifierAction *)self identifierKey];
    if (v7)
    {
      v37 = v6;
      v40 = [(AMSUIWebAction *)self context];
      v8 = [(AMSUIWebFetchMetricsIdentifierAction *)self account];
      v9 = v8;
      v38 = v5;
      if (v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = [v40 account];
      }

      v14 = v10;

      v15 = [(AMSUIWebFetchMetricsIdentifierAction *)self bagProfile];
      v16 = [(AMSUIWebFetchMetricsIdentifierAction *)self bagProfileVersion];
      v17 = v16;
      if (!v15)
      {
        goto LABEL_11;
      }

      if (!v16)
      {
        goto LABEL_11;
      }

      v18 = v16;
      v19 = MEMORY[0x1E698C7D8];
      [v40 clientInfo];
      v21 = v20 = v14;
      v22 = v19;
      v17 = v18;
      v23 = [v22 bagForProfile:v15 profileVersion:v18 processInfo:v21];

      v14 = v20;
      v39 = v23;
      if (!v23)
      {
LABEL_11:
        v39 = [v40 bag];
      }

      v24 = [MEMORY[0x1E698C968] sharedWebUIConfig];
      if (!v24)
      {
        v24 = [MEMORY[0x1E698C968] sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v35 = v17;
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        AMSHashIfNeeded();
        v28 = v36 = v14;
        v29 = AMSHashIfNeeded();
        v30 = v29;
        *buf = 138544898;
        v31 = @"false";
        v50 = v26;
        v51 = 2114;
        if (v38)
        {
          v31 = @"true";
        }

        v52 = v27;
        v53 = 2114;
        v54 = v28;
        v55 = 2114;
        v56 = v29;
        v57 = 2114;
        v58 = v4;
        v59 = 2114;
        v60 = v7;
        v17 = v35;
        v61 = 2114;
        v62 = v31;
        _os_log_impl(&dword_1BB036000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting (account: %{public}@; bag: %{public}@; bagNamespace: %{public}@; identifierKey: %{public}@; crossDeviceSync: %{public}@)", buf, 0x48u);

        v14 = v36;
      }

      v32 = [MEMORY[0x1E698CA20] identifierStoreWithAccount:v14 bagNamespace:v4 bag:v39];
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 3221225472;
      v44[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke;
      v44[3] = &unk_1E7F261C8;
      v45 = v7;
      v46 = v38;
      v47 = v37;
      v12 = [v32 thenWithBlock:v44];

      v43[0] = MEMORY[0x1E69E9820];
      v43[1] = 3221225472;
      v43[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_2;
      v43[3] = &unk_1E7F24410;
      v43[4] = self;
      [v12 addErrorBlock:v43];
      v42[0] = MEMORY[0x1E69E9820];
      v42[1] = 3221225472;
      v42[2] = __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_53;
      v42[3] = &unk_1E7F261F0;
      v42[4] = self;
      [v12 addSuccessBlock:v42];
    }

    else
    {
      v13 = MEMORY[0x1E698CAD0];
      v41 = AMSError();
      v12 = [v13 promiseWithError:?];
    }
  }

  else
  {
    v11 = MEMORY[0x1E698CAD0];
    v7 = AMSError();
    v12 = [v11 promiseWithError:v7];
  }

  v33 = *MEMORY[0x1E69E9840];

  return v12;
}

id __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698CA18] keyWithName:*(a1 + 32) crossDeviceSync:*(a1 + 40)];
  v5 = [v3 identifierForKey:v4];
  v6 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"identifier", 0}];
  if (*(a1 + 41) == 1)
  {
    v16[0] = v4;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:1];
    v8 = [v3 generateEventFieldsForKeys:v7];

    v14 = @"eventFields";
    v15 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v6 ams_dictionaryByAddingEntriesFromDictionary:v9];

    v6 = v10;
  }

  v11 = [MEMORY[0x1E698CAD0] promiseWithResult:v6];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

void __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v9 = AMSHashIfNeeded();
    v11 = 138543874;
    v12 = v7;
    v13 = 2114;
    v14 = v8;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failure (error: %{public}@)", &v11, 0x20u);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __49__AMSUIWebFetchMetricsIdentifierAction_runAction__block_invoke_53(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v7 = objc_opt_class();
    v8 = AMSLogKey();
    v10 = 138543874;
    v11 = v7;
    v12 = 2114;
    v13 = v8;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Success (result: %{public}@)", &v10, 0x20u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

@end