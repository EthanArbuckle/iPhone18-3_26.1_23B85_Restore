@interface AMSPurchase
+ (id)_authContextTitleForConfirmationStyle:(unint64_t)style;
+ (id)defaultAuthenticationContextForRequest:(id)request;
+ (id)purchaseFromPurchase:(id)purchase;
- (AMSPurchase)initWithCoder:(id)coder;
- (AMSPurchase)initWithPurchaseType:(int64_t)type buyParams:(id)params;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPurchase:(id)purchase;
- (BOOL)isExceptionRequest;
- (BOOL)isRedownload;
- (BOOL)sendBlindedData;
- (NSArray)buySignatureTypes;
- (NSDictionary)publicInputComponents;
- (NSString)forceAskToBuyReason;
- (NSString)logUUID;
- (id)_generateIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)activityLabel;
- (unint64_t)ageRatingValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)setAgeRatingValue:(unint64_t)value;
- (void)setBuySignatureTypes:(id)types;
- (void)setForceAskToBuyReason:(id)reason;
- (void)setIsExceptionRequest:(BOOL)request;
- (void)setLogUUID:(id)d;
- (void)setPublicInputComponents:(id)components;
- (void)setSendBlindedData:(BOOL)data;
@end

@implementation AMSPurchase

- (AMSPurchase)initWithPurchaseType:(int64_t)type buyParams:(id)params
{
  paramsCopy = params;
  v20.receiver = self;
  v20.super_class = AMSPurchase;
  v8 = [(AMSPurchase *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buyParams, params);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    clientCorrelationKey = v9->_clientCorrelationKey;
    v9->_clientCorrelationKey = uUIDString;

    v9->_ignoreRequirePasswordRestriction = 0;
    v13 = AMSGenerateLogCorrelationKey();
    logUUID = v9->_logUUID;
    v9->_logUUID = v13;

    v9->_purchaseType = type;
    *&v9->_requiresAccount = 0;
    _generateIdentifier = [(AMSPurchase *)v9 _generateIdentifier];
    uniqueIdentifier = v9->_uniqueIdentifier;
    v9->_uniqueIdentifier = _generateIdentifier;

    *&v9->_userInitiated = 1;
    v9->_asyncRecordEngagementEvent = 0;
    v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metricsActivities = v9->_metricsActivities;
    v9->_metricsActivities = v17;
  }

  return v9;
}

- (unint64_t)ageRatingValue
{
  buyParams = [(AMSPurchase *)self buyParams];
  v3 = [buyParams objectForKeyedSubscript:@"ageRatingValue"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  longLongValue = [v4 longLongValue];
  return longLongValue;
}

- (NSArray)buySignatureTypes
{
  buyParams = [(AMSPurchase *)self buyParams];
  v3 = [buyParams objectForKeyedSubscript:0x1F0722238];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 ams_mapWithTransformIgnoresNil:&__block_literal_global_114];

  return v5;
}

id __32__AMSPurchase_buySignatureTypes__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (NSString)forceAskToBuyReason
{
  buyParams = [(AMSPurchase *)self buyParams];
  v3 = [buyParams objectForKeyedSubscript:@"forceAskToBuyReason"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isExceptionRequest
{
  buyParams = [(AMSPurchase *)self buyParams];
  v4 = [buyParams objectForKeyedSubscript:@"isExceptionRequest"];
  if (objc_opt_respondsToSelector())
  {
    buyParams2 = [(AMSPurchase *)self buyParams];
    v6 = [buyParams2 objectForKeyedSubscript:@"isExceptionRequest"];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (BOOL)isRedownload
{
  v2 = [(AMSBuyParams *)self->_buyParams objectForKeyedSubscript:@"pricingParameters"];
  v3 = [v2 isEqualToString:@"STDRDL"];

  return v3;
}

- (NSString)logUUID
{
  logUUID = self->_logUUID;
  if (logUUID)
  {
    stringValue = logUUID;
  }

  else
  {
    stringValue = [(NSNumber *)self->_uniqueIdentifier stringValue];
  }

  return stringValue;
}

- (NSDictionary)publicInputComponents
{
  buyParams = [(AMSPurchase *)self buyParams];
  v3 = [buyParams objectForKeyedSubscript:@"publicInputComponents"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 ams_mapWithTransform:&__block_literal_global_29_1];

  return v5;
}

AMSPair *__36__AMSPurchase_publicInputComponents__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;

    v10 = v7 != 0;
    if (v9 && v7)
    {
      v11 = [[AMSPair alloc] initWithFirst:v7 second:v9];
      goto LABEL_17;
    }
  }

  else
  {

    v9 = 0;
    v10 = v7 != 0;
  }

  v12 = v8;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v13 = 0;
LABEL_15:
    v11 = 0;
    goto LABEL_16;
  }

  v13 = v12;

  v14 = !v10;
  if (!v13)
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_15;
  }

  v11 = [[AMSPair alloc] initWithFirst:v7 second:v13];
LABEL_16:

LABEL_17:

  return v11;
}

