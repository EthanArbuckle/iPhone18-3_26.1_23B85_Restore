@interface AMSPurchaseInfo
- (AMSPurchaseDelegate)delegate;
- (AMSPurchaseInfo)initWithCoder:(id)a3;
- (AMSPurchaseInfo)initWithPurchase:(id)a3;
- (AMSPurchaseTask)activePurchaseTask;
- (BOOL)isFree;
- (NSDictionary)objectForLogging;
- (id)_purchaseStringForType:(int64_t)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPurchaseInfo

- (AMSPurchaseInfo)initWithPurchase:(id)a3
{
  v66 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v59.receiver = self;
  v59.super_class = AMSPurchaseInfo;
  v6 = [(AMSPurchaseInfo *)&v59 init];
  v7 = v6;
  if (v6)
  {
    v6->_addKBSync = 1;
    v8 = [v5 additionalHeaders];
    v9 = [v8 mutableCopy];
    additionalHeaders = v7->_additionalHeaders;
    v7->_additionalHeaders = v9;

    v11 = [v5 buyParams];
    buyParams = v7->_buyParams;
    v7->_buyParams = v11;

    v13 = [v5 clientCorrelationKey];
    clientCorrelationKey = v7->_clientCorrelationKey;
    v7->_clientCorrelationKey = v13;

    v15 = [v5 buyParams];
    v16 = [v15 objectForKeyedSubscript:@"hasBeenAuthedForBuy"];
    if (objc_opt_respondsToSelector())
    {
      v17 = [v5 buyParams];
      v18 = [v17 objectForKeyedSubscript:@"hasBeenAuthedForBuy"];
      v7->_hasBeenAuthedForBuy = [v18 BOOLValue];
    }

    else
    {
      v7->_hasBeenAuthedForBuy = 0;
    }

    objc_storeStrong(&v7->_purchase, a3);
    v19 = [v5 account];
    account = v7->_account;
    v7->_account = v19;

    v7->_didShowPaymentSheet = 0;
    v21 = [v5 clientInfo];

    if (v21)
    {
      v22 = [v5 clientInfo];
      clientInfo = v7->_clientInfo;
      v7->_clientInfo = v22;
    }

    else
    {
      v24 = [v5 callerBundleId];
      if (v24)
      {
        v25 = [AMSProcessInfo alloc];
        v26 = [v5 callerBundleId];
        v27 = [(AMSProcessInfo *)v25 initWithBundleIdentifier:v26];
        p_clientInfo = &v7->_clientInfo;
        v28 = v7->_clientInfo;
        v7->_clientInfo = v27;
      }

      else
      {
        v30 = +[AMSProcessInfo currentProcess];
        p_clientInfo = &v7->_clientInfo;
        v26 = v7->_clientInfo;
        v7->_clientInfo = v30;
      }

      clientInfo = [v5 clientId];
      [*p_clientInfo setProxyAppBundleID:clientInfo];
    }

    v31 = [(AMSProcessInfo *)v7->_clientInfo processIdentifier];
    v32 = v31;
    if (v31)
    {
      v33 = v31;
      hostProcessIdentifier = v7->_hostProcessIdentifier;
      v7->_hostProcessIdentifier = v33;
    }

    else
    {
      v35 = MEMORY[0x1E696AD98];
      hostProcessIdentifier = [MEMORY[0x1E696AE30] processInfo];
      v36 = [v35 numberWithInt:{objc_msgSend(hostProcessIdentifier, "processIdentifier")}];
      v37 = v7->_hostProcessIdentifier;
      v7->_hostProcessIdentifier = v36;
    }

    v38 = [v5 account];
    if (v38)
    {
      v39 = v38;
      v40 = [v5 account];
      v41 = [v40 ams_isiCloudAccount];

      if (v41)
      {
        v42 = MEMORY[0x1E6959A48];
        v43 = [(AMSPurchaseInfo *)v7 clientInfo];
        v44 = [v42 ams_sharedAccountStoreForClient:v43];

        v45 = [v5 account];
        v46 = [v44 ams_iTunesAccountForAccount:v45];

        if (v46)
        {
          objc_storeStrong(&v7->_account, v46);
        }
      }
    }

    if (+[AMSEphemeralDefaults purchaseAccountFallback]&& !v7->_account)
    {
      v47 = MEMORY[0x1E6959A48];
      v48 = [(AMSPurchaseInfo *)v7 clientInfo];
      v49 = [v47 ams_sharedAccountStoreForClient:v48];

      v50 = [v49 ams_activeiTunesAccount];
      v51 = v7->_account;
      v7->_account = v50;

      v52 = +[AMSLogConfig sharedConfig];
      if (!v52)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      v53 = [v52 OSLogObject];
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        v54 = objc_opt_class();
        v55 = v54;
        v56 = AMSLogKey();
        v57 = v7->_account;
        *buf = 138543874;
        v61 = v54;
        v62 = 2114;
        v63 = v56;
        v64 = 2112;
        v65 = v57;
        _os_log_impl(&dword_192869000, v53, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Falling back to active iTunes account: %@", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (NSDictionary)objectForLogging
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(AMSPurchaseInfo *)self account];
  [v3 ams_setNullableObject:v4 forKey:@"account"];

  v5 = [(AMSPurchaseInfo *)self additionalHeaders];
  [v3 ams_setNullableObject:v5 forKey:@"additionalHeaders"];

  v6 = [(AMSPurchaseInfo *)self clientCorrelationKey];
  [v3 ams_setNullableObject:v6 forKey:@"clientCorrelationKey"];

  v7 = [(AMSPurchaseInfo *)self clientInfo];
  [v3 ams_setNullableObject:v7 forKey:@"clientInfo"];

  v8 = [(AMSPurchaseInfo *)self dialog];
  [v3 ams_setNullableObject:v8 forKey:@"dialog"];

  v9 = [(AMSPurchaseInfo *)self expressCheckoutMode];
  [v3 ams_setNullableObject:v9 forKey:@"expressCheckoutMode"];

  if ([(AMSPurchaseInfo *)self isFree])
  {
    v10 = @"true";
  }

  else
  {
    v10 = @"false";
  }

  [v3 ams_setNullableObject:v10 forKey:@"free"];
  if ([(AMSPurchaseInfo *)self hasBeenAuthedForBuy])
  {
    v11 = @"true";
  }

  else
  {
    v11 = @"false";
  }

  [v3 ams_setNullableObject:v11 forKey:@"hasBeenAuthedForBuy"];
  if ([(AMSPurchaseInfo *)self hasRetriedOriginalOwnerAccount])
  {
    v12 = @"true";
  }

  else
  {
    v12 = @"false";
  }

  [v3 ams_setNullableObject:v12 forKey:@"hasRetriedOriginalOwnerAccount"];
  v13 = [(AMSPurchaseInfo *)self hostProcessIdentifier];
  [v3 ams_setNullableObject:v13 forKey:@"hostProcessIdentifier"];

  v14 = [(AMSPurchaseInfo *)self purchase];
  v15 = [v14 logUUID];
  [v3 ams_setNullableObject:v15 forKey:@"logUUID"];

  v16 = [(AMSPurchaseInfo *)self paymentServicesURL];
  [v3 ams_setNullableObject:v16 forKey:@"paymentServicesURL"];

  v17 = [(AMSPurchaseInfo *)self paymentMethodType];
  [v3 ams_setNullableObject:v17 forKey:@"paymentMethodType"];

  v18 = [(AMSPurchaseInfo *)self _purchaseStringForType:[(AMSPurchase *)self->_purchase purchaseType]];
  [v3 ams_setNullableObject:v18 forKey:@"purchaseType"];

  v19 = [(AMSPurchaseInfo *)self purchase];
  v20 = [v19 uniqueIdentifier];
  [v3 ams_setNullableObject:v20 forKey:@"purchaseId"];

  v21 = [(AMSPurchaseInfo *)self purchase];
  if ([v21 isUserInitiated])
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  [v3 ams_setNullableObject:v22 forKey:@"userInitiated"];

  v23 = [(AMSPurchaseInfo *)self purchase];
  if ([v23 ignoreRequirePasswordRestriction])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [v3 ams_setNullableObject:v24 forKey:@"ignoreRequirePasswordRestriction"];

  v25 = [(AMSPurchaseInfo *)self purchase];
  if ([v25 requiresAccount])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [v3 ams_setNullableObject:v26 forKey:@"requiresAccount"];

  v27 = [(AMSPurchaseInfo *)self purchase];
  if ([v27 requiresApplePayClassic])
  {
    v28 = @"true";
  }

  else
  {
    v28 = @"false";
  }

  [v3 ams_setNullableObject:v28 forKey:@"requiresApplePayClassic"];

  v29 = [(AMSPurchaseInfo *)self purchase];
  if ([v29 useJSONContentType])
  {
    v30 = @"true";
  }

  else
  {
    v30 = @"false";
  }

  [v3 ams_setNullableObject:v30 forKey:@"useJSONContentType"];

  v31 = [(AMSPurchaseInfo *)self purchase];
  if ([v31 asyncRecordEngagementEvent])
  {
    v32 = @"true";
  }

  else
  {
    v32 = @"false";
  }

  [v3 ams_setNullableObject:v32 forKey:@"asyncRecordEngagementEvent"];

  v33 = [(AMSPurchaseInfo *)self purchase];
  v34 = [v33 storefront];
  [v3 ams_setNullableObject:v34 forKey:@"storefront"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(AMSPurchaseInfo *)self purchase];
  v5 = [v4 logUUID];
  v6 = [(AMSPurchaseInfo *)self account];
  v7 = [v6 ams_DSID];
  v8 = [(AMSPurchaseInfo *)self _purchaseStringForType:[(AMSPurchase *)self->_purchase purchaseType]];
  v9 = [(AMSPurchaseInfo *)self purchase];
  v10 = [v9 uniqueIdentifier];
  v11 = [v3 stringWithFormat:@"{ logUUID: %@ accountId: %@ purchaseType: %@ purchaseId: %@ }", v5, v7, v8, v10];

  return v11;
}

- (BOOL)isFree
{
  v3 = [(AMSPurchaseInfo *)self buyParams];
  [v3 price];
  if (v4 == 0.0)
  {
    v5 = [(AMSPurchaseInfo *)self buyParams];
    v6 = [v5 isFreeTrial] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_purchaseStringForType:(int64_t)a3
{
  if (a3 > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73BB050[a3];
  }
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchaseInfo *)self additionalHeaders];
  [v4 encodeObject:v5 forKey:@"kAdditionalHeaders"];

  [v4 encodeBool:-[AMSPurchaseInfo addKBSync](self forKey:{"addKBSync"), @"kAddKBSync"}];
  v6 = [(AMSPurchaseInfo *)self buyParams];
  [v4 encodeObject:v6 forKey:@"kBuyParams"];

  v7 = [(AMSPurchaseInfo *)self clientCorrelationKey];
  [v4 encodeObject:v7 forKey:@"kClientCorrelationKey"];

  v8 = [(AMSPurchaseInfo *)self clientInfo];
  [v4 encodeObject:v8 forKey:@"kClientInfo"];

  v9 = [(AMSPurchaseInfo *)self dialog];
  [v4 encodeObject:v9 forKey:@"kDialog"];

  v10 = [(AMSPurchaseInfo *)self dialogId];
  [v4 encodeObject:v10 forKey:@"kDialogId"];

  [v4 encodeBool:-[AMSPurchaseInfo didShowPaymentSheet](self forKey:{"didShowPaymentSheet"), @"kDidShowPaymentSheet"}];
  v11 = [(AMSPurchaseInfo *)self expressCheckoutMode];
  [v4 encodeObject:v11 forKey:@"kExpressCheckoutMode"];

  [v4 encodeBool:-[AMSPurchaseInfo hasBeenAuthedForBuy](self forKey:{"hasBeenAuthedForBuy"), @"kHasBeenAuthedForBuy"}];
  [v4 encodeBool:-[AMSPurchaseInfo hasRetriedOriginalOwnerAccount](self forKey:{"hasRetriedOriginalOwnerAccount"), @"kHasRetriedOriginalOwnerAccount"}];
  v12 = [(AMSPurchaseInfo *)self hostProcessIdentifier];
  [v4 encodeObject:v12 forKey:@"kHostProcessIdentifier"];

  v13 = [(AMSPurchaseInfo *)self idmsTokens];
  [v4 encodeObject:v13 forKey:@"kIDMTokens"];

  v14 = [(AMSPurchaseInfo *)self paymentMethodType];
  [v4 encodeObject:v14 forKey:@"kPaymentMethodType"];

  v15 = [(AMSPurchaseInfo *)self paymentServicesURL];
  [v4 encodeObject:v15 forKey:@"kPaymentServicesURL"];

  v16 = [(AMSPurchaseInfo *)self paymentToken];
  [v4 encodeObject:v16 forKey:@"kPaymentToken"];

  v17 = [(AMSPurchaseInfo *)self purchase];
  [v4 encodeObject:v17 forKey:@"kPurchase"];
}

- (AMSPurchaseInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchaseInfo *)self init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [v4 decodeObjectOfClasses:v6 forKey:@"kAdditionalHeaders"];
    v8 = [v7 mutableCopy];
    v9 = v8;
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    additionalHeaders = v5->_additionalHeaders;
    v5->_additionalHeaders = v10;

    v5->_addKBSync = [v4 decodeBoolForKey:@"kAddKBSync"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kBuyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kClientCorrelationKey"];
    clientCorrelationKey = v5->_clientCorrelationKey;
    v5->_clientCorrelationKey = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v16;

    v18 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v19 = [v4 decodeObjectOfClasses:v18 forKey:@"kDialog"];
    dialog = v5->_dialog;
    v5->_dialog = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDialogId"];
    dialogId = v5->_dialogId;
    v5->_dialogId = v21;

    v5->_didShowPaymentSheet = [v4 decodeBoolForKey:@"kDidShowPaymentSheet"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kExpressCheckoutMode"];
    expressCheckoutMode = v5->_expressCheckoutMode;
    v5->_expressCheckoutMode = v23;

    v5->_hasBeenAuthedForBuy = [v4 decodeBoolForKey:@"kHasBeenAuthedForBuy"];
    v5->_hasRetriedOriginalOwnerAccount = [v4 decodeBoolForKey:@"kHasRetriedOriginalOwnerAccount"];
    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kHostProcessIdentifier"];
    hostProcessIdentifier = v5->_hostProcessIdentifier;
    v5->_hostProcessIdentifier = v25;

    v27 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v28 = [v4 decodeObjectOfClasses:v27 forKey:@"kIDMTokens"];
    idmsTokens = v5->_idmsTokens;
    v5->_idmsTokens = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentMethodType"];
    paymentMethodType = v5->_paymentMethodType;
    v5->_paymentMethodType = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentServicesURL"];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentToken"];
    paymentToken = v5->_paymentToken;
    v5->_paymentToken = v34;

    v36 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kPurchase"];
    purchase = v5->_purchase;
    v5->_purchase = v36;
  }

  return v5;
}

- (AMSPurchaseTask)activePurchaseTask
{
  WeakRetained = objc_loadWeakRetained(&self->_activePurchaseTask);

  return WeakRetained;
}

- (AMSPurchaseDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end