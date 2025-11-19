@interface AMSAuthenticateTask
+ (AMSBagKeySet)bagKeySet;
+ (id)_accountStoreForOptions:(id)a3;
+ (id)_createFallbackBag;
+ (id)loadCreateAppleIDWithClientInfo:(id)a3 bag:(id)a4;
+ (id)loadCreateAppleIDWithClientInfo:(id)a3 url:(id)a4 bag:(id)a5;
- (AMSAuthenticateTask)initWithAccount:(id)a3 accountStore:(id)a4 options:(id)a5;
- (AMSAuthenticateTask)initWithAccount:(id)a3 accountStore:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSAuthenticateTask)initWithAccount:(id)a3 options:(id)a4;
- (AMSAuthenticateTask)initWithAccount:(id)a3 options:(id)a4 bag:(id)a5;
- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 accountStore:(id)a4 options:(id)a5;
- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 accountStore:(id)a4 options:(id)a5 bag:(id)a6;
- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 options:(id)a4;
- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 options:(id)a4 bag:(id)a5;
- (AMSAuthenticateTask)initWithRequest:(id)a3;
- (AMSAuthenticateTask)initWithRequest:(id)a3 accountStore:(id)a4;
- (AMSAuthenticateTask)initWithRequest:(id)a3 accountStore:(id)a4 bag:(id)a5;
- (AMSAuthenticateTask)initWithRequest:(id)a3 bag:(id)a4;
- (AMSAuthenticateTaskDelegate)delegate;
- (BOOL)_isMetricsEnabled;
- (BOOL)_shouldShowCreateAccountDialogForAccount:(id)a3;
- (id)_accountForAuthenticationWithError:(id *)a3;
- (id)_attemptCompanionAuthenticationForAccount:(id)a3;
- (id)_attemptPasswordReuseAuthenticationForAccount:(id)a3;
- (id)_createAuthKitUpdateTaskForAccount:(id)a3;
- (id)_createAuthKitUpdateTaskForAccount:(id)a3 options:(id)a4;
- (id)_finishWithVerifiedAccount:(id)a3 andAuthKitUpdateResult:(id)a4;
- (id)_performAuthenticationUsingAccount:(id)a3 credentialSource:(unint64_t)a4;
- (id)_runCreateAccountDialog;
- (id)_runCreateAccountDialogWithBag:(id)a3;
- (id)_runDialogRequest:(id)a3;
- (id)_sanitizeError:(id)a3;
- (id)homeID;
- (id)performAuthentication;
- (void)_handleDialogFromError:(id)a3 completion:(id)a4;
- (void)_performAuthenticationAndGeneratePasswordWithAccount:(id)a3;
- (void)_performAuthenticationWithInitialResultsAndAccount:(id)a3;
- (void)_postFollowUpForFailedAuthenticationWithAccount:(id)a3;
- (void)_processAuthKitUpdateResult:(id)a3 error:(id)a4;
- (void)_updateAccountWithProvidedInformation:(id)a3;
- (void)setHomeID:(id)a3;
@end

@implementation AMSAuthenticateTask

- (AMSAuthenticateTask)initWithAccount:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _createFallbackBag];
  v9 = [(AMSAuthenticateTask *)self initWithAccount:v7 options:v6 bag:v8];

  return v9;
}

- (AMSAuthenticateTask)initWithAccount:(id)a3 accountStore:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _createFallbackBag];
  v12 = [(AMSAuthenticateTask *)self initWithAccount:v10 accountStore:v9 options:v8 bag:v11];

  return v12;
}

- (AMSAuthenticateTask)initWithAccount:(id)a3 options:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _accountStoreForOptions:v9];
  v12 = [(AMSAuthenticateTask *)self initWithAccount:v10 accountStore:v11 options:v9 bag:v8];

  return v12;
}

- (AMSAuthenticateTask)initWithAccount:(id)a3 accountStore:(id)a4 options:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AMSSetLogKeyIfNeeded();
  v41.receiver = self;
  v41.super_class = AMSAuthenticateTask;
  v15 = [(AMSTask *)&v41 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStore, a4);
    objc_storeStrong(&v16->_bag, a6);
    v17 = objc_alloc_init(AMSMutablePromise);
    resultPromise = v16->_resultPromise;
    v16->_resultPromise = v17;

    v19 = v12;
    if (!v12)
    {
      v19 = objc_alloc_init(AMSAuthenticateOptions);
    }

    objc_storeStrong(&v16->_options, v19);
    if (!v12)
    {
    }

    v20 = objc_alloc_init(MEMORY[0x1E695DF70]);
    errors = v16->_errors;
    v16->_errors = v20;

    v22 = [[AMSAuthenticateMetrics alloc] initWithBag:v13];
    metrics = v16->_metrics;
    v16->_metrics = v22;

    v24 = [v10 credential];
    v25 = [v24 password];
    v26 = [v25 copy];
    password = v16->_password;
    v16->_password = v26;

    v28 = [v10 credential];
    v29 = [v28 credentialItemForKey:*MEMORY[0x1E6959A00]];
    v30 = [v29 copy];
    rawPassword = v16->_rawPassword;
    v16->_rawPassword = v30;

    v32 = [v10 ams_altDSID];
    v33 = [v32 copy];
    altDSID = v16->_altDSID;
    v16->_altDSID = v33;

    v35 = [v10 ams_DSID];
    DSID = v16->_DSID;
    v16->_DSID = v35;

    v37 = [v10 username];
    v38 = [v37 copy];
    username = v16->_username;
    v16->_username = v38;

    v16->_isLocalAccountProvided = [v10 ams_isLocalAccount];
  }

  return v16;
}

- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 options:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _createFallbackBag];
  v9 = [(AMSAuthenticateTask *)self initWithAuthenticationResults:v7 options:v6 bag:v8];

  return v9;
}

- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 accountStore:(id)a4 options:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _createFallbackBag];
  v12 = [(AMSAuthenticateTask *)self initWithAuthenticationResults:v10 accountStore:v9 options:v8 bag:v11];

  return v12;
}

- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 options:(id)a4 bag:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [objc_opt_class() _accountStoreForOptions:v9];
  v12 = [(AMSAuthenticateTask *)self initWithAuthenticationResults:v10 accountStore:v11 options:v9 bag:v8];

  return v12;
}

- (AMSAuthenticateTask)initWithAuthenticationResults:(id)a3 accountStore:(id)a4 options:(id)a5 bag:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AMSSetLogKeyIfNeeded();
  v27.receiver = self;
  v27.super_class = AMSAuthenticateTask;
  v15 = [(AMSTask *)&v27 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_accountStore, a4);
    objc_storeStrong(&v16->_bag, a6);
    v17 = [v10 copy];
    initialAuthenticationResults = v16->_initialAuthenticationResults;
    v16->_initialAuthenticationResults = v17;

    v19 = objc_alloc_init(AMSMutablePromise);
    resultPromise = v16->_resultPromise;
    v16->_resultPromise = v19;

    v21 = v12;
    if (!v12)
    {
      v21 = objc_alloc_init(AMSAuthenticateOptions);
    }

    objc_storeStrong(&v16->_options, v21);
    if (!v12)
    {
    }

    v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
    errors = v16->_errors;
    v16->_errors = v22;

    v24 = [[AMSAuthenticateMetrics alloc] initWithBag:v13];
    metrics = v16->_metrics;
    v16->_metrics = v24;
  }

  return v16;
}

- (AMSAuthenticateTask)initWithRequest:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() _createFallbackBag];
  v6 = [(AMSAuthenticateTask *)self initWithRequest:v4 bag:v5];

  return v6;
}

- (AMSAuthenticateTask)initWithRequest:(id)a3 accountStore:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [objc_opt_class() _createFallbackBag];
  v9 = [(AMSAuthenticateTask *)self initWithRequest:v7 accountStore:v6 bag:v8];

  return v9;
}

- (AMSAuthenticateTask)initWithRequest:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_opt_class();
  v9 = [v7 options];
  v10 = [v8 _accountStoreForOptions:v9];
  v11 = [(AMSAuthenticateTask *)self initWithRequest:v7 accountStore:v10 bag:v6];

  return v11;
}

- (AMSAuthenticateTask)initWithRequest:(id)a3 accountStore:(id)a4 bag:(id)a5
{
  v7 = a3;
  v8 = a5;
  v9 = [v7 logKey];

  if (v9)
  {
    v10 = [v7 logKey];
    v11 = AMSSetLogKey(v10);
  }

  self->_isServerRequested = [v7 isServerRequested];
  v12 = [v7 account];
  v13 = [v7 options];
  v14 = [(AMSAuthenticateTask *)self initWithAccount:v12 options:v13 bag:v8];

  return v14;
}

