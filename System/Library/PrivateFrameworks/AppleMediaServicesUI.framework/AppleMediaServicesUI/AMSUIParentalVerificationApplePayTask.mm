@interface AMSUIParentalVerificationApplePayTask
+ (BOOL)_walletHasValidSetup:(id)setup paymentRequest:(id)request;
+ (id)_biometricsRequestWithAccount:(id)account;
+ (id)_contextIconWithBundle:(id)bundle accountParameters:(id)parameters;
+ (id)_contextTitleWithBag:(id)bag bundle:(id)bundle accountParameters:(id)parameters;
+ (id)_messageWithBag:(id)bag bundle:(id)bundle;
+ (id)_paymentRequestMetadataWithBag:(id)bag bundle:(id)bundle accountParameters:(id)parameters;
+ (id)_sheetTitleWithBag:(id)bag bundle:(id)bundle;
+ (id)_titleIconWithBundle:(id)bundle;
+ (id)paymentRequestFromPaymentSession:(id)session currencyCode:(id)code countryCode:(id)countryCode networks:(id)networks bag:(id)bag accountParameters:(id)parameters bundle:(id)bundle biometricsRequest:(id)self0;
- (AMSUIParentalVerificationApplePayTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller;
- (id)_presentPaymentRequest:(id)request;
- (id)_promiseToFetchPaymentCardTokenURL:(id)l requestBody:(id)body;
- (id)_promiseToLoadPVTURLWithBody:(id)body;
- (id)_promiseToRequestWalletDataUsingSession:(id)session bag:(id)bag accountParameters:(id)parameters bundle:(id)bundle;
- (id)performTask;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
@end

@implementation AMSUIParentalVerificationApplePayTask

- (AMSUIParentalVerificationApplePayTask)initWithAccount:(id)account accountParameters:(id)parameters bag:(id)bag displayName:(id)name metrics:(id)metrics viewController:(id)controller
{
  accountCopy = account;
  parametersCopy = parameters;
  bagCopy = bag;
  nameCopy = name;
  metricsCopy = metrics;
  controllerCopy = controller;
  v24.receiver = self;
  v24.super_class = AMSUIParentalVerificationApplePayTask;
  v18 = [(AMSTask *)&v24 init];
  v19 = v18;
  if (v18)
  {
    objc_storeStrong(&v18->_originalAccount, account);
    objc_storeStrong(&v19->_accountParameters, parameters);
    objc_storeStrong(&v19->_bag, bag);
    objc_storeStrong(&v19->_displayName, name);
    objc_storeStrong(&v19->_metrics, metrics);
    objc_storeStrong(&v19->_viewController, controller);
  }

  return v19;
}

- (id)performTask
{
  v30 = *MEMORY[0x1E69E9840];
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = AMSLogKey();
    *buf = 138543618;
    v25 = v5;
    v26 = 2114;
    v27 = v6;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Starting task", buf, 0x16u);
  }

  v7 = [MEMORY[0x1E6959A48] ams_sharedAccountStoreForMediaType:*MEMORY[0x1E698C4C0]];
  originalAccount = [(AMSUIParentalVerificationApplePayTask *)self originalAccount];
  accountParameters = [(AMSUIParentalVerificationApplePayTask *)self accountParameters];
  v10 = [AMSUIPaymentVerificationProtocolHandler _accountToUseFromGivenAccount:originalAccount accountParameters:accountParameters accountStore:v7];

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
    mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968]2)
    {
      mEMORY[0x1E698C968]2 = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject2 = [mEMORY[0x1E698C968]2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = objc_opt_class();
      v19 = AMSLogKey();
      *buf = 138543874;
      v25 = v18;
      v26 = 2114;
      v27 = v19;
      v28 = 2114;
      v29 = v13;
      _os_log_impl(&dword_1BB036000, oSLogObject2, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] %{public}@", buf, 0x20u);
    }

    v14 = [MEMORY[0x1E698CAD0] promiseWithError:v13];
    metrics = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [metrics setDisplayReason:@"Missing account"];
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

- (id)_promiseToRequestWalletDataUsingSession:(id)session bag:(id)bag accountParameters:(id)parameters bundle:(id)bundle
{
  sessionCopy = session;
  bagCopy = bag;
  parametersCopy = parameters;
  bundleCopy = bundle;
  availableNetworks = [MEMORY[0x1E69B8D70] availableNetworks];
  currentLocale = [MEMORY[0x1E695DF58] currentLocale];
  countryCode = [currentLocale countryCode];

  currentLocale2 = [MEMORY[0x1E695DF58] currentLocale];
  currencyCode = [currentLocale2 currencyCode];

  v18 = objc_opt_class();
  account = [(AMSUIParentalVerificationApplePayTask *)self account];
  v20 = [v18 _biometricsRequestWithAccount:account];
  [(AMSUIParentalVerificationApplePayTask *)self setBiometricsRequest:v20];

  biometricsRequest = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];

  v39 = bundleCopy;
  if (biometricsRequest)
  {
    v22 = objc_opt_class();
    biometricsRequest2 = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];
    v37 = bundleCopy;
    v24 = sessionCopy;
    v25 = sessionCopy;
    v26 = countryCode;
    v27 = [v22 paymentRequestFromPaymentSession:v25 currencyCode:currencyCode countryCode:countryCode networks:availableNetworks bag:bagCopy accountParameters:parametersCopy bundle:v37 biometricsRequest:biometricsRequest2];

    v28 = objc_opt_class();
    biometricsRequest3 = [(AMSUIParentalVerificationApplePayTask *)self biometricsRequest];
    LODWORD(v28) = [v28 _walletHasValidSetup:biometricsRequest3 paymentRequest:v27];

    if (v28)
    {
      v30 = [(AMSUIParentalVerificationApplePayTask *)self _presentPaymentRequest:v27];
    }

    else
    {
      metrics = [(AMSUIParentalVerificationApplePayTask *)self metrics];
      [metrics setDisplayReason:@"No suitable credit card in Wallet"];

      v34 = MEMORY[0x1E698CAD0];
      v35 = AMSError();
      v30 = [v34 promiseWithError:v35];
    }
  }

  else
  {
    v24 = sessionCopy;
    metrics2 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [metrics2 setDisplayReason:@"Unable to create Wallet biometrics request"];

    v32 = MEMORY[0x1E698CAD0];
    v27 = AMSError();
    v30 = [v32 promiseWithError:v27];
    v26 = countryCode;
  }

  return v30;
}

