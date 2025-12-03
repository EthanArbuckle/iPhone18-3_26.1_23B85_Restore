@interface AMSBagActiveAccountProvider
+ (id)_storefrontPromiseResultForAccountMediaType:(id)type account:(id)account;
- (BOOL)associatedAccountIsEqualToAccount:(id)account forMediaType:(id)type;
- (id)_activeAccountInStore:(id)store forMediaType:(id)type;
- (id)_handleFetchedLocalAccount:(id)account fetchError:(id)error mustContainStorefront:(BOOL)storefront mediaType:(id)type error:(id *)a7;
- (id)bagAccountForAccountMediaType:(id)type;
- (id)bagAccountPromiseForAccountMediaType:(id)type;
- (id)bagStorefrontForAccountMediaType:(id)type;
- (id)bagStorefrontPromiseForAccountMediaType:(id)type;
- (void)_bagAccountForAccountMediaType:(id)type mustContainStorefront:(BOOL)storefront sync:(BOOL)sync completion:(id)completion;
- (void)_localAccountInStore:(id)store mediaType:(id)type mustContainStorefront:(BOOL)storefront sync:(BOOL)sync completion:(id)completion;
@end

@implementation AMSBagActiveAccountProvider

- (BOOL)associatedAccountIsEqualToAccount:(id)account forMediaType:(id)type
{
  accountCopy = account;
  typeCopy = type;
  if ([accountCopy ams_isLocalAccount])
  {
    v7 = 1;
  }

  else
  {
    accountType = [accountCopy accountType];
    identifier = [accountType identifier];
    v10 = [MEMORY[0x1E6959A48] ams_accountTypeIdentifierForMediaType:typeCopy];
    v7 = [identifier isEqualToString:v10];
  }

  return v7;
}

- (id)bagAccountForAccountMediaType:(id)type
{
  typeCopy = type;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __61__AMSBagActiveAccountProvider_bagAccountForAccountMediaType___block_invoke;
  v7[3] = &unk_1E73B4258;
  v7[4] = &v8;
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:typeCopy mustContainStorefront:0 sync:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)bagStorefrontForAccountMediaType:(id)type
{
  typeCopy = type;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__AMSBagActiveAccountProvider_bagStorefrontForAccountMediaType___block_invoke;
  v8[3] = &unk_1E73B4258;
  v8[4] = &v9;
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:typeCopy mustContainStorefront:1 sync:1 completion:v8];
  if (v10[5])
  {
    v5 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:typeCopy account:?];
    result = [v5 result];
  }

  else
  {
    result = 0;
  }

  _Block_object_dispose(&v9, 8);

  return result;
}

- (id)bagAccountPromiseForAccountMediaType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(AMSMutablePromise);
  completionHandlerAdapter = [(AMSPromise *)v5 completionHandlerAdapter];
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:typeCopy mustContainStorefront:0 sync:0 completion:completionHandlerAdapter];

  return v5;
}

- (id)bagStorefrontPromiseForAccountMediaType:(id)type
{
  typeCopy = type;
  v5 = objc_alloc_init(AMSMutablePromise);
  completionHandlerAdapter = [(AMSPromise *)v5 completionHandlerAdapter];
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:typeCopy mustContainStorefront:1 sync:0 completion:completionHandlerAdapter];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AMSBagActiveAccountProvider_bagStorefrontPromiseForAccountMediaType___block_invoke;
  v10[3] = &unk_1E73B4280;
  v11 = typeCopy;
  v7 = typeCopy;
  v8 = [(AMSMutablePromise *)v5 thenWithBlock:v10];

  return v8;
}

id __71__AMSBagActiveAccountProvider_bagStorefrontPromiseForAccountMediaType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:*(a1 + 32) account:a2];
  v3 = [AMSPromise promiseWithPromiseResult:v2];

  return v3;
}

