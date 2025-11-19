@interface AMSCardEnrollment
+ (BOOL)_shouldAttemptAutoEnrollmentWithCountryCode:(id)a3;
+ (BOOL)beginCardEnrollmentAttemptWithBag:(id)a3 account:(id)a4;
+ (BOOL)canPerformPSD2StyleBuyForAccessControlRef:(__SecAccessControl *)a3;
+ (BOOL)isAURUMWithBag:(id)a3;
+ (BOOL)isApplePayWalletRefreshedForBag:(id)a3;
+ (BOOL)shouldAttemptApplePayClassicWithBag:(id)a3 account:(id)a4 accessControlRef:(__SecAccessControl *)a5;
+ (BOOL)shouldAttemptApplePayClassicWithBag:(id)a3 account:(id)a4 options:(id)a5;
+ (BOOL)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4 account:(id)a5 accessControlRef:(__SecAccessControl *)a6;
+ (BOOL)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4 account:(id)a5 options:(id)a6;
+ (BOOL)shouldAttemptAutoEnrollmentWithBag:(id)a3 account:(id)a4 accessControlRef:(__SecAccessControl *)a5;
+ (BOOL)shouldAttemptAutoEnrollmentWithBag:(id)a3 account:(id)a4 options:(id)a5;
+ (BOOL)shouldCheckForWalletBiometricsForBag:(id)a3;
+ (BOOL)shouldUseApplePayClassicWithBag:(id)a3;
+ (BOOL)shouldUseAutoEnrollmentWithBag:(id)a3;
+ (BOOL)shouldUseExtendedEnrollmentWithBag:(id)a3;
+ (BOOL)shouldUseUpsellEnrollmentWithBag:(id)a3;
+ (NSURL)paymentServicesMerchantURL;
+ (id)_cardEligibilityStatusForCountryCode:(id)a3;
+ (id)getCurrentPaymentPassIdentifier;
+ (id)isCardEligibleForAutoEnrollmentWithCountryCode:(id)a3;
+ (id)paymentServicesMerchantURLPromise;
+ (id)shouldAttemptApplePayClassicWithAccount:(id)a3 options:(id)a4 countryCode:(id)a5 paymentNetworks:(id)a6;
+ (id)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4;
+ (void)clearAutoEnrollmentIdentifier;
+ (void)finishCardEnrollmentAttemptWithBag:(id)a3 buyParams:(id)a4 purchaseResult:(id)a5;
+ (void)updateAutoEnrollmentIdentifier;
@end

@implementation AMSCardEnrollment

+ (NSURL)paymentServicesMerchantURL
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 paymentServicesMerchantURLPromise];
  v12 = 0;
  v3 = [v2 resultWithError:&v12];
  v4 = v12;
  v5 = v4;
  if (!v3 || v4)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = v8;
      v10 = AMSSetLogKeyIfNeeded();
      *buf = 138543874;
      v14 = v8;
      v15 = 2114;
      v16 = v10;
      v17 = 2114;
      v18 = v5;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Payment services call failed with error: %{public}@", buf, 0x20u);
    }
  }

  return v3;
}

+ (BOOL)beginCardEnrollmentAttemptWithBag:(id)a3 account:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ((!+[AMSCardEnrollment shouldCheckForWalletBiometricsForBag:](AMSCardEnrollment, "shouldCheckForWalletBiometricsForBag:", v5) || +[AMSDevice isWalletBiometricsEnabled]) && ([AMSCardEnrollment shouldUseApplePayClassicWithBag:v5]|| [AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v5]))
  {
    v7 = objc_alloc_init(AMSKeychainOptions);
    [(AMSKeychainOptions *)v7 setPurpose:0];
    [(AMSKeychainOptions *)v7 setStyle:+[AMSKeychainOptions preferredAttestationStyle]];
    if (!AMSIsEntitledForDirectKeychainAccess())
    {
      if ([AMSCardEnrollment shouldUseApplePayClassicWithBag:v5])
      {
        v16 = [AMSCardEnrollment shouldAttemptApplePayClassicWithBag:v5 account:v6 options:v7];
      }

      else
      {
        if (![AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v5])
        {
          v15 = 0;
          goto LABEL_28;
        }

        v16 = [AMSCardEnrollment shouldAttemptAutoEnrollmentWithBag:v5 account:v6 options:v7];
      }

      v15 = v16;
LABEL_28:

      goto LABEL_29;
    }

    v19 = 0;
    v8 = [AMSKeychain copyAccessControlRefWithAccount:v6 options:v7 error:&v19];
    v9 = v19;
    if (v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
      if (!v10)
      {
        v10 = +[AMSLogConfig sharedConfig];
      }

      v11 = [v10 OSLogObject];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = objc_opt_class();
        v18 = v12;
        v13 = AMSSetLogKeyIfNeeded();
        *buf = 138543874;
        v21 = v12;
        v22 = 2114;
        v23 = v13;
        v24 = 2114;
        v25 = v9;
        _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] ACL copy failed with error: %{public}@", buf, 0x20u);
      }
    }

    if ([AMSCardEnrollment shouldUseApplePayClassicWithBag:v5, v18])
    {
      v14 = [AMSCardEnrollment shouldAttemptApplePayClassicWithBag:v5 account:v6 accessControlRef:v8];
    }

    else
    {
      if (![AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v5])
      {
        v15 = 0;
        if (!v8)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      v14 = [AMSCardEnrollment shouldAttemptAutoEnrollmentWithBag:v5 account:v6 accessControlRef:v8];
    }

    v15 = v14;
    if (!v8)
    {
LABEL_21:

      goto LABEL_28;
    }

LABEL_20:
    CFRelease(v8);
    goto LABEL_21;
  }

  v15 = 0;
LABEL_29:

  return v15;
}

+ (void)clearAutoEnrollmentIdentifier
{
  v11 = *MEMORY[0x1E69E9840];
  [AMSDefaults setDefaultPaymentPassIdentifier:0];
  v2 = +[AMSLogConfig sharedConfig];
  if (!v2)
  {
    v2 = +[AMSLogConfig sharedConfig];
  }

  v3 = [v2 OSLogObject];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = v4;
    v6 = AMSSetLogKeyIfNeeded();
    v7 = 138543618;
    v8 = v4;
    v9 = 2114;
    v10 = v6;
    _os_log_impl(&dword_192869000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Removing auto-enrollment identifier", &v7, 0x16u);
  }
}

