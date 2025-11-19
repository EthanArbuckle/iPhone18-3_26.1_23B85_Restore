@interface AMSUIWebFamilyAction
- (AMSUIWebFamilyAction)initWithJSObject:(id)a3 context:(id)a4;
- (id)_dictionaryFromLookupResult:(id)a3;
- (id)runAction;
@end

@implementation AMSUIWebFamilyAction

- (AMSUIWebFamilyAction)initWithJSObject:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIWebFamilyAction;
  v8 = [(AMSUIWebAction *)&v13 initWithJSObject:v6 context:v7];
  if (v8)
  {
    v9 = [v6 objectForKeyedSubscript:@"account"];
    v10 = [v7 iTunesAccountFromJSAccount:v9];
    account = v8->_account;
    v8->_account = v10;
  }

  return v8;
}

- (id)runAction
{
  v24 = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = AMSUIWebFamilyAction;
  v3 = [(AMSUIWebAction *)&v19 runAction];
  v4 = [MEMORY[0x1E698C968] sharedWebUIConfig];
  if (!v4)
  {
    v4 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    *buf = 138543618;
    v21 = v6;
    v22 = 2114;
    v23 = v7;
    _os_log_impl(&dword_1BB036000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing family lookup", buf, 0x16u);
  }

  v8 = objc_alloc(MEMORY[0x1E698C920]);
  v9 = [(AMSUIWebFamilyAction *)self account];
  v10 = [(AMSUIWebAction *)self context];
  v11 = [v10 bag];
  v12 = [v8 initWithAccount:v9 bag:v11];

  v13 = AMSLogKey();
  [v12 setLogKey:v13];

  v14 = [v12 performFamilyInfoLookup];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __33__AMSUIWebFamilyAction_runAction__block_invoke;
  v18[3] = &unk_1E7F26110;
  v18[4] = self;
  v15 = [v14 thenWithBlock:v18];

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

id __33__AMSUIWebFamilyAction_runAction__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E698CAD0];
  v3 = [*(a1 + 32) _dictionaryFromLookupResult:a2];
  v4 = [v2 promiseWithResult:v3];

  return v4;
}

- (id)_dictionaryFromLookupResult:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v3, "isHeadOfHouseholdSharingPayment")}];
  v27 = v4;
  [v4 setObject:v5 forKeyedSubscript:@"sharedPaymentMethod"];

  v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v26 = v3;
  obj = [v3 familyMembers];
  v7 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v29 + 1) + 8 * i);
        v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v13 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isAskToBuyEnabled")}];
        [v12 setObject:v13 forKeyedSubscript:@"askToBuyEnabled"];

        v14 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isCurrentSignedInUser")}];
        [v12 setObject:v14 forKeyedSubscript:@"currentSignedInUser"];

        v15 = [v11 firstName];
        [v12 setObject:v15 forKeyedSubscript:@"firstName"];

        v16 = [v11 iCloudDSID];
        v17 = [v16 stringValue];
        [v12 setObject:v17 forKeyedSubscript:@"iCloudDSID"];

        v18 = [v11 iCloudUsername];
        [v12 setObject:v18 forKeyedSubscript:@"iCloudUsername"];

        v19 = [v11 iTunesDSID];
        v20 = [v19 stringValue];
        [v12 setObject:v20 forKeyedSubscript:@"iTunesDSID"];

        v21 = [v11 iTunesUsername];
        [v12 setObject:v21 forKeyedSubscript:@"iTunesUsername"];

        v22 = [v11 lastName];
        [v12 setObject:v22 forKeyedSubscript:@"lastName"];

        v23 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v11, "isSharingPurchases")}];
        [v12 setObject:v23 forKeyedSubscript:@"sharingPurchases"];

        [v6 addObject:v12];
      }

      v8 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v8);
  }

  [v27 setObject:v6 forKeyedSubscript:@"familyMembers"];
  v24 = *MEMORY[0x1E69E9840];

  return v27;
}

@end