@interface AMSCardEnrollmentVerificationTask
+ (id)_performSilentEnrollmentPaymentSessionWithContext:(id)a3;
+ (id)performPaymentVerificationForPayment:(id)a3 isDefault:(BOOL)a4 bag:(id)a5;
+ (void)verifyPayment:(id)a3 isDefault:(BOOL)a4 bag:(id)a5 completion:(id)a6;
@end

@implementation AMSCardEnrollmentVerificationTask

+ (void)verifyPayment:(id)a3 isDefault:(BOOL)a4 bag:(id)a5 completion:(id)a6
{
  v7 = a4;
  v26 = *MEMORY[0x1E69E9840];
  v10 = a6;
  v11 = [a1 performPaymentVerificationForPayment:a3 isDefault:v7 bag:a5];
  v19 = 0;
  v12 = [v11 resultWithError:&v19];
  v13 = v19;

  if (v13)
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v24 = 2114;
      v25 = v13;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (v10)
  {
    v10[2](v10, [v12 BOOLValue], v13);
  }
}

+ (id)performPaymentVerificationForPayment:(id)a3 isDefault:(BOOL)a4 bag:(id)a5
{
  v6 = a4;
  v86 = *MEMORY[0x1E69E9840];
  v77 = a3;
  v7 = a5;
  v8 = AMSSetLogKeyIfNeeded();
  v9 = objc_alloc_init(AMSMutablePromise);
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = MEMORY[0x1E696AD98];
    v14 = v12;
    v15 = [v13 numberWithBool:v6];
    *buf = 138543874;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    *&buf[22] = 2114;
    v84 = v15;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing silent-enrolllment payment verification with isDefault: %{public}@", buf, 0x20u);
  }

  v16 = [v7 BOOLForKey:@"use-silent-enrollment"];
  v17 = [v16 valueWithError:0];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    goto LABEL_24;
  }

  v18 = [v7 BOOLForKey:@"use-silent-enrollment"];
  v19 = [v18 valueWithError:0];
  v20 = [v19 BOOLValue];

  if ((v20 & 1) == 0)
  {
LABEL_24:
    v43 = +[AMSLogConfig sharedConfig];
    if (!v43)
    {
      v43 = +[AMSLogConfig sharedConfig];
    }

    v44 = [v43 OSLogObject];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v45 = objc_opt_class();
      *buf = 138543618;
      *&buf[4] = v45;
      *&buf[12] = 2114;
      *&buf[14] = v8;
      v46 = v45;
      _os_log_impl(&dword_192869000, v44, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed for feature not enabled", buf, 0x16u);
    }

    v22 = AMSError(5, @"Silent Enrollment Error", @"Feature Not Enabled", 0);
    [(AMSMutablePromise *)v9 finishWithError:v22];
    v42 = v9;
    goto LABEL_51;
  }

  v21 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
  v22 = [v21 ams_activeiTunesAccount];

  if (v22)
  {
    v23 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
    v74 = [v23 ams_activeiCloudAccount];

    if (v74)
    {
      v24 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      v25 = [v24 ams_isActiveAccountCombined];

      if (v25)
      {
        v73 = [[AMSURLRequestEncoder alloc] initWithBag:v7];
        [(AMSURLRequestEncoder *)v73 setAccount:v74];
        [(AMSURLRequestEncoder *)v73 setRequestEncoding:1];
        v26 = [v77 token];
        v70 = [v26 paymentData];

        v27 = +[AMSLogConfig sharedConfig];
        if (!v27)
        {
          v27 = +[AMSLogConfig sharedConfig];
        }

        v28 = [v27 OSLogObject];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          v29 = objc_opt_class();
          v30 = MEMORY[0x1E696AD98];
          v71 = v29;
          v31 = [v30 numberWithBool:v6];
          *buf = 138543874;
          *&buf[4] = v29;
          *&buf[12] = 2114;
          *&buf[14] = v8;
          *&buf[22] = 2114;
          v84 = v31;
          _os_log_impl(&dword_192869000, v28, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Is card default? %{public}@", buf, 0x20u);
        }

        v32 = [v7 URLForKey:@"applePayEnroll"];
        v33 = [v32 valueWithError:0];

        if (v6)
        {
          v34 = &unk_1F0779CB8;
        }

        else
        {
          v34 = &unk_1F0779CE0;
        }

        v35 = [v33 ams_URLByAppendingQueryParameters:v34];

        v36 = [(AMSURLRequestEncoder *)v73 requestWithMethod:4 URL:v35 parameters:v70];
        v78 = 0;
        v37 = [v36 resultWithError:&v78];
        v72 = v78;

        if (v72)
        {
          v38 = +[AMSLogConfig sharedConfig];
          if (!v38)
          {
            v38 = +[AMSLogConfig sharedConfig];
          }

          v39 = [v38 OSLogObject];
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            v40 = objc_opt_class();
            *buf = 138543874;
            *&buf[4] = v40;
            *&buf[12] = 2114;
            *&buf[14] = v8;
            *&buf[22] = 2114;
            v84 = v72;
            v41 = v40;
            _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed to encode request with error: %{public}@", buf, 0x20u);
          }

          [(AMSMutablePromise *)v9 finishWithError:v72];
          v42 = v9;
        }

        else
        {
          [v37 ams_addSilentEnrollmentHeadersForAccount:v74];
          v79 = 0;
          v80 = &v79;
          v81 = 0x2050000000;
          v59 = getSSSilentEnrollmentContextClass_softClass_0;
          v82 = getSSSilentEnrollmentContextClass_softClass_0;
          if (!getSSSilentEnrollmentContextClass_softClass_0)
          {
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = __getSSSilentEnrollmentContextClass_block_invoke_0;
            v84 = &unk_1E73B3880;
            v85 = &v79;
            __getSSSilentEnrollmentContextClass_block_invoke_0(buf);
            v59 = v80[3];
          }

          v60 = v59;
          _Block_object_dispose(&v79, 8);
          v61 = objc_alloc_init(v59);
          v62 = [v74 ams_DSID];
          [v61 setAccountIdentifier:v62];

          v63 = [v37 valueForHTTPHeaderField:@"X-Apple-ADSID"];
          [v61 setHeaderADSID:v63];

          v64 = [v37 valueForHTTPHeaderField:@"X-Apple-GS-Token"];
          [v61 setHeaderGSToken:v64];

          v65 = [v37 valueForHTTPHeaderField:@"Guid"];
          [v61 setHeaderGuid:v65];

          v66 = [v37 valueForHTTPHeaderField:@"X-MMe-Client-Info"];
          [v61 setHeaderMMeClientInfo:v66];

          v67 = [v37 valueForHTTPHeaderField:@"X-Mme-Device-Id"];
          [v61 setHeaderMMeDeviceId:v67];

          [v61 setParameters:v70];
          v68 = [v35 absoluteString];
          [v61 setURLString:v68];

          v42 = [a1 _performSilentEnrollmentPaymentSessionWithContext:v61];
        }

        goto LABEL_49;
      }

      v55 = +[AMSLogConfig sharedConfig];
      if (!v55)
      {
        v55 = +[AMSLogConfig sharedConfig];
      }

      v56 = [v55 OSLogObject];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v57 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v57;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        v58 = v57;
        _os_log_impl(&dword_192869000, v56, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed for no combined account", buf, 0x16u);
      }

      v73 = AMSError(105, @"Silent Enrollment Error", @"Split Account", 0);
      [(AMSMutablePromise *)v9 finishWithError:v73];
    }

    else
    {
      v51 = +[AMSLogConfig sharedConfig];
      if (!v51)
      {
        v51 = +[AMSLogConfig sharedConfig];
      }

      v52 = [v51 OSLogObject];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        v53 = objc_opt_class();
        *buf = 138543618;
        *&buf[4] = v53;
        *&buf[12] = 2114;
        *&buf[14] = v8;
        v54 = v53;
        _os_log_impl(&dword_192869000, v52, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed for no active iCloud account", buf, 0x16u);
      }

      v73 = AMSError(103, @"Silent Enrollment Error", @"No active iCloud account", 0);
      [(AMSMutablePromise *)v9 finishWithError:v73];
    }

    v42 = v9;
