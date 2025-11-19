@interface AMSAuthKitUpdateTask
- (AMSAuthKitUpdateTask)initWithAccount:(id)a3 options:(id)a4;
- (BOOL)_canPresentBackgroundPrompt;
- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6;
- (id)_createAuthKitContext;
- (id)_createAuthKitController;
- (id)performAuthKitUpdate;
- (unint64_t)_authenticationType;
- (void)_configureAuthKitContext:(id)a3;
- (void)_configureClientInfoForContext:(id)a3;
- (void)_configureCompanionDeviceForContext:(id)a3;
- (void)_configureIdentifiersForContext:(id)a3;
- (void)_configureProxyIdentifiersForContext:(id)a3;
- (void)_configureStringsForContext:(id)a3;
- (void)_logPromptSummaryForResults:(id)a3 context:(id)a4;
@end

@implementation AMSAuthKitUpdateTask

- (AMSAuthKitUpdateTask)initWithAccount:(id)a3 options:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = AMSAuthKitUpdateTask;
  v9 = [(AMSTask *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_account, a3);
    objc_storeStrong(&v10->_options, a4);
  }

  return v10;
}

- (id)performAuthKitUpdate
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke;
  v4[3] = &unk_1E73B3588;
  v4[4] = self;
  v2 = [(AMSTask *)self performTaskWithPromiseBlock:v4];

  return v2;
}

id __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = +[AMSLogConfig sharedAccountsConfig];
  if (!v1)
  {
    v1 = +[AMSLogConfig sharedConfig];
  }

  v2 = [v1 OSLogObject];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = (a1 + 32);
    v34 = objc_opt_class();
    v36 = AMSLogKey();
    v37 = [*(a1 + 32) account];
    v35 = AMSHashIfNeeded(v37);
    v4 = [*(a1 + 32) account];
    v5 = [v4 ams_password];
    v6 = @"****";
    if (v5)
    {
      v7 = @"****";
    }

    else
    {
      v7 = 0;
    }

    v8 = [*v3 account];
    v9 = [v8 ams_rawPassword];
    if (!v9)
    {
      v6 = 0;
    }

    v10 = [*v3 options];
    v11 = AMSHashIfNeeded(v10);
    *buf = 138544642;
    *&buf[4] = v34;
    *&buf[12] = 2114;
    *&buf[14] = v36;
    *&buf[22] = 2114;
    v51 = v35;
    *v52 = 2114;
    *&v52[2] = v7;
    *&v52[10] = 2114;
    *&v52[12] = v6;
    v53 = 2114;
    v54 = v11;
    _os_log_impl(&dword_192869000, v2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing an AuthKit authentication. account = %{public}@ | account.ams_password = %{public}@ | account.ams_rawPassword = %{public}@ | options = %{public}@", buf, 0x3Eu);
  }

  v12 = [*(a1 + 32) options];
  v13 = [v12 debugReason];
  v14 = v13 == 0;

  if (v14)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = objc_opt_class();
      v18 = AMSLogKey();
      v19 = [*(a1 + 32) options];
      v20 = [v19 clientInfo];
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = v18;
      *&buf[22] = 2114;
      v51 = v20;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] An authentication was performed without a debugReason. client = %{public}@", buf, 0x20u);
    }
  }

  v21 = objc_opt_class();
  v22 = [*(a1 + 32) account];
  v23 = [*(a1 + 32) options];
  [v21 _updateAccountRawPasswordUsingSecondaryAccounts:v22 options:v23];

  v24 = objc_alloc_init(AMSMutablePromise);
  v25 = [*(a1 + 32) _createAuthKitContext];
  [*(a1 + 32) _configureAuthKitContext:v25];
  v26 = [*(a1 + 32) _createAuthKitController];
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v51 = __Block_byref_object_copy__3;
  *v52 = __Block_byref_object_dispose__3;
  *&v52[8] = 0;
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_23;
  v46[3] = &unk_1E73B3ED0;
  v27 = *(a1 + 32);
  v49 = buf;
  v46[4] = v27;
  v28 = v25;
  v47 = v28;
  v29 = v24;
  v48 = v29;
  [v26 addSuccessBlock:v46];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_2;
  v44[3] = &unk_1E73B34B8;
  v30 = v29;
  v45 = v30;
  [v26 addErrorBlock:v44];
  v43[0] = MEMORY[0x1E69E9820];
  v43[1] = 3221225472;
  v43[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_3;
  v43[3] = &unk_1E73B3EF8;
  v43[4] = buf;
  [(AMSPromise *)v30 addFinishBlock:v43];
  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_4;
  v41[3] = &unk_1E73B3F20;
  v41[4] = *(a1 + 32);
  v31 = v28;
  v42 = v31;
  v32 = [(AMSMutablePromise *)v30 thenWithBlock:v41];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_9;
  v40[3] = &unk_1E73B3C50;
  v40[4] = *(a1 + 32);
  [v32 addSuccessBlock:v40];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_37;
  v39[3] = &unk_1E73B34B8;
  v39[4] = *(a1 + 32);
  [v32 addErrorBlock:v39];

  _Block_object_dispose(buf, 8);

  return v32;
}

