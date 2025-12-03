@interface ACAccountStore(AppleMediaServices)
+ (id)_multiUserTokenForIdentifier:()AppleMediaServices;
+ (id)ams_sharedAccountStoreForClient:()AppleMediaServices;
+ (id)ams_sharedAccountStoreForMediaType:()AppleMediaServices;
+ (uint64_t)ams_shieldSignInOrCreateFlows;
- (AMSBinaryPromise)ams_setiTunesAccount:()AppleMediaServices forHomeWithIdentifier:;
- (AMSMutableBinaryPromise)_createLocaliTunesAccountForAccountType:()AppleMediaServices;
- (AMSMutablePromise)ams_fetchActiveiCloudAccount;
- (AMSPromise)ams_mediaAccountForHomeWithIdentifier:()AppleMediaServices;
- (BOOL)_createLocaliTunesAccountForAccountType:()AppleMediaServices error:;
- (id)_accountTypeForMediaType:()AppleMediaServices;
- (id)_addGlobalCookiesForResponse:()AppleMediaServices;
- (id)_addUserCookiesForResponse:()AppleMediaServices account:;
- (id)_correspondingAccountWithAccountTypeIdentifier:()AppleMediaServices forAccount:;
- (id)_fetchLocalAccountForAccountType:()AppleMediaServices error:;
- (id)_fetchLocaliTunesAccountForAccountType:()AppleMediaServices shouldUpdateStorefront:;
- (id)_updateStorefrontInLocalAccount:()AppleMediaServices;
- (id)ams_accountWithAltDSID:()AppleMediaServices DSID:username:accountTypeIdentifier:;
- (id)ams_activeiTunesAccount;
- (id)ams_activeiTunesAccountForMediaType:()AppleMediaServices;
- (id)ams_addCookiesForResponse:()AppleMediaServices account:;
- (id)ams_addCookiesForResult:()AppleMediaServices account:;
- (id)ams_cookiesForURL:()AppleMediaServices;
- (id)ams_cookiesForURL:()AppleMediaServices bag:;
- (id)ams_fetchGrandSlamTokenForAccount:()AppleMediaServices withIdentifier:;
- (id)ams_fetchGrandSlamTokenForAccount:()AppleMediaServices withIdentifier:error:;
- (id)ams_fetchLocaliTunesAccount;
- (id)ams_iTunesAccountForAccount:()AppleMediaServices forMediaType:createIfNeeded:;
- (id)ams_iTunesAccountForHomeWithIdentifier:()AppleMediaServices error:;
- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices;
- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices DSID:username:;
- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices DSID:username:classification:forMediaType:;
- (id)ams_iTunesAccountWithDSID:()AppleMediaServices;
- (id)ams_iTunesAccountWithDSID:()AppleMediaServices forMediaType:;
- (id)ams_iTunesAccountWithHomeUserID:()AppleMediaServices;
- (id)ams_iTunesAccountWithUsername:()AppleMediaServices;
- (id)ams_iTunesAccountWithUsername:()AppleMediaServices forMediaType:;
- (id)ams_iTunesSandboxAccounts;
- (id)ams_localiTunesAccount;
- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices account:error:;
- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices request:account:error:;
- (uint64_t)ams_addCookiesForResult:()AppleMediaServices account:error:;
- (uint64_t)ams_removeCookiesMatchingProperties:()AppleMediaServices error:;
- (uint64_t)ams_saveAccount:()AppleMediaServices verifyCredentials:;
- (void)ams_iTunesAccounts;
- (void)ams_isActiveAccountCombined;
@end

@implementation ACAccountStore(AppleMediaServices)

- (id)ams_activeiTunesAccount
{
  ams_mediaType = [self ams_mediaType];
  if ([ams_mediaType isEqualToString:AMSAccountMediaTypeAppStoreBeta])
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

    ams_altDSID = [ams_activeiTunesAccount ams_altDSID];
    ams_DSID = [ams_activeiTunesAccount ams_DSID];
    username = [ams_activeiTunesAccount username];
    v8 = [self ams_iTunesAccountWithAltDSID:ams_altDSID DSID:ams_DSID username:username];
  }

  else
  {
    ams_iTunesAccounts = [self ams_iTunesAccounts];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __61__ACAccountStore_AppleMediaServices__ams_activeiTunesAccount__block_invoke;
    v11[3] = &unk_1E73B2FB0;
    v12 = ams_mediaType;
    v8 = [ams_iTunesAccounts ams_firstObjectPassingTest:v11];
  }

  return v8;
}

