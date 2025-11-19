@interface AMSUIParentalVerificationApplePayTask
+ (BOOL)_walletHasValidSetup:(id)a3 paymentRequest:(id)a4;
+ (id)_biometricsRequestWithAccount:(id)a3;
+ (id)_contextIconWithBundle:(id)a3 accountParameters:(id)a4;
+ (id)_contextTitleWithBag:(id)a3 bundle:(id)a4 accountParameters:(id)a5;
+ (id)_messageWithBag:(id)a3 bundle:(id)a4;
+ (id)_paymentRequestMetadataWithBag:(id)a3 bundle:(id)a4 accountParameters:(id)a5;
+ (id)_sheetTitleWithBag:(id)a3 bundle:(id)a4;
+ (id)_titleIconWithBundle:(id)a3;
+ (id)paymentRequestFromPaymentSession:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 networks:(id)a6 bag:(id)a7 accountParameters:(id)a8 bundle:(id)a9 biometricsRequest:(id)a10;
- (AMSUIParentalVerificationApplePayTask)initWithAccount:(id)a3 accountParameters:(id)a4 bag:(id)a5 displayName:(id)a6 metrics:(id)a7 viewController:(id)a8;
- (id)_presentPaymentRequest:(id)a3;
- (id)_promiseToFetchPaymentCardTokenURL:(id)a3 requestBody:(id)a4;
- (id)_promiseToLoadPVTURLWithBody:(id)a3;
- (id)_promiseToRequestWalletDataUsingSession:(id)a3 bag:(id)a4 accountParameters:(id)a5 bundle:(id)a6;
- (id)performTask;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
@end

@implementation AMSUIParentalVerificationApplePayTask

- (AMSUIParentalVerificationApplePayTask)initWithAccount:(id)a3 accountParameters:(id)a4 bag:(id)a5 displayName:(id)a6 metrics:(id)a7 viewController:(id)a8
{
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v24.receiver = self;
  v24.super_class = AMSUIParentalVerificationApplePayTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalAccount, a3);
    objc_storeStrong(&v19->_accountParameters, a4);
    objc_storeStrong(&v19->_bag, a5);
    objc_storeStrong(&v19->_displayName, a6);
    objc_storeStrong(&v19->_metrics, a7);
    objc_storeStrong(&v19->_viewController, a8);
  }

  return v19;
}

- (id)performTask
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v3)
  {
    v3 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v4 = [v3 OSLogObject];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1BB036000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting task", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  v8 = [(AMSUIParentalVerificationApplePayTask *)self originalAccount];
  v9 = [(AMSUIParentalVerificationApplePayTask *)self accountParameters];
  v10 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:v8 accountParameters:v9 accountStore:v7];

  if (v10)
  {
    [(AMSUIParentalVerificationApplePayTask *)self setAccount:v10];
    v11 = MEMORY[0x1E698C840];
    v12 = [(AMSUIParentalVerificationApplePayTask *)self bag];
    v13 = [v11 performPaymentSessionForVerificationWithBag:v12];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __52__AMSUIParentalVerificationApplePayTask_performTask__block_invoke;
    v23[3] = &unk_1E7F25420;
    v23[4] = self;
    v14 = [v13 thenWithBlock:v23];
  }

  else
  {
    v15 = *MEMORY[0x1E698C548];
    v13 = AMSCustomError();
    v16 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v16)
    {
      v16 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v17 = [v16 OSLogObject];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543874;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_1BB036000, v17, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }

    v14 = [MEMORY[0x1E698CAD0] promiseWithError:v13];
    v20 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [v20 setDisplayReason:@"Missing account"];
  }

  [(AMSUIParentalVerificationApplePayTask *)self setResultPromise:v14];
  v21 = *MEMORY[0x1E69E9840];

  return v14;
}

id __52__AMSUIParentalVerificationApplePayTask_performTask__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AAE8];
  v4 = a2;
  v5 = [v3 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v6 = *(a1 + 32);
  v7 = [v6 bag];
  v8 = [*(a1 + 32) accountParameters];
  v9 = [v6 _promiseToRequestWalletDataUsingSession:v4 bag:v7 accountParameters:v8 bundle:v5];

  return v9;
}