void __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_23(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v4 = a2;
  [*(*(*(a1 + 56) + 8) + 40) setDelegate:*(a1 + 32)];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) completionHandlerAdapter];
  [v5 authenticateWithContext:v6 completion:v7];
}

id __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) _logPromptSummaryForResults:v3 context:*(a1 + 40)];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698DB98]];
  v6 = [*(a1 + 32) options];
  v7 = [v6 serviceIdentifier];
  v8 = [v7 length];

  if (v8)
  {
    v9 = [*(a1 + 32) options];
    v10 = [v9 serviceIdentifier];
    v11 = [v5 objectForKeyedSubscript:v10];
  }

  else
  {
    v11 = 0;
  }

  if ([v4 length] || !objc_msgSend(v4, "length") && objc_msgSend(v11, "length") && (objc_msgSend(*(a1 + 32), "options"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "serviceTokenOnly"), v18, v19))
  {
    v12 = [AMSAuthKitUpdateResult alloc];
    v13 = [*(a1 + 32) account];
    v14 = [*(a1 + 32) options];
    v15 = [(AMSAuthKitUpdateResult *)v12 initWithAccount:v13 authenticationResults:v3 options:v14];
    v16 = [AMSPromise promiseWithResult:v15];
  }

  else if ([v4 length] || !objc_msgSend(v11, "length"))
  {
    v17 = AMSError(101, @"Unknown AuthKit Failure", @"The AuthKit authentication succeeded, but the results did not contain a password.", 0);
    v16 = [AMSPromise promiseWithError:v17];
  }

  else
  {
    v20 = [*(a1 + 32) _createAuthKitContext];
    [*(a1 + 32) _configureAuthKitContext:v20];
    [v20 setServiceIdentifiers:MEMORY[0x1E695E0F0]];
    v21 = objc_alloc_init(AMSMutablePromise);
    v40[0] = 0;
    v40[1] = v40;
    v40[2] = 0x3032000000;
    v40[3] = __Block_byref_object_copy__3;
    v40[4] = __Block_byref_object_dispose__3;
    v41 = 0;
    v22 = [*(a1 + 32) _createAuthKitController];
    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_5;
    v36[3] = &unk_1E73B3ED0;
    v23 = *(a1 + 32);
    v39 = v40;
    v36[4] = v23;
    v24 = v20;
    v37 = v24;
    v25 = v21;
    v38 = v25;
    [v22 addSuccessBlock:v36];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_6;
    v34[3] = &unk_1E73B34B8;
    v26 = v25;
    v35 = v26;
    [v22 addErrorBlock:v34];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_7;
    v33[3] = &unk_1E73B3EF8;
    v33[4] = v40;
    [(AMSPromise *)v26 addFinishBlock:v33];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_8;
    v30[3] = &unk_1E73B3F20;
    v27 = v5;
    v28 = *(a1 + 32);
    v31 = v27;
    v32 = v28;
    v16 = [(AMSMutablePromise *)v26 thenWithBlock:v30];

    _Block_object_dispose(v40, 8);
  }

  return v16;
}