- (void)ams_iTunesAccounts
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  ams_mediaType = [self ams_mediaType];
  v4 = [v2 ams_accountTypeIdentifierForMediaType:ams_mediaType];

  v15 = 0;
  v5 = [self _ams_accountsWithAccountTypeIdentifier:v4 options:1 classification:1 error:&v15];
  v6 = v15;
  v7 = v5;
  if (!v5)
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v8 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogableError(v6);
      *buf = 138543618;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch the iTunes accounts. error = %{public}@", buf, 0x16u);
    }

    v7 = MEMORY[0x1E695E0F0];
  }

  v13 = v7;

  return v7;
}

- (id)ams_fetchLocaliTunesAccount
{
  ams_mediaType = [self ams_mediaType];
  v3 = [self ams_localiTunesAccountForAccountMediaType:ams_mediaType];

  return v3;
}

+ (uint64_t)ams_shieldSignInOrCreateFlows
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v14 = 0;
  v3 = [v2 shieldSignInOrCreateFlowsWithError:&v14];
  v4 = v14;

  if (v4)
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
        self = AMSLogKey();
        [v8 stringWithFormat:@"%@: [%@] ", v10, self];
      }

      else
      {
        [v8 stringWithFormat:@"%@: ", v9];
      }
      selfCopy = ;
      v12 = AMSLogableError(v4);
      *buf = 138543618;
      v16 = selfCopy;
      v17 = 2114;
      v18 = v12;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine if we should shield sign-in or create flows. Error: %{public}@", buf, 0x16u);
      if (v7)
      {

        selfCopy = self;
      }
    }
  }

  return v3;
}

- (id)ams_localiTunesAccount
{
  v36 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  ams_mediaType = [self ams_mediaType];
  v4 = [v2 ams_accountTypeIdentifierForMediaType:ams_mediaType];

  if (v4)
  {
    v29 = 0;
    oSLogObject3 = [self _ams_accountsWithAccountTypeIdentifier:v4 options:1 classification:0 error:&v29];
    v6 = v29;
    if (oSLogObject3)
    {
      v7 = [oSLogObject3 ams_firstObjectPassingTest:&__block_literal_global_0];
      if (v7)
      {
        v8 = v7;
        v9 = v8;
      }

      else
      {
        ams_mediaType2 = [self ams_mediaType];
        v19 = [self ams_localiTunesAccountForAccountMediaType:ams_mediaType2];
        v28 = v6;
        v20 = [v19 resultWithError:&v28];
        v21 = v28;

        if (!v20)
        {
          v22 = +[AMSLogConfig sharedAccountsConfig];
          if (!v22)
          {
            v22 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v22 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v24 = objc_opt_class();
            v25 = AMSLogKey();
            v26 = AMSLogableError(v21);
            *buf = 138543874;
            v31 = v24;
            v32 = 2114;
            v33 = v25;
            v34 = 2114;
            v35 = v26;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create/fetch the local account. error = %{public}@", buf, 0x20u);
          }
        }

        v8 = v20;
        v9 = v8;
        v6 = v21;
      }

      v13 = v8;
    }

    else
    {
      v9 = +[AMSLogConfig sharedAccountsConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v9 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
      {
        v15 = objc_opt_class();
        v16 = AMSLogKey();
        v17 = AMSLogableError(v6);
        *buf = 138543874;
        v31 = v15;
        v32 = 2114;
        v33 = v16;
        v34 = 2114;
        v35 = v17;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create/fetch the local account. error = %{public}@", buf, 0x20u);
      }

      v13 = 0;
    }
  }

  else
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      ams_mediaType3 = [self ams_mediaType];
      *buf = 138543874;
      v31 = v10;
      v32 = 2114;
      v33 = v11;
      v34 = 2114;
      v35 = ams_mediaType3;
      _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create/fetch the local account. Invalid media type. mediaType = %{public}@", buf, 0x20u);
    }

    v13 = 0;
  }

  return v13;
}

- (void)ams_isActiveAccountCombined
{
  ams_activeiCloudAccount = [self ams_activeiCloudAccount];
  ams_activeiTunesAccount = [self ams_activeiTunesAccount];
  ams_DSID = [ams_activeiCloudAccount ams_DSID];
  if (ams_DSID)
  {
    ams_DSID2 = [ams_activeiTunesAccount ams_DSID];

    if (ams_DSID2)
    {
      ams_DSID3 = [ams_activeiCloudAccount ams_DSID];
      ams_DSID4 = [ams_activeiTunesAccount ams_DSID];
      ams_DSID = [ams_DSID3 isEqualToNumber:ams_DSID4];
    }

    else
    {
      ams_DSID = 0;
    }
  }

  return ams_DSID;
}

