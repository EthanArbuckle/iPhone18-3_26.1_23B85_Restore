@interface AMSUIWebBagAction
- (AMSUIWebBagAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)runAction;
- (void)_fetchValuesForKeys:(id)a3 bag:(id)a4 startingAtIndex:(int64_t)a5 valuesArray:(id)a6 completion:(id)a7;
@end

@implementation AMSUIWebBagAction

- (AMSUIWebBagAction)initWithJSObject:(id)a3 context:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v49.receiver = self;
  v49.super_class = AMSUIWebBagAction;
  v7 = [(AMSUIWebAction *)&v49 initWithJSObject:v6 context:a4];
  v8 = v7;
  if (v7)
  {
    v9 = [(AMSUIWebAction *)v7 context];
    v10 = [v6 objectForKeyedSubscript:@"account"];
    v11 = [v9 iTunesAccountFromJSAccount:v10];
    account = v8->_account;
    v8->_account = v11;

    v13 = [v6 objectForKeyedSubscript:@"profile"];
    v14 = 0x1E696A000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v13;
    }

    else
    {
      v15 = 0;
    }

    profile = v8->_profile;
    v8->_profile = v15;

    v17 = [v6 objectForKeyedSubscript:@"profileVersion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    profileVersion = v8->_profileVersion;
    v8->_profileVersion = v18;

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v21 = [v6 objectForKeyedSubscript:@"keys"];
    objc_opt_class();
    v41 = v6;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = v22;
    v44 = [v23 countByEnumeratingWithState:&v45 objects:v56 count:16];
    if (v44)
    {
      v43 = *v46;
      v42 = v20;
      do
      {
        for (i = 0; i != v44; ++i)
        {
          if (*v46 != v43)
          {
            objc_enumerationMutation(v23);
          }

          v25 = *(*(&v45 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v26 = v25;
          }

          else
          {
            v26 = 0;
          }

          v27 = [v26 objectForKeyedSubscript:@"key"];
          v28 = *(v14 + 3776);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = v27;
          }

          else
          {
            v29 = 0;
          }

          v30 = [v26 objectForKeyedSubscript:@"type"];
          if (objc_opt_respondsToSelector())
          {
            v31 = [v30 integerValue];
            if (v29)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v31 = 4;
            if (v29)
            {
LABEL_24:
              v32 = objc_alloc_init(AMSUIWebBagKey);
              [(AMSUIWebBagKey *)v32 setKey:v29];
              [(AMSUIWebBagKey *)v32 setValueType:v31];
              [(NSArray *)v20 addObject:v32];
              goto LABEL_31;
            }
          }

          v32 = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!v32)
          {
            v32 = [MEMORY[0x1E698C968] sharedConfig];
          }

          v33 = [(AMSUIWebBagKey *)v32 OSLogObject];
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            v34 = v8;
            v35 = v23;
            v36 = objc_opt_class();
            v37 = AMSLogKey();
            *buf = 138543874;
            v51 = v36;
            v23 = v35;
            v52 = 2114;
            v53 = v37;
            v54 = 2114;
            v55 = v26;
            _os_log_impl(&dword_1BB036000, v33, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown bag key in def: %{public}@", buf, 0x20u);

            v8 = v34;
            v14 = 0x1E696A000;
            v20 = v42;
          }

LABEL_31:
        }

        v44 = [v23 countByEnumeratingWithState:&v45 objects:v56 count:16];
      }

      while (v44);
    }

    requestedKeys = v8->_requestedKeys;
    v8->_requestedKeys = v20;

    v6 = v41;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)runAction
{
  v52 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = AMSUIWebBagAction;
  v3 = [(AMSUIWebAction *)&v44 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  v5 = [(AMSUIWebBagAction *)self requestedKeys];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(AMSUIWebBagAction *)self profile];
    v8 = [(AMSUIWebBagAction *)self profileVersion];
    v9 = v8;
    if (!v7 || !v8)
    {
      v10 = [(AMSUIWebAction *)self context];
      v11 = [v10 bag];
      v12 = [v11 profile];

      v13 = [(AMSUIWebAction *)self context];
      v14 = [v13 bag];
      v15 = [v14 profileVersion];

      v9 = v15;
      v7 = v12;
    }

    v37 = v4;
    v16 = MEMORY[0x1E698C7D8];
    v17 = [(AMSUIWebAction *)self context];
    v18 = [v17 clientInfo];
    v36 = [v16 bagForProfile:v7 profileVersion:v9 processInfo:v18];

    v19 = objc_alloc_init(MEMORY[0x1E698CA40]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v20 = [(AMSUIWebBagAction *)self requestedKeys];
    v21 = [v20 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = [v25 key];
          [v19 addBagKey:v26 valueType:{objc_msgSend(v25, "valueType")}];
        }

        v22 = [v20 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v22);
    }

    [MEMORY[0x1E698C7E0] registerBagKeySet:v19 forProfile:v7 profileVersion:v9];
    v27 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v27)
    {
      v27 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v28 = [v27 OSLogObject];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      v31 = [(AMSUIWebBagAction *)self requestedKeys];
      *buf = 138543874;
      v46 = v29;
      v47 = 2114;
      v48 = v30;
      v49 = 2114;
      v50 = v31;
      _os_log_impl(&dword_1BB036000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up keys: %{public}@", buf, 0x20u);
    }

    v32 = [(AMSUIWebBagAction *)self requestedKeys];
    v33 = objc_opt_new();
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __30__AMSUIWebBagAction_runAction__block_invoke;
    v38[3] = &unk_1E7F25BA0;
    v4 = v37;
    v39 = v37;
    [(AMSUIWebBagAction *)self _fetchValuesForKeys:v32 bag:v36 startingAtIndex:0 valuesArray:v33 completion:v38];
  }

  else
  {
    v7 = AMSError();
    [v4 finishWithError:v7];
  }

  v34 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t __30__AMSUIWebBagAction_runAction__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a3)
  {
    return [v3 finishWithError:?];
  }

  else
  {
    return [v3 finishWithResult:a2];
  }
}