- (id)performAuthentication
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSAuthenticateTask_performAuthentication__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __44__AMSAuthenticateTask_performAuthentication__block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) initialAuthenticationResults];
  v3 = v2 == 0;

  v4 = +[AMSLogConfig sharedAccountsOversizeConfig];
  v5 = v4;
  if (v3)
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v45 = objc_opt_class();
      v46 = AMSLogKey();
      v13 = [*(a1 + 32) altDSID];
      v14 = AMSHashIfNeeded(v13);
      v15 = [*(a1 + 32) DSID];
      v16 = AMSHashIfNeeded(v15);
      v17 = [*(a1 + 32) username];
      v18 = AMSHashIfNeeded(v17);
      v19 = [*(a1 + 32) options];
      *buf = 138544642;
      v53 = v45;
      v54 = 2114;
      v55 = v46;
      v56 = 2114;
      v57 = v14;
      v58 = 2114;
      v59 = v16;
      v60 = 2114;
      v61 = v18;
      v62 = 2114;
      v63 = v19;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing an iTunes authentication. altDSID = %{public}@ | DSID = %{public}@ | username = %{public}@ | options = %{public}@", buf, 0x3Eu);
    }
  }

  else
  {
    if (!v4)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = AMSLogKey();
      v9 = [*(a1 + 32) initialAuthenticationResults];
      v10 = [v9 ak_redactedCopy];
      v11 = AMSHashIfNeeded(v10);
      v12 = [*(a1 + 32) options];
      *buf = 138544130;
      v53 = v7;
      v54 = 2114;
      v55 = v8;
      v56 = 2114;
      v57 = v11;
      v58 = 2114;
      v59 = v12;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing an authentication with pre-initialized authentication results. authenticationResults = %{public}@ | options = %{public}@", buf, 0x2Au);
    }
  }

  if ([*(a1 + 32) isLocalAccountProvided])
  {
    v20 = +[AMSUnitTests isRunningUnitTests];
    v21 = +[AMSLogConfig sharedAccountsConfig];
    v22 = v21;
    if (v20)
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = objc_opt_class();
        v25 = AMSLogKey();
        *buf = 138543618;
        v53 = v24;
        v54 = 2114;
        v55 = v25;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Local account provided. Unable to proceed with the authentication because the account provided is a local account.", buf, 0x16u);
      }

      v22 = [MEMORY[0x1E696AD88] defaultCenter];
      v26 = +[AMSLogConfig sharedAccountsConfig];
      [v22 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v26 userInfo:0];
    }

    else
    {
      if (!v21)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v26 = [v22 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
      {
        v33 = objc_opt_class();
        v34 = AMSLogKey();
        *buf = 138543618;
        v53 = v33;
        v54 = 2114;
        v55 = v34;
        _os_log_impl(&dword_192869000, v26, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] Local account provided. Unable to proceed with the authentication because the account provided is a local account.", buf, 0x16u);
      }
    }

    v29 = AMSError(2, @"Local Account Provided", @"Unable to proceed with the authentication because the account provided is a local account.", 0);
    v35 = [*(a1 + 32) resultPromise];
    [v35 finishWithError:v29];

    v32 = [*(a1 + 32) resultPromise];
  }

  else
  {
    v27 = *(a1 + 32);
    v51 = 0;
    v28 = [v27 _accountForAuthenticationWithError:&v51];
    v29 = v51;
    v30 = *(a1 + 32);
    if (v29)
    {
      v31 = [v30 resultPromise];
      [v31 finishWithError:v29];

      v32 = [*(a1 + 32) resultPromise];
    }

    else
    {
      if ([v30 _isMetricsEnabled])
      {
        v36 = [AMSAuthenticateMetricsContext alloc];
        v37 = [*(a1 + 32) options];
        v38 = [(AMSAuthenticateMetricsContext *)v36 initWithOptions:v37 account:v28];

        -[AMSAuthenticateMetricsContext setIsServerRequested:](v38, "setIsServerRequested:", [*(a1 + 32) isServerRequested]);
        v39 = [*(a1 + 32) metrics];
        v40 = [v39 enqueueWithEvent:0 context:v38];
      }

      v41 = objc_alloc_init(AMSMutablePromise);
      if ([*(a1 + 32) _shouldShowCreateAccountDialogForAccount:v28])
      {
        v42 = [*(a1 + 32) _runCreateAccountDialog];
        [(AMSMutablePromise *)v41 finishWithPromise:v42];
      }

      else
      {
        [(AMSMutablePromise *)v41 finishWithResult:MEMORY[0x1E695E118]];
      }

      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __44__AMSAuthenticateTask_performAuthentication__block_invoke_56;
      v49[3] = &unk_1E73B3B88;
      v49[4] = *(a1 + 32);
      v50 = v28;
      [(AMSPromise *)v41 resultWithCompletion:v49];
      objc_initWeak(buf, *(a1 + 32));
      v43 = [*(a1 + 32) resultPromise];
      v47[0] = MEMORY[0x1E69E9820];
      v47[1] = 3221225472;
      v47[2] = __44__AMSAuthenticateTask_performAuthentication__block_invoke_2;
      v47[3] = &unk_1E73B3BB0;
      objc_copyWeak(&v48, buf);
      [v43 addFinishBlock:v47];

      v32 = [*(a1 + 32) resultPromise];
      objc_destroyWeak(&v48);
      objc_destroyWeak(buf);
    }
  }

  return v32;
}

void __44__AMSAuthenticateTask_performAuthentication__block_invoke_56(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = *(a1 + 32);
  v10 = v4;
  if (v4)
  {
    v6 = [v5 resultPromise];
    [v6 finishWithError:v10];
  }

  else
  {
    v7 = [v5 initialAuthenticationResults];

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    if (v7)
    {
      [v8 _performAuthenticationWithInitialResultsAndAccount:v9];
    }

    else
    {
      [v8 _performAuthenticationAndGeneratePasswordWithAccount:v9];
    }
  }
}

void __44__AMSAuthenticateTask_performAuthentication__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained _isMetricsEnabled])
  {
    v1 = [WeakRetained metrics];
    [v1 flushEvents];
  }
}

