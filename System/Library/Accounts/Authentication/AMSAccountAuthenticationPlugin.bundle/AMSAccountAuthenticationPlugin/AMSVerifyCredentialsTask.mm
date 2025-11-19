@interface AMSVerifyCredentialsTask
+ (void)_postAuthenticationBeganNotification;
+ (void)_postAuthenticationFailedNotification;
+ (void)_postAuthenticationFinishedNotification;
+ (void)_postAuthenticationSubmittedNotification;
- (AMSVerifyCredentialsTask)initWithAccount:(id)a3 accountStore:(id)a4 bag:(id)a5 options:(id)a6;
- (id)_cookieDictionaryFromAccount:(id)a3 url:(id)a4;
- (id)_createAuthenticateRequestEncoder;
- (id)_createAuthenticateRequestEncoderForAccount:(id)a3;
- (id)_createAuthenticateRequestForAccount:(id)a3 URL:(id)a4 requestEncoder:(id)a5;
- (id)_createAuthenticateRequestParametersForAccount:(id)a3;
- (id)_createUpdatedAccountWithAuthenticationResult:(id)a3;
- (id)_generatePasswordIfNeeded;
- (id)_processAuthenticationFailureWithResult:(id)a3;
- (id)_promiseOfAccountFromResult:(id)a3 orError:(id)a4;
- (id)performTask;
- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6;
- (void)_handleBiometricsForAuthenticatedAccount:(id)a3;
- (void)_handleDeviceOffersForAuthenticatedAccount:(id)a3;
- (void)_handleIDMSRetentionForAuthenticatedAccount:(id)a3;
- (void)_processAuthenticationSuccessWithResult:(id)a3 authenticatedAccount:(id)a4;
- (void)_removeInactiveDuplicatesForAuthenticatedAccount:(id)a3;
- (void)completeMetricsActivityWithPromise:(id)a3;
- (void)prepareMetricsActivity;
@end

@implementation AMSVerifyCredentialsTask

- (AMSVerifyCredentialsTask)initWithAccount:(id)a3 accountStore:(id)a4 bag:(id)a5 options:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = AMSVerifyCredentialsTask;
  v15 = [(AMSVerifyCredentialsTask *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, a3);
    objc_storeStrong(&v16->_accountStore, a4);
    objc_storeStrong(&v16->_bag, a5);
    v17 = [[AMSAuthenticateMetrics alloc] initWithBag:v13];
    metrics = v16->_metrics;
    v16->_metrics = v17;

    objc_storeStrong(&v16->_options, a6);
    v19 = [v11 identifier];
    v20 = [v12 accountWithIdentifier:v19];
    v21 = [v14 clientInfo];
    v22 = [v21 accountMediaType];
    v16->_accountWasOriginallyActive = [v20 ams_isActiveForMediaType:v22];

    v23 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v23 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      v27 = AMSHashIfNeeded();
      *buf = 138543874;
      v31 = v25;
      v32 = 2114;
      v33 = v26;
      v34 = 2114;
      v35 = v27;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating an AMSVerifyCredentialsTask. account = %{public}@", buf, 0x20u);
    }
  }

  return v16;
}

- (id)performTask
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_2BCC;
  v4[3] = &unk_14588;
  v4[4] = self;
  v2 = [(AMSVerifyCredentialsTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

- (id)_promiseOfAccountFromResult:(id)a3 orError:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded();
    v13 = AMSHashIfNeeded();
    v35 = 138544130;
    v36 = v10;
    v37 = 2114;
    v38 = v11;
    v39 = 2114;
    v40 = v12;
    v41 = 2114;
    v42 = v13;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication finished. result = %{public}@ | error = %{public}@", &v35, 0x2Au);
  }

  v14 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v35 = 138543618;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing Account", &v35, 0x16u);
  }

  if (v6)
  {
    v18 = [(AMSVerifyCredentialsTask *)self _createUpdatedAccountWithAuthenticationResult:v6];
    [(AMSVerifyCredentialsTask *)self _handleIDMSRetentionForAuthenticatedAccount:v18];
    if (v18)
    {
      v19 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      v20 = [v19 OSLogObject];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = objc_opt_class();
        v22 = AMSLogKey();
        v23 = AMSHashIfNeeded();
        v24 = AMSHashIfNeeded();
        v35 = 138544130;
        v36 = v21;
        v37 = 2114;
        v38 = v22;
        v39 = 2114;
        v40 = v23;
        v41 = 2114;
        v42 = v24;
        _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication succeeded. result = %{public}@ | authenticatedAccount = %{public}@", &v35, 0x2Au);
      }

      [(AMSVerifyCredentialsTask *)self _processAuthenticationSuccessWithResult:v6 authenticatedAccount:v18];
      v25 = [[AMSPromiseResult alloc] initWithResult:v18 error:0];
      goto LABEL_23;
    }

    v26 = [(AMSVerifyCredentialsTask *)self _processAuthenticationFailureWithResult:v6];
  }

  else
  {
    [(AMSVerifyCredentialsTask *)self _handleIDMSRetentionForAuthenticatedAccount:0];
    v26 = v7;
  }

  v18 = v26;
  v27 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  v28 = [v27 OSLogObject];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v29 = objc_opt_class();
    v30 = AMSLogKey();
    v31 = AMSHashIfNeeded();
    v35 = 138543874;
    v36 = v29;
    v37 = 2114;
    v38 = v30;
    v39 = 2114;
    v40 = v31;
    _os_log_impl(&dword_0, v28, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The authentication failed. error = %{public}@", &v35, 0x20u);
  }

  v32 = [AMSPromiseResult alloc];
  v33 = [v18 ams_sanitizedForSecureCoding];
  v25 = [v32 initWithResult:0 error:v33];