LABEL_49:

    goto LABEL_51;
  }

  v47 = +[AMSLogConfig sharedConfig];
  if (!v47)
  {
    v47 = +[AMSLogConfig sharedConfig];
  }

  v48 = [v47 OSLogObject];
  if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
  {
    v49 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v49;
    *&buf[12] = 2114;
    *&buf[14] = v8;
    v50 = v49;
    _os_log_impl(&dword_192869000, v48, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed for no active iTunes account", buf, 0x16u);
  }

  v75 = AMSError(103, @"Silent Enrollment Error", @"No active iTunes account", 0);
  [(AMSMutablePromise *)v9 finishWithError:v75];
  v42 = v9;

LABEL_51:

  return v42;
}

+ (id)_performSilentEnrollmentPaymentSessionWithContext:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, a1);
  v5 = [AMSMutableLazyPromise alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AMSCardEnrollmentVerificationTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke;
  v9[3] = &unk_1E73B5678;
  objc_copyWeak(&v11, &location);
  v6 = v4;
  v10 = v6;
  v7 = [(AMSMutableLazyPromise *)v5 initWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __87__AMSCardEnrollmentVerificationTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getSSSilentEnrollmentVerificationClass_softClass;
  v15 = getSSSilentEnrollmentVerificationClass_softClass;
  if (!getSSSilentEnrollmentVerificationClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSSSilentEnrollmentVerificationClass_block_invoke;
    v11[3] = &unk_1E73B3880;
    v11[4] = &v12;
    __getSSSilentEnrollmentVerificationClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [[v5 alloc] initWithSilentEnrollmentContext:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __87__AMSCardEnrollmentVerificationTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke_2;
  v9[3] = &unk_1E73B5988;
  v9[4] = WeakRetained;
  v10 = v3;
  v8 = v3;
  [v7 startWithCompletion:v9];
}

void __87__AMSCardEnrollmentVerificationTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = AMSSetLogKeyIfNeeded();
  if (v6)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *v28 = 138543874;
      *&v28[4] = objc_opt_class();
      *&v28[12] = 2114;
      *&v28[14] = v7;
      *&v28[22] = 2114;
      v29 = v6;
      v10 = *&v28[4];
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed with error: %{public}@", v28, 0x20u);
    }

    [*(a1 + 40) finishWithError:v6];
  }

  else
  {
    v11 = +[AMSLogConfig sharedConfig];
    v12 = v11;
    if (v5)
    {
      if (!v11)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v13 = [v12 OSLogObject];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *v28 = 138543618;
        *&v28[4] = objc_opt_class();
        *&v28[12] = 2114;
        *&v28[14] = v7;
        v14 = *&v28[4];
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment verification returned response dictionary", v28, 0x16u);
      }

      v15 = [v5 objectForKeyedSubscript:@"paymentId"];
      v16 = [v15 length];
      v17 = +[AMSLogConfig sharedConfig];
      v18 = v17;
      if (v16)
      {
        if (!v17)
        {
          v18 = +[AMSLogConfig sharedConfig];
        }

        v19 = [v18 OSLogObject];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          v20 = objc_opt_class();
          *v28 = 138543618;
          *&v28[4] = v20;
          *&v28[12] = 2114;
          *&v28[14] = v7;
          v21 = v20;
          _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment verification successfully parsed paymentId", v28, 0x16u);
        }

        [*(a1 + 40) finishWithResult:MEMORY[0x1E695E118]];
      }

      else
      {
        if (!v17)
        {
          v18 = +[AMSLogConfig sharedConfig];
        }

        v24 = [v18 OSLogObject];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = objc_opt_class();
          *v28 = 138543618;
          *&v28[4] = v25;
          *&v28[12] = 2114;
          *&v28[14] = v7;
          v26 = v25;
          _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment verification failed to parse paymentId", v28, 0x16u);
        }

        v27 = AMSError(301, @"Silent Enrollment Error", @"No paymentId", 0);
        [*(a1 + 40) finishWithError:v27];
      }
    }

    else
    {
      if (!v11)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v12 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *v28 = 138543618;
        *&v28[4] = objc_opt_class();
        *&v28[12] = 2114;
        *&v28[14] = v7;
        v23 = *&v28[4];
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment verification failed with nil response", v28, 0x16u);
      }

      v15 = AMSError(301, @"Silent Enrollment Error", @"No response dictionary", 0);
      [*(a1 + 40) finishWithError:v15];
    }
  }
}

@end