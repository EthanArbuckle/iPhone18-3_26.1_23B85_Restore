@interface AMSUIWebBagAction
- (AMSUIWebBagAction)initWithJSObject:(id)object context:(id)context;
- (id)runAction;
- (void)_fetchValuesForKeys:(id)keys bag:(id)bag startingAtIndex:(int64_t)index valuesArray:(id)array completion:(id)completion;
@end

@implementation AMSUIWebBagAction

- (AMSUIWebBagAction)initWithJSObject:(id)object context:(id)context
{
  v57 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v49.receiver = self;
  v49.super_class = AMSUIWebBagAction;
  v7 = [(AMSUIWebAction *)&v49 initWithJSObject:objectCopy context:context];
  v8 = v7;
  if (v7)
  {
    context = [(AMSUIWebAction *)v7 context];
    v10 = [objectCopy objectForKeyedSubscript:@"account"];
    v11 = [context iTunesAccountFromJSAccount:v10];
    account = v8->_account;
    v8->_account = v11;

    v13 = [objectCopy objectForKeyedSubscript:@"profile"];
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

    v17 = [objectCopy objectForKeyedSubscript:@"profileVersion"];
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
    v21 = [objectCopy objectForKeyedSubscript:@"keys"];
    objc_opt_class();
    v41 = objectCopy;
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
            integerValue = [v30 integerValue];
            if (v29)
            {
              goto LABEL_24;
            }
          }

          else
          {
            integerValue = 4;
            if (v29)
            {
LABEL_24:
              mEMORY[0x1E698C968] = objc_alloc_init(AMSUIWebBagKey);
              [(AMSUIWebBagKey *)mEMORY[0x1E698C968] setKey:v29];
              [(AMSUIWebBagKey *)mEMORY[0x1E698C968] setValueType:integerValue];
              [(NSArray *)v20 addObject:mEMORY[0x1E698C968]];
              goto LABEL_31;
            }
          }

          mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
          if (!mEMORY[0x1E698C968])
          {
            mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
          }

          oSLogObject = [(AMSUIWebBagKey *)mEMORY[0x1E698C968] OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
            _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unknown bag key in def: %{public}@", buf, 0x20u);

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

    objectCopy = v41;
  }

  v39 = *MEMORY[0x1E69E9840];
  return v8;
}

- (id)runAction
{
  v52 = *MEMORY[0x1E69E9840];
  v44.receiver = self;
  v44.super_class = AMSUIWebBagAction;
  runAction = [(AMSUIWebAction *)&v44 runAction];
  v4 = objc_alloc_init(MEMORY[0x1E698CAD0]);
  requestedKeys = [(AMSUIWebBagAction *)self requestedKeys];
  v6 = [requestedKeys count];

  if (v6)
  {
    profile = [(AMSUIWebBagAction *)self profile];
    profileVersion = [(AMSUIWebBagAction *)self profileVersion];
    v9 = profileVersion;
    if (!profile || !profileVersion)
    {
      context = [(AMSUIWebAction *)self context];
      v11 = [context bag];
      profile2 = [v11 profile];

      context2 = [(AMSUIWebAction *)self context];
      v14 = [context2 bag];
      profileVersion2 = [v14 profileVersion];

      v9 = profileVersion2;
      profile = profile2;
    }

    v37 = v4;
    v16 = MEMORY[0x1E698C7D8];
    context3 = [(AMSUIWebAction *)self context];
    clientInfo = [context3 clientInfo];
    v36 = [v16 bagForProfile:profile profileVersion:v9 processInfo:clientInfo];

    v19 = objc_alloc_init(MEMORY[0x1E698CA40]);
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    requestedKeys2 = [(AMSUIWebBagAction *)self requestedKeys];
    v21 = [requestedKeys2 countByEnumeratingWithState:&v40 objects:v51 count:16];
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
            objc_enumerationMutation(requestedKeys2);
          }

          v25 = *(*(&v40 + 1) + 8 * i);
          v26 = [v25 key];
          [v19 addBagKey:v26 valueType:{objc_msgSend(v25, "valueType")}];
        }

        v22 = [requestedKeys2 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v22);
    }

    [MEMORY[0x1E698C7E0] registerBagKeySet:v19 forProfile:profile profileVersion:v9];
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedWebUIConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      requestedKeys3 = [(AMSUIWebBagAction *)self requestedKeys];
      *buf = 138543874;
      v46 = v29;
      v47 = 2114;
      v48 = v30;
      v49 = 2114;
      v50 = requestedKeys3;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking up keys: %{public}@", buf, 0x20u);
    }

    requestedKeys4 = [(AMSUIWebBagAction *)self requestedKeys];
    v33 = objc_opt_new();
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __30__AMSUIWebBagAction_runAction__block_invoke;
    v38[3] = &unk_1E7F25BA0;
    v4 = v37;
    v39 = v37;
    [(AMSUIWebBagAction *)self _fetchValuesForKeys:requestedKeys4 bag:v36 startingAtIndex:0 valuesArray:v33 completion:v38];
  }

  else
  {
    profile = AMSError();
    [v4 finishWithError:profile];
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

- (void)_fetchValuesForKeys:(id)keys bag:(id)bag startingAtIndex:(int64_t)index valuesArray:(id)array completion:(id)completion
{
  keysCopy = keys;
  bagCopy = bag;
  arrayCopy = array;
  completionCopy = completion;
  v16 = [keysCopy objectAtIndexedSubscript:index];
  valueType = [v16 valueType];
  v18 = 0;
  if (valueType <= 2)
  {
    if (!valueType)
    {
      v19 = [v16 key];
      v20 = [bagCopy arrayForKey:v19];
      goto LABEL_23;
    }

    if (valueType == 1)
    {
      v19 = [v16 key];
      v20 = [bagCopy BOOLForKey:v19];
      goto LABEL_23;
    }

    if (valueType != 2)
    {
      goto LABEL_25;
    }

    v19 = [v16 key];
    v20 = [bagCopy doubleForKey:v19];
LABEL_23:
    v18 = v20;
LABEL_24:

    goto LABEL_25;
  }

  if (valueType <= 4)
  {
    if (valueType == 3)
    {
      v19 = [v16 key];
      [bagCopy integerForKey:v19];
    }

    else
    {
      v19 = [v16 key];
      [bagCopy stringForKey:v19];
    }
    v20 = ;
    goto LABEL_23;
  }

  if (valueType == 5)
  {
    v21 = objc_opt_respondsToSelector();
    v19 = [v16 key];
    if (v21)
    {
      account = [(AMSUIWebBagAction *)self account];
      account2 = account;
      if (!account)
      {
        context = [(AMSUIWebAction *)self context];
        account2 = [context account];
      }

      v30 = account2;
      v18 = [bagCopy URLForKey:v19 account:account2];
      if (!account)
      {
      }

      goto LABEL_24;
    }

    v20 = [bagCopy URLForKey:v19];
    goto LABEL_23;
  }

  if (valueType == 6)
  {
    v19 = [v16 key];
    v20 = [bagCopy dictionaryForKey:v19];
    goto LABEL_23;
  }

LABEL_25:
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __84__AMSUIWebBagAction__fetchValuesForKeys_bag_startingAtIndex_valuesArray_completion___block_invoke;
  v31[3] = &unk_1E7F25BC8;
  v32 = arrayCopy;
  v33 = v16;
  v37 = completionCopy;
  indexCopy = index;
  selfCopy = self;
  v35 = keysCopy;
  v36 = bagCopy;
  v24 = bagCopy;
  v25 = keysCopy;
  v26 = completionCopy;
  v27 = v16;
  v28 = arrayCopy;
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