+ (void)finishCardEnrollmentAttemptWithBag:(id)a3 buyParams:(id)a4 purchaseResult:(id)a5
{
  v51 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a5;
  v9 = a3;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [AMSCardEnrollment shouldUseAutoEnrollmentWithBag:v9];

  if (!v11)
  {
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 138543618;
    v44 = objc_opt_class();
    v45 = 2114;
    v46 = v10;
    v16 = v44;
    v17 = "%{public}@: [%{public}@] Skipping DPAN update check for auto-enrollment requirement";
    goto LABEL_25;
  }

  v12 = [v7 parameterForKey:@"applePayPaymentServiceURL"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v18 = [v7 parameterForKey:@"pkPayment"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = v18;

    v20 = v19 != 0;
    if (v13 && v19)
    {
      v21 = +[AMSLogConfig sharedConfig];
      if (!v21)
      {
        v21 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v21 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v44 = objc_opt_class();
        v45 = 2114;
        v46 = v10;
        v23 = v44;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Finished auto-enrollment, performing DPAN update check", buf, 0x16u);
      }

      v24 = [v8 responseDictionary];
      v25 = [v24 objectForKeyedSubscript:@"need-apple-pay-auto-enroll-retry"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = v25;
      }

      else
      {
        v14 = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && ([v14 lowercaseString], v32 = objc_claimAutoreleasedReturnValue(), v33 = objc_msgSend(v32, "isEqualToString:", @"true"), v32, v33))
      {
        v34 = +[AMSLogConfig sharedConfig];
        if (!v34)
        {
          v34 = +[AMSLogConfig sharedConfig];
        }

        v35 = [v34 OSLogObject];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          v36 = objc_opt_class();
          *buf = 138543618;
          v44 = v36;
          v45 = 2114;
          v46 = v10;
          v37 = v36;
          _os_log_impl(&dword_192869000, v35, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Clearing DPAN cache for auto-enrollment, server-driven instruction", buf, 0x16u);
        }

        +[AMSCardEnrollment clearAutoEnrollmentIdentifier];
      }

      else
      {
        v38 = +[AMSLogConfig sharedConfig];
        if (!v38)
        {
          v38 = +[AMSLogConfig sharedConfig];
        }

        v39 = [v38 OSLogObject];
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = objc_opt_class();
          *buf = 138543618;
          v44 = v40;
          v45 = 2114;
          v46 = v10;
          v41 = v40;
          _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Updating cached DPAN identifier for auto-enrollment", buf, 0x16u);
        }

        +[AMSCardEnrollment updateAutoEnrollmentIdentifier];
      }

      goto LABEL_45;
    }
  }

  else
  {

    v20 = 0;
  }

  v26 = +[AMSLogConfig sharedConfig];
  v14 = v26;
  if (v13 && !v20)
  {
    if (!v26)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    *buf = 138543618;
    v44 = objc_opt_class();
    v45 = 2114;
    v46 = v10;
    v16 = v44;
    v17 = "%{public}@: [%{public}@] Did not finish auto-enrollment, leaving DPAN cache unchanged";
LABEL_25:
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0x16u);

LABEL_26:
    goto LABEL_45;
  }

  if (!v26)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v27 = [v14 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = MEMORY[0x1E696AD98];
    v42 = v28;
    v30 = [v29 numberWithBool:v13 != 0];
    v31 = [MEMORY[0x1E696AD98] numberWithBool:v20];
    *buf = 138544130;
    v44 = v28;
    v45 = 2114;
    v46 = v10;
    v47 = 2114;
    v48 = v30;
    v49 = 2114;
    v50 = v31;
    _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping DPAN update check for auto-enrollment with state: %{public}@ %{public}@", buf, 0x2Au);
  }

LABEL_45:
}

+ (BOOL)shouldAttemptApplePayClassicWithBag:(id)a3 account:(id)a4 options:(id)a5
{
  v52 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v42 = a4;
  v10 = a5;
  v11 = AMSSetLogKeyIfNeeded();
  v12 = [v9 stringForKey:@"countryCode"];
  v45 = 0;
  v13 = [v12 valueWithError:&v45];
  v14 = v45;
  v15 = [v13 uppercaseString];

  if (v14)
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
      *buf = 138543874;
      v47 = v18;
      v48 = 2114;
      v49 = v11;
      v50 = 2114;
      v51 = @"countryCode";
      v19 = v18;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] No bag key found: %{public}@", buf, 0x20u);
    }

    v20 = 0;
  }

  else
  {
    v21 = [v9 arrayForKey:@"apple-pay-classic-networks"];
    v44 = 0;
    v16 = [v21 valueWithError:&v44];
    v14 = v44;

    v41 = v10;
    if (v14)
    {
      v17 = +[AMSLogConfig sharedConfig];
      if (!v17)
      {
        v17 = +[AMSLogConfig sharedConfig];
      }

      v22 = [v17 OSLogObject];
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = objc_opt_class();
        *buf = 138543874;
        v47 = v23;
        v48 = 2114;
        v49 = v11;
        v50 = 2114;
        v51 = @"apple-pay-classic-networks";
        v24 = v23;
        _os_log_impl(&dword_192869000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] No bag key found: %{public}@", buf, 0x20u);
      }

      v20 = 0;
    }

    else
    {
      v17 = [MEMORY[0x1E695DFD8] setWithArray:v16];
      v25 = [a1 shouldAttemptApplePayClassicWithAccount:v42 options:v10 countryCode:v15 paymentNetworks:v17];
      v43 = 0;
      v22 = [v25 resultWithError:&v43];
      v14 = v43;

      if (v14)
      {
        v40 = v22;
        v26 = +[AMSLogConfig sharedConfig];
        if (!v26)
        {
          v26 = +[AMSLogConfig sharedConfig];
        }

        v39 = v26;
        v27 = [v26 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          log = v27;
          v28 = AMSLogKey();
          v29 = MEMORY[0x1E696AEC0];
          v30 = objc_opt_class();
          v37 = v28;
          if (v28)
          {
            v31 = AMSLogKey();
            v35 = NSStringFromSelector(a2);
            v36 = v31;
            [v29 stringWithFormat:@"%@: [%@] %@ ", v30, v31, v35];
          }

          else
          {
            v36 = NSStringFromSelector(a2);
            [v29 stringWithFormat:@"%@: %@ ", v30, v36];
          }
          v32 = ;
          v33 = AMSLogableError(v14);
          *buf = 138543618;
          v47 = v32;
          v48 = 2114;
          v49 = v33;
          _os_log_impl(&dword_192869000, log, OS_LOG_TYPE_ERROR, "%{public}@ error: %{public}@", buf, 0x16u);
          if (v37)
          {

            v32 = v35;
          }

          v27 = log;
        }

        v20 = 0;
        v22 = v40;
      }

      else
      {
        v20 = [v22 BOOLValue];
      }
    }

    v10 = v41;
  }

  return v20;
}

