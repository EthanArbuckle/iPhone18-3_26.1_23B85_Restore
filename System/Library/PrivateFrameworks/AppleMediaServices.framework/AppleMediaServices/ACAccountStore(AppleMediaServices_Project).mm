@interface ACAccountStore(AppleMediaServices_Project)
+ (id)_ams_newAccountStore;
+ (id)ams_sharedAccountStoreForProcessInfo:()AppleMediaServices_Project;
- (AMSMutableBinaryPromise)ams_saveAccount:()AppleMediaServices_Project withOptions:;
- (BOOL)ams_isAccountNew:()AppleMediaServices_Project;
- (id)_ams_localiTunesAccount;
- (id)_ams_localiTunesAccountForAccountMediaType:()AppleMediaServices_Project updateStorefront:;
- (id)_ams_localiTunesAccountForAccountType:()AppleMediaServices_Project shouldUpdateStorefront:;
- (id)ams_accountIsBackingAccountForActiveiCloudAccount:()AppleMediaServices_Project;
- (id)ams_demoAccount;
- (id)ams_fetchDemoAccount;
- (id)ams_iTunesAccountsForMediaTypes:()AppleMediaServices_Project classification:;
- (id)ams_localiTunesAccountForAccountMediaType:()AppleMediaServices_Project error:;
- (id)ams_localiTunesAccountForAccountType:()AppleMediaServices_Project error:;
- (id)ams_regulatoryAccount;
- (uint64_t)ams_saveVerifiedAccount:()AppleMediaServices_Project withOptions:error:;
- (void)_ams_saveAccount:()AppleMediaServices_Project withOptions:sync:completion:;
@end

@implementation ACAccountStore(AppleMediaServices_Project)

- (id)_ams_localiTunesAccount
{
  selfCopy = self;
  v19 = *MEMORY[0x1E69E9840];
  ams_mediaType = [self ams_mediaType];
  v14 = 0;
  v3 = [selfCopy ams_localiTunesAccountForAccountMediaType:ams_mediaType error:&v14];
  v4 = v14;

  if (!v3)
  {
    v5 = +[AMSLogConfig sharedAccountsConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v5 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v7 = AMSLogKey();
      v8 = MEMORY[0x1E696AEC0];
      v9 = objc_opt_class();
      v10 = v9;
      if (v7)
      {
        selfCopy = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, selfCopy];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      v11 = ;
      v12 = AMSLogableError(v4);
      *buf = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to create/fetch the local account. error = %{public}@", buf, 0x16u);
      if (v7)
      {

        v11 = selfCopy;
      }
    }
  }

  return v3;
}

+ (id)ams_sharedAccountStoreForProcessInfo:()AppleMediaServices_Project
{
  accountMediaType = [a3 accountMediaType];
  v5 = [self ams_sharedAccountStoreForMediaType:accountMediaType];

  return v5;
}

- (id)ams_accountIsBackingAccountForActiveiCloudAccount:()AppleMediaServices_Project
{
  v4 = a3;
  if ([v4 ams_isiTunesAccount])
  {
    ams_fetchActiveiCloudAccount = [self ams_fetchActiveiCloudAccount];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __96__ACAccountStore_AppleMediaServices_Project__ams_accountIsBackingAccountForActiveiCloudAccount___block_invoke;
    v8[3] = &unk_1E73B3140;
    v9 = v4;
    v6 = [ams_fetchActiveiCloudAccount continueWithBlock:v8];
  }

  else
  {
    ams_fetchActiveiCloudAccount = AMSError(2, @"Invalid Account", @"This method is only available for iTunes accounts", 0);
    v6 = [AMSPromise promiseWithError:ams_fetchActiveiCloudAccount];
  }

  return v6;
}

- (id)ams_localiTunesAccountForAccountMediaType:()AppleMediaServices_Project error:
{
  v6 = a3;
  v7 = [objc_opt_class() ams_accountTypeIdentifierForMediaType:v6];

  v8 = AMSAccountTypeWithAccountTypeIdentifier(self, v7, 0);
  v9 = [self ams_localiTunesAccountForAccountType:v8 error:a4];

  return v9;
}

- (id)_ams_localiTunesAccountForAccountMediaType:()AppleMediaServices_Project updateStorefront:
{
  v6 = [self _accountTypeForMediaType:?];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __106__ACAccountStore_AppleMediaServices_Project___ams_localiTunesAccountForAccountMediaType_updateStorefront___block_invoke;
  v9[3] = &unk_1E73B31E0;
  v9[4] = self;
  v10 = a4;
  v7 = [v6 thenWithBlock:v9];

  return v7;
}

- (id)ams_demoAccount
{
  ams_iTunesAccounts = [self ams_iTunesAccounts];
  v2 = [ams_iTunesAccounts ams_firstObjectPassingTest:&__block_literal_global_266];

  return v2;
}

- (id)ams_fetchDemoAccount
{
  ams_fetchiTunesAccounts = [self ams_fetchiTunesAccounts];
  v2 = [ams_fetchiTunesAccounts thenWithBlock:&__block_literal_global_268];

  return v2;
}

