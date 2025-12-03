@interface AMSAuthKitUpdateResult
+ (id)_createUpdatedAccount:(id)account usingAuthenticationResults:(id)results options:(id)options;
- (AMSAuthKitUpdateResult)initWithAccount:(id)account authenticationResults:(id)results options:(id)options;
- (AMSAuthKitUpdateResult)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)credentialSource;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSAuthKitUpdateResult

- (AMSAuthKitUpdateResult)initWithAccount:(id)account authenticationResults:(id)results options:(id)options
{
  accountCopy = account;
  resultsCopy = results;
  optionsCopy = options;
  v17.receiver = self;
  v17.super_class = AMSAuthKitUpdateResult;
  v11 = [(AMSAuthKitUpdateResult *)&v17 init];
  if (v11)
  {
    v12 = [objc_opt_class() _createUpdatedAccount:accountCopy usingAuthenticationResults:resultsCopy options:optionsCopy];
    account = v11->_account;
    v11->_account = v12;

    v14 = [resultsCopy copy];
    authenticationResults = v11->_authenticationResults;
    v11->_authenticationResults = v14;
  }

  return v11;
}

- (unint64_t)credentialSource
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__AMSAuthKitUpdateResult_credentialSource__block_invoke;
  v4[3] = &unk_1E73B3EA8;
  v4[4] = self;
  v4[5] = &v5;
  __42__AMSAuthKitUpdateResult_credentialSource__block_invoke(v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __42__AMSAuthKitUpdateResult_credentialSource__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) account];
  *(*(*(a1 + 40) + 8) + 24) = [v2 ams_lastAuthenticationCredentialSource];
}