- (id)_promiseToRequestWalletDataUsingSession:(id)a3 bag:(id)a4 accountParameters:(id)a5 bundle:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [MEMORY[0x1E69B8D70] availableNetworks];
  v15 = [MEMORY[0x1E695DF58] currentLocale];
  v38 = [v15 countryCode];

  v16 = [MEMORY[0x1E695DF58] currentLocale];
  v17 = [v16 currencyCode];

  v18 = objc_opt_class();
  v19 = [(AMSUIParentalVerificationApplePayTask *)self account];
  v20 = [v18 _biometricsRequestWithAccount:v19];
  [(AMSUIParentalVerificationApplePayTask *)self setBiometricsRequest:v20];

  v21 = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];

  v39 = v13;
  if (v21)
  {
    v22 = objc_opt_class();
    v23 = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];
    v37 = v13;
    v24 = v10;
    v25 = v10;
    v26 = v38;
    v27 = [v22 paymentRequestFromPaymentSession:v25 currencyCode:v17 countryCode:v38 networks:v14 bag:v11 accountParameters:v12 bundle:v37 biometricsRequest:v23];

    v28 = objc_opt_class();
    v29 = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];
    LODWORD(v28) = [v28 _walletHasValidSetup:v29 paymentRequest:v27];

    if (v28)
    {
      v30 = [(AMSUIParentalVerificationApplePayTask *)self _presentPaymentRequest:v27];
    }

    else
    {
      v33 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
      [v33 setDisplayReason:@"No suitable credit card in Wallet"];

      v34 = MEMORY[0x1E698CAD0];
      v35 = AMSError();
      v30 = [v34 promiseWithError:v35];
    }
  }

  else
  {
    v24 = v10;
    v31 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [v31 setDisplayReason:@"Unable to create Wallet biometrics request"];

    v32 = MEMORY[0x1E698CAD0];
    v27 = AMSError();
    v30 = [v32 promiseWithError:v27];
    v26 = v38;
  }

  return v30;
}

+ (BOOL)_walletHasValidSetup:(id)a3 paymentRequest:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 supportedNetworks];
  v8 = [v5 supportedCountries];
  LOBYTE(a3) = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilities();

  v9 = [v6 localAuthContext];

  v10 = [v5 accesssControlRef];
  v11 = [v9 evaluationMechanismsForAccessControl:v10 operation:3 error:0];

  LOBYTE(v10) = [v11 containsObject:&unk_1F394A618];
  LOBYTE(v9) = [v11 containsObject:&unk_1F394A630];
  LOBYTE(v10) = v10 | v9 | [v11 containsObject:&unk_1F394A648];

  return a3 & v10;
}