LABEL_23:

  return v25;
}

- (void)AMSURLSession:(id)a3 task:(id)a4 handleDialogRequest:(id)a5 completion:(id)a6
{
  v8 = a6;
  [(AMSVerifyCredentialsTask *)self setDialogRequest:a5];
  v9 = AMSError();
  v8[2](v8, 0, v9);
}

- (id)_cookieDictionaryFromAccount:(id)a3 url:(id)a4
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(NSMutableDictionary);
  v23 = v9;
  v24 = v8;
  [v8 ams_cookiesForURL:v9];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v34 = 0u;
  v27 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v27)
  {
    v26 = *v32;
    do
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v32 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v31 + 1) + 8 * i);
        v13 = [v12 name];
        v14 = [v10 objectForKeyedSubscript:v13];
        if (v14)
        {
          v30 = [v12 name];
          v15 = [v10 objectForKeyedSubscript:?];
          v28 = [v12 value];
          v36 = v28;
          v9 = [NSArray arrayWithObjects:&v36 count:1];
          v29 = v15;
          v16 = [v15 arrayByAddingObjectsFromArray:v9];
          v4 = v16;
        }

        else
        {
          v5 = [v12 value];
          v35 = v5;
          v16 = [NSArray arrayWithObjects:&v35 count:1];
          v6 = v16;
        }

        v17 = v16;
        v18 = [v12 name];
        [v10 setObject:v17 forKeyedSubscript:v18];

        v19 = v6;
        v20 = v5;
        if (v14)
        {

          v19 = v29;
          v20 = v30;
        }
      }

      v27 = [obj countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v27);
  }

  v21 = [v10 copy];

  return v21;
}

- (id)_createAuthenticateRequestEncoder
{
  v3 = [(AMSVerifyCredentialsTask *)self account];
  v4 = [(AMSVerifyCredentialsTask *)self _createAuthenticateRequestEncoderForAccount:v3];

  return v4;
}

- (id)_createAuthenticateRequestEncoderForAccount:(id)a3
{
  v4 = [AMSURLRequestEncoder alloc];
  v5 = [(AMSVerifyCredentialsTask *)self bag];
  v6 = [v4 initWithBag:v5];

  v7 = [(AMSVerifyCredentialsTask *)self options];
  v8 = [v7 clientInfo];
  [v6 setClientInfo:v8];

  v9 = [(AMSVerifyCredentialsTask *)self options];
  LOBYTE(v8) = [v9 allowServerDialogs];

  if ((v8 & 1) == 0)
  {
    [v6 setDialogOptions:1];
  }

  [v6 setIncludeClientVersions:0];
  v10 = [(AMSVerifyCredentialsTask *)self options];
  v11 = [v10 logKey];
  [v6 setLogUUID:v11];

  [v6 setMescalType:1];
  [v6 setRequestEncoding:2];
  [v6 setShouldSetCookiesFromResponse:0];
  [v6 setShouldSetStorefrontFromResponse:0];

  return v6;
}

- (id)_createAuthenticateRequestForAccount:(id)a3 URL:(id)a4 requestEncoder:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  [v8 setAccount:v10];
  v11 = [(AMSVerifyCredentialsTask *)self _createAuthenticateRequestParametersForAccount:v10];

  v12 = [v8 requestWithMethod:4 bagURL:v9 parameters:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3DAC;
  v15[3] = &unk_145D8;
  v15[4] = self;
  v13 = [v12 thenWithBlock:v15];

  return v13;
}

- (id)_createAuthenticateRequestParametersForAccount:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 ams_setNullableObject:&__kCFBooleanTrue forKey:@"createSession"];
  v6 = [(AMSVerifyCredentialsTask *)self options];
  v7 = [v6 credentialSource];

  v8 = [NSNumber numberWithUnsignedInteger:v7];
  [v5 ams_setNullableObject:v8 forKey:@"credentialSource"];

  v9 = +[AMSDevice deviceGUID];
  [v5 ams_setNullableObject:v9 forKey:@"guid"];

  v10 = [NSNumber numberWithBool:(v7 - 5) < 2];
  [v5 ams_setNullableObject:v10 forKey:@"isSilentAuthentication"];

  v11 = [v4 credential];
  v12 = [v11 password];
  if (v7 == &dword_4 + 2)
  {
    v13 = @"homeToken";
  }

  else
  {
    v13 = @"password";
  }

  [v5 ams_setNullableObject:v12 forKey:v13];

  [v5 ams_setNullableObject:@"0" forKey:@"rmp"];
  v19[0] = @"free";
  v14 = +[AMSSyncPasswordSettingsTask serverValueForFreePasswordSetting:](AMSSyncPasswordSettingsTask, "serverValueForFreePasswordSetting:", [v4 ams_freePasswordPromptSetting]);
  v19[1] = @"paid";
  v20[0] = v14;
  v15 = +[AMSSyncPasswordSettingsTask serverValueForPaidPasswordSetting:](AMSSyncPasswordSettingsTask, "serverValueForPaidPasswordSetting:", [v4 ams_paidPasswordPromptSetting]);
  v20[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v5 ams_setNullableObject:v16 forKey:@"passwordSettings"];

  v17 = [v4 username];
  [v5 ams_setNullableObject:v17 forKey:@"appleId"];

  [AMSDevice setDeviceOffersCheckEncodingForRequestParameters:v5];

  return v5;
}

