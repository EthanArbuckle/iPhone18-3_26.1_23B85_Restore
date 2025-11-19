@interface AMSFinancePaymentSheetResponse
+ (id)_attributedListDictionaryForValues:(id)a3 account:(id)a4;
+ (id)_attributedStringForAttributedArray:(id)a3 account:(id)a4;
+ (id)_attributedStringForAttributedDictionary:(id)a3 account:(id)a4;
+ (id)_attributedStringForSalableInfoStringArray:(id)a3 account:(id)a4 shouldUppercase:(BOOL)a5;
+ (id)_attributedStringForSalableInfoStyledStringArray:(id)a3 account:(id)a4 shouldUppercase:(BOOL)a5;
+ (id)_attributedStringForStringArray:(id)a3 useGrey:(BOOL)a4 account:(id)a5 shouldUppercase:(BOOL)a6;
+ (id)_createMerchantSessionFromDictionary:(id)a3;
+ (id)_flexListDictionaryForValues:(id)a3 styles:(id)a4 account:(id)a5 shouldUppercaseText:(BOOL)a6 designVersion:(id)a7;
+ (id)_flexListLeadingItemForValues:(id)a3 styles:(id)a4;
+ (id)_greyAttributedStringForAttributedString:(id)a3 range:(_NSRange)a4;
+ (id)_salableInfoDictionaryForValues:(id)a3 styles:(id)a4 account:(id)a5 shouldUppercaseText:(BOOL)a6 designVersion:(id)a7;
+ (id)_salableInfoForKey:(id)a3 inDictionary:(id)a4 shouldUppercase:(BOOL)a5;
+ (id)_styleDictionaryWithName:(id)a3 styles:(id)a4;
+ (id)attributedStringWithString:(id)a3 styles:(id)a4;
+ (id)createRequestFromDictionary:(id)a3 confirmationOnly:(BOOL)a4 delegateAuthenticationRequired:(BOOL)a5 biometricSignatureRequired:(BOOL)a6 authenticateResponse:(id)a7 taskInfo:(id)a8 account:(id)a9;
+ (id)fallbackTitleFromResponse:(id)a3;
+ (int64_t)_confirmationTitleForString:(id)a3;
+ (int64_t)_payeeInferredFromEnumeratedTitle:(id)a3;
+ (int64_t)_salableIconForString:(id)a3;
- (AMSFinancePaymentSheetResponse)initWithResponseDictionary:(id)a3 confirmationOnly:(BOOL)a4 delegateAuthenticationRequired:(BOOL)a5 biometricSignatureRequired:(BOOL)a6 taskInfo:(id)a7;
- (id)_createUpdatedBodyFromFormData:(id)a3;
- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)a3;
- (id)_performAuthorizationDialogProxyWithTaskInfo:(id)a3;
- (id)performWithTaskInfo:(id)a3;
- (void)_performPaymentSheetWithTaskInfo:(id)a3 completionHandler:(id)a4;
- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4;
@end

@implementation AMSFinancePaymentSheetResponse

- (AMSFinancePaymentSheetResponse)initWithResponseDictionary:(id)a3 confirmationOnly:(BOOL)a4 delegateAuthenticationRequired:(BOOL)a5 biometricSignatureRequired:(BOOL)a6 taskInfo:(id)a7
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v12 = a3;
  v13 = a7;
  v27.receiver = self;
  v27.super_class = AMSFinancePaymentSheetResponse;
  v14 = [(AMSFinancePaymentSheetResponse *)&v27 init];
  if (v14)
  {
    v15 = [[AMSFinanceAuthenticateResponse alloc] initWithResponseDictionary:v12 taskInfo:v13];
    authenticateResponse = v14->_authenticateResponse;
    v14->_authenticateResponse = v15;

    v17 = [AMSFinanceResponse valueForProtocolKey:@"dialog" inResponse:v12];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_opt_class() createRequestFromDictionary:v18 confirmationOnly:v10 delegateAuthenticationRequired:v9 biometricSignatureRequired:v8 authenticateResponse:v14->_authenticateResponse taskInfo:v13 account:0];
    paymentSheetRequest = v14->_paymentSheetRequest;
    v14->_paymentSheetRequest = v19;

    v21 = [v12 valueForKey:@"metrics"];
    objc_opt_class();
    v22 = 0;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    metricsDictionary = v14->_metricsDictionary;
    v14->_metricsDictionary = v22;

    v24 = [objc_opt_class() _createMerchantSessionFromDictionary:v12];
    if (v24)
    {
      [(AMSPaymentSheetRequest *)v14->_paymentSheetRequest setMerchantSession:v24];
      v25 = [(AMSPaymentSheetRequest *)v14->_paymentSheetRequest biometricsRequest];
      [v25 setDualAction:1];
    }
  }

  return v14;
}

- (void)performWithTaskInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke;
  v10[3] = &unk_1E73B7E18;
  v10[4] = self;
  v11 = v6;
  v12 = v7;
  v8 = v7;
  v9 = v6;
  [(AMSFinancePaymentSheetResponse *)self _performPaymentSheetWithTaskInfo:v9 completionHandler:v10];
}

void __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke(id *a1, void *a2, void *a3, uint64_t a4)
{
  v7 = a2;
  v8 = a3;
  v9 = objc_alloc_init(AMSMutablePromise);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke_2;
  v23[3] = &unk_1E73B7DF0;
  v23[4] = a1[4];
  v10 = v7;
  v24 = v10;
  v25 = a1[5];
  v26 = a1[6];
  [(AMSPromise *)v9 addFinishBlock:v23];
  if (a4 || v8 && [v8 actionType] || (objc_msgSend(v10, "passwordEquivalentToken"), (v12 = objc_claimAutoreleasedReturnValue()) == 0) || (v13 = v12, objc_msgSend(a1[4], "authenticateResponse"), v14 = objc_claimAutoreleasedReturnValue(), v14, v13, !v14))
  {
    v11 = [[AMSOptional alloc] initWithValue:v8];
    [(AMSMutablePromise *)v9 finishWithResult:v11];
  }

  else
  {
    v11 = [a1[4] authenticateResponse];
    v15 = [(AMSOptional *)v11 authenticateRequest];
    v16 = [v15 options];

    [v16 setCredentialSource:2];
    [v16 setAllowServerDialogs:1];
    [v16 setAuthenticationType:1];
    [v16 setReason:@"payment sheet"];
    v17 = [(AMSOptional *)v11 authenticateRequest];
    v18 = [v17 account];

    v19 = [v10 passwordEquivalentToken];
    [v18 ams_setPassword:v19];

    v20 = a1[5];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke_291;
    v21[3] = &unk_1E73B7C48;
    v22 = v9;
    [(AMSOptional *)v11 performWithTaskInfo:v20 completionHandler:v21];
  }
}