+ (id)paymentRequestFromPaymentSession:(id)a3 currencyCode:(id)a4 countryCode:(id)a5 networks:(id)a6 bag:(id)a7 accountParameters:(id)a8 bundle:(id)a9 biometricsRequest:(id)a10
{
  v62 = *MEMORY[0x1E69E9840];
  v48 = a3;
  v47 = a4;
  v46 = a5;
  v45 = a6;
  v50 = a7;
  v44 = a8;
  v16 = a9;
  v49 = a10;
  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v17 = getPKPaymentRequestClass_softClass;
  v55 = getPKPaymentRequestClass_softClass;
  if (!getPKPaymentRequestClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentRequestClass_block_invoke;
    v60 = &unk_1E7F241B0;
    v61 = &v52;
    __getPKPaymentRequestClass_block_invoke(buf);
    v17 = v53[3];
  }

  v18 = v17;
  _Block_object_dispose(&v52, 8);
  v19 = objc_alloc_init(v17);
  [v19 setAPIType:0];
  [v19 setRequestType:0];
  [v19 setRequestor:0];
  [v19 setMerchantSession:v48];
  [v19 setExpectsMerchantSession:1];
  [v19 setMerchantCapabilities:5];
  [v19 setCurrencyCode:v47];
  v20 = AMSNormalisedCountryCodeForPaymentRequest();
  if (v20)
  {
    [v19 setCountryCode:v20];
    v21 = [MEMORY[0x1E695DFD8] setWithObject:v20];
    [v19 setSupportedCountries:v21];
  }

  [v19 setConfirmationStyle:1];
  v52 = 0;
  v53 = &v52;
  v54 = 0x2050000000;
  v22 = getPKPaymentSummaryItemClass_softClass;
  v55 = getPKPaymentSummaryItemClass_softClass;
  if (!getPKPaymentSummaryItemClass_softClass)
  {
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = __getPKPaymentSummaryItemClass_block_invoke;
    v60 = &unk_1E7F241B0;
    v61 = &v52;
    __getPKPaymentSummaryItemClass_block_invoke(buf);
    v22 = v53[3];
  }

  v23 = v22;
  _Block_object_dispose(&v52, 8);
  v24 = [MEMORY[0x1E696AB90] zero];
  v25 = [v22 summaryItemWithLabel:@"Parental Verification (PVK)" amount:v24];

  v58 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  [v19 setPaymentSummaryItems:v26];

  [v19 setSupportedNetworks:v45];
  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v28 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_SHEET_AUTH_TITLE", v50, v16);
  [v19 setLocalizedAuthorizingTitle:v28];

  v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v30 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_SHEET_ERROR_TITLE", v50, v16);
  [v19 setLocalizedErrorMessage:v30];

  [v19 setAccesssControlRef:{objc_msgSend(v49, "localAuthAccessControlRef")}];
  v31 = [v49 localAuthContext];
  v32 = [v31 externalizedContext];
  [v19 setExternalizedContext:v32];

  [v19 setDisablePasscodeFallback:1];
  [v19 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
  v51 = 0;
  v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v51];
  v34 = v51;
  if (v34)
  {
    v35 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v35)
    {
      v35 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v36 = [v35 OSLogObject];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      *&buf[22] = 2114;
      v60 = v34;
      _os_log_impl(&dword_1BB036000, v36, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialise payment request with error: %{public}@", buf, 0x20u);
    }
  }

  else
  {
    if (!v33)
    {
      goto LABEL_16;
    }

    v39 = *MEMORY[0x1E698C760];
    v57[0] = v33;
    v40 = *MEMORY[0x1E698C770];
    v56[0] = v39;
    v56[1] = v40;
    v41 = [a1 _paymentRequestMetadataWithBag:v50 bundle:v16 accountParameters:v44];
    v57[1] = v41;
    v56[2] = *MEMORY[0x1E698C768];
    v57[2] = @"AMSPaymentSheetPaymentRequestLayoutValuePVK";
    v35 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

    [v19 setClientViewSourceParameter:v35];
  }

LABEL_16:
  v42 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_biometricsRequestWithAccount:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C948];
  v4 = a3;
  v5 = objc_alloc_init(v3);
  [v5 setAuthenticationFallbackVisible:0];
  [v5 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  [v5 setPurpose:0];
  v6 = [MEMORY[0x1E698CAC8] currentProcess];
  v15 = 0;
  v7 = [objc_alloc(MEMORY[0x1E698C808]) initWithAccount:v4 clientInfo:v6 challenge:@"PVKAPCBiometricsChallenge" localAuthContext:0 options:v5 error:&v15];

  v8 = v15;
  if (!v7)
  {
    v9 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v9)
    {
      v9 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v10 = [v9 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, v10, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create biometrics request with error: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_paymentRequestMetadataWithBag:(id)a3 bundle:(id)a4 accountParameters:(id)a5
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"sheetTitle";
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [a1 _sheetTitleWithBag:v10 bundle:v9];
  v23[0] = v11;
  v22[1] = @"contextTitle";
  v12 = [a1 _contextTitleWithBag:v10 bundle:v9 accountParameters:v8];
  v23[1] = v12;
  v22[2] = @"message";
  v13 = [a1 _messageWithBag:v10 bundle:v9];

  v23[2] = v13;
  v22[3] = @"titleIcon";
  v14 = [a1 _titleIconWithBundle:v9];
  v23[3] = v14;
  v22[4] = @"contextIcon";
  v15 = [a1 _contextIconWithBundle:v9 accountParameters:v8];

  v23[4] = v15;
  v22[5] = @"screenScale";
  v16 = MEMORY[0x1E696AD98];
  v17 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v17 scale];
  v18 = [v16 numberWithDouble:?];
  v23[5] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_sheetTitleWithBag:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v9 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_WALLET", v7, v6);

  return v9;
}

+ (id)_contextTitleWithBag:(id)a3 bundle:(id)a4 accountParameters:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = [a5 objectForKeyedSubscript:@"PVKApplePayClassicContextTitle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v11 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
    v10 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_CONTEXT_NAME", v7, v8);
  }

  return v10;
}

