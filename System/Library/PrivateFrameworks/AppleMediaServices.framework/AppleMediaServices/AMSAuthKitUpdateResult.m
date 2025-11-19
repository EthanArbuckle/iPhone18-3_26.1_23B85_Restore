@interface AMSAuthKitUpdateResult
+ (id)_createUpdatedAccount:(id)a3 usingAuthenticationResults:(id)a4 options:(id)a5;
- (AMSAuthKitUpdateResult)initWithAccount:(id)a3 authenticationResults:(id)a4 options:(id)a5;
- (AMSAuthKitUpdateResult)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)credentialSource;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSAuthKitUpdateResult

- (AMSAuthKitUpdateResult)initWithAccount:(id)a3 authenticationResults:(id)a4 options:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v17.receiver = self;
  v17.super_class = AMSAuthKitUpdateResult;
  v11 = [(AMSAuthKitUpdateResult *)&v17 init];
  if (v11)
  {
    v12 = [objc_opt_class() _createUpdatedAccount:v8 usingAuthenticationResults:v9 options:v10];
    account = v11->_account;
    v11->_account = v12;

    v14 = [v9 copy];
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

+ (id)_createUpdatedAccount:(id)a3 usingAuthenticationResults:(id)a4 options:(id)a5
{
  v95 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];
  v11 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB68]];
  v12 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBF0]];
  v86 = v12;
  if (!v10 || ([v7 ams_altDSID], v13 = objc_claimAutoreleasedReturnValue(), v14 = objc_msgSend(v13, "isEqualToString:", v10), v13, (v14 & 1) != 0))
  {
    v15 = 0;
    if (!v11)
    {
      goto LABEL_20;
    }

    goto LABEL_12;
  }

  v16 = [v7 ams_altDSID];

  if (v16)
  {
    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v82 = objc_opt_class();
      v19 = AMSLogKey();
      [v7 ams_altDSID];
      v20 = v78 = v9;
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
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated altDSID. oldAltDSID = %{public}@ | newAltDSID = %{public}@", buf, 0x2Au);

      v9 = v78;
      v12 = v86;
    }
  }

  [v7 ams_setAltDSID:v10];
  v15 = 1;
  if (v11)
  {
LABEL_12:
    v23 = [v7 ams_DSID];
    v24 = [v23 isEqualToNumber:v11];

    if ((v24 & 1) == 0)
    {
      v25 = [v7 ams_DSID];

      if (v25)
      {
        v26 = +[AMSLogConfig sharedAccountsConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        v27 = [v26 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v83 = objc_opt_class();
          v28 = AMSLogKey();
          [v7 ams_DSID];
          v29 = v79 = v9;
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
          _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated DSID. oldDSID = %{public}@ | newDSID = %{public}@", buf, 0x2Au);

          v9 = v79;
          v12 = v86;
        }
      }

      [v7 ams_setDSID:v11];
      v15 = 1;
    }
  }

LABEL_20:
  if (v12)
  {
    v32 = [v7 username];
    v33 = [v32 isEqualToString:v12];

    if ((v33 & 1) == 0)
    {
      v34 = [v7 username];

      if (v34)
      {
        v35 = +[AMSLogConfig sharedAccountsConfig];
        if (!v35)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v36 = [v35 OSLogObject];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          v84 = objc_opt_class();
          v37 = AMSLogKey();
          [v7 username];
          v38 = v80 = v9;
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
          _os_log_impl(&dword_192869000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us an updated username. oldUsername = %{public}@ | newUsername = %{public}@", buf, 0x2Au);

          v9 = v80;
          v12 = v86;
        }
      }

      [v7 setUsername:v12];
LABEL_31:
      v85 = v11;
      v41 = +[AMSLogConfig sharedAccountsConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = AMSLogKey();
        *buf = 138543618;
        v88 = v43;
        v89 = 2114;
        v90 = v44;
        _os_log_impl(&dword_192869000, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] AuthKit gave us updated identifiers. We'll attempt to find an existing account that matches the new identifiers.", buf, 0x16u);
      }

      v45 = MEMORY[0x1E6959A48];
      v46 = [v9 clientInfo];
      v47 = [v46 accountMediaType];
      v48 = [v45 ams_sharedAccountStoreForMediaType:v47];

      if ([v7 ams_isiCloudAccount])
      {
        v49 = [v48 ams_accountWithAltDSID:v10 DSID:v11 username:v86 accountTypeIdentifier:*MEMORY[0x1E69597F8]];
      }

      else
      {
        v12 = v86;
        if (![v7 ams_isiTunesAccount])
        {
LABEL_58:

          goto LABEL_59;
        }

        v49 = [v48 ams_iTunesAccountWithAltDSID:v10 DSID:v11 username:v86];
      }

      v50 = v49;
      if (v49)
      {
        v81 = v9;
        v51 = [v49 identifier];
        v52 = [v7 identifier];
        v53 = [v51 isEqualToString:v52];

        v54 = +[AMSLogConfig sharedAccountsConfig];
        v55 = v54;
        if (v53)
        {
          if (!v54)
          {
            v55 = +[AMSLogConfig sharedConfig];
          }

          v56 = [v55 OSLogObject];
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            v57 = objc_opt_class();
            v58 = AMSLogKey();
            *buf = 138543618;
            v88 = v57;
            v89 = 2114;
            v90 = v58;
            _os_log_impl(&dword_192869000, v56, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The new identifiers are for the account we're already working with.", buf, 0x16u);
          }

          v59 = v7;
        }

        else
        {
          if (!v54)
          {
            v55 = +[AMSLogConfig sharedConfig];
          }

          v60 = [v55 OSLogObject];
          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
          {
            v61 = objc_opt_class();
            v62 = AMSLogKey();
            v63 = [v50 hashedDescription];
            *buf = 138543874;
            v88 = v61;
            v89 = 2114;
            v90 = v62;
            v91 = 2114;
            v92 = v63;
            _os_log_impl(&dword_192869000, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The new identifiers are for a different existing account. existingAccount = %{public}@", buf, 0x20u);
          }

          v55 = [v7 ams_altDSID];
          v56 = [v7 ams_DSID];
          v64 = [v7 username];
          v65 = [v81 clientInfo];
          v66 = [v65 accountMediaType];
          v67 = [v7 ams_isActiveForMediaType:v66];

          v59 = v50;
          [v59 ams_setAltDSID:v55];
          [v59 ams_setDSID:v56];
          [v59 setUsername:v64];
          if (v67 && [v81 canMakeAccountActive])
          {
            v68 = [v81 clientInfo];
            v69 = [v68 accountMediaType];
            [v59 ams_setActive:1 forMediaType:v69];
          }

          v48 = v76;
          v10 = v77;
        }

        v11 = v85;

        v7 = v59;
        v9 = v81;
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
  v70 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if (v70)
  {
    [v7 ams_setPassword:v70];
  }

  v71 = *MEMORY[0x1E698DBD0];
  v72 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DBD0]];
  if (v72)
  {
    [v7 ams_setRawPassword:v72];
  }

  v73 = [v8 objectForKeyedSubscript:v71];
  if (v73)
  {
    v74 = 2;
  }

  else
  {
    v74 = 5;
  }

  [v7 ams_setLastAuthenticationCredentialSource:v74];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(AMSAuthKitUpdateResult *)self account];

  if (v4)
  {
    v5 = [(AMSAuthKitUpdateResult *)self account];
    [v8 encodeObject:v5 forKey:@"kCodingKeyAccount"];
  }

  v6 = [(AMSAuthKitUpdateResult *)self authenticationResults];

  if (v6)
  {
    v7 = [(AMSAuthKitUpdateResult *)self authenticationResults];
    [v8 encodeObject:v7 forKey:@"kCodingKeyAuthenticationResults"];
  }
}

- (AMSAuthKitUpdateResult)initWithCoder:(id)a3
{
  v15[6] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyAccount"];
    account = v5->_account;
    v5->_account = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"kCodingKeyAuthenticationResults"];
    authenticationResults = v5->_authenticationResults;
    v5->_authenticationResults = v11;
  }

  return v5;
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSAuthKitUpdateResult *)self account];
  [v3 ams_setNullableObject:v4 forKey:@"account"];

  v5 = [(AMSAuthKitUpdateResult *)self authenticationResults];
  v6 = [v5 ak_redactedCopy];
  [v3 ams_setNullableObject:v6 forKey:@"authenticationResults"];

  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[AMSAuthKitUpdateResult credentialSource](self, "credentialSource")}];
  [v3 ams_setNullableObject:v7 forKey:@"credentialSource"];

  v8 = [v3 copy];
  v9 = [self ams_generateDescriptionWithSubObjects:v8];

  return v9;
}

@end