+ (id)_storefrontPromiseResultForAccountMediaType:(id)type account:(id)account
{
  typeCopy = type;
  v6 = [account ams_storefrontForMediaType:typeCopy];
  if (v6)
  {
    v7 = [[AMSPromiseResult alloc] initWithResult:v6 error:0];
  }

  else
  {
    typeCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"Account has no storefront for mediatype %@", typeCopy];
    v9 = AMSError(7, @"No storefront found", typeCopy, 0);
    v7 = [[AMSPromiseResult alloc] initWithResult:0 error:v9];
  }

  return v7;
}

- (void)_bagAccountForAccountMediaType:(id)type mustContainStorefront:(BOOL)storefront sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  storefrontCopy = storefront;
  v45 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  completionCopy = completion;
  if (!typeCopy)
  {
    v13 = +[AMSLogConfig sharedBagConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v13 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v39 = syncCopy;
      v15 = AMSLogKey();
      v16 = MEMORY[0x1E696AEC0];
      v17 = objc_opt_class();
      v18 = v17;
      if (v15)
      {
        v6 = AMSLogKey();
        [v16 stringWithFormat:@"%@: [%@] ", v18, v6];
      }

      else
      {
        [v16 stringWithFormat:@"%@: ", v17];
      }
      v19 = ;
      *buf = 138543362;
      v42 = v19;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@No media type was provided. The default will be used instead.", buf, 0xCu);
      syncCopy = v39;
      if (v15)
      {

        v19 = v6;
      }
    }
  }

  v20 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:typeCopy];
  v21 = [(AMSBagActiveAccountProvider *)self _activeAccountInStore:v20 forMediaType:typeCopy];
  v22 = v21;
  if (v21)
  {
    v23 = !storefrontCopy;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v30 = [v21 ams_storefrontForMediaType:typeCopy];

    if (v30)
    {
      goto LABEL_24;
    }

    v24 = +[AMSLogConfig sharedBagConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:

      [(AMSBagActiveAccountProvider *)self _localAccountInStore:v20 mediaType:typeCopy mustContainStorefront:storefrontCopy sync:syncCopy completion:completionCopy];
      goto LABEL_38;
    }

    v40 = syncCopy;
    v31 = AMSLogKey();
    v37 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = v32;
    v38 = v31;
    if (v31)
    {
      v35 = AMSLogKey();
      [v37 stringWithFormat:@"%@: [%@] ", v33, v35];
    }

    else
    {
      [v37 stringWithFormat:@"%@: ", v32];
    }
    v29 = ;
    *buf = 138543618;
    v42 = v29;
    v43 = 2114;
    v44 = typeCopy;
    v34 = "%{public}@There’s an active account, but a required storefront is missing. Falling back to the local account. mediaType = %{public}@";
LABEL_34:
    _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, v34, buf, 0x16u);
    syncCopy = v40;
    if (v38)
    {

      v29 = v35;
    }

    goto LABEL_37;
  }

  if (!v21)
  {
    v24 = +[AMSLogConfig sharedBagConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v24 OSLogObject];
    if (!os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    v40 = syncCopy;
    v26 = AMSLogKey();
    v36 = MEMORY[0x1E696AEC0];
    v27 = objc_opt_class();
    v28 = v27;
    v38 = v26;
    if (v26)
    {
      v35 = AMSLogKey();
      [v36 stringWithFormat:@"%@: [%@] ", v28, v35];
    }

    else
    {
      [v36 stringWithFormat:@"%@: ", v27];
    }
    v29 = ;
    *buf = 138543618;
    v42 = v29;
    v43 = 2114;
    v44 = typeCopy;
    v34 = "%{public}@There’s no active account. Falling back to the local account. mediaType = %{public}@";
    goto LABEL_34;
  }

LABEL_24:
  completionCopy[2](completionCopy, v22, 0);
LABEL_38:
}