- (id)_accountForAuthenticationWithError:(id *)a3
{
  v115 = *MEMORY[0x1E69E9840];
  v4 = [(AMSAuthenticateTask *)self accountStore];
  v5 = [(AMSAuthenticateTask *)self initialAuthenticationResults];

  v6 = 0x1E73B0000uLL;
  v7 = +[AMSLogConfig sharedAccountsConfig];
  v8 = v7;
  if (v5)
  {
    if (!v7)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = [(AMSAuthenticateTask *)self initialAuthenticationResults];
      [v12 ak_redactedCopy];
      v14 = v13 = v4;
      v15 = AMSHashIfNeeded(v14);
      *buf = 138543874;
      v106 = v10;
      v107 = 2114;
      v108 = v11;
      v109 = 2114;
      v110 = v15;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking for an existing account matching authentication results. authenticationResults = %{public}@", buf, 0x20u);

      v4 = v13;
      v6 = 0x1E73B0000uLL;
    }

    v16 = MEMORY[0x1E6959A48];
    v17 = [v4 ams_mediaType];
    v18 = [v16 ams_accountTypeIdentifierForMediaType:v17];

    v19 = [(AMSAuthenticateTask *)self initialAuthenticationResults];
    v20 = [v19 objectForKeyedSubscript:*MEMORY[0x1E698DB40]];

    v21 = [v4 ams_accountWithAltDSID:v20 DSID:0 username:0 accountTypeIdentifier:v18];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 username];

      if (v23)
      {
LABEL_34:

LABEL_35:
        if (([v22 isActive] & 1) == 0)
        {
          v57 = [MEMORY[0x1E69DF068] sharedManager];
          v58 = [v57 currentPersona];

          if ([v58 isEnterprisePersona])
          {
            v59 = [v58 userPersonaUniqueString];
            v60 = [*(v6 + 3552) sharedAccountsConfig];
            if (!v60)
            {
              v60 = [*(v6 + 3552) sharedConfig];
            }

            v61 = [v60 OSLogObject];
            if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
            {
              v62 = v4;
              v63 = AMSLogKey();
              v64 = MEMORY[0x1E696AEC0];
              v65 = objc_opt_class();
              v66 = v65;
              if (v63)
              {
                a3 = AMSLogKey();
                [v64 stringWithFormat:@"%@: [%@] ", v66, a3];
              }

              else
              {
                [v64 stringWithFormat:@"%@: ", v65];
              }
              v67 = ;
              v81 = AMSHashIfNeeded(v59);
              *buf = 138543618;
              v106 = v67;
              v107 = 2114;
              v108 = v81;
              _os_log_impl(&dword_192869000, v61, OS_LOG_TYPE_DEFAULT, "%{public}@The current persona is an enterprise persona. Adding a persona identifier to the account. personaIdentifier = %{public}@", buf, 0x16u);
              if (v63)
              {

                v67 = a3;
              }

              v4 = v62;
              v6 = 0x1E73B0000uLL;
            }

            [v22 setObject:v59 forKeyedSubscript:*MEMORY[0x1E69597A0]];
          }
        }

        v82 = [(AMSAuthenticateTask *)self options];
        v83 = [v82 clientInfo];
        v84 = [v83 accountMediaType];

        v85 = [(AMSAuthenticateTask *)self accountStore];
        v86 = [v85 ams_activeiTunesAccount];

        if (v86)
        {
          goto LABEL_76;
        }

        v87 = [(AMSAuthenticateTask *)self options];
        if ([v87 canMakeAccountActive])
        {
          v88 = [v22 parentAccount];

          if (!v88)
          {
            v89 = [*(v6 + 3552) sharedAccountsConfig];
            if (!v89)
            {
              v89 = [*(v6 + 3552) sharedConfig];
            }

            v90 = [v89 OSLogObject];
            if (os_log_type_enabled(v90, OS_LOG_TYPE_DEFAULT))
            {
              v91 = objc_opt_class();
              v92 = AMSLogKey();
              *buf = 138543874;
              v106 = v91;
              v107 = 2114;
              v108 = v92;
              v109 = 2114;
              v110 = v84;
              _os_log_impl(&dword_192869000, v90, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The device doesn't have an active account for %{public}@. We'll make the account active if we successfully authenticate it.", buf, 0x20u);
            }

            [v22 ams_setActive:1 forMediaType:v84];
LABEL_76:
            [(AMSAuthenticateTask *)self _updateAccountWithProvidedInformation:v22];
            v71 = v22;

            goto LABEL_77;
          }
        }

        else
        {
        }

        v93 = [*(v6 + 3552) sharedAccountsConfig];
        if (!v93)
        {
          v93 = [*(v6 + 3552) sharedConfig];
        }

        v94 = [v93 OSLogObject];
        if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
        {
          v95 = objc_opt_class();
          v96 = AMSLogKey();
          *buf = 138543618;
          v106 = v95;
          v107 = 2114;
          v108 = v96;
          _os_log_impl(&dword_192869000, v94, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We would normally make the account active, but canMakeAccountActive is set to false.", buf, 0x16u);
        }

        goto LABEL_76;
      }

      v24 = +[AMSLogConfig sharedAccountsConfig];
      if (!v24)
      {
        v24 = +[AMSLogConfig sharedConfig];
      }

      v25 = [v24 OSLogObject];
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        v98 = objc_opt_class();
        v26 = AMSLogKey();
        v99 = [(AMSAuthenticateTask *)self initialAuthenticationResults];
        v27 = [v99 ak_redactedCopy];
        AMSHashIfNeeded(v27);
        v28 = v101 = v4;
        v29 = AMSHashIfNeeded(v22);
        *buf = 138544130;
        v106 = v98;
        v107 = 2114;
        v108 = v26;
        v109 = 2114;
        v110 = v28;
        v111 = 2114;
        v112 = v29;
        _os_log_impl(&dword_192869000, v25, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Found an account matching the given authentication results’ altDSID, but it has no username. authenticationResults = %{public}@ | account = %{public}@", buf, 0x2Au);

        v6 = 0x1E73B0000;
        v4 = v101;
      }
    }

    else
    {
      v22 = +[AMSLogConfig sharedAccountsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v24 = [v22 OSLogObject];
      if (!os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_27;
      }

      v103 = v4;
      v43 = objc_opt_class();
      v25 = AMSLogKey();
      v44 = [(AMSAuthenticateTask *)self initialAuthenticationResults];
      v45 = [v44 ak_redactedCopy];
      v46 = AMSHashIfNeeded(v45);
      *buf = 138543874;
      v106 = v43;
      v4 = v103;
      v107 = 2114;
      v108 = v25;
      v109 = 2114;
      v110 = v46;
      _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Did not find an account matching the given authentication results. authenticationResults = %{public}@", buf, 0x20u);

      v6 = 0x1E73B0000uLL;
    }

LABEL_27:
    goto LABEL_28;
  }

  if (!v7)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v30 = [v8 OSLogObject];
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v100 = objc_opt_class();
    v31 = AMSLogKey();
    v32 = [(AMSAuthenticateTask *)self altDSID];
    v33 = AMSHashIfNeeded(v32);
    v34 = [(AMSAuthenticateTask *)self DSID];
    AMSHashIfNeeded(v34);
    v35 = v102 = v4;
    v36 = [(AMSAuthenticateTask *)self username];
    v37 = AMSHashIfNeeded(v36);
    *buf = 138544386;
    v106 = v100;
    v107 = 2114;
    v108 = v31;
    v109 = 2114;
    v110 = v33;
    v111 = 2114;
    v112 = v35;
    v113 = 2114;
    v114 = v37;
    _os_log_impl(&dword_192869000, v30, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Looking for an existing account. altDSID = %{public}@ | DSID = %{public}@ | username = %{public}@", buf, 0x34u);

    v6 = 0x1E73B0000uLL;
    v4 = v102;
  }

  v38 = [(AMSAuthenticateTask *)self altDSID];
  if (v38 || ([(AMSAuthenticateTask *)self DSID], (v38 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v39 = v38;
LABEL_19:

    goto LABEL_20;
  }

  v72 = [(AMSAuthenticateTask *)self username];

  if (!v72)
  {
    v73 = [v4 ams_demoAccount];
    v74 = [v73 username];
    [(AMSAuthenticateTask *)self setUsername:v74];

    v75 = [(AMSAuthenticateTask *)self username];

    if (v75)
    {
      v39 = +[AMSLogConfig sharedAccountsConfig];
      if (!v39)
      {
        v39 = +[AMSLogConfig sharedConfig];
      }

      v76 = [v39 OSLogObject];
      if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
      {
        v77 = objc_opt_class();
        v78 = AMSLogKey();
        v79 = [(AMSAuthenticateTask *)self username];
        v80 = AMSHashIfNeeded(v79);
        *buf = 138543874;
        v106 = v77;
        v107 = 2114;
        v108 = v78;
        v109 = 2114;
        v110 = v80;
        _os_log_impl(&dword_192869000, v76, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Using the device's demo account. username = %{public}@", buf, 0x20u);
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v40 = [(AMSAuthenticateTask *)self altDSID];
  v41 = [(AMSAuthenticateTask *)self DSID];
  v42 = [(AMSAuthenticateTask *)self username];
  v22 = [v4 ams_iTunesAccountWithAltDSID:v40 DSID:v41 username:v42];

  if (v22)
  {
    goto LABEL_35;
  }

LABEL_28:
  v47 = +[AMSRestrictions allowActiveAccountModifications];
  v48 = [*(v6 + 3552) sharedAccountsConfig];
  v49 = v48;
  if (v47)
  {
    if (!v48)
    {
      v49 = [*(v6 + 3552) sharedConfig];
    }

    v50 = [v49 OSLogObject];
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = objc_opt_class();
      v52 = AMSLogKey();
      *buf = 138543618;
      v106 = v51;
      v107 = 2114;
      v108 = v52;
      _os_log_impl(&dword_192869000, v50, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Failed to find an existing account. We'll create a new one instead.", buf, 0x16u);
    }

    v53 = MEMORY[0x1E6959A48];
    v54 = [(AMSAuthenticateTask *)self options];
    v55 = [v54 clientInfo];
    v56 = [v55 accountMediaType];
    v18 = [v53 ams_accountTypeIdentifierForMediaType:v56];

    v20 = [v4 _ams_accountTypeWithAccountTypeIdentifier:v18 error:0];
    v22 = [objc_alloc(MEMORY[0x1E6959A28]) initWithAccountType:v20];
    [v22 setActive:0];
    goto LABEL_34;
  }

  if (!v48)
  {
    v49 = [*(v6 + 3552) sharedConfig];
  }

  v68 = [v49 OSLogObject];
  if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
  {
    v69 = objc_opt_class();
    v70 = AMSLogKey();
    *buf = 138543618;
    v106 = v69;
    v107 = 2114;
    v108 = v70;
    _os_log_impl(&dword_192869000, v68, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to find an existing account. Unable to proceed with the authentication because account modifications are not allowed.", buf, 0x16u);
  }

  if (a3)
  {
    AMSError(8, @"Account Modifications Disabled", @"Account modifications are disabled. Unable to sign into a new account.", 0);
    *a3 = v71 = 0;
  }

  else
  {
    v71 = 0;
  }

LABEL_77:

  return v71;
}

+ (id)_accountStoreForOptions:(id)a3
{
  v3 = a3;
  v4 = [v3 clientInfo];
  v5 = [v4 accountMediaType];
  v6 = MEMORY[0x1E6959A48];
  if (v5)
  {
    v7 = [v3 clientInfo];
    v8 = [v7 accountMediaType];
    v9 = [v6 ams_sharedAccountStoreForMediaType:v8];
  }

  else
  {
    v9 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  }

  return v9;
}

- (id)_attemptCompanionAuthenticationForAccount:(id)a3
{
  v3 = AMSError(5, @"Platform not supported", 0, 0);
  v4 = [AMSPromise promiseWithError:v3];

  return v4;
}

- (id)_attemptPasswordReuseAuthenticationForAccount:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSAuthenticateTask *)self options];
  if ([v6 authenticationType] == 2 || (objc_msgSend(v4, "ams_password"), (v7 = objc_claimAutoreleasedReturnValue()) == 0))
  {

    goto LABEL_10;
  }

  v8 = v7;
  v9 = [(AMSAuthenticateTask *)self options];
  v10 = [v9 serviceIdentifier];

  if (v10)
  {
LABEL_10:
    v18 = AMSError(2, @"Password reuse not available for account", @"The account state does not support password reuse.", 0);
    [(AMSMutablePromise *)v5 finishWithError:v18];

    goto LABEL_11;
  }

  v11 = +[AMSLogConfig sharedAccountsOversizeConfig];
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
    v25 = v13;
    v26 = 2114;
    v27 = v14;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Attempting to authenticate the account by reusing its password.", buf, 0x16u);
  }

  v15 = [(AMSAuthenticateTask *)self options];
  v16 = [v15 credentialSource];

  v17 = [(AMSAuthenticateTask *)self _performAuthenticationUsingAccount:v4 credentialSource:v16];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __69__AMSAuthenticateTask__attemptPasswordReuseAuthenticationForAccount___block_invoke;
  v20[3] = &unk_1E73B3770;
  v21 = v5;
  v22 = v4;
  v23 = self;
  [v17 resultWithCompletion:v20];

LABEL_11:

  return v5;
}

void __69__AMSAuthenticateTask__attemptPasswordReuseAuthenticationForAccount___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) finishWithResult:a2];
  }

  else
  {
    [*(a1 + 40) ams_setPassword:0];
    v6 = +[AMSLogConfig sharedAccountsOversizeConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSLogableError(v5);
      v13 = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v9;
      v17 = 2114;
      v18 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to authenticate the account by reusing its password. error = %{public}@", &v13, 0x20u);
    }

    if (v5)
    {
      v11 = v5;
    }

    else
    {
      v11 = AMSError(2, @"Password reuse not available for account", @"Password reuse failed however verify credentials did not return an error", 0);
    }

    v12 = v11;
    [*(a1 + 32) finishWithError:v11];
  }
}

- (id)_createAuthKitUpdateTaskForAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateTask *)self options];
  v6 = [(AMSAuthenticateTask *)self _createAuthKitUpdateTaskForAccount:v4 options:v5];

  return v6;
}

- (id)_createAuthKitUpdateTaskForAccount:(id)a3 options:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[AMSAuthKitUpdateTask alloc] initWithAccount:v6 options:v5];

  v8 = [AMSPromise promiseWithResult:v7];

  return v8;
}

+ (id)_createFallbackBag
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = AMSLogKey();
    v7 = MEMORY[0x1E696AEC0];
    v8 = objc_opt_class();
    v9 = v8;
    if (v6)
    {
      v2 = AMSLogKey();
      [v7 stringWithFormat:@"%@: [%@] ", v9, v2];
    }

    else
    {
      [v7 stringWithFormat:@"%@: ", v8];
    }
    v10 = ;
    *buf = 138543362;
    v14 = v10;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@Falling back to sub profile bag", buf, 0xCu);
    if (v6)
    {

      v10 = v2;
    }
  }

  v11 = [a1 createBagForSubProfile];

  return v11;
}

- (BOOL)_shouldShowCreateAccountDialogForAccount:(id)a3
{
  v4 = a3;
  v5 = [(AMSAuthenticateTask *)self options];
  v6 = [v5 enableAccountCreation];

  if (v6 && ([v4 username], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    v8 = [MEMORY[0x1E6959A48] ams_shieldSignInOrCreateFlows] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (id)_finishWithVerifiedAccount:(id)a3 andAuthKitUpdateResult:(id)a4
{
  v51 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v12 = AMSHashIfNeeded(v6);
      *buf = 138543874;
      v46 = v10;
      v47 = 2114;
      v48 = v11;
      v49 = 2114;
      v50 = v12;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finish with verified account after successful authentication. account = %{public}@", buf, 0x20u);
    }

    v13 = [(AMSAuthenticateTask *)self accountStore];
    v14 = [(AMSAuthenticateTask *)self options];
    v15 = [v14 clientInfo];
    v16 = [v15 accountMediaType];

    v17 = [v13 ams_activeiTunesAccountForMediaType:v16];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __73__AMSAuthenticateTask__finishWithVerifiedAccount_andAuthKitUpdateResult___block_invoke;
    v40[3] = &unk_1E73B3BD8;
    v40[4] = self;
    v41 = v6;
    v42 = v16;
    v43 = v13;
    v44 = v7;
    v18 = v13;
    v19 = v16;
    [v17 addFinishBlock:v40];

    v20 = [(AMSAuthenticateTask *)self resultPromise];

    goto LABEL_25;
  }

  v21 = [(AMSAuthenticateTask *)self errors];
  v22 = [v21 count];

  v23 = [(AMSAuthenticateTask *)self errors];
  v24 = v23;
  if (v22 < 2)
  {
    v27 = [v23 count];

    if (v27 != 1)
    {
      v19 = AMSError(100, @"Authentication Failed", @"The authentication failed with an unknown error.", 0);
      goto LABEL_13;
    }

    v24 = [(AMSAuthenticateTask *)self errors];
    v25 = [v24 objectAtIndexedSubscript:0];
    v26 = AMSError(100, @"Authentication Failed", @"The authentication failed.", v25);
  }

  else
  {
    v25 = [v23 copy];
    v26 = AMSErrorWithMultipleUnderlyingErrors(100, @"Authentication Failed", @"The authentication failed.", v25);
  }

  v19 = v26;

LABEL_13:
  v18 = [(AMSAuthenticateTask *)self _sanitizeError:v19];
  v28 = +[AMSLogConfig sharedAccountsConfig];
  if (!v28)
  {
    v28 = +[AMSLogConfig sharedConfig];
  }

  v29 = [v28 OSLogObject];
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = AMSLogKey();
    v31 = MEMORY[0x1E696AEC0];
    v32 = objc_opt_class();
    v33 = v32;
    if (v30)
    {
      v39 = AMSLogKey();
      [v31 stringWithFormat:@"%@: [%@] ", v33, v39];
    }

    else
    {
      [v31 stringWithFormat:@"%@: ", v32];
    }
    v34 = ;
    v35 = AMSLogableError(v18);
    *buf = 138543618;
    v46 = v34;
    v47 = 2114;
    v48 = v35;
    _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_ERROR, "%{public}@The authentication failed. error = %{public}@", buf, 0x16u);
    if (v30)
    {

      v34 = v39;
    }
  }

  v36 = [(AMSAuthenticateTask *)self resultPromise];
  [v36 finishWithError:v18];

  if (([v19 ams_recursiveHasDomain:@"AMSErrorDomain" code:308] & 1) == 0)
  {
    v37 = [v7 account];
    [(AMSAuthenticateTask *)self _postFollowUpForFailedAuthenticationWithAccount:v37];
  }

  v20 = [(AMSAuthenticateTask *)self resultPromise];
LABEL_25:

  return v20;
}