+ (BOOL)shouldAttemptApplePayClassicWithBag:(id)a3 account:(id)a4 accessControlRef:(__SecAccessControl *)a5
{
  v33 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [v8 stringForKey:@"countryCode"];
  v26 = 0;
  v12 = [v11 valueWithError:&v26];
  v13 = v26;
  v14 = [v12 uppercaseString];

  if (v13)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 138543874;
      v28 = v17;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = @"countryCode";
      v18 = v17;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] No bag key found: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    v19 = [v8 arrayForKey:@"apple-pay-classic-networks"];
    v25 = 0;
    v15 = [v19 valueWithError:&v25];
    v13 = v25;

    if (!v13)
    {
      v16 = [MEMORY[0x1E695DFD8] setWithArray:v15];
      v23 = [a1 shouldAttemptApplePayClassicWithCountryCode:v14 paymentNetworks:v16 account:v9 accessControlRef:a5];
      goto LABEL_13;
    }

    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    v20 = [v16 OSLogObject];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543874;
      v28 = v21;
      v29 = 2114;
      v30 = v10;
      v31 = 2114;
      v32 = @"apple-pay-classic-networks";
      v22 = v21;
      _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] No bag key found: %{public}@", buf, 0x20u);
    }
  }

  v23 = 0;
LABEL_13:

  return v23;
}

+ (BOOL)shouldAttemptAutoEnrollmentWithBag:(id)a3 account:(id)a4 options:(id)a5
{
  v30 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = AMSSetLogKeyIfNeeded();
  if ([AMSBiometrics stateForAccount:v9]!= 1)
  {
    v15 = +[AMSLogConfig sharedConfig];
    if (!v15)
    {
      v15 = +[AMSLogConfig sharedConfig];
    }

    v16 = [v15 OSLogObject];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v25 = objc_opt_class();
      v26 = 2114;
      v27 = v11;
      v17 = v25;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping biometric/ACL check for no biometrics", buf, 0x16u);
    }

    v13 = 0;
    goto LABEL_14;
  }

  v23 = 0;
  v12 = [AMSBiometrics isActionSupportedForType:3 account:v9 options:v10 error:&v23];
  v13 = v23;
  if (!v12)
  {
    v18 = +[AMSLogConfig sharedConfig];
    if (!v18)
    {
      v18 = +[AMSLogConfig sharedConfig];
    }

    v19 = [v18 OSLogObject];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_opt_class();
      *buf = 138543874;
      v25 = v20;
      v26 = 2114;
      v27 = v11;
      v28 = 2114;
      v29 = v13;
      v21 = v20;
      _os_log_impl(&dword_192869000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping biometric/ACL check for error: %{public}@", buf, 0x20u);
    }

LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  v14 = [a1 isApplePayWalletRefreshedForBag:v8];
LABEL_15:

  return v14;
}

+ (BOOL)shouldAttemptAutoEnrollmentWithBag:(id)a3 account:(id)a4 accessControlRef:(__SecAccessControl *)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = AMSSetLogKeyIfNeeded();
  v11 = [AMSBiometrics stateForAccount:v9];

  if (v11 != 1)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v10;
    v15 = v21;
    v16 = "%{public}@: [%{public}@] [auto-enrollment] Skipping biometric/ACL check for no biometrics";
LABEL_13:
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, v16, &v20, 0x16u);

LABEL_19:
    v12 = 0;
    goto LABEL_20;
  }

  if (!a5)
  {
    v13 = +[AMSLogConfig sharedConfig];
    if (!v13)
    {
      v13 = +[AMSLogConfig sharedConfig];
    }

    v14 = [v13 OSLogObject];
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    v20 = 138543618;
    v21 = objc_opt_class();
    v22 = 2114;
    v23 = v10;
    v15 = v21;
    v16 = "%{public}@: [%{public}@] [auto-enrollment] Skipping biometric/ACL check for no ACL";
    goto LABEL_13;
  }

  if (![AMSBiometrics isActionSupported:3 withAccessControl:a5])
  {
    v13 = [AMSBiometrics ACLVersionForAccessControl:a5];
    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v17 = [v14 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v20 = 138543874;
      v21 = objc_opt_class();
      v22 = 2114;
      v23 = v10;
      v24 = 2114;
      v25 = v13;
      v18 = v21;
      _os_log_impl(&dword_192869000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping biometric/ACL check for bad ACL version: %{public}@", &v20, 0x20u);
    }

    goto LABEL_19;
  }

  v12 = [a1 isApplePayWalletRefreshedForBag:v8];
LABEL_20:

  return v12;
}

+ (BOOL)shouldUseApplePayClassicWithBag:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 BOOLForKey:@"use-apple-pay-classic"];

  v24 = 0;
  v6 = [v5 valueWithError:&v24];
  v7 = v24;

  if (!v6)
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = AMSLogableError(v7);
      *buf = 138544130;
      v26 = v11;
      v27 = 2114;
      v28 = v4;
      v29 = 2114;
      v30 = @"use-apple-pay-classic";
      v31 = 2114;
      v32 = v13;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] No bag key found: %{public}@, error: %{public}@", buf, 0x2Au);
    }

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v14 = +[AMSUnitTests isRunningUnitTests];
    v15 = +[AMSLogConfig sharedConfig];
    v9 = v15;
    if (v14)
    {
      if (!v15)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v16 = [v9 OSLogObject];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = objc_opt_class();
        *buf = 138543874;
        v26 = v17;
        v27 = 2114;
        v28 = v4;
        v29 = 2114;
        v30 = @"use-apple-pay-classic";
        v18 = v17;
        _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] Bag key is not number: %{public}@", buf, 0x20u);
      }

      v19 = [MEMORY[0x1E696AD88] defaultCenter];
      v20 = +[AMSLogConfig sharedConfig];
      [v19 postNotificationName:@"com.apple.AppleMediaServicesTests.FaultLogged" object:v20 userInfo:0];

      goto LABEL_19;
    }

    if (!v15)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
    {
      v21 = objc_opt_class();
      *buf = 138543874;
      v26 = v21;
      v27 = 2114;
      v28 = v4;
      v29 = 2114;
      v30 = @"use-apple-pay-classic";
      v22 = v21;
      _os_log_impl(&dword_192869000, v10, OS_LOG_TYPE_FAULT, "%{public}@: [%{public}@] [apple-pay-classic] Bag key is not number: %{public}@", buf, 0x20u);
    }

LABEL_18:

LABEL_19:
    v8 = 0;
    goto LABEL_20;
  }

  v8 = [v6 BOOLValue];
LABEL_20:

  return v8;
}

+ (BOOL)shouldCheckForWalletBiometricsForBag:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 BOOLForKey:@"auto-enrollment-check-biometrics"];

  v19 = 0;
  v6 = [v5 valueWithError:&v19];
  v7 = v19;
  v8 = [v6 BOOLValue];

  v9 = +[AMSLogConfig sharedConfig];
  v10 = v9;
  if (v7)
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = objc_opt_class();
      *buf = 138543874;
      v21 = v12;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v7;
      v13 = v12;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No bag key found for shouldCheckForWalletBiometrics, but the flag is default to enabled, if bag key does not exist , error: %{public}@", buf, 0x20u);
    }

    LOBYTE(v8) = 1;
  }

  else
  {
    if (!v9)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = MEMORY[0x1E696AD98];
      v16 = v14;
      v17 = [v15 numberWithBool:v8];
      *buf = 138543874;
      v21 = v14;
      v22 = 2114;
      v23 = v4;
      v24 = 2114;
      v25 = v17;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Auto Enrollment shouldCheckForWalletBiometrics from the bag: %{public}@", buf, 0x20u);
    }
  }

  return v8;
}