- (id)_createUpdatedAccountWithAuthenticationResult:(id)a3
{
  v4 = a3;
  v5 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 ams_username];
  if (![v7 length])
  {
    v83 = 0;
    goto LABEL_50;
  }

  v90 = v7;
  v8 = [(AMSVerifyCredentialsTask *)self account];
  v9 = [v8 copy];

  v10 = [(AMSVerifyCredentialsTask *)self accountStore];
  v11 = [v6 ams_altDSID];
  v12 = [v6 ams_DSID];
  v13 = [v6 ams_username];
  v14 = [v10 ams_iTunesAccountWithAltDSID:v11 DSID:v12 username:v13];

  v89 = v14;
  v91 = self;
  v87 = v4;
  if (v14 && [v9 ams_isDuplicate:v14])
  {
    v15 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = AMSHashIfNeeded();
      *buf = 138543874;
      v94 = v17;
      v95 = 2114;
      v96 = v18;
      v97 = 2114;
      v98 = v19;
      _os_log_impl(&dword_0, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A duplicate account was added while the authentication was in progress. We'll update the already existing account. existingAccount = %{public}@", buf, 0x20u);

      v14 = v89;
    }

    v20 = [(AMSVerifyCredentialsTask *)self options];
    v21 = [v20 clientInfo];
    v22 = [v21 accountMediaType];
    if ([v9 ams_isActiveForMediaType:v22])
    {
      v23 = [(AMSVerifyCredentialsTask *)self options];
      v24 = [v23 clientInfo];
      v25 = [v24 accountMediaType];
      v26 = [v89 ams_isActiveForMediaType:v25];

      v14 = v89;
      if (v26)
      {
LABEL_19:
        v32 = [v9 credential];
        [v14 setCredential:v32];

        v33 = v14;
        v9 = v33;
        v4 = v87;
        v7 = v90;
        self = v91;
        goto LABEL_21;
      }

      v27 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      v28 = [v27 OSLogObject];
      v29 = v91;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = AMSLogKey();
        *buf = 138543618;
        v94 = v30;
        v29 = v91;
        v95 = 2114;
        v96 = v31;
        _os_log_impl(&dword_0, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The existing account wasn't active, but our just authenticated account was active. Updating the existing account to be active.", buf, 0x16u);
      }

      v20 = [(AMSVerifyCredentialsTask *)v29 options];
      v21 = [v20 clientInfo];
      v22 = [v21 accountMediaType];
      [v89 ams_setActive:1 forMediaType:v22];
    }

    goto LABEL_19;
  }

  v7 = v90;