void __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = [a2 value];
  v6 = [*(a1 + 32) authenticateResponse];
  v7 = [*(a1 + 32) authenticateResponse];
  v8 = [v7 dialogResponse];
  v9 = [v6 _locateActionableButtonUsingDialogResponse:v8];

  if (*(a1 + 40))
  {
    v10 = [*(a1 + 32) paymentSheetRequest];
    if ([v10 requiresAuthorization])
    {
      v11 = [*(a1 + 40) delegateAuthenticateToken];
      if (v11)
      {
        v12 = 1;
      }

      else
      {
        v8 = [*(a1 + 40) passwordEquivalentToken];
        if (v8)
        {
          v12 = 1;
        }

        else
        {
          v13 = [*(a1 + 40) signatureResult];
          v12 = v13 != 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }

    if (a3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v12 = 0;
    if (a3)
    {
      goto LABEL_22;
    }
  }

  if (v5)
  {
    if ([v5 actionType] == 0 && v12)
    {
LABEL_16:
      v14 = [v9 deepLink];
      if (v14)
      {
        v15 = [AMSURLAction redirectActionWithURL:v14];

        v5 = v15;
      }

      if (!v5)
      {
        v5 = +[AMSURLAction retryAction];
      }

      [v5 setRetryIdentifier:0x1F073A178];
      [v5 setReason:@"payment sheet"];

      goto LABEL_25;
    }
  }

  else if (v12)
  {
    goto LABEL_16;
  }

LABEL_22:
  v16 = [v5 redirectURL];
  if (!v16 || (v17 = v16, [v9 ams_formData], v18 = objc_claimAutoreleasedReturnValue(), v19 = v18 != 0 && v12, v18, v17, v19 != 1))
  {
    v29 = +[AMSLogConfig sharedConfig];
    if (!v29)
    {
      v29 = +[AMSLogConfig sharedConfig];
    }

    v39 = [v29 OSLogObject];
    if (!os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_43;
    }

    v40 = AMSLogKey();
    v42 = MEMORY[0x1E696AEC0];
    v43 = objc_opt_class();
    v44 = v43;
    if (v40)
    {
      v8 = AMSLogKey();
      [v42 stringWithFormat:@"%@: [%@] ", v44, v8];
    }

    else
    {
      [v42 stringWithFormat:@"%@: ", v43];
    }
    v45 = ;
    *buf = 138543362;
    v47 = v45;
    _os_log_impl(&dword_192869000, v39, OS_LOG_TYPE_ERROR, "%{public}@Unable to continue the purchase.", buf, 0xCu);
    if (v40)
    {

      v45 = v8;
    }

LABEL_42:
LABEL_43:

    goto LABEL_44;
  }

  v20 = *(a1 + 32);
  v21 = [v9 ams_formData];
  v22 = [v20 _createUpdatedBodyFromFormData:v21];
  [v5 setUpdatedBody:v22];

  [v5 setReason:@"payment sheet"];
LABEL_25:
  v23 = [*(a1 + 48) properties];
  v24 = [v23 account];
  v25 = [*(a1 + 48) properties];
  v26 = [v25 keychainOptions];
  v27 = [*(a1 + 40) signatureResult];
  v28 = [AMSBiometrics headersWithAccount:v24 options:v26 signatureResult:v27];
  v29 = [v28 mutableCopy];

  v30 = [*(a1 + 40) passwordEquivalentToken];

  if (v30)
  {
    [v29 setObject:0x1F07212F8 forKeyedSubscript:@"X-Apple-TID-Action"];
  }

  v31 = [*(a1 + 40) delegateAuthenticateToken];

  if (v31)
  {
    v32 = [*(a1 + 40) delegateAuthenticateToken];
    [v29 setObject:v32 forKeyedSubscript:@"X-Apple-DelegateAuth-Token"];

    v33 = [*(a1 + 40) delegateAuthenticateToken];
    [v29 setObject:v33 forKeyedSubscript:@"X-Apple-Delegate-Auth-Token"];
  }

  [v5 setUpdatedHeaders:v29];
  v34 = [*(a1 + 40) paymentToken];

  if (v34)
  {
    v35 = [*(a1 + 40) paymentToken];
    v36 = [*(a1 + 48) properties];
    v37 = [v36 purchaseInfo];
    [v37 setPaymentToken:v35];
  }

  v38 = [*(a1 + 40) paymentMethodType];

  if (v38)
  {
    v39 = [*(a1 + 40) paymentMethodType];
    v40 = [*(a1 + 48) properties];
    v41 = [v40 purchaseInfo];
    [v41 setPaymentMethodType:v39];

    goto LABEL_42;
  }

LABEL_44:

  (*(*(a1 + 56) + 16))();
}

void __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke_291(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

- (id)performWithTaskInfo:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSFinancePaymentSheetResponse_performWithTaskInfo___block_invoke;
  v10[3] = &unk_1E73B7C48;
  v11 = v5;
  v6 = v5;
  [(AMSFinancePaymentSheetResponse *)self performWithTaskInfo:v4 completionHandler:v10];

  v7 = [(AMSPromise *)v6 resultWithError:0];
  v8 = [v7 value];

  return v8;
}

void __54__AMSFinancePaymentSheetResponse_performWithTaskInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

- (id)_performAuthorizationDialogProxyWithTaskInfo:(id)a3
{
  v44 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v6 = [AMSPaymentAuthorizationDialogTask alloc];
  v7 = [v4 properties];
  v8 = [v7 bag];
  v9 = [(AMSPaymentAuthorizationDialogTask *)v6 initWithRequest:v5 bag:v8];

  v10 = [v4 properties];
  v11 = [v10 purchaseInfo];
  [(AMSPaymentAuthorizationDialogTask *)v9 setPurchaseInfo:v11];

  [(AMSTask *)v9 setRunMode:1];
  v12 = [(AMSPaymentAuthorizationDialogTask *)v9 perform];
  v41 = 0;
  v13 = [v12 resultWithError:&v41];
  v14 = v41;

  if (v14)
  {
    v15 = 0;
LABEL_3:
    v16 = 0x1E73B0000uLL;
    v17 = +[AMSLogConfig sharedConfig];
    if (!v17)
    {
      v17 = +[AMSLogConfig sharedConfig];
    }

    v18 = [v17 OSLogObject];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v38 = v5;
      v39 = v13;
      v19 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v19)
      {
        v16 = AMSLogKey();
        [v20 stringWithFormat:@"%@: [%@] ", v22, v16];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v21];
      }
      v23 = ;
      *buf = 138543362;
      v43 = v23;
      _os_log_impl(&dword_192869000, v18, OS_LOG_TYPE_ERROR, "%{public}@Unable to continue the purchase.", buf, 0xCu);
      v13 = v39;
      if (v19)
      {

        v23 = v16;
      }

      v5 = v38;
    }

    goto LABEL_23;
  }

  v40 = v13;
  v24 = [v13 passwordEquivalentToken];
  if (v24 && (v25 = v24, [(AMSFinancePaymentSheetResponse *)self authenticateResponse], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
  {
    v27 = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
    v28 = [v27 authenticateRequest];
    v29 = [v28 options];

    [v29 setCredentialSource:2];
    [v29 setAllowServerDialogs:1];
    [v29 setAuthenticationType:1];
    [v29 setReason:@"payment sheet"];
    v30 = [v27 authenticateRequest];
    v31 = [v30 account];

    v32 = [v40 passwordEquivalentToken];
    [v31 ams_setPassword:v32];

    v15 = [v27 performWithTaskInfo:v4];
    v14 = [v15 error];

    if (v14)
    {
LABEL_11:
      v13 = v40;
      goto LABEL_3;
    }

    if (v15 && [v15 actionType])
    {
      v14 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  v33 = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
  v34 = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
  v35 = [v34 dialogResponse];
  v14 = [v33 _locateActionableButtonUsingDialogResponse:v35];

  v17 = [v14 deepLink];
  if (v17)
  {
    v36 = [AMSURLAction redirectActionWithURL:v17];

    v15 = v36;
  }

  if (!v15)
  {
    v15 = +[AMSURLAction retryAction];
  }

  [v15 setRetryIdentifier:0x1F073A178];
  [v15 setReason:@"payment sheet"];
  v13 = v40;
LABEL_23:

  return v15;
}

+ (id)_createMerchantSessionFromDictionary:(id)a3
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [a3 valueForKey:@"tid-dialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = [v4 valueForKey:@"applePayPaymentSession"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;

        if (v6)
        {
          v7 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
          v22 = 0;
          v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:v7 options:0 error:&v22];
          v9 = v22;
          if (v9)
          {
            v10 = +[AMSLogConfig sharedPurchaseConfig];
            if (!v10)
            {
              v10 = +[AMSLogConfig sharedConfig];
            }

            v11 = [v10 OSLogObject];
            if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
            {
              v12 = objc_opt_class();
              v13 = v12;
              v14 = AMSSetLogKeyIfNeeded();
              *buf = 138543874;
              v24 = v12;
              v25 = 2114;
              v26 = v14;
              v27 = 2114;
              v28 = v9;
              _os_log_impl(&dword_192869000, v11, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] JSON serialization of payment session failed with error: %{public}@", buf, 0x20u);
            }
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
      }

      v9 = +[AMSLogConfig sharedPurchaseConfig];
      if (!v9)
      {
        v9 = +[AMSLogConfig sharedConfig];
      }

      v7 = [v9 OSLogObject];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = AMSSetLogKeyIfNeeded();
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no payment session", buf, 0x16u);
      }

      v6 = 0;
      v8 = 0;
      goto LABEL_23;
    }
  }

  else
  {
  }

  v6 = +[AMSLogConfig sharedPurchaseConfig];
  if (!v6)
  {
    v6 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v6 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = AMSSetLogKeyIfNeeded();
    *buf = 138543618;
    v24 = v15;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no tid-dialog", buf, 0x16u);
  }

  v4 = 0;
  v8 = 0;
LABEL_24:

  return v8;
}

- (id)_createUpdatedBodyFromFormData:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a3;
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
      *buf = 138543362;
      v33 = v12;
      _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Generating plist formatted updated request body", buf, 0xCu);
      if (v8)
      {

        v12 = v3;
      }
    }

    v14 = +[AMSLogConfig sharedConfig];
    if (!v14)
    {
      v14 = +[AMSLogConfig sharedConfig];
    }

    v15 = [v14 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = AMSLogKey();
      v17 = MEMORY[0x1E696AEC0];
      v18 = objc_opt_class();
      v19 = v18;
      if (v16)
      {
        v3 = AMSLogKey();
        [v17 stringWithFormat:@"%@: [%@] ", v19, v3];
      }

      else
      {
        [v17 stringWithFormat:@"%@: ", v18];
      }
      v20 = ;
      *buf = 138543618;
      v33 = v20;
      v34 = 2112;
      v35 = v5;
      _os_log_impl(&dword_192869000, v15, OS_LOG_TYPE_DEBUG, "%{public}@ Creating updated body from formData: %@", buf, 0x16u);
      if (v16)
      {

        v20 = v3;
      }
    }

    v31 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:v5 format:100 options:0 error:&v31];
    v21 = v31;
    if (v21)
    {
      v22 = +[AMSLogConfig sharedConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      v23 = [v22 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = AMSLogKey();
        v25 = MEMORY[0x1E696AEC0];
        v26 = objc_opt_class();
        v27 = v26;
        if (v24)
        {
          self = AMSLogKey();
          [v25 stringWithFormat:@"%@: [%@] ", v27, self];
        }

        else
        {
          [v25 stringWithFormat:@"%@: ", v26];
        }
        v28 = ;
        v29 = AMSLogableError(v21);
        *buf = 138543618;
        v33 = v28;
        v34 = 2114;
        v35 = v29;
        _os_log_impl(&dword_192869000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@Building updated request body failed with error: %{public}@", buf, 0x16u);
        if (v24)
        {

          v28 = self;
        }
      }
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (id)_attributedListDictionaryForValues:(id)a3 account:(id)a4
{
  v6 = a4;
  v7 = MEMORY[0x1E695DF70];
  v8 = a3;
  v9 = objc_alloc_init(v7);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke;
  v23[3] = &unk_1E73B7E40;
  v11 = v10;
  v24 = v11;
  [v8 enumerateObjectsUsingBlock:v23];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_2;
  v19 = &unk_1E73B7EB8;
  v22 = a1;
  v20 = v6;
  v12 = v9;
  v21 = v12;
  v13 = v6;
  [v11 enumerateObjectsUsingBlock:&v16];
  if ([v12 count])
  {
    v14 = [v12 copy];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

void __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:@"attributedList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v3;

    v4 = v5;
    if (v5)
    {
      [*(a1 + 32) addObject:v5];
      v4 = v5;
    }
  }

  else
  {

    v4 = 0;
  }
}

void __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_2(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_301;
      v11[3] = &unk_1E73B7E90;
      v15 = *(a1 + 48);
      v5 = v4;
      v12 = v5;
      v13 = *(a1 + 32);
      v14 = *(a1 + 40);
      [v5 enumerateKeysAndObjectsUsingBlock:v11];

      v6 = v12;
      goto LABEL_10;
    }
  }

  else
  {
  }

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
    v17 = v8;
    v18 = 2114;
    v19 = v10;
    v20 = 2114;
    v21 = v3;
    _os_log_impl(&dword_192869000, v7, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected response type: %{public}@", buf, 0x20u);
  }

  v5 = 0;
LABEL_10:
}

void __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_301(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = MEMORY[0x1E695DF90];
  v7 = a2;
  v8 = objc_alloc_init(v6);
  LODWORD(v6) = [v7 isEqualToString:@"value"];

  if (v6)
  {
    v9 = v5;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;

      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v13 = MEMORY[0x1E69E9820];
        v14 = 3221225472;
        v15 = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_2_304;
        v16 = &unk_1E73B7E68;
        v20 = *(a1 + 56);
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v12 = v11;
        v19 = v12;
        [v10 enumerateObjectsUsingBlock:&v13];
        if ([v12 count])
        {
          [v8 setObject:v12 forKeyedSubscript:@"value"];
        }
      }
    }

    else
    {

      v10 = 0;
    }
  }

  if ([v8 count])
  {
    [*(a1 + 48) addObject:v8];
  }
}