+ (BOOL)shouldUseAutoEnrollmentWithBag:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = AMSSetLogKeyIfNeeded();
  v5 = [v3 doubleForKey:@"auto-enrollment-percentage"];
  v28 = 0;
  v6 = [v5 valueWithError:&v28];
  v7 = v28;
  [v6 doubleValue];
  v9 = v8;

  if (v7)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v12 = objc_opt_class();
    *buf = 138543874;
    v30 = v12;
    v31 = 2114;
    v32 = v4;
    v33 = 2114;
    v34 = @"auto-enrollment-percentage";
    v13 = v12;
LABEL_11:
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] No bag key found: %{public}@", buf, 0x20u);

LABEL_12:
    LOBYTE(v18) = 0;
    goto LABEL_13;
  }

  v14 = [v3 integerForKey:@"auto-enrollment-session-duration"];
  v27 = 0;
  v15 = [v14 valueWithError:&v27];
  v7 = v27;
  v16 = [v15 integerValue];

  if (v7)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_12;
    }

    v17 = objc_opt_class();
    *buf = 138543874;
    v30 = v17;
    v31 = 2114;
    v32 = v4;
    v33 = 2114;
    v34 = @"auto-enrollment-session-duration";
    v13 = v17;
    goto LABEL_11;
  }

  v20 = v16;
  v18 = [AMSDefaults shouldSampleWithPercentage:0x1F0725758 sessionDuration:v9 identifier:v16];
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = MEMORY[0x1E696AD98];
    v23 = v21;
    v24 = [v22 numberWithDouble:v9];
    v25 = [MEMORY[0x1E696AD98] numberWithDouble:v20];
    v26 = [MEMORY[0x1E696AD98] numberWithBool:v18];
    *buf = 138544386;
    v30 = v21;
    v31 = 2114;
    v32 = v4;
    v33 = 2114;
    v34 = v24;
    v35 = 2114;
    v36 = v25;
    v37 = 2114;
    v38 = v26;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ [%{public}@] [auto-enrollment] Sampling with bag values: %{public}@, %{public}@ and result: %{public}@", buf, 0x34u);
  }

  v7 = 0;
LABEL_13:

  return v18;
}

+ (BOOL)shouldUseExtendedEnrollmentWithBag:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!os_variant_has_internal_content())
  {
LABEL_20:
    v13 = [v3 BOOLForKey:@"use-extended-enrollment"];
    v22 = 0;
    v14 = [v13 valueWithError:&v22];
    v5 = v22;
    v8 = [v14 BOOLValue];

    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v6 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x1E696AD98];
      v18 = v16;
      v19 = [v17 numberWithBool:v8];
      v20 = AMSLogableError(v5);
      *buf = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [UpsellEnrollment] Retrieved extended-enrollment bag value: %{public}@, error: %{public}@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v4 = +[AMSDefaults cardEnrollmentManual];
  if (!v4)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = objc_opt_class();
      v12 = v24;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [ExtendedEnrollment] Honoring extended-enrollment bag value", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = +[AMSLogConfig sharedConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = objc_opt_class();
        v7 = v24;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [ExtendedEnrollment] Enabling extended-enrollment with default settings", buf, 0xCu);
      }

      LOBYTE(v8) = 1;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v9 = v24;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [ExtendedEnrollment] Skipping extended-enrollment for default settings", buf, 0xCu);
  }

  LOBYTE(v8) = 0;
LABEL_25:

  return v8;
}

+ (BOOL)shouldUseUpsellEnrollmentWithBag:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a3;
  if (!os_variant_has_internal_content())
  {
LABEL_20:
    v13 = [v3 BOOLForKey:@"use-enrollment-upsell"];
    v22 = 0;
    v14 = [v13 valueWithError:&v22];
    v5 = v22;
    v8 = [v14 BOOLValue];

    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v6 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = objc_opt_class();
      v17 = MEMORY[0x1E696AD98];
      v18 = v16;
      v19 = [v17 numberWithBool:v8];
      v20 = AMSLogableError(v5);
      *buf = 138543874;
      v24 = v16;
      v25 = 2114;
      v26 = v19;
      v27 = 2114;
      v28 = v20;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [UpsellEnrollment] Retrieved upsell-enrollment bag value: %{public}@, error: %{public}@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v4 = +[AMSDefaults cardEnrollmentUpsell];
  if (!v4)
  {
    v10 = +[AMSLogConfig sharedConfig];
    if (!v10)
    {
      v10 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v10 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v24 = objc_opt_class();
      v12 = v24;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [UpsellEnrollment] Honoring upsell-enrollment bag value", buf, 0xCu);
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    if (v4 == 1)
    {
      v5 = +[AMSLogConfig sharedConfig];
      if (!v5)
      {
        v5 = +[AMSLogConfig sharedConfig];
      }

      v6 = [v5 OSLogObject];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v24 = objc_opt_class();
        v7 = v24;
        _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [UpsellEnrollment] Enabling upsell-enrollment with default settings", buf, 0xCu);
      }

      LOBYTE(v8) = 1;
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v5 = +[AMSLogConfig sharedConfig];
  if (!v5)
  {
    v5 = +[AMSLogConfig sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v24 = objc_opt_class();
    v9 = v24;
    _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [UpsellEnrollment] Skipping upsell-enrollment for default settings", buf, 0xCu);
  }

  LOBYTE(v8) = 0;
LABEL_25:

  return v8;
}

+ (void)updateAutoEnrollmentIdentifier
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = AMSSetLogKeyIfNeeded();
  v4 = [a1 getCurrentPaymentPassIdentifier];
  v16 = 0;
  v5 = [v4 resultWithError:&v16];
  v6 = v16;

  if (v6)
  {
    v7 = +[AMSLogConfig sharedConfig];
    if (!v7)
    {
      v7 = +[AMSLogConfig sharedConfig];
    }

    v8 = [v7 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      *buf = 138543874;
      v18 = v9;
      v19 = 2114;
      v20 = v3;
      v21 = 2114;
      v22 = v6;
      v10 = v9;
      _os_log_impl(&dword_192869000, v8, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [auto-enrollment] Failed to obtain current DPAN identifier during update operation with error: %{public}@", buf, 0x20u);
    }
  }

  [AMSDefaults setDefaultPaymentPassIdentifier:v5];
  v11 = +[AMSLogConfig sharedConfig];
  if (!v11)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v12 = [v11 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = objc_opt_class();
    v14 = v13;
    v15 = AMSHashIfNeeded(v5);
    *buf = 138543874;
    v18 = v13;
    v19 = 2114;
    v20 = v3;
    v21 = 2114;
    v22 = v15;
    _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Updating extended enrollment identifier with value: %{public}@", buf, 0x20u);
  }
}

+ (BOOL)isAURUMWithBag:(id)a3
{
  v33[2] = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 doubleForKey:@"auto-enrollment-percentage"];
  v5 = [v4 valuePromise];

  v6 = [v3 integerForKey:@"auto-enrollment-session-duration"];

  v7 = [v6 valuePromise];

  v8 = AMSSetLogKeyIfNeeded();
  v9 = [v5 binaryPromiseAdapter];
  v33[0] = v9;
  v10 = [v7 binaryPromiseAdapter];
  v33[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:2];
  v12 = [AMSBinaryPromise promiseWithAll:v11];
  v26 = 0;
  v13 = [v12 resultWithError:&v26];
  v14 = v26;

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
      *buf = 138543874;
      v28 = v17;
      v29 = 2114;
      v30 = v8;
      v31 = 2114;
      v32 = v14;
      v18 = v17;
      _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [auto-enrollment] Failed AURUM check with error: %{public}@", buf, 0x20u);
    }
  }

  v19 = +[AMSLogConfig sharedConfig];
  if (!v19)
  {
    v19 = +[AMSLogConfig sharedConfig];
  }

  v20 = [v19 OSLogObject];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = objc_opt_class();
    v22 = MEMORY[0x1E696AD98];
    v23 = v21;
    v24 = [v22 numberWithBool:v13];
    *buf = 138543874;
    v28 = v21;
    v29 = 2114;
    v30 = v8;
    v31 = 2114;
    v32 = v24;
    _os_log_impl(&dword_192869000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] AURUM check completed with result: %{public}@", buf, 0x20u);
  }

  return v13;
}