void __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_5(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  v4 = a2;
  [*(*(*(a1 + 56) + 8) + 40) setDelegate:*(a1 + 32)];
  v5 = *(*(*(a1 + 56) + 8) + 40);
  v6 = *(a1 + 40);
  v7 = [*(a1 + 48) completionHandlerAdapter];
  [v5 authenticateWithContext:v6 completion:v7];
}

id __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x1E698DBC8]];
  if ([v4 length])
  {
    v5 = [v3 mutableCopy];
    [v5 setObject:*(a1 + 32) forKeyedSubscript:*MEMORY[0x1E698DB98]];
    v6 = [AMSAuthKitUpdateResult alloc];
    v7 = [*(a1 + 40) account];
    v8 = [v5 copy];
    v9 = [*(a1 + 40) options];
    v10 = [(AMSAuthKitUpdateResult *)v6 initWithAccount:v7 authenticationResults:v8 options:v9];

    v11 = [AMSPromise promiseWithResult:v10];
  }

  else
  {
    v5 = AMSError(101, @"Unknown AuthKit Failure", @"The AuthKit authentication succeeded, but the results did not contain a password.", 0);
    v11 = [AMSPromise promiseWithError:v5];
  }

  return v11;
}

void __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_9(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded(v2);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] The AuthKit authentication succeeded. result = %{public}@", &v8, 0x20u);
  }
}

void __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_37(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 code];
  v5 = +[AMSLogConfig sharedAccountsConfig];
  v6 = v5;
  if (v4 == -7048)
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_opt_class();
      v9 = AMSLogKey();
      v10 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      v23 = 2114;
      v24 = v10;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] User requested alternate action. error = %{public}@", buf, 0x20u);
    }

    v11 = [*(a1 + 32) options];
    v12 = [v11 clientInfo];
    v13 = [AMSAuthenticateTask loadCreateAppleIDWithClientInfo:v12 bag:0];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_39;
    v18[3] = &unk_1E73B34B8;
    v18[4] = *(a1 + 32);
    [v13 addErrorBlock:v18];
  }

  else
  {
    if (!v5)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v6 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = AMSLogKey();
      v17 = AMSHashIfNeeded(v3);
      *buf = 138543874;
      v20 = v15;
      v21 = 2114;
      v22 = v16;
      v23 = 2114;
      v24 = v17;
      _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] The AuthKit authentication failed. error = %{public}@", buf, 0x20u);
    }
  }
}

