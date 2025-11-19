@interface ASDSubscriptionEntitlement
- (ASDSubscriptionEntitlement)initWithCoder:(id)a3;
- (ASDSubscriptionEntitlement)initWithDictionary:(id)a3 forAppAdamID:(id)a4 segment:(unint64_t)a5 hasFamily:(BOOL)a6;
- (BOOL)autoRenewEnabled;
- (BOOL)isInGracePeriod;
- (BOOL)isNewsAppPurchase;
- (BOOL)isOfferPeriod;
- (BOOL)isPurchaser;
- (BOOL)isTrialPeriod;
- (NSDate)expiryDate;
- (NSDate)startDate;
- (NSNumber)appAdamID;
- (NSNumber)appVersion;
- (NSNumber)chargeStoreFrontID;
- (NSNumber)entitlementSourceAdamID;
- (NSNumber)familyID;
- (NSNumber)familyRank;
- (NSNumber)featureAccessTypeID;
- (NSNumber)freeTrialPeriodID;
- (NSNumber)inAppAdamID;
- (NSNumber)initialPurchaseTimestamp;
- (NSNumber)originalPurchaseDownloadID;
- (NSNumber)promoScenarioID;
- (NSNumber)purchasabilityType;
- (NSNumber)purchaseDownloadID;
- (NSNumber)quantity;
- (NSNumber)serviceBeginsTimestamp;
- (NSNumber)subscriptionBundleID;
- (NSString)chargeCountryCode;
- (NSString)chargeCurrencyCode;
- (NSString)entitlementOriginType;
- (NSString)externalSubscriptionID;
- (NSString)inAppVersion;
- (NSString)offerID;
- (NSString)poolType;
- (NSString)productCode;
- (NSString)vendorAdHocOfferID;
- (NSString)vendorID;
- (id)_dateFromDateString:(uint64_t)a1;
- (id)_valueForKey:(uint64_t)a1 ofType:(uint64_t)a2;
@end

@implementation ASDSubscriptionEntitlement

- (ASDSubscriptionEntitlement)initWithDictionary:(id)a3 forAppAdamID:(id)a4 segment:(unint64_t)a5 hasFamily:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = ASDSubscriptionEntitlement;
  v12 = [(ASDSubscriptionEntitlement *)&v18 init];
  if (v12)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = [v10 mutableCopy];
    [v14 setObject:v11 forKeyedSubscript:@"appAdamId"];
    v15 = [v14 copy];
    dictionary = v12->_dictionary;
    v12->_dictionary = v15;

    v12->_segment = a5;
    v12->_hasFamily = a6;

    objc_autoreleasePoolPop(v13);
  }

  return v12;
}

- (NSNumber)appAdamID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"appAdamId" ofType:?];
}

- (id)_valueForKey:(uint64_t)a1 ofType:(uint64_t)a2
{
  if (a1)
  {
    v2 = [*(a1 + 8) valueForKey:a2];
    v3 = [v2 copy];

    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSNumber)appVersion
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"appVersion" ofType:?];
}

- (BOOL)autoRenewEnabled
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"autoRenew" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)chargeCountryCode
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"chargeCountryCode" ofType:?];
}

- (NSString)chargeCurrencyCode
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"chargeCurrencyCode" ofType:?];
}

- (NSNumber)chargeStoreFrontID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"chargeStoreFrontId" ofType:?];
}

- (NSString)entitlementOriginType
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"entitlementOriginType" ofType:?];
}

- (NSNumber)entitlementSourceAdamID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"entitlementSourceAdamId" ofType:?];
}

- (NSDate)expiryDate
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"expireDate" ofType:?];
  v4 = [(ASDSubscriptionEntitlement *)self _dateFromDateString:v3];

  return v4;
}

- (id)_dateFromDateString:(uint64_t)a1
{
  v2 = 0;
  if (a1 && a2)
  {
    v3 = MEMORY[0x1E696AB78];
    v4 = a2;
    v5 = objc_alloc_init(v3);
    v6 = [objc_alloc(MEMORY[0x1E695DF58]) initWithLocaleIdentifier:@"en_US_POSIX"];
    [v5 setLocale:v6];
    [v5 setDateFormat:@"EEE MMM dd HH:mm:ss z yyyy"];
    v2 = [v5 dateFromString:v4];
  }

  return v2;
}

- (NSString)externalSubscriptionID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"externalSubscriptionId" ofType:?];
}

- (NSNumber)familyID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"familyId" ofType:?];
}

- (NSNumber)familyRank
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"familyRank" ofType:?];
}

- (NSNumber)featureAccessTypeID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"featureAccessTypeId" ofType:?];
}

- (NSNumber)freeTrialPeriodID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"freeTrialPeriodId" ofType:?];
}

- (NSNumber)inAppAdamID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"inAppAdamId" ofType:?];
}

- (NSString)inAppVersion
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"inAppVersion" ofType:?];
}

- (NSNumber)initialPurchaseTimestamp
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"initialPurchaseTimestamp" ofType:?];
}

- (BOOL)isTrialPeriod
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"isTrialPeriod" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isOfferPeriod
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"isOfferPeriod" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isPurchaser
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"isPurchaser" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isNewsAppPurchase
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"isNewsAppPurchase" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (BOOL)isInGracePeriod
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"isGracePeriod" ofType:?];
  v4 = [v3 BOOLValue];

  return v4;
}

- (NSString)offerID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"offerIdentifier" ofType:?];
}

- (NSNumber)originalPurchaseDownloadID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"originalPurchaseDownloadId" ofType:?];
}

- (NSString)poolType
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"poolType" ofType:?];
}

- (NSString)productCode
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"productCode" ofType:?];
}

- (NSNumber)promoScenarioID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"promoScenarioId" ofType:?];
}

- (NSNumber)purchasabilityType
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"purchasabilityType" ofType:?];
}

- (NSNumber)purchaseDownloadID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"purchaseDownloadId" ofType:?];
}

- (NSNumber)serviceBeginsTimestamp
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"serviceBeginsTimestamp" ofType:?];
}

- (NSDate)startDate
{
  objc_opt_class();
  v3 = [ASDSubscriptionEntitlement _valueForKey:@"startDate" ofType:?];
  v4 = [(ASDSubscriptionEntitlement *)self _dateFromDateString:v3];

  return v4;
}

- (NSNumber)subscriptionBundleID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"subscriptionBundleId" ofType:?];
}

- (NSNumber)quantity
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"quantity" ofType:?];
}

- (NSString)vendorAdHocOfferID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"vendorAdHocOfferId" ofType:?];
}

- (NSString)vendorID
{
  objc_opt_class();

  return [ASDSubscriptionEntitlement _valueForKey:@"vendorIdentifier" ofType:?];
}

- (ASDSubscriptionEntitlement)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = ASDSubscriptionEntitlement;
  v5 = [(ASDSubscriptionEntitlement *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"dictionary"];
    dictionary = v5->_dictionary;
    v5->_dictionary = v6;
  }

  return v5;
}

@end