+ (id)ams_sharedAccountStoreForClient:()AppleMediaServices
{
  accountMediaType = [a3 accountMediaType];
  v5 = [self ams_sharedAccountStoreForMediaType:accountMediaType];

  return v5;
}

+ (id)ams_sharedAccountStoreForMediaType:()AppleMediaServices
{
  v4 = a3;
  if (!v4)
  {
    v4 = +[AMSProcessInfo defaultMediaTypeForCurrentProcess];
  }

  if ([v4 isEqualToString:AMSAccountMediaTypeAppStoreBeta] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", AMSAccountMediaTypeAppStoreSandbox))
  {
    if (v4)
    {
      _ams_defaultAccountStore = [AMSAccountStoreCache accountStoreForMediaType:v4];

      goto LABEL_9;
    }
  }

  else
  {
  }

  _ams_defaultAccountStore = [self _ams_defaultAccountStore];
LABEL_9:

  return _ams_defaultAccountStore;
}

- (id)ams_accountWithAltDSID:()AppleMediaServices DSID:username:accountTypeIdentifier:
{
  v35 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v26 = 0;
  v13 = [self _ams_accountsWithAccountTypeIdentifier:a6 options:1 classification:0 error:&v26];
  v14 = v26;
  if (v13)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __97__ACAccountStore_AppleMediaServices__ams_accountWithAltDSID_DSID_username_accountTypeIdentifier___block_invoke;
    v22[3] = &unk_1E73B2FD8;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v15 = [v13 ams_firstObjectPassingTest:v22];

    v16 = v23;
  }

  else
  {
    v16 = +[AMSLogConfig sharedAccountsConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      v20 = AMSLogableError(v14);
      *buf = 138544130;
      v28 = v18;
      v29 = 2114;
      v30 = v19;
      v31 = 2114;
      v32 = v11;
      v33 = 2114;
      v34 = v20;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch account with DSID %{public}@: %{public}@", buf, 0x2Au);
    }

    v15 = 0;
  }

  return v15;
}

- (id)ams_activeiTunesAccountForMediaType:()AppleMediaServices
{
  v4 = a3;
  if ([v4 isEqualToString:AMSAccountMediaTypeAppStoreBeta])
  {
    ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v6 = [ams_sharedAccountStore ams_activeiTunesAccountForMediaType:AMSAccountMediaTypeProduction];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __74__ACAccountStore_AppleMediaServices__ams_activeiTunesAccountForMediaType___block_invoke;
    v12[3] = &unk_1E73B3000;
    v12[4] = self;
    v13 = v4;
    v7 = v4;
    v8 = [v6 thenWithBlock:v12];
  }

  else
  {
    v6 = [self ams_iTunesAccountsForMediaType:v4];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __74__ACAccountStore_AppleMediaServices__ams_activeiTunesAccountForMediaType___block_invoke_2;
    v10[3] = &unk_1E73B3028;
    v11 = v4;
    ams_sharedAccountStore = v4;
    v8 = [v6 thenWithBlock:v10];
    v7 = v11;
  }

  return v8;
}

- (AMSMutablePromise)ams_fetchActiveiCloudAccount
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    if (v7)
    {
      v10 = AMSLogKey();
      v2 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: [%@] %@ ", v9, v10, v2];
    }

    else
    {
      v10 = NSStringFromSelector(a2);
      [v8 stringWithFormat:@"%@: %@ ", v9, v10];
    }
    v11 = ;
    *buf = 138543362;
    v21 = v11;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Fetching active iCloud account", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  v12 = objc_alloc_init(AMSMutablePromise);
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __66__ACAccountStore_AppleMediaServices__ams_fetchActiveiCloudAccount__block_invoke;
  v17[3] = &unk_1E73B3050;
  v17[4] = self;
  v19 = a2;
  v13 = v12;
  v18 = v13;
  [self aa_primaryAppleAccountWithCompletion:v17];
  v14 = v18;
  v15 = v13;

  return v13;
}