void __44__AMSAuthKitUpdateTask_performAuthKitUpdate__block_invoke_39(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = +[AMSLogConfig sharedAccountsConfig];
  if (!v3)
  {
    v3 = +[AMSLogConfig sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    v7 = AMSHashIfNeeded(v2);
    v8 = 138543874;
    v9 = v5;
    v10 = 2114;
    v11 = v6;
    v12 = 2114;
    v13 = v7;
    _os_log_impl(&dword_192869000, v4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Error loading Create Apple ID Flow. error = %{public}@", &v8, 0x20u);
  }
}

- (BOOL)authenticationController:(id)a3 shouldContinueWithAuthenticationResults:(id)a4 error:(id)a5 forContext:(id)a6
{
  v61 = *MEMORY[0x1E69E9840];
  v50 = a3;
  v49 = a4;
  v9 = a5;
  v10 = a6;
  v11 = 0x1E73B0000uLL;
  v12 = +[AMSLogConfig sharedAccountsConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  v14 = 0x1E696A000uLL;
  v48 = v10;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = AMSLogKey();
    v16 = MEMORY[0x1E696AEC0];
    v17 = objc_opt_class();
    if (v15)
    {
      v18 = AMSLogKey();
      v11 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: [%@] %@ ", v17, v18, v11];
    }

    else
    {
      v18 = NSStringFromSelector(a2);
      [v16 stringWithFormat:@"%@: %@ ", v17, v18];
    }
    v19 = ;
    *buf = 138543362;
    v52 = v19;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEBUG, "%{public}@began.", buf, 0xCu);
    v10 = v48;
    if (v15)
    {

      v19 = v11;
    }

    v14 = 0x1E696A000uLL;
  }

  v20 = +[AMSLogConfig sharedAccountsOversizeConfig];
  if (!v20)
  {
    v20 = +[AMSLogConfig sharedConfig];
  }

  v21 = [v20 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = v9;
    v23 = AMSLogKey();
    v24 = MEMORY[0x1E696AEC0];
    v25 = objc_opt_class();
    v26 = v25;
    if (v23)
    {
      v45 = AMSLogKey();
      [v24 stringWithFormat:@"%@: [%@] ", v26, v45];
    }

    else
    {
      [v24 stringWithFormat:@"%@: ", v25];
    }
    v27 = ;
    v28 = AMSHashIfNeeded(v50);
    v29 = [v49 ak_redactedCopy];
    v30 = AMSHashIfNeeded(v29);
    v31 = AMSLogableError(v22);
    v32 = AMSHashIfNeeded(v10);
    *buf = 138544386;
    v52 = v27;
    v53 = 2114;
    v54 = v28;
    v55 = 2114;
    v56 = v30;
    v57 = 2114;
    v58 = v31;
    v59 = 2114;
    v60 = v32;
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEBUG, "%{public}@controller = %{public}@ | results = %{public}@ | error = %{public}@ | context = %{public}@", buf, 0x34u);

    if (v23)
    {

      v27 = v45;
    }

    v9 = v22;
    v10 = v48;
    v14 = 0x1E696A000uLL;
  }

  v33 = [v10 clientInfo];
  if (!v33)
  {
    v33 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v10 setClientInfo:v33];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v34 = [v33 objectForKeyedSubscript:@"metricsAuthenticationAttempts"];
    if (!v34)
    {
      v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [v33 setObject:v34 forKeyedSubscript:@"metricsAuthenticationAttempts"];
    }
  }

  else
  {
    v34 = 0;
  }

  v35 = [AMSMetricsEvent metricsAuthenticationAttemptDictionaryForAuthKitError:v9];
  if (v35)
  {
    [v34 addObject:v35];
  }

  v36 = +[AMSLogConfig sharedAccountsConfig];
  if (!v36)
  {
    v36 = +[AMSLogConfig sharedConfig];
  }

  v37 = [v36 OSLogObject];
  if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
  {
    v46 = v9;
    v38 = AMSLogKey();
    v39 = MEMORY[0x1E696AEC0];
    v40 = objc_opt_class();
    if (v38)
    {
      v41 = AMSLogKey();
      v14 = NSStringFromSelector(a2);
      [v39 stringWithFormat:@"%@: [%@] %@ ", v40, v41, v14];
    }

    else
    {
      v41 = NSStringFromSelector(a2);
      [v39 stringWithFormat:@"%@: %@ ", v40, v41];
    }
    v42 = ;
    v43 = @"false";
    v9 = v46;
    if (!v46)
    {
      v43 = @"true";
    }

    *buf = 138543618;
    v52 = v42;
    v53 = 2114;
    v54 = v43;
    _os_log_impl(&dword_192869000, v37, OS_LOG_TYPE_DEBUG, "%{public}@returning %{public}@", buf, 0x16u);
    if (v38)
    {

      v42 = v14;
    }

    v10 = v48;
  }

  return v9 == 0;
}

- (BOOL)_canPresentBackgroundPrompt
{
  v2 = [(AMSAuthKitUpdateTask *)self options];
  v3 = [v2 debugReason];
  v4 = [v3 length];

  if (v4)
  {
    return 1;
  }

  if (_MergedGlobals_1_0 != -1)
  {
    dispatch_once(&_MergedGlobals_1_0, &__block_literal_global_12);
  }

  v6 = qword_1ED6E1DA8;
  v7 = +[AMSProcessInfo currentProcess];
  v8 = [v7 bundleIdentifier];
  v9 = [v6 containsObject:v8];

  return v9;
}

