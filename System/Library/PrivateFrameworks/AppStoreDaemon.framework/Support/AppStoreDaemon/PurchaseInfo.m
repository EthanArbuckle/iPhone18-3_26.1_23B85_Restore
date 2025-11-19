@interface PurchaseInfo
- (BOOL)didShowPaymentSheet;
- (BOOL)disableBoosting;
- (BOOL)discoveredUpdate;
- (BOOL)generatedVendorID;
- (BOOL)ignoreRequirePasswordRestriction;
- (BOOL)isArcade;
- (BOOL)isDiscretionary;
- (BOOL)isMachineBased;
- (BOOL)isRecoveryForExpiredUrl;
- (BOOL)isRemoteInstall;
- (BOOL)isTVProvider;
- (BOOL)purchaseOnly;
- (BOOL)requireUniversal;
- (BOOL)requireVendorID;
- (BOOL)shouldAskForRatingException;
- (BOOL)suppressDialogs;
- (BOOL)suppressEvaluatorDialogs;
- (BOOL)useJSONContentType;
- (BOOL)useLocalAuthAndInteractiveDialogs;
- (BOOL)useLocalAuthAndSystemDialogs;
- (PurchaseInfo)initWithBag:(id)a3;
- (RequestPresenter)requestPresenter;
- (id)copyWithZone:(_NSZone *)a3;
- (int64_t)clientType;
- (int64_t)expectedPackaging;
- (int64_t)expectedSoftwarePlatform;
- (int64_t)forceAskToBuyReason;
- (int64_t)priority;
- (int64_t)purchaseState;
- (int64_t)purchaseType;
- (int64_t)updateType;
- (unint64_t)ageRatingValue;
- (unint64_t)autoInstallOverride;
- (unint64_t)coordinatorImportance;
- (unint64_t)coordinatorIntent;
- (void)setAgeRatingValue:(unint64_t)a3;
- (void)setArcade:(BOOL)a3;
- (void)setAutoInstallOverride:(unint64_t)a3;
- (void)setClientType:(int64_t)a3;
- (void)setCoordinatorImportance:(unint64_t)a3;
- (void)setCoordinatorIntent:(unint64_t)a3;
- (void)setDidShowPaymentSheet:(BOOL)a3;
- (void)setDisableBoosting:(BOOL)a3;
- (void)setDiscoveredUpdate:(BOOL)a3;
- (void)setDiscretionary:(BOOL)a3;
- (void)setExpectedPackaging:(int64_t)a3;
- (void)setExpectedSoftwarePlatform:(int64_t)a3;
- (void)setForceAskToBuyReason:(int64_t)a3;
- (void)setGeneratedVendorID:(BOOL)a3;
- (void)setIgnoreRequirePasswordRestriction:(BOOL)a3;
- (void)setIsRecoveryForExpiredUrl:(BOOL)a3;
- (void)setMachineBased:(BOOL)a3;
- (void)setPriority:(int64_t)a3;
- (void)setPurchaseOnly:(BOOL)a3;
- (void)setPurchaseState:(int64_t)a3;
- (void)setPurchaseType:(int64_t)a3;
- (void)setRemoteInstall:(BOOL)a3;
- (void)setRequireUniversal:(BOOL)a3;
- (void)setRequireVendorID:(BOOL)a3;
- (void)setShouldAskForRatingException:(BOOL)a3;
- (void)setSuppressDialogs:(BOOL)a3;
- (void)setSuppressEvaluatorDialogs:(BOOL)a3;
- (void)setTVProvider:(BOOL)a3;
- (void)setUpdateType:(int64_t)a3;
- (void)setUseJSONContentType:(BOOL)a3;
- (void)setUseLocalAuthAndInteractiveDialogs:(BOOL)a3;
- (void)setUseLocalAuthAndSystemDialogs:(BOOL)a3;
- (void)updateGeneratedProperties;
- (void)updateLogKey;
@end

@implementation PurchaseInfo

- (BOOL)isArcade
{
  v2 = sub_1002A3BBC(self, @"isArcade");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setArcade:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isArcade");
}

- (int64_t)clientType
{
  v2 = sub_1002A3BBC(self, @"clientType");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setClientType:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"clientType");
}

- (BOOL)didShowPaymentSheet
{
  v2 = sub_1002A3BBC(self, @"didShowPaymentSheet");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setDidShowPaymentSheet:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"didShowPaymentSheet");
}

- (BOOL)disableBoosting
{
  v2 = sub_1002A3BBC(self, @"disableBoosting");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setDisableBoosting:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"disableBoosting");
}

- (BOOL)discoveredUpdate
{
  v2 = sub_1002A3BBC(self, @"discoveredUpdate");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setDiscoveredUpdate:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"discoveredUpdate");
}

- (BOOL)isDiscretionary
{
  v2 = sub_1002A3BBC(self, @"isDiscretionary");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setDiscretionary:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isDiscretionary");
}

- (int64_t)expectedPackaging
{
  v2 = sub_1002A3BBC(self, @"expectedPackaging");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setExpectedPackaging:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"expectedPackaging");
}

- (int64_t)expectedSoftwarePlatform
{
  v2 = sub_1002A3BBC(self, @"expectedSoftwarePlatform");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setExpectedSoftwarePlatform:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"expectedSoftwarePlatform");
}

- (int64_t)forceAskToBuyReason
{
  v2 = sub_1002A3BBC(self, @"forceAskToBuyReason");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setForceAskToBuyReason:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"forceAskToBuyReason");
}

- (BOOL)generatedVendorID
{
  v2 = sub_1002A3BBC(self, @"generatedVendorID");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setGeneratedVendorID:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"generatedVendorID");
}

- (BOOL)ignoreRequirePasswordRestriction
{
  v2 = sub_1002A3BBC(self, @"ignoreRequirePasswordRestriction");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIgnoreRequirePasswordRestriction:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"ignoreRequirePasswordRestriction");
}

- (BOOL)isRecoveryForExpiredUrl
{
  v2 = sub_1002A3BBC(self, @"isRecoveryForExpiredUrl");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setIsRecoveryForExpiredUrl:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isRecoveryForExpiredUrl");
}

- (BOOL)isMachineBased
{
  v2 = sub_1002A3BBC(self, @"isMachineBased");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setMachineBased:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isMachineBased");
}

- (int64_t)priority
{
  v2 = sub_1002A3BBC(self, @"priority");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPriority:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"priority");
}

- (BOOL)purchaseOnly
{
  v2 = sub_1002A3BBC(self, @"purchaseOnly");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setPurchaseOnly:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"purchaseOnly");
}

- (int64_t)purchaseState
{
  v2 = sub_1002A3BBC(self, @"purchaseState");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPurchaseState:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"purchaseState");
}

- (int64_t)purchaseType
{
  v2 = sub_1002A3BBC(self, @"purchaseType");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setPurchaseType:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"purchaseType");
}

- (BOOL)isRemoteInstall
{
  v2 = sub_1002A3BBC(self, @"isRemoteInstall");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setRemoteInstall:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isRemoteInstall");
}

- (BOOL)requireVendorID
{
  v2 = sub_1002A3BBC(self, @"requireVendorID");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setRequireVendorID:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"requireVendorID");
}

- (BOOL)requireUniversal
{
  v2 = sub_1002A3BBC(self, @"requireUniversal");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setRequireUniversal:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"requireUniversal");
}

- (BOOL)shouldAskForRatingException
{
  v2 = sub_1002A3BBC(self, @"shouldAskForRatingException");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setShouldAskForRatingException:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"shouldAskForRatingException");
}

- (BOOL)suppressDialogs
{
  v2 = sub_1002A3BBC(self, @"suppressDialogs");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSuppressDialogs:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"suppressDialogs");
}

- (BOOL)suppressEvaluatorDialogs
{
  v2 = sub_1002A3BBC(self, @"suppressEvaluatorDialogs");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setSuppressEvaluatorDialogs:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"suppressEvaluatorDialogs");
}

- (BOOL)isTVProvider
{
  v2 = sub_1002A3BBC(self, @"isTVProvider");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setTVProvider:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"isTVProvider");
}

- (int64_t)updateType
{
  v2 = sub_1002A3BBC(self, @"updateType");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setUpdateType:(int64_t)a3
{
  v4 = [NSNumber numberWithInteger:a3];
  sub_1002A3C34(self, v4, @"updateType");
}

- (BOOL)useJSONContentType
{
  v2 = sub_1002A3BBC(self, @"useJSONContentType");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUseJSONContentType:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"useJSONContentType");
}

- (BOOL)useLocalAuthAndInteractiveDialogs
{
  v2 = sub_1002A3BBC(self, @"useLocalAuthAndInteractiveDialogs");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUseLocalAuthAndInteractiveDialogs:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"useLocalAuthAndInteractiveDialogs");
}

- (BOOL)useLocalAuthAndSystemDialogs
{
  v2 = sub_1002A3BBC(self, @"useLocalAuthAndSystemDialogs");
  v3 = [v2 BOOLValue];

  return v3;
}

- (void)setUseLocalAuthAndSystemDialogs:(BOOL)a3
{
  v4 = [NSNumber numberWithBool:a3];
  sub_1002A3C34(self, v4, @"useLocalAuthAndSystemDialogs");
}

- (unint64_t)ageRatingValue
{
  v2 = sub_1002A3BBC(self, @"ageRatingValue");
  v3 = [v2 unsignedLongLongValue];

  return v3;
}

- (void)setAgeRatingValue:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedLongLong:a3];
  sub_1002A3C34(self, v4, @"ageRatingValue");
}

- (unint64_t)autoInstallOverride
{
  v2 = sub_1002A3BBC(self, @"autoInstallOverride");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setAutoInstallOverride:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  sub_1002A3C34(self, v4, @"autoInstallOverride");
}

- (unint64_t)coordinatorImportance
{
  v2 = sub_1002A3BBC(self, @"coordinatorImportance");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setCoordinatorImportance:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  sub_1002A3C34(self, v4, @"coordinatorImportance");
}

- (unint64_t)coordinatorIntent
{
  v2 = sub_1002A3BBC(self, @"coordinatorIntent");
  v3 = [v2 integerValue];

  return v3;
}

- (void)setCoordinatorIntent:(unint64_t)a3
{
  v4 = [NSNumber numberWithUnsignedInteger:a3];
  sub_1002A3C34(self, v4, @"coordinatorIntent");
}

- (PurchaseInfo)initWithBag:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PurchaseInfo;
  v6 = [(ContextObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 28), a3);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = PurchaseInfo;
  v4 = [(ContextObject *)&v6 copyWithZone:a3];
  objc_storeStrong((v4 + 28), *(&self->_preorderFulfillment + 4));
  *(v4 + 36) = *(&self->_bag + 4);
  return v4;
}

- (RequestPresenter)requestPresenter
{
  if ([(PurchaseInfo *)self suppressDialogs])
  {
    v3 = objc_opt_new();
  }

  else
  {
    v4 = [(PurchaseInfo *)self requestToken];
    v5 = v4;
    if (v4 && ![v4 isInternal])
    {
      v6 = [v5 notificationClient];
      v3 = sub_10031187C(CallerRequestPresenter, v6);
    }

    else
    {
      v3 = objc_opt_new();
    }
  }

  return v3;
}

- (void)updateGeneratedProperties
{
  v3 = [(PurchaseInfo *)self additionalHeaders];
  v4 = [v3 mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = AMSHTTPHeaderUserAgent;
  v6 = [v4 objectForKeyedSubscript:AMSHTTPHeaderUserAgent];

  if (!v6)
  {
    v7 = [(PurchaseInfo *)self clientInfo];
    v8 = [AMSUserAgent userAgentForProcessInfo:v7];
    [v4 setObject:v8 forKeyedSubscript:v5];
  }

  v9 = [v4 copy];
  [(PurchaseInfo *)self setAdditionalHeaders:v9];

  [(PurchaseInfo *)self updateLogKey];
  v10 = [(PurchaseInfo *)self buyParams];
  if (os_variant_has_internal_content())
  {
    [v10 setParameter:@"internal" forKey:@"OSBuildType"];
  }

  v11 = [v10 parameterForKey:@"ForceAppDRMMode"];

  if (!v11)
  {
    v12 = sub_1003D64DC();
    v13 = v12;
    if (v12 && (([v12 isEqualToNumber:&off_100548160] & 1) != 0 || objc_msgSend(v13, "isEqualToNumber:", &off_100548178)))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [(PurchaseInfo *)self logKey];
        *v19 = 138412546;
        *&v19[4] = v15;
        *&v19[12] = 1024;
        *&v19[14] = [v13 intValue];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Setting ForceAppDRMMode: %d", v19, 0x12u);
      }

      [v10 setParameter:v13 forKey:@"ForceAppDRMMode"];
    }
  }

  [(PurchaseInfo *)self setBuyParams:v10];
  v16 = [(PurchaseInfo *)self externalID];
  v17 = v16;
  if (v16)
  {
    *v19 = 0;
    *&v19[8] = 0;
    [v16 getUUIDBytes:v19];
    v18 = *v19;
  }

  else
  {
    v18 = 0;
  }

  *(&self->_bag + 4) = v18;
}

- (void)updateLogKey
{
  v3 = [_TtC9appstored6LogKey alloc];
  v9 = [(PurchaseInfo *)self batchLogKey];
  v4 = [(PurchaseInfo *)self logCode];
  v5 = [(PurchaseInfo *)self externalID];
  v6 = [(PurchaseInfo *)self bundleID];
  v7 = [(PurchaseInfo *)self itemID];
  v8 = [(LogKey *)v3 initWithBatchLogKey:v9 logCode:v4 externalID:v5 bundleID:v6 itemID:v7];
  if (self)
  {
    sub_1002A3C34(self, v8, @"logKey");
  }
}

@end