- (id)ams_fetchGrandSlamTokenForAccount:()AppleMediaServices withIdentifier:error:
{
  v6 = [self ams_fetchGrandSlamTokenForAccount:? withIdentifier:?];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (id)ams_fetchGrandSlamTokenForAccount:()AppleMediaServices withIdentifier:
{
  v6 = a3;
  v7 = a4;
  v8 = v6;
  ams_altDSID = [v8 ams_altDSID];
  v10 = [self aida_accountForAltDSID:ams_altDSID];

  if (!v10)
  {
    v15 = AMSHashIfNeeded(v8);
    v22 = AMSErrorWithFormat(7, @"AIDA Account Missing", @"There's no AIDA account matching %@.", v17, v18, v19, v20, v21, v15);
    v23 = [AMSPromise promiseWithError:v22];

    goto LABEL_9;
  }

  v11 = objc_autoreleasePoolPush();
  v32 = 0;
  v12 = [self credentialForAccount:v10 serviceID:v7 error:&v32];
  v13 = v32;
  token = [v12 token];
  v15 = [token copy];

  objc_autoreleasePoolPop(v11);
  if (v13)
  {
    v16 = [AMSPromise promiseWithError:v13];
  }

  else
  {
    if (!v15)
    {
      v31 = AMSHashIfNeeded(v8);
      v30 = AMSErrorWithFormat(7, @"GrandSlam Token Missing", @"There's no GrandSlam token (%@) for %@.", v25, v26, v27, v28, v29, v7);
      v23 = [AMSPromise promiseWithError:v30];

      goto LABEL_8;
    }

    v16 = [AMSPromise promiseWithResult:v15];
  }

  v23 = v16;
LABEL_8:

LABEL_9:

  return v23;
}

- (id)ams_cookiesForURL:()AppleMediaServices
{
  v3 = [self ams_cookiesForURL:a3 bag:0];
  v4 = [v3 resultWithError:0];

  return v4;
}

- (id)ams_cookiesForURL:()AppleMediaServices bag:
{
  v6 = a3;
  v7 = a4;
  ams_fetchLocaliTunesAccount = [self ams_fetchLocaliTunesAccount];
  ams_mediaType = [self ams_mediaType];
  v10 = [self ams_activeiTunesAccountForMediaType:ams_mediaType];

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__ACAccountStore_AppleMediaServices__ams_cookiesForURL_bag___block_invoke;
  aBlock[3] = &unk_1E73B3000;
  v22 = v6;
  v23 = v7;
  v11 = v7;
  v12 = v6;
  v13 = _Block_copy(aBlock);
  v14 = [ams_fetchLocaliTunesAccount thenWithBlock:v13];
  v15 = [v10 thenWithBlock:v13];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __60__ACAccountStore_AppleMediaServices__ams_cookiesForURL_bag___block_invoke_2;
  v19[3] = &unk_1E73B3028;
  v20 = v15;
  v16 = v15;
  v17 = [v14 thenWithBlock:v19];

  return v17;
}

- (id)ams_iTunesAccountForAccount:()AppleMediaServices forMediaType:createIfNeeded:
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = +[AMSLogConfig sharedAccountsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v10 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v5 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v5];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    v17 = AMSHashIfNeeded(v8);
    v18 = AMSHashIfNeeded(v9);
    v19 = v18;
    v20 = @"false";
    *buf = 138544130;
    v39 = v16;
    if (a5)
    {
      v20 = @"true";
    }

    v40 = 2114;
    v41 = v17;
    v42 = 2114;
    v43 = v18;
    v44 = 2114;
    v45 = v20;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@Searching for iTunes account for account: %{public}@ | mediaType = %{public}@ | createIfNeeded = %{public}@", buf, 0x2Au);
    if (v12)
    {

      v16 = v5;
    }
  }

  if ([v8 ams_isiTunesAccount])
  {
    v21 = +[AMSLogConfig sharedAccountsConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
      v33 = AMSHashIfNeeded(v8);
      *buf = 138543618;
      v39 = selfCopy;
      v40 = 2114;
      v41 = v33;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@The account is already an iTunes account, returning. account = %{public}@", buf, 0x16u);
      if (v23)
      {

        selfCopy = self;
      }
    }

    v32 = [AMSPromise promiseWithResult:v8];
  }

  else
  {
    ams_altDSID = [v8 ams_altDSID];
    ams_DSID = [v8 ams_DSID];
    username = [v8 username];
    v31 = [self ams_iTunesAccountWithAltDSID:ams_altDSID DSID:ams_DSID username:username forMediaType:v9];

    if (a5)
    {
      v36[0] = MEMORY[0x1E69E9820];
      v36[1] = 3221225472;
      v36[2] = __94__ACAccountStore_AppleMediaServices__ams_iTunesAccountForAccount_forMediaType_createIfNeeded___block_invoke;
      v36[3] = &unk_1E73B30C8;
      v36[4] = self;
      v37 = v8;
      v32 = [v31 catchWithBlock:v36];
    }

    else
    {
      v32 = v31;
    }
  }

  return v32;
}

- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  ams_mediaType = [self ams_mediaType];
  v7 = [v5 ams_accountTypeIdentifierForMediaType:ams_mediaType];

  v20 = 0;
  v8 = [self _ams_accountsWithAccountTypeIdentifier:v7 options:1 classification:0 error:&v20];
  v9 = v20;
  if (!v8)
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSLogableError(v9);
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch the iTunes accounts. error = %{public}@", buf, 0x16u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __67__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithAltDSID___block_invoke;
  v18[3] = &unk_1E73B2FB0;
  v19 = v4;
  v15 = v4;
  v16 = [v8 ams_firstObjectPassingTest:v18];

  return v16;
}

- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices DSID:username:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (v8)
  {
    v11 = [self ams_iTunesAccountWithAltDSID:v8];
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  if (!v11)
  {
    v11 = [self ams_iTunesAccountWithDSID:v9];
  }

LABEL_7:
  if (v10 && !v11)
  {
    v11 = [self ams_iTunesAccountWithUsername:v10];
  }

  return v11;
}

- (id)ams_iTunesAccountWithAltDSID:()AppleMediaServices DSID:username:classification:forMediaType:
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [self ams_iTunesAccountsForMediaType:a7 classification:a6];
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __109__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithAltDSID_DSID_username_classification_forMediaType___block_invoke;
  v21[3] = &unk_1E73B30F0;
  v22 = v12;
  v23 = v13;
  v24 = v14;
  v16 = v14;
  v17 = v13;
  v18 = v12;
  v19 = [v15 thenWithBlock:v21];

  return v19;
}

- (id)ams_iTunesAccountWithDSID:()AppleMediaServices
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_class();
  ams_mediaType = [self ams_mediaType];
  v7 = [v5 ams_accountTypeIdentifierForMediaType:ams_mediaType];

  v20 = 0;
  v8 = [self _ams_accountsWithAccountTypeIdentifier:v7 options:1 classification:0 error:&v20];
  v9 = v20;
  if (!v8)
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSLogableError(v9);
      *buf = 138543618;
      v22 = v12;
      v23 = 2114;
      v24 = v14;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch the iTunes accounts. error = %{public}@", buf, 0x16u);
    }
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __64__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithDSID___block_invoke;
  v18[3] = &unk_1E73B2FB0;
  v19 = v4;
  v15 = v4;
  v16 = [v8 ams_firstObjectPassingTest:v18];

  return v16;
}

- (id)ams_iTunesAccountWithDSID:()AppleMediaServices forMediaType:
{
  v6 = a3;
  v7 = [self ams_iTunesAccountsForMediaType:a4];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithDSID_forMediaType___block_invoke;
  v11[3] = &unk_1E73B3028;
  v12 = v6;
  v8 = v6;
  v9 = [v7 thenWithBlock:v11];

  return v9;
}

- (id)ams_iTunesAccountWithUsername:()AppleMediaServices
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 isEqualToString:@"local"])
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_opt_class();
    ams_mediaType = [self ams_mediaType];
    v8 = [v6 ams_accountTypeIdentifierForMediaType:ams_mediaType];

    v19 = 0;
    v9 = [self _ams_accountsWithAccountTypeIdentifier:v8 options:1 classification:0 error:&v19];
    v10 = v19;
    if (!v9)
    {
      v11 = +[AMSLogConfig sharedAccountsConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        v14 = v13;
        v15 = AMSLogableError(v10);
        *buf = 138543618;
        v21 = v13;
        v22 = 2114;
        v23 = v15;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: Failed to fetch the iTunes accounts. error = %{public}@", buf, 0x16u);
      }
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithUsername___block_invoke;
    v17[3] = &unk_1E73B2FB0;
    v18 = v4;
    v5 = [v9 ams_firstObjectPassingTest:v17];
  }

  return v5;
}

- (id)ams_iTunesAccountWithUsername:()AppleMediaServices forMediaType:
{
  v6 = a3;
  v7 = a4;
  if ([v6 isEqualToString:@"local"])
  {
    v8 = AMSError(7, @"Account Not Found", @"Could not find an account with the local username for this media type.", 0);
    v9 = [AMSPromise promiseWithError:v8];
  }

  else
  {
    v8 = [self ams_iTunesAccountsForMediaType:v7];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __81__ACAccountStore_AppleMediaServices__ams_iTunesAccountWithUsername_forMediaType___block_invoke;
    v11[3] = &unk_1E73B3028;
    v12 = v6;
    v9 = [v8 thenWithBlock:v11];
  }

  return v9;
}

