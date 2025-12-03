@interface AMSPurchaseInfo
- (AMSPurchaseDelegate)delegate;
- (AMSPurchaseInfo)initWithCoder:(id)coder;
- (AMSPurchaseInfo)initWithPurchase:(id)purchase;
- (AMSPurchaseTask)activePurchaseTask;
- (BOOL)isFree;
- (NSDictionary)objectForLogging;
- (id)_purchaseStringForType:(int64_t)type;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPurchaseInfo

- (AMSPurchaseInfo)initWithPurchase:(id)purchase
{
  v66 = *MEMORY[0x1E69E9840];
  purchaseCopy = purchase;
  v59.receiver = self;
  v59.super_class = AMSPurchaseInfo;
  v6 = [(AMSPurchaseInfo *)&v59 init];
  v7 = v6;
  if (v6)
  {
    v6->_addKBSync = 1;
    additionalHeaders = [purchaseCopy additionalHeaders];
    v9 = [additionalHeaders mutableCopy];
    additionalHeaders = v7->_additionalHeaders;
    v7->_additionalHeaders = v9;

    buyParams = [purchaseCopy buyParams];
    buyParams = v7->_buyParams;
    v7->_buyParams = buyParams;

    clientCorrelationKey = [purchaseCopy clientCorrelationKey];
    clientCorrelationKey = v7->_clientCorrelationKey;
    v7->_clientCorrelationKey = clientCorrelationKey;

    buyParams2 = [purchaseCopy buyParams];
    v16 = [buyParams2 objectForKeyedSubscript:@"hasBeenAuthedForBuy"];
    if (objc_opt_respondsToSelector())
    {
      buyParams3 = [purchaseCopy buyParams];
      v18 = [buyParams3 objectForKeyedSubscript:@"hasBeenAuthedForBuy"];
      v7->_hasBeenAuthedForBuy = [v18 BOOLValue];
    }

    else
    {
      v7->_hasBeenAuthedForBuy = 0;
    }

    objc_storeStrong(&v7->_purchase, purchase);
    account = [purchaseCopy account];
    account = v7->_account;
    v7->_account = account;

    v7->_didShowPaymentSheet = 0;
    clientInfo = [purchaseCopy clientInfo];

    if (clientInfo)
    {
      clientInfo2 = [purchaseCopy clientInfo];
      clientInfo = v7->_clientInfo;
      v7->_clientInfo = clientInfo2;
    }

    else
    {
      callerBundleId = [purchaseCopy callerBundleId];
      if (callerBundleId)
      {
        v25 = [AMSProcessInfo alloc];
        callerBundleId2 = [purchaseCopy callerBundleId];
        v27 = [(AMSProcessInfo *)v25 initWithBundleIdentifier:callerBundleId2];
        p_clientInfo = &v7->_clientInfo;
        v28 = v7->_clientInfo;
        v7->_clientInfo = v27;
      }

      else
      {
        v30 = +[AMSProcessInfo currentProcess];
        p_clientInfo = &v7->_clientInfo;
        callerBundleId2 = v7->_clientInfo;
        v7->_clientInfo = v30;
      }

      clientInfo = [purchaseCopy clientId];
      [*p_clientInfo setProxyAppBundleID:clientInfo];
    }

    processIdentifier = [(AMSProcessInfo *)v7->_clientInfo processIdentifier];
    v32 = processIdentifier;
    if (processIdentifier)
    {
      v33 = processIdentifier;
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

    account2 = [purchaseCopy account];
    if (account2)
    {
      v39 = account2;
      account3 = [purchaseCopy account];
      ams_isiCloudAccount = [account3 ams_isiCloudAccount];

      if (ams_isiCloudAccount)
      {
        v42 = MEMORY[0x1E6959A48];
        clientInfo3 = [(AMSPurchaseInfo *)v7 clientInfo];
        v44 = [v42 ams_sharedAccountStoreForClient:clientInfo3];

        account4 = [purchaseCopy account];
        v46 = [v44 ams_iTunesAccountForAccount:account4];

        if (v46)
        {
          objc_storeStrong(&v7->_account, v46);
        }
      }
    }

    if (+[AMSEphemeralDefaults purchaseAccountFallback]&& !v7->_account)
    {
      v47 = MEMORY[0x1E6959A48];
      clientInfo4 = [(AMSPurchaseInfo *)v7 clientInfo];
      v49 = [v47 ams_sharedAccountStoreForClient:clientInfo4];

      ams_activeiTunesAccount = [v49 ams_activeiTunesAccount];
      v51 = v7->_account;
      v7->_account = ams_activeiTunesAccount;

      v52 = +[AMSLogConfig sharedConfig];
      if (!v52)
      {
        v52 = +[AMSLogConfig sharedConfig];
      }

      oSLogObject = [v52 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
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
        _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Falling back to active iTunes account: %@", buf, 0x20u);
      }
    }
  }

  return v7;
}

- (NSDictionary)objectForLogging
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  account = [(AMSPurchaseInfo *)self account];
  [v3 ams_setNullableObject:account forKey:@"account"];

  additionalHeaders = [(AMSPurchaseInfo *)self additionalHeaders];
  [v3 ams_setNullableObject:additionalHeaders forKey:@"additionalHeaders"];

  clientCorrelationKey = [(AMSPurchaseInfo *)self clientCorrelationKey];
  [v3 ams_setNullableObject:clientCorrelationKey forKey:@"clientCorrelationKey"];

  clientInfo = [(AMSPurchaseInfo *)self clientInfo];
  [v3 ams_setNullableObject:clientInfo forKey:@"clientInfo"];

  dialog = [(AMSPurchaseInfo *)self dialog];
  [v3 ams_setNullableObject:dialog forKey:@"dialog"];

  expressCheckoutMode = [(AMSPurchaseInfo *)self expressCheckoutMode];
  [v3 ams_setNullableObject:expressCheckoutMode forKey:@"expressCheckoutMode"];

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
  hostProcessIdentifier = [(AMSPurchaseInfo *)self hostProcessIdentifier];
  [v3 ams_setNullableObject:hostProcessIdentifier forKey:@"hostProcessIdentifier"];

  purchase = [(AMSPurchaseInfo *)self purchase];
  logUUID = [purchase logUUID];
  [v3 ams_setNullableObject:logUUID forKey:@"logUUID"];

  paymentServicesURL = [(AMSPurchaseInfo *)self paymentServicesURL];
  [v3 ams_setNullableObject:paymentServicesURL forKey:@"paymentServicesURL"];

  paymentMethodType = [(AMSPurchaseInfo *)self paymentMethodType];
  [v3 ams_setNullableObject:paymentMethodType forKey:@"paymentMethodType"];

  v18 = [(AMSPurchaseInfo *)self _purchaseStringForType:[(AMSPurchase *)self->_purchase purchaseType]];
  [v3 ams_setNullableObject:v18 forKey:@"purchaseType"];

  purchase2 = [(AMSPurchaseInfo *)self purchase];
  uniqueIdentifier = [purchase2 uniqueIdentifier];
  [v3 ams_setNullableObject:uniqueIdentifier forKey:@"purchaseId"];

  purchase3 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase3 isUserInitiated])
  {
    v22 = @"true";
  }

  else
  {
    v22 = @"false";
  }

  [v3 ams_setNullableObject:v22 forKey:@"userInitiated"];

  purchase4 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase4 ignoreRequirePasswordRestriction])
  {
    v24 = @"true";
  }

  else
  {
    v24 = @"false";
  }

  [v3 ams_setNullableObject:v24 forKey:@"ignoreRequirePasswordRestriction"];

  purchase5 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase5 requiresAccount])
  {
    v26 = @"true";
  }

  else
  {
    v26 = @"false";
  }

  [v3 ams_setNullableObject:v26 forKey:@"requiresAccount"];

  purchase6 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase6 requiresApplePayClassic])
  {
    v28 = @"true";
  }

  else
  {
    v28 = @"false";
  }

  [v3 ams_setNullableObject:v28 forKey:@"requiresApplePayClassic"];

  purchase7 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase7 useJSONContentType])
  {
    v30 = @"true";
  }

  else
  {
    v30 = @"false";
  }

  [v3 ams_setNullableObject:v30 forKey:@"useJSONContentType"];

  purchase8 = [(AMSPurchaseInfo *)self purchase];
  if ([purchase8 asyncRecordEngagementEvent])
  {
    v32 = @"true";
  }

  else
  {
    v32 = @"false";
  }

  [v3 ams_setNullableObject:v32 forKey:@"asyncRecordEngagementEvent"];

  purchase9 = [(AMSPurchaseInfo *)self purchase];
  storefront = [purchase9 storefront];
  [v3 ams_setNullableObject:storefront forKey:@"storefront"];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  purchase = [(AMSPurchaseInfo *)self purchase];
  logUUID = [purchase logUUID];
  account = [(AMSPurchaseInfo *)self account];
  ams_DSID = [account ams_DSID];
  v8 = [(AMSPurchaseInfo *)self _purchaseStringForType:[(AMSPurchase *)self->_purchase purchaseType]];
  purchase2 = [(AMSPurchaseInfo *)self purchase];
  uniqueIdentifier = [purchase2 uniqueIdentifier];
  v11 = [v3 stringWithFormat:@"{ logUUID: %@ accountId: %@ purchaseType: %@ purchaseId: %@ }", logUUID, ams_DSID, v8, uniqueIdentifier];

  return v11;
}

