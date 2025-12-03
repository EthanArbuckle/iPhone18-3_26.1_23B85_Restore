@interface AMSVerifyCredentialsTask
+ (void)_postAuthenticationBeganNotification;
+ (void)_postAuthenticationFailedNotification;
+ (void)_postAuthenticationFinishedNotification;
+ (void)_postAuthenticationSubmittedNotification;
- (AMSVerifyCredentialsTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag options:(id)options;
- (id)_cookieDictionaryFromAccount:(id)account url:(id)url;
- (id)_createAuthenticateRequestEncoder;
- (id)_createAuthenticateRequestEncoderForAccount:(id)account;
- (id)_createAuthenticateRequestForAccount:(id)account URL:(id)l requestEncoder:(id)encoder;
- (id)_createAuthenticateRequestParametersForAccount:(id)account;
- (id)_createUpdatedAccountWithAuthenticationResult:(id)result;
- (id)_generatePasswordIfNeeded;
- (id)_processAuthenticationFailureWithResult:(id)result;
- (id)_promiseOfAccountFromResult:(id)result orError:(id)error;
- (id)performTask;
- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion;
- (void)_handleBiometricsForAuthenticatedAccount:(id)account;
- (void)_handleDeviceOffersForAuthenticatedAccount:(id)account;
- (void)_handleIDMSRetentionForAuthenticatedAccount:(id)account;
- (void)_processAuthenticationSuccessWithResult:(id)result authenticatedAccount:(id)account;
- (void)_removeInactiveDuplicatesForAuthenticatedAccount:(id)account;
- (void)completeMetricsActivityWithPromise:(id)promise;
- (void)prepareMetricsActivity;
@end

@implementation AMSVerifyCredentialsTask

- (AMSVerifyCredentialsTask)initWithAccount:(id)account accountStore:(id)store bag:(id)bag options:(id)options
{
  accountCopy = account;
  storeCopy = store;
  bagCopy = bag;
  optionsCopy = options;
  v29.receiver = self;
  v29.super_class = AMSVerifyCredentialsTask;
  v15 = [(AMSVerifyCredentialsTask *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_account, account);
    objc_storeStrong(&v16->_accountStore, store);
    objc_storeStrong(&v16->_bag, bag);
    v17 = [[AMSAuthenticateMetrics alloc] initWithBag:bagCopy];
    metrics = v16->_metrics;
    v16->_metrics = v17;

    objc_storeStrong(&v16->_options, options);
    identifier = [accountCopy identifier];
    v20 = [storeCopy accountWithIdentifier:identifier];
    clientInfo = [optionsCopy clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    v16->_accountWasOriginallyActive = [v20 ams_isActiveForMediaType:accountMediaType];

    v23 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v23 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Creating an AMSVerifyCredentialsTask. account = %{public}@", buf, 0x20u);
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

- (id)_promiseOfAccountFromResult:(id)result orError:(id)error
{
  resultCopy = result;
  errorCopy = error;
  v8 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication finished. result = %{public}@ | error = %{public}@", &v35, 0x2Au);
  }

  v14 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject2 = [v14 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = AMSLogKey();
    v35 = 138543618;
    v36 = v16;
    v37 = 2114;
    v38 = v17;
    _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Processing Account", &v35, 0x16u);
  }

  if (resultCopy)
  {
    v18 = [(AMSVerifyCredentialsTask *)self _createUpdatedAccountWithAuthenticationResult:resultCopy];
    [(AMSVerifyCredentialsTask *)self _handleIDMSRetentionForAuthenticatedAccount:v18];
    if (v18)
    {
      v19 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v19)
      {
        v19 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v19 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication succeeded. result = %{public}@ | authenticatedAccount = %{public}@", &v35, 0x2Au);
      }

      [(AMSVerifyCredentialsTask *)self _processAuthenticationSuccessWithResult:resultCopy authenticatedAccount:v18];
      v25 = [[AMSPromiseResult alloc] initWithResult:v18 error:0];
      goto LABEL_23;
    }

    v26 = [(AMSVerifyCredentialsTask *)self _processAuthenticationFailureWithResult:resultCopy];
  }

  else
  {
    [(AMSVerifyCredentialsTask *)self _handleIDMSRetentionForAuthenticatedAccount:0];
    v26 = errorCopy;
  }

  v18 = v26;
  v27 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v27)
  {
    v27 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject4 = [v27 OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
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
    _os_log_impl(&dword_0, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The authentication failed. error = %{public}@", &v35, 0x20u);
  }

  v32 = [AMSPromiseResult alloc];
  ams_sanitizedForSecureCoding = [v18 ams_sanitizedForSecureCoding];
  v25 = [v32 initWithResult:0 error:ams_sanitizedForSecureCoding];

LABEL_23:

  return v25;
}

- (void)AMSURLSession:(id)session task:(id)task handleDialogRequest:(id)request completion:(id)completion
{
  completionCopy = completion;
  [(AMSVerifyCredentialsTask *)self setDialogRequest:request];
  v9 = AMSError();
  completionCopy[2](completionCopy, 0, v9);
}

- (id)_cookieDictionaryFromAccount:(id)account url:(id)url
{
  accountCopy = account;
  urlCopy = url;
  v10 = objc_alloc_init(NSMutableDictionary);
  v23 = urlCopy;
  v24 = accountCopy;
  [accountCopy ams_cookiesForURL:urlCopy];
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
        name = [v12 name];
        v14 = [v10 objectForKeyedSubscript:name];
        if (v14)
        {
          name2 = [v12 name];
          v15 = [v10 objectForKeyedSubscript:?];
          value = [v12 value];
          v36 = value;
          urlCopy = [NSArray arrayWithObjects:&v36 count:1];
          v29 = v15;
          v16 = [v15 arrayByAddingObjectsFromArray:urlCopy];
          v4 = v16;
        }

        else
        {
          value2 = [v12 value];
          v35 = value2;
          v16 = [NSArray arrayWithObjects:&v35 count:1];
          v6 = v16;
        }

        v17 = v16;
        name3 = [v12 name];
        [v10 setObject:v17 forKeyedSubscript:name3];

        v19 = v6;
        v20 = value2;
        if (v14)
        {

          v19 = v29;
          v20 = name2;
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
  account = [(AMSVerifyCredentialsTask *)self account];
  v4 = [(AMSVerifyCredentialsTask *)self _createAuthenticateRequestEncoderForAccount:account];

  return v4;
}

- (id)_createAuthenticateRequestEncoderForAccount:(id)account
{
  v4 = [AMSURLRequestEncoder alloc];
  v5 = [(AMSVerifyCredentialsTask *)self bag];
  v6 = [v4 initWithBag:v5];

  options = [(AMSVerifyCredentialsTask *)self options];
  clientInfo = [options clientInfo];
  [v6 setClientInfo:clientInfo];

  options2 = [(AMSVerifyCredentialsTask *)self options];
  LOBYTE(clientInfo) = [options2 allowServerDialogs];

  if ((clientInfo & 1) == 0)
  {
    [v6 setDialogOptions:1];
  }

  [v6 setIncludeClientVersions:0];
  options3 = [(AMSVerifyCredentialsTask *)self options];
  logKey = [options3 logKey];
  [v6 setLogUUID:logKey];

  [v6 setMescalType:1];
  [v6 setRequestEncoding:2];
  [v6 setShouldSetCookiesFromResponse:0];
  [v6 setShouldSetStorefrontFromResponse:0];

  return v6;
}

- (id)_createAuthenticateRequestForAccount:(id)account URL:(id)l requestEncoder:(id)encoder
{
  encoderCopy = encoder;
  lCopy = l;
  accountCopy = account;
  [encoderCopy setAccount:accountCopy];
  v11 = [(AMSVerifyCredentialsTask *)self _createAuthenticateRequestParametersForAccount:accountCopy];

  v12 = [encoderCopy requestWithMethod:4 bagURL:lCopy parameters:v11];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_3DAC;
  v15[3] = &unk_145D8;
  v15[4] = self;
  v13 = [v12 thenWithBlock:v15];

  return v13;
}

- (id)_createAuthenticateRequestParametersForAccount:(id)account
{
  accountCopy = account;
  v5 = objc_alloc_init(NSMutableDictionary);
  [v5 ams_setNullableObject:&__kCFBooleanTrue forKey:@"createSession"];
  options = [(AMSVerifyCredentialsTask *)self options];
  credentialSource = [options credentialSource];

  v8 = [NSNumber numberWithUnsignedInteger:credentialSource];
  [v5 ams_setNullableObject:v8 forKey:@"credentialSource"];

  v9 = +[AMSDevice deviceGUID];
  [v5 ams_setNullableObject:v9 forKey:@"guid"];

  v10 = [NSNumber numberWithBool:(credentialSource - 5) < 2];
  [v5 ams_setNullableObject:v10 forKey:@"isSilentAuthentication"];

  credential = [accountCopy credential];
  password = [credential password];
  if (credentialSource == &dword_4 + 2)
  {
    v13 = @"homeToken";
  }

  else
  {
    v13 = @"password";
  }

  [v5 ams_setNullableObject:password forKey:v13];

  [v5 ams_setNullableObject:@"0" forKey:@"rmp"];
  v19[0] = @"free";
  v14 = +[AMSSyncPasswordSettingsTask serverValueForFreePasswordSetting:](AMSSyncPasswordSettingsTask, "serverValueForFreePasswordSetting:", [accountCopy ams_freePasswordPromptSetting]);
  v19[1] = @"paid";
  v20[0] = v14;
  v15 = +[AMSSyncPasswordSettingsTask serverValueForPaidPasswordSetting:](AMSSyncPasswordSettingsTask, "serverValueForPaidPasswordSetting:", [accountCopy ams_paidPasswordPromptSetting]);
  v20[1] = v15;
  v16 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v5 ams_setNullableObject:v16 forKey:@"passwordSettings"];

  username = [accountCopy username];
  [v5 ams_setNullableObject:username forKey:@"appleId"];

  [AMSDevice setDeviceOffersCheckEncodingForRequestParameters:v5];

  return v5;
}

- (id)_createUpdatedAccountWithAuthenticationResult:(id)result
{
  resultCopy = result;
  object = [resultCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = object;
  }

  else
  {
    v6 = 0;
  }

  ams_username = [v6 ams_username];
  if (![ams_username length])
  {
    v83 = 0;
    goto LABEL_50;
  }

  v90 = ams_username;
  account = [(AMSVerifyCredentialsTask *)self account];
  v9 = [account copy];

  accountStore = [(AMSVerifyCredentialsTask *)self accountStore];
  ams_altDSID = [v6 ams_altDSID];
  ams_DSID = [v6 ams_DSID];
  ams_username2 = [v6 ams_username];
  v14 = [accountStore ams_iTunesAccountWithAltDSID:ams_altDSID DSID:ams_DSID username:ams_username2];

  v89 = v14;
  selfCopy = self;
  v87 = resultCopy;
  if (v14 && [v9 ams_isDuplicate:v14])
  {
    v15 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v15 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] A duplicate account was added while the authentication was in progress. We'll update the already existing account. existingAccount = %{public}@", buf, 0x20u);

      v14 = v89;
    }

    options = [(AMSVerifyCredentialsTask *)self options];
    clientInfo = [options clientInfo];
    accountMediaType = [clientInfo accountMediaType];
    if ([v9 ams_isActiveForMediaType:accountMediaType])
    {
      options2 = [(AMSVerifyCredentialsTask *)self options];
      clientInfo2 = [options2 clientInfo];
      accountMediaType2 = [clientInfo2 accountMediaType];
      v26 = [v89 ams_isActiveForMediaType:accountMediaType2];

      v14 = v89;
      if (v26)
      {
LABEL_19:
        credential = [v9 credential];
        [v14 setCredential:credential];

        v33 = v14;
        v9 = v33;
        resultCopy = v87;
        ams_username = v90;
        self = selfCopy;
        goto LABEL_21;
      }

      v27 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v27)
      {
        v27 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v27 OSLogObject];
      v29 = selfCopy;
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v30 = objc_opt_class();
        v31 = AMSLogKey();
        *buf = 138543618;
        v94 = v30;
        v29 = selfCopy;
        v95 = 2114;
        v96 = v31;
        _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The existing account wasn't active, but our just authenticated account was active. Updating the existing account to be active.", buf, 0x16u);
      }

      options = [(AMSVerifyCredentialsTask *)v29 options];
      clientInfo = [options clientInfo];
      accountMediaType = [clientInfo accountMediaType];
      [v89 ams_setActive:1 forMediaType:accountMediaType];
    }

    goto LABEL_19;
  }

  ams_username = v90;
