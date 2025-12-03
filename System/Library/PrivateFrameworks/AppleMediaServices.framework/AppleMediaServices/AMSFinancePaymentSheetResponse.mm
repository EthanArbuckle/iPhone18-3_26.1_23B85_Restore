@interface AMSFinancePaymentSheetResponse
+ (id)_attributedListDictionaryForValues:(id)values account:(id)account;
+ (id)_attributedStringForAttributedArray:(id)array account:(id)account;
+ (id)_attributedStringForAttributedDictionary:(id)dictionary account:(id)account;
+ (id)_attributedStringForSalableInfoStringArray:(id)array account:(id)account shouldUppercase:(BOOL)uppercase;
+ (id)_attributedStringForSalableInfoStyledStringArray:(id)array account:(id)account shouldUppercase:(BOOL)uppercase;
+ (id)_attributedStringForStringArray:(id)array useGrey:(BOOL)grey account:(id)account shouldUppercase:(BOOL)uppercase;
+ (id)_createMerchantSessionFromDictionary:(id)dictionary;
+ (id)_flexListDictionaryForValues:(id)values styles:(id)styles account:(id)account shouldUppercaseText:(BOOL)text designVersion:(id)version;
+ (id)_flexListLeadingItemForValues:(id)values styles:(id)styles;
+ (id)_greyAttributedStringForAttributedString:(id)string range:(_NSRange)range;
+ (id)_salableInfoDictionaryForValues:(id)values styles:(id)styles account:(id)account shouldUppercaseText:(BOOL)text designVersion:(id)version;
+ (id)_salableInfoForKey:(id)key inDictionary:(id)dictionary shouldUppercase:(BOOL)uppercase;
+ (id)_styleDictionaryWithName:(id)name styles:(id)styles;
+ (id)attributedStringWithString:(id)string styles:(id)styles;
+ (id)createRequestFromDictionary:(id)dictionary confirmationOnly:(BOOL)only delegateAuthenticationRequired:(BOOL)required biometricSignatureRequired:(BOOL)signatureRequired authenticateResponse:(id)response taskInfo:(id)info account:(id)account;
+ (id)fallbackTitleFromResponse:(id)response;
+ (int64_t)_confirmationTitleForString:(id)string;
+ (int64_t)_payeeInferredFromEnumeratedTitle:(id)title;
+ (int64_t)_salableIconForString:(id)string;
- (AMSFinancePaymentSheetResponse)initWithResponseDictionary:(id)dictionary confirmationOnly:(BOOL)only delegateAuthenticationRequired:(BOOL)required biometricSignatureRequired:(BOOL)signatureRequired taskInfo:(id)info;
- (id)_createUpdatedBodyFromFormData:(id)data;
- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)dictionary;
- (id)_performAuthorizationDialogProxyWithTaskInfo:(id)info;
- (id)performWithTaskInfo:(id)info;
- (void)_performPaymentSheetWithTaskInfo:(id)info completionHandler:(id)handler;
- (void)performWithTaskInfo:(id)info completionHandler:(id)handler;
@end

@implementation AMSFinancePaymentSheetResponse

- (AMSFinancePaymentSheetResponse)initWithResponseDictionary:(id)dictionary confirmationOnly:(BOOL)only delegateAuthenticationRequired:(BOOL)required biometricSignatureRequired:(BOOL)signatureRequired taskInfo:(id)info
{
  signatureRequiredCopy = signatureRequired;
  requiredCopy = required;
  onlyCopy = only;
  dictionaryCopy = dictionary;
  infoCopy = info;
  v27.receiver = self;
  v27.super_class = AMSFinancePaymentSheetResponse;
  v14 = [(AMSFinancePaymentSheetResponse *)&v27 init];
  if (v14)
  {
    v15 = [[AMSFinanceAuthenticateResponse alloc] initWithResponseDictionary:dictionaryCopy taskInfo:infoCopy];
    authenticateResponse = v14->_authenticateResponse;
    v14->_authenticateResponse = v15;

    v17 = [AMSFinanceResponse valueForProtocolKey:@"dialog" inResponse:dictionaryCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v19 = [objc_opt_class() createRequestFromDictionary:v18 confirmationOnly:onlyCopy delegateAuthenticationRequired:requiredCopy biometricSignatureRequired:signatureRequiredCopy authenticateResponse:v14->_authenticateResponse taskInfo:infoCopy account:0];
    paymentSheetRequest = v14->_paymentSheetRequest;
    v14->_paymentSheetRequest = v19;

    v21 = [dictionaryCopy valueForKey:@"metrics"];
    objc_opt_class();
    v22 = 0;
    if (objc_opt_isKindOfClass())
    {
      v22 = v21;
    }

    metricsDictionary = v14->_metricsDictionary;
    v14->_metricsDictionary = v22;

    v24 = [objc_opt_class() _createMerchantSessionFromDictionary:dictionaryCopy];
    if (v24)
    {
      [(AMSPaymentSheetRequest *)v14->_paymentSheetRequest setMerchantSession:v24];
      biometricsRequest = [(AMSPaymentSheetRequest *)v14->_paymentSheetRequest biometricsRequest];
      [biometricsRequest setDualAction:1];
    }
  }

  return v14;
}

- (void)performWithTaskInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __72__AMSFinancePaymentSheetResponse_performWithTaskInfo_completionHandler___block_invoke;
  v10[3] = &unk_1E73B7E18;
  v10[4] = self;
  v11 = infoCopy;
  v12 = handlerCopy;
  v8 = handlerCopy;
  v9 = infoCopy;
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

- (id)performWithTaskInfo:(id)info
{
  infoCopy = info;
  v5 = objc_alloc_init(AMSMutablePromise);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __54__AMSFinancePaymentSheetResponse_performWithTaskInfo___block_invoke;
  v10[3] = &unk_1E73B7C48;
  v11 = v5;
  v6 = v5;
  [(AMSFinancePaymentSheetResponse *)self performWithTaskInfo:infoCopy completionHandler:v10];

  v7 = [(AMSPromise *)v6 resultWithError:0];
  value = [v7 value];

  return value;
}

void __54__AMSFinancePaymentSheetResponse_performWithTaskInfo___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [[AMSOptional alloc] initWithValue:v3];

  [v2 finishWithResult:v4];
}

- (id)_performAuthorizationDialogProxyWithTaskInfo:(id)info
{
  v44 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  paymentSheetRequest = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
  v6 = [AMSPaymentAuthorizationDialogTask alloc];
  properties = [infoCopy properties];
  v8 = [properties bag];
  v9 = [(AMSPaymentAuthorizationDialogTask *)v6 initWithRequest:paymentSheetRequest bag:v8];

  properties2 = [infoCopy properties];
  purchaseInfo = [properties2 purchaseInfo];
  [(AMSPaymentAuthorizationDialogTask *)v9 setPurchaseInfo:purchaseInfo];

  [(AMSTask *)v9 setRunMode:1];
  perform = [(AMSPaymentAuthorizationDialogTask *)v9 perform];
  v41 = 0;
  v13 = [perform resultWithError:&v41];
  error = v41;

  if (error)
  {
    v15 = 0;
LABEL_3:
    v16 = 0x1E73B0000uLL;
    deepLink = +[AMSLogConfig sharedConfig];
    if (!deepLink)
    {
      deepLink = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [deepLink OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v38 = paymentSheetRequest;
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@Unable to continue the purchase.", buf, 0xCu);
      v13 = v39;
      if (v19)
      {

        v23 = v16;
      }

      paymentSheetRequest = v38;
    }

    goto LABEL_23;
  }

  v40 = v13;
  passwordEquivalentToken = [v13 passwordEquivalentToken];
  if (passwordEquivalentToken && (v25 = passwordEquivalentToken, [(AMSFinancePaymentSheetResponse *)self authenticateResponse], v26 = objc_claimAutoreleasedReturnValue(), v26, v25, v26))
  {
    authenticateResponse = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
    authenticateRequest = [authenticateResponse authenticateRequest];
    options = [authenticateRequest options];

    [options setCredentialSource:2];
    [options setAllowServerDialogs:1];
    [options setAuthenticationType:1];
    [options setReason:@"payment sheet"];
    authenticateRequest2 = [authenticateResponse authenticateRequest];
    account = [authenticateRequest2 account];

    passwordEquivalentToken2 = [v40 passwordEquivalentToken];
    [account ams_setPassword:passwordEquivalentToken2];

    v15 = [authenticateResponse performWithTaskInfo:infoCopy];
    error = [v15 error];

    if (error)
    {
LABEL_11:
      v13 = v40;
      goto LABEL_3;
    }

    if (v15 && [v15 actionType])
    {
      error = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v15 = 0;
  }

  authenticateResponse2 = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
  authenticateResponse3 = [(AMSFinancePaymentSheetResponse *)self authenticateResponse];
  dialogResponse = [authenticateResponse3 dialogResponse];
  error = [authenticateResponse2 _locateActionableButtonUsingDialogResponse:dialogResponse];

  deepLink = [error deepLink];
  if (deepLink)
  {
    v36 = [AMSURLAction redirectActionWithURL:deepLink];

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

+ (id)_createMerchantSessionFromDictionary:(id)dictionary
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = [dictionary valueForKey:@"tid-dialog"];
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
          oSLogObject2 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithBase64EncodedString:v6 options:0];
          v22 = 0;
          v8 = [MEMORY[0x1E696ACB0] JSONObjectWithData:oSLogObject2 options:0 error:&v22];
          oSLogObject3 = v22;
          if (oSLogObject3)
          {
            v10 = +[AMSLogConfig sharedPurchaseConfig];
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
              v24 = v12;
              v25 = 2114;
              v26 = v14;
              v27 = 2114;
              v28 = oSLogObject3;
              _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] JSON serialization of payment session failed with error: %{public}@", buf, 0x20u);
            }
          }

LABEL_23:

          goto LABEL_24;
        }
      }

      else
      {
      }

      oSLogObject3 = +[AMSLogConfig sharedPurchaseConfig];
      if (!oSLogObject3)
      {
        oSLogObject3 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject2 = [oSLogObject3 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
      {
        v18 = objc_opt_class();
        v19 = v18;
        v20 = AMSSetLogKeyIfNeeded();
        *buf = 138543618;
        v24 = v18;
        v25 = 2114;
        v26 = v20;
        _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no payment session", buf, 0x16u);
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

  oSLogObject3 = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = objc_opt_class();
    v16 = v15;
    v17 = AMSSetLogKeyIfNeeded();
    *buf = 138543618;
    v24 = v15;
    v25 = 2114;
    v26 = v17;
    _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Skipping dual-action buy for no tid-dialog", buf, 0x16u);
  }

  v4 = 0;
  v8 = 0;
LABEL_24:

  return v8;
}

- (id)_createUpdatedBodyFromFormData:(id)data
{
  v36 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  if (dataCopy)
  {
    v6 = +[AMSLogConfig sharedConfig];
    if (!v6)
    {
      v6 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v6 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@ Generating plist formatted updated request body", buf, 0xCu);
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

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
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
      v35 = dataCopy;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEBUG, "%{public}@ Creating updated body from formData: %@", buf, 0x16u);
      if (v16)
      {

        v20 = v3;
      }
    }

    v31 = 0;
    v13 = [MEMORY[0x1E696AE40] dataWithPropertyList:dataCopy format:100 options:0 error:&v31];
    v21 = v31;
    if (v21)
    {
      v22 = +[AMSLogConfig sharedConfig];
      if (!v22)
      {
        v22 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject3 = [v22 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
        selfCopy = ;
        v29 = AMSLogableError(v21);
        *buf = 138543618;
        v33 = selfCopy;
        v34 = 2114;
        v35 = v29;
        _os_log_impl(&dword_192869000, oSLogObject3, OS_LOG_TYPE_DEFAULT, "%{public}@Building updated request body failed with error: %{public}@", buf, 0x16u);
        if (v24)
        {

          selfCopy = self;
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

+ (id)_attributedListDictionaryForValues:(id)values account:(id)account
{
  accountCopy = account;
  v7 = MEMORY[0x1E695DF70];
  valuesCopy = values;
  v9 = objc_alloc_init(v7);
  v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke;
  v23[3] = &unk_1E73B7E40;
  v11 = v10;
  v24 = v11;
  [valuesCopy enumerateObjectsUsingBlock:v23];

  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __77__AMSFinancePaymentSheetResponse__attributedListDictionaryForValues_account___block_invoke_2;
  v19 = &unk_1E73B7EB8;
  selfCopy = self;
  v20 = accountCopy;
  v12 = v9;
  v21 = v12;
  v13 = accountCopy;
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

+ (id)_salableInfoDictionaryForValues:(id)values styles:(id)styles account:(id)account shouldUppercaseText:(BOOL)text designVersion:(id)version
{
  stylesCopy = styles;
  v10 = MEMORY[0x1E695DF70];
  valuesCopy = values;
  v12 = objc_alloc_init(v10);
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __115__AMSFinancePaymentSheetResponse__salableInfoDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke;
  v18[3] = &unk_1E73B7EB8;
  v13 = v12;
  v20 = stylesCopy;
  selfCopy = self;
  v19 = v13;
  v14 = stylesCopy;
  [valuesCopy enumerateObjectsUsingBlock:v18];

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

+ (id)_flexListDictionaryForValues:(id)values styles:(id)styles account:(id)account shouldUppercaseText:(BOOL)text designVersion:(id)version
{
  stylesCopy = styles;
  accountCopy = account;
  versionCopy = version;
  v15 = MEMORY[0x1E695DF70];
  valuesCopy = values;
  v17 = objc_alloc_init(v15);
  v24 = MEMORY[0x1E69E9820];
  v25 = 3221225472;
  v26 = __112__AMSFinancePaymentSheetResponse__flexListDictionaryForValues_styles_account_shouldUppercaseText_designVersion___block_invoke;
  v27 = &unk_1E73B7F58;
  v31 = v17;
  selfCopy = self;
  v28 = versionCopy;
  v29 = stylesCopy;
  v30 = accountCopy;
  textCopy = text;
  v18 = v17;
  v19 = accountCopy;
  v20 = stylesCopy;
  v21 = versionCopy;
  [valuesCopy enumerateObjectsUsingBlock:&v24];

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

+ (id)_flexListLeadingItemForValues:(id)values styles:(id)styles
{
  v49 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  stylesCopy = styles;
  if (valuesCopy && ([valuesCopy allKeys], v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "count"), v8, v9))
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v11 = [valuesCopy objectForKeyedSubscript:@"iconType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v14 = [valuesCopy objectForKeyedSubscript:@"style"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = v14;
    }

    else
    {
      v40 = 0;
    }

    v15 = [valuesCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = [valuesCopy objectForKeyedSubscript:@"value"];
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
      selfCopy = self;
      v20 = v12;
      v21 = [selfCopy _salableIconForString:v12];
      v22 = [MEMORY[0x1E695DFF8] URLWithString:v18];
      v23 = v22;
      if (v21)
      {
        host = [v22 host];
        if (host)
        {
          v25 = host;
          scheme = [v23 scheme];

          if (scheme)
          {
            [dictionary setObject:&unk_1F0779580 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
            [dictionary setObject:v18 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
            v27 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
            [dictionary setObject:v27 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemIconTypeAttribute"];
          }
        }
      }

      v12 = v20;
    }

    else if ([v16 isEqualToString:@"symbol"] && v18)
    {
      [dictionary setObject:&unk_1F0779598 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemAttribute"];
      [dictionary setObject:v18 forKeyedSubscript:@"AMSPaymentSheetContentItemLeadingItemValueAttribute"];
    }

    allKeys = [dictionary allKeys];
    v29 = [allKeys count];

    if (v29)
    {
      v13 = [dictionary copy];
    }

    else
    {
      v39 = v12;
      v30 = +[AMSLogConfig sharedConfig];
      if (!v30)
      {
        v30 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v30 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v32 = objc_opt_class();
        v38 = v32;
        v33 = AMSSetLogKeyIfNeeded();
        AMSHashIfNeeded(v16);
        v34 = v37 = dictionary;
        v35 = AMSHashIfNeeded(valuesCopy);
        *buf = 138544130;
        v42 = v32;
        v43 = 2114;
        v44 = v33;
        v45 = 2114;
        v46 = v34;
        v47 = 2112;
        v48 = v35;
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@:  [%{public}@] Unable to construct a valid leading item of type %{public}@ raw values were: %@", buf, 0x2Au);

        dictionary = v37;
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

+ (int64_t)_confirmationTitleForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"pay"])
  {
    v4 = 0;
  }

  else if ([stringCopy isEqualToString:@"confirm"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"get"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"install"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"rent"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"redeem"])
  {
    v4 = 5;
  }

  else if ([stringCopy isEqualToString:@"subscribe"])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_enrichedMetricsDictionaryWithFinanceDictionary:(id)dictionary
{
  v3 = [dictionary mutableCopy];
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

+ (int64_t)_payeeInferredFromEnumeratedTitle:(id)title
{
  v35 = *MEMORY[0x1E69E9840];
  titleCopy = title;
  v4 = +[AMSLogConfig sharedAccountsConfig];
  if (!v4)
  {
    v4 = +[AMSLogConfig sharedConfig];
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    logKey = [titleCopy logKey];
    v29 = 138543618;
    v30 = v6;
    v31 = 2114;
    v32 = logKey;
    _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Requestor key not found, attempting to infer requestor from title enumeration.", &v29, 0x16u);
  }

  if ([titleCopy titleType] == 1)
  {
    title = [titleCopy title];
    v9 = [title isEqualToString:@"AppleArcade"];

    if (v9)
    {
      v10 = 6;
    }

    else
    {
      title2 = [titleCopy title];
      v16 = [title2 isEqualToString:@"AppleFitness"];

      if (v16)
      {
        v10 = 7;
      }

      else
      {
        v10 = 0;
      }
    }

    title3 = [titleCopy title];
    v18 = [title3 isEqualToString:@"AppleMusic"];

    if (v18)
    {
      v10 = 1;
      goto LABEL_25;
    }

    title4 = [titleCopy title];
    v20 = [title4 isEqualToString:@"AppleNews"];

    if (v20)
    {
      v10 = 2;
      goto LABEL_25;
    }

    title5 = [titleCopy title];
    v22 = [title5 isEqualToString:@"AppleOne"];

    if (v22)
    {
      v10 = 8;
      goto LABEL_25;
    }

    title6 = [titleCopy title];
    v24 = [title6 isEqualToString:@"AppleTV"];

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

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v26 = objc_opt_class();
      logKey2 = [titleCopy logKey];
      title7 = [titleCopy title];
      v29 = 138543874;
      v30 = v26;
      v31 = 2114;
      v32 = logKey2;
      v33 = 2114;
      v34 = title7;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No requestor identified for title: %{public}@", &v29, 0x20u);
    }
  }

  else
  {
    v11 = +[AMSLogConfig sharedAccountsConfig];
    if (!v11)
    {
      v11 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject2 = [v11 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v13 = objc_opt_class();
      logKey3 = [titleCopy logKey];
      v29 = 138543618;
      v30 = v13;
      v31 = 2114;
      v32 = logKey3;
      _os_log_impl(&dword_192869000, oSLogObject2, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] No requestor identified, title type is not enumeration", &v29, 0x16u);
    }

    v10 = 0;
  }

LABEL_25:
  return v10;
}

+ (int64_t)_salableIconForString:(id)string
{
  stringCopy = string;
  if ([stringCopy isEqualToString:@"app"])
  {
    v4 = 4;
  }

  else if ([stringCopy isEqualToString:@"merchant"])
  {
    v4 = 1;
  }

  else if ([stringCopy isEqualToString:@"messages"])
  {
    v4 = 2;
  }

  else if ([stringCopy isEqualToString:@"watch"])
  {
    v4 = 3;
  }

  else if ([stringCopy isEqualToString:@"vision"])
  {
    v4 = 6;
  }

  else if ([stringCopy isEqualToString:@"plain"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_salableInfoForKey:(id)key inDictionary:(id)dictionary shouldUppercase:(BOOL)uppercase
{
  uppercaseCopy = uppercase;
  v18[1] = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictionaryCopy = dictionary;
  v9 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_6;
  }

  v10 = v9;

  if (!v10)
  {
LABEL_6:
    v11 = [dictionaryCopy objectForKeyedSubscript:keyCopy];
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
    if (!uppercaseCopy)
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

  if (uppercaseCopy)
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

+ (id)_styleDictionaryWithName:(id)name styles:(id)styles
{
  nameCopy = name;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __66__AMSFinancePaymentSheetResponse__styleDictionaryWithName_styles___block_invoke;
  v10[3] = &unk_1E73B7F80;
  v11 = nameCopy;
  v6 = nameCopy;
  v7 = [styles ams_mapWithTransformIgnoresNil:v10];
  firstObject = [v7 firstObject];

  return firstObject;
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

- (void)_performPaymentSheetWithTaskInfo:(id)info completionHandler:(id)handler
{
  infoCopy = info;
  handlerCopy = handler;
  properties = [infoCopy properties];
  purchaseInfo = [properties purchaseInfo];
  activePurchaseTask = [purchaseInfo activePurchaseTask];

  if (activePurchaseTask)
  {
    paymentSheetRequest = [(AMSFinancePaymentSheetResponse *)self paymentSheetRequest];
    requiresAuthorization = [paymentSheetRequest requiresAuthorization];

    properties2 = [infoCopy properties];
    purchaseInfo2 = [properties2 purchaseInfo];
    activePurchaseTask2 = [purchaseInfo2 activePurchaseTask];
    v16 = [activePurchaseTask2 performPreActionRequestForTaskInfo:infoCopy requiresAuthorization:requiresAuthorization];
  }

  else
  {
    v16 = +[AMSBinaryPromise promiseWithSuccess];
  }

  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke;
  v22[3] = &unk_1E73B7FD0;
  v23 = infoCopy;
  selfCopy = self;
  v17 = infoCopy;
  v18 = [v16 continueWithPromiseBlock:v22];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __85__AMSFinancePaymentSheetResponse__performPaymentSheetWithTaskInfo_completionHandler___block_invoke_3;
  v20[3] = &unk_1E73B7FF8;
  v21 = handlerCopy;
  v19 = handlerCopy;
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

+ (id)_attributedStringForAttributedArray:(id)array account:(id)account
{
  arrayCopy = array;
  accountCopy = account;
  v8 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v9 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __78__AMSFinancePaymentSheetResponse__attributedStringForAttributedArray_account___block_invoke;
  v16[3] = &unk_1E73B8020;
  v17 = accountCopy;
  v18 = v8;
  v20 = v9;
  selfCopy = self;
  v19 = arrayCopy;
  v10 = v9;
  v11 = arrayCopy;
  v12 = v8;
  v13 = accountCopy;
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

+ (id)_attributedStringForAttributedDictionary:(id)dictionary account:(id)account
{
  dictionaryCopy = dictionary;
  accountCopy = account;
  v7 = [dictionaryCopy objectForKeyedSubscript:@"value"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;

    if (!v8)
    {
      v10 = 0;
      goto LABEL_11;
    }

    v9 = [v8 ams_replacingMarkupUsingAccount:accountCopy shouldUppercase:0];
    v10 = [v9 mutableCopy];

    v11 = [dictionaryCopy objectForKeyedSubscript:@"size"];
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

+ (id)_attributedStringForSalableInfoStringArray:(id)array account:(id)account shouldUppercase:(BOOL)uppercase
{
  arrayCopy = array;
  accountCopy = account;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __101__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStringArray_account_shouldUppercase___block_invoke;
  v22 = &unk_1E73B8048;
  uppercaseCopy = uppercase;
  v26 = v11;
  selfCopy = self;
  v23 = accountCopy;
  v24 = v10;
  v25 = arrayCopy;
  v12 = v11;
  v13 = arrayCopy;
  v14 = v10;
  v15 = accountCopy;
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

+ (id)_attributedStringForSalableInfoStyledStringArray:(id)array account:(id)account shouldUppercase:(BOOL)uppercase
{
  arrayCopy = array;
  accountCopy = account;
  v10 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v11 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v19 = MEMORY[0x1E69E9820];
  v20 = 3221225472;
  v21 = __107__AMSFinancePaymentSheetResponse__attributedStringForSalableInfoStyledStringArray_account_shouldUppercase___block_invoke;
  v22 = &unk_1E73B8070;
  uppercaseCopy = uppercase;
  v26 = v11;
  selfCopy = self;
  v23 = accountCopy;
  v24 = v10;
  v25 = arrayCopy;
  v12 = v11;
  v13 = arrayCopy;
  v14 = v10;
  v15 = accountCopy;
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

+ (id)_attributedStringForStringArray:(id)array useGrey:(BOOL)grey account:(id)account shouldUppercase:(BOOL)uppercase
{
  arrayCopy = array;
  accountCopy = account;
  v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
  v13 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:@"\n"];
  v21 = MEMORY[0x1E69E9820];
  v22 = 3221225472;
  v23 = __98__AMSFinancePaymentSheetResponse__attributedStringForStringArray_useGrey_account_shouldUppercase___block_invoke;
  v24 = &unk_1E73B8098;
  uppercaseCopy = uppercase;
  greyCopy = grey;
  v28 = v13;
  selfCopy = self;
  v25 = accountCopy;
  v26 = v12;
  v27 = arrayCopy;
  v14 = v13;
  v15 = arrayCopy;
  v16 = v12;
  v17 = accountCopy;
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

+ (id)attributedStringWithString:(id)string styles:(id)styles
{
  stringCopy = string;
  stylesCopy = styles;
  v7 = [stylesCopy objectForKeyedSubscript:@"image"];
  if (v7)
  {
    v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@" %@", v7];
    v9 = [stringCopy stringByAppendingString:v8];

    stringCopy = v9;
  }

  v10 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:stringCopy];
  v11 = [stylesCopy objectForKeyedSubscript:@"color"];
  if ([v11 isEqualToString:@"gray"])
  {

LABEL_6:
    v14 = [stringCopy length];
    [v10 addAttribute:@"AMSPaymentContentItemLightColorAttribute" value:MEMORY[0x1E695E118] range:{0, v14}];
    goto LABEL_7;
  }

  v12 = [stylesCopy objectForKeyedSubscript:@"color"];
  v13 = [v12 isEqualToString:@"grey"];

  if (v13)
  {
    goto LABEL_6;
  }

LABEL_7:
  v15 = [stylesCopy objectForKeyedSubscript:@"bold"];
  if (([v15 isEqualToString:@"true"] & 1) != 0 || objc_msgSend(v15, "BOOLValue"))
  {
    v16 = [stringCopy length];
    [v10 addAttribute:@"AMSPaymentContentItemBoldAttribute" value:MEMORY[0x1E695E118] range:{0, v16}];
  }

  v17 = [stylesCopy objectForKeyedSubscript:@"size"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;

    if (v18)
    {
      v34 = v18;
      [v10 addAttribute:@"AMSPaymentSheetContentItemSizeAttribute" value:v18 range:{0, objc_msgSend(stringCopy, "length")}];
      goto LABEL_15;
    }
  }

  else
  {
  }

  v34 = 0;
LABEL_15:
  v19 = [stylesCopy objectForKeyedSubscript:@"spacingAfter"];
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

  [v10 addAttribute:@"AMSPaymentSheetContentItemSpacingAfterAttribute" value:*v21 range:{0, objc_msgSend(stringCopy, "length")}];
LABEL_23:
  v22 = [stylesCopy objectForKeyedSubscript:@"spacingBefore"];
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

  [v10 addAttribute:@"AMSPaymentSheetContentItemSpacingBeforeAttribute" value:*v24 range:{0, objc_msgSend(stringCopy, "length")}];
LABEL_31:
  v25 = [stylesCopy objectForKeyedSubscript:@"dividerBefore"];
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

    lowercaseString = [v28 lowercaseString];
    v30 = [lowercaseString isEqualToString:@"false"];

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
    [v10 addAttribute:@"AMSPaymentSheetContentItemDividerAttribute" value:@"AMSPaymentSheetContentItemDividerNoValue" range:{0, objc_msgSend(stringCopy, "length")}];
  }

LABEL_40:
  v31 = [v10 copy];

  return v31;
}

+ (id)_greyAttributedStringForAttributedString:(id)string range:(_NSRange)range
{
  length = range.length;
  stringCopy = string;
  if (!_greyAttributedStringForAttributedString_range__kAMSPaymentContentItemLightColorAttribute)
  {
    objc_storeStrong(&_greyAttributedStringForAttributedString_range__kAMSPaymentContentItemLightColorAttribute, @"AMSPaymentContentItemLightColorAttribute");
  }

  v6 = [objc_alloc(MEMORY[0x1E696AD40]) initWithAttributedString:stringCopy];
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

+ (id)createRequestFromDictionary:(id)dictionary confirmationOnly:(BOOL)only delegateAuthenticationRequired:(BOOL)required biometricSignatureRequired:(BOOL)signatureRequired authenticateResponse:(id)response taskInfo:(id)info account:(id)account
{
  signatureRequiredCopy = signatureRequired;
  requiredCopy = required;
  onlyCopy = only;
  v232[1] = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  responseCopy = response;
  infoCopy = info;
  accountCopy = account;
  v18 = objc_alloc_init(MEMORY[0x1E695DF00]);
  [v18 timeIntervalSince1970];
  v20 = v19;

  v214 = responseCopy;
  authenticateRequest = [responseCopy authenticateRequest];
  v21 = objc_alloc_init(AMSPaymentSheetRequest);
  [(AMSPaymentSheetRequest *)v21 setResponseDictionary:dictionaryCopy];
  v215 = dictionaryCopy;
  v22 = [dictionaryCopy objectForKeyedSubscript:@"paymentSheetInfo"];
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

  [(AMSPaymentSheetRequest *)v21 setRequiresAuthorization:!onlyCopy];
  selfCopy3 = self;
  if (requiredCopy)
  {
    response = [infoCopy response];
    v26 = [response ams_valueForHTTPHeaderField:@"X-Apple-DelegateAuth-Challenge"];
    [(AMSPaymentSheetRequest *)v21 setDelegateAuthenticateChallenge:v26];

    v27 = +[AMSDelegateAuthenticateRequest preferredUserAgent];
    [(AMSPaymentSheetRequest *)v21 setUserAgent:v27];

    [(AMSPaymentSheetRequest *)v21 setIsDelegateAuthentication:1];
  }

  v218 = infoCopy;
  if (signatureRequiredCopy)
  {
    response2 = [infoCopy response];
    properties = [infoCopy properties];
    account = [properties account];
    session = [infoCopy session];
    task = [infoCopy task];
    [infoCopy properties];
    v32 = v223 = accountCopy;
    clientInfo = [v32 clientInfo];
    properties2 = [v218 properties];
    keychainOptions = [properties2 keychainOptions];
    v36 = [AMSBiometricsSignatureRequest biometricsSignatureRequestForURLResponse:response2 account:account session:session task:task clientInfo:clientInfo options:keychainOptions error:0];
    [(AMSPaymentSheetRequest *)v21 setBiometricsRequest:v36];

    selfCopy3 = self;
    infoCopy = v218;

    accountCopy = v223;
  }

  if (!accountCopy)
  {
    properties3 = [infoCopy properties];
    accountCopy = [properties3 account];
  }

  [(AMSPaymentSheetRequest *)v21 setAccount:accountCopy];
  properties4 = [infoCopy properties];
  logUUID = [properties4 logUUID];
  [(AMSPaymentSheetRequest *)v21 setLogKey:logUUID];

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
  lowercaseString = [v42 lowercaseString];
  v44 = [lowercaseString isEqualToString:@"true"];

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

  title = [(AMSPaymentSheetRequest *)v21 title];
  v59 = [title length];

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
    accountHeader = [(AMSPaymentSheetRequest *)v21 accountHeader];
    localizedUppercaseString = [accountHeader localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setAccountHeader:localizedUppercaseString];
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
  countryCode = [(AMSPaymentSheetRequest *)v21 countryCode];

  if (!countryCode)
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
  currencyCode = [(AMSPaymentSheetRequest *)v21 currencyCode];

  if (!currencyCode)
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
    displayPrice = [(AMSPaymentSheetRequest *)v21 displayPrice];
    localizedUppercaseString2 = [displayPrice localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setDisplayPrice:localizedUppercaseString2];
  }

  options = [authenticateRequest options];
  promptTitle = [options promptTitle];
  [(AMSPaymentSheetRequest *)v21 setExplanation:promptTitle];

  options2 = [authenticateRequest options];
  reason = [options2 reason];
  [(AMSPaymentSheetRequest *)v21 setMessage:reason];

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
    -[AMSPaymentSheetRequest setPayee:](v21, "setPayee:", [selfCopy3 _payeeInferredFromEnumeratedTitle:v21]);
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
    lowercaseString2 = [v101 lowercaseString];
    -[AMSPaymentSheetRequest setSalableIcon:](v21, "setSalableIcon:", [selfCopy3 _salableIconForString:lowercaseString2]);
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
    storeName = [(AMSPaymentSheetRequest *)v21 storeName];
    localizedUppercaseString3 = [storeName localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setStoreName:localizedUppercaseString3];
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
    ratingHeader = [(AMSPaymentSheetRequest *)v21 ratingHeader];
    localizedUppercaseString4 = [ratingHeader localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setRatingHeader:localizedUppercaseString4];

    ratingValue = [(AMSPaymentSheetRequest *)v21 ratingValue];
    localizedUppercaseString5 = [ratingValue localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setRatingValue:localizedUppercaseString5];
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
    lowercaseString3 = [v123 lowercaseString];
    -[AMSPaymentSheetRequest setConfirmationTitle:](v21, "setConfirmationTitle:", [selfCopy3 _confirmationTitleForString:lowercaseString3]);
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
    paymentSummary = [(AMSPaymentSheetRequest *)v21 paymentSummary];
    localizedUppercaseString6 = [paymentSummary localizedUppercaseString];
    [(AMSPaymentSheetRequest *)v21 setPaymentSummary:localizedUppercaseString6];
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
    designVersion = [(AMSPaymentSheetRequest *)v21 designVersion];
    v134 = [selfCopy3 _flexListDictionaryForValues:v132 styles:0 account:accountCopy shouldUppercaseText:v44 ^ 1u designVersion:designVersion];
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
  lowercaseString4 = [v137 lowercaseString];
  LODWORD(v137) = [lowercaseString4 isEqualToString:@"true"];

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

    designVersion2 = [(AMSPaymentSheetRequest *)v21 designVersion];
    v149 = [selfCopy3 _salableInfoDictionaryForValues:v147 styles:v220 account:accountCopy shouldUppercaseText:v44 ^ 1u designVersion:designVersion2];

    [(AMSPaymentSheetRequest *)v21 setSalableInfo:v149];
    v150 = [selfCopy3 _attributedStringForSalableInfoStyledStringArray:v149 account:accountCopy shouldUppercase:v44 ^ 1u];
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
  v224 = accountCopy;
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
      lowercaseString5 = [v160 lowercaseString];
      -[AMSPaymentSheetRequest setSecondarySalableIcon:](v21, "setSecondarySalableIcon:", [selfCopy3 _salableIconForString:lowercaseString5]);
    }

    else
    {
      [(AMSPaymentSheetRequest *)v21 setSecondarySalableIcon:[(AMSPaymentSheetRequest *)v21 salableIcon]];
    }

    v162 = [selfCopy3 _salableInfoForKey:@"salableInfo" inDictionary:v222 shouldUppercase:v44 ^ 1u];
    [(AMSPaymentSheetRequest *)v21 setSecondarySalableInfo:v162];
    v163 = [selfCopy3 _attributedStringForSalableInfoStringArray:v162 account:accountCopy shouldUppercase:v44 ^ 1u];
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
      designVersion3 = [(AMSPaymentSheetRequest *)v21 designVersion];
      v168 = [self _flexListDictionaryForValues:v166 styles:v220 account:v224 shouldUppercaseText:v44 ^ 1u designVersion:designVersion3];
      [(AMSPaymentSheetRequest *)v21 setSecondaryFlexList:v168];
    }

    accountCopy = v224;
    selfCopy3 = self;
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
    designVersion4 = [(AMSPaymentSheetRequest *)v21 designVersion];
    v178 = [selfCopy3 _flexListDictionaryForValues:v176 styles:v220 account:accountCopy shouldUppercaseText:v44 ^ 1u designVersion:designVersion4];
    [(AMSPaymentSheetRequest *)v21 setFlexList:v178];

    v179 = [selfCopy3 _attributedListDictionaryForValues:v176 account:accountCopy];
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
  properties5 = [v218 properties];
  v191 = [properties5 bag];
  v192 = [(AMSPaymentSheetPerformanceMetrics *)v189 initWithBag:v191];

  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataParseStartTime:v20];
  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataParseEndTime:v188];
  metrics = [v218 metrics];
  transactionMetrics = [metrics transactionMetrics];
  firstObject = [transactionMetrics firstObject];
  responseStartDate = [firstObject responseStartDate];
  [responseStartDate timeIntervalSince1970];
  [(AMSPaymentSheetPerformanceMetrics *)v192 setPrimaryDataResponseStartTime:?];

  metrics2 = [v218 metrics];
  transactionMetrics2 = [metrics2 transactionMetrics];
  firstObject2 = [transactionMetrics2 firstObject];
  responseEndDate = [firstObject2 responseEndDate];
  [responseEndDate timeIntervalSince1970];
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

+ (id)fallbackTitleFromResponse:(id)response
{
  v3 = [response objectForKeyedSubscript:@"paymentSheetInfo"];
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