void __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_2_304(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;

    if (v4)
    {
      v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v6 = [v4 objectForKeyedSubscript:@"header"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;

        if (!v7)
        {
          goto LABEL_14;
        }

        v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v7];
        [v5 setObject:v6 forKeyedSubscript:@"header"];
      }

      else
      {
        v7 = 0;
      }

LABEL_14:
      v14 = [v4 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;

        if (v15)
        {
          v16 = [*(a1 + 56) _attributedStringForAttributedDictionary:v15 account:*(a1 + 40)];
          if (!v16)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }
      }

      else
      {
      }

      v17 = [v4 objectForKeyedSubscript:@"value"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18 = v17;

        if (v18)
        {
          v16 = [*(a1 + 56) _attributedStringForAttributedArray:v18 account:*(a1 + 40)];
          goto LABEL_24;
        }
      }

      else
      {

        v18 = 0;
      }

      v16 = 0;
LABEL_24:

      v15 = 0;
      if (!v16)
      {
LABEL_26:
        [*(a1 + 48) addObject:v5];

        goto LABEL_27;
      }

LABEL_25:
      [v5 setObject:v16 forKeyedSubscript:@"value"];
      goto LABEL_26;
    }
  }

  else
  {
  }

  v8 = +[AMSLogConfig sharedConfig];
  if (!v8)
  {
    v8 = +[AMSLogConfig sharedConfig];
  }

  v9 = [v8 OSLogObject];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v10;
    v12 = AMSSetLogKeyIfNeeded();
    v13 = *(a1 + 32);
    v19 = 138543874;
    v20 = v10;
    v21 = 2114;
    v22 = v12;
    v23 = 2114;
    v24 = v13;
    _os_log_impl(&dword_192869000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Unexpected inner response type: %{public}@", &v19, 0x20u);
  }

  v4 = 0;
LABEL_27:
}

+ (id)_salableInfoDictionaryForValues:(id)a3 styles:(id)a4 account:(id)a5 shouldUppercaseText:(BOOL)a6 designVersion:(id)a7
{
  v9 = a4;
  v10 = MEMORY[0x1E695DF70];
  v11 = a3;
  v12 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __115__AMSFinancePaymentSheetResponse__salableInfoDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke;
  v18[3] = &unk_1E73B7EB8;
  v13 = v12;
  v20 = v9;
  v21 = a1;
  v19 = v13;
  v14 = v9;
  [v11 enumerateObjectsUsingBlock:v18];

  v15 = v20;
  v16 = v13;

  return v13;
}

void __115__AMSFinancePaymentSheetResponse__salableInfoDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke(uint64_t a1, void *a2)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    if (!v4)
    {
      goto LABEL_15;
    }

    v6 = 0;
LABEL_12:
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v10 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];
    [v7 setObject:v10 forKey:@"value"];

    v11 = *(a1 + 32);
    v8 = [v7 copy];
    [v11 addObject:v8];
    goto LABEL_13;
  }

  v6 = v5;

  if (v4)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_14:

      goto LABEL_20;
    }

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = [v6 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = v9;
    }

    else
    {
      v26 = 0;
    }

    v18 = [v6 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = [objc_opt_class() _styleDictionaryWithName:v19 styles:*(a1 + 40)];
    if (v20)
    {
      v21 = [objc_opt_class() attributedStringWithString:v26 styles:v20];
      v22 = v21;
      if (v21)
      {
        v35 = @"value";
        v36[0] = v21;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v36 forKeys:&v35 count:1];
        [v8 addEntriesFromDictionary:v23];
      }
    }

    else
    {
      v27[0] = MEMORY[0x1E69E9820];
      v27[1] = 3221225472;
      v27[2] = __115__AMSFinancePaymentSheetResponse__salableInfoDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_2;
      v27[3] = &unk_1E73B7EE0;
      v28 = v8;
      [v6 enumerateKeysAndObjectsUsingBlock:v27];
      v22 = v28;
    }

    v24 = *(a1 + 32);
    v25 = [v8 copy];
    [v24 addObject:v25];

LABEL_13:
    goto LABEL_14;
  }

LABEL_15:
  v12 = +[AMSLogConfig sharedConfig];
  if (!v12)
  {
    v12 = +[AMSLogConfig sharedConfig];
  }

  v13 = [v12 OSLogObject];
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v14 = objc_opt_class();
    v15 = v14;
    v16 = AMSSetLogKeyIfNeeded();
    v17 = AMSHashIfNeeded(v5);
    *buf = 138543874;
    v30 = v14;
    v31 = 2114;
    v32 = v16;
    v33 = 2112;
    v34 = v17;
    _os_log_impl(&dword_192869000, v13, OS_LOG_TYPE_ERROR, "%{public}@:  [%{public}@] Salable Info value doesn't conform to String or Dictionary - %@", buf, 0x20u);
  }

  v6 = 0;
LABEL_20:
}

void __115__AMSFinancePaymentSheetResponse__salableInfoDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  v6 = [v9 isEqualToString:@"value"];
  v7 = *(a1 + 32);
  if (v6)
  {
    v8 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    [v7 setObject:v8 forKey:v9];
  }

  else
  {
    [v7 setObject:v5 forKey:v9];
  }
}

+ (id)_flexListDictionaryForValues:(id)a3 styles:(id)a4 account:(id)a5 shouldUppercaseText:(BOOL)a6 designVersion:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = MEMORY[0x1E695DF70];
  v16 = a3;
  v17 = objc_alloc_init(v15);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke;
  v27 = &unk_1E73B7F58;
  v31 = v17;
  v32 = a1;
  v28 = v14;
  v29 = v12;
  v30 = v13;
  v33 = a6;
  v18 = v17;
  v19 = v13;
  v20 = v12;
  v21 = v14;
  [v16 enumerateObjectsUsingBlock:&v24];

  v22 = [v18 copy];

  return v22;
}

void __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke(uint64_t a1, void *a2)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (![*(a1 + 32) isEqualToNumber:0x1F07798E0])
  {
    v6 = [v3 objectForKeyedSubscript:@"valueStyle"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v54 = v7;
    if ([v7 isEqualToString:@"gray"])
    {
      LODWORD(v50) = 1;
    }

    else
    {
      LODWORD(v50) = [v7 isEqualToString:@"grey"];
    }

    v10 = [v3 objectForKeyedSubscript:{@"header", v50}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v10;
    }

    else
    {
      v56 = 0;
    }

    v11 = [v3 objectForKeyedSubscript:@"headerIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v11;
    }

    else
    {
      v9 = 0;
    }

    v16 = [v3 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v55 = v16;
    }

    else
    {
      v55 = 0;
    }

    v20 = [v3 objectForKeyedSubscript:@"value"];
    v13 = v20;
    v21 = v56;
    if (!(v56 | v9) || !v20)
    {
      goto LABEL_82;
    }

    if (v56)
    {
      if (*(a1 + 72) == 1)
      {
        v21 = [v56 localizedUppercaseString];
      }

      v22 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v21];
      if (v9)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v22 = 0;
      if (v9)
      {
LABEL_37:
        v23 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v9];
        goto LABEL_53;
      }
    }

    v23 = 0;
LABEL_53:
    v35 = v55;
    if (v55)
    {
      v35 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v55];
    }

    objc_opt_class();
    v56 = v21;
    if (objc_opt_isKindOfClass())
    {
      v36 = *(a1 + 64);
      v78 = v13;
      v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v78 count:1];
      v38 = [v36 _attributedStringForStringArray:v37 useGrey:v51 account:*(a1 + 48) shouldUppercase:*(a1 + 72)];

      if (!v22)
      {
        goto LABEL_62;
      }
    }

    else
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v38 = 0;
LABEL_68:
        if (!v35 || !v54)
        {
          goto LABEL_72;
        }

        v72[0] = @"style";
        v72[1] = @"value";
        v73[0] = v35;
        v73[1] = v38;
        v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:2];
LABEL_71:
        v42 = v39;
        [*(a1 + 56) addObject:v39];