- (void)_fetchValuesForKeys:(id)a3 bag:(id)a4 startingAtIndex:(int64_t)a5 valuesArray:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v16 = [v12 objectAtIndexedSubscript:a5];
  v17 = [v16 valueType];
  v18 = 0;
  if (v17 <= 2)
  {
    if (!v17)
    {
      v19 = [v16 key];
      v20 = [v13 arrayForKey:v19];
      goto LABEL_23;
    }

    if (v17 == 1)
    {
      v19 = [v16 key];
      v20 = [v13 BOOLForKey:v19];
      goto LABEL_23;
    }

    if (v17 != 2)
    {
      goto LABEL_25;
    }

    v19 = [v16 key];
    v20 = [v13 doubleForKey:v19];
LABEL_23:
    v18 = v20;
LABEL_24:

    goto LABEL_25;
  }

  if (v17 <= 4)
  {
    if (v17 == 3)
    {
      v19 = [v16 key];
      [v13 integerForKey:v19];
    }

    else
    {
      v19 = [v16 key];
      [v13 stringForKey:v19];
    }
    v20 = ;
    goto LABEL_23;
  }

  if (v17 == 5)
  {
    v21 = objc_opt_respondsToSelector();
    v19 = [v16 key];
    if (v21)
    {
      v22 = [(AMSUIWebBagAction *)self account];
      v23 = v22;
      if (!v22)
      {
        v29 = [(AMSUIWebAction *)self context];
        v23 = [v29 account];
      }

      v30 = v23;
      v18 = [v13 URLForKey:v19 account:v23];
      if (!v22)
      {
      }

      goto LABEL_24;
    }

    v20 = [v13 URLForKey:v19];
    goto LABEL_23;
  }

  if (v17 == 6)
  {
    v19 = [v16 key];
    v20 = [v13 dictionaryForKey:v19];
    goto LABEL_23;
  }

LABEL_25:
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__AMSUIWebBagAction__fetchValuesForKeys_bag_startingAtIndex_valuesArray_completion___block_invoke;
  v31[3] = &unk_1E7F25BC8;
  v32 = v14;
  v33 = v16;
  v37 = v15;
  v38 = a5;
  v34 = self;
  v35 = v12;
  v36 = v13;
  v24 = v13;
  v25 = v12;
  v26 = v15;
  v27 = v16;
  v28 = v14;
  [v18 valueWithCompletion:v31];
}

void __84__AMSUIWebBagAction__fetchValuesForKeys_bag_startingAtIndex_valuesArray_completion___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a4;
  v8 = v6;
  objc_opt_class();
  v9 = v8;
  if (objc_opt_isKindOfClass())
  {
    v9 = [v8 absoluteString];
  }

  v10 = *(a1 + 32);
  v11 = [*(a1 + 40) key];
  [v10 setObject:v9 forKeyedSubscript:v11];

  if (v7)
  {
    v12 = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!v12)
    {
      v12 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v13 = [v12 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      v15 = objc_opt_class();
      v16 = [*(a1 + 48) context];
      v17 = [v16 logKey];
      v18 = [*(a1 + 40) key];
      v23 = 138544130;
      v24 = v15;
      v25 = 2114;
      v26 = v17;
      v27 = 2114;
      v28 = v18;
      v29 = 2114;
      v30 = v7;
      _os_log_impl(&dword_1BB036000, v13, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to load bag key: %{public}@. %{public}@", &v23, 0x2Au);
    }
  }

  if ([v7 code] == 203)
  {
    v19 = *(*(a1 + 72) + 16);
LABEL_14:
    v19();
    goto LABEL_15;
  }

  v20 = *(a1 + 80);
  if (v20 >= [*(a1 + 56) count] - 1)
  {
    v21 = *(a1 + 32);
    v19 = *(*(a1 + 72) + 16);
    goto LABEL_14;
  }

  [*(a1 + 48) _fetchValuesForKeys:*(a1 + 56) bag:*(a1 + 64) startingAtIndex:*(a1 + 80) + 1 valuesArray:*(a1 + 32) completion:*(a1 + 72)];
LABEL_15:

  v22 = *MEMORY[0x1E69E9840];
}

@end