+ (id)_createUpdatedAccount:(id)account usingAuthenticationResults:(id)results options:(id)options
{
  v95 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  resultsCopy = results;
  optionsCopy = options;
  v10 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v11 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v12 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v86 = v12;
  if (!v10 || ([accountCopy ams_altDSID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v10), v13, (v14 & 1) != 0))
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  ams_altDSID = [accountCopy ams_altDSID];

  if (ams_altDSID)
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_opt_class();
      v19 = AMSLogKey();
      [accountCopy ams_altDSID];
      v20 = v78 = optionsCopy;
      v21 = AMSHashIfNeeded(v20);
      v22 = AMSHashIfNeeded(v10);
      *buf = 138544130;
      v88 = v82;
      v89 = 2114;
      v90 = v19;
      v91 = 2114;
      v92 = v21;
      v93 = 2114;
      v94 = v22;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated altDSID. oldAltDSID = %{public}@ | newAltDSID = %{public}@", buf, 0x2Au);

      optionsCopy = v78;
      v12 = v86;
    }
  }

  [accountCopy ams_setAltDSID:v10];
  v15 = 1;
  if (v11)
  {
LABEL_12:
    ams_DSID = [accountCopy ams_DSID];
    v24 = [ams_DSID isEqualToNumber:v11];

    if ((v24 & 1) == 0)
    {
      ams_DSID2 = [accountCopy ams_DSID];

      if (ams_DSID2)
      {
        v26 = +[AMSLogConfig sharedAccountsConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v26 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
        {
          v83 = objc_opt_class();
          v28 = AMSLogKey();
          [accountCopy ams_DSID];
          v29 = v79 = optionsCopy;
          v30 = AMSHashIfNeeded(v29);
          v31 = AMSHashIfNeeded(v11);
          *buf = 138544130;
          v88 = v83;
          v89 = 2114;
          v90 = v28;
          v91 = 2114;
          v92 = v30;
          v93 = 2114;
          v94 = v31;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated DSID. oldDSID = %{public}@ | newDSID = %{public}@", buf, 0x2Au);

          optionsCopy = v79;
          v12 = v86;
        }
      }

      [accountCopy ams_setDSID:v11];
      v15 = 1;
    }
  }

LABEL_20:
  if (v12)
  {
    username = [accountCopy username];
    v33 = [username isEqualToString:v12];

    if ((v33 & 1) == 0)
    {
      username2 = [accountCopy username];

      if (username2)
      {
        v35 = +[AMSLogConfig sharedAccountsConfig];
        if (!v35)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject3 = [v35 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
        {
          v84 = objc_opt_class();
          v37 = AMSLogKey();
          [accountCopy username];
          v38 = v80 = optionsCopy;
          v39 = AMSHashIfNeeded(v38);
          v40 = AMSHashIfNeeded(v12);
          *buf = 138544130;
          v88 = v84;
          v89 = 2114;
          v90 = v37;
          v91 = 2114;
          v92 = v39;
          v93 = 2114;
          v94 = v40;
          _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated username. oldUsername = %{public}@ | newUsername = %{public}@", buf, 0x2Au);

          optionsCopy = v80;
          v12 = v86;
        }
      }

      [accountCopy setUsername:v12];
LABEL_31:
      v85 = v11;
      v41 = +[AMSLogConfig sharedAccountsConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v41 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = AMSLogKey();
        *buf = 138543618;
        v88 = v43;
        v89 = 2114;
        v90 = v44;
        _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us updated identifiers. We'll attempt to find an existing account that matches the new identifiers.", buf, 0x16u);
      }

      v45 = MEMORY[0x1E6959A48];
      clientInfo = [optionsCopy clientInfo];
      accountMediaType = [clientInfo accountMediaType];
      v48 = [v45 ams_sharedAccountStoreForMediaType:accountMediaType];

      if ([accountCopy ams_isiCloudAccount])
      {
        v49 = [v48 ams_accountWithAltDSID:v10 DSID:v11 username:v86 accountTypeIdentifier:*MEMORY[0x1E69597F8]];
      }

      else
      {
        v12 = v86;
        if (![accountCopy ams_isiTunesAccount])
        {
LABEL_58:

          goto LABEL_59;
        }

        v49 = [v48 ams_iTunesAccountWithAltDSID:v10 DSID:v11 username:v86];
      }

      v50 = v49;
      if (v49)
      {
        v81 = optionsCopy;
        identifier = [v49 identifier];
        identifier2 = [accountCopy identifier];
        v53 = [identifier isEqualToString:identifier2];

        v54 = +[AMSLogConfig sharedAccountsConfig];
        ams_altDSID2 = v54;
        if (v53)
        {
          if (!v54)
          {
            ams_altDSID2 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject5 = [ams_altDSID2 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
          {
            v57 = objc_opt_class();
            v58 = AMSLogKey();
            *buf = 138543618;
            v88 = v57;
            v89 = 2114;
            v90 = v58;
            _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The new identifiers are for the account we're already working with.", buf, 0x16u);
          }

          v59 = accountCopy;
        }

        else
        {
          if (!v54)
          {
            ams_altDSID2 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject6 = [ams_altDSID2 OSLogObject];
          if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
          {
            v61 = objc_opt_class();
            v62 = AMSLogKey();
            hashedDescription = [v50 hashedDescription];
            *buf = 138543874;
            v88 = v61;
            v89 = 2114;
            v90 = v62;
            v91 = 2114;
            v92 = hashedDescription;
            _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The new identifiers are for a different existing account. existingAccount = %{public}@", buf, 0x20u);
          }

          ams_altDSID2 = [accountCopy ams_altDSID];
          oSLogObject5 = [accountCopy ams_DSID];
          username3 = [accountCopy username];
          clientInfo2 = [v81 clientInfo];
          accountMediaType2 = [clientInfo2 accountMediaType];
          v67 = [accountCopy ams_isActiveForMediaType:accountMediaType2];

          v59 = v50;
          [v59 ams_setAltDSID:ams_altDSID2];
          [v59 ams_setDSID:oSLogObject5];
          [v59 setUsername:username3];
          if (v67 && [v81 canMakeAccountActive])
          {
            clientInfo3 = [v81 clientInfo];
            accountMediaType3 = [clientInfo3 accountMediaType];
            [v59 ams_setActive:1 forMediaType:accountMediaType3];
          }

          v48 = v76;
          v10 = v77;
        }

        v11 = v85;

        accountCopy = v59;
        optionsCopy = v81;
      }

      v12 = v86;
      goto LABEL_58;
    }
  }

  if (v15)
  {
    goto LABEL_31;
  }

LABEL_59:
  v70 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if (v70)
  {
    [accountCopy ams_setPassword:v70];
  }

  v71 = *MEMORY[0x1E698DBD0];
  v72 = [resultsCopy objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  if (v72)
  {
    [accountCopy ams_setRawPassword:v72];
  }

  v73 = [resultsCopy objectForKeyedSubscript:v71];
  if (v73)
  {
    v74 = 2;
  }

  else
  {
    v74 = 5;
  }

  [accountCopy ams_setLastAuthenticationCredentialSource:v74];

  return accountCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSAuthKitUpdateResult *)self account];

  if (account)
  {
    account2 = [(AMSAuthKitUpdateResult *)self account];
    [coderCopy encodeObject:account2 forKey:@"kCodingKeyAccount"];
  }

  authenticationResults = [(AMSAuthKitUpdateResult *)self authenticationResults];

  if (authenticationResults)
  {
    authenticationResults2 = [(AMSAuthKitUpdateResult *)self authenticationResults];
    [coderCopy encodeObject:authenticationResults2 forKey:@"kCodingKeyAuthenticationResults"];
  }
}

- (AMSAuthKitUpdateResult)initWithCoder:(id)coder
{
  v15[6] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = AMSAuthKitUpdateResult;
  v5 = [(AMSAuthKitUpdateResult *)&v14 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v15[0] = objc_opt_class();
    v15[1] = objc_opt_class();
    v15[2] = objc_opt_class();
    v15[3] = objc_opt_class();
    v15[4] = objc_opt_class();
    v15[5] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:6];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCodingKeyAuthenticationResults"];
    authenticationResults = v5->_authenticationResults;
    v5->_authenticationResults = v11;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  account = [(AMSAuthKitUpdateResult *)self account];
  [v3 ams_setNullableObject:account forKey:@"account"];

  authenticationResults = [(AMSAuthKitUpdateResult *)self authenticationResults];
  ak_redactedCopy = [authenticationResults ak_redactedCopy];
  [v3 ams_setNullableObject:ak_redactedCopy forKey:@"authenticationResults"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSAuthKitUpdateResult credentialSource](self, "credentialSource")}];
  [v3 ams_setNullableObject:v7 forKey:@"credentialSource"];

  v8 = [v3 copy];
  v9 = [self ams_generateDescriptionWithSubObjects:v8];

  return v9;
}

@end