void __51__AMSAuthKitUpdateTask__canPresentBackgroundPrompt__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  [v0 addObject:@"amstool"];
  [v0 addObject:@"com.apple.amsaccountsd"];
  [v0 addObject:@"com.apple.dt.xctest.tool"];
  [v0 addObject:@"com.apple.AppleMediaServicesUITestsHost"];
  [v0 addObject:@"com.apple.AppleMediaServicesTests.xctrunner"];
  [v0 addObject:@"com.apple.appstoreagent"];
  [v0 addObject:@"com.apple.appstored"];
  [v0 addObject:@"com.apple.appstorecomponentsd"];
  [v0 addObject:@"com.apple.AppStoreOverlays.ViewService"];
  v1 = [v0 copy];

  v2 = qword_1ED6E1DA8;
  qword_1ED6E1DA8 = v1;
}

- (unint64_t)_authenticationType
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(AMSAuthKitUpdateTask *)self options];
  v4 = [v3 authenticationType];

  v5 = [(AMSAuthKitUpdateTask *)self options];
  v6 = [v5 isRemoteProxyAuthentication];

  if (v6 && v4 == 2)
  {
    v7 = +[AMSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = objc_opt_class();
      v10 = AMSLogKey();
      v16 = 138543618;
      v17 = v9;
      v18 = 2114;
      v19 = v10;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding authenticationType with AKAppleIDAuthenticationTypeSilentPreferred. Performing a remote proxy authentication.", &v16, 0x16u);
    }

    v4 = 0;
  }

  if (![(AMSAuthKitUpdateTask *)self _canPresentBackgroundPrompt]&& v4 != 1)
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
      v16 = 138543618;
      v17 = v13;
      v18 = 2114;
      v19 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Overriding authenticationType with AKAppleIDAuthenticationTypeSilent. The current process cannot perform a background prompt.", &v16, 0x16u);
    }

    return 1;
  }

  return v4;
}

- (void)_configureAuthKitContext:(id)a3
{
  v12 = a3;
  [v12 setAuthenticationType:{-[AMSAuthKitUpdateTask _authenticationType](self, "_authenticationType")}];
  v4 = [(AMSAuthKitUpdateTask *)self account];
  v5 = [v4 ams_rawPassword];
  [v12 _setPassword:v5];

  [v12 setServiceType:2];
  v6 = [(AMSAuthKitUpdateTask *)self options];
  [v12 setIsEphemeral:{objc_msgSend(v6, "ephemeral")}];

  v7 = [(AMSAuthKitUpdateTask *)self options];
  [v12 setServiceType:{objc_msgSend(v7, "serviceType")}];

  v8 = [(AMSAuthKitUpdateTask *)self options];
  v9 = [v8 serviceIdentifier];

  if (v9)
  {
    v10 = [(AMSAuthKitUpdateTask *)self options];
    v11 = [v10 serviceIdentifier];
    [v12 setServiceIdentifier:v11];
  }

  [(AMSAuthKitUpdateTask *)self _configureClientInfoForContext:v12];
  [(AMSAuthKitUpdateTask *)self _configureCompanionDeviceForContext:v12];
  [(AMSAuthKitUpdateTask *)self _configureIdentifiersForContext:v12];
  [(AMSAuthKitUpdateTask *)self _configureProxyIdentifiersForContext:v12];
  [(AMSAuthKitUpdateTask *)self _configureStringsForContext:v12];
}