+ (BOOL)isApplePayWalletRefreshedForBag:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a3 stringForKey:@"countryCode"];
  v15 = 0;
  v5 = [v4 valueWithError:&v15];
  v6 = v15;
  v7 = [v5 uppercaseString];

  if (v6)
  {
    v8 = +[AMSLogConfig sharedConfig];
    if (!v8)
    {
      v8 = +[AMSLogConfig sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSLogKey();
      *buf = 138543874;
      v17 = v10;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = @"countryCode";
      _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] No bag key found: %{public}@", buf, 0x20u);
    }

    v13 = 0;
  }

  else
  {
    v13 = [a1 _shouldAttemptAutoEnrollmentWithCountryCode:v7];
  }

  return v13;
}

+ (BOOL)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4 account:(id)a5 accessControlRef:(__SecAccessControl *)a6
{
  v58 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = AMSSetLogKeyIfNeeded();
  v13 = +[AMSLogConfig sharedConfig];
  if (!v13)
  {
    v13 = +[AMSLogConfig sharedConfig];
  }

  v14 = [v13 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1;
    v16 = v12;
    v17 = objc_opt_class();
    v46 = v17;
    v18 = AMSHashIfNeeded(v9);
    v19 = AMSHashIfNeeded(v10);
    *buf = 138544130;
    v51 = v17;
    v12 = v16;
    a1 = v15;
    v52 = 2114;
    v53 = v12;
    v54 = 2114;
    v55 = v18;
    v56 = 2114;
    v57 = v19;
    _os_log_impl(&dword_192869000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Performing availability check for countryCode: %{public}@, paymentNetworks: %{public}@", buf, 0x2Au);
  }

  v20 = [AMSBiometrics stateForAccount:v11];
  if (v20 != 1)
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v23 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v30 = objc_opt_class();
    *buf = 138543618;
    v51 = v30;
    v52 = 2114;
    v53 = v12;
    v31 = v30;
    v32 = "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for no biometrics";
LABEL_22:
    _os_log_impl(&dword_192869000, v21, OS_LOG_TYPE_DEFAULT, v32, buf, 0x16u);

LABEL_28:
    LOBYTE(v24) = 0;
    goto LABEL_29;
  }

  if (!a6)
  {
    v23 = +[AMSLogConfig sharedConfig];
    if (!v23)
    {
      v23 = +[AMSLogConfig sharedConfig];
    }

    v21 = [v23 OSLogObject];
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_28;
    }

    v33 = objc_opt_class();
    *buf = 138543618;
    v51 = v33;
    v52 = 2114;
    v53 = v12;
    v31 = v33;
    v32 = "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for no ACL";
    goto LABEL_22;
  }

  if (![AMSBiometrics isActionSupported:4 withAccessControl:a6])
  {
    v23 = [AMSBiometrics ACLVersionForAccessControl:a6];
    v21 = +[AMSLogConfig sharedConfig];
    if (!v21)
    {
      v21 = +[AMSLogConfig sharedConfig];
    }

    v34 = [v21 OSLogObject];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = objc_opt_class();
      *buf = 138543874;
      v51 = v35;
      v52 = 2114;
      v53 = v12;
      v54 = 2114;
      v55 = v23;
      v36 = v35;
      _os_log_impl(&dword_192869000, v34, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for bad ACL version: %{public}@", buf, 0x20u);
    }

    goto LABEL_28;
  }

  v21 = [a1 shouldAttemptApplePayClassicWithCountryCode:v9 paymentNetworks:v10];
  v49 = 0;
  v22 = [v21 resultWithError:&v49];
  v23 = v49;
  v24 = [v22 BOOLValue];

  if (v23)
  {
    v25 = v12;
    v26 = +[AMSLogConfig sharedConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = objc_opt_class();
      *buf = 138543874;
      v51 = v28;
      v52 = 2114;
      v53 = v25;
      v54 = 2114;
      v55 = v23;
      v29 = v28;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [apple-pay-classic] biometric/ACL check failed with error: %{public}@", buf, 0x20u);
    }

    LOBYTE(v24) = 0;
  }

  else
  {
    if (v24)
    {
      v25 = v12;
      v38 = +[AMSLogConfig sharedConfig];
      if (!v38)
      {
        v38 = +[AMSLogConfig sharedConfig];
      }

      v39 = [v38 OSLogObject];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = objc_opt_class();
        *buf = 138543618;
        v51 = v40;
        v52 = 2114;
        v53 = v25;
        v41 = v40;
        _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Performing biometric/ACL check", buf, 0x16u);
      }

      v24 = [a1 canPerformPSD2StyleBuyForAccessControlRef:a6];
    }

    else
    {
      v25 = v12;
    }

    v26 = +[AMSLogConfig sharedConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v27 = [v26 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v42 = objc_opt_class();
      v43 = MEMORY[0x1E696AD98];
      v48 = v10;
      v44 = v42;
      v45 = [v43 numberWithBool:v24];
      *buf = 138543874;
      v51 = v42;
      v52 = 2114;
      v53 = v25;
      v54 = 2114;
      v55 = v45;
      _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Biometric/ACL check did complete with result: %{public}@", buf, 0x20u);

      v10 = v48;
    }
  }

  v12 = v25;
LABEL_29:

  return v24;
}

