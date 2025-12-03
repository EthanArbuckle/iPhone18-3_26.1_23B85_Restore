@interface AMSCardEnrollmentPaymentSessionTask
+ (id)_paymentServiceURLStringForMerchantURL:(id)l;
+ (id)_performPaymentSessionWithBag:(id)bag isForParentalVerification:(BOOL)verification;
+ (id)_performSilentEnrollmentPaymentSessionWithContext:(id)context;
+ (void)paymentSessionWithBag:(id)bag completion:(id)completion;
@end

@implementation AMSCardEnrollmentPaymentSessionTask

+ (void)paymentSessionWithBag:(id)bag completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v7 = [self performPaymentSessionEnrollmentWithBag:bag];
  v15 = 0;
  v8 = [v7 resultWithError:&v15];
  v9 = v15;

  if (v9)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v10 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v12 = objc_opt_class();
      v13 = v12;
      v14 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v17 = v12;
      v18 = 2114;
      v19 = v14;
      v20 = 2114;
      v21 = v9;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Payment session failed with error: %{public}@", buf, 0x20u);
    }
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, v8, v9);
  }
}

+ (id)_performPaymentSessionWithBag:(id)bag isForParentalVerification:(BOOL)verification
{
  verificationCopy = verification;
  v76 = *MEMORY[0x1E69E9840];
  bagCopy = bag;
  v67 = AMSSetLogKeyIfNeeded();
  v7 = objc_alloc_init(AMSMutablePromise);
  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v8 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = objc_opt_class();
    *&buf[12] = 2114;
    *&buf[14] = v67;
    v10 = *&buf[4];
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Performing silent-enrollment payment session task", buf, 0x16u);
  }

  v11 = [bagCopy BOOLForKey:@"use-silent-enrollment"];
  v12 = [v11 valueWithError:0];
  if (objc_opt_respondsToSelector())
  {
    v13 = [bagCopy BOOLForKey:@"use-silent-enrollment"];
    v14 = [v13 valueWithError:0];
    bOOLValue = [v14 BOOLValue];

    if (bOOLValue)
    {
      ams_sharedAccountStore = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiTunesAccount = [ams_sharedAccountStore ams_activeiTunesAccount];

      if (!ams_activeiTunesAccount)
      {
        v40 = +[AMSLogConfig sharedConfig];
        if (!v40)
        {
          v40 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject2 = [v40 OSLogObject];
        if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
        {
          v42 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v42;
          *&buf[12] = 2114;
          *&buf[14] = v67;
          v43 = v42;
          _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed for no active iTunes account", buf, 0x16u);
        }

        ams_activeiCloudAccount = AMSError(103, @"Silent Enrollment Error", @"No active iTunes account", 0);
        [(AMSMutablePromise *)v7 finishWithError:ams_activeiCloudAccount];
        v35 = v7;
        goto LABEL_45;
      }

      ams_sharedAccountStore2 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
      ams_activeiCloudAccount = [ams_sharedAccountStore2 ams_activeiCloudAccount];

      if (ams_activeiCloudAccount)
      {
        ams_sharedAccountStore3 = [MEMORY[0x1E6959A48] ams_sharedAccountStore];
        ams_isActiveAccountCombined = [ams_sharedAccountStore3 ams_isActiveAccountCombined];

        if (ams_isActiveAccountCombined)
        {
          v66 = [[AMSURLRequestEncoder alloc] initWithBag:bagCopy];
          [(AMSURLRequestEncoder *)v66 setAccount:ams_activeiCloudAccount];
          v22 = [bagCopy URLForKey:@"applePayPaymentSession"];
          v65 = [v22 valueWithError:0];

          v62 = +[AMSCardEnrollment paymentServicesMerchantURL];
          v64 = [self _paymentServiceURLStringForMerchantURL:v62];
          v23 = MEMORY[0x1E696AEC0];
          absoluteString = [v65 absoluteString];
          v63 = [v23 stringWithFormat:@"%@?paymentServiceUrl=%@", absoluteString, v64];

          if (verificationCopy)
          {
            v25 = MEMORY[0x1E696AEC0];
            absoluteString2 = [v65 absoluteString];
            v27 = [v25 stringWithFormat:@"%@?isPVK=true&paymentServiceUrl=%@", absoluteString2, v64];

            v63 = v27;
          }

          v28 = [(AMSURLRequestEncoder *)v66 requestWithMethod:2 URL:v65 parameters:0];
          v68 = 0;
          v29 = [v28 resultWithError:&v68];
          v30 = v68;

          if (v30)
          {
            v31 = +[AMSLogConfig sharedConfig];
            if (!v31)
            {
              v31 = +[AMSLogConfig sharedConfig];
            }

            oSLogObject3 = [v31 OSLogObject];
            if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
            {
              v33 = objc_opt_class();
              *buf = 138543874;
              *&buf[4] = v33;
              *&buf[12] = 2114;
              *&buf[14] = v67;
              *&buf[22] = 2114;
              v74 = v30;
              v34 = v33;
              _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed to encode request with error: %{public}@", buf, 0x20u);
            }

            [(AMSMutablePromise *)v7 finishWithError:v30];
            v35 = v7;
          }

          else
          {
            [v29 ams_addSilentEnrollmentHeadersForAccount:ams_activeiCloudAccount];
            v69 = 0;
            v70 = &v69;
            v71 = 0x2050000000;
            v52 = getSSSilentEnrollmentContextClass_softClass;
            v72 = getSSSilentEnrollmentContextClass_softClass;
            if (!getSSSilentEnrollmentContextClass_softClass)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 3221225472;
              *&buf[16] = __getSSSilentEnrollmentContextClass_block_invoke;
              v74 = &unk_1E73B3880;
              v75 = &v69;
              __getSSSilentEnrollmentContextClass_block_invoke(buf);
              v52 = v70[3];
            }

            v53 = v52;
            _Block_object_dispose(&v69, 8);
            v54 = objc_alloc_init(v52);
            ams_DSID = [ams_activeiCloudAccount ams_DSID];
            [v54 setAccountIdentifier:ams_DSID];

            v56 = [v29 valueForHTTPHeaderField:@"X-Apple-ADSID"];
            [v54 setHeaderADSID:v56];

            v57 = [v29 valueForHTTPHeaderField:@"X-Apple-GS-Token"];
            [v54 setHeaderGSToken:v57];

            v58 = [v29 valueForHTTPHeaderField:@"Guid"];
            [v54 setHeaderGuid:v58];

            v59 = [v29 valueForHTTPHeaderField:@"X-MMe-Client-Info"];
            [v54 setHeaderMMeClientInfo:v59];

            v60 = [v29 valueForHTTPHeaderField:@"X-Mme-Device-Id"];
            [v54 setHeaderMMeDeviceId:v60];

            [v54 setURLString:v63];
            v35 = [self _performSilentEnrollmentPaymentSessionWithContext:v54];
          }

          goto LABEL_44;
        }

        v48 = +[AMSLogConfig sharedConfig];
        if (!v48)
        {
          v48 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject4 = [v48 OSLogObject];
        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
        {
          v50 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v50;
          *&buf[12] = 2114;
          *&buf[14] = v67;
          v51 = v50;
          _os_log_impl(&dword_192869000, oSLogObject4, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed for no combined account", buf, 0x16u);
        }

        v66 = AMSError(105, @"Silent Enrollment Error", @"Split Account", 0);
        [(AMSMutablePromise *)v7 finishWithError:v66];
      }

      else
      {
        v44 = +[AMSLogConfig sharedConfig];
        if (!v44)
        {
          v44 = +[AMSLogConfig sharedConfig];
        }

        oSLogObject5 = [v44 OSLogObject];
        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_ERROR))
        {
          v46 = objc_opt_class();
          *buf = 138543618;
          *&buf[4] = v46;
          *&buf[12] = 2114;
          *&buf[14] = v67;
          v47 = v46;
          _os_log_impl(&dword_192869000, oSLogObject5, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed for no active iCloud account", buf, 0x16u);
        }

        v66 = AMSError(103, @"Silent Enrollment Error", @"No active iCloud account", 0);
        [(AMSMutablePromise *)v7 finishWithError:v66];
      }

      v35 = v7;
LABEL_44:

LABEL_45:
      goto LABEL_46;
    }
  }

  else
  {
  }

  v36 = +[AMSLogConfig sharedConfig];
  if (!v36)
  {
    v36 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject6 = [v36 OSLogObject];
  if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
  {
    v38 = objc_opt_class();
    *buf = 138543618;
    *&buf[4] = v38;
    *&buf[12] = 2114;
    *&buf[14] = v67;
    v39 = v38;
    _os_log_impl(&dword_192869000, oSLogObject6, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed for feature not enabled", buf, 0x16u);
  }

  ams_activeiTunesAccount = AMSError(5, @"Silent Enrollment Error", @"Feature Not Enabled", 0);
  [(AMSMutablePromise *)v7 finishWithError:ams_activeiTunesAccount];
  v35 = v7;
LABEL_46:

  return v35;
}

+ (id)_paymentServiceURLStringForMerchantURL:(id)l
{
  ams_URLByDeletingTrailingSlash = [l ams_URLByDeletingTrailingSlash];
  absoluteString = [ams_URLByDeletingTrailingSlash absoluteString];
  host = [ams_URLByDeletingTrailingSlash host];
  v6 = [absoluteString rangeOfString:host];

  absoluteString2 = [ams_URLByDeletingTrailingSlash absoluteString];
  v8 = [absoluteString2 substringFromIndex:v6];

  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@":/"];
  invertedSet = [v9 invertedSet];
  v11 = [v8 stringByAddingPercentEncodingWithAllowedCharacters:invertedSet];

  return v11;
}

+ (id)_performSilentEnrollmentPaymentSessionWithContext:(id)context
{
  contextCopy = context;
  objc_initWeak(&location, self);
  v5 = [AMSMutableLazyPromise alloc];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__AMSCardEnrollmentPaymentSessionTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke;
  v9[3] = &unk_1E73B5678;
  objc_copyWeak(&v11, &location);
  v6 = contextCopy;
  v10 = v6;
  v7 = [(AMSMutableLazyPromise *)v5 initWithBlock:v9];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v7;
}

void __89__AMSCardEnrollmentPaymentSessionTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v5 = getSSSilentEnrollmentPaymentSessionClass_softClass;
  v15 = getSSSilentEnrollmentPaymentSessionClass_softClass;
  if (!getSSSilentEnrollmentPaymentSessionClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getSSSilentEnrollmentPaymentSessionClass_block_invoke;
    v11[3] = &unk_1E73B3880;
    v11[4] = &v12;
    __getSSSilentEnrollmentPaymentSessionClass_block_invoke(v11);
    v5 = v13[3];
  }

  v6 = v5;
  _Block_object_dispose(&v12, 8);
  v7 = [[v5 alloc] initWithSilentEnrollmentContext:*(a1 + 32)];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __89__AMSCardEnrollmentPaymentSessionTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke_2;
  v9[3] = &unk_1E73B5988;
  v9[4] = WeakRetained;
  v10 = v3;
  v8 = v3;
  [v7 startWithCompletion:v9];
}

void __89__AMSCardEnrollmentPaymentSessionTask__performSilentEnrollmentPaymentSessionWithContext___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
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
      *buf = 138543874;
      *&buf[4] = objc_opt_class();
      *&buf[12] = 2114;
      *&buf[14] = v7;
      *&buf[22] = 2114;
      v27 = v6;
      v10 = *&buf[4];
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed with error: %{public}@", buf, 0x20u);
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
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2114;
        *&buf[14] = v7;
        v14 = *&buf[4];
        _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Silent-enrollment payment session returned response dictionary", buf, 0x16u);
      }

      v22 = 0;
      v23 = &v22;
      v24 = 0x2050000000;
      v15 = _MergedGlobals_94;
      v25 = _MergedGlobals_94;
      if (!_MergedGlobals_94)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __getPKPaymentMerchantSessionClass_block_invoke;
        v27 = &unk_1E73B3880;
        v28 = &v22;
        __getPKPaymentMerchantSessionClass_block_invoke(buf);
        v15 = v23[3];
      }

      v16 = v15;
      _Block_object_dispose(&v22, 8);
      v17 = [v15 alloc];
      v18 = [v17 initWithDictionary:{v5, v22}];
      [*(a1 + 40) finishWithResult:v18];
    }

    else
    {
      if (!v11)
      {
        v12 = +[AMSLogConfig sharedConfig];
      }

      v19 = [v12 OSLogObject];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = objc_opt_class();
        *&buf[12] = 2114;
        *&buf[14] = v7;
        v20 = *&buf[4];
        _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Silent-enrollment payment session failed with nil response", buf, 0x16u);
      }

      v21 = AMSError(301, @"Silent Enrollment Error", @"No response dictionary", 0);
      [*(a1 + 40) finishWithError:v21];
    }
  }
}

@end