+ (BOOL)_walletHasValidSetup:(id)setup paymentRequest:(id)request
{
  requestCopy = request;
  setupCopy = setup;
  supportedNetworks = [requestCopy supportedNetworks];
  supportedCountries = [requestCopy supportedCountries];
  LOBYTE(setup) = PKCanMakePaymentsUsingNetworksIssuerCountryCodesWithCapabilities();

  localAuthContext = [setupCopy localAuthContext];

  accesssControlRef = [requestCopy accesssControlRef];
  v11 = [localAuthContext evaluationMechanismsForAccessControl:accesssControlRef operation:3 error:0];

  LOBYTE(accesssControlRef) = [v11 containsObject:&unk_1F394A618];
  LOBYTE(localAuthContext) = [v11 containsObject:&unk_1F394A630];
  LOBYTE(accesssControlRef) = accesssControlRef | localAuthContext | [v11 containsObject:&unk_1F394A648];

  return setup & accesssControlRef;
}

+ (id)paymentRequestFromPaymentSession:(id)session currencyCode:(id)code countryCode:(id)countryCode networks:(id)networks bag:(id)bag accountParameters:(id)parameters bundle:(id)bundle biometricsRequest:(id)self0
{
  v62 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  codeCopy = code;
  countryCodeCopy = countryCode;
  networksCopy = networks;
  bagCopy = bag;
  parametersCopy = parameters;
  bundleCopy = bundle;
  requestCopy = request;
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
  [v19 setMerchantSession:sessionCopy];
  [v19 setExpectsMerchantSession:1];
  [v19 setMerchantCapabilities:5];
  [v19 setCurrencyCode:codeCopy];
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
  zero = [MEMORY[0x1E696AB90] zero];
  v25 = [v22 summaryItemWithLabel:@"Parental Verification (PVK)" amount:zero];

  v58 = v25;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v58 count:1];
  [v19 setPaymentSummaryItems:v26];

  [v19 setSupportedNetworks:networksCopy];
  v27 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v28 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_SHEET_AUTH_TITLE", bagCopy, bundleCopy);
  [v19 setLocalizedAuthorizingTitle:v28];

  v29 = [MEMORY[0x1E696AAE8] bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v30 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_SHEET_ERROR_TITLE", bagCopy, bundleCopy);
  [v19 setLocalizedErrorMessage:v30];

  [v19 setAccesssControlRef:{objc_msgSend(requestCopy, "localAuthAccessControlRef")}];
  localAuthContext = [requestCopy localAuthContext];
  externalizedContext = [localAuthContext externalizedContext];
  [v19 setExternalizedContext:externalizedContext];

  [v19 setDisablePasscodeFallback:1];
  [v19 setClientViewSourceIdentifier:@"AMSUIPaymentSheetViewProvider"];
  v51 = 0;
  v33 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v51];
  v34 = v51;
  if (v34)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = AMSLogKey();
      *buf = 138543874;
      *&buf[4] = v37;
      *&buf[12] = 2114;
      *&buf[14] = v38;
      *&buf[22] = 2114;
      v60 = v34;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to serialise payment request with error: %{public}@", buf, 0x20u);
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
    v41 = [self _paymentRequestMetadataWithBag:bagCopy bundle:bundleCopy accountParameters:parametersCopy];
    v57[1] = v41;
    v56[2] = *MEMORY[0x1E698C768];
    v57[2] = @"AMSPaymentSheetPaymentRequestLayoutValuePVK";
    mEMORY[0x1E698C968] = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:3];

    [v19 setClientViewSourceParameter:mEMORY[0x1E698C968]];
  }