- (id)_activeAccountInStore:(id)store forMediaType:(id)type
{
  typeCopy = type;
  ams_iTunesAccounts = [store ams_iTunesAccounts];
  if (ams_iTunesAccounts)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__AMSBagActiveAccountProvider__activeAccountInStore_forMediaType___block_invoke;
    v9[3] = &unk_1E73B42A8;
    v10 = typeCopy;
    v7 = [ams_iTunesAccounts ams_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_localAccountInStore:(id)store mediaType:(id)type mustContainStorefront:(BOOL)storefront sync:(BOOL)sync completion:(id)completion
{
  syncCopy = sync;
  typeCopy = type;
  completionCopy = completion;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__AMSBagActiveAccountProvider__localAccountInStore_mediaType_mustContainStorefront_sync_completion___block_invoke;
  aBlock[3] = &unk_1E73B42D0;
  aBlock[4] = self;
  storefrontCopy = storefront;
  v14 = typeCopy;
  v23 = v14;
  v15 = completionCopy;
  v24 = v15;
  storeCopy = store;
  v17 = _Block_copy(aBlock);
  ams_mediaType = [storeCopy ams_mediaType];
  if (syncCopy)
  {
    v21 = 0;
    v19 = [storeCopy ams_localiTunesAccountForAccountMediaType:ams_mediaType error:&v21];

    v20 = v21;
    v17[2](v17, v19, v20);
    ams_mediaType = v19;
  }

  else
  {
    v20 = [storeCopy _ams_localiTunesAccountForAccountMediaType:ams_mediaType updateStorefront:0];

    [v20 addFinishBlock:v17];
  }
}

void __100__AMSBagActiveAccountProvider__localAccountInStore_mediaType_mustContainStorefront_sync_completion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 56);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = 0;
  v7 = [v5 _handleFetchedLocalAccount:a2 fetchError:a3 mustContainStorefront:v4 mediaType:v6 error:&v9];
  v8 = v9;
  (*(*(a1 + 48) + 16))();
}

- (id)_handleFetchedLocalAccount:(id)account fetchError:(id)error mustContainStorefront:(BOOL)storefront mediaType:(id)type error:(id *)a7
{
  storefrontCopy = storefront;
  v41 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  errorCopy = error;
  typeCopy = type;
  if (accountCopy)
  {
    if (!storefrontCopy || ([accountCopy ams_storefrontForMediaType:typeCopy], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = accountCopy;
      goto LABEL_29;
    }

    v24 = +[AMSLogConfig sharedBagConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v24 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v26 = AMSLogKey();
      v27 = MEMORY[0x1E696AEC0];
      v28 = objc_opt_class();
      v29 = v28;
      if (v26)
      {
        self = AMSLogKey();
        [v27 stringWithFormat:@"%@: [%@] ", v29, self];
      }

      else
      {
        [v27 stringWithFormat:@"%@: ", v28];
      }
      selfCopy = ;
      v33 = AMSHashIfNeeded(accountCopy);
      *buf = 138543874;
      v36 = selfCopy;
      v37 = 2114;
      v38 = v33;
      v39 = 2114;
      v40 = typeCopy;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@The local account doesn’t have a storefront. localAccount = %{public}@ | mediaType = %{public}@", buf, 0x20u);
      if (v26)
      {

        selfCopy = self;
      }
    }

    if (a7)
    {
      v31 = @"Local account found but has missing storefront";
      v32 = 0;
      goto LABEL_27;
    }
  }

  else
  {
    v17 = +[AMSLogConfig sharedBagConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v19)
      {
        self = AMSLogKey();
        [v20 stringWithFormat:@"%@: [%@] ", v22, self];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v21];
      }
      selfCopy2 = ;
      *buf = 138543618;
      v36 = selfCopy2;
      v37 = 2114;
      v38 = typeCopy;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to fetch local account. This will prevent initial bag requests from specifying storefront / cookies. mediaType = %{public}@", buf, 0x16u);
      if (v19)
      {

        selfCopy2 = self;
      }
    }

    if (a7)
    {
      v31 = @"Local account not found";
      v32 = errorCopy;
LABEL_27:
      AMSError(7, v31, 0, v32);
      *a7 = v16 = 0;
      goto LABEL_29;
    }
  }

  v16 = 0;
LABEL_29:

  return v16;
}

@end