+ (id)_messageWithBag:(id)a3 bundle:(id)a4
{
  v5 = MEMORY[0x1E696AAE8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v9 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_MESSAGE", v7, v6);

  return v9;
}

+ (id)_titleIconWithBundle:(id)a3
{
  v3 = [MEMORY[0x1E69DCAB8] imageNamed:@"Wallet20x20" inBundle:a3 compatibleWithTraitCollection:0];
  v4 = UIImagePNGRepresentation(v3);

  return v4;
}

+ (id)_contextIconWithBundle:(id)a3 accountParameters:(id)a4
{
  v5 = a3;
  v6 = [a4 objectForKeyedSubscript:@"PVKApplePayClassicContextIcon"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = [MEMORY[0x1E69DCAB8] imageNamed:@"FS54x54" inBundle:v5 compatibleWithTraitCollection:0];
    v7 = UIImagePNGRepresentation(v8);
  }

  return v7;
}

- (id)_presentPaymentRequest:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E698CA58]);
  v6 = objc_alloc_init(MEMORY[0x1E698CA58]);
  [(AMSUIParentalVerificationApplePayTask *)self setDelegatePromise:v6];

  v16 = 0;
  v17 = &v16;
  v18 = 0x2050000000;
  v7 = getPKPaymentAuthorizationControllerClass_softClass;
  v19 = getPKPaymentAuthorizationControllerClass_softClass;
  if (!getPKPaymentAuthorizationControllerClass_softClass)
  {
    location[0] = MEMORY[0x1E69E9820];
    location[1] = 3221225472;
    location[2] = __getPKPaymentAuthorizationControllerClass_block_invoke;
    location[3] = &unk_1E7F241B0;
    location[4] = &v16;
    __getPKPaymentAuthorizationControllerClass_block_invoke(location);
    v7 = v17[3];
  }

  v8 = v7;
  _Block_object_dispose(&v16, 8);
  v9 = [[v7 alloc] initWithPaymentRequest:v4];
  [v9 setDelegate:self];
  [v9 setPrivateDelegate:self];
  [(AMSUIParentalVerificationApplePayTask *)self setStrongSelf:self];
  objc_initWeak(location, self);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __64__AMSUIParentalVerificationApplePayTask__presentPaymentRequest___block_invoke;
  v12[3] = &unk_1E7F25448;
  objc_copyWeak(&v14, location);
  v10 = v5;
  v13 = v10;
  [v9 presentWithCompletion:v12];

  objc_destroyWeak(&v14);
  objc_destroyWeak(location);

  return v10;
}

