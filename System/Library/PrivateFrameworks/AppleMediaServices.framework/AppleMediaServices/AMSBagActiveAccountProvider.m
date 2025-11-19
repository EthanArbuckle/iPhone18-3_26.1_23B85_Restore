@interface AMSBagActiveAccountProvider
+ (id)_storefrontPromiseResultForAccountMediaType:(id)a3 account:(id)a4;
- (BOOL)associatedAccountIsEqualToAccount:(id)a3 forMediaType:(id)a4;
- (id)_activeAccountInStore:(id)a3 forMediaType:(id)a4;
- (id)_handleFetchedLocalAccount:(id)a3 fetchError:(id)a4 mustContainStorefront:(BOOL)a5 mediaType:(id)a6 error:(id *)a7;
- (id)bagAccountForAccountMediaType:(id)a3;
- (id)bagAccountPromiseForAccountMediaType:(id)a3;
- (id)bagStorefrontForAccountMediaType:(id)a3;
- (id)bagStorefrontPromiseForAccountMediaType:(id)a3;
- (void)_bagAccountForAccountMediaType:(id)a3 mustContainStorefront:(BOOL)a4 sync:(BOOL)a5 completion:(id)a6;
- (void)_localAccountInStore:(id)a3 mediaType:(id)a4 mustContainStorefront:(BOOL)a5 sync:(BOOL)a6 completion:(id)a7;
@end

@implementation AMSBagActiveAccountProvider

- (BOOL)associatedAccountIsEqualToAccount:(id)a3 forMediaType:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 ams_isLocalAccount])
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 accountType];
    v9 = [v8 identifier];
    v10 = [MEMORY[0x1E6959A48] ams_accountTypeIdentifierForMediaType:v6];
    v7 = [v9 isEqualToString:v10];
  }

  return v7;
}

- (id)bagAccountForAccountMediaType:(id)a3
{
  v4 = a3;
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
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:v4 mustContainStorefront:0 sync:1 completion:v7];
  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

- (id)bagStorefrontForAccountMediaType:(id)a3
{
  v4 = a3;
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
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:v4 mustContainStorefront:1 sync:1 completion:v8];
  if (v10[5])
  {
    v5 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:v4 account:?];
    v6 = [v5 result];
  }

  else
  {
    v6 = 0;
  }

  _Block_object_dispose(&v9, 8);

  return v6;
}

- (id)bagAccountPromiseForAccountMediaType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSPromise *)v5 completionHandlerAdapter];
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:v4 mustContainStorefront:0 sync:0 completion:v6];

  return v5;
}

- (id)bagStorefrontPromiseForAccountMediaType:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSPromise *)v5 completionHandlerAdapter];
  [(AMSBagActiveAccountProvider *)self _bagAccountForAccountMediaType:v4 mustContainStorefront:1 sync:0 completion:v6];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __71__AMSBagActiveAccountProvider_bagStorefrontPromiseForAccountMediaType___block_invoke;
  v10[3] = &unk_1E73B4280;
  v11 = v4;
  v7 = v4;
  v8 = [(AMSMutablePromise *)v5 thenWithBlock:v10];

  return v8;
}

id __71__AMSBagActiveAccountProvider_bagStorefrontPromiseForAccountMediaType___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [AMSBagActiveAccountProvider _storefrontPromiseResultForAccountMediaType:*(a1 + 32) account:a2];
  v3 = [AMSPromise promiseWithPromiseResult:v2];

  return v3;
}

+ (id)_storefrontPromiseResultForAccountMediaType:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = [a4 ams_storefrontForMediaType:v5];
  if (v6)
  {
    v7 = [[AMSPromiseResult alloc] initWithResult:v6 error:0];
  }

  else
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Account has no storefront for mediatype %@", v5];
    v9 = AMSError(7, @"No storefront found", v8, 0);
    v7 = [[AMSPromiseResult alloc] initWithResult:0 error:v9];
  }

  return v7;
}