+ (BOOL)canPerformPSD2StyleBuyForAccessControlRef:(__SecAccessControl *)a3
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2050000000;
  v4 = _MergedGlobals_93;
  v11 = _MergedGlobals_93;
  if (!_MergedGlobals_93)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __getPKAuthenticatorClass_block_invoke;
    v7[3] = &unk_1E73B3880;
    v7[4] = &v8;
    __getPKAuthenticatorClass_block_invoke(v7);
    v4 = v9[3];
  }

  v5 = v4;
  _Block_object_dispose(&v8, 8);
  return [v4 canPerformPSD2StyleBuyForAccessControlRef:a3];
}

+ (BOOL)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4 account:(id)a5 options:(id)a6
{
  v51 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = AMSSetLogKeyIfNeeded();
  v15 = +[AMSLogConfig sharedConfig];
  if (!v15)
  {
    v15 = +[AMSLogConfig sharedConfig];
  }

  v16 = [v15 OSLogObject];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v14;
    v18 = objc_opt_class();
    v38 = v18;
    AMSHashIfNeeded(v10);
    v40 = v13;
    v19 = v12;
    v21 = v20 = v10;
    AMSHashIfNeeded(v11);
    v23 = v22 = a1;
    *buf = 138544130;
    v44 = v18;
    v14 = v17;
    v45 = 2114;
    v46 = v17;
    v47 = 2114;
    v48 = v21;
    v49 = 2114;
    v50 = v23;
    _os_log_impl(&dword_192869000, v16, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Performing availability check for countryCode: %{public}@, paymentNetworks: %{public}@", buf, 0x2Au);

    a1 = v22;
    v10 = v20;
    v12 = v19;
    v13 = v40;
  }

  if ([AMSBiometrics stateForAccount:v12]== 1)
  {
    v37 = v10;
    v39 = v14;
    v24 = [a1 shouldAttemptApplePayClassicWithAccount:v12 options:v13 countryCode:v10 paymentNetworks:v11];
    v42 = 0;
    v25 = [v24 resultWithError:&v42];
    v26 = v42;
    v27 = [v25 BOOLValue];

    v28 = +[AMSLogConfig sharedConfig];
    if (!v28)
    {
      v28 = +[AMSLogConfig sharedConfig];
    }

    v29 = [v28 OSLogObject];
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = objc_opt_class();
      v41 = v13;
      v31 = MEMORY[0x1E696AD98];
      v32 = v30;
      v33 = [v31 numberWithBool:v27];
      *buf = 138543874;
      v44 = v30;
      v45 = 2114;
      v46 = v39;
      v47 = 2114;
      v48 = v33;
      _os_log_impl(&dword_192869000, v29, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Biometric/ACL check did complete with result: %{public}@", buf, 0x20u);

      v13 = v41;
    }

    v10 = v37;
    v14 = v39;
  }

  else
  {
    v26 = +[AMSLogConfig sharedConfig];
    if (!v26)
    {
      v26 = +[AMSLogConfig sharedConfig];
    }

    v24 = [v26 OSLogObject];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v34 = objc_opt_class();
      *buf = 138543618;
      v44 = v34;
      v45 = 2114;
      v46 = v14;
      v35 = v34;
      _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [apple-pay-classic] Skipping biometric/ACL check for no biometrics", buf, 0x16u);
    }

    LOBYTE(v27) = 0;
  }

  return v27;
}

+ (id)_cardEligibilityStatusForCountryCode:(id)a3
{
  v3 = a3;
  v4 = [AMSMutableLazyPromise alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __58__AMSCardEnrollment__cardEligibilityStatusForCountryCode___block_invoke;
  v8[3] = &unk_1E73B56C8;
  v9 = v3;
  v5 = v3;
  v6 = [(AMSMutableLazyPromise *)v4 initWithBlock:v8];

  return v6;
}

void __58__AMSCardEnrollment__cardEligibilityStatusForCountryCode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2050000000;
  v4 = getPKInAppPaymentServiceClass_softClass;
  v15 = getPKInAppPaymentServiceClass_softClass;
  if (!getPKInAppPaymentServiceClass_softClass)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __getPKInAppPaymentServiceClass_block_invoke;
    v11[3] = &unk_1E73B3880;
    v11[4] = &v12;
    __getPKInAppPaymentServiceClass_block_invoke(v11);
    v4 = v13[3];
  }

  v5 = v4;
  _Block_object_dispose(&v12, 8);
  v6 = objc_alloc_init(v4);
  v7 = *(a1 + 32);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AMSCardEnrollment__cardEligibilityStatusForCountryCode___block_invoke_2;
  v9[3] = &unk_1E73B56A0;
  v10 = v3;
  v8 = v3;
  [v6 cardsAvailableForAMPWithCountryCode:v7 completion:v9];
}

void __58__AMSCardEnrollment__cardEligibilityStatusForCountryCode___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  [v2 finishWithResult:v3];
}

+ (id)getCurrentPaymentPassIdentifier
{
  v3 = AMSSetLogKeyIfNeeded();
  v4 = [AMSMutableLazyPromise alloc];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__AMSCardEnrollment_getCurrentPaymentPassIdentifier__block_invoke;
  v8[3] = &unk_1E73B5718;
  v9 = v3;
  v10 = a1;
  v5 = v3;
  v6 = [(AMSMutableLazyPromise *)v4 initWithBlock:v8];

  return v6;
}

void __52__AMSCardEnrollment_getCurrentPaymentPassIdentifier__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v4 = getPKPaymentServiceClass_softClass;
  v17 = getPKPaymentServiceClass_softClass;
  if (!getPKPaymentServiceClass_softClass)
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __getPKPaymentServiceClass_block_invoke;
    v13[3] = &unk_1E73B3880;
    v13[4] = &v14;
    __getPKPaymentServiceClass_block_invoke(v13);
    v4 = v15[3];
  }

  v5 = v4;
  _Block_object_dispose(&v14, 8);
  v6 = [[v4 alloc] initWithDelegate:0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__AMSCardEnrollment_getCurrentPaymentPassIdentifier__block_invoke_2;
  v10[3] = &unk_1E73B56F0;
  v11 = v3;
  v9 = *(a1 + 32);
  v7 = v9;
  v12 = v9;
  v8 = v3;
  [v6 defaultPaymentPassIngestionSpecificIdentifier:v10];
}

uint64_t __52__AMSCardEnrollment_getCurrentPaymentPassIdentifier__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *(a1 + 32);

    return [v3 finishWithResult:a2];
  }

  else
  {
    v5 = +[AMSLogConfig sharedConfig];
    if (!v5)
    {
      v5 = +[AMSLogConfig sharedConfig];
    }

    v6 = [v5 OSLogObject];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      v8 = *(a1 + 40);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v8;
      v9 = v7;
      _os_log_impl(&dword_192869000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Empty DPAN identifier found", &v10, 0x16u);
    }

    return [*(a1 + 32) finishWithResult:@"*EMPTY*"];
  }
}