void __64__AMSUIParentalVerificationApplePayTask__presentPaymentRequest___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = AMSSetLogKeyIfNeeded();
  if (a2)
  {
    v5 = *(a1 + 32);
    v6 = [WeakRetained delegatePromise];
    [v5 finishWithPromise:v6];
  }

  else
  {
    v6 = AMSError();
    [*(a1 + 32) finishWithError:v6];
    [WeakRetained setStrongSelf:0];
  }
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E698C968] sharedConfig];
  if (!v5)
  {
    v5 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v6 = [v5 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSSetLogKeyIfNeeded();
    v10 = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
    v11 = @"YES";
    *buf = 138543874;
    v29 = v7;
    if (!v10)
    {
      v11 = @"NO";
    }

    v30 = 2114;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1BB036000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] paymentAuthorizationControllerDidFinish: with payment %@", buf, 0x20u);
  }

  v12 = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
  v13 = v12 == 0;

  if (v13)
  {
    v17 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [v17 setDisplayReason:@"Present payment sheet completed with failure"];

    v18 = [(AMSUIParentalVerificationApplePayTask *)self paymentError];
    LODWORD(v17) = v18 == 0;

    if (v17)
    {
      v19 = *MEMORY[0x1E698C548];
      v20 = AMSCustomError();
      [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:v20];

      v21 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
      [v21 setDisplayReason:@"User closed payment sheet"];
    }

    v22 = [(AMSUIParentalVerificationApplePayTask *)self bag];
    v23 = [(AMSUIParentalVerificationApplePayTask *)self viewController];
    v24 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    v14 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v22 viewController:v23 metrics:v24 pageID:@"ContinueNoWalletPay" flowName:@"Wallet pay"];

    v15 = [(AMSUIParentalVerificationApplePayTask *)self delegatePromise];
    [v15 finishWithPromise:v14];
  }

  else
  {
    v14 = [(AMSUIParentalVerificationApplePayTask *)self delegatePromise];
    v15 = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
    v16 = [(AMSUIParentalVerificationApplePayTask *)self _promiseToLoadPVTURLWithBody:v15];
    [v14 finishWithPromise:v16];
  }

  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__AMSUIParentalVerificationApplePayTask_paymentAuthorizationControllerDidFinish___block_invoke;
  v26[3] = &unk_1E7F24968;
  objc_copyWeak(&v27, buf);
  [v4 dismissWithCompletion:v26];
  [v4 setDelegate:0];
  [(AMSUIParentalVerificationApplePayTask *)self setStrongSelf:0];
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x1E69E9840];
}

void __81__AMSUIParentalVerificationApplePayTask_paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = MEMORY[0x1E698C968];
  v9 = a5;
  v10 = [v8 sharedConfig];
  if (!v10)
  {
    v10 = [MEMORY[0x1E698C968] sharedConfig];
  }

  v11 = [v10 OSLogObject];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = AMSSetLogKeyIfNeeded();
    v15 = v14;
    v16 = @"YES";
    *buf = 138543874;
    v26 = v12;
    v27 = 2114;
    if (!v7)
    {
      v16 = @"NO";
    }

    v28 = v14;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_1BB036000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] didAuthorizePayment: Did finish with payment? %{public}@", buf, 0x20u);
  }

  if (v7)
  {
    v17 = [objc_alloc(getPKPaymentAuthorizationResultClass()) initWithStatus:0 errors:0];
    v18 = [v7 token];
    v19 = [v18 paymentData];
    [(AMSUIParentalVerificationApplePayTask *)self setPaymentData:v19];
  }

  else
  {
    v20 = [(AMSUIParentalVerificationApplePayTask *)self paymentError];

    if (!v20)
    {
      v21 = AMSError();
      [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:v21];
    }

    v22 = objc_alloc(getPKPaymentAuthorizationResultClass());
    v18 = [(AMSUIParentalVerificationApplePayTask *)self paymentError];
    v24 = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v17 = [v22 initWithStatus:1 errors:v19];
  }

  v9[2](v9, v17);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)paymentAuthorizationController:(id)a3 willFinishWithError:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (v7)
  {
    v8 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSSetLogKeyIfNeeded();
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = v7;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Payment sheet will finish with error: %{public}@", &v14, 0x20u);
    }
  }

  [v6 setPrivateDelegate:0];
  [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:v7];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_promiseToLoadPVTURLWithBody:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
  [v5 enqueueEventWithPageId:@"ParentalVerificationApplePay" displayReason:0];

  v6 = [(AMSUIParentalVerificationApplePayTask *)self bag];
  v7 = [v6 URLForKey:@"verifyPaymentApplePayCardOnDevice"];

  v8 = [v7 valuePromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AMSUIParentalVerificationApplePayTask__promiseToLoadPVTURLWithBody___block_invoke;
  v12[3] = &unk_1E7F25470;
  v12[4] = self;
  v13 = v4;
  v9 = v4;
  v10 = [v8 thenWithBlock:v12];

  return v10;
}