- (AMSPromise)ams_mediaAccountForHomeWithIdentifier:()AppleMediaServices
{
  v4 = a3;
  v5 = objc_alloc_init(AMSPromise);
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = __76__ACAccountStore_AppleMediaServices__ams_mediaAccountForHomeWithIdentifier___block_invoke;
  v13 = &unk_1E73B32F0;
  selfCopy = self;
  v15 = v4;
  v6 = v4;
  [(AMSPromise *)v5 addErrorBlock:&v10];
  v7 = [AMSMultiUserService proxyObject:v10];
  completionHandlerAdapter = [(AMSPromise *)v5 completionHandlerAdapter];
  [v7 iTunesAccountForHomeWithIdentifier:v6 completion:completionHandlerAdapter];

  return v5;
}

- (uint64_t)ams_saveAccount:()AppleMediaServices verifyCredentials:
{
  if (a4)
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return [self ams_saveAccount:a3 withOptions:v4];
}

- (AMSBinaryPromise)ams_setiTunesAccount:()AppleMediaServices forHomeWithIdentifier:
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(AMSBinaryPromise);
  v9 = +[AMSMultiUserService proxyObjectAsync];
  completionHandlerAdapter = [(AMSBinaryPromise *)v8 completionHandlerAdapter];
  [v9 setiTunesAccount:v6 forHomeWithIdentifier:v7 completion:completionHandlerAdapter];

  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __81__ACAccountStore_AppleMediaServices__ams_setiTunesAccount_forHomeWithIdentifier___block_invoke;
  v14[3] = &unk_1E73B3118;
  objc_copyWeak(&v17, &location);
  v11 = v6;
  v15 = v11;
  v12 = v7;
  v16 = v12;
  [(AMSBinaryPromise *)v8 addErrorBlock:v14];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v8;
}

- (id)ams_addCookiesForResponse:()AppleMediaServices account:
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    array = [MEMORY[0x1E695DF70] array];
    if (!v7 || ([self _addUserCookiesForResponse:v6 account:v7], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(array, "addObject:", v9), v9, (objc_msgSend(v7, "ams_isEphemeralAccount") & 1) == 0))
    {
      v10 = [self _addGlobalCookiesForResponse:v6];
      [array addObject:v10];
    }

    v11 = [AMSBinaryPromise promiseWithAll:array];
  }

  else
  {
    array = AMSError(2, @"Expected non-nil response", 0, 0);
    v11 = [AMSBinaryPromise promiseWithError:array];
  }

  v12 = v11;

  return v12;
}

- (id)ams_addCookiesForResult:()AppleMediaServices account:
{
  v6 = a4;
  response = [a3 response];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = response;

    if (v8)
    {
      v9 = [self ams_addCookiesForResponse:v8 account:v6];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = AMSError(2, @"Invalid Parameter", @"The AMSURLResult didn't contain a NSHTTPURLResponse.", 0);
  v9 = [AMSBinaryPromise promiseWithError:v10];

  v8 = 0;
LABEL_6:

  return v9;
}

- (uint64_t)ams_removeCookiesMatchingProperties:()AppleMediaServices error:
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  ams_alliTunesAccounts = [self ams_alliTunesAccounts];
  v8 = [ams_alliTunesAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    LODWORD(v11) = 1;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(ams_alliTunesAccounts);
        }

        v11 = v11 & [*(*(&v14 + 1) + 8 * i) ams_removeCookiesMatchingProperties:v6 error:a4];
      }

      v9 = [ams_alliTunesAccounts countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (id)_accountTypeForMediaType:()AppleMediaServices
{
  v4 = a3;
  v5 = [objc_opt_class() ams_accountTypeIdentifierForMediaType:v4];

  v6 = [self _ams_fetchAccountTypeWithAccountTypeIdentifier:v5];

  return v6;
}

- (id)_addGlobalCookiesForResponse:()AppleMediaServices
{
  v4 = a3;
  if (v4)
  {
    ams_mediaType = [self ams_mediaType];
    v6 = [self ams_localiTunesAccountForAccountMediaType:ams_mediaType];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67__ACAccountStore_AppleMediaServices___addGlobalCookiesForResponse___block_invoke;
    v11[3] = &unk_1E73B3140;
    v12 = v4;
    v7 = [v6 continueWithBlock:v11];
    binaryPromiseAdapter = [v7 binaryPromiseAdapter];
  }

  else
  {
    v9 = AMSError(2, @"Expected response to be non-nil", 0, 0);
    binaryPromiseAdapter = [AMSBinaryPromise promiseWithError:v9];
  }

  return binaryPromiseAdapter;
}

- (id)_addUserCookiesForResponse:()AppleMediaServices account:
{
  if (a3 && a4)
  {
    v4 = [a4 ams_asynchronouslyAddCookiesForResponse:?];
  }

  else
  {
    v5 = AMSError(2, @"Expected response and account to be non-nil", 0, 0);
    v4 = [AMSBinaryPromise promiseWithError:v5];
  }

  return v4;
}

- (id)_correspondingAccountWithAccountTypeIdentifier:()AppleMediaServices forAccount:
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  accountType = [v7 accountType];
  identifier = [accountType identifier];
  v10 = [identifier isEqualToString:v6];

  if (v10)
  {
    v11 = v7;
  }

  else
  {
    ams_altDSID = [v7 ams_altDSID];
    ams_DSID = [v7 ams_DSID];
    username = [v7 username];
    v11 = [self ams_accountWithAltDSID:ams_altDSID DSID:ams_DSID username:username accountTypeIdentifier:v6];

    if (!v11)
    {
      v15 = +[AMSLogConfig sharedAccountsConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v15 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
      {
        v17 = objc_opt_class();
        hashedDescription = [v7 hashedDescription];
        v20 = 138543874;
        v21 = v17;
        v22 = 2114;
        v23 = v6;
        v24 = 2114;
        v25 = hashedDescription;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEBUG, "%{public}@: Failed to find a corresponding account. accountTypeIdentifier = %{public}@ | account = %{public}@", &v20, 0x20u);
      }

      v11 = 0;
    }
  }

  return v11;
}