LABEL_16:
  v42 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_biometricsRequestWithAccount:(id)account
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E698C948];
  accountCopy = account;
  v5 = objc_alloc_init(v3);
  [v5 setAuthenticationFallbackVisible:0];
  [v5 setStyle:{objc_msgSend(MEMORY[0x1E698C948], "preferredAttestationStyle")}];
  [v5 setPurpose:0];
  currentProcess = [MEMORY[0x1E698CAC8] currentProcess];
  v15 = 0;
  v7 = [objc_alloc(MEMORY[0x1E698C808]) initWithAccount:accountCopy clientInfo:currentProcess challenge:@"PVKAPCBiometricsChallenge" localAuthContext:0 options:v5 error:&v15];

  v8 = v15;
  if (!v7)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v11 = objc_opt_class();
      v12 = AMSLogKey();
      *buf = 138543874;
      v17 = v11;
      v18 = 2114;
      v19 = v12;
      v20 = 2114;
      v21 = v8;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to create biometrics request with error: %{public}@", buf, 0x20u);
    }
  }

  v13 = *MEMORY[0x1E69E9840];

  return v7;
}

+ (id)_paymentRequestMetadataWithBag:(id)bag bundle:(id)bundle accountParameters:(id)parameters
{
  v23[6] = *MEMORY[0x1E69E9840];
  v22[0] = @"sheetTitle";
  parametersCopy = parameters;
  bundleCopy = bundle;
  bagCopy = bag;
  v11 = [self _sheetTitleWithBag:bagCopy bundle:bundleCopy];
  v23[0] = v11;
  v22[1] = @"contextTitle";
  v12 = [self _contextTitleWithBag:bagCopy bundle:bundleCopy accountParameters:parametersCopy];
  v23[1] = v12;
  v22[2] = @"message";
  v13 = [self _messageWithBag:bagCopy bundle:bundleCopy];

  v23[2] = v13;
  v22[3] = @"titleIcon";
  v14 = [self _titleIconWithBundle:bundleCopy];
  v23[3] = v14;
  v22[4] = @"contextIcon";
  v15 = [self _contextIconWithBundle:bundleCopy accountParameters:parametersCopy];

  v23[4] = v15;
  v22[5] = @"screenScale";
  v16 = MEMORY[0x1E696AD98];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v18 = [v16 numberWithDouble:?];
  v23[5] = v18;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:6];

  v20 = *MEMORY[0x1E69E9840];

  return v19;
}

+ (id)_sheetTitleWithBag:(id)bag bundle:(id)bundle
{
  v5 = MEMORY[0x1E696AAE8];
  bundleCopy = bundle;
  bagCopy = bag;
  v8 = [v5 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v9 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_WALLET", bagCopy, bundleCopy);

  return v9;
}

+ (id)_contextTitleWithBag:(id)bag bundle:(id)bundle accountParameters:(id)parameters
{
  bagCopy = bag;
  bundleCopy = bundle;
  v9 = [parameters objectForKeyedSubscript:@"PVKApplePayClassicContextTitle"];
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
    v10 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_CONTEXT_NAME", bagCopy, bundleCopy);
  }

  return v10;
}