LABEL_21:
  v34 = [v6 ams_creditsString];
  [v9 ams_setCreditsString:v34];

  v35 = [v6 ams_firstName];
  [v9 ams_setFirstName:v35];

  v36 = [v6 ams_lastName];
  [v9 ams_setLastName:v36];

  [v9 ams_setManagedAppleID:{objc_msgSend(v6, "ams_isManagedAppleID")}];
  v37 = [v6 ams_privacyAcknowledgement];
  [v9 ams_mergePrivacyAcknowledgement:v37];

  v38 = [v4 response];
  v39 = [v38 ams_storefront];

  v88 = v39;
  if ([v39 length])
  {
    v40 = [(AMSVerifyCredentialsTask *)self options];
    v41 = [v40 clientInfo];
    v42 = [v41 accountMediaType];
    v43 = [v9 ams_storefrontForMediaType:v42];
    v44 = [v43 isEqualToString:v39];

    v45 = v91;
    if ((v44 & 1) == 0)
    {
      v46 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v46)
      {
        v46 = +[AMSLogConfig sharedConfig];
      }

      v47 = [v46 OSLogObject];
      if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
      {
        v48 = objc_opt_class();
        v49 = AMSLogKey();
        v85 = [(AMSVerifyCredentialsTask *)v91 options];
        v50 = [v85 clientInfo];
        v51 = [v50 accountMediaType];
        v52 = [v9 ams_storefrontForMediaType:v51];
        *buf = 138544130;
        v94 = v48;
        v45 = v91;
        v95 = 2114;
        v96 = v49;
        v97 = 2114;
        v98 = v52;
        v99 = 2114;
        v100 = v88;
        _os_log_impl(&dword_0, v47, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's storefront. oldStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x2Au);

        v39 = v88;
      }

      v53 = [(AMSVerifyCredentialsTask *)v45 options];
      v54 = [v53 clientInfo];
      v55 = [v54 accountMediaType];
      [v9 ams_setStorefront:v39 forMediaType:v55];
    }
  }

  v56 = [v6 ams_altDSID];
  if (v56)
  {
    v57 = [v9 ams_altDSID];
    v58 = [v57 isEqualToString:v56];

    if ((v58 & 1) == 0)
    {
      v59 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v59)
      {
        v59 = +[AMSLogConfig sharedConfig];
      }

      v60 = [v59 OSLogObject];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v85 = objc_opt_class();
        v61 = AMSLogKey();
        v62 = [v9 ams_altDSID];
        v63 = AMSHashIfNeeded();
        v64 = AMSHashIfNeeded();
        *buf = 138544130;
        v94 = v85;
        v95 = 2114;
        v96 = v61;
        v97 = 2114;
        v98 = v63;
        v99 = 2114;
        v100 = v64;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's altDSID. oldAltDSID = %{public}@ | newAltDSID = %{public}@", buf, 0x2Au);
      }

      [v9 ams_setAltDSID:v56];
      v39 = v88;
    }
  }

  v65 = [v6 ams_DSID];
  if (v65)
  {
    v66 = [v9 ams_DSID];
    v67 = [v66 isEqualToNumber:v65];

    if ((v67 & 1) == 0)
    {
      v68 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v68)
      {
        v68 = +[AMSLogConfig sharedConfig];
      }

      v69 = [v68 OSLogObject];
      if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
      {
        v86 = objc_opt_class();
        v70 = AMSLogKey();
        v71 = [v9 ams_DSID];
        v72 = AMSHashIfNeeded();
        v73 = AMSHashIfNeeded();
        *buf = 138544130;
        v94 = v86;
        v95 = 2114;
        v96 = v70;
        v97 = 2114;
        v98 = v72;
        v99 = 2114;
        v100 = v73;
        _os_log_impl(&dword_0, v69, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's DSID. oldDSID = %{public}@ | newDSID = %{public}@", buf, 0x2Au);

        v7 = v90;
      }

      [v9 ams_setDSID:v65];
      v39 = v88;
    }
  }

  v74 = [v9 username];
  v75 = [v74 isEqualToString:v7];

  if ((v75 & 1) == 0)
  {
    v76 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v76)
    {
      v76 = +[AMSLogConfig sharedConfig];
    }

    v77 = [v76 OSLogObject];
    if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_opt_class();
      v79 = AMSLogKey();
      v80 = [v9 username];
      v81 = AMSHashIfNeeded();
      AMSHashIfNeeded();
      v82 = v92 = v56;
      *buf = 138544130;
      v94 = v78;
      v95 = 2114;
      v96 = v79;
      v97 = 2114;
      v98 = v81;
      v99 = 2114;
      v100 = v82;
      _os_log_impl(&dword_0, v77, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's username. oldUsername = %{public}@ | newUsername = %{public}@", buf, 0x2Au);

      v56 = v92;
      v7 = v90;
    }

    [v9 setUsername:v7];
    v39 = v88;
  }

  v83 = v9;

  v4 = v87;
LABEL_50:

  return v83;
}

- (id)_generatePasswordIfNeeded
{
  v3 = [(AMSVerifyCredentialsTask *)self account];
  v4 = [v3 ams_password];

  if (v4)
  {
    v5 = [(AMSVerifyCredentialsTask *)self account];
    v6 = [AMSPromise promiseWithResult:v5];
  }

  else
  {
    v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The account has no password.", buf, 0x16u);
    }

    v11 = [(AMSVerifyCredentialsTask *)self options];
    v12 = [v11 allowPasswordGeneration];

    if (v12 != &dword_0 + 1 && (v12 || (-[AMSVerifyCredentialsTask options](self, "options"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 authenticationType], v13, v14 == &dword_0 + 2)))
    {
      v15 = AMSError();
      v16 = [AMSPromise promiseWithError:v15];
    }

    else
    {
      v17 = [(AMSVerifyCredentialsTask *)self options];
      v15 = [v17 copy];

      [v15 setAuthenticationType:1];
      v18 = [AMSAuthKitUpdateTask alloc];
      v19 = [(AMSVerifyCredentialsTask *)self account];
      v20 = [v18 initWithAccount:v19 options:v15];

      v21 = [v20 performAuthKitUpdate];
      v16 = [v21 thenWithBlock:&stru_14618];
    }

    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_53C4;
    v24[3] = &unk_14640;
    v24[4] = self;
    [v16 addErrorBlock:v24];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_54F8;
    v23[3] = &unk_14668;
    v23[4] = self;
    [v16 addSuccessBlock:v23];
    v6 = [v16 catchWithBlock:&stru_146A8];
  }

  return v6;
}