- (AMSMutableBinaryPromise)_createLocaliTunesAccountForAccountType:()AppleMediaServices
{
  v3 = a3;
  v4 = objc_alloc_init(AMSMutableBinaryPromise);
  v5 = objc_alloc_init(AMSAccountManagementService);
  v6 = [(AMSAccountManagementService *)v5 performCreateLocalAccountWithType:v3];

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __78__ACAccountStore_AppleMediaServices___createLocaliTunesAccountForAccountType___block_invoke;
  v9[3] = &unk_1E73B3168;
  v7 = v4;
  v10 = v7;
  [v6 resultWithCompletion:v9];

  return v7;
}

- (BOOL)_createLocaliTunesAccountForAccountType:()AppleMediaServices error:
{
  v5 = a3;
  v6 = objc_alloc_init(AMSAccountManagementService);
  v10 = 0;
  [(AMSAccountManagementService *)v6 performCreateLocalAccountWithType:v5 error:&v10];

  v7 = v10;
  if (a4 && v7)
  {
    v7 = v7;
    *a4 = v7;
  }

  v8 = v7 == 0;

  return v8;
}

- (id)_fetchLocaliTunesAccountForAccountType:()AppleMediaServices shouldUpdateStorefront:
{
  v6 = AMSiTunesAccountsForAccountTypeAndClassification(self, a3, 0);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __100__ACAccountStore_AppleMediaServices___fetchLocaliTunesAccountForAccountType_shouldUpdateStorefront___block_invoke;
  v9[3] = &unk_1E73B31B8;
  v10 = a4;
  v9[4] = self;
  v7 = [v6 thenWithBlock:v9];

  return v7;
}