- (void)_configureClientInfoForContext:(id)a3
{
  v13 = a3;
  v4 = [(AMSAuthKitUpdateTask *)self options];
  v5 = [v4 appProvidedContext];
  [v13 setAppProvidedContext:v5];

  v6 = [(AMSAuthKitUpdateTask *)self options];
  v7 = [v6 appProvidedData];
  [v13 setAppProvidedData:v7];

  v8 = [v13 clientInfo];
  if (!v8)
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v13 setClientInfo:v8];
  }

  v9 = [(AMSAuthKitUpdateTask *)self options];
  v10 = [v9 createAccountQueryParams];
  [v8 ams_setNullableObject:v10 forKey:@"AMSAuthenticateOptionsCreateAccountQueryParamsKey"];

  v11 = [(AMSAuthKitUpdateTask *)self options];
  v12 = [v11 userAgent];
  [v8 ams_setNullableObject:v12 forKey:@"AMSAuthenticateOptionsUserAgentKey"];
}

- (void)_configureCompanionDeviceForContext:(id)a3
{
  v13 = a3;
  v4 = [(AMSAuthKitUpdateTask *)self options];
  v5 = [v4 companionDeviceClientInfo];
  if (v5)
  {
  }

  else
  {
    v6 = [(AMSAuthKitUpdateTask *)self options];
    v7 = [v6 companionDeviceUDID];

    if (!v7)
    {
      goto LABEL_5;
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E698DD60]);
  [v8 setLinkType:2];
  v9 = [(AMSAuthKitUpdateTask *)self options];
  v10 = [v9 companionDeviceClientInfo];
  [v8 setServerFriendlyDescription:v10];

  v11 = [(AMSAuthKitUpdateTask *)self options];
  v12 = [v11 companionDeviceUDID];
  [v8 setUniqueDeviceIdentifier:v12];

  [v13 setCompanionDevice:v8];
LABEL_5:
}

- (void)_configureIdentifiersForContext:(id)a3
{
  v22 = a3;
  v4 = [(AMSAuthKitUpdateTask *)self account];
  v5 = [v4 ams_altDSID];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(AMSAuthKitUpdateTask *)self account];
    v8 = [v7 ams_altDSID];
    [v22 setAltDSID:v8];
  }

  v9 = [(AMSAuthKitUpdateTask *)self account];
  v10 = [v9 ams_DSID];
  if (v10)
  {
    v11 = v10;
    v12 = [(AMSAuthKitUpdateTask *)self account];
    v13 = [v12 ams_DSID];
    v14 = [v13 isEqualToNumber:&unk_1F0778FC8];

    if (v14)
    {
      goto LABEL_7;
    }

    v9 = [(AMSAuthKitUpdateTask *)self account];
    v15 = [v9 ams_DSID];
    v16 = [v15 stringValue];
    [v22 setDSID:v16];
  }

LABEL_7:
  v17 = [(AMSAuthKitUpdateTask *)self account];
  v18 = [v17 username];
  v19 = [v18 length];

  if (v19)
  {
    v20 = [(AMSAuthKitUpdateTask *)self account];
    v21 = [v20 username];
    [v22 setUsername:v21];
  }

  [v22 setIsUsernameEditable:v19 == 0];
  if ([v22 authenticationType] == 1)
  {
    [v22 setIsUsernameEditable:0];
  }

  if ([v22 isUsernameEditable])
  {
    [v22 setAltDSID:0];
    [v22 setDSID:0];
  }
}

- (void)_configureProxyIdentifiersForContext:(id)a3
{
  v14 = a3;
  v4 = [(AMSAuthKitUpdateTask *)self options];
  v5 = [v4 proxyAppBundleID];
  v6 = [v5 length];

  if (v6)
  {
    [v14 _setProxyingForApp:1];
    v7 = [(AMSAuthKitUpdateTask *)self options];
    v8 = [v7 proxyAppBundleID];
    [v14 _setProxiedAppBundleID:v8];
  }

  v9 = [(AMSAuthKitUpdateTask *)self options];
  v10 = [v9 proxyAppName];
  v11 = [v10 length];

  if (v11)
  {
    [v14 _setProxyingForApp:1];
    v12 = [(AMSAuthKitUpdateTask *)self options];
    v13 = [v12 proxyAppName];
    [v14 _setProxiedAppName:v13];
  }
}