- (void)_handleIDMSRetentionForAuthenticatedAccount:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isActive];
    v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v33 = 138544130;
      v34 = v9;
      v35 = 2114;
      v36 = v10;
      v37 = 1024;
      LODWORD(v38[0]) = v6;
      WORD2(v38[0]) = 2114;
      *(v38 + 6) = v11;
      _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = %d | authenticatedAccount = %{public}@", &v33, 0x26u);
    }

    [(AMSVerifyCredentialsTask *)self _retainIDMS:v6 forAccount:v5];
  }

  else
  {
    v12 = [(AMSVerifyCredentialsTask *)self accountStore];
    v13 = [(AMSVerifyCredentialsTask *)self account];
    v14 = [v13 ams_altDSID];
    v15 = [(AMSVerifyCredentialsTask *)self account];
    v16 = [v15 ams_DSID];
    v17 = [(AMSVerifyCredentialsTask *)self account];
    v18 = [v17 username];
    v19 = [v12 ams_iTunesAccountWithAltDSID:v14 DSID:v16 username:v18];

    if (v19)
    {
      v20 = [v19 isActive];
      v21 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        v25 = AMSHashIfNeeded();
        v33 = 138544130;
        v34 = v23;
        v35 = 2114;
        v36 = v24;
        v37 = 1024;
        LODWORD(v38[0]) = v20;
        WORD2(v38[0]) = 2114;
        *(v38 + 6) = v25;
        _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = %d | accountOnDevice = %{public}@", &v33, 0x26u);
      }

      [(AMSVerifyCredentialsTask *)self _retainIDMS:v20 forAccount:v19];
    }

    else
    {
      v26 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      v27 = [v26 OSLogObject];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        v30 = [(AMSVerifyCredentialsTask *)self account];
        v31 = AMSHashIfNeeded();
        v33 = 138543874;
        v34 = v28;
        v35 = 2114;
        v36 = v29;
        v37 = 2114;
        v38[0] = v31;
        _os_log_impl(&dword_0, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = 0 | self.account = %{public}@", &v33, 0x20u);
      }

      v32 = [(AMSVerifyCredentialsTask *)self account];
      [(AMSVerifyCredentialsTask *)self _retainIDMS:0 forAccount:v32];
    }
  }
}

- (void)_handleDeviceOffersForAuthenticatedAccount:(id)a3
{
  v4 = a3;
  if ((+[AMSDefaults didRetrieveDeviceOffers]& 1) == 0)
  {
    v5 = [AMSDeviceOfferRegistrationTask alloc];
    v6 = [(AMSVerifyCredentialsTask *)self bag];
    v7 = [v5 initWithAccount:v4 bag:v6];

    v8 = [v7 perform];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5B4C;
    v10[3] = &unk_14640;
    v10[4] = self;
    [v8 addErrorBlock:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5C6C;
    v9[3] = &unk_14710;
    v9[4] = self;
    [v8 addSuccessBlock:v9];
  }
}

- (void)_handleBiometricsForAuthenticatedAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSVerifyCredentialsTask *)self options];
  v6 = [v5 credentialSource];

  v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v65 = 2048;
    v66 = v6;
    _os_log_impl(&dword_0, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining whether we need to provision biometrics. credentialSource = %ld", buf, 0x20u);
  }

  if (v6 != &dword_4 + 1)
  {
    v15 = [v4 ams_DSID];
    v16 = [NSString stringWithFormat:@"%@%@", @"mt-tid-", v15];

    v17 = [v4 ams_cookies];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_674C;
    v59[3] = &unk_14738;
    v11 = v16;
    v60 = v11;
    v18 = [v17 ams_anyWithTest:v59];

    v19 = &_s18AppleMediaServices15MetricsActivityC02nwE0So03OS_F9_activity_pvgTj_ptr;
    v20 = [AMSBiometricsSecurityService isAvailableForAccount:v4];
    v21 = [v20 resultWithError:0];

    if (v21)
    {
      v22 = +[AMSBiometricsSecurityService saveIdentityMap];
      [v22 resultWithError:0];

      v23 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v23)
      {
        v23 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v23 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543618;
        v62 = v25;
        v63 = 2114;
        v64 = v26;
        _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics are enabled.", buf, 0x16u);
      }
    }

    v27 = [AMSBiometrics stateForAccount:v4];
    if (v27 != &dword_0 + 1)
    {
      v34 = v27;
      v35 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [v35 OSLogObject];
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = AMSLogKey();
        *buf = 138543874;
        v62 = v37;
        v63 = 2114;
        v64 = v38;
        v65 = 2048;
        v66 = v34;
        _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometrics provisioning. biometricState = %ld", buf, 0x20u);
      }

      goto LABEL_58;
    }

    if (!v18)
    {
      goto LABEL_42;
    }

    v28 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      *buf = 138543618;
      v62 = v30;
      v63 = 2112;
      v64 = v31;
      _os_log_impl(&dword_0, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Attestation exists. Checking the ACL version.", buf, 0x16u);
    }

    v32 = objc_alloc_init(AMSKeychainOptions);
    [v32 setPurpose:0];
    [v32 setStyle:{+[AMSKeychainOptions preferredAttestationStyle](AMSKeychainOptions, "preferredAttestationStyle")}];
    if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:v4])
    {
      v33 = +[AMSCertificateManager accessControlForAccount:forSignaturePurpose:](AMSCertificateManager, "accessControlForAccount:forSignaturePurpose:", v4, [v32 purpose]);
    }

    else
    {
      v33 = [AMSKeychain copyAccessControlRefWithAccount:v4 options:v32 error:0];
    }

    v39 = v33;
    v40 = [AMSBiometrics isActionSupported:[(AMSVerifyCredentialsTask *)self _expectedBiometricActionConstraint] withAccessControl:v33];
    if ((v40 & 1) == 0)
    {
      v41 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v41)
      {
        v41 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v41 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v57 = AMSLogKey();
        *buf = 138543618;
        v62 = v43;
        v19 = &_s18AppleMediaServices15MetricsActivityC02nwE0So03OS_F9_activity_pvgTj_ptr;
        v63 = 2112;
        v64 = v57;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Attestation is out-of-date. An update is required.", buf, 0x16u);
      }
    }

    if (v39)
    {
      CFRelease(v39);
    }

    if (v40)
    {
      v35 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [v35 OSLogObject];
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v44 = objc_opt_class();
      v45 = AMSLogKey();
      *buf = 138543618;
      v62 = v44;
      v63 = 2114;
      v64 = v45;
      v46 = "%{public}@: [%{public}@] Skipping biometrics provisioning. Attestation is up-to-date.";
    }

    else
    {
LABEL_42:
      v47 = [v19[92] isIdentityMapValid];
      v48 = [v47 resultWithError:0];

      v49 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      v35 = v49;
      if (v48)
      {
        if (!v49)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        v50 = [v35 OSLogObject];
        if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_opt_class();
          v52 = AMSLogKey();
          *buf = 138543618;
          v62 = v51;
          v63 = 2112;
          v64 = v52;
          _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Provisioning biometrics.", buf, 0x16u);
        }

        v35 = [[AMSBiometricsTokenUpdateTask alloc] initWithAccount:v4];
        v36 = [v35 performUpdate];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_6790;
        v58[3] = &unk_14538;
        v58[4] = self;
        [v36 addFinishBlock:v58];
        [v36 waitUntilFinishedWithTimeout:10.0];
        v45 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
        if (!v45)
        {
          v45 = +[AMSLogConfig sharedConfig];
        }

        v53 = [v45 OSLogObject];
        if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
        {
          v54 = objc_opt_class();
          v55 = AMSLogKey();
          *buf = 138543618;
          v62 = v54;
          v63 = 2112;
          v64 = v55;
          _os_log_impl(&dword_0, v53, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Finished handling biometrics for an authenticated account.", buf, 0x16u);
        }

        goto LABEL_57;
      }

      if (!v49)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      v36 = [v35 OSLogObject];
      if (!os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_58;
      }

      v56 = objc_opt_class();
      v45 = AMSLogKey();
      *buf = 138543618;
      v62 = v56;
      v63 = 2114;
      v64 = v45;
      v46 = "%{public}@: [%{public}@] Skipping biometrics provisioning. Identity map is invalid.";
    }

    _os_log_impl(&dword_0, v36, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
LABEL_57:

LABEL_58:
    v12 = v60;
    goto LABEL_59;
  }

  v11 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v62 = v13;
    v63 = 2114;
    v64 = v14;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometrics provisioning. The authentication was silent.", buf, 0x16u);
  }