void __73__AMSAuthenticateTask__finishWithVerifiedAccount_andAuthKitUpdateResult___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = [*(a1 + 32) options];
  v6 = [v5 canMakeAccountActive];
  if (v4 || !v6)
  {

LABEL_10:
    v15 = [*(a1 + 32) options];
    if ([v15 canMakeAccountActive])
    {
      v16 = [*(a1 + 40) isActive];

      if (v16)
      {
LABEL_28:
        v28 = [[AMSAuthenticateResult alloc] initWithAccount:*(a1 + 40)];
        [(AMSAuthenticateResult *)v28 setAuthKitUpdateResult:*(a1 + 64)];
        v29 = [*(a1 + 32) resultPromise];
        [v29 finishWithResult:v28];

        goto LABEL_29;
      }

      v15 = +[AMSLogConfig sharedAccountsConfig];
      if (!v15)
      {
        v15 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v15 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = AMSLogKey();
        v19 = MEMORY[0x1E696AEC0];
        v20 = objc_opt_class();
        v21 = v20;
        if (v18)
        {
          v2 = AMSLogKey();
          [v19 stringWithFormat:@"%@: [%@] ", v21, v2];
        }

        else
        {
          [v19 stringWithFormat:@"%@: ", v20];
        }
        v22 = ;
        v26 = AMSHashIfNeeded(*(a1 + 40));
        v27 = AMSHashIfNeeded(v4);
        *buf = 138543874;
        v34 = v22;
        v35 = 2114;
        v36 = v26;
        v37 = 2114;
        v38 = v27;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@We tried to make the account active, but after authentication a different account is active. account = %{public}@ | activeAccount = %{public}@", buf, 0x20u);
        if (v18)
        {

          v22 = v2;
        }
      }
    }

    goto LABEL_28;
  }

  v7 = [*(a1 + 40) isActive];

  if (v7)
  {
    goto LABEL_10;
  }

  v8 = +[AMSLogConfig sharedAccountsConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = AMSLogKey();
    v11 = MEMORY[0x1E696AEC0];
    v12 = objc_opt_class();
    v13 = v12;
    if (v10)
    {
      v2 = AMSLogKey();
      [v11 stringWithFormat:@"%@: [%@] ", v13, v2];
    }

    else
    {
      [v11 stringWithFormat:@"%@: ", v12];
    }
    v14 = ;
    v23 = AMSHashIfNeeded(*(a1 + 40));
    *buf = 138543618;
    v34 = v14;
    v35 = 2114;
    v36 = v23;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@We tried to make the account active, but after authentication it isn’t active. Making it active and saving it. account = %{public}@", buf, 0x16u);
    if (v10)
    {

      v14 = v2;
    }
  }

  [*(a1 + 40) ams_setActive:1 forMediaType:*(a1 + 48)];
  v24 = [*(a1 + 56) ams_saveAccount:*(a1 + 40) withOptions:1];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __73__AMSAuthenticateTask__finishWithVerifiedAccount_andAuthKitUpdateResult___block_invoke_93;
  v30[3] = &unk_1E73B3538;
  v25 = *(a1 + 40);
  v30[4] = *(a1 + 32);
  v31 = v25;
  v32 = *(a1 + 64);
  [v24 addFinishBlock:v30];

LABEL_29:
}

void __73__AMSAuthenticateTask__finishWithVerifiedAccount_andAuthKitUpdateResult___block_invoke_93(uint64_t a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v3 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v15 = AMSLogableError(v5);
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v15;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@There was a problem saving the verified active account. error: %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v3;
      }
    }

    v16 = [*(a1 + 32) resultPromise];
    [v16 finishWithError:v5];
  }

  else
  {
    v13 = [[AMSAuthenticateResult alloc] initWithAccount:*(a1 + 40)];
    [(AMSAuthenticateResult *)v13 setAuthKitUpdateResult:*(a1 + 48)];
    v14 = [*(a1 + 32) resultPromise];
    [v14 finishWithResult:v13];
  }
}

- (void)_handleDialogFromError:(id)a3 completion:(id)a4
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 userInfo];
  v9 = [v8 objectForKeyedSubscript:@"AMSAuthenticateErrorDialog"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_9;
  }

  v10 = v9;

  if (!v10)
  {
LABEL_9:
    v7[2](v7, v6);
    v10 = 0;
    goto LABEL_38;
  }

  v11 = +[AMSLogConfig sharedAccountsConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = AMSLogKey();
    v14 = MEMORY[0x1E696AEC0];
    v44 = self;
    v15 = objc_opt_class();
    v16 = v15;
    if (v13)
    {
      self = AMSLogKey();
      [v14 stringWithFormat:@"%@: [%@] ", v16, self];
    }

    else
    {
      [v14 stringWithFormat:@"%@: ", v15];
    }
    v17 = ;
    *buf = 138543362;
    v54 = v17;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@The authentication's error contained an encoded AMSDialogRequest. Decoding it.", buf, 0xCu);
    if (v13)
    {

      v17 = self;
    }

    self = v44;
  }

  v50 = 0;
  v18 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v50];
  v19 = v50;
  if (v18)
  {
    v20 = [(AMSAuthenticateTask *)self delegate];
    v21 = objc_opt_respondsToSelector();

    if (v21)
    {
      v22 = +[AMSLogConfig sharedAccountsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = AMSLogKey();
        v25 = self;
        v26 = v24;
        v27 = MEMORY[0x1E696AEC0];
        v45 = v25;
        v28 = objc_opt_class();
        v29 = v28;
        if (v26)
        {
          v43 = AMSLogKey();
          [v27 stringWithFormat:@"%@: [%@] ", v29, v43];
        }

        else
        {
          [v27 stringWithFormat:@"%@: ", v28];
        }
        v30 = ;
        *buf = 138543362;
        v54 = v30;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Sending dialog request to delegate.", buf, 0xCu);
        if (v26)
        {

          v30 = v43;
        }

        self = v45;
      }

      v41 = [(AMSAuthenticateTask *)self _runDialogRequest:v18];
      v49[0] = MEMORY[0x1E69E9820];
      v49[1] = 3221225472;
      v49[2] = __57__AMSAuthenticateTask__handleDialogFromError_completion___block_invoke;
      v49[3] = &unk_1E73B3C00;
      v49[4] = self;
      v42 = [v41 thenWithBinaryPromiseBlock:v49];
      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __57__AMSAuthenticateTask__handleDialogFromError_completion___block_invoke_2;
      v46[3] = &unk_1E73B3C28;
      v46[4] = self;
      v47 = v6;
      v48 = v7;
      [v42 addFinishBlock:v46];
    }

    else
    {
      v51 = @"AMSAuthenticateErrorDialog";
      v52 = v18;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v39 = [v6 ams_errorByAddingUserInfo:v38];
      v7[2](v7, v39);
    }
  }

  else
  {
    v31 = +[AMSLogConfig sharedAccountsConfig];
    if (!v31)
    {
      v31 = +[AMSLogConfig sharedConfig];
    }

    v32 = [v31 OSLogObject];
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = AMSLogKey();
      v34 = MEMORY[0x1E696AEC0];
      v35 = objc_opt_class();
      v36 = v35;
      if (v33)
      {
        v44 = AMSLogKey();
        [v34 stringWithFormat:@"%@: [%@] ", v36, v44];
      }

      else
      {
        [v34 stringWithFormat:@"%@: ", v35];
      }
      v37 = ;
      v40 = AMSLogableError(v19);
      *buf = 138543618;
      v54 = v37;
      v55 = 2114;
      v56 = v40;
      _os_log_impl(&dword_192869000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to decode the AMSDialogRequest. error = %{public}@", buf, 0x16u);
      if (v33)
      {

        v37 = v44;
      }
    }

    v7[2](v7, v6);
  }

LABEL_38:
}

id __57__AMSAuthenticateTask__handleDialogFromError_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [AMSHandleDialogResultTask alloc];
  v5 = [*(a1 + 32) bag];
  v6 = [(AMSHandleDialogResultTask *)v4 initWithResult:v3 bag:v5];

  v7 = [(AMSHandleDialogResultTask *)v6 perform];

  return v7;
}

void __57__AMSAuthenticateTask__handleDialogFromError_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedAccountsConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = AMSLogKey();
      v9 = MEMORY[0x1E696AEC0];
      v10 = objc_opt_class();
      v11 = v10;
      if (v8)
      {
        v3 = AMSLogKey();
        [v9 stringWithFormat:@"%@: [%@] ", v11, v3];
      }

      else
      {
        [v9 stringWithFormat:@"%@: ", v10];
      }
      v12 = ;
      v13 = AMSLogableError(v5);
      *buf = 138543618;
      v27 = v12;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to handle the dialog. error = %{public}@", buf, 0x16u);
      if (v8)
      {

        v12 = v3;
      }
    }
  }

  v14 = [*(a1 + 40) userInfo];
  v15 = [v14 mutableCopy];
  v16 = v15;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v18 = v17;

  [v18 setObject:0 forKeyedSubscript:@"AMSAuthenticateErrorDialog"];
  v19 = *(a1 + 48);
  v20 = [*(a1 + 40) domain];
  v21 = [*(a1 + 40) code];
  v22 = [*(a1 + 40) ams_title];
  v23 = [*(a1 + 40) ams_message];
  v24 = [*(a1 + 40) ams_underlyingError];
  v25 = AMSCustomError(v20, v21, v22, v23, v18, v24);
  (*(v19 + 16))(v19, v25);
}