LABEL_21:
  ams_creditsString = [v6 ams_creditsString];
  [v9 ams_setCreditsString:ams_creditsString];

  ams_firstName = [v6 ams_firstName];
  [v9 ams_setFirstName:ams_firstName];

  ams_lastName = [v6 ams_lastName];
  [v9 ams_setLastName:ams_lastName];

  [v9 ams_setManagedAppleID:{objc_msgSend(v6, "ams_isManagedAppleID")}];
  ams_privacyAcknowledgement = [v6 ams_privacyAcknowledgement];
  [v9 ams_mergePrivacyAcknowledgement:ams_privacyAcknowledgement];

  response = [resultCopy response];
  ams_storefront = [response ams_storefront];

  v88 = ams_storefront;
  if ([ams_storefront length])
  {
    options3 = [(AMSVerifyCredentialsTask *)self options];
    clientInfo3 = [options3 clientInfo];
    accountMediaType3 = [clientInfo3 accountMediaType];
    v43 = [v9 ams_storefrontForMediaType:accountMediaType3];
    v44 = [v43 isEqualToString:ams_storefront];

    v45 = selfCopy;
    if ((v44 & 1) == 0)
    {
      v46 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v46)
      {
        v46 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v46 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v48 = objc_opt_class();
        v49 = AMSLogKey();
        options4 = [(AMSVerifyCredentialsTask *)selfCopy options];
        clientInfo4 = [options4 clientInfo];
        accountMediaType4 = [clientInfo4 accountMediaType];
        v52 = [v9 ams_storefrontForMediaType:accountMediaType4];
        *buf = 138544130;
        v94 = v48;
        v45 = selfCopy;
        v95 = 2114;
        v96 = v49;
        v97 = 2114;
        v98 = v52;
        v99 = 2114;
        v100 = v88;
        _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's storefront. oldStorefront = %{public}@ | newStorefront = %{public}@", buf, 0x2Au);

        ams_storefront = v88;
      }

      options5 = [(AMSVerifyCredentialsTask *)v45 options];
      clientInfo5 = [options5 clientInfo];
      accountMediaType5 = [clientInfo5 accountMediaType];
      [v9 ams_setStorefront:ams_storefront forMediaType:accountMediaType5];
    }
  }

  ams_altDSID2 = [v6 ams_altDSID];
  if (ams_altDSID2)
  {
    ams_altDSID3 = [v9 ams_altDSID];
    v58 = [ams_altDSID3 isEqualToString:ams_altDSID2];

    if ((v58 & 1) == 0)
    {
      v59 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v59)
      {
        v59 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject4 = [v59 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        options4 = objc_opt_class();
        v61 = AMSLogKey();
        ams_altDSID4 = [v9 ams_altDSID];
        v63 = AMSHashIfNeeded();
        v64 = AMSHashIfNeeded();
        *buf = 138544130;
        v94 = options4;
        v95 = 2114;
        v96 = v61;
        v97 = 2114;
        v98 = v63;
        v99 = 2114;
        v100 = v64;
        _os_log_impl(&dword_0, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's altDSID. oldAltDSID = %{public}@ | newAltDSID = %{public}@", buf, 0x2Au);
      }

      [v9 ams_setAltDSID:ams_altDSID2];
      ams_storefront = v88;
    }
  }

  ams_DSID2 = [v6 ams_DSID];
  if (ams_DSID2)
  {
    ams_DSID3 = [v9 ams_DSID];
    v67 = [ams_DSID3 isEqualToNumber:ams_DSID2];

    if ((v67 & 1) == 0)
    {
      v68 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v68)
      {
        v68 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v68 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v86 = objc_opt_class();
        v70 = AMSLogKey();
        ams_DSID4 = [v9 ams_DSID];
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
        _os_log_impl(&dword_0, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's DSID. oldDSID = %{public}@ | newDSID = %{public}@", buf, 0x2Au);

        ams_username = v90;
      }

      [v9 ams_setDSID:ams_DSID2];
      ams_storefront = v88;
    }
  }

  username = [v9 username];
  v75 = [username isEqualToString:ams_username];

  if ((v75 & 1) == 0)
  {
    v76 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v76)
    {
      v76 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject6 = [v76 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
    {
      v78 = objc_opt_class();
      v79 = AMSLogKey();
      username2 = [v9 username];
      v81 = AMSHashIfNeeded();
      AMSHashIfNeeded();
      v82 = v92 = ams_altDSID2;
      *buf = 138544130;
      v94 = v78;
      v95 = 2114;
      v96 = v79;
      v97 = 2114;
      v98 = v81;
      v99 = 2114;
      v100 = v82;
      _os_log_impl(&dword_0, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating the account's username. oldUsername = %{public}@ | newUsername = %{public}@", buf, 0x2Au);

      ams_altDSID2 = v92;
      ams_username = v90;
    }

    [v9 setUsername:ams_username];
    ams_storefront = v88;
  }

  v83 = v9;

  resultCopy = v87;
LABEL_50:

  return v83;
}

- (id)_generatePasswordIfNeeded
{
  account = [(AMSVerifyCredentialsTask *)self account];
  ams_password = [account ams_password];

  if (ams_password)
  {
    account2 = [(AMSVerifyCredentialsTask *)self account];
    v6 = [AMSPromise promiseWithResult:account2];
  }

  else
  {
    v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      *buf = 138543618;
      v26 = v9;
      v27 = 2114;
      v28 = v10;
      _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The account has no password.", buf, 0x16u);
    }

    options = [(AMSVerifyCredentialsTask *)self options];
    allowPasswordGeneration = [options allowPasswordGeneration];

    if (allowPasswordGeneration != &dword_0 + 1 && (allowPasswordGeneration || (-[AMSVerifyCredentialsTask options](self, "options"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [v13 authenticationType], v13, v14 == &dword_0 + 2)))
    {
      v15 = AMSError();
      v16 = [AMSPromise promiseWithError:v15];
    }

    else
    {
      options2 = [(AMSVerifyCredentialsTask *)self options];
      v15 = [options2 copy];

      [v15 setAuthenticationType:1];
      v18 = [AMSAuthKitUpdateTask alloc];
      account3 = [(AMSVerifyCredentialsTask *)self account];
      v20 = [v18 initWithAccount:account3 options:v15];

      performAuthKitUpdate = [v20 performAuthKitUpdate];
      v16 = [performAuthKitUpdate thenWithBlock:&stru_14618];
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

- (void)_handleIDMSRetentionForAuthenticatedAccount:(id)account
{
  accountCopy = account;
  v5 = accountCopy;
  if (accountCopy)
  {
    isActive = [accountCopy isActive];
    v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v7 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v11 = AMSHashIfNeeded();
      v33 = 138544130;
      v34 = v9;
      v35 = 2114;
      v36 = v10;
      v37 = 1024;
      LODWORD(v38[0]) = isActive;
      WORD2(v38[0]) = 2114;
      *(v38 + 6) = v11;
      _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = %d | authenticatedAccount = %{public}@", &v33, 0x26u);
    }

    [(AMSVerifyCredentialsTask *)self _retainIDMS:isActive forAccount:v5];
  }

  else
  {
    accountStore = [(AMSVerifyCredentialsTask *)self accountStore];
    account = [(AMSVerifyCredentialsTask *)self account];
    ams_altDSID = [account ams_altDSID];
    account2 = [(AMSVerifyCredentialsTask *)self account];
    ams_DSID = [account2 ams_DSID];
    account3 = [(AMSVerifyCredentialsTask *)self account];
    username = [account3 username];
    v19 = [accountStore ams_iTunesAccountWithAltDSID:ams_altDSID DSID:ams_DSID username:username];

    if (v19)
    {
      isActive2 = [v19 isActive];
      v21 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [v21 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        v24 = AMSLogKey();
        v25 = AMSHashIfNeeded();
        v33 = 138544130;
        v34 = v23;
        v35 = 2114;
        v36 = v24;
        v37 = 1024;
        LODWORD(v38[0]) = isActive2;
        WORD2(v38[0]) = 2114;
        *(v38 + 6) = v25;
        _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = %d | accountOnDevice = %{public}@", &v33, 0x26u);
      }

      [(AMSVerifyCredentialsTask *)self _retainIDMS:isActive2 forAccount:v19];
    }

    else
    {
      v26 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v26)
      {
        v26 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v26 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v28 = objc_opt_class();
        v29 = AMSLogKey();
        account4 = [(AMSVerifyCredentialsTask *)self account];
        v31 = AMSHashIfNeeded();
        v33 = 138543874;
        v34 = v28;
        v35 = 2114;
        v36 = v29;
        v37 = 2114;
        v38[0] = v31;
        _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] retainIDMS = 0 | self.account = %{public}@", &v33, 0x20u);
      }

      account5 = [(AMSVerifyCredentialsTask *)self account];
      [(AMSVerifyCredentialsTask *)self _retainIDMS:0 forAccount:account5];
    }
  }
}

- (void)_handleDeviceOffersForAuthenticatedAccount:(id)account
{
  accountCopy = account;
  if ((+[AMSDefaults didRetrieveDeviceOffers]& 1) == 0)
  {
    v5 = [AMSDeviceOfferRegistrationTask alloc];
    v6 = [(AMSVerifyCredentialsTask *)self bag];
    v7 = [v5 initWithAccount:accountCopy bag:v6];

    perform = [v7 perform];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_5B4C;
    v10[3] = &unk_14640;
    v10[4] = self;
    [perform addErrorBlock:v10];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_5C6C;
    v9[3] = &unk_14710;
    v9[4] = self;
    [perform addSuccessBlock:v9];
  }
}

- (void)_handleBiometricsForAuthenticatedAccount:(id)account
{
  accountCopy = account;
  options = [(AMSVerifyCredentialsTask *)self options];
  credentialSource = [options credentialSource];

  v7 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v7)
  {
    v7 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = objc_opt_class();
    v10 = AMSLogKey();
    *buf = 138543874;
    v62 = v9;
    v63 = 2114;
    v64 = v10;
    v65 = 2048;
    v66 = credentialSource;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Determining whether we need to provision biometrics. credentialSource = %ld", buf, 0x20u);
  }

  if (credentialSource != &dword_4 + 1)
  {
    ams_DSID = [accountCopy ams_DSID];
    v16 = [NSString stringWithFormat:@"%@%@", @"mt-tid-", ams_DSID];

    ams_cookies = [accountCopy ams_cookies];
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_674C;
    v59[3] = &unk_14738;
    v11 = v16;
    v60 = v11;
    v18 = [ams_cookies ams_anyWithTest:v59];

    v19 = &_s18AppleMediaServices15MetricsActivityC02nwE0So03OS_F9_activity_pvgTj_ptr;
    v20 = [AMSBiometricsSecurityService isAvailableForAccount:accountCopy];
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

      oSLogObject2 = [v23 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v25 = objc_opt_class();
        v26 = AMSLogKey();
        *buf = 138543618;
        v62 = v25;
        v63 = 2114;
        v64 = v26;
        _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Biometrics are enabled.", buf, 0x16u);
      }
    }

    v27 = [AMSBiometrics stateForAccount:accountCopy];
    if (v27 != &dword_0 + 1)
    {
      v34 = v27;
      v35 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v35)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v35 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v37 = objc_opt_class();
        v38 = AMSLogKey();
        *buf = 138543874;
        v62 = v37;
        v63 = 2114;
        v64 = v38;
        v65 = 2048;
        v66 = v34;
        _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometrics provisioning. biometricState = %ld", buf, 0x20u);
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

    oSLogObject4 = [v28 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      *buf = 138543618;
      v62 = v30;
      v63 = 2112;
      v64 = v31;
      _os_log_impl(&dword_0, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Attestation exists. Checking the ACL version.", buf, 0x16u);
    }

    v32 = objc_alloc_init(AMSKeychainOptions);
    [v32 setPurpose:0];
    [v32 setStyle:{+[AMSKeychainOptions preferredAttestationStyle](AMSKeychainOptions, "preferredAttestationStyle")}];
    if ([AMSCertificateManager shouldUseAccountSpecificCertificatesForAccount:accountCopy])
    {
      v33 = +[AMSCertificateManager accessControlForAccount:forSignaturePurpose:](AMSCertificateManager, "accessControlForAccount:forSignaturePurpose:", accountCopy, [v32 purpose]);
    }

    else
    {
      v33 = [AMSKeychain copyAccessControlRefWithAccount:accountCopy options:v32 error:0];
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

      oSLogObject5 = [v41 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v57 = AMSLogKey();
        *buf = 138543618;
        v62 = v43;
        v19 = &_s18AppleMediaServices15MetricsActivityC02nwE0So03OS_F9_activity_pvgTj_ptr;
        v63 = 2112;
        v64 = v57;
        _os_log_impl(&dword_0, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Attestation is out-of-date. An update is required.", buf, 0x16u);
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

      oSLogObject3 = [v35 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
      isIdentityMapValid = [v19[92] isIdentityMapValid];
      v48 = [isIdentityMapValid resultWithError:0];

      v49 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      v35 = v49;
      if (v48)
      {
        if (!v49)
        {
          v35 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject6 = [v35 OSLogObject];
        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v51 = objc_opt_class();
          v52 = AMSLogKey();
          *buf = 138543618;
          v62 = v51;
          v63 = 2112;
          v64 = v52;
          _os_log_impl(&dword_0, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Provisioning biometrics.", buf, 0x16u);
        }

        v35 = [[AMSBiometricsTokenUpdateTask alloc] initWithAccount:accountCopy];
        oSLogObject3 = [v35 performUpdate];
        v58[0] = _NSConcreteStackBlock;
        v58[1] = 3221225472;
        v58[2] = sub_6790;
        v58[3] = &unk_14538;
        v58[4] = self;
        [oSLogObject3 addFinishBlock:v58];
        [oSLogObject3 waitUntilFinishedWithTimeout:10.0];
        v45 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
        if (!v45)
        {
          v45 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject7 = [v45 OSLogObject];
        if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
        {
          v54 = objc_opt_class();
          v55 = AMSLogKey();
          *buf = 138543618;
          v62 = v54;
          v63 = 2112;
          v64 = v55;
          _os_log_impl(&dword_0, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%@] Finished handling biometrics for an authenticated account.", buf, 0x16u);
        }

        goto LABEL_57;
      }

      if (!v49)
      {
        v35 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v35 OSLogObject];
      if (!os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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

    _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, v46, buf, 0x16u);
LABEL_57:

LABEL_58:
    oSLogObject8 = v60;
    goto LABEL_59;
  }

  v11 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject8 = [v11 OSLogObject];
  if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = AMSLogKey();
    *buf = 138543618;
    v62 = v13;
    v63 = 2114;
    v64 = v14;
    _os_log_impl(&dword_0, oSLogObject8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping biometrics provisioning. The authentication was silent.", buf, 0x16u);
  }

LABEL_59:
}

- (id)_processAuthenticationFailureWithResult:(id)result
{
  resultCopy = result;
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

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = objc_opt_class();
    v8 = AMSHashIfNeeded();
    object = [resultCopy object];
    v10 = AMSHashIfNeeded();
    *buf = 138544130;
    v78 = v7;
    v79 = 2114;
    v80 = v71;
    v81 = 2114;
    v82 = v8;
    v83 = 2112;
    v84 = v10;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The authentication failed. result = %{public}@ | result.object = %@", buf, 0x2Au);
  }

  [objc_opt_class() _postAuthenticationFailedNotification];
  object2 = [resultCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = object2;
  }

  else
  {
    v12 = 0;
  }

  options = [(AMSVerifyCredentialsTask *)self options];
  clientInfo = [options clientInfo];
  accountMediaType = [clientInfo accountMediaType];

  v70 = accountMediaType;
  if (!accountMediaType)
  {
    v70 = +[AMSProcessInfo defaultMediaTypeForCurrentProcess];
  }

  ams_errorCode = [v12 ams_errorCode];
  if (ams_errorCode == &loc_1388 + 1 && [(AMSVerifyCredentialsTask *)self accountWasOriginallyActive])
  {
    v16 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      account = [(AMSVerifyCredentialsTask *)self account];
      v20 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v18;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v20;
      _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received an Account Conversion Needed error for the active account, storing cookies on the account. account = %{public}@", buf, 0x20u);
    }

    account2 = [(AMSVerifyCredentialsTask *)self account];
    if (account2)
    {
      goto LABEL_25;
    }
  }

  accountStore = [(AMSVerifyCredentialsTask *)self accountStore];
  v23 = [accountStore ams_localiTunesAccountForAccountMediaType:v70];
  v74 = 0;
  account2 = [v23 resultWithError:&v74];
  v24 = v74;

  if (account2)
  {
    v25 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v25)
    {
      v25 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject3 = [v25 OSLogObject];
    if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
    {
      v27 = objc_opt_class();
      v28 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v27;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v28;
      _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using the local account for cookie storage. account = %{public}@", buf, 0x20u);
    }

LABEL_25:
    v29 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v29 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v31 = objc_opt_class();
      v32 = AMSHashIfNeeded();
      *buf = 138543874;
      v78 = v31;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v32;
      _os_log_impl(&dword_0, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Saving cookies. account = %{public}@", buf, 0x20u);
    }

    accountStore2 = [(AMSVerifyCredentialsTask *)self accountStore];
    v73 = 0;
    v34 = [accountStore2 ams_addCookiesForResult:resultCopy account:account2 error:&v73];
    oSLogObject7 = v73;

    v36 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    v37 = v36;
    if (v34)
    {
      if (!v36)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v39 = objc_opt_class();
        *buf = 138543618;
        v78 = v39;
        v79 = 2114;
        v80 = v71;
        _os_log_impl(&dword_0, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Saving cookies succeeded.", buf, 0x16u);
      }
    }

    else
    {
      if (!v36)
      {
        v37 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject5 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
      {
        v40 = objc_opt_class();
        v41 = AMSHashIfNeeded();
        AMSHashIfNeeded();
        v42 = v67 = v12;
        AMSHashIfNeeded();
        v43 = v66 = resultCopy;
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
        _os_log_impl(&dword_0, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Saving response cookies to the account failed. result = %{result}@ | error = %{public}@ | account = %{public}@", buf, 0x34u);

        resultCopy = v66;
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

    oSLogObject6 = [v46 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v48 = objc_opt_class();
      v49 = AMSLogableError();
      *buf = 138543874;
      v78 = v48;
      v79 = 2114;
      v80 = v71;
      v81 = 2114;
      v82 = v49;
      _os_log_impl(&dword_0, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve the local iTunes account for cookie storage. error = %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v45)
    {
      v46 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject6 = [v46 OSLogObject];
    if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
    {
      v64 = objc_opt_class();
      *buf = 138543618;
      v78 = v64;
      v79 = 2114;
      v80 = v71;
      _os_log_impl(&dword_0, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to retrieve the local iTunes account for cookie storage and didn’t get an error.", buf, 0x16u);
    }
  }

  account2 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!account2)
  {
    account2 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject7 = [account2 OSLogObject];
  if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_DEFAULT))
  {
    v65 = objc_opt_class();
    *buf = 138543618;
    v78 = v65;
    v79 = 2114;
    v80 = v71;
    _os_log_impl(&dword_0, oSLogObject7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Not saving cookies, no account to save to.", buf, 0x16u);
  }

LABEL_39:

  if (ams_errorCode == -5000 || ams_errorCode == &loc_14B8 || ams_errorCode == &loc_1388 + 1)
  {
    v44 = [NSError errorWithDomain:AMSServerErrorDomain code:v66 userInfo:?];
  }

  else
  {
    v44 = AMSError();
  }

  v50 = v44;
  dialogRequest = [(AMSVerifyCredentialsTask *)self dialogRequest];

  if (dialogRequest)
  {
    v68 = v12;
    v52 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v52)
    {
      v52 = +[AMSLogConfig sharedConfig];
    }

    v53 = resultCopy;
    oSLogObject8 = [v52 OSLogObject];
    if (os_log_type_enabled(oSLogObject8, OS_LOG_TYPE_DEFAULT))
    {
      v55 = objc_opt_class();
      *buf = 138543618;
      v78 = v55;
      v79 = 2114;
      v80 = v71;
      _os_log_impl(&dword_0, oSLogObject8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication resulted in an AMSDialogRequest. Encoding the request.", buf, 0x16u);
    }

    dialogRequest2 = [(AMSVerifyCredentialsTask *)self dialogRequest];
    v72 = 0;
    v57 = [NSKeyedArchiver archivedDataWithRootObject:dialogRequest2 requiringSecureCoding:1 error:&v72];
    v58 = v72;

    if (v57)
    {
      v75 = AMSAuthenticateErrorDialogKey;
      v76 = v57;
      v59 = [NSDictionary dictionaryWithObjects:&v76 forKeys:&v75 count:1];
      [v50 ams_errorByAddingUserInfo:v59];
      v50 = oSLogObject9 = v50;
    }

    else
    {
      v59 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v59)
      {
        v59 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject9 = [v59 OSLogObject];
      if (os_log_type_enabled(oSLogObject9, OS_LOG_TYPE_ERROR))
      {
        v61 = objc_opt_class();
        v62 = AMSLogableError();
        *buf = 138543874;
        v78 = v61;
        v79 = 2114;
        v80 = v71;
        v81 = 2114;
        v82 = v62;
        _os_log_impl(&dword_0, oSLogObject9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode the AMSDialogRequest. error = %{public}@", buf, 0x20u);
      }
    }

    resultCopy = v53;

    v12 = v68;
  }

  return v50;
}

- (void)_processAuthenticationSuccessWithResult:(id)result authenticatedAccount:(id)account
{
  accountCopy = account;
  resultCopy = result;
  v8 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication succeeded. authenticatedAccount = %{public}@", &v48, 0x20u);
  }

  [sub_7B3C() beginSuspendingSubscriptionStatusChangeNotifications];
  [accountCopy ams_addCookiesForResult:resultCopy];
  accountStore = [(AMSVerifyCredentialsTask *)self accountStore];
  [accountStore ams_addCookiesForResult:resultCopy account:0 error:0];

  object = [resultCopy object];

  objc_opt_class();
  v15 = 0;
  if (objc_opt_isKindOfClass())
  {
    v15 = object;
  }

  ams_secureToken = [v15 ams_secureToken];

  if (ams_secureToken)
  {
    v17 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v17 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v48 = 138543618;
      v49 = v19;
      v50 = 2114;
      v51 = v20;
      _os_log_impl(&dword_0, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Received a strong token.", &v48, 0x16u);
    }

    accountStore2 = [(AMSVerifyCredentialsTask *)self accountStore];
    ams_secureToken2 = [v15 ams_secureToken];
    v23 = [accountStore2 ams_setSecureToken:ams_secureToken2 forAccount:accountCopy error:0];

    if ((v23 & 1) == 0)
    {
      v24 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v24 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        _os_log_impl(&dword_0, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to set the strong token. error = %{public}@", &v48, 0x20u);
      }
    }
  }

  v29 = AMSLogKey();
  [AMSDevice tearDownAllDeviceOfferFollowUpsForAccount:accountCopy logKey:v29];

  v30 = AMSLogKey();
  v31 = [AMSDevice saveDeviceOffersForAccount:accountCopy response:v15 logKey:v30];

  if (v31)
  {
    v32 = +[AMSLogConfig sharedDeviceOffersConfig];
    if (!v32)
    {
      v32 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject4 = [v32 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      v35 = AMSLogKey();
      v48 = 138543618;
      v49 = v34;
      v50 = 2114;
      v51 = v35;
      _os_log_impl(&dword_0, oSLogObject4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The authentication response had device offers.", &v48, 0x16u);
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

      oSLogObject5 = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        v41 = AMSLogKey();
        v48 = 138543618;
        v49 = v40;
        v50 = 2114;
        v51 = v41;
        _os_log_impl(&dword_0, oSLogObject5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Refusing to post device offer follow-ups because we're running in Buddy.", &v48, 0x16u);
      }
    }

    else
    {
      if (!v37)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject6 = [v38 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
      {
        v43 = objc_opt_class();
        v44 = AMSLogKey();
        v48 = 138543618;
        v49 = v43;
        v50 = 2114;
        v51 = v44;
        _os_log_impl(&dword_0, oSLogObject6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Posting follow-ups for the device offers.", &v48, 0x16u);
      }

      v38 = [(AMSVerifyCredentialsTask *)self bag];
      oSLogObject5 = AMSLogKey();
      [AMSDevice postAllDeviceOfferFollowUpsForAccount:accountCopy priority:0 bag:v38 logKey:oSLogObject5];
    }
  }

  if ((+[AMSUnitTests isRunningUnitTests]& 1) == 0)
  {
    v45 = sub_7B3C();
    ams_DSID = [accountCopy ams_DSID];
    [v45 updateWithResponseDictionary:v15 accountIdentifier:ams_DSID];

    [sub_7B3C() endSuspendingSubscriptionStatusChangeNotifications];
  }

  v47 = +[NSDate date];
  [accountCopy ams_setLastAuthenticated:v47];

  [accountCopy ams_setServerResponse:v15];
  [(AMSVerifyCredentialsTask *)self _handleBiometricsForAuthenticatedAccount:accountCopy];
  [(AMSVerifyCredentialsTask *)self _handleDeviceOffersForAuthenticatedAccount:accountCopy];
  [(AMSVerifyCredentialsTask *)self _removeInactiveDuplicatesForAuthenticatedAccount:accountCopy];
  [(AMSVerifyCredentialsTask *)self _removeRenewCredentialsFollowUp];
}

- (void)_removeInactiveDuplicatesForAuthenticatedAccount:(id)account
{
  accountCopy = account;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  selfCopy = self;
  accountStore = [(AMSVerifyCredentialsTask *)self accountStore];
  accounts = [accountStore accounts];

  v7 = [accounts countByEnumeratingWithState:&v26 objects:v34 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    v21 = accountCopy;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(accounts);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        if (([v11 isActive] & 1) == 0 && objc_msgSend(accountCopy, "ams_isDuplicate:", v11))
        {
          v12 = AMSLogKey();
          v13 = +[AMSLogConfig sharedAccountsAuthenticationPluginConfig];
          if (!v13)
          {
            v13 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v13 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
            _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@Removing an inactive duplicate of the account we just authenticated. duplicateAccount = %{public}@", buf, 0x16u);

            accountCopy = v21;
          }

          accountStore2 = [(AMSVerifyCredentialsTask *)selfCopy accountStore];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_7EFC;
          v23[3] = &unk_14760;
          v24 = v12;
          v25 = selfCopy;
          v19 = v12;
          [accountStore2 removeAccount:v11 withCompletionHandler:v23];
        }
      }

      v8 = [accounts countByEnumeratingWithState:&v26 objects:v34 count:16];
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

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v8 = 138543618;
    v9 = v4;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication began. Setting AuthenticationStarted to now.", &v8, 0x16u);
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

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication failed. Setting AuthenticationStarted to nil.", &v7, 0x16u);
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

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication finished. Setting AuthenticationStarted to nil.", &v7, 0x16u);
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

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v4 = objc_opt_class();
    v5 = AMSLogKey();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v5;
    _os_log_impl(&dword_0, oSLogObject, OS_LOG_TYPE_INFO, "%{public}@: [%{public}@] Authentication submitted.", &v7, 0x16u);
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.StoreServices.authsubmit", 0, 0, 1u);
}

- (void)prepareMetricsActivity
{
  selfCopy = self;
  AMSVerifyCredentialsTask.prepareMetricsActivity()();
}

- (void)completeMetricsActivityWithPromise:(id)promise
{
  promiseCopy = promise;
  selfCopy = self;
  AMSVerifyCredentialsTask.completeMetricsActivity(promise:)();
}

@end