LABEL_59:
}

- (id)_processAuthenticationFailureWithResult:(id)a3
{
  v4 = a3;
  v71 = AMSLogKey();
  if (!v71)
  {
    v71 = AMSSetLogKeyIfNeeded();
  }

  v5 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSHashIfNeeded();
    v9 = [v4 object];
    v10 = AMSHashIfNeeded();
    *buf = 138544130;
    v78 = v7;
    v79 = 2114;
    v80 = v71;
    v81 = 2114;
    v82 = v8;
    v83 = 2112;
    v84 = v10;
    _os_log_impl(&dword_0, v6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The authentication failed. result = %{public}@ | result.object = %@", buf, 0x2Au);
  }

  [objc_opt_class() _postAuthenticationFailedNotification];
  v11 = [v4 object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(AMSVerifyCredentialsTask *)self options];
  v14 = [v13 clientInfo];
  v15 = [v14 accountMediaType];

  v70 = v15;
  if (!v15)
  {
    v70 = +[AMSProcessInfo defaultMediaTypeForCurrentProcess];
  }

  v69 = [v12 ams_errorCode];
  if (v69 == &loc_1388 + 1 && [(AMSVerifyCredentialsTask *)self accountWasOriginallyActive])
  {
    v16 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      v19 = [(AMSVerifyCredentialsTask *)self account];
      v20 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v18;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v20;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received an Account Conversion Needed error for the active account, storing cookies on the account. account = %{public}@", buf, 0x20u);
    }

    v21 = [(AMSVerifyCredentialsTask *)self account];
    if (v21)
    {
      goto LABEL_25;
    }
  }

  v22 = [(AMSVerifyCredentialsTask *)self accountStore];
  v23 = [v22 ams_localiTunesAccountForAccountMediaType:v70];
  v74 = 0;
  v21 = [v23 resultWithError:&v74];
  v24 = v74;

  if (v21)
  {
    v25 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    v26 = [v25 OSLogObject];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v27;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v28;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using the local account for cookie storage. account = %{public}@", buf, 0x20u);
    }