- (BOOL)_isMetricsEnabled
{
  v3 = [(AMSAuthenticateTask *)self options];
  v4 = [v3 metricsIdentifier];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSAuthenticateTask *)self options];
    v6 = [v5 metricsIdentifier];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)_performAuthenticationAndGeneratePasswordWithAccount:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke;
  v6[3] = &unk_1E73B36A8;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  [(AMSAuthenticateTask *)self _attemptMultiUserTokenAuthenticationForAccount:v5 completion:v6];
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) errors];
    [v7 ams_addNullableObject:v6];
  }

  if (v5)
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v18 = v10;
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We already have a verified account and can finish the authentication flow without needing to verify again.", buf, 0x16u);
    }

    v12 = [*(a1 + 32) _finishWithVerifiedAccount:v5 andAuthKitUpdateResult:0];
  }

  else
  {
    v13 = [*(a1 + 32) _attemptCompanionAuthenticationForAccount:*(a1 + 40)];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_107;
    v15[3] = &unk_1E73B36A8;
    v14 = *(a1 + 40);
    v15[4] = *(a1 + 32);
    v16 = v14;
    [v13 resultWithCompletion:v15];
  }
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_107(uint64_t a1)
{
  v2 = [*(a1 + 32) _attemptPasswordReuseAuthenticationForAccount:*(a1 + 40)];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_108;
  v4[3] = &unk_1E73B36A8;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v5 = v3;
  [v2 resultWithCompletion:v4];
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      *buf = 138543618;
      v42 = v10;
      v43 = 2114;
      v44 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully authenticated the account.", buf, 0x16u);
    }

    v12 = [*(a1 + 32) _finishWithVerifiedAccount:v5 andAuthKitUpdateResult:0];
    goto LABEL_24;
  }

  if ([v6 ams_hasDomain:@"AMSServerErrorDomain" code:5001])
  {
    v13 = [*(a1 + 32) errors];
    [v13 ams_addNullableObject:v7];

LABEL_10:
    [*(a1 + 32) _processAuthKitUpdateResult:0 error:v7];
    goto LABEL_24;
  }

  v14 = [v7 ams_hasDomain:@"AMSServerErrorDomain" code:5304];
  v15 = [*(a1 + 32) errors];
  [v15 ams_addNullableObject:v7];

  if (v14)
  {
    goto LABEL_10;
  }

  v16 = +[AMSLogConfig sharedAccountsConfig];
  if (!v16)
  {
    v16 = +[AMSLogConfig sharedConfig];
  }

  v17 = [v16 OSLogObject];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = objc_opt_class();
    v19 = AMSLogKey();
    *buf = 138543618;
    v42 = v18;
    v43 = 2114;
    v44 = v19;
    _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Initial authentication results not present, generating a password for authentication.", buf, 0x16u);
  }

  v20 = [*(a1 + 32) options];
  if ([v20 authenticationType] == 2)
  {
    v21 = [*(a1 + 40) ams_rawPassword];

    if (v21)
    {
      v22 = +[AMSLogConfig sharedAccountsConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = objc_opt_class();
        v25 = AMSLogKey();
        *buf = 138543618;
        v42 = v24;
        v43 = 2114;
        v44 = v25;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Removing the account's raw password to force an interactive authentication.", buf, 0x16u);
      }

      [*(a1 + 40) ams_setRawPassword:0];
    }
  }

  else
  {
  }

  v26 = objc_alloc_init(AMSMutablePromise);
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_109;
  v40[3] = &unk_1E73B34B8;
  v40[4] = *(a1 + 32);
  [(AMSPromise *)v26 addErrorBlock:v40];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_111;
  v39[3] = &unk_1E73B3C50;
  v39[4] = *(a1 + 32);
  [(AMSPromise *)v26 addSuccessBlock:v39];
  v27 = [*(a1 + 32) _createAuthKitUpdateTaskForAccount:*(a1 + 40)];
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v36[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_113;
  v36[3] = &unk_1E73B3C78;
  v28 = *(a1 + 40);
  v36[4] = *(a1 + 32);
  v37 = v28;
  v29 = v26;
  v38 = v29;
  [v27 addSuccessBlock:v36];
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_2;
  v34[3] = &unk_1E73B34B8;
  v35 = v29;
  v30 = v29;
  [v27 addErrorBlock:v34];
  v32[0] = MEMORY[0x1E69E9820];
  v32[1] = 3221225472;
  v32[2] = __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_3;
  v32[3] = &unk_1E73B3CA0;
  v31 = *(a1 + 40);
  v32[4] = *(a1 + 32);
  v33 = v31;
  [(AMSPromise *)v30 addFinishBlock:v32];

LABEL_24:
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_109(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v2 = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, v2];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    v12 = AMSLogableError(v4);
    *buf = 138543618;
    v15 = v11;
    v16 = 2114;
    v17 = v12;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to generate a password. error = %{public}@", buf, 0x16u);
    if (v7)
    {

      v11 = v2;
    }
  }

  v13 = [*(a1 + 32) errors];
  [v13 addObject:v4];

  [*(a1 + 32) _processAuthKitUpdateResult:0 error:v4];
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_111(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = AMSLogKey();
    v8 = 138543618;
    v9 = v6;
    v10 = 2114;
    v11 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Successfully generated a password. Performing the authentication.", &v8, 0x16u);
  }

  [*(a1 + 32) _processAuthKitUpdateResult:v3 error:0];
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_113(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) _isMetricsEnabled])
  {
    v3 = [*(a1 + 32) metrics];
    v4 = [AMSAuthenticateMetricsContext alloc];
    v5 = [*(a1 + 32) options];
    v6 = [(AMSAuthenticateMetricsContext *)v4 initWithOptions:v5 account:*(a1 + 40)];
    v7 = [v3 enqueueWithEvent:1 context:v6];
  }

  v8 = *(a1 + 48);
  v9 = [v10 performAuthKitUpdate];
  [v8 finishWithPromise:v9];
}

void __76__AMSAuthenticateTask__performAuthenticationAndGeneratePasswordWithAccount___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  if ([*(a1 + 32) _isMetricsEnabled])
  {
    v4 = [AMSAuthenticateMetricsContext alloc];
    v5 = [*(a1 + 32) options];
    v6 = [(AMSAuthenticateMetricsContext *)v4 initWithOptions:v5 account:*(a1 + 40)];

    [(AMSAuthenticateMetricsContext *)v6 setError:v9];
    v7 = [*(a1 + 32) metrics];
    v8 = [v7 enqueueWithEvent:2 context:v6];
  }
}

- (id)_performAuthenticationUsingAccount:(id)a3 credentialSource:(unint64_t)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = objc_alloc_init(AMSMutablePromise);
  if (!a4)
  {
    v9 = +[AMSLogConfig sharedAccountsConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = AMSLogKey();
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = v13;
      if (v11)
      {
        v4 = AMSLogKey();
        [v12 stringWithFormat:@"%@: [%@] ", v14, v4];
      }

      else
      {
        [v12 stringWithFormat:@"%@: ", v13];
      }
      v15 = ;
      *buf = 138543362;
      v29 = v15;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@The account’s credential source is unknown.", buf, 0xCu);
      if (v11)
      {

        v15 = v4;
      }
    }
  }

  v16 = [(AMSAuthenticateTask *)self options];
  v17 = [v16 copy];

  [v17 setCredentialSource:a4];
  v18 = [v17 optionsDictionary];
  v19 = [v18 mutableCopy];

  [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E6959AB8]];
  v20 = [(AMSAuthenticateTask *)self accountStore];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __75__AMSAuthenticateTask__performAuthenticationUsingAccount_credentialSource___block_invoke;
  v24[3] = &unk_1E73B3050;
  v27 = a4;
  v21 = v8;
  v25 = v21;
  v26 = self;
  [v20 verifyCredentialsForAccount:v7 options:v19 completion:v24];

  v22 = v21;
  return v21;
}

void __75__AMSAuthenticateTask__performAuthenticationUsingAccount_credentialSource___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = v5;
  if (v5)
  {
    [v5 ams_setLastAuthenticationCredentialSource:*(a1 + 48)];
    [*(a1 + 32) finishWithResult:v6];
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __75__AMSAuthenticateTask__performAuthenticationUsingAccount_credentialSource___block_invoke_2;
    v8[3] = &unk_1E73B34B8;
    v7 = *(a1 + 40);
    v9 = *(a1 + 32);
    [v7 _handleDialogFromError:a3 completion:v8];
  }
}