- (void)_configureStringsForContext:(id)a3
{
  v20 = a3;
  v4 = [(AMSAuthKitUpdateTask *)self options];
  v5 = [v4 cancelButtonString];
  v6 = [v5 length];

  if (v6)
  {
    v7 = [(AMSAuthKitUpdateTask *)self options];
    v8 = [v7 cancelButtonString];
    [v20 setCancelButtonString:v8];
  }

  v9 = [(AMSAuthKitUpdateTask *)self options];
  v10 = [v9 defaultButtonString];
  v11 = [v10 length];

  if (v11)
  {
    v12 = [(AMSAuthKitUpdateTask *)self options];
    v13 = [v12 defaultButtonString];
    [v20 setDefaultButtonString:v13];
  }

  v14 = [(AMSAuthKitUpdateTask *)self options];
  v15 = [v14 promptTitle];
  [v20 set_passwordPromptTitle:v15];

  v16 = [(AMSAuthKitUpdateTask *)self options];
  v17 = [v16 reason];
  [v20 setReason:v17];

  v18 = [(AMSAuthKitUpdateTask *)self options];
  v19 = [v18 promptTitle];
  [v20 setTitle:v19];
}

- (id)_createAuthKitContext
{
  v2 = objc_alloc_init(MEMORY[0x1E698DCB8]);

  return v2;
}

- (id)_createAuthKitController
{
  v2 = objc_alloc_init(MEMORY[0x1E698DCC0]);
  v3 = [AMSPromise promiseWithResult:v2];

  return v3;
}

- (void)_logPromptSummaryForResults:(id)a3 context:(id)a4
{
  v45[5] = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *MEMORY[0x1E698DBD0];
  v8 = a3;
  v9 = [v8 objectForKeyedSubscript:v7];
  v10 = [v8 objectForKeyedSubscript:*MEMORY[0x1E698DB78]];

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    v11 = 0;
LABEL_5:
    if (!v9)
    {
      goto LABEL_23;
    }

    goto LABEL_6;
  }

  v11 = [v10 BOOLValue];
  if ((v11 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_6:
  v30 = v11;
  v34 = v9;
  v35 = v6;
  v44[0] = @"authType";
  v33 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v6, "authenticationType")}];
  v45[0] = v33;
  v44[1] = @"account";
  v31 = [(AMSAuthKitUpdateTask *)self account];
  v12 = AMSHashIfNeeded(v31);
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = &stru_1F071BA78;
  }

  v45[1] = v14;
  v44[2] = @"reason";
  v15 = [(AMSAuthKitUpdateTask *)self options];
  v16 = [v15 debugReason];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = &stru_1F071BA78;
  }

  v45[2] = v18;
  v44[3] = @"client";
  v19 = [(AMSAuthKitUpdateTask *)self options];
  v20 = [v19 clientInfo];
  v21 = v20;
  if (!v20)
  {
    v21 = +[AMSProcessInfo currentProcess];
  }

  v45[3] = v21;
  v44[4] = @"proxyApp";
  v22 = [(AMSAuthKitUpdateTask *)self options];
  v23 = [v22 proxyAppBundleID];
  v24 = v23;
  v25 = &stru_1F071BA78;
  if (v23)
  {
    v25 = v23;
  }

  v45[4] = v25;
  v32 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v45 forKeys:v44 count:5];

  if (!v20)
  {
  }

  v26 = +[AMSLogConfig sharedAccountsConfig];
  if (!v26)
  {
    v26 = +[AMSLogConfig sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = AMSLogKey();
    *buf = 138544130;
    v37 = v28;
    v38 = 2114;
    v39 = v29;
    v40 = 1024;
    v41 = v30;
    v42 = 2114;
    v43 = v32;
    _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Prompted for credentials. (%d) %{public}@", buf, 0x26u);
  }

  v9 = v34;
  v6 = v35;
LABEL_23:
}

@end