- (id)ams_regulatoryAccount
{
  ams_iTunesAccounts = [self ams_iTunesAccounts];
  v2 = [ams_iTunesAccounts ams_firstObjectPassingTest:&__block_literal_global_273];

  return v2;
}

- (BOOL)ams_isAccountNew:()AppleMediaServices_Project
{
  identifier = [a3 identifier];
  v5 = [self _ams_accountWithIdentifier:identifier error:0];
  v6 = v5 == 0;

  return v6;
}

- (AMSMutableBinaryPromise)ams_saveAccount:()AppleMediaServices_Project withOptions:
{
  v6 = a3;
  v7 = objc_alloc_init(AMSMutableBinaryPromise);
  completionHandlerAdapter = [(AMSBinaryPromise *)v7 completionHandlerAdapter];
  [self _ams_saveAccount:v6 withOptions:a4 sync:0 completion:completionHandlerAdapter];

  return v7;
}

- (uint64_t)ams_saveVerifiedAccount:()AppleMediaServices_Project withOptions:error:
{
  v8 = a3;
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__0;
  v16 = __Block_byref_object_dispose__0;
  v17 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __88__ACAccountStore_AppleMediaServices_Project__ams_saveVerifiedAccount_withOptions_error___block_invoke;
  v11[3] = &unk_1E73B3228;
  v11[4] = &v18;
  v11[5] = &v12;
  [self _ams_saveAccount:v8 withOptions:a4 sync:1 completion:v11];
  v9 = *(v19 + 24);
  if (a5 && (v19[3] & 1) == 0)
  {
    *a5 = v13[5];
    v9 = *(v19 + 24);
  }

  _Block_object_dispose(&v12, 8);

  _Block_object_dispose(&v18, 8);
  return v9 & 1;
}