LABEL_72:
LABEL_82:

        v12 = v55;
        goto LABEL_83;
      }

      v38 = [*(a1 + 64) _attributedStringForStringArray:v13 useGrey:v51 account:*(a1 + 48) shouldUppercase:*(a1 + 72)];
      if (!v22)
      {
LABEL_62:
        if (v23 && v38)
        {
          v74[0] = @"headerIcon";
          v74[1] = @"value";
          v75[0] = v23;
          v75[1] = v38;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v75 forKeys:v74 count:2];
          goto LABEL_71;
        }

        goto LABEL_68;
      }
    }

    if (v38)
    {
      v76[0] = @"header";
      v76[1] = @"value";
      v77[0] = v22;
      v77[1] = v38;
      v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v77 forKeys:v76 count:2];
      goto LABEL_71;
    }

    goto LABEL_62;
  }

  v4 = [v3 objectForKeyedSubscript:@"leadingItem"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v54 = v5;
  v56 = [*(a1 + 64) _flexListLeadingItemForValues:v5 styles:*(a1 + 40)];
  v8 = [v3 objectForKeyedSubscript:@"padding"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v55 = [v3 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  v12 = v55;
  if (objc_opt_isKindOfClass())
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = [v3 objectForKeyedSubscript:@"axID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;

      if (v15)
      {
        v52 = v15;
        if ([v15 length])
        {
          [v13 setObject:v15 forKeyedSubscript:{@"axID", v15}];
        }

        goto LABEL_40;
      }
    }

    else
    {
    }

    v52 = 0;
LABEL_40:
    v24 = [v3 objectForKeyedSubscript:{@"value", v52}];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = v24;
    }

    else
    {
      v25 = 0;
    }

    v26 = [v3 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = v26;
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_opt_class() _styleDictionaryWithName:v27 styles:*(a1 + 40)];
    if (v9)
    {
      [v13 setObject:v9 forKey:@"padding"];
    }

    v29 = [*(a1 + 48) username];
    v30 = v29;
    if (v28)
    {
      v31 = [v25 ams_replaceAccountPatternWithUsername:v29];

      v32 = [objc_opt_class() attributedStringWithString:v31 styles:v28];
      v33 = v32;
      if (v32)
      {
        v79 = @"value";
        v80[0] = v32;
        v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v80 forKeys:&v79 count:1];
        [v13 addEntriesFromDictionary:v34];
      }
    }

    else
    {
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 3221225472;
      v69[2] = __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_2;
      v69[3] = &unk_1E73B7F08;
      v70 = v29;
      v71 = v13;
      [v3 enumerateKeysAndObjectsUsingBlock:v69];

      v33 = v70;
      v31 = v25;
    }

    v40 = *(a1 + 56);
    v41 = [v13 copy];
    [v40 addObject:v41];

    goto LABEL_82;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v17 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v63 = 0;
    v64 = &v63;
    v65 = 0x3032000000;
    v66 = __Block_byref_object_copy__30;
    v67 = __Block_byref_object_dispose__30;
    v68 = 0;
    v18 = [v3 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v57[0] = MEMORY[0x1E69E9820];
    v57[1] = 3221225472;
    v57[2] = __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_309;
    v57[3] = &unk_1E73B7F30;
    v43 = *(a1 + 64);
    v61 = &v63;
    v62 = v43;
    v58 = *(a1 + 40);
    v13 = v17;
    v59 = v13;
    v44 = v19;
    v60 = v44;
    [v44 enumerateObjectsUsingBlock:v57];
    v45 = [MEMORY[0x1E695DF90] dictionary];
    v46 = [v13 copy];
    [v45 setObject:v46 forKeyedSubscript:@"value"];

    v47 = v64[5];
    if (v47 && [v47 length])
    {
      [v45 setObject:v64[5] forKeyedSubscript:@"axID"];
    }

    if (v56)
    {
      [v45 setObject:v56 forKeyedSubscript:@"leadingItem"];
    }

    if (v9)
    {
      [v45 setObject:v9 forKey:@"padding"];
    }

    v48 = *(a1 + 56);
    v49 = [v45 copy];
    [v48 addObject:v49];

    _Block_object_dispose(&v63, 8);
    goto LABEL_82;
  }

LABEL_83:
}

void __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 ams_replaceAccountPatternWithUsername:*(a1 + 32)];

    v7 = [v10 isEqualToString:@"value"];
    v8 = *(a1 + 40);
    if (v7)
    {
      v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v6];
      [v8 setObject:v9 forKey:v10];
    }

    else
    {
      [v8 setObject:v6 forKey:v10];
    }
  }

  else
  {
    v6 = v5;
  }
}

uint64_t __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke_309(uint64_t a1, void *a2, unint64_t a3)
{
  v19 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_20;
  }

  v5 = v19;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 objectForKeyedSubscript:@"axID"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = v7;

  if (v8 && [v8 length])
  {
    v9 = *(*(a1 + 56) + 8);
    v8 = v8;
    v7 = *(v9 + 40);
    *(v9 + 40) = v8;
LABEL_10:
  }

  v10 = [v6 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = [v6 objectForKeyedSubscript:@"style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = [objc_opt_class() _styleDictionaryWithName:v13 styles:*(a1 + 32)];
  v15 = [objc_opt_class() attributedStringWithString:v11 styles:v14];
  [*(a1 + 40) appendAttributedString:v15];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    v16 = *(a1 + 40);
    v17 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:0x1F073D158];
    [v16 appendAttributedString:v17];
  }

LABEL_20:

  return MEMORY[0x1EEE66BB8]();
}