- (void)setAgeRatingValue:(unint64_t)value
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:value];
  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:v5 forKeyedSubscript:@"ageRatingValue"];
}

- (BOOL)sendBlindedData
{
  buyParams = [(AMSPurchase *)self buyParams];
  v4 = [buyParams objectForKeyedSubscript:0x1F07222B8];
  if (objc_opt_respondsToSelector())
  {
    buyParams2 = [(AMSPurchase *)self buyParams];
    v6 = [buyParams2 objectForKeyedSubscript:0x1F07222B8];
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = 0;
  }

  return bOOLValue;
}

- (void)setBuySignatureTypes:(id)types
{
  v5 = [types copy];
  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:v5 forKeyedSubscript:0x1F0722238];
}

- (void)setForceAskToBuyReason:(id)reason
{
  v5 = [reason copy];
  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:v5 forKeyedSubscript:@"forceAskToBuyReason"];
}

- (void)setLogUUID:(id)d
{
  dCopy = d;
  logUUID = self->_logUUID;
  p_logUUID = &self->_logUUID;
  if (logUUID != dCopy)
  {
    v8 = dCopy;
    objc_storeStrong(p_logUUID, d);
    dCopy = v8;
  }
}

- (void)setIsExceptionRequest:(BOOL)request
{
  if (request)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:v3 forKeyedSubscript:@"isExceptionRequest"];
}

- (void)setPublicInputComponents:(id)components
{
  componentsCopy = components;
  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:componentsCopy forKeyedSubscript:@"publicInputComponents"];
}

- (void)setSendBlindedData:(BOOL)data
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:data];
  buyParams = [(AMSPurchase *)self buyParams];
  [buyParams setObject:v5 forKeyedSubscript:0x1F07222B8];
}

+ (id)defaultAuthenticationContextForRequest:(id)request
{
  requestCopy = request;
  v4 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  account = [requestCopy account];
  ams_altDSID = [account ams_altDSID];
  [v4 setAltDSID:ams_altDSID];

  account2 = [requestCopy account];
  ams_DSID = [account2 ams_DSID];
  stringValue = [ams_DSID stringValue];
  [v4 setDSID:stringValue];

  account3 = [requestCopy account];
  username = [account3 username];
  [v4 setIsUsernameEditable:username == 0];

  explanation = [requestCopy explanation];
  [v4 set_passwordPromptTitle:explanation];

  message = [requestCopy message];
  [v4 setReason:message];

  [v4 setShouldAllowAppleIDCreation:0];
  [v4 setAuthenticationType:2];
  [v4 setShouldUpdatePersistentServiceTokens:1];
  account4 = [requestCopy account];
  username2 = [account4 username];
  [v4 setUsername:username2];

  [v4 setServiceType:2];
  if ([v4 isContextEligibleForPasscodeAuth])
  {
    v16 = +[AMSPurchase _authContextTitleForConfirmationStyle:](AMSPurchase, "_authContextTitleForConfirmationStyle:", [requestCopy ams_confirmationStyle]);
    [v4 setTitle:v16];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(objc_opt_class());
  account = [(AMSPurchase *)self account];
  v7 = [account copyWithZone:zone];
  v8 = v5[3];
  v5[3] = v7;

  additionalHeaders = [(AMSPurchase *)self additionalHeaders];
  v10 = [additionalHeaders copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  blindedData = [(AMSPurchase *)self blindedData];
  v13 = [blindedData copyWithZone:zone];
  v14 = v5[20];
  v5[20] = v13;

  buyParams = [(AMSPurchase *)self buyParams];
  v16 = [buyParams copyWithZone:zone];
  v17 = v5[5];
  v5[5] = v16;

  callerBundleId = [(AMSPurchase *)self callerBundleId];
  v19 = [callerBundleId copyWithZone:zone];
  v20 = v5[17];
  v5[17] = v19;

  clientCorrelationKey = [(AMSPurchase *)self clientCorrelationKey];
  v22 = [clientCorrelationKey copyWithZone:zone];
  v23 = v5[6];
  v5[6] = v22;

  clientId = [(AMSPurchase *)self clientId];
  v25 = [clientId copyWithZone:zone];
  v26 = v5[18];
  v5[18] = v25;

  clientInfo = [(AMSPurchase *)self clientInfo];
  v28 = [clientInfo copyWithZone:zone];
  v29 = v5[7];
  v5[7] = v28;

  *(v5 + 8) = [(AMSPurchase *)self ignoreRequirePasswordRestriction];
  logUUID = [(AMSPurchase *)self logUUID];
  v31 = [logUUID copyWithZone:zone];
  v32 = v5[2];
  v5[2] = v31;

  metricsOverlay = [(AMSPurchase *)self metricsOverlay];
  v34 = [metricsOverlay copyWithZone:zone];
  v35 = v5[9];
  v5[9] = v34;

  performanceMetricsOverlay = [(AMSPurchase *)self performanceMetricsOverlay];
  v37 = [performanceMetricsOverlay copyWithZone:zone];
  v38 = v5[11];
  v5[11] = v37;

  ownerAccountId = [(AMSPurchase *)self ownerAccountId];
  v40 = [ownerAccountId copyWithZone:zone];
  v41 = v5[8];
  v5[8] = v40;

  v5[14] = [(AMSPurchase *)self purchaseType];
  *(v5 + 9) = [(AMSPurchase *)self requiresAccount];
  *(v5 + 10) = [(AMSPurchase *)self requiresApplePayClassic];
  storefront = [(AMSPurchase *)self storefront];
  v43 = [storefront copyWithZone:zone];
  v44 = v5[15];
  v5[15] = v43;

  uniqueIdentifier = [(AMSPurchase *)self uniqueIdentifier];
  v46 = [uniqueIdentifier copyWithZone:zone];
  v47 = v5[16];
  v5[16] = v46;

  *(v5 + 11) = [(AMSPurchase *)self isUserInitiated];
  *(v5 + 12) = [(AMSPurchase *)self useJSONContentType];
  *(v5 + 13) = [(AMSPurchase *)self asyncRecordEngagementEvent];
  metricsActivities = [(AMSPurchase *)self metricsActivities];
  v49 = v5[21];
  v5[21] = metricsActivities;

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  account = [(AMSPurchase *)self account];
  [coderCopy encodeObject:account forKey:@"account"];

  additionalHeaders = [(AMSPurchase *)self additionalHeaders];
  [coderCopy encodeObject:additionalHeaders forKey:@"additionalHeaders"];

  blindedData = [(AMSPurchase *)self blindedData];
  [coderCopy encodeObject:blindedData forKey:@"blindedData_v2"];

  buyParams = [(AMSPurchase *)self buyParams];
  [coderCopy encodeObject:buyParams forKey:@"buyParams"];

  clientInfo = [(AMSPurchase *)self clientInfo];
  [coderCopy encodeObject:clientInfo forKey:@"clientInfo"];

  [coderCopy encodeBool:-[AMSPurchase ignoreRequirePasswordRestriction](self forKey:{"ignoreRequirePasswordRestriction"), @"ignoreRequirePasswordRestriction"}];
  logUUID = [(AMSPurchase *)self logUUID];
  [coderCopy encodeObject:logUUID forKey:@"logUUID"];

  ownerAccountId = [(AMSPurchase *)self ownerAccountId];
  [coderCopy encodeObject:ownerAccountId forKey:@"ownerAccountId"];

  presentingSceneBundleIdentifier = [(AMSPurchase *)self presentingSceneBundleIdentifier];
  [coderCopy encodeObject:presentingSceneBundleIdentifier forKey:@"presentingSceneBundleIdentifier"];

  presentingSceneIdentifier = [(AMSPurchase *)self presentingSceneIdentifier];
  [coderCopy encodeObject:presentingSceneIdentifier forKey:@"presentingSceneIdentifier"];

  [coderCopy encodeInteger:-[AMSPurchase purchaseType](self forKey:{"purchaseType"), @"purchaseType"}];
  [coderCopy encodeBool:-[AMSPurchase requiresAccount](self forKey:{"requiresAccount"), @"requiresAccount"}];
  [coderCopy encodeBool:-[AMSPurchase requiresApplePayClassic](self forKey:{"requiresApplePayClassic"), @"requiresApplePayClassic"}];
  storefront = [(AMSPurchase *)self storefront];
  [coderCopy encodeObject:storefront forKey:@"storefront"];

  uniqueIdentifier = [(AMSPurchase *)self uniqueIdentifier];
  [coderCopy encodeObject:uniqueIdentifier forKey:@"uniqueIdentifier"];

  [coderCopy encodeBool:-[AMSPurchase isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [coderCopy encodeBool:-[AMSPurchase useJSONContentType](self forKey:{"useJSONContentType"), @"useJSONContentType"}];
  [coderCopy encodeBool:-[AMSPurchase asyncRecordEngagementEvent](self forKey:{"asyncRecordEngagementEvent"), @"asyncRecordEngagementEvent"}];
  metricsOverlay = [(AMSPurchase *)self metricsOverlay];

  if (metricsOverlay)
  {
    metricsOverlay2 = [(AMSPurchase *)self metricsOverlay];
    [coderCopy ams_encodeJSONDictionary:metricsOverlay2 forKey:@"metricsOverlay"];
  }

  performanceMetricsOverlay = [(AMSPurchase *)self performanceMetricsOverlay];

  if (performanceMetricsOverlay)
  {
    performanceMetricsOverlay2 = [(AMSPurchase *)self performanceMetricsOverlay];
    [coderCopy ams_encodeJSONDictionary:performanceMetricsOverlay2 forKey:@"performanceMetricsOverlay"];
  }
}

- (AMSPurchase)initWithCoder:(id)coder
{
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = AMSPurchase;
  v5 = [(AMSPurchase *)&v37 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = objc_opt_class();
    v9 = [coderCopy decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"additionalHeaders"];
    additionalHeaders = v5->_additionalHeaders;
    v5->_additionalHeaders = v9;

    v11 = objc_opt_class();
    v12 = [coderCopy decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"blindedData_v2"];
    blindedData = v5->_blindedData;
    v5->_blindedData = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v16;

    v5->_ignoreRequirePasswordRestriction = [coderCopy decodeBoolForKey:@"ignoreRequirePasswordRestriction"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    logUUID = v5->_logUUID;
    v5->_logUUID = v18;

    v20 = [coderCopy ams_decodeJSONDictionaryForKey:@"metricsOverlay"];
    metricsOverlay = v5->_metricsOverlay;
    v5->_metricsOverlay = v20;

    v22 = [coderCopy ams_decodeJSONDictionaryForKey:@"performanceMetricsOverlay"];
    performanceMetricsOverlay = v5->_performanceMetricsOverlay;
    v5->_performanceMetricsOverlay = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ownerAccountId"];
    ownerAccountId = v5->_ownerAccountId;
    v5->_ownerAccountId = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v28;

    v5->_purchaseType = [coderCopy decodeIntegerForKey:@"purchaseType"];
    v5->_requiresAccount = [coderCopy decodeBoolForKey:@"requiresAccount"];
    v5->_requiresApplePayClassic = [coderCopy decodeBoolForKey:@"requiresApplePayClassic"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v32;

    v5->_userInitiated = [coderCopy decodeBoolForKey:@"userInitiated"];
    v5->_useJSONContentType = [coderCopy decodeBoolForKey:@"useJSONContentType"];
    v5->_asyncRecordEngagementEvent = [coderCopy decodeBoolForKey:@"asyncRecordEngagementEvent"];
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metricsActivities = v5->_metricsActivities;
    v5->_metricsActivities = v34;
  }

  return v5;
}

+ (id)purchaseFromPurchase:(id)purchase
{
  purchaseCopy = purchase;
  v4 = [AMSPurchase alloc];
  purchaseType = [purchaseCopy purchaseType];
  buyParams = [purchaseCopy buyParams];
  v7 = [(AMSPurchase *)v4 initWithPurchaseType:purchaseType buyParams:buyParams];

  account = [purchaseCopy account];
  [(AMSPurchase *)v7 setAccount:account];

  additionalHeaders = [purchaseCopy additionalHeaders];
  [(AMSPurchase *)v7 setAdditionalHeaders:additionalHeaders];

  blindedData = [purchaseCopy blindedData];
  [(AMSPurchase *)v7 setBlindedData:blindedData];

  clientInfo = [purchaseCopy clientInfo];
  [(AMSPurchase *)v7 setClientInfo:clientInfo];

  -[AMSPurchase setIgnoreRequirePasswordRestriction:](v7, "setIgnoreRequirePasswordRestriction:", [purchaseCopy ignoreRequirePasswordRestriction]);
  logUUID = [purchaseCopy logUUID];
  [(AMSPurchase *)v7 setLogUUID:logUUID];

  metricsOverlay = [purchaseCopy metricsOverlay];
  [(AMSPurchase *)v7 setMetricsOverlay:metricsOverlay];

  performanceMetricsOverlay = [purchaseCopy performanceMetricsOverlay];
  [(AMSPurchase *)v7 setPerformanceMetricsOverlay:performanceMetricsOverlay];

  ownerAccountId = [purchaseCopy ownerAccountId];
  [(AMSPurchase *)v7 setOwnerAccountId:ownerAccountId];

  presentingSceneBundleIdentifier = [purchaseCopy presentingSceneBundleIdentifier];
  [(AMSPurchase *)v7 setPresentingSceneBundleIdentifier:presentingSceneBundleIdentifier];

  presentingSceneIdentifier = [purchaseCopy presentingSceneIdentifier];
  [(AMSPurchase *)v7 setPresentingSceneIdentifier:presentingSceneIdentifier];

  -[AMSPurchase setRequiresAccount:](v7, "setRequiresAccount:", [purchaseCopy requiresAccount]);
  -[AMSPurchase setRequiresApplePayClassic:](v7, "setRequiresApplePayClassic:", [purchaseCopy requiresApplePayClassic]);
  storefront = [purchaseCopy storefront];
  [(AMSPurchase *)v7 setStorefront:storefront];

  -[AMSPurchase setUserInitiated:](v7, "setUserInitiated:", [purchaseCopy isUserInitiated]);
  -[AMSPurchase setUseJSONContentType:](v7, "setUseJSONContentType:", [purchaseCopy useJSONContentType]);
  -[AMSPurchase setAsyncRecordEngagementEvent:](v7, "setAsyncRecordEngagementEvent:", [purchaseCopy asyncRecordEngagementEvent]);
  metricsActivities = [purchaseCopy metricsActivities];

  [(AMSPurchase *)v7 setMetricsActivities:metricsActivities];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  logUUID = [(AMSPurchase *)self logUUID];
  v4 = [v2 stringWithFormat:@"{ key: %@ }", logUUID];

  return v4;
}

- (unint64_t)hash
{
  uniqueIdentifier = [(AMSPurchase *)self uniqueIdentifier];
  v3 = [uniqueIdentifier hash];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_5;
  }

  if (self == equalCopy)
  {
    v6 = 1;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [(AMSPurchase *)self isEqualToPurchase:v5];
  }

  else
  {
LABEL_5:
    v6 = 0;
  }

LABEL_7:

  return v6;
}

- (BOOL)isEqualToPurchase:(id)purchase
{
  purchaseCopy = purchase;
  uniqueIdentifier = [(AMSPurchase *)self uniqueIdentifier];
  uniqueIdentifier2 = [purchaseCopy uniqueIdentifier];

  LOBYTE(purchaseCopy) = [uniqueIdentifier isEqualToNumber:uniqueIdentifier2];
  return purchaseCopy;
}

- (id)_generateIdentifier
{
  v2 = CFUUIDCreate(0);
  v3 = *&CFUUIDGetUUIDBytes(v2);
  CFRelease(v2);
  v4 = MEMORY[0x1E696AD98];
  if (v3 >= 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = -v3;
  }

  return [v4 numberWithLongLong:v5];
}

+ (id)_authContextTitleForConfirmationStyle:(unint64_t)style
{
  if (style > 9)
  {
    v4 = @"PASSCODE_AUTH_TITLE_DEFAULT";
  }

  else
  {
    v4 = off_1E73BAFD8[style];
  }

  v5 = AMSLocalizedString(v4, 0);

  return v5;
}

- (int64_t)activityLabel
{
  purchaseType = [(AMSPurchase *)self purchaseType];
  if ((purchaseType - 1) > 4)
  {
    return 5;
  }

  else
  {
    return qword_193016AA8[purchaseType - 1];
  }
}

@end