- (id)ams_localiTunesAccountForAccountType:()AppleMediaServices_Project error:
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v35 = 0;
  v7 = [self _fetchLocalAccountForAccountType:v6 error:&v35];
  v8 = v35;
  v9 = v8;
  if (!v7)
  {
    if ([v8 ams_hasDomain:@"AMSErrorDomain" code:7])
    {
      v34 = 0;
      v10 = [self _createLocaliTunesAccountForAccountType:v6 error:&v34];
      v11 = v34;
      v12 = v11;
      if (v10)
      {
        v33 = v9;
        v7 = [self _fetchLocalAccountForAccountType:v6 error:&v33];
        v13 = v33;

        if (v7)
        {
LABEL_5:
          v9 = v13;
LABEL_33:

          goto LABEL_34;
        }

        v21 = +[AMSLogConfig sharedAccountsConfig];
        if (!v21)
        {
          v21 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject = [v21 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
        {
          v23 = AMSLogKey();
          v24 = MEMORY[0x1E696AEC0];
          v25 = objc_opt_class();
          v26 = v25;
          if (v23)
          {
            self = AMSLogKey();
            [v24 stringWithFormat:@"%@: [%@] ", v26, self];
          }

          else
          {
            [v24 stringWithFormat:@"%@: ", v25];
          }
          selfCopy = ;
          v30 = AMSLogableError(v13);
          *buf = 138543618;
          v37 = selfCopy;
          v38 = 2114;
          v39 = v30;
          _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Encountered an unexpected error while fetching local account: %{public}@", buf, 0x16u);
          if (v23)
          {

            selfCopy = self;
          }
        }

        if (!a4)
        {
          v7 = 0;
          goto LABEL_5;
        }

        v9 = v13;
      }

      else
      {
        if (!a4)
        {
          v7 = 0;
          goto LABEL_33;
        }

        v13 = v11;
      }

      v31 = v13;
      v7 = 0;
      *a4 = v13;
      goto LABEL_33;
    }

    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        self = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, self];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      selfCopy2 = ;
      v28 = AMSLogableError(v9);
      *buf = 138543618;
      v37 = selfCopy2;
      v38 = 2114;
      v39 = v28;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@Encountered an unexpected error while fetching local account: %{public}@", buf, 0x16u);
      if (v16)
      {

        selfCopy2 = self;
      }
    }

    if (a4)
    {
      v29 = v9;
      v7 = 0;
      *a4 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

LABEL_34:

  return v7;
}

- (id)_ams_localiTunesAccountForAccountType:()AppleMediaServices_Project shouldUpdateStorefront:
{
  v6 = a3;
  v7 = [self _fetchLocaliTunesAccountForAccountType:v6 shouldUpdateStorefront:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __107__ACAccountStore_AppleMediaServices_Project___ams_localiTunesAccountForAccountType_shouldUpdateStorefront___block_invoke;
  v11[3] = &unk_1E73B3278;
  v11[4] = self;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 catchWithBlock:v11];

  return v9;
}

- (void)_ams_saveAccount:()AppleMediaServices_Project withOptions:sync:completion:
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a6;
  if ((a4 & 2) != 0 && a5)
  {
    v12 = @"Failed to save account";
    v13 = @"Cannot synchronously save an account with verification";
LABEL_24:
    v26 = 2;
LABEL_25:
    v32 = AMSError(v26, v12, v13, 0);
    v11[2](v11, 0, v32);
    goto LABEL_26;
  }

  if (!v10)
  {
    v27 = +[AMSLogConfig sharedAccountsConfig];
    if (!v27)
    {
      v27 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v27 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v29 = objc_opt_class();
      v30 = AMSLogKey();
      v31 = AMSHashIfNeeded(0);
      *buf = 138543874;
      v46 = v29;
      v47 = 2114;
      v48 = v30;
      v49 = 2114;
      v50 = v31;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Someone is attempting to save a nil account. account = %{public}@", buf, 0x20u);
    }

    v12 = @"Saving Nil Account";
    v13 = @"You cannot save a nil account.";
    goto LABEL_24;
  }

  if ([v10 ams_isEphemeralAccount])
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      v18 = AMSHashIfNeeded(v10);
      *buf = 138543874;
      v46 = v16;
      v47 = 2114;
      v48 = v17;
      v49 = 2114;
      v50 = v18;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Someone is attempting to save an ephemeral account. account = %{public}@", buf, 0x20u);
    }

    v19 = AMSError(2, @"Saving Ephemeral Account", @"You cannot save an ephemeral account.", 0);
    v11[2](v11, 0, v19);
  }

  if ([self ams_isAccountNew:v10])
  {
    ams_isLocalAccount = [v10 ams_isLocalAccount];
    if ((a4 & 1) == 0 && (ams_isLocalAccount & 1) == 0)
    {
      v21 = +[AMSLogConfig sharedAccountsConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        v25 = AMSHashIfNeeded(v10);
        *buf = 138543874;
        v46 = v23;
        v47 = 2114;
        v48 = v24;
        v49 = 2114;
        v50 = v25;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@ [%{public}@] Someone is attempting to save a new account instead of using AMSAuthenticateTask. account = %{public}@", buf, 0x20u);
      }

      v12 = @"Saving New Account";
      v13 = @"Use AMSAuthenticateTask to add a new account to the system.";
      v26 = 105;
      goto LABEL_25;
    }

    if ((ams_isLocalAccount & 1) == 0)
    {
      v33 = +[AMSLogConfig sharedAccountsConfig];
      if (!v33)
      {
        v33 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v33 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v35 = objc_opt_class();
        v36 = AMSLogKey();
        *buf = 138543874;
        v46 = v35;
        v47 = 2114;
        v48 = v36;
        v49 = 2048;
        v50 = a4;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Saving a new account. options = %ld", buf, 0x20u);
      }
    }
  }

  if (([v10 isDirty] & 1) == 0)
  {
    v39 = +[AMSLogConfig sharedAccountsConfig];
    if (!v39)
    {
      v39 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject5 = [v39 OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEBUG))
    {
      v41 = objc_opt_class();
      v42 = AMSLogKey();
      v43 = AMSHashIfNeeded(v10);
      *buf = 138543874;
      v46 = v41;
      v47 = 2114;
      v48 = v42;
      v49 = 2114;
      v50 = v43;
      _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEBUG, "%{public}@ [%{public}@] Someone attempted to save an unmodified account. account = %{public}@", buf, 0x20u);
    }

    v12 = @"Saving Unmodified Account";
    v13 = @"You attempted to save an unmodified account.";
    v26 = 102;
    goto LABEL_25;
  }

  if (a5)
  {
    v44 = 0;
    v37 = [self _saveVerifiedAccount:v10 error:&v44];
    v38 = v44;
    v11[2](v11, v37, v38);

    goto LABEL_27;
  }

  v32 = [self _saveAccount:v10 verifyCredentials:(a4 >> 1) & 1];
  [v32 addFinishBlock:v11];
LABEL_26:

LABEL_27:
}

- (id)ams_iTunesAccountsForMediaTypes:()AppleMediaServices_Project classification:
{
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __93__ACAccountStore_AppleMediaServices_Project__ams_iTunesAccountsForMediaTypes_classification___block_invoke;
  v13[3] = &unk_1E73B32A0;
  v13[4] = self;
  v6 = [a3 ams_mapWithTransform:v13];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __93__ACAccountStore_AppleMediaServices_Project__ams_iTunesAccountsForMediaTypes_classification___block_invoke_2;
  v12[3] = &unk_1E73B32C8;
  v12[4] = self;
  v12[5] = a4;
  v7 = [v6 ams_mapWithTransform:v12];
  allObjects = [v7 allObjects];
  v9 = [AMSPromise promiseWithAll:allObjects];
  v10 = [v9 thenWithBlock:&__block_literal_global_307];

  return v10;
}

+ (id)_ams_newAccountStore
{
  v0 = objc_alloc_init(MEMORY[0x1E6959A48]);

  return v0;
}

@end