+ (id)paymentServicesMerchantURLPromise
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__12;
  v10 = __Block_byref_object_dispose__12;
  v11 = objc_alloc_init(AMSDaemonConnection);
  v2 = [v7[5] securityServiceProxyWithDelegate:0];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__AMSCardEnrollment_paymentServicesMerchantURLPromise__block_invoke;
  v5[3] = &unk_1E73B5198;
  v5[4] = &v6;
  v3 = [v2 thenWithBlock:v5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

AMSMutablePromise *__54__AMSCardEnrollment_paymentServicesMerchantURLPromise__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(AMSMutablePromise);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __54__AMSCardEnrollment_paymentServicesMerchantURLPromise__block_invoke_2;
  v8[3] = &unk_1E73B5740;
  v5 = v4;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  [v3 paymentServicesMerchantURLWithCompletion:v8];

  return v5;
}

void __54__AMSCardEnrollment_paymentServicesMerchantURLPromise__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    [v4 finishWithError:?];
  }

  else
  {
    [v4 finishWithResult:a2];
  }

  v5 = *(*(a1 + 40) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = 0;
}

+ (id)shouldAttemptApplePayClassicWithAccount:(id)a3 options:(id)a4 countryCode:(id)a5 paymentNetworks:(id)a6
{
  v41 = *MEMORY[0x1E69E9840];
  v28 = a3;
  v29 = a4;
  v11 = a5;
  v12 = a6;
  v13 = AMSSetLogKeyIfNeeded();
  v14 = +[AMSLogConfig sharedConfig];
  if (!v14)
  {
    v14 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v14 OSLogObject];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = objc_opt_class();
    v17 = NSStringFromSelector(a2);
    v18 = AMSHashIfNeeded(v11);
    v19 = AMSHashIfNeeded(v12);
    *buf = 138544386;
    *&buf[4] = v16;
    *&buf[12] = 2114;
    *&buf[14] = v13;
    *&buf[22] = 2114;
    v39 = v17;
    *v40 = 2114;
    *&v40[2] = v18;
    *&v40[10] = 2114;
    *&v40[12] = v19;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v39 = __Block_byref_object_copy__12;
  *v40 = __Block_byref_object_dispose__12;
  *&v40[8] = objc_alloc_init(AMSDaemonConnection);
  v20 = [*(*&buf[8] + 40) securityServiceProxyWithDelegate:0];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __97__AMSCardEnrollment_shouldAttemptApplePayClassicWithAccount_options_countryCode_paymentNetworks___block_invoke;
  v30[3] = &unk_1E73B5790;
  v37 = a1;
  v21 = v13;
  v31 = v21;
  v22 = v28;
  v32 = v22;
  v23 = v29;
  v33 = v23;
  v24 = v11;
  v34 = v24;
  v25 = v12;
  v35 = v25;
  v36 = buf;
  v26 = [v20 thenWithBlock:v30];

  _Block_object_dispose(buf, 8);

  return v26;
}

AMSMutablePromise *__97__AMSCardEnrollment_shouldAttemptApplePayClassicWithAccount_options_countryCode_paymentNetworks___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v24 = v6;
    v25 = 2114;
    v26 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proxy object obtained, proxying to security service.", buf, 0x16u);
  }

  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = *(a1 + 64);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __97__AMSCardEnrollment_shouldAttemptApplePayClassicWithAccount_options_countryCode_paymentNetworks___block_invoke_70;
  v18[3] = &unk_1E73B5768;
  v22 = *(a1 + 80);
  v19 = *(a1 + 32);
  v13 = v8;
  v14 = *(a1 + 72);
  v20 = v13;
  v21 = v14;
  [v3 shouldAttemptApplePayWithAccount:v9 options:v10 countryCode:v11 paymentNetworks:v12 completion:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __97__AMSCardEnrollment_shouldAttemptApplePayClassicWithAccount_options_countryCode_paymentNetworks___block_invoke_70(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    if (a2)
    {
      v10 = @"true";
    }

    else
    {
      v10 = @"false";
    }

    v11 = AMSLogableError(v5);
    v16 = 138544130;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proxy object returned. result = %{public}@ error = %{public}@", &v16, 0x2Au);
  }

  v12 = *(a1 + 40);
  if (v5)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v12 finishWithResult:v13];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

+ (id)shouldAttemptApplePayClassicWithCountryCode:(id)a3 paymentNetworks:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = AMSSetLogKeyIfNeeded();
  v10 = +[AMSLogConfig sharedConfig];
  if (!v10)
  {
    v10 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = NSStringFromSelector(a2);
    v14 = AMSHashIfNeeded(v7);
    v15 = AMSHashIfNeeded(v8);
    *buf = 138544386;
    *&buf[4] = v12;
    *&buf[12] = 2114;
    *&buf[14] = v9;
    *&buf[22] = 2114;
    v29 = v13;
    *v30 = 2114;
    *&v30[2] = v14;
    *&v30[10] = 2114;
    *&v30[12] = v15;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] %{public}@ | countryCode = %{public}@ | paymentNetworks = %{public}@", buf, 0x34u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v29 = __Block_byref_object_copy__12;
  *v30 = __Block_byref_object_dispose__12;
  *&v30[8] = objc_alloc_init(AMSDaemonConnection);
  v16 = [*(*&buf[8] + 40) securityServiceProxyWithDelegate:0];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __81__AMSCardEnrollment_shouldAttemptApplePayClassicWithCountryCode_paymentNetworks___block_invoke;
  v22[3] = &unk_1E73B57B8;
  v27 = a1;
  v17 = v9;
  v23 = v17;
  v18 = v7;
  v24 = v18;
  v19 = v8;
  v25 = v19;
  v26 = buf;
  v20 = [v16 thenWithBlock:v22];

  _Block_object_dispose(buf, 8);

  return v20;
}

AMSMutablePromise *__81__AMSCardEnrollment_shouldAttemptApplePayClassicWithCountryCode_paymentNetworks___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = +[AMSLogConfig sharedConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = *(a1 + 32);
    *buf = 138543618;
    v22 = v6;
    v23 = 2114;
    v24 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proxy object obtained, proxying to security service.", buf, 0x16u);
  }

  v8 = objc_alloc_init(AMSMutablePromise);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __81__AMSCardEnrollment_shouldAttemptApplePayClassicWithCountryCode_paymentNetworks___block_invoke_75;
  v16[3] = &unk_1E73B5768;
  v20 = *(a1 + 64);
  v17 = *(a1 + 32);
  v11 = v8;
  v12 = *(a1 + 56);
  v18 = v11;
  v19 = v12;
  [v3 shouldAttemptApplePayWithCountryCode:v9 paymentNetworks:v10 completion:v16];

  v13 = v18;
  v14 = v11;

  return v11;
}