- (void)_bagAccountForAccountMediaType:(id)a3 mustContainStorefront:(BOOL)a4 sync:(BOOL)a5 completion:(id)a6
{
  v8 = a5;
  v9 = a4;
  v45 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a6;
  if (!v11)
  {
    v13 = +[AMSLogConfig sharedBagConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v39 = v8;
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
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@No media type was provided. The default will be used instead.", buf, 0xCu);
      v8 = v39;
      if (v15)
      {

        v19 = v6;
      }
    }
  }

  v20 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:v11];
  v21 = [(AMSBagActiveAccountProvider *)self _activeAccountInStore:v20 forMediaType:v11];
  v22 = v21;
  if (v21)
  {
    v23 = !v9;
  }

  else
  {
    v23 = 1;
  }

  if (!v23)
  {
    v30 = [v21 ams_storefrontForMediaType:v11];

    if (v30)
    {
      goto LABEL_24;
    }

    v24 = +[AMSLogConfig sharedBagConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
LABEL_37:

      [(AMSBagActiveAccountProvider *)self _localAccountInStore:v20 mediaType:v11 mustContainStorefront:v9 sync:v8 completion:v12];
      goto LABEL_38;
    }

    v40 = v8;
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
    v44 = v11;
    v34 = "%{public}@There’s an active account, but a required storefront is missing. Falling back to the local account. mediaType = %{public}@";
LABEL_34:
    _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_DEBUG, v34, buf, 0x16u);
    v8 = v40;
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

    v25 = [v24 OSLogObject];
    if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_37;
    }

    v40 = v8;
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
    v44 = v11;
    v34 = "%{public}@There’s no active account. Falling back to the local account. mediaType = %{public}@";
    goto LABEL_34;
  }

LABEL_24:
  v12[2](v12, v22, 0);
LABEL_38:
}

- (id)_activeAccountInStore:(id)a3 forMediaType:(id)a4
{
  v5 = a4;
  v6 = [a3 ams_iTunesAccounts];
  if (v6)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __66__AMSBagActiveAccountProvider__activeAccountInStore_forMediaType___block_invoke;
    v9[3] = &unk_1E73B42A8;
    v10 = v5;
    v7 = [v6 ams_firstObjectPassingTest:v9];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_localAccountInStore:(id)a3 mediaType:(id)a4 mustContainStorefront:(BOOL)a5 sync:(BOOL)a6 completion:(id)a7
{
  v8 = a6;
  v12 = a4;
  v13 = a7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __100__AMSBagActiveAccountProvider__localAccountInStore_mediaType_mustContainStorefront_sync_completion___block_invoke;
  aBlock[3] = &unk_1E73B42D0;
  aBlock[4] = self;
  v25 = a5;
  v14 = v12;
  v23 = v14;
  v15 = v13;
  v24 = v15;
  v16 = a3;
  v17 = _Block_copy(aBlock);
  v18 = [v16 ams_mediaType];
  if (v8)
  {
    v21 = 0;
    v19 = [v16 ams_localiTunesAccountForAccountMediaType:v18 error:&v21];

    v20 = v21;
    v17[2](v17, v19, v20);
    v18 = v19;
  }

  else
  {
    v20 = [v16 _ams_localiTunesAccountForAccountMediaType:v18 updateStorefront:0];

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

- (id)_handleFetchedLocalAccount:(id)a3 fetchError:(id)a4 mustContainStorefront:(BOOL)a5 mediaType:(id)a6 error:(id *)a7
{
  v9 = a5;
  v41 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a6;
  if (v12)
  {
    if (!v9 || ([v12 ams_storefrontForMediaType:v14], v15 = objc_claimAutoreleasedReturnValue(), v15, v15))
    {
      v16 = v12;
      goto LABEL_29;
    }

    v24 = +[AMSLogConfig sharedBagConfig];
    if (!v24)
    {
      v24 = +[AMSLogConfig sharedConfig];
    }

    v25 = [v24 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
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
      v30 = ;
      v33 = AMSHashIfNeeded(v12);
      *buf = 138543874;
      v36 = v30;
      v37 = 2114;
      v38 = v33;
      v39 = 2114;
      v40 = v14;
      _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@The local account doesn’t have a storefront. localAccount = %{public}@ | mediaType = %{public}@", buf, 0x20u);
      if (v26)
      {

        v30 = self;
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

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
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
      v23 = ;
      *buf = 138543618;
      v36 = v23;
      v37 = 2114;
      v38 = v14;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to fetch local account. This will prevent initial bag requests from specifying storefront / cookies. mediaType = %{public}@", buf, 0x16u);
      if (v19)
      {

        v23 = self;
      }
    }

    if (a7)
    {
      v31 = @"Local account not found";
      v32 = v13;
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