+ (id)_messageWithBag:(id)bag bundle:(id)bundle
{
  v5 = MEMORY[0x1E696AAE8];
  bundleCopy = bundle;
  bagCopy = bag;
  v8 = [v5 bundleWithIdentifier:@"com.apple.AppleMediaServicesUI"];
  v9 = AMSUILocalizedStringFromBundle(@"PARENTAL_VERIFICATION_APPLE_PAY_CLASSIC_MESSAGE", bagCopy, bundleCopy);

  return v9;
}

+ (id)_titleIconWithBundle:(id)bundle
{
  v3 = [MEMORY[0x1E69DCAB8] imageNamed:@"Wallet20x20" inBundle:bundle compatibleWithTraitCollection:0];
  v4 = UIImagePNGRepresentation(v3);

  return v4;
}

+ (id)_contextIconWithBundle:(id)bundle accountParameters:(id)parameters
{
  bundleCopy = bundle;
  v6 = [parameters objectForKeyedSubscript:@"PVKApplePayClassicContextIcon"];
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
    v8 = [MEMORY[0x1E69DCAB8] imageNamed:@"FS54x54" inBundle:bundleCopy compatibleWithTraitCollection:0];
    v7 = UIImagePNGRepresentation(v8);
  }

  return v7;
}

- (id)_presentPaymentRequest:(id)request
{
  requestCopy = request;
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
  v9 = [[v7 alloc] initWithPaymentRequest:requestCopy];
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

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  v34 = *MEMORY[0x1E69E9840];
  finishCopy = finish;
  mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  if (!mEMORY[0x1E698C968])
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = v7;
    v9 = AMSSetLogKeyIfNeeded();
    paymentData = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
    v11 = @"YES";
    *buf = 138543874;
    v29 = v7;
    if (!paymentData)
    {
      v11 = @"NO";
    }

    v30 = 2114;
    v31 = v9;
    v32 = 2112;
    v33 = v11;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] paymentAuthorizationControllerDidFinish: with payment %@", buf, 0x20u);
  }

  paymentData2 = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
  v13 = paymentData2 == 0;

  if (v13)
  {
    metrics = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    [metrics setDisplayReason:@"Present payment sheet completed with failure"];

    paymentError = [(AMSUIParentalVerificationApplePayTask *)self paymentError];
    LODWORD(metrics) = paymentError == 0;

    if (metrics)
    {
      v19 = *MEMORY[0x1E698C548];
      v20 = AMSCustomError();
      [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:v20];

      metrics2 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
      [metrics2 setDisplayReason:@"User closed payment sheet"];
    }

    v22 = [(AMSUIParentalVerificationApplePayTask *)self bag];
    viewController = [(AMSUIParentalVerificationApplePayTask *)self viewController];
    metrics3 = [(AMSUIParentalVerificationApplePayTask *)self metrics];
    delegatePromise2 = [AMSUIParentalVerificationCommon _promiseToPromptAfterFailureWithBag:v22 viewController:viewController metrics:metrics3 pageID:@"ContinueNoWalletPay" flowName:@"Wallet pay"];

    delegatePromise = [(AMSUIParentalVerificationApplePayTask *)self delegatePromise];
    [delegatePromise finishWithPromise:delegatePromise2];
  }

  else
  {
    delegatePromise2 = [(AMSUIParentalVerificationApplePayTask *)self delegatePromise];
    delegatePromise = [(AMSUIParentalVerificationApplePayTask *)self paymentData];
    v16 = [(AMSUIParentalVerificationApplePayTask *)self _promiseToLoadPVTURLWithBody:delegatePromise];
    [delegatePromise2 finishWithPromise:v16];
  }

  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __81__AMSUIParentalVerificationApplePayTask_paymentAuthorizationControllerDidFinish___block_invoke;
  v26[3] = &unk_1E7F24968;
  objc_copyWeak(&v27, buf);
  [finishCopy dismissWithCompletion:v26];
  [finishCopy setDelegate:0];
  [(AMSUIParentalVerificationApplePayTask *)self setStrongSelf:0];
  objc_destroyWeak(&v27);
  objc_destroyWeak(buf);

  v25 = *MEMORY[0x1E69E9840];
}