LABEL_25:
    v29 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v30 = [v29 OSLogObject];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v31;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v32;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Saving cookies. account = %{public}@", buf, 0x20u);
    }

    v33 = [(AMSVerifyCredentialsTask *)self accountStore];
    v73 = 0;
    v34 = [v33 ams_addCookiesForResult:v4 account:v21 error:&v73];
    v35 = v73;

    v36 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    v37 = v36;
    if (v34)
    {
      if (!v36)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        *buf = 138543618;
        v78 = v39;
        v79 = 2114;
        v80 = v71;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Saving cookies succeeded.", buf, 0x16u);
      }
    }

    else
    {
      if (!v36)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      v38 = [v37 OSLogObject];
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = AMSHashIfNeeded();
        AMSHashIfNeeded();
        v42 = v67 = v12;
        AMSHashIfNeeded();
        v43 = v66 = v4;
        *buf = 138544386;
        v78 = v40;
        v79 = 2114;
        v80 = v71;
        v81 = 2112;
        v82 = v41;
        v83 = 2114;
        v84 = v42;
        v85 = 2114;
        v86 = v43;
        _os_log_impl(&dword_0, v38, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Saving response cookies to the account failed. result = %{result}@ | error = %{public}@ | account = %{public}@", buf, 0x34u);

        v4 = v66;
        v12 = v67;
      }
    }

    goto LABEL_39;
  }

  v45 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  v46 = v45;
  if (v24)
  {
    if (!v45)
    {
      v46 = +[AMSLogConfig sharedConfig];
    }

    v47 = [v46 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = AMSLogableError();
      *buf = 138543874;
      v78 = v48;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v49;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve the local iTunes account for cookie storage. error = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v45)
    {
      v46 = +[AMSLogConfig sharedConfig];
    }

    v47 = [v46 OSLogObject];
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      *buf = 138543618;
      v78 = v64;
      v79 = 2114;
      v80 = v71;
      _os_log_impl(&dword_0, v47, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve the local iTunes account for cookie storage and didn’t get an error.", buf, 0x16u);
    }
  }

  v21 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v21)
  {
    v21 = +[AMSLogConfig sharedConfig];
  }

  v35 = [v21 OSLogObject];
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v65 = objc_opt_class();
    *buf = 138543618;
    v78 = v65;
    v79 = 2114;
    v80 = v71;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not saving cookies, no account to save to.", buf, 0x16u);
  }

LABEL_39:

  if (v69 == -5000 || v69 == &loc_14B8 || v69 == &loc_1388 + 1)
  {
    v44 = [NSError errorWithDomain:AMSServerErrorDomain code:v66 userInfo:?];
  }

  else
  {
    v44 = AMSError();
  }

  v50 = v44;
  v51 = [(AMSVerifyCredentialsTask *)self dialogRequest];

  if (v51)
  {
    v68 = v12;
    v52 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v52)
    {
      v52 = +[AMSLogConfig sharedConfig];
    }

    v53 = v4;
    v54 = [v52 OSLogObject];
    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      *buf = 138543618;
      v78 = v55;
      v79 = 2114;
      v80 = v71;
      _os_log_impl(&dword_0, v54, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication resulted in an AMSDialogRequest. Encoding the request.", buf, 0x16u);
    }

    v56 = [(AMSVerifyCredentialsTask *)self dialogRequest];
    v72 = 0;
    v57 = [NSKeyedArchiver archivedDataWithRootObject:v56 requiringSecureCoding:1 error:&v72];
    v58 = v72;

    if (v57)
    {
      v75 = AMSAuthenticateErrorDialogKey;
      v76 = v57;
      v59 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      [v50 ams_errorByAddingUserInfo:v59];
      v50 = v60 = v50;
    }

    else
    {
      v59 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v59)
      {
        v59 = +[AMSLogConfig sharedConfig];
      }

      v60 = [v59 OSLogObject];
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = AMSLogableError();
        *buf = 138543874;
        v78 = v61;
        v79 = 2114;
        v80 = v71;
        v81 = 2114;
        v82 = v62;
        _os_log_impl(&dword_0, v60, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode the AMSDialogRequest. error = %{public}@", buf, 0x20u);
      }
    }

    v4 = v53;

    v12 = v68;
  }

  return v50;
}