- (BOOL)isFree
{
  buyParams = [(AMSPurchaseInfo *)self buyParams];
  [buyParams price];
  if (v4 == 0.0)
  {
    buyParams2 = [(AMSPurchaseInfo *)self buyParams];
    v6 = [buyParams2 isFreeTrial] ^ 1;
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (id)_purchaseStringForType:(int64_t)type
{
  if (type > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E73BB050[type];
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  additionalHeaders = [(AMSPurchaseInfo *)self additionalHeaders];
  [coderCopy encodeObject:additionalHeaders forKey:@"kAdditionalHeaders"];

  [coderCopy encodeBool:-[AMSPurchaseInfo addKBSync](self forKey:{"addKBSync"), @"kAddKBSync"}];
  buyParams = [(AMSPurchaseInfo *)self buyParams];
  [coderCopy encodeObject:buyParams forKey:@"kBuyParams"];

  clientCorrelationKey = [(AMSPurchaseInfo *)self clientCorrelationKey];
  [coderCopy encodeObject:clientCorrelationKey forKey:@"kClientCorrelationKey"];

  clientInfo = [(AMSPurchaseInfo *)self clientInfo];
  [coderCopy encodeObject:clientInfo forKey:@"kClientInfo"];

  dialog = [(AMSPurchaseInfo *)self dialog];
  [coderCopy encodeObject:dialog forKey:@"kDialog"];

  dialogId = [(AMSPurchaseInfo *)self dialogId];
  [coderCopy encodeObject:dialogId forKey:@"kDialogId"];

  [coderCopy encodeBool:-[AMSPurchaseInfo didShowPaymentSheet](self forKey:{"didShowPaymentSheet"), @"kDidShowPaymentSheet"}];
  expressCheckoutMode = [(AMSPurchaseInfo *)self expressCheckoutMode];
  [coderCopy encodeObject:expressCheckoutMode forKey:@"kExpressCheckoutMode"];

  [coderCopy encodeBool:-[AMSPurchaseInfo hasBeenAuthedForBuy](self forKey:{"hasBeenAuthedForBuy"), @"kHasBeenAuthedForBuy"}];
  [coderCopy encodeBool:-[AMSPurchaseInfo hasRetriedOriginalOwnerAccount](self forKey:{"hasRetriedOriginalOwnerAccount"), @"kHasRetriedOriginalOwnerAccount"}];
  hostProcessIdentifier = [(AMSPurchaseInfo *)self hostProcessIdentifier];
  [coderCopy encodeObject:hostProcessIdentifier forKey:@"kHostProcessIdentifier"];

  idmsTokens = [(AMSPurchaseInfo *)self idmsTokens];
  [coderCopy encodeObject:idmsTokens forKey:@"kIDMTokens"];

  paymentMethodType = [(AMSPurchaseInfo *)self paymentMethodType];
  [coderCopy encodeObject:paymentMethodType forKey:@"kPaymentMethodType"];

  paymentServicesURL = [(AMSPurchaseInfo *)self paymentServicesURL];
  [coderCopy encodeObject:paymentServicesURL forKey:@"kPaymentServicesURL"];

  paymentToken = [(AMSPurchaseInfo *)self paymentToken];
  [coderCopy encodeObject:paymentToken forKey:@"kPaymentToken"];

  purchase = [(AMSPurchaseInfo *)self purchase];
  [coderCopy encodeObject:purchase forKey:@"kPurchase"];
}

- (AMSPurchaseInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AMSPurchaseInfo *)self init];
  if (v5)
  {
    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v7 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"kAdditionalHeaders"];
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

    v5->_addKBSync = [coderCopy decodeBoolForKey:@"kAddKBSync"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kBuyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kClientCorrelationKey"];
    clientCorrelationKey = v5->_clientCorrelationKey;
    v5->_clientCorrelationKey = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kClientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v16;

    ams_JSONClasses2 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v19 = [coderCopy decodeObjectOfClasses:ams_JSONClasses2 forKey:@"kDialog"];
    dialog = v5->_dialog;
    v5->_dialog = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDialogId"];
    dialogId = v5->_dialogId;
    v5->_dialogId = v21;

    v5->_didShowPaymentSheet = [coderCopy decodeBoolForKey:@"kDidShowPaymentSheet"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kExpressCheckoutMode"];
    expressCheckoutMode = v5->_expressCheckoutMode;
    v5->_expressCheckoutMode = v23;

    v5->_hasBeenAuthedForBuy = [coderCopy decodeBoolForKey:@"kHasBeenAuthedForBuy"];
    v5->_hasRetriedOriginalOwnerAccount = [coderCopy decodeBoolForKey:@"kHasRetriedOriginalOwnerAccount"];
    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kHostProcessIdentifier"];
    hostProcessIdentifier = v5->_hostProcessIdentifier;
    v5->_hostProcessIdentifier = v25;

    ams_JSONClasses3 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v28 = [coderCopy decodeObjectOfClasses:ams_JSONClasses3 forKey:@"kIDMTokens"];
    idmsTokens = v5->_idmsTokens;
    v5->_idmsTokens = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentMethodType"];
    paymentMethodType = v5->_paymentMethodType;
    v5->_paymentMethodType = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentServicesURL"];
    paymentServicesURL = v5->_paymentServicesURL;
    v5->_paymentServicesURL = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPaymentToken"];
    paymentToken = v5->_paymentToken;
    v5->_paymentToken = v34;

    v36 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kPurchase"];
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