void __81__AMSUIParentalVerificationApplePayTask_paymentAuthorizationControllerDidFinish___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  paymentCopy = payment;
  v8 = MEMORY[0x1E698C968];
  handlerCopy = handler;
  sharedConfig = [v8 sharedConfig];
  if (!sharedConfig)
  {
    sharedConfig = [MEMORY[0x1E698C968] sharedConfig];
  }

  oSLogObject = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = objc_opt_class();
    v13 = v12;
    v14 = AMSSetLogKeyIfNeeded();
    v15 = v14;
    v16 = @"YES";
    *buf = 138543874;
    v26 = v12;
    v27 = 2114;
    if (!paymentCopy)
    {
      v16 = @"NO";
    }

    v28 = v14;
    v29 = 2114;
    v30 = v16;
    _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] didAuthorizePayment: Did finish with payment? %{public}@", buf, 0x20u);
  }

  if (paymentCopy)
  {
    v17 = [objc_alloc(getPKPaymentAuthorizationResultClass()) initWithStatus:0 errors:0];
    token = [paymentCopy token];
    paymentData = [token paymentData];
    [(AMSUIParentalVerificationApplePayTask *)self setPaymentData:paymentData];
  }

  else
  {
    paymentError = [(AMSUIParentalVerificationApplePayTask *)self paymentError];

    if (!paymentError)
    {
      v21 = AMSError();
      [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:v21];
    }

    v22 = objc_alloc(getPKPaymentAuthorizationResultClass());
    token = [(AMSUIParentalVerificationApplePayTask *)self paymentError];
    v24 = token;
    paymentData = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    v17 = [v22 initWithStatus:1 errors:paymentData];
  }

  handlerCopy[2](handlerCopy, v17);
  v23 = *MEMORY[0x1E69E9840];
}

- (void)paymentAuthorizationController:(id)controller willFinishWithError:(id)error
{
  v20 = *MEMORY[0x1E69E9840];
  controllerCopy = controller;
  errorCopy = error;
  if (errorCopy)
  {
    mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    if (!mEMORY[0x1E698C968])
    {
      mEMORY[0x1E698C968] = [MEMORY[0x1E698C968] sharedConfig];
    }

    oSLogObject = [mEMORY[0x1E698C968] OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v10 = objc_opt_class();
      v11 = v10;
      v12 = AMSSetLogKeyIfNeeded();
      v14 = 138543874;
      v15 = v10;
      v16 = 2114;
      v17 = v12;
      v18 = 2114;
      v19 = errorCopy;
      _os_log_impl(&dword_1BB036000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Payment sheet will finish with error: %{public}@", &v14, 0x20u);
    }
  }

  [controllerCopy setPrivateDelegate:0];
  [(AMSUIParentalVerificationApplePayTask *)self setPaymentError:errorCopy];

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_promiseToLoadPVTURLWithBody:(id)body
{
  bodyCopy = body;
  metrics = [(AMSUIParentalVerificationApplePayTask *)self metrics];
  [metrics enqueueEventWithPageId:@"ParentalVerificationApplePay" displayReason:0];

  v6 = [(AMSUIParentalVerificationApplePayTask *)self bag];
  v7 = [v6 URLForKey:@"verifyPaymentApplePayCardOnDevice"];

  valuePromise = [v7 valuePromise];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__AMSUIParentalVerificationApplePayTask__promiseToLoadPVTURLWithBody___block_invoke;
  v12[3] = &unk_1E7F25470;
  v12[4] = self;
  v13 = bodyCopy;
  v9 = bodyCopy;
  v10 = [valuePromise thenWithBlock:v12];

  return v10;
}

- (id)_promiseToFetchPaymentCardTokenURL:(id)l requestBody:(id)body
{
  bodyCopy = body;
  lCopy = l;
  account = [(AMSUIParentalVerificationApplePayTask *)self account];
  accountParameters = [(AMSUIParentalVerificationApplePayTask *)self accountParameters];
  v10 = [(AMSUIParentalVerificationApplePayTask *)self bag];
  v11 = [AMSUIPaymentVerificationProtocolHandler _promiseToFetchURLResponseForAccount:account accountParameters:accountParameters url:lCopy bag:v10 requestBody:bodyCopy bodyEncoding:1 contentType:@"application/json"];

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