- (void)_performAuthenticationWithInitialResultsAndAccount:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [AMSAuthKitUpdateResult alloc];
  v7 = [(AMSAuthenticateTask *)self initialAuthenticationResults];
  v8 = [(AMSAuthenticateTask *)self options];
  v9 = [(AMSAuthKitUpdateResult *)v6 initWithAccount:v5 authenticationResults:v7 options:v8];

  v10 = +[AMSLogConfig sharedAccountsConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = AMSLogKey();
    v13 = MEMORY[0x1E696AEC0];
    v14 = objc_opt_class();
    v15 = v14;
    if (v12)
    {
      v3 = AMSLogKey();
      [v13 stringWithFormat:@"%@: [%@] ", v15, v3];
    }

    else
    {
      [v13 stringWithFormat:@"%@: ", v14];
    }
    v16 = ;
    *buf = 138543362;
    v18 = v16;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Performing the authentication with initial authentication results.", buf, 0xCu);
    if (v12)
    {

      v16 = v3;
    }
  }

  [(AMSAuthenticateTask *)self _processAuthKitUpdateResult:v9 error:0];
}

- (void)_postFollowUpForFailedAuthenticationWithAccount:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = 138543618;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
  }
}

- (void)_processAuthKitUpdateResult:(id)a3 error:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [v6 credentialSource];
    v9 = [(AMSAuthenticateTask *)self options];
    [v9 setCredentialSource:v8];

    v10 = [(AMSAuthenticateTask *)self options];
    LODWORD(v9) = [v10 serviceTokenOnly];

    if (v9)
    {
      v11 = +[AMSLogConfig sharedAccountsConfig];
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
        v24 = v13;
        v25 = 2114;
        v26 = v14;
        _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Request only requires service token; skipping credential verification", buf, 0x16u);
      }

      v15 = [v6 account];
      v16 = [(AMSAuthenticateTask *)self _finishWithVerifiedAccount:v15 andAuthKitUpdateResult:v6];
    }

    else
    {
      v18 = [v6 account];
      v19 = [(AMSAuthenticateTask *)self options];
      v20 = -[AMSAuthenticateTask _performAuthenticationUsingAccount:credentialSource:](self, "_performAuthenticationUsingAccount:credentialSource:", v18, [v19 credentialSource]);
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __57__AMSAuthenticateTask__processAuthKitUpdateResult_error___block_invoke;
      v21[3] = &unk_1E73B36A8;
      v21[4] = self;
      v22 = v6;
      [v20 resultWithCompletion:v21];
    }
  }

  else
  {
    v17 = [(AMSAuthenticateTask *)self _finishWithVerifiedAccount:0 andAuthKitUpdateResult:0];
  }
}

void __57__AMSAuthenticateTask__processAuthKitUpdateResult_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v10 = v5;
  if (!v5)
  {
    v6 = *(a1 + 32);
    v7 = a3;
    v8 = [v6 errors];
    [v8 ams_addNullableObject:v7];

    v5 = 0;
  }

  v9 = [*(a1 + 32) _finishWithVerifiedAccount:v5 andAuthKitUpdateResult:*(a1 + 40)];
}

- (id)_runCreateAccountDialog
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = AMSLogKey();
    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = v9;
    if (v7)
    {
      v2 = AMSLogKey();
      [v8 stringWithFormat:@"%@: [%@] ", v10, v2];
    }

    else
    {
      [v8 stringWithFormat:@"%@: ", v9];
    }
    v11 = ;
    *buf = 138543362;
    v32 = v11;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@Running create account dialog.", buf, 0xCu);
    if (v7)
    {

      v11 = v2;
    }
  }

  v12 = [(AMSAuthenticateTask *)self accountStore];
  v13 = [v12 ams_activeiCloudAccount];
  if (v13)
  {
    v14 = +[AMSLogConfig sharedAccountsConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
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
      v20 = ;
      *buf = 138543362;
      v32 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping dialog as the user is signed in to iCloud.", buf, 0xCu);
      if (v16)
      {

        v20 = self;
      }
    }

    v26 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
  }

  else
  {
    v21 = [(AMSAuthenticateTask *)self bag];
    if (!v21)
    {
      v21 = +[AMSPurchaseTask createBagForSubProfile];
    }

    v22 = [(AMSAuthenticateTask *)self bag];
    v23 = [v22 URLForKey:@"signup"];

    v24 = [v23 valuePromise];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __46__AMSAuthenticateTask__runCreateAccountDialog__block_invoke;
    v28[3] = &unk_1E73B3CF0;
    v28[4] = self;
    v29 = v21;
    v30 = a2;
    v25 = v21;
    v26 = [v24 continueWithBlock:v28];
  }

  return v26;
}

id __46__AMSAuthenticateTask__runCreateAccountDialog__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 ams_hasDomain:@"AMSErrorDomain" code:204])
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = AMSLogKey();
      v10 = MEMORY[0x1E696AEC0];
      v11 = objc_opt_class();
      v12 = v11;
      if (v9)
      {
        a1 = AMSLogKey();
        [v10 stringWithFormat:@"%@: [%@] ", v12, a1];
      }

      else
      {
        [v10 stringWithFormat:@"%@: ", v11];
      }
      v13 = ;
      v17 = AMSHashIfNeeded(@"signup");
      *buf = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v17;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@Skipping dialog as the bag is missing a value for %{public}@", buf, 0x16u);
      if (v9)
      {

        v13 = a1;
      }
    }

    v14 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
    goto LABEL_16;
  }

  if (v6)
  {
    v14 = [AMSPromise promiseWithError:v6];
LABEL_16:
    v16 = v14;
    goto LABEL_17;
  }

  if (v5)
  {
    v15 = [*(a1 + 32) _runCreateAccountDialogWithBag:*(a1 + 40)];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __46__AMSAuthenticateTask__runCreateAccountDialog__block_invoke_118;
    v26[3] = &unk_1E73B3CC8;
    v26[4] = *(a1 + 32);
    v27 = v5;
    v28 = *(a1 + 40);
    v16 = [v15 thenWithBlock:v26];
  }

  else
  {
    v19 = +[AMSLogConfig sharedAccountsConfig];
    if (!v19)
    {
      v19 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v19 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = AMSLogKey();
      v22 = MEMORY[0x1E696AEC0];
      v23 = objc_opt_class();
      if (v21)
      {
        v24 = AMSLogKey();
        a1 = NSStringFromSelector(*(a1 + 48));
        [v22 stringWithFormat:@"%@: [%@] %@ ", v23, v24, a1];
      }

      else
      {
        v24 = NSStringFromSelector(*(a1 + 48));
        [v22 stringWithFormat:@"%@: %@ ", v23, v24];
      }
      v25 = ;
      *buf = 138543362;
      v30 = v25;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_ERROR, "%{public}@The bag load promise finished with neither a result nor a failure.", buf, 0xCu);
      if (v21)
      {

        v25 = a1;
      }
    }

    v15 = AMSError(0, 0, 0, 0);
    v16 = [AMSPromise promiseWithError:v15];
  }

LABEL_17:

  return v16;
}

id __46__AMSAuthenticateTask__runCreateAccountDialog__block_invoke_118(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 selectedActionIdentifier];
  v5 = [v4 isEqualToString:@"create"];

  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      *buf = 138543618;
      v29 = v8;
      v30 = 2114;
      v31 = v9;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Create account selected", buf, 0x16u);
    }

    v10 = objc_opt_class();
    v11 = [*(a1 + 32) options];
    v12 = [v11 clientInfo];
    v13 = [v10 loadCreateAppleIDWithClientInfo:v12 url:*(a1 + 40) bag:*(a1 + 48)];
  }

  else
  {
    v14 = [v3 selectedActionIdentifier];
    v15 = [v14 isEqualToString:@"signin"];

    if (v15)
    {
      v16 = +[AMSLogConfig sharedConfig];
      if (!v16)
      {
        v16 = +[AMSLogConfig sharedConfig];
      }

      v17 = [v16 OSLogObject];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = AMSLogKey();
        *buf = 138543618;
        v29 = v18;
        v30 = 2114;
        v31 = v19;
        _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Authenticate existing account selected", buf, 0x16u);
      }

      v13 = [AMSPromise promiseWithResult:MEMORY[0x1E695E118]];
    }

    else
    {
      v20 = [v3 selectedActionIdentifier];
      v26 = AMSErrorWithFormat(6, @"Purchase Account Prompt Failed", @"User cancelled by selecting: %@", v21, v22, v23, v24, v25, v20);
      v13 = [AMSPromise promiseWithError:v26];
    }
  }

  return v13;
}

