@interface FKPaymentTransactionInsights
- (BOOL)isEqual:(id)equal;
- (FKPaymentTransactionInsights)initWithApplePayInsight:(id)insight bankMerchantInformationInsight:(id)informationInsight mapsInsight:(id)mapsInsight contactInsight:(id)contactInsight userInsight:(id)userInsight;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation FKPaymentTransactionInsights

- (FKPaymentTransactionInsights)initWithApplePayInsight:(id)insight bankMerchantInformationInsight:(id)informationInsight mapsInsight:(id)mapsInsight contactInsight:(id)contactInsight userInsight:(id)userInsight
{
  insightCopy = insight;
  informationInsightCopy = informationInsight;
  mapsInsightCopy = mapsInsight;
  contactInsightCopy = contactInsight;
  userInsightCopy = userInsight;
  v29.receiver = self;
  v29.super_class = FKPaymentTransactionInsights;
  v17 = [(FKPaymentTransactionInsights *)&v29 init];
  if (v17)
  {
    v18 = [insightCopy copy];
    applePayInsight = v17->_applePayInsight;
    v17->_applePayInsight = v18;

    v20 = [informationInsightCopy copy];
    bankMerchantInformationInsight = v17->_bankMerchantInformationInsight;
    v17->_bankMerchantInformationInsight = v20;

    v22 = [mapsInsightCopy copy];
    mapsInsight = v17->_mapsInsight;
    v17->_mapsInsight = v22;

    v24 = [contactInsightCopy copy];
    contactInsight = v17->_contactInsight;
    v17->_contactInsight = v24;

    v26 = [userInsightCopy copy];
    userInsight = v17->_userInsight;
    v17->_userInsight = v26;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(FKApplePayTransactionInsight *)self->_applePayInsight copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(FKBankMerchantInformationInsight *)self->_bankMerchantInformationInsight copyWithZone:zone];
  v9 = v5[2];
  v5[2] = v8;

  v10 = [(FKMapsTransactionInsight *)self->_mapsInsight copyWithZone:zone];
  v11 = v5[3];
  v5[3] = v10;

  v12 = [(FKContactTransactionInsight *)self->_contactInsight copyWithZone:zone];
  v13 = v5[4];
  v5[4] = v12;

  v14 = [(FKUserTransactionInsight *)self->_userInsight copyWithZone:zone];
  v15 = v5[5];
  v5[5] = v14;

  return v5;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_applePayInsight];
  [v3 safelyAddObject:self->_bankMerchantInformationInsight];
  [v3 safelyAddObject:self->_mapsInsight];
  [v3 safelyAddObject:self->_contactInsight];
  [v3 safelyAddObject:self->_userInsight];
  v4 = FKCombinedHash(17, v3);

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (self == equalCopy)
  {
    v7 = 1;
  }

  else if (equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (FKEqualObjects(self->_applePayInsight, v6[1]) && FKEqualObjects(self->_bankMerchantInformationInsight, v6[2]) && FKEqualObjects(self->_mapsInsight, v6[3]) && FKEqualObjects(self->_contactInsight, v6[4]))
    {
      v7 = FKEqualObjects(self->_userInsight, v6[5]);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end