- (id)_fetchLocalAccountForAccountType:()AppleMediaServices error:
{
  v13 = 0;
  v5 = AMSAccountsWithAccountTypeAndClassification(self, a3, 1, 1, &v13);
  v6 = v13;
  v7 = v6;
  if (v5)
  {
    v8 = [v5 ams_firstObjectPassingTest:&__block_literal_global_149];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else if (a4)
    {
      *a4 = AMSError(7, @"Local Account Not Found", @"The local account doesn't exist.", 0);
    }
  }

  else if (a4)
  {
    v11 = v6;
    v9 = 0;
    *a4 = v7;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)_updateStorefrontInLocalAccount:()AppleMediaServices
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([v4 ams_isLocalAccount])
  {
    ams_mediaType = [self ams_mediaType];
    if (ams_mediaType)
    {
      v6 = [self ams_activeiTunesAccountForMediaType:ams_mediaType];
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __70__ACAccountStore_AppleMediaServices___updateStorefrontInLocalAccount___block_invoke;
      v27[3] = &unk_1E73B3000;
      v7 = v4;
      v28 = v7;
      selfCopy = self;
      v8 = [v6 thenWithBlock:v27];

      v21 = MEMORY[0x1E69E9820];
      v22 = 3221225472;
      v23 = __70__ACAccountStore_AppleMediaServices___updateStorefrontInLocalAccount___block_invoke_159;
      v24 = &unk_1E73B32F0;
      selfCopy2 = self;
      v26 = v7;
      [v8 addErrorBlock:&v21];
      binaryPromiseAdapter = [v8 binaryPromiseAdapter];

      v10 = v28;
    }

    else
    {
      v16 = +[AMSLogConfig sharedAccountsConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v16 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543618;
        v31 = v18;
        v32 = 2114;
        v33 = v19;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch media type for storefront sync.", buf, 0x16u);
      }

      v10 = AMSError(0, @"Aborted attempt to sync storefront to local account", @"Failed to fetch the mediaType for the provided account", 0);
      binaryPromiseAdapter = [AMSBinaryPromise promiseWithError:v10];
    }
  }

  else
  {
    v11 = +[AMSLogConfig sharedAccountsConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      v14 = AMSLogKey();
      v15 = AMSHashIfNeeded(v4);
      *buf = 138543874;
      v31 = v13;
      v32 = 2114;
      v33 = v14;
      v34 = 2114;
      v35 = v15;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Storefront sync attempted on a non-local account. account = %{public}@", buf, 0x20u);
    }

    ams_mediaType = AMSError(2, @"Aborted attempt to sync storefront to local account", @"The provided account is not a local account", 0);
    binaryPromiseAdapter = [AMSBinaryPromise promiseWithError:ams_mediaType];
  }

  return binaryPromiseAdapter;
}

+ (id)_multiUserTokenForIdentifier:()AppleMediaServices
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (![v3 length])
  {
    v9 = 0;
    goto LABEL_19;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, 0, 0);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AC30], v3);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697ABD0], @"com.apple.applemediaservices.multiuser");
  v5 = *MEMORY[0x1E695E4D0];
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B390], *MEMORY[0x1E695E4D0]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AE88], @"com.apple.AppleMediaServices.multiUser.token");
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697AFF8], *MEMORY[0x1E697B008]);
  CFDictionaryAddValue(Mutable, *MEMORY[0x1E697B318], v5);
  result = 0;
  v6 = SecItemCopyMatching(Mutable, &result);
  v7 = result;
  if (v6 == -25300)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v16 = objc_opt_class();
      v17 = AMSLogKey();
      *buf = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v17;
      v24 = 2114;
      v25 = v3;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] No multi-user token stored for %{public}@.", buf, 0x20u);
    }

    goto LABEL_17;
  }

  v8 = v6;
  if (v6 || ![result length])
  {
    v10 = +[AMSLogConfig sharedAccountsConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = AMSLogKey();
      *buf = 138544130;
      v21 = v12;
      v22 = 2114;
      v23 = v13;
      v24 = 2114;
      v25 = v3;
      v26 = 1024;
      v27 = v8;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to fetch the multi-user token for %{public}@. error = %d", buf, 0x26u);
    }

LABEL_17:
    v9 = 0;
    goto LABEL_18;
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:v7 encoding:4];
LABEL_18:
  CFRelease(Mutable);

LABEL_19:

  return v9;
}

- (id)ams_iTunesAccountForHomeWithIdentifier:()AppleMediaServices error:
{
  v5 = [self ams_mediaAccountForHomeWithIdentifier:?];
  v6 = [v5 resultWithError:a4];

  return v6;
}

- (id)ams_iTunesAccountWithHomeUserID:()AppleMediaServices
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  v7 = [self ams_iTunesAccountWithHomeUserIdentifier:v6];

  return v7;
}

- (id)ams_iTunesSandboxAccounts
{
  v0 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:AMSAccountMediaTypeAppStoreSandbox];
  ams_iTunesAccounts = [v0 ams_iTunesAccounts];

  return ams_iTunesAccounts;
}

- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices account:error:
{
  v6 = [self ams_addCookiesForResponse:? account:?];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (uint64_t)ams_addCookiesForResult:()AppleMediaServices account:error:
{
  v6 = [self ams_addCookiesForResult:? account:?];
  v7 = [v6 resultWithError:a5];

  return v7;
}

- (uint64_t)ams_addCookiesForResponse:()AppleMediaServices request:account:error:
{
  v7 = [self ams_addCookiesForResponse:a3 account:a5];
  v8 = [v7 resultWithError:a6];

  return v8;
}

@end