- (void)_processAuthenticationSuccessWithResult:(id)a3 authenticatedAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = objc_opt_class();
    v11 = AMSLogKey();
    v12 = AMSHashIfNeeded();
    v48 = 138543874;
    v49 = v10;
    v50 = 2114;
    v51 = v11;
    v52 = 2114;
    v53 = v12;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication succeeded. authenticatedAccount = %{public}@", &v48, 0x20u);
  }

  [sub_7B3C() beginSuspendingSubscriptionStatusChangeNotifications];
  [v6 ams_addCookiesForResult:v7];
  v13 = [(AMSVerifyCredentialsTask *)self accountStore];
  [v13 ams_addCookiesForResult:v7 account:0 error:0];

  v14 = [v7 object];

  objc_opt_class();
  v15 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  v16 = [v15 ams_secureToken];

  if (v16)
  {
    v17 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v48 = 138543618;
      v49 = v19;
      v50 = 2114;
      v51 = v20;
      _os_log_impl(&dword_0, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received a strong token.", &v48, 0x16u);
    }

    v21 = [(AMSVerifyCredentialsTask *)self accountStore];
    v22 = [v15 ams_secureToken];
    v23 = [v21 ams_setSecureToken:v22 forAccount:v6 error:0];

    if ((v23 & 1) == 0)
    {
      v24 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = objc_opt_class();
        v27 = AMSLogKey();
        v28 = AMSHashIfNeeded();
        v48 = 138543874;
        v49 = v26;
        v50 = 2114;
        v51 = v27;
        v52 = 2114;
        v53 = v28;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to set the strong token. error = %{public}@", &v48, 0x20u);
      }
    }
  }

  v29 = AMSLogKey();
  [AMSDevice tearDownAllDeviceOfferFollowUpsForAccount:v6 logKey:v29];

  v30 = AMSLogKey();
  v31 = [AMSDevice saveDeviceOffersForAccount:v6 response:v15 logKey:v30];

  if (v31)
  {
    v32 = +[AMSLogConfig sharedDeviceOffersConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    v33 = [v32 OSLogObject];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = AMSLogKey();
      v48 = 138543618;
      v49 = v34;
      v50 = 2114;
      v51 = v35;
      _os_log_impl(&dword_0, v33, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication response had device offers.", &v48, 0x16u);
    }

    v36 = +[AMSProcessInfo isBuddyRunning];
    v37 = +[AMSLogConfig sharedDeviceOffersConfig];
    v38 = v37;
    if (v36)
    {
      if (!v37)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      v39 = [v38 OSLogObject];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v41 = AMSLogKey();
        v48 = 138543618;
        v49 = v40;
        v50 = 2114;
        v51 = v41;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Refusing to post device offer follow-ups because we're running in Buddy.", &v48, 0x16u);
      }
    }

    else
    {
      if (!v37)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      v42 = [v38 OSLogObject];
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = AMSLogKey();
        v48 = 138543618;
        v49 = v43;
        v50 = 2114;
        v51 = v44;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting follow-ups for the device offers.", &v48, 0x16u);
      }

      v38 = [(AMSVerifyCredentialsTask *)self bag];
      v39 = AMSLogKey();
      [AMSDevice postAllDeviceOfferFollowUpsForAccount:v6 priority:0 bag:v38 logKey:v39];
    }
  }

  if ((+[AMSUnitTests isRunningUnitTests]& 1) == 0)
  {
    v45 = sub_7B3C();
    v46 = [v6 ams_DSID];
    [v45 updateWithResponseDictionary:v15 accountIdentifier:v46];

    [sub_7B3C() endSuspendingSubscriptionStatusChangeNotifications];
  }

  v47 = +[NSDate date];
  [v6 ams_setLastAuthenticated:v47];

  [v6 ams_setServerResponse:v15];
  [(AMSVerifyCredentialsTask *)self _handleBiometricsForAuthenticatedAccount:v6];
  [(AMSVerifyCredentialsTask *)self _handleDeviceOffersForAuthenticatedAccount:v6];
  [(AMSVerifyCredentialsTask *)self _removeInactiveDuplicatesForAuthenticatedAccount:v6];
  [(AMSVerifyCredentialsTask *)self _removeRenewCredentialsFollowUp];
}

- (void)_removeInactiveDuplicatesForAuthenticatedAccount:(id)a3
{
  v4 = a3;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v22 = self;
  v5 = [(AMSVerifyCredentialsTask *)self accountStore];
  v6 = [v5 accounts];

  v7 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v21 = v4;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if (([v11 isActive] & 1) == 0 && objc_msgSend(v4, "ams_isDuplicate:", v11))
        {
          v12 = AMSLogKey();
          v13 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
          if (!v13)
          {
            v13 = +[AMSLogConfig sharedConfig];
          }

          v14 = [v13 OSLogObject];
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = objc_opt_class();
            if (v12)
            {
              [NSString stringWithFormat:@"%@: [%@] ", v15, v12];
            }

            else
            {
              [NSString stringWithFormat:@"%@: ", v15, v20];
            }
            v16 = ;
            v17 = AMSHashIfNeeded();
            *buf = 138543618;
            v31 = v16;
            v32 = 2114;
            v33 = v17;
            _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Removing an inactive duplicate of the account we just authenticated. duplicateAccount = %{public}@", buf, 0x16u);

            v4 = v21;
          }

          v18 = [(AMSVerifyCredentialsTask *)v22 accountStore];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_7EFC;
          v23[3] = &unk_14760;
          v24 = v12;
          v25 = v22;
          v19 = v12;
          [v18 removeAccount:v11 withCompletionHandler:v23];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v26 objects:v34 count:16];
    }

    while (v8);
  }
}

+ (void)_postAuthenticationBeganNotification
{
  v2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication began. Setting AuthenticationStarted to now.", &v8, 0x16u);
  }

  v6 = +[NSDate date];
  [AMSDefaults setAuthenticationStarted:v6];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.authbegin", 0, 0, 1u);
}

+ (void)_postAuthenticationFailedNotification
{
  v2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication failed. Setting AuthenticationStarted to nil.", &v7, 0x16u);
  }

  [AMSDefaults setAuthenticationStarted:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.authfail", 0, 0, 1u);
}

+ (void)_postAuthenticationFinishedNotification
{
  v2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication finished. Setting AuthenticationStarted to nil.", &v7, 0x16u);
  }

  [AMSDefaults setAuthenticationStarted:0];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.authfinish", 0, 0, 1u);
}

+ (void)_postAuthenticationSubmittedNotification
{
  v2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication submitted.", &v7, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.authsubmit", 0, 0, 1u);
}

- (void)prepareMetricsActivity
{
  v2 = self;
  AMSVerifyCredentialsTask.prepareMetricsActivity()();
}

- (void)completeMetricsActivityWithPromise:(id)a3
{
  v4 = a3;
  v5 = self;
  AMSVerifyCredentialsTask.completeMetricsActivity(promise:)();
}

@end