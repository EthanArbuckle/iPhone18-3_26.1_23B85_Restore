@interface AMSPurchase
+ (id)_authContextTitleForConfirmationStyle:(unint64_t)a3;
+ (id)defaultAuthenticationContextForRequest:(id)a3;
+ (id)purchaseFromPurchase:(id)a3;
- (AMSPurchase)initWithCoder:(id)a3;
- (AMSPurchase)initWithPurchaseType:(int64_t)a3 buyParams:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPurchase:(id)a3;
- (BOOL)isExceptionRequest;
- (BOOL)isRedownload;
- (BOOL)sendBlindedData;
- (NSArray)buySignatureTypes;
- (NSDictionary)publicInputComponents;
- (NSString)forceAskToBuyReason;
- (NSString)logUUID;
- (id)_generateIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)activityLabel;
- (unint64_t)ageRatingValue;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)setAgeRatingValue:(unint64_t)a3;
- (void)setBuySignatureTypes:(id)a3;
- (void)setForceAskToBuyReason:(id)a3;
- (void)setIsExceptionRequest:(BOOL)a3;
- (void)setLogUUID:(id)a3;
- (void)setPublicInputComponents:(id)a3;
- (void)setSendBlindedData:(BOOL)a3;
@end

@implementation AMSPurchase

- (AMSPurchase)initWithPurchaseType:(int64_t)a3 buyParams:(id)a4
{
  v7 = a4;
  v20.receiver = self;
  v20.super_class = AMSPurchase;
  v8 = [(AMSPurchase *)&v20 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_buyParams, a4);
    v10 = [MEMORY[0x1E696AFB0] UUID];
    v11 = [v10 UUIDString];
    clientCorrelationKey = v9->_clientCorrelationKey;
    v9->_clientCorrelationKey = v11;

    v9->_ignoreRequirePasswordRestriction = 0;
    v13 = AMSGenerateLogCorrelationKey();
    logUUID = v9->_logUUID;
    v9->_logUUID = v13;

    v9->_purchaseType = a3;
    *&v9->_requiresAccount = 0;
    v15 = [(AMSPurchase *)v9 _generateIdentifier];
    uniqueIdentifier = v9->_uniqueIdentifier;
    v9->_uniqueIdentifier = v15;

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
  v2 = [(AMSPurchase *)self buyParams];
  v3 = [v2 objectForKeyedSubscript:@"ageRatingValue"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 longLongValue];
  return v5;
}

- (NSArray)buySignatureTypes
{
  v2 = [(AMSPurchase *)self buyParams];
  v3 = [v2 objectForKeyedSubscript:0x1F0722238];

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
  v2 = [(AMSPurchase *)self buyParams];
  v3 = [v2 objectForKeyedSubscript:@"forceAskToBuyReason"];

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
  v3 = [(AMSPurchase *)self buyParams];
  v4 = [v3 objectForKeyedSubscript:@"isExceptionRequest"];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSPurchase *)self buyParams];
    v6 = [v5 objectForKeyedSubscript:@"isExceptionRequest"];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
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
    v3 = logUUID;
  }

  else
  {
    v3 = [(NSNumber *)self->_uniqueIdentifier stringValue];
  }

  return v3;
}

- (NSDictionary)publicInputComponents
{
  v2 = [(AMSPurchase *)self buyParams];
  v3 = [v2 objectForKeyedSubscript:@"publicInputComponents"];

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

- (void)setAgeRatingValue:(unint64_t)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:a3];
  v4 = [(AMSPurchase *)self buyParams];
  [v4 setObject:v5 forKeyedSubscript:@"ageRatingValue"];
}

- (BOOL)sendBlindedData
{
  v3 = [(AMSPurchase *)self buyParams];
  v4 = [v3 objectForKeyedSubscript:0x1F07222B8];
  if (objc_opt_respondsToSelector())
  {
    v5 = [(AMSPurchase *)self buyParams];
    v6 = [v5 objectForKeyedSubscript:0x1F07222B8];
    v7 = [v6 BOOLValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setBuySignatureTypes:(id)a3
{
  v5 = [a3 copy];
  v4 = [(AMSPurchase *)self buyParams];
  [v4 setObject:v5 forKeyedSubscript:0x1F0722238];
}

- (void)setForceAskToBuyReason:(id)a3
{
  v5 = [a3 copy];
  v4 = [(AMSPurchase *)self buyParams];
  [v4 setObject:v5 forKeyedSubscript:@"forceAskToBuyReason"];
}

- (void)setLogUUID:(id)a3
{
  v5 = a3;
  logUUID = self->_logUUID;
  p_logUUID = &self->_logUUID;
  if (logUUID != v5)
  {
    v8 = v5;
    objc_storeStrong(p_logUUID, a3);
    v5 = v8;
  }
}

- (void)setIsExceptionRequest:(BOOL)a3
{
  if (a3)
  {
    v3 = @"1";
  }

  else
  {
    v3 = @"0";
  }

  v4 = [(AMSPurchase *)self buyParams];
  [v4 setObject:v3 forKeyedSubscript:@"isExceptionRequest"];
}

- (void)setPublicInputComponents:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchase *)self buyParams];
  [v5 setObject:v4 forKeyedSubscript:@"publicInputComponents"];
}

- (void)setSendBlindedData:(BOOL)a3
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:a3];
  v4 = [(AMSPurchase *)self buyParams];
  [v4 setObject:v5 forKeyedSubscript:0x1F07222B8];
}

+ (id)defaultAuthenticationContextForRequest:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E698DCB8]);
  v5 = [v3 account];
  v6 = [v5 ams_altDSID];
  [v4 setAltDSID:v6];

  v7 = [v3 account];
  v8 = [v7 ams_DSID];
  v9 = [v8 stringValue];
  [v4 setDSID:v9];

  v10 = [v3 account];
  v11 = [v10 username];
  [v4 setIsUsernameEditable:v11 == 0];

  v12 = [v3 explanation];
  [v4 set_passwordPromptTitle:v12];

  v13 = [v3 message];
  [v4 setReason:v13];

  [v4 setShouldAllowAppleIDCreation:0];
  [v4 setAuthenticationType:2];
  [v4 setShouldUpdatePersistentServiceTokens:1];
  v14 = [v3 account];
  v15 = [v14 username];
  [v4 setUsername:v15];

  [v4 setServiceType:2];
  if ([v4 isContextEligibleForPasscodeAuth])
  {
    v16 = +[AMSPurchase _authContextTitleForConfirmationStyle:](AMSPurchase, "_authContextTitleForConfirmationStyle:", [v3 ams_confirmationStyle]);
    [v4 setTitle:v16];
  }

  return v4;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(objc_opt_class());
  v6 = [(AMSPurchase *)self account];
  v7 = [v6 copyWithZone:a3];
  v8 = v5[3];
  v5[3] = v7;

  v9 = [(AMSPurchase *)self additionalHeaders];
  v10 = [v9 copyWithZone:a3];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(AMSPurchase *)self blindedData];
  v13 = [v12 copyWithZone:a3];
  v14 = v5[20];
  v5[20] = v13;

  v15 = [(AMSPurchase *)self buyParams];
  v16 = [v15 copyWithZone:a3];
  v17 = v5[5];
  v5[5] = v16;

  v18 = [(AMSPurchase *)self callerBundleId];
  v19 = [v18 copyWithZone:a3];
  v20 = v5[17];
  v5[17] = v19;

  v21 = [(AMSPurchase *)self clientCorrelationKey];
  v22 = [v21 copyWithZone:a3];
  v23 = v5[6];
  v5[6] = v22;

  v24 = [(AMSPurchase *)self clientId];
  v25 = [v24 copyWithZone:a3];
  v26 = v5[18];
  v5[18] = v25;

  v27 = [(AMSPurchase *)self clientInfo];
  v28 = [v27 copyWithZone:a3];
  v29 = v5[7];
  v5[7] = v28;

  *(v5 + 8) = [(AMSPurchase *)self ignoreRequirePasswordRestriction];
  v30 = [(AMSPurchase *)self logUUID];
  v31 = [v30 copyWithZone:a3];
  v32 = v5[2];
  v5[2] = v31;

  v33 = [(AMSPurchase *)self metricsOverlay];
  v34 = [v33 copyWithZone:a3];
  v35 = v5[9];
  v5[9] = v34;

  v36 = [(AMSPurchase *)self performanceMetricsOverlay];
  v37 = [v36 copyWithZone:a3];
  v38 = v5[11];
  v5[11] = v37;

  v39 = [(AMSPurchase *)self ownerAccountId];
  v40 = [v39 copyWithZone:a3];
  v41 = v5[8];
  v5[8] = v40;

  v5[14] = [(AMSPurchase *)self purchaseType];
  *(v5 + 9) = [(AMSPurchase *)self requiresAccount];
  *(v5 + 10) = [(AMSPurchase *)self requiresApplePayClassic];
  v42 = [(AMSPurchase *)self storefront];
  v43 = [v42 copyWithZone:a3];
  v44 = v5[15];
  v5[15] = v43;

  v45 = [(AMSPurchase *)self uniqueIdentifier];
  v46 = [v45 copyWithZone:a3];
  v47 = v5[16];
  v5[16] = v46;

  *(v5 + 11) = [(AMSPurchase *)self isUserInitiated];
  *(v5 + 12) = [(AMSPurchase *)self useJSONContentType];
  *(v5 + 13) = [(AMSPurchase *)self asyncRecordEngagementEvent];
  v48 = [(AMSPurchase *)self metricsActivities];
  v49 = v5[21];
  v5[21] = v48;

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v19 = a3;
  v4 = [(AMSPurchase *)self account];
  [v19 encodeObject:v4 forKey:@"account"];

  v5 = [(AMSPurchase *)self additionalHeaders];
  [v19 encodeObject:v5 forKey:@"additionalHeaders"];

  v6 = [(AMSPurchase *)self blindedData];
  [v19 encodeObject:v6 forKey:@"blindedData_v2"];

  v7 = [(AMSPurchase *)self buyParams];
  [v19 encodeObject:v7 forKey:@"buyParams"];

  v8 = [(AMSPurchase *)self clientInfo];
  [v19 encodeObject:v8 forKey:@"clientInfo"];

  [v19 encodeBool:-[AMSPurchase ignoreRequirePasswordRestriction](self forKey:{"ignoreRequirePasswordRestriction"), @"ignoreRequirePasswordRestriction"}];
  v9 = [(AMSPurchase *)self logUUID];
  [v19 encodeObject:v9 forKey:@"logUUID"];

  v10 = [(AMSPurchase *)self ownerAccountId];
  [v19 encodeObject:v10 forKey:@"ownerAccountId"];

  v11 = [(AMSPurchase *)self presentingSceneBundleIdentifier];
  [v19 encodeObject:v11 forKey:@"presentingSceneBundleIdentifier"];

  v12 = [(AMSPurchase *)self presentingSceneIdentifier];
  [v19 encodeObject:v12 forKey:@"presentingSceneIdentifier"];

  [v19 encodeInteger:-[AMSPurchase purchaseType](self forKey:{"purchaseType"), @"purchaseType"}];
  [v19 encodeBool:-[AMSPurchase requiresAccount](self forKey:{"requiresAccount"), @"requiresAccount"}];
  [v19 encodeBool:-[AMSPurchase requiresApplePayClassic](self forKey:{"requiresApplePayClassic"), @"requiresApplePayClassic"}];
  v13 = [(AMSPurchase *)self storefront];
  [v19 encodeObject:v13 forKey:@"storefront"];

  v14 = [(AMSPurchase *)self uniqueIdentifier];
  [v19 encodeObject:v14 forKey:@"uniqueIdentifier"];

  [v19 encodeBool:-[AMSPurchase isUserInitiated](self forKey:{"isUserInitiated"), @"userInitiated"}];
  [v19 encodeBool:-[AMSPurchase useJSONContentType](self forKey:{"useJSONContentType"), @"useJSONContentType"}];
  [v19 encodeBool:-[AMSPurchase asyncRecordEngagementEvent](self forKey:{"asyncRecordEngagementEvent"), @"asyncRecordEngagementEvent"}];
  v15 = [(AMSPurchase *)self metricsOverlay];

  if (v15)
  {
    v16 = [(AMSPurchase *)self metricsOverlay];
    [v19 ams_encodeJSONDictionary:v16 forKey:@"metricsOverlay"];
  }

  v17 = [(AMSPurchase *)self performanceMetricsOverlay];

  if (v17)
  {
    v18 = [(AMSPurchase *)self performanceMetricsOverlay];
    [v19 ams_encodeJSONDictionary:v18 forKey:@"performanceMetricsOverlay"];
  }
}

- (AMSPurchase)initWithCoder:(id)a3
{
  v4 = a3;
  v37.receiver = self;
  v37.super_class = AMSPurchase;
  v5 = [(AMSPurchase *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"account"];
    account = v5->_account;
    v5->_account = v6;

    v8 = objc_opt_class();
    v9 = [v4 decodeDictionaryWithKeysOfClass:v8 objectsOfClass:objc_opt_class() forKey:@"additionalHeaders"];
    additionalHeaders = v5->_additionalHeaders;
    v5->_additionalHeaders = v9;

    v11 = objc_opt_class();
    v12 = [v4 decodeDictionaryWithKeysOfClass:v11 objectsOfClass:objc_opt_class() forKey:@"blindedData_v2"];
    blindedData = v5->_blindedData;
    v5->_blindedData = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"buyParams"];
    buyParams = v5->_buyParams;
    v5->_buyParams = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientInfo"];
    clientInfo = v5->_clientInfo;
    v5->_clientInfo = v16;

    v5->_ignoreRequirePasswordRestriction = [v4 decodeBoolForKey:@"ignoreRequirePasswordRestriction"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"logUUID"];
    logUUID = v5->_logUUID;
    v5->_logUUID = v18;

    v20 = [v4 ams_decodeJSONDictionaryForKey:@"metricsOverlay"];
    metricsOverlay = v5->_metricsOverlay;
    v5->_metricsOverlay = v20;

    v22 = [v4 ams_decodeJSONDictionaryForKey:@"performanceMetricsOverlay"];
    performanceMetricsOverlay = v5->_performanceMetricsOverlay;
    v5->_performanceMetricsOverlay = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ownerAccountId"];
    ownerAccountId = v5->_ownerAccountId;
    v5->_ownerAccountId = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneBundleIdentifier"];
    presentingSceneBundleIdentifier = v5->_presentingSceneBundleIdentifier;
    v5->_presentingSceneBundleIdentifier = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"presentingSceneIdentifier"];
    presentingSceneIdentifier = v5->_presentingSceneIdentifier;
    v5->_presentingSceneIdentifier = v28;

    v5->_purchaseType = [v4 decodeIntegerForKey:@"purchaseType"];
    v5->_requiresAccount = [v4 decodeBoolForKey:@"requiresAccount"];
    v5->_requiresApplePayClassic = [v4 decodeBoolForKey:@"requiresApplePayClassic"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"storefront"];
    storefront = v5->_storefront;
    v5->_storefront = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueIdentifier"];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v32;

    v5->_userInitiated = [v4 decodeBoolForKey:@"userInitiated"];
    v5->_useJSONContentType = [v4 decodeBoolForKey:@"useJSONContentType"];
    v5->_asyncRecordEngagementEvent = [v4 decodeBoolForKey:@"asyncRecordEngagementEvent"];
    v34 = objc_alloc_init(MEMORY[0x1E695DF70]);
    metricsActivities = v5->_metricsActivities;
    v5->_metricsActivities = v34;
  }

  return v5;
}

+ (id)purchaseFromPurchase:(id)a3
{
  v3 = a3;
  v4 = [AMSPurchase alloc];
  v5 = [v3 purchaseType];
  v6 = [v3 buyParams];
  v7 = [(AMSPurchase *)v4 initWithPurchaseType:v5 buyParams:v6];

  v8 = [v3 account];
  [(AMSPurchase *)v7 setAccount:v8];

  v9 = [v3 additionalHeaders];
  [(AMSPurchase *)v7 setAdditionalHeaders:v9];

  v10 = [v3 blindedData];
  [(AMSPurchase *)v7 setBlindedData:v10];

  v11 = [v3 clientInfo];
  [(AMSPurchase *)v7 setClientInfo:v11];

  -[AMSPurchase setIgnoreRequirePasswordRestriction:](v7, "setIgnoreRequirePasswordRestriction:", [v3 ignoreRequirePasswordRestriction]);
  v12 = [v3 logUUID];
  [(AMSPurchase *)v7 setLogUUID:v12];

  v13 = [v3 metricsOverlay];
  [(AMSPurchase *)v7 setMetricsOverlay:v13];

  v14 = [v3 performanceMetricsOverlay];
  [(AMSPurchase *)v7 setPerformanceMetricsOverlay:v14];

  v15 = [v3 ownerAccountId];
  [(AMSPurchase *)v7 setOwnerAccountId:v15];

  v16 = [v3 presentingSceneBundleIdentifier];
  [(AMSPurchase *)v7 setPresentingSceneBundleIdentifier:v16];

  v17 = [v3 presentingSceneIdentifier];
  [(AMSPurchase *)v7 setPresentingSceneIdentifier:v17];

  -[AMSPurchase setRequiresAccount:](v7, "setRequiresAccount:", [v3 requiresAccount]);
  -[AMSPurchase setRequiresApplePayClassic:](v7, "setRequiresApplePayClassic:", [v3 requiresApplePayClassic]);
  v18 = [v3 storefront];
  [(AMSPurchase *)v7 setStorefront:v18];

  -[AMSPurchase setUserInitiated:](v7, "setUserInitiated:", [v3 isUserInitiated]);
  -[AMSPurchase setUseJSONContentType:](v7, "setUseJSONContentType:", [v3 useJSONContentType]);
  -[AMSPurchase setAsyncRecordEngagementEvent:](v7, "setAsyncRecordEngagementEvent:", [v3 asyncRecordEngagementEvent]);
  v19 = [v3 metricsActivities];

  [(AMSPurchase *)v7 setMetricsActivities:v19];

  return v7;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(AMSPurchase *)self logUUID];
  v4 = [v2 stringWithFormat:@"{ key: %@ }", v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(AMSPurchase *)self uniqueIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_5;
  }

  if (self == v4)
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

- (BOOL)isEqualToPurchase:(id)a3
{
  v4 = a3;
  v5 = [(AMSPurchase *)self uniqueIdentifier];
  v6 = [v4 uniqueIdentifier];

  LOBYTE(v4) = [v5 isEqualToNumber:v6];
  return v4;
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

+ (id)_authContextTitleForConfirmationStyle:(unint64_t)a3
{
  if (a3 > 9)
  {
    v4 = @"PASSCODE_AUTH_TITLE_DEFAULT";
  }

  else
  {
    v4 = off_1E73BAFD8[a3];
  }

  v5 = AMSLocalizedString(v4, 0);

  return v5;
}

- (int64_t)activityLabel
{
  v2 = [(AMSPurchase *)self purchaseType];
  if ((v2 - 1) > 4)
  {
    return 5;
  }

  else
  {
    return qword_193016AA8[v2 - 1];
  }
}

@end