+ (id)loadCreateAppleIDWithClientInfo:(id)a3 bag:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v7 = +[AMSPurchaseTask createBagForSubProfile];
  }

  v8 = [v7 URLForKey:@"signup"];
  v9 = [v8 valuePromise];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __59__AMSAuthenticateTask_loadCreateAppleIDWithClientInfo_bag___block_invoke;
  v14[3] = &unk_1E73B3D18;
  v16 = v7;
  v17 = a1;
  v15 = v6;
  v10 = v7;
  v11 = v6;
  v12 = [v9 thenWithBlock:v14];

  return v12;
}

+ (id)loadCreateAppleIDWithClientInfo:(id)a3 url:(id)a4 bag:(id)a5
{
  v5 = [AMSOpenURL openURL:a4 clientInfo:a3 bag:a5];
  v6 = objc_alloc_init(AMSMutablePromise);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__AMSAuthenticateTask_loadCreateAppleIDWithClientInfo_url_bag___block_invoke;
  v14[3] = &unk_1E73B34B8;
  v7 = v6;
  v15 = v7;
  [v5 addErrorBlock:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63__AMSAuthenticateTask_loadCreateAppleIDWithClientInfo_url_bag___block_invoke_2;
  v12[3] = &unk_1E73B3680;
  v8 = v7;
  v13 = v8;
  [v5 addSuccessBlock:v12];
  v9 = v13;
  v10 = v8;

  return v8;
}

void __63__AMSAuthenticateTask_loadCreateAppleIDWithClientInfo_url_bag___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = AMSError(6, @"Authenticate Cancelled", @"Create account was selected", 0);
  [v1 finishWithError:v2];
}

- (id)_runCreateAccountDialogWithBag:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [AMSDialogRequest alloc];
  v6 = AMSLocalizedString(@"PURCHASE_SIGNIN", v4);
  v7 = [(AMSDialogRequest *)v5 initWithTitle:v6 message:0];

  v8 = AMSLogKey();
  [(AMSDialogRequest *)v7 setLogKey:v8];

  v9 = AMSLocalizedString(@"PURCHASE_EXISTING_APPLE_ACCOUNT", v4);
  v10 = [AMSDialogAction actionWithTitle:v9 identifier:@"signin"];

  v11 = AMSLocalizedString(@"PURCHASE_CREATE_APPLE_ACCOUNT", v4);
  v12 = [AMSDialogAction actionWithTitle:v11 identifier:@"create"];

  v13 = AMSLocalizedString(@"CANCEL", v4);

  v14 = [AMSDialogAction actionWithTitle:v13 style:2];

  [v10 setAccessibilityIdentifier:@"PURCHASE_EXISTING_APPLE_ACCOUNT"];
  [v12 setAccessibilityIdentifier:@"PURCHASE_CREATE_APPLE_ACCOUNT"];
  [v14 setAccessibilityIdentifier:@"CANCEL"];
  v18[0] = v10;
  v18[1] = v12;
  v18[2] = v14;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
  [(AMSDialogRequest *)v7 setButtonActions:v15];

  v16 = [(AMSAuthenticateTask *)self _runDialogRequest:v7];

  return v16;
}

- (id)_runDialogRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v6 = [(AMSAuthenticateTask *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(AMSAuthenticateTask *)self delegate];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __41__AMSAuthenticateTask__runDialogRequest___block_invoke;
    v11[3] = &unk_1E73B3D40;
    v12 = v5;
    [v8 authenticateTask:self handleDialogRequest:v4 completion:v11];
  }

  else
  {
    v9 = AMSError(11, @"Dialog Delegate Not Found", @"Unable to present dialog due to missing delegate", 0);
    [(AMSMutablePromise *)v5 finishWithError:v9];
  }

  return v5;
}

- (id)_sanitizeError:(id)a3
{
  v3 = a3;
  if ([v3 ams_recursiveHasDomain:*MEMORY[0x1E698DB28] code:-7003])
  {
    v4 = AMSError(6, @"Authentication Failed", @"User cancelled", v3);
  }

  else
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (void)_updateAccountWithProvidedInformation:(id)a3
{
  v55 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 ams_altDSID];
  if (![v5 length])
  {
    v6 = [(AMSAuthenticateTask *)self altDSID];
    v7 = [v6 length];

    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = +[AMSLogConfig sharedAccountsConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = AMSLogKey();
      v47 = 138543618;
      v48 = v10;
      v49 = 2114;
      v50 = v11;
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The caller provided an altDSID, and the account didn't have one.", &v47, 0x16u);
    }

    v5 = [(AMSAuthenticateTask *)self altDSID];
    [v4 ams_setAltDSID:v5];
  }

LABEL_9:
  v12 = [v4 ams_DSID];
  if (v12)
  {
LABEL_10:

    goto LABEL_11;
  }

  v39 = [(AMSAuthenticateTask *)self DSID];
  if (v39)
  {
    v40 = v39;
    v41 = [(AMSAuthenticateTask *)self DSID];
    v42 = [v41 isEqualToNumber:&unk_1F0778FB0];

    if ((v42 & 1) == 0)
    {
      v43 = +[AMSLogConfig sharedAccountsConfig];
      if (!v43)
      {
        v43 = +[AMSLogConfig sharedConfig];
      }

      v44 = [v43 OSLogObject];
      if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
      {
        v45 = objc_opt_class();
        v46 = AMSLogKey();
        v47 = 138543618;
        v48 = v45;
        v49 = 2114;
        v50 = v46;
        _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The caller provided a DSID, and the account didn't have one.", &v47, 0x16u);
      }

      v12 = [(AMSAuthenticateTask *)self DSID];
      [v4 ams_setDSID:v12];
      goto LABEL_10;
    }
  }

LABEL_11:
  v13 = [(AMSAuthenticateTask *)self username];
  if ([v13 length])
  {
    v14 = [v4 username];
    v15 = [(AMSAuthenticateTask *)self username];
    v16 = [v14 isEqualToString:v15];

    if (v16)
    {
      goto LABEL_19;
    }

    v17 = +[AMSLogConfig sharedAccountsConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = objc_opt_class();
      v20 = AMSLogKey();
      v21 = [v4 username];
      v22 = AMSHashIfNeeded(v21);
      v23 = [(AMSAuthenticateTask *)self username];
      v24 = AMSHashIfNeeded(v23);
      v47 = 138544130;
      v48 = v19;
      v49 = 2114;
      v50 = v20;
      v51 = 2114;
      v52 = v22;
      v53 = 2114;
      v54 = v24;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The caller provided an updated username. oldUsername = %{public}@ | newUsername = %{public}@", &v47, 0x2Au);
    }

    v13 = [(AMSAuthenticateTask *)self username];
    [v4 setUsername:v13];
  }

LABEL_19:
  v25 = [(AMSAuthenticateTask *)self options];
  v26 = [v25 isDemoAccountSetup];

  if (v26)
  {
    [v4 ams_setDemoAccount:1];
  }

  v27 = [(AMSAuthenticateTask *)self password];

  if (v27)
  {
    v28 = +[AMSLogConfig sharedAccountsConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v31 = AMSLogKey();
      v47 = 138543618;
      v48 = v30;
      v49 = 2114;
      v50 = v31;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We have a password (PET) we can use.", &v47, 0x16u);
    }

    v32 = [(AMSAuthenticateTask *)self password];
    [v4 ams_setPassword:v32];
  }

  v33 = [(AMSAuthenticateTask *)self rawPassword];

  if (v33)
  {
    v34 = +[AMSLogConfig sharedAccountsConfig];
    if (!v34)
    {
      v34 = +[AMSLogConfig sharedConfig];
    }

    v35 = [v34 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      v36 = objc_opt_class();
      v37 = AMSLogKey();
      v47 = 138543618;
      v48 = v36;
      v49 = 2114;
      v50 = v37;
      _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] We have a raw password we can use.", &v47, 0x16u);
    }

    v38 = [(AMSAuthenticateTask *)self rawPassword];
    [v4 ams_setRawPassword:v38];
  }

  [(AMSAuthenticateTask *)self _updateAccountPasswordUsingSecondaryAccounts:v4];
}

+ (AMSBagKeySet)bagKeySet
{
  v2 = objc_alloc_init(AMSBagKeySet);

  return v2;
}

- (id)homeID
{
  v2 = [(AMSAuthenticateTask *)self homeIdentifier];
  v3 = [v2 UUIDString];

  return v3;
}

- (void)setHomeID:(id)a3
{
  v4 = MEMORY[0x1E696AFB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithUUIDString:v5];

  [(AMSAuthenticateTask *)self setHomeIdentifier:v6];
}

- (AMSAuthenticateTaskDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end