+ (id)_flexListLeadingItemForValues:(id)a3 styles:(id)a4
{
  v49 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v6 && ([v6 allKeys], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    v10 = [MEMORY[0x1E695DF90] dictionary];
    v11 = [v6 objectForKeyedSubscript:@"iconType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v14 = [v6 objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v14;
    }

    else
    {
      v40 = 0;
    }

    v15 = [v6 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [v6 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    if ([v16 isEqualToString:@"url"])
    {
      v19 = a1;
      v20 = v12;
      v21 = [v19 _salableIconForString:v12];
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v18];
      v23 = v22;
      if (v21)
      {
        v24 = [v22 host];
        if (v24)
        {
          v25 = v24;
          v26 = [v23 scheme];

          if (v26)
          {
            [v10 setObject:&unk_1F0779580 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
            [v10 setObject:v18 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
            v27 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
            [v10 setObject:v27 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemIconTypeAttribute"];
          }
        }
      }

      v12 = v20;
    }

    else if ([v16 isEqualToString:@"symbol"] && v18)
    {
      [v10 setObject:&unk_1F0779598 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
      [v10 setObject:v18 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
    }

    v28 = [v10 allKeys];
    v29 = [v28 count];

    if (v29)
    {
      v13 = [v10 copy];
    }

    else
    {
      v39 = v12;
      v30 = +[AMSLogConfig sharedConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      v31 = [v30 OSLogObject];
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v38 = v32;
        v33 = AMSSetLogKeyIfNeeded();
        AMSHashIfNeeded(v16);
        v34 = v37 = v10;
        v35 = AMSHashIfNeeded(v6);
        *buf = 138544130;
        v42 = v32;
        v43 = 2114;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        _os_log_impl(&dword_192869000, v31, OS_LOG_TYPE_ERROR, "%{public}@:  [%{public}@] Unable to construct a valid leading item of type %{public}@ raw values were: %@", buf, 0x2Au);

        v10 = v37;
      }

      v13 = 0;
      v12 = v39;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

+ (int64_t)_confirmationTitleForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"pay"])
  {
    v4 = 0;
  }

  else if ([v3 isEqualToString:@"confirm"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"get"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"install"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"rent"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"redeem"])
  {
    v4 = 5;
  }

  else if ([v3 isEqualToString:@"subscribe"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)a3
{
  v3 = [a3 mutableCopy];
  [v3 setObject:&unk_1F07795B0 forKeyedSubscript:@"eventVersion"];
  v4 = +[AMSDevice screenScale];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:@"pixelRatio"];
  }

  v5 = +[AMSDevice screenWidth];
  if (v5)
  {
    [v3 setObject:v5 forKeyedSubscript:@"screenWidth"];
  }

  v6 = +[AMSDevice screenHeight];
  if (v6)
  {
    [v3 setObject:v6 forKeyedSubscript:@"screenHeight"];
  }

  v7 = [v3 copy];

  return v7;
}

+ (int64_t)_payeeInferredFromEnumeratedTitle:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  v5 = [v4 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = [v3 logKey];
    v29 = 138543618;
    v30 = v6;
    v31 = 2114;
    v32 = v7;
    _os_log_impl(&dword_192869000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requestor key not found, attempting to infer requestor from title enumeration.", &v29, 0x16u);
  }

  if ([v3 titleType] == 1)
  {
    v8 = [v3 title];
    v9 = [v8 isEqualToString:@"AppleArcade"];

    if (v9)
    {
      v10 = 6;
    }

    else
    {
      v15 = [v3 title];
      v16 = [v15 isEqualToString:@"AppleFitness"];

      if (v16)
      {
        v10 = 7;
      }

      else
      {
        v10 = 0;
      }
    }

    v17 = [v3 title];
    v18 = [v17 isEqualToString:@"AppleMusic"];

    if (v18)
    {
      v10 = 1;
      goto LABEL_25;
    }

    v19 = [v3 title];
    v20 = [v19 isEqualToString:@"AppleNews"];

    if (v20)
    {
      v10 = 2;
      goto LABEL_25;
    }

    v21 = [v3 title];
    v22 = [v21 isEqualToString:@"AppleOne"];

    if (v22)
    {
      v10 = 8;
      goto LABEL_25;
    }

    v23 = [v3 title];
    v24 = [v23 isEqualToString:@"AppleTV"];

    if (v24)
    {
      v10 = 9;
      goto LABEL_25;
    }

    v11 = +[AMSLogConfig sharedAccountsConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    v12 = [v11 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      v27 = [v3 logKey];
      v28 = [v3 title];
      v29 = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = v27;
      v33 = 2114;
      v34 = v28;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No requestor identified for title: %{public}@", &v29, 0x20u);
    }
  }

  else
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
      v14 = [v3 logKey];
      v29 = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = v14;
      _os_log_impl(&dword_192869000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No requestor identified, title type is not enumeration", &v29, 0x16u);
    }

    v10 = 0;
  }

LABEL_25:
  return v10;
}

+ (int64_t)_salableIconForString:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:@"app"])
  {
    v4 = 4;
  }

  else if ([v3 isEqualToString:@"merchant"])
  {
    v4 = 1;
  }

  else if ([v3 isEqualToString:@"messages"])
  {
    v4 = 2;
  }

  else if ([v3 isEqualToString:@"watch"])
  {
    v4 = 3;
  }

  else if ([v3 isEqualToString:@"vision"])
  {
    v4 = 6;
  }

  else if ([v3 isEqualToString:@"plain"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_salableInfoForKey:(id)a3 inDictionary:(id)a4 shouldUppercase:(BOOL)a5
{
  v5 = a5;
  v18[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v8 objectForKeyedSubscript:v7];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = v9;

  if (!v10)
  {
LABEL_6:
    v11 = [v8 objectForKeyedSubscript:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;

      if (v12)
      {
        v18[0] = v12;
        v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
    }

    v10 = 0;
    if (!v5)
    {
      goto LABEL_13;
    }

LABEL_11:
    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __82__AMSFinancePaymentSheetResponse__salableInfoForKey_inDictionary_shouldUppercase___block_invoke;
    v16[3] = &unk_1E73B3A38;
    v17 = v13;
    v12 = v13;
    [v10 enumerateObjectsUsingBlock:v16];
    v14 = [MEMORY[0x1E695DEC8] arrayWithArray:v12];

    v10 = v14;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_11;
  }

LABEL_13:

  return v10;
}

void __82__AMSFinancePaymentSheetResponse__salableInfoForKey_inDictionary_shouldUppercase___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 localizedUppercaseString];
  [v2 addObject:v3];
}

+ (id)_styleDictionaryWithName:(id)a3 styles:(id)a4
{
  v5 = a3;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__AMSFinancePaymentSheetResponse__styleDictionaryWithName_styles___block_invoke;
  v10[3] = &unk_1E73B7F80;
  v11 = v5;
  v6 = v5;
  v7 = [a4 ams_mapWithTransformIgnoresNil:v10];
  v8 = [v7 firstObject];

  return v8;
}

void *__66__AMSFinancePaymentSheetResponse__styleDictionaryWithName_styles___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectForKeyedSubscript:@"name"];
  if ([v4 isEqualToString:*(a1 + 32)])
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)_performPaymentSheetWithTaskInfo:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 properties];
  v9 = [v8 purchaseInfo];
  v10 = [v9 activePurchaseTask];

  if (v10)
  {
    v11 = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
    v12 = [v11 requiresAuthorization];

    v13 = [v6 properties];
    v14 = [v13 purchaseInfo];
    v15 = [v14 activePurchaseTask];
    v16 = [v15 performPreActionRequestForTaskInfo:v6 requiresAuthorization:v12];
  }

  else
  {
    v16 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke;
  v22[3] = &unk_1E73B7FD0;
  v23 = v6;
  v24 = self;
  v17 = v6;
  v18 = [v16 continueWithPromiseBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_3;
  v20[3] = &unk_1E73B7FF8;
  v21 = v7;
  v19 = v7;
  [v18 resultWithCompletion:v20];
}

AMSMutablePromise *__85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke(uint64_t a1, int a2)
{
  v52 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v18 = +[AMSOptional optionalWithNil];
    v19 = [AMSPromise promiseWithResult:v18];
    goto LABEL_30;
  }

  v4 = [*(a1 + 32) properties];
  v5 = [v4 purchaseInfo];
  v6 = [v5 activePurchaseTask];
  v7 = [v6 paymentSheetTaskClass];

  if (!v7)
  {
    v8 = [*(a1 + 32) properties];
    v9 = [v8 paymentSheetTaskClass];

    if (v9)
    {
      v10 = [*(a1 + 32) properties];
      v7 = [v10 paymentSheetTaskClass];

      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v13 = AMSLogKey();
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = v15;
      if (v13)
      {
        v2 = AMSLogKey();
        [v14 stringWithFormat:@"%@: [%@] ", v16, v2];
      }

      else
      {
        [v14 stringWithFormat:@"%@: ", v15];
      }
      v17 = ;
      *buf = 138543618;
      v49 = v17;
      v50 = 2114;
      v51 = v7;
      v23 = "%{public}@Using payment sheet task class from taskInfo properties: %{public}@";
      v24 = v12;
      v25 = 22;
    }

    else
    {
      v7 = objc_opt_class();
      v11 = +[AMSLogConfig sharedConfig];
      if (!v11)
      {
        v11 = +[AMSLogConfig sharedConfig];
      }

      v12 = [v11 OSLogObject];
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_22;
      }

      v13 = AMSLogKey();
      v20 = MEMORY[0x1E696AEC0];
      v21 = objc_opt_class();
      v22 = v21;
      if (v13)
      {
        v2 = AMSLogKey();
        [v20 stringWithFormat:@"%@: [%@] ", v22, v2];
      }

      else
      {
        [v20 stringWithFormat:@"%@: ", v21];
      }
      v17 = ;
      *buf = 138543362;
      v49 = v17;
      v23 = "%{public}@Could not determine payment sheet task class, using default";
      v24 = v12;
      v25 = 12;
    }

    _os_log_impl(&dword_192869000, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);
    if (v13)
    {

      v17 = v2;
    }

LABEL_22:
  }

  v26 = objc_alloc_init(AMSMutablePromise);
  v27 = [v7 alloc];
  v28 = [*(a1 + 40) paymentSheetRequest];
  v29 = [*(a1 + 32) properties];
  v30 = [v29 bag];
  v18 = [v27 initWithRequest:v28 bag:v30];

  v31 = *(a1 + 40);
  v32 = [v31 metricsDictionary];
  v33 = [v31 _enrichedMetricsDictionaryWithFinanceDictionary:v32];
  [v18 setMetricsDictionary:v33];

  v34 = [*(a1 + 32) session];
  v35 = [v34 delegate];

  if (objc_opt_respondsToSelector())
  {
    v36 = [v35 presentingSceneIdentifier];
    [v18 setPresentingSceneIdentifier:v36];
  }

  if (objc_opt_respondsToSelector())
  {
    v37 = [v35 presentingSceneBundleIdentifier];
    [v18 setPresentingSceneBundleIdentifier:v37];
  }

  if (objc_opt_respondsToSelector())
  {
    v38 = [v35 presentingWindow];
    [v18 setPresentingWindow:v38];
  }

  v39 = [*(a1 + 32) properties];
  v40 = [v39 purchaseInfo];
  [v18 setPurchaseInfo:v40];

  v41 = [v18 perform];
  v46[0] = MEMORY[0x1E69E9820];
  v46[1] = 3221225472;
  v46[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_330;
  v46[3] = &unk_1E73B7FA8;
  v42 = v26;
  v47 = v42;
  [v41 addSuccessBlock:v46];
  v44[0] = MEMORY[0x1E69E9820];
  v44[1] = 3221225472;
  v44[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_2;
  v44[3] = &unk_1E73B34B8;
  v19 = v42;
  v45 = v19;
  [v41 addErrorBlock:v44];

LABEL_30:

  return v19;
}

void __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_330(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [AMSOptional optionalWithValue:a2];
  [v2 finishWithResult:v3];
}

void __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if (v5)
  {
    v6 = [AMSURLAction actionWithError:v5];
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a1 + 32);
  v8 = [v9 value];
  (*(v7 + 16))(v7, v8, v6, v5);
}

+ (id)_attributedStringForAttributedArray:(id)a3 account:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AMSFinancePaymentSheetResponse__attributedStringForAttributedArray_account___block_invoke;
  v16[3] = &unk_1E73B8020;
  v17 = v7;
  v18 = v8;
  v20 = v9;
  v21 = a1;
  v19 = v6;
  v10 = v9;
  v11 = v6;
  v12 = v8;
  v13 = v7;
  [v11 enumerateObjectsUsingBlock:v16];
  v14 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v12];

  return v14;
}

void __78__AMSFinancePaymentSheetResponse__attributedStringForAttributedArray_account___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v10 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v10;

    if (v5)
    {
      v6 = [v5 ams_replacingMarkupUsingAccount:*(a1 + 32) shouldUppercase:0];
      [*(a1 + 40) appendAttributedString:v6];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v7 = v10;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v7;

    if (v6)
    {
      v8 = *(a1 + 40);
      v9 = [*(a1 + 64) _attributedStringForAttributedDictionary:v6 account:*(a1 + 32)];
      [v8 appendAttributedString:v9];
    }

    v5 = 0;
  }

  else
  {

    v5 = 0;
    v6 = 0;
  }

LABEL_10:

  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

+ (id)_attributedStringForAttributedDictionary:(id)a3 account:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    if (!v8)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [v8 ams_replacingMarkupUsingAccount:v6 shouldUppercase:0];
    v10 = [v9 mutableCopy];

    v11 = [v5 objectForKeyedSubscript:@"size"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v11;
    }

    else
    {
      v7 = 0;
    }

    if ([v7 isEqualToString:@"large"])
    {
      v12 = [v10 length];
      [v10 addAttribute:@"useLargeSize" value:MEMORY[0x1E695E118] range:{0, v12}];
    }
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

LABEL_11:
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v10];

  return v13;
}

+ (id)_attributedStringForSalableInfoStringArray:(id)a3 account:(id)a4 shouldUppercase:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __101__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStringArray_account_shouldUppercase___block_invoke;
  v22 = &unk_1E73B8048;
  v28 = a5;
  v26 = v11;
  v27 = a1;
  v23 = v9;
  v24 = v10;
  v25 = v8;
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [v13 enumerateObjectsUsingBlock:&v19];
  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = [v16 initWithAttributedString:{v14, v19, v20, v21, v22}];

  return v17;
}

void __101__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStringArray_account_shouldUppercase___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 ams_replacingMarkupUsingAccount:*(a1 + 32) shouldUppercase:*(a1 + 72)];
  v6 = v5;
  if (a3)
  {
    v8 = v5;
    v7 = [*(a1 + 64) _greyAttributedStringForAttributedString:v5 range:{0, objc_msgSend(v5, "length")}];

    v6 = v7;
  }

  v9 = v6;
  [*(a1 + 40) appendAttributedString:v6];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

+ (id)_attributedStringForSalableInfoStyledStringArray:(id)a3 account:(id)a4 shouldUppercase:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __107__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStyledStringArray_account_shouldUppercase___block_invoke;
  v22 = &unk_1E73B8070;
  v28 = a5;
  v26 = v11;
  v27 = a1;
  v23 = v9;
  v24 = v10;
  v25 = v8;
  v12 = v11;
  v13 = v8;
  v14 = v10;
  v15 = v9;
  [v13 enumerateObjectsUsingBlock:&v19];
  v16 = objc_alloc(MEMORY[0x1E696AAB0]);
  v17 = [v16 initWithAttributedString:{v14, v19, v20, v21, v22}];

  return v17;
}

void __107__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStyledStringArray_account_shouldUppercase___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;

    if (v6)
    {
      v7 = [v6 ams_replacingMarkupUsingAccount:*(a1 + 32) shouldUppercase:*(a1 + 72)];
      goto LABEL_6;
    }
  }

  else
  {

    v6 = 0;
  }

  v7 = 0;
LABEL_6:
  v12 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v12;

    if (!v8)
    {
      goto LABEL_11;
    }

    v9 = [v8 objectForKeyedSubscript:@"value"];
    v10 = v7;
    v7 = v9;
  }

  else
  {
    v8 = 0;
    v10 = v12;
  }

LABEL_11:
  if (a3)
  {
    v11 = [*(a1 + 64) _greyAttributedStringForAttributedString:v7 range:{0, objc_msgSend(v7, "length")}];

    v7 = v11;
  }

  [*(a1 + 40) appendAttributedString:v7];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

+ (id)_attributedStringForStringArray:(id)a3 useGrey:(BOOL)a4 account:(id)a5 shouldUppercase:(BOOL)a6
{
  v10 = a3;
  v11 = a5;
  v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __98__AMSFinancePaymentSheetResponse__attributedStringForStringArray_useGrey_account_shouldUppercase___block_invoke;
  v24 = &unk_1E73B8098;
  v30 = a6;
  v31 = a4;
  v28 = v13;
  v29 = a1;
  v25 = v11;
  v26 = v12;
  v27 = v10;
  v14 = v13;
  v15 = v10;
  v16 = v12;
  v17 = v11;
  [v15 enumerateObjectsUsingBlock:&v21];
  v18 = objc_alloc(MEMORY[0x1E696AAB0]);
  v19 = [v18 initWithAttributedString:{v16, v21, v22, v23, v24}];

  return v19;
}

void __98__AMSFinancePaymentSheetResponse__attributedStringForStringArray_useGrey_account_shouldUppercase___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = [a2 ams_replacingMarkupUsingAccount:*(a1 + 32) shouldUppercase:*(a1 + 72)];
  v6 = v5;
  if (*(a1 + 73) == 1)
  {
    v8 = v5;
    v7 = [*(a1 + 64) _greyAttributedStringForAttributedString:v5 range:{0, objc_msgSend(v5, "length")}];

    v6 = v7;
  }

  v9 = v6;
  [*(a1 + 40) appendAttributedString:v6];
  if ([*(a1 + 48) count] - 1 > a3)
  {
    [*(a1 + 40) appendAttributedString:*(a1 + 56)];
  }
}

+ (id)attributedStringWithString:(id)a3 styles:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 objectForKeyedSubscript:@"image"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];
    v9 = [v5 stringByAppendingString:v8];

    v5 = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v5];
  v11 = [v6 objectForKeyedSubscript:@"color"];
  if ([v11 isEqualToString:@"gray"])
  {

LABEL_6:
    v14 = [v5 length];
    [v10 addAttribute:@"AMSPaymentContentItemLightColorAttribute" value:MEMORY[0x1E695E118] range:{0, v14}];
    goto LABEL_7;
  }

  v12 = [v6 objectForKeyedSubscript:@"color"];
  v13 = [v12 isEqualToString:@"grey"];

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = [v6 objectForKeyedSubscript:@"bold"];
  if (([v15 isEqualToString:@"true"] & 1) != 0 || objc_msgSend(v15, "BOOLValue"))
  {
    v16 = [v5 length];
    [v10 addAttribute:@"AMSPaymentContentItemBoldAttribute" value:MEMORY[0x1E695E118] range:{0, v16}];
  }

  v17 = [v6 objectForKeyedSubscript:@"size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;

    if (v18)
    {
      v34 = v18;
      [v10 addAttribute:@"AMSPaymentSheetContentItemSizeAttribute" value:v18 range:{0, objc_msgSend(v5, "length")}];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v34 = 0;
LABEL_15:
  v19 = [v6 objectForKeyedSubscript:@"spacingAfter"];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_23;
  }

  if ([v19 isEqualToString:@"large"])
  {
    v21 = AMSPaymentSheetContentItemSpacingAttributeLargeValue;
  }

  else if ([v20 isEqualToString:@"small"])
  {
    v21 = AMSPaymentSheetContentItemSpacingAttributeSmallValue;
  }

  else
  {
    if (![v20 isEqualToString:@"medium"])
    {
      goto LABEL_23;
    }

    v21 = AMSPaymentSheetContentItemSpacingAttributeMediumValue;
  }

  [v10 addAttribute:@"AMSPaymentSheetContentItemSpacingAfterAttribute" value:*v21 range:{0, objc_msgSend(v5, "length")}];
LABEL_23:
  v22 = [v6 objectForKeyedSubscript:@"spacingBefore"];
  v23 = v22;
  if (!v22)
  {
    goto LABEL_31;
  }

  if ([v22 isEqualToString:@"large"])
  {
    v24 = AMSPaymentSheetContentItemSpacingAttributeLargeValue;
  }

  else if ([v23 isEqualToString:@"small"])
  {
    v24 = AMSPaymentSheetContentItemSpacingAttributeSmallValue;
  }

  else
  {
    if (![v23 isEqualToString:@"medium"])
    {
      goto LABEL_31;
    }

    v24 = AMSPaymentSheetContentItemSpacingAttributeMediumValue;
  }

  [v10 addAttribute:@"AMSPaymentSheetContentItemSpacingBeforeAttribute" value:*v24 range:{0, objc_msgSend(v5, "length")}];
LABEL_31:
  v25 = [v6 objectForKeyedSubscript:@"dividerBefore"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v33 = v15;
    v26 = v7;
    v27 = v25;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    v29 = [v28 lowercaseString];
    v30 = [v29 isEqualToString:@"false"];

    v7 = v26;
    v15 = v33;
    if ((v30 & 1) == 0)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v25 BOOLValue] & 1) == 0)
  {
LABEL_39:
    [v10 addAttribute:@"AMSPaymentSheetContentItemDividerAttribute" value:@"AMSPaymentSheetContentItemDividerNoValue" range:{0, objc_msgSend(v5, "length")}];
  }

LABEL_40:
  v31 = [v10 copy];

  return v31;
}

+ (id)_greyAttributedStringForAttributedString:(id)a3 range:(_NSRange)a4
{
  length = a4.length;
  v5 = a3;
  if (!_greyAttributedStringForAttributedString_range__kAMSPaymentContentItemLightColorAttribute)
  {
    objc_storeStrong(&_greyAttributedStringForAttributedString_range__kAMSPaymentContentItemLightColorAttribute, @"AMSPaymentContentItemLightColorAttribute");
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:v5];
  v7 = v6;
  if (_greyAttributedStringForAttributedString_range__kAMSPaymentContentItemLightColorAttribute)
  {
    v8 = length == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    [v6 addAttribute:? value:? range:?];
  }

  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithAttributedString:v7];

  return v9;
}

+ (id)createRequestFromDictionary:(id)a3 confirmationOnly:(BOOL)a4 delegateAuthenticationRequired:(BOOL)a5 biometricSignatureRequired:(BOOL)a6 authenticateResponse:(id)a7 taskInfo:(id)a8 account:(id)a9
{
  v11 = a6;
  v12 = a5;
  v13 = a4;
  v232[1] = *MEMORY[0x1E69E9840];
  v14 = a3;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v18 timeIntervalSince1970];
  v20 = v19;

  v214 = v15;
  v217 = [v15 authenticateRequest];
  v21 = objc_alloc_init(AMSPaymentSheetRequest);
  [(AMSPaymentSheetRequest *)v21 setResponseDictionary:v14];
  v215 = v14;
  v22 = [v14 objectForKeyedSubscript:@"paymentSheetInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v213 = v23;

  [(AMSPaymentSheetRequest *)v21 setRequiresAuthorization:!v13];
  v24 = a1;
  if (v12)
  {
    v25 = [v16 response];
    v26 = [v25 ams_valueForHTTPHeaderField:@"X-Apple-DelegateAuth-Challenge"];
    [(AMSPaymentSheetRequest *)v21 setDelegateAuthenticateChallenge:v26];

    v27 = +[AMSDelegateAuthenticateRequest preferredUserAgent];
    [(AMSPaymentSheetRequest *)v21 setUserAgent:v27];

    [(AMSPaymentSheetRequest *)v21 setIsDelegateAuthentication:1];
  }

  v218 = v16;
  if (v11)
  {
    v28 = [v16 response];
    v221 = [v16 properties];
    v29 = [v221 account];
    v30 = [v16 session];
    v31 = [v16 task];
    [v16 properties];
    v32 = v223 = v17;
    v33 = [v32 clientInfo];
    v34 = [v218 properties];
    v35 = [v34 keychainOptions];
    v36 = [AMSBiometricsSignatureRequest biometricsSignatureRequestForURLResponse:v28 account:v29 session:v30 task:v31 clientInfo:v33 options:v35 error:0];
    [(AMSPaymentSheetRequest *)v21 setBiometricsRequest:v36];

    v24 = a1;
    v16 = v218;

    v17 = v223;
  }

  if (!v17)
  {
    v37 = [v16 properties];
    v17 = [v37 account];
  }

  [(AMSPaymentSheetRequest *)v21 setAccount:v17];
  v38 = [v16 properties];
  v39 = [v38 logUUID];
  [(AMSPaymentSheetRequest *)v21 setLogKey:v39];

  v40 = [v213 objectForKeyedSubscript:@"caseControl"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  v42 = v41;

  v212 = v42;
  v43 = [v42 lowercaseString];
  v44 = [v43 isEqualToString:@"true"];

  [(AMSPaymentSheetRequest *)v21 setShouldUppercaseText:v44 ^ 1u];
  v45 = [v213 objectForKeyedSubscript:@"designVersion"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v46 = v45;
  }

  else
  {
    v46 = 0;
  }

  v47 = v46;

  [(AMSPaymentSheetRequest *)v21 setDesignVersion:v47];
  v48 = [v213 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  v50 = v49;

  if (v50)
  {
    v51 = [v50 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v52 = v51;
    }

    else
    {
      v52 = 0;
    }

    v53 = v52;

    if ([v53 isEqualToString:@"text"])
    {
      v54 = 0;
    }

    else if ([v53 isEqualToString:@"enum"])
    {
      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    [(AMSPaymentSheetRequest *)v21 setTitleType:v54];
    v55 = [v50 objectForKeyedSubscript:@"value"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }

    v57 = v56;

    [(AMSPaymentSheetRequest *)v21 setTitle:v57];
  }

  v58 = [(AMSPaymentSheetRequest *)v21 title];
  v59 = [v58 length];

  if (!v59)
  {
    v60 = [v213 objectForKeyedSubscript:@"title"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v62 = v61;

    if (v62)
    {
      [(AMSPaymentSheetRequest *)v21 setTitle:v62];
      [(AMSPaymentSheetRequest *)v21 setTitleType:0];
    }
  }

  v63 = [v213 objectForKeyedSubscript:@"accountHeader"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v64 = v63;
  }

  else
  {
    v64 = 0;
  }

  v65 = v64;

  [(AMSPaymentSheetRequest *)v21 setAccountHeader:v65];
  if ((v44 & 1) == 0)
  {
    v66 = [(AMSPaymentSheetRequest *)v21 accountHeader];
    v67 = [v66 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setAccountHeader:v67];
  }

  v68 = [v213 objectForKeyedSubscript:@"countryCode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v69 = v68;
  }

  else
  {
    v69 = 0;
  }

  v70 = v69;

  [(AMSPaymentSheetRequest *)v21 setCountryCode:v70];
  v71 = [(AMSPaymentSheetRequest *)v21 countryCode];

  if (!v71)
  {
    [(AMSPaymentSheetRequest *)v21 setCountryCode:@"US"];
  }

  v72 = [v213 objectForKeyedSubscript:@"currency"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v73 = v72;
  }

  else
  {
    v73 = 0;
  }

  v74 = v73;

  [(AMSPaymentSheetRequest *)v21 setCurrencyCode:v74];
  v75 = [(AMSPaymentSheetRequest *)v21 currencyCode];

  if (!v75)
  {
    [(AMSPaymentSheetRequest *)v21 setCurrencyCode:@"USD"];
  }

  v76 = [v213 objectForKeyedSubscript:@"price"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v77 = v76;
  }

  else
  {
    v77 = 0;
  }

  v78 = v77;

  [(AMSPaymentSheetRequest *)v21 setPrice:v78];
  v79 = [v213 objectForKeyedSubscript:@"displayPrice"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v80 = v79;
  }

  else
  {
    v80 = 0;
  }

  v81 = v80;

  [(AMSPaymentSheetRequest *)v21 setDisplayPrice:v81];
  if ((v44 & 1) == 0)
  {
    v82 = [(AMSPaymentSheetRequest *)v21 displayPrice];
    v83 = [v82 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setDisplayPrice:v83];
  }

  v84 = [v217 options];
  v85 = [v84 promptTitle];
  [(AMSPaymentSheetRequest *)v21 setExplanation:v85];

  v86 = [v217 options];
  v87 = [v86 reason];
  [(AMSPaymentSheetRequest *)v21 setMessage:v87];

  v88 = [v213 objectForKeyedSubscript:@"priceSection"];
  if (!v88)
  {
    v88 = [v213 objectForKeyedSubscript:@"pricingSection"];
  }

  v89 = v88;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v90 = v89;
  }

  else
  {
    v90 = 0;
  }

  v91 = v90;

  v210 = v89;
  if (v91)
  {
    v92 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v227[0] = MEMORY[0x1E69E9820];
    v227[1] = 3221225472;
    v227[2] = __175__AMSFinancePaymentSheetResponse_createRequestFromDictionary_confirmationOnly_delegateAuthenticationRequired_biometricSignatureRequired_authenticateResponse_taskInfo_account___block_invoke;
    v227[3] = &unk_1E73B80C0;
    v93 = v21;
    v228 = v93;
    v94 = v92;
    v229 = v94;
    [v91 enumerateObjectsUsingBlock:v227];
    [(AMSPaymentSheetRequest *)v93 setPriceSectionItems:v94];
  }

  if ([(AMSPaymentSheetRequest *)v21 titleType]== 1)
  {
    -[AMSPaymentSheetRequest setPayee:](v21, "setPayee:", [v24 _payeeInferredFromEnumeratedTitle:v21]);
  }

  v95 = [v213 objectForKeyedSubscript:@"salableIcon"];
  objc_opt_class();
  v209 = v91;
  if (objc_opt_isKindOfClass())
  {
    v96 = v95;
  }

  else
  {
    v96 = 0;
  }

  v97 = v96;

  if (v97)
  {
    v98 = [MEMORY[0x1E695DFF8] URLWithString:v97];
    [(AMSPaymentSheetRequest *)v21 setSalableIconURL:v98];
  }

  v99 = [v213 objectForKeyedSubscript:@"salableIconType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v100 = v99;
  }

  else
  {
    v100 = 0;
  }

  v101 = v100;

  if (v101)
  {
    v102 = [v101 lowercaseString];
    -[AMSPaymentSheetRequest setSalableIcon:](v21, "setSalableIcon:", [v24 _salableIconForString:v102]);
  }

  v207 = v101;
  v103 = [v213 objectForKeyedSubscript:@"storeName"];
  objc_opt_class();
  v208 = v97;
  if (objc_opt_isKindOfClass())
  {
    v104 = v103;
  }

  else
  {
    v104 = 0;
  }

  v105 = v104;

  [(AMSPaymentSheetRequest *)v21 setStoreName:v105];
  if ((v44 & 1) == 0)
  {
    v106 = [(AMSPaymentSheetRequest *)v21 storeName];
    v107 = [v106 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setStoreName:v107];
  }

  v108 = [v213 objectForKeyedSubscript:@"rating"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v109 = v108;
  }

  else
  {
    v109 = 0;
  }

  v110 = v109;

  v216 = v110;
  v111 = [v110 objectForKeyedSubscript:@"header"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v112 = v111;
  }

  else
  {
    v112 = 0;
  }

  v113 = v112;

  [(AMSPaymentSheetRequest *)v21 setRatingHeader:v113];
  v114 = [v216 objectForKeyedSubscript:@"text"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v115 = v114;
  }

  else
  {
    v115 = 0;
  }

  v116 = v115;

  [(AMSPaymentSheetRequest *)v21 setRatingValue:v116];
  if ((v44 & 1) == 0)
  {
    v117 = [(AMSPaymentSheetRequest *)v21 ratingHeader];
    v118 = [v117 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setRatingHeader:v118];

    v119 = [(AMSPaymentSheetRequest *)v21 ratingValue];
    v120 = [v119 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setRatingValue:v120];
  }

  v121 = [v213 objectForKeyedSubscript:@"confirmationTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v122 = v121;
  }

  else
  {
    v122 = 0;
  }

  v123 = v122;

  if (v123)
  {
    v124 = [v123 lowercaseString];
    -[AMSPaymentSheetRequest setConfirmationTitle:](v21, "setConfirmationTitle:", [v24 _confirmationTitleForString:v124]);
  }

  v125 = [v213 objectForKeyedSubscript:@"paymentSummary"];
  objc_opt_class();
  v206 = v123;
  if (objc_opt_isKindOfClass())
  {
    v126 = v125;
  }

  else
  {
    v126 = 0;
  }

  v127 = v126;

  [(AMSPaymentSheetRequest *)v21 setPaymentSummary:v127];
  if ((v44 & 1) == 0)
  {
    v128 = [(AMSPaymentSheetRequest *)v21 paymentSummary];
    v129 = [v128 localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setPaymentSummary:v129];
  }

  v130 = [v213 objectForKeyedSubscript:@"preSheetDialog"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v131 = v130;
  }

  else
  {
    v131 = 0;
  }

  v132 = v131;

  if (v132 || (([v213 objectForKeyedSubscript:@"preSheetDialog"], v145 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v146 = 0) : (v146 = v145), (v204 = v146, v204, v145, v204) && (v232[0] = v204, objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v232, 1), v132 = objc_claimAutoreleasedReturnValue(), v204, v132)))
  {
    v133 = [(AMSPaymentSheetRequest *)v21 designVersion];
    v134 = [v24 _flexListDictionaryForValues:v132 styles:0 account:v17 shouldUppercaseText:v44 ^ 1u designVersion:v133];
    [(AMSPaymentSheetRequest *)v21 setPreSheetDialog:v134];
  }

  v135 = [v213 objectForKeyedSubscript:@"isApplePay"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v136 = v135;
  }

  else
  {
    v136 = 0;
  }

  v137 = v136;

  v205 = v137;
  v138 = [v137 lowercaseString];
  LODWORD(v137) = [v138 isEqualToString:@"true"];

  if (v137)
  {
    [(AMSPaymentSheetRequest *)v21 setApplePayClassic:1];
  }

  v139 = [v213 objectForKeyedSubscript:@"styles"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v140 = v139;
  }

  else
  {
    v140 = 0;
  }

  v141 = v140;

  if (v141)
  {
    [(AMSPaymentSheetRequest *)v21 setStyles:v141];
  }

  v220 = v141;
  v142 = [v213 objectForKeyedSubscript:@"salableInfo"];

  if (v142)
  {
    v143 = [v213 objectForKeyedSubscript:@"salableInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v144 = v143;
    }

    else
    {
      v144 = 0;
    }

    v147 = v144;

    v148 = [(AMSPaymentSheetRequest *)v21 designVersion];
    v149 = [v24 _salableInfoDictionaryForValues:v147 styles:v220 account:v17 shouldUppercaseText:v44 ^ 1u designVersion:v148];

    [(AMSPaymentSheetRequest *)v21 setSalableInfo:v149];
    v150 = [v24 _attributedStringForSalableInfoStyledStringArray:v149 account:v17 shouldUppercase:v44 ^ 1u];
    [(AMSPaymentSheetRequest *)v21 setSalableInfoLabel:v150];
  }

  v151 = [v213 objectForKeyedSubscript:@"secondarySheetInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v152 = v151;
  }

  else
  {
    v152 = 0;
  }

  v211 = v50;
  v153 = v152;

  v222 = v153;
  v224 = v17;
  if (v153)
  {
    v154 = [v153 objectForKeyedSubscript:@"salableIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v155 = v154;
    }

    else
    {
      v155 = 0;
    }

    v156 = v155;

    if (v156)
    {
      [MEMORY[0x1E695DFF8] URLWithString:v156];
    }

    else
    {
      [(AMSPaymentSheetRequest *)v21 salableIconURL];
    }
    v157 = ;
    [(AMSPaymentSheetRequest *)v21 setSecondarySalableIconURL:v157];

    v158 = [v222 objectForKeyedSubscript:@"salableIconType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v159 = v158;
    }

    else
    {
      v159 = 0;
    }

    v160 = v159;

    if (v160)
    {
      v161 = [v160 lowercaseString];
      -[AMSPaymentSheetRequest setSecondarySalableIcon:](v21, "setSecondarySalableIcon:", [v24 _salableIconForString:v161]);
    }

    else
    {
      [(AMSPaymentSheetRequest *)v21 setSecondarySalableIcon:[(AMSPaymentSheetRequest *)v21 salableIcon]];
    }

    v162 = [v24 _salableInfoForKey:@"salableInfo" inDictionary:v222 shouldUppercase:v44 ^ 1u];
    [(AMSPaymentSheetRequest *)v21 setSecondarySalableInfo:v162];
    v163 = [v24 _attributedStringForSalableInfoStringArray:v162 account:v17 shouldUppercase:v44 ^ 1u];
    [(AMSPaymentSheetRequest *)v21 setSecondarySalableInfoLabel:v163];

    v164 = [v222 objectForKeyedSubscript:@"flexList"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v165 = v164;
    }

    else
    {
      v165 = 0;
    }

    v166 = v165;

    if (v166)
    {
      v167 = [(AMSPaymentSheetRequest *)v21 designVersion];
      v168 = [a1 _flexListDictionaryForValues:v166 styles:v220 account:v224 shouldUppercaseText:v44 ^ 1u designVersion:v167];
      [(AMSPaymentSheetRequest *)v21 setSecondaryFlexList:v168];
    }

    v17 = v224;
    v24 = a1;
  }

  v169 = [v213 objectForKeyedSubscript:@"images"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v170 = [[AMSPaymentSheetInlineImage alloc] initWithURLString:v169];
    v231 = v170;
    v171 = MEMORY[0x1E695DEC8];
    v172 = &v231;
LABEL_155:
    v173 = [v171 arrayWithObjects:v172 count:1];
    [(AMSPaymentSheetRequest *)v21 setInlineImages:v173];
LABEL_156:

    goto LABEL_157;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v170 = [[AMSPaymentSheetInlineImage alloc] initWithDictionary:v169];
    v230 = v170;
    v171 = MEMORY[0x1E695DEC8];
    v172 = &v230;
    goto LABEL_155;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v170 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v173 = v169;
    if ([v173 count])
    {
      v225[0] = MEMORY[0x1E69E9820];
      v225[1] = 3221225472;
      v225[2] = __175__AMSFinancePaymentSheetResponse_createRequestFromDictionary_confirmationOnly_delegateAuthenticationRequired_biometricSignatureRequired_authenticateResponse_taskInfo_account___block_invoke_2;
      v225[3] = &unk_1E73B80E8;
      v226 = v170;
      [v173 enumerateObjectsUsingBlock:v225];
    }

    v203 = [MEMORY[0x1E695DEC8] arrayWithArray:v170];
    [(AMSPaymentSheetRequest *)v21 setInlineImages:v203];

    goto LABEL_156;
  }

LABEL_157:
  v174 = [v213 objectForKeyedSubscript:@"flexList"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v175 = v174;
  }

  else
  {
    v175 = 0;
  }

  v176 = v175;

  if (v176)
  {
    v177 = [(AMSPaymentSheetRequest *)v21 designVersion];
    v178 = [v24 _flexListDictionaryForValues:v176 styles:v220 account:v17 shouldUppercaseText:v44 ^ 1u designVersion:v177];
    [(AMSPaymentSheetRequest *)v21 setFlexList:v178];

    v179 = [v24 _attributedListDictionaryForValues:v176 account:v17];
    [(AMSPaymentSheetRequest *)v21 setAttributedList:v179];
  }

  v180 = [v213 objectForKeyedSubscript:@"disablePasscodeFallback"];
  if (objc_opt_respondsToSelector())
  {
    v181 = [v213 objectForKeyedSubscript:@"disablePasscodeFallback"];
    -[AMSPaymentSheetRequest setDisablePasscodeFallback:](v21, "setDisablePasscodeFallback:", [v181 BOOLValue]);
  }

  else
  {
    [(AMSPaymentSheetRequest *)v21 setDisablePasscodeFallback:0];
  }

  v182 = [v213 objectForKeyedSubscript:@"drawBackground"];
  if (objc_opt_respondsToSelector())
  {
    v183 = [v213 objectForKeyedSubscript:@"drawBackground"];
    -[AMSPaymentSheetRequest setDrawBackground:](v21, "setDrawBackground:", [v183 BOOLValue]);
  }

  else
  {
    [(AMSPaymentSheetRequest *)v21 setDrawBackground:1];
  }

  v184 = [v213 objectForKeyedSubscript:@"drawBottomDivider"];
  if (objc_opt_respondsToSelector())
  {
    v185 = [v213 objectForKeyedSubscript:@"drawBottomDivider"];
    -[AMSPaymentSheetRequest setDrawBottomDivider:](v21, "setDrawBottomDivider:", [v185 BOOLValue]);
  }

  else
  {
    [(AMSPaymentSheetRequest *)v21 setDrawBottomDivider:0];
  }

  v186 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v186 timeIntervalSince1970];
  v188 = v187;

  v189 = [AMSPaymentSheetPerformanceMetrics alloc];
  v190 = [v218 properties];
  v191 = [v190 bag];
  v192 = [(AMSPaymentSheetPerformanceMetrics *)v189 initWithBag:v191];

  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataParseStartTime:v20];
  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataParseEndTime:v188];
  v193 = [v218 metrics];
  v194 = [v193 transactionMetrics];
  v195 = [v194 firstObject];
  v196 = [v195 responseStartDate];
  [v196 timeIntervalSince1970];
  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataResponseStartTime:?];

  v197 = [v218 metrics];
  v198 = [v197 transactionMetrics];
  v199 = [v198 firstObject];
  v200 = [v199 responseEndDate];
  [v200 timeIntervalSince1970];
  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataResponseEndTime:?];

  [(AMSPaymentSheetRequest *)v21 setPerformanceMetrics:v192];
  v201 = v21;

  return v21;
}

void __175__AMSFinancePaymentSheetResponse_createRequestFromDictionary_confirmationOnly_delegateAuthenticationRequired_biometricSignatureRequired_authenticateResponse_taskInfo_account___block_invoke(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = objc_alloc_init(AMSPaymentSheetPriceSectionItem);
  v4 = [v10 objectForKeyedSubscript:@"header"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([*(a1 + 32) shouldUppercaseText])
  {
    v6 = [v5 localizedUppercaseString];
    [(AMSPaymentSheetPriceSectionItem *)v3 setLabel:v6];
  }

  else
  {
    [(AMSPaymentSheetPriceSectionItem *)v3 setLabel:v5];
  }

  v7 = [v10 objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  if ([*(a1 + 32) shouldUppercaseText])
  {
    v9 = [v8 localizedUppercaseString];
    [(AMSPaymentSheetPriceSectionItem *)v3 setPrice:v9];
  }

  else
  {
    [(AMSPaymentSheetPriceSectionItem *)v3 setPrice:v8];
  }

  [*(a1 + 40) addObject:v3];
}

void __175__AMSFinancePaymentSheetResponse_createRequestFromDictionary_confirmationOnly_delegateAuthenticationRequired_biometricSignatureRequired_authenticateResponse_taskInfo_account___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [[AMSPaymentSheetInlineImage alloc] initWithURLString:v5];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_6;
    }

    v3 = [[AMSPaymentSheetInlineImage alloc] initWithDictionary:v5];
  }

  v4 = v3;
  [*(a1 + 32) addObject:v3];

LABEL_6:
}

+ (id)fallbackTitleFromResponse:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"paymentSheetInfo"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 objectForKeyedSubscript:@"title"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v6 = 0;
    goto LABEL_9;
  }

  v6 = v5;

  if (v6)
  {
    v5 = [v6 objectForKeyedSubscript:@"fallback"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v5;
      v7 = v5;
LABEL_10:

      goto LABEL_11;
    }

LABEL_9:
    v7 = 0;
    goto LABEL_10;
  }

  v7 = 0;
LABEL_11:

  return v7;
}

@end