void __81__AMSCardEnrollment_shouldAttemptApplePayClassicWithCountryCode_paymentNetworks___block_invoke_75(uint64_t a1, uint64_t a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = +[AMSLogConfig sharedConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v7 = [v6 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = *(a1 + 32);
    if (a2)
    {
      v10 = @"true";
    }

    else
    {
      v10 = @"false";
    }

    v11 = AMSLogableError(v5);
    v16 = 138544130;
    v17 = v8;
    v18 = 2114;
    v19 = v9;
    v20 = 2114;
    v21 = v10;
    v22 = 2114;
    v23 = v11;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Proxy object returned. result = %{public}@ error = %{public}@", &v16, 0x2Au);
  }

  v12 = *(a1 + 40);
  if (v5)
  {
    [*(a1 + 40) finishWithError:v5];
  }

  else
  {
    v13 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v12 finishWithResult:v13];
  }

  v14 = *(*(a1 + 48) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = 0;
}

+ (BOOL)_shouldAttemptAutoEnrollmentWithCountryCode:(id)a3
{
  v57 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = +[AMSDefaults defaultPaymentPassIdentifier];
  v7 = [a1 getCurrentPaymentPassIdentifier];
  v46 = 0;
  v8 = [v7 resultWithError:&v46];
  v9 = v46;

  v10 = +[AMSLogConfig sharedConfig];
  v11 = v10;
  if (v9)
  {
    if (!v10)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138543874;
      v48 = v13;
      v49 = 2114;
      v50 = v5;
      v51 = 2114;
      v52 = v9;
      v14 = v13;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [auto-enrollment] Failed to obtain current DPAN identifier during auto-enrollment check with error: %{public}@", buf, 0x20u);
    }

LABEL_25:

    goto LABEL_26;
  }

  if (!v10)
  {
    v11 = +[AMSLogConfig sharedConfig];
  }

  v15 = [v11 OSLogObject];
  v44 = v8;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = v6;
    v17 = objc_opt_class();
    v42 = v17;
    v18 = AMSHashIfNeeded(v8);
    v19 = AMSHashIfNeeded(v16);
    AMSHashIfNeeded(v4);
    v21 = v20 = v4;
    *buf = 138544386;
    v48 = v17;
    v6 = v16;
    v49 = 2114;
    v50 = v5;
    v51 = 2114;
    v52 = v18;
    v53 = 2114;
    v54 = v19;
    v55 = 2114;
    v56 = v21;
    _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Comparing current extended enrollment identifier: %{public}@, with cached identifier: %{public}@, countryCode: %{public}@", buf, 0x34u);

    v4 = v20;
    v8 = v44;
  }

  if (v6 && [v6 isEqualToString:v8])
  {
    v9 = +[AMSLogConfig sharedConfig];
    if (!v9)
    {
      v9 = +[AMSLogConfig sharedConfig];
    }

    v11 = [v9 OSLogObject];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v22 = objc_opt_class();
      *buf = 138543618;
      v48 = v22;
      v49 = 2114;
      v50 = v5;
      v23 = v22;
      _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping auto-enrollment due to identical identifiers", buf, 0x16u);
    }

    goto LABEL_26;
  }

  v43 = v4;
  v24 = [a1 _cardEligibilityStatusForCountryCode:v4];
  v45 = 0;
  v25 = [v24 resultWithError:&v45];
  v9 = v45;
  v41 = [v25 integerValue];

  v26 = +[AMSLogConfig sharedConfig];
  if (!v26)
  {
    v26 = +[AMSLogConfig sharedConfig];
  }

  v27 = [v26 OSLogObject];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = objc_opt_class();
    v29 = MEMORY[0x1E696AD98];
    v30 = v6;
    v31 = v28;
    v32 = [v29 numberWithInteger:v41];
    *buf = 138543874;
    v48 = v28;
    v49 = 2114;
    v50 = v5;
    v51 = 2114;
    v52 = v32;
    _os_log_impl(&dword_192869000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Auto-enrollment card eligibility status: %{public}@", buf, 0x20u);

    v6 = v30;
  }

  v4 = v43;
  if (v9)
  {
    v11 = +[AMSLogConfig sharedConfig];
    v8 = v44;
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v33 = objc_opt_class();
      *buf = 138543874;
      v48 = v33;
      v49 = 2114;
      v50 = v5;
      v51 = 2114;
      v52 = v9;
      v34 = v33;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [auto-enrollment] Failed to obtain card eligibility status during auto-enrollment with error: %{public}@", buf, 0x20u);
    }

    goto LABEL_25;
  }

  v8 = v44;
  if (v41 == 1)
  {
    v35 = 1;
    goto LABEL_27;
  }

  v9 = +[AMSLogConfig sharedConfig];
  if (!v9)
  {
    v9 = +[AMSLogConfig sharedConfig];
  }

  v11 = [v9 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v37 = objc_opt_class();
    v38 = MEMORY[0x1E696AD98];
    v39 = v37;
    v40 = [v38 numberWithInteger:v41];
    *buf = 138543874;
    v48 = v37;
    v49 = 2114;
    v50 = v5;
    v51 = 2114;
    v52 = v40;
    _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping auto-enrollment due to card eligility status: %{public}@", buf, 0x20u);

    v4 = v43;
  }

LABEL_26:

  v35 = 0;
LABEL_27:

  return v35;
}

+ (id)isCardEligibleForAutoEnrollmentWithCountryCode:(id)a3
{
  v4 = a3;
  v5 = AMSSetLogKeyIfNeeded();
  v6 = [a1 _cardEligibilityStatusForCountryCode:v4];

  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __68__AMSCardEnrollment_isCardEligibleForAutoEnrollmentWithCountryCode___block_invoke;
  v10[3] = &unk_1E73B57E0;
  v11 = v5;
  v12 = a1;
  v7 = v5;
  v8 = [v6 continueWithBlock:v10];

  return v8;
}

id __68__AMSCardEnrollment_isCardEligibleForAutoEnrollmentWithCountryCode___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (v5)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = objc_opt_class();
      v9 = *(a1 + 32);
      *v22 = 138543874;
      *&v22[4] = v8;
      *&v22[12] = 2114;
      *&v22[14] = v9;
      *&v22[22] = 2114;
      v23 = v5;
      v10 = v8;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] [auto-enrollment] Failed to obtain card eligibility status during auto-enrollment with error: %{public}@", v22, 0x20u);
    }
  }

  else
  {
    v11 = [a2 integerValue];
    if (v11 == 1)
    {
      v12 = 1;
      goto LABEL_13;
    }

    v13 = v11;
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    v7 = [v6 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v14 = objc_opt_class();
      v15 = *(a1 + 32);
      v16 = MEMORY[0x1E696AD98];
      v17 = v14;
      v18 = [v16 numberWithInteger:v13];
      *v22 = 138543874;
      *&v22[4] = v14;
      *&v22[12] = 2114;
      *&v22[14] = v15;
      *&v22[22] = 2114;
      v23 = v18;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] [auto-enrollment] Skipping auto-enrollment due to card eligility status: %{public}@", v22, 0x20u);
    }
  }

  v12 = 0;
LABEL_13:
  v19 = [AMSBoolean BOOLeanWithBool:v12, *v22, *&v22[16], v23];
  v20 = [AMSPromise promiseWithResult:v19];

  return v20;
}

@end