- (id)_promiseToFetchPaymentCardTokenURL:(id)a3 requestBody:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(AMSUIParentalVerificationApplePayTask *)self account];
  v9 = [(AMSUIParentalVerificationApplePayTask *)self accountParameters];
  v10 = [(AMSUIParentalVerificationApplePayTask *)self bag];
  v11 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:v8 accountParameters:v9 url:v7 bag:v10 requestBody:v6 bodyEncoding:1 contentType:@"application/json"];

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __88__AMSUIParentalVerificationApplePayTask__promiseToFetchPaymentCardTokenURL_requestBody___block_invoke;
  v14[3] = &unk_1E7F25498;
  v14[4] = self;
  v12 = [v11 continueWithBlock:v14];

  return v12;
}

id __88__AMSUIParentalVerificationApplePayTask__promiseToFetchPaymentCardTokenURL_requestBody___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) metrics];
    [v7 setDisplayReason:@"Wallet pay data fetch failed"];

    v8 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v8)
    {
      v8 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v9 = [v8 OSLogObject];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = *(a1 + 32);
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      v31 = 138543874;
      v32 = v11;
      v33 = 2114;
      v34 = v12;
      v35 = 2114;
      v36 = v6;
      _os_log_impl(&dword_1BB036000, v9, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for Wallet pay failed: %{public}@", &v31, 0x20u);
    }

    v13 = [*(a1 + 32) bag];
    v14 = [*(a1 + 32) viewController];
    v15 = [*(a1 + 32) metrics];
    v16 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v13 viewController:v14 metrics:v15 pageID:@"ContinueNoWalletPay" flowName:@"Wallet pay"];
LABEL_7:

    goto LABEL_10;
  }

  v17 = [v5 object];
  v13 = [AMSUIParentalVerificationCore _tokenFromObject:v17];

  v14 = [AMSUIParentalVerificationCore _tokenResultFromTokenString:v13];
  if (!v14)
  {
    v22 = [MEMORY[0x1E698C968] sharedConfig];
    if (!v22)
    {
      v22 = [MEMORY[0x1E698C968] sharedConfig];
    }

    v23 = [v22 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = *(a1 + 32);
      v25 = objc_opt_class();
      v26 = AMSLogKey();
      v27 = [v5 object];
      v31 = 138543874;
      v32 = v25;
      v33 = 2114;
      v34 = v26;
      v35 = 2114;
      v36 = v27;
      _os_log_impl(&dword_1BB036000, v23, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Fetch PVT for Wallet pay response had no token: %{public}@", &v31, 0x20u);
    }

    v28 = [*(a1 + 32) metrics];
    [v28 setDisplayReason:@"Wallet pay data failed"];

    v15 = [*(a1 + 32) bag];
    v29 = [*(a1 + 32) viewController];
    v30 = [*(a1 + 32) metrics];
    v16 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v15 viewController:v29 metrics:v30 pageID:@"ContinueNoWalletPay" flowName:@"Wallet pay"];

    goto LABEL_7;
  }

  v18 = [*(a1 + 32) metrics];
  [v18 enqueueEventWithPageId:@"ParentVerified" displayReason:@"WalletPay"];

  v19 = [*(a1 + 32) metrics];
  [v19 flushEvents];

  v16 = [MEMORY[0x1E698CAD0] promiseWithResult:v14];
LABEL_10:

  v20 = *MEMORY[0x1E69E9840];

  return v16;
}

@end