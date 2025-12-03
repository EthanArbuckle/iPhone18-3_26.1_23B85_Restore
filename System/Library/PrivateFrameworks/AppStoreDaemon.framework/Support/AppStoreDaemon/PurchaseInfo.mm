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
- (PurchaseInfo)initWithBag:(id)bag;
- (RequestPresenter)requestPresenter;
- (id)copyWithZone:(_NSZone *)zone;
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
- (void)setAgeRatingValue:(unint64_t)value;
- (void)setArcade:(BOOL)arcade;
- (void)setAutoInstallOverride:(unint64_t)override;
- (void)setClientType:(int64_t)type;
- (void)setCoordinatorImportance:(unint64_t)importance;
- (void)setCoordinatorIntent:(unint64_t)intent;
- (void)setDidShowPaymentSheet:(BOOL)sheet;
- (void)setDisableBoosting:(BOOL)boosting;
- (void)setDiscoveredUpdate:(BOOL)update;
- (void)setDiscretionary:(BOOL)discretionary;
- (void)setExpectedPackaging:(int64_t)packaging;
- (void)setExpectedSoftwarePlatform:(int64_t)platform;
- (void)setForceAskToBuyReason:(int64_t)reason;
- (void)setGeneratedVendorID:(BOOL)d;
- (void)setIgnoreRequirePasswordRestriction:(BOOL)restriction;
- (void)setIsRecoveryForExpiredUrl:(BOOL)url;
- (void)setMachineBased:(BOOL)based;
- (void)setPriority:(int64_t)priority;
- (void)setPurchaseOnly:(BOOL)only;
- (void)setPurchaseState:(int64_t)state;
- (void)setPurchaseType:(int64_t)type;
- (void)setRemoteInstall:(BOOL)install;
- (void)setRequireUniversal:(BOOL)universal;
- (void)setRequireVendorID:(BOOL)d;
- (void)setShouldAskForRatingException:(BOOL)exception;
- (void)setSuppressDialogs:(BOOL)dialogs;
- (void)setSuppressEvaluatorDialogs:(BOOL)dialogs;
- (void)setTVProvider:(BOOL)provider;
- (void)setUpdateType:(int64_t)type;
- (void)setUseJSONContentType:(BOOL)type;
- (void)setUseLocalAuthAndInteractiveDialogs:(BOOL)dialogs;
- (void)setUseLocalAuthAndSystemDialogs:(BOOL)dialogs;
- (void)updateGeneratedProperties;
- (void)updateLogKey;
@end

@implementation PurchaseInfo

- (BOOL)isArcade
{
  v2 = sub_1002A3BBC(self, @"isArcade");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setArcade:(BOOL)arcade
{
  v4 = [NSNumber numberWithBool:arcade];
  sub_1002A3C34(self, v4, @"isArcade");
}

- (int64_t)clientType
{
  v2 = sub_1002A3BBC(self, @"clientType");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setClientType:(int64_t)type
{
  v4 = [NSNumber numberWithInteger:type];
  sub_1002A3C34(self, v4, @"clientType");
}

- (BOOL)didShowPaymentSheet
{
  v2 = sub_1002A3BBC(self, @"didShowPaymentSheet");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDidShowPaymentSheet:(BOOL)sheet
{
  v4 = [NSNumber numberWithBool:sheet];
  sub_1002A3C34(self, v4, @"didShowPaymentSheet");
}

- (BOOL)disableBoosting
{
  v2 = sub_1002A3BBC(self, @"disableBoosting");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDisableBoosting:(BOOL)boosting
{
  v4 = [NSNumber numberWithBool:boosting];
  sub_1002A3C34(self, v4, @"disableBoosting");
}

- (BOOL)discoveredUpdate
{
  v2 = sub_1002A3BBC(self, @"discoveredUpdate");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDiscoveredUpdate:(BOOL)update
{
  v4 = [NSNumber numberWithBool:update];
  sub_1002A3C34(self, v4, @"discoveredUpdate");
}

- (BOOL)isDiscretionary
{
  v2 = sub_1002A3BBC(self, @"isDiscretionary");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setDiscretionary:(BOOL)discretionary
{
  v4 = [NSNumber numberWithBool:discretionary];
  sub_1002A3C34(self, v4, @"isDiscretionary");
}

- (int64_t)expectedPackaging
{
  v2 = sub_1002A3BBC(self, @"expectedPackaging");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setExpectedPackaging:(int64_t)packaging
{
  v4 = [NSNumber numberWithInteger:packaging];
  sub_1002A3C34(self, v4, @"expectedPackaging");
}

- (int64_t)expectedSoftwarePlatform
{
  v2 = sub_1002A3BBC(self, @"expectedSoftwarePlatform");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setExpectedSoftwarePlatform:(int64_t)platform
{
  v4 = [NSNumber numberWithInteger:platform];
  sub_1002A3C34(self, v4, @"expectedSoftwarePlatform");
}

- (int64_t)forceAskToBuyReason
{
  v2 = sub_1002A3BBC(self, @"forceAskToBuyReason");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setForceAskToBuyReason:(int64_t)reason
{
  v4 = [NSNumber numberWithInteger:reason];
  sub_1002A3C34(self, v4, @"forceAskToBuyReason");
}

- (BOOL)generatedVendorID
{
  v2 = sub_1002A3BBC(self, @"generatedVendorID");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setGeneratedVendorID:(BOOL)d
{
  v4 = [NSNumber numberWithBool:d];
  sub_1002A3C34(self, v4, @"generatedVendorID");
}

- (BOOL)ignoreRequirePasswordRestriction
{
  v2 = sub_1002A3BBC(self, @"ignoreRequirePasswordRestriction");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIgnoreRequirePasswordRestriction:(BOOL)restriction
{
  v4 = [NSNumber numberWithBool:restriction];
  sub_1002A3C34(self, v4, @"ignoreRequirePasswordRestriction");
}

- (BOOL)isRecoveryForExpiredUrl
{
  v2 = sub_1002A3BBC(self, @"isRecoveryForExpiredUrl");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setIsRecoveryForExpiredUrl:(BOOL)url
{
  v4 = [NSNumber numberWithBool:url];
  sub_1002A3C34(self, v4, @"isRecoveryForExpiredUrl");
}

- (BOOL)isMachineBased
{
  v2 = sub_1002A3BBC(self, @"isMachineBased");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setMachineBased:(BOOL)based
{
  v4 = [NSNumber numberWithBool:based];
  sub_1002A3C34(self, v4, @"isMachineBased");
}

- (int64_t)priority
{
  v2 = sub_1002A3BBC(self, @"priority");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPriority:(int64_t)priority
{
  v4 = [NSNumber numberWithInteger:priority];
  sub_1002A3C34(self, v4, @"priority");
}

- (BOOL)purchaseOnly
{
  v2 = sub_1002A3BBC(self, @"purchaseOnly");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setPurchaseOnly:(BOOL)only
{
  v4 = [NSNumber numberWithBool:only];
  sub_1002A3C34(self, v4, @"purchaseOnly");
}

- (int64_t)purchaseState
{
  v2 = sub_1002A3BBC(self, @"purchaseState");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPurchaseState:(int64_t)state
{
  v4 = [NSNumber numberWithInteger:state];
  sub_1002A3C34(self, v4, @"purchaseState");
}

- (int64_t)purchaseType
{
  v2 = sub_1002A3BBC(self, @"purchaseType");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setPurchaseType:(int64_t)type
{
  v4 = [NSNumber numberWithInteger:type];
  sub_1002A3C34(self, v4, @"purchaseType");
}

- (BOOL)isRemoteInstall
{
  v2 = sub_1002A3BBC(self, @"isRemoteInstall");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRemoteInstall:(BOOL)install
{
  v4 = [NSNumber numberWithBool:install];
  sub_1002A3C34(self, v4, @"isRemoteInstall");
}

- (BOOL)requireVendorID
{
  v2 = sub_1002A3BBC(self, @"requireVendorID");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRequireVendorID:(BOOL)d
{
  v4 = [NSNumber numberWithBool:d];
  sub_1002A3C34(self, v4, @"requireVendorID");
}

- (BOOL)requireUniversal
{
  v2 = sub_1002A3BBC(self, @"requireUniversal");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setRequireUniversal:(BOOL)universal
{
  v4 = [NSNumber numberWithBool:universal];
  sub_1002A3C34(self, v4, @"requireUniversal");
}

- (BOOL)shouldAskForRatingException
{
  v2 = sub_1002A3BBC(self, @"shouldAskForRatingException");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setShouldAskForRatingException:(BOOL)exception
{
  v4 = [NSNumber numberWithBool:exception];
  sub_1002A3C34(self, v4, @"shouldAskForRatingException");
}

- (BOOL)suppressDialogs
{
  v2 = sub_1002A3BBC(self, @"suppressDialogs");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSuppressDialogs:(BOOL)dialogs
{
  v4 = [NSNumber numberWithBool:dialogs];
  sub_1002A3C34(self, v4, @"suppressDialogs");
}

- (BOOL)suppressEvaluatorDialogs
{
  v2 = sub_1002A3BBC(self, @"suppressEvaluatorDialogs");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setSuppressEvaluatorDialogs:(BOOL)dialogs
{
  v4 = [NSNumber numberWithBool:dialogs];
  sub_1002A3C34(self, v4, @"suppressEvaluatorDialogs");
}

- (BOOL)isTVProvider
{
  v2 = sub_1002A3BBC(self, @"isTVProvider");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setTVProvider:(BOOL)provider
{
  v4 = [NSNumber numberWithBool:provider];
  sub_1002A3C34(self, v4, @"isTVProvider");
}

- (int64_t)updateType
{
  v2 = sub_1002A3BBC(self, @"updateType");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setUpdateType:(int64_t)type
{
  v4 = [NSNumber numberWithInteger:type];
  sub_1002A3C34(self, v4, @"updateType");
}

- (BOOL)useJSONContentType
{
  v2 = sub_1002A3BBC(self, @"useJSONContentType");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUseJSONContentType:(BOOL)type
{
  v4 = [NSNumber numberWithBool:type];
  sub_1002A3C34(self, v4, @"useJSONContentType");
}

- (BOOL)useLocalAuthAndInteractiveDialogs
{
  v2 = sub_1002A3BBC(self, @"useLocalAuthAndInteractiveDialogs");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUseLocalAuthAndInteractiveDialogs:(BOOL)dialogs
{
  v4 = [NSNumber numberWithBool:dialogs];
  sub_1002A3C34(self, v4, @"useLocalAuthAndInteractiveDialogs");
}

- (BOOL)useLocalAuthAndSystemDialogs
{
  v2 = sub_1002A3BBC(self, @"useLocalAuthAndSystemDialogs");
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)setUseLocalAuthAndSystemDialogs:(BOOL)dialogs
{
  v4 = [NSNumber numberWithBool:dialogs];
  sub_1002A3C34(self, v4, @"useLocalAuthAndSystemDialogs");
}

- (unint64_t)ageRatingValue
{
  v2 = sub_1002A3BBC(self, @"ageRatingValue");
  unsignedLongLongValue = [v2 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)setAgeRatingValue:(unint64_t)value
{
  v4 = [NSNumber numberWithUnsignedLongLong:value];
  sub_1002A3C34(self, v4, @"ageRatingValue");
}

- (unint64_t)autoInstallOverride
{
  v2 = sub_1002A3BBC(self, @"autoInstallOverride");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setAutoInstallOverride:(unint64_t)override
{
  v4 = [NSNumber numberWithUnsignedInteger:override];
  sub_1002A3C34(self, v4, @"autoInstallOverride");
}

- (unint64_t)coordinatorImportance
{
  v2 = sub_1002A3BBC(self, @"coordinatorImportance");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setCoordinatorImportance:(unint64_t)importance
{
  v4 = [NSNumber numberWithUnsignedInteger:importance];
  sub_1002A3C34(self, v4, @"coordinatorImportance");
}

- (unint64_t)coordinatorIntent
{
  v2 = sub_1002A3BBC(self, @"coordinatorIntent");
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setCoordinatorIntent:(unint64_t)intent
{
  v4 = [NSNumber numberWithUnsignedInteger:intent];
  sub_1002A3C34(self, v4, @"coordinatorIntent");
}

- (PurchaseInfo)initWithBag:(id)bag
{
  bagCopy = bag;
  v9.receiver = self;
  v9.super_class = PurchaseInfo;
  v6 = [(ContextObject *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong((v6 + 28), bag);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = PurchaseInfo;
  v4 = [(ContextObject *)&v6 copyWithZone:zone];
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
    requestToken = [(PurchaseInfo *)self requestToken];
    v5 = requestToken;
    if (requestToken && ![requestToken isInternal])
    {
      notificationClient = [v5 notificationClient];
      v3 = sub_10031187C(CallerRequestPresenter, notificationClient);
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
  additionalHeaders = [(PurchaseInfo *)self additionalHeaders];
  v4 = [additionalHeaders mutableCopy];

  if (!v4)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
  }

  v5 = AMSHTTPHeaderUserAgent;
  v6 = [v4 objectForKeyedSubscript:AMSHTTPHeaderUserAgent];

  if (!v6)
  {
    clientInfo = [(PurchaseInfo *)self clientInfo];
    v8 = [AMSUserAgent userAgentForProcessInfo:clientInfo];
    [v4 setObject:v8 forKeyedSubscript:v5];
  }

  v9 = [v4 copy];
  [(PurchaseInfo *)self setAdditionalHeaders:v9];

  [(PurchaseInfo *)self updateLogKey];
  buyParams = [(PurchaseInfo *)self buyParams];
  if (os_variant_has_internal_content())
  {
    [buyParams setParameter:@"internal" forKey:@"OSBuildType"];
  }

  v11 = [buyParams parameterForKey:@"ForceAppDRMMode"];

  if (!v11)
  {
    v12 = sub_1003D64DC();
    v13 = v12;
    if (v12 && (([v12 isEqualToNumber:&off_100548160] & 1) != 0 || objc_msgSend(v13, "isEqualToNumber:", &off_100548178)))
    {
      v14 = ASDLogHandleForCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        logKey = [(PurchaseInfo *)self logKey];
        *v19 = 138412546;
        *&v19[4] = logKey;
        *&v19[12] = 1024;
        *&v19[14] = [v13 intValue];
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[%@] Setting ForceAppDRMMode: %d", v19, 0x12u);
      }

      [buyParams setParameter:v13 forKey:@"ForceAppDRMMode"];
    }
  }

  [(PurchaseInfo *)self setBuyParams:buyParams];
  externalID = [(PurchaseInfo *)self externalID];
  v17 = externalID;
  if (externalID)
  {
    *v19 = 0;
    *&v19[8] = 0;
    [externalID getUUIDBytes:v19];
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
  batchLogKey = [(PurchaseInfo *)self batchLogKey];
  logCode = [(PurchaseInfo *)self logCode];
  externalID = [(PurchaseInfo *)self externalID];
  bundleID = [(PurchaseInfo *)self bundleID];
  itemID = [(PurchaseInfo *)self itemID];
  v8 = [(LogKey *)v3 initWithBatchLogKey:batchLogKey logCode:logCode externalID:externalID bundleID:bundleID itemID:itemID];
  if (self)
  {
    sub_1002A3C34(self, v8, @"logKey");
  }
}

@end