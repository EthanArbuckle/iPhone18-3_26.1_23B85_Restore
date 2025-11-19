@interface ASDIAPInfo
- (ASDIAPInfo)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSNumber)expirationTimestamp;
- (NSNumber)lastModifiedTimestamp;
- (NSNumber)purchaseTimestamp;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (uint64_t)_newCopyWithClass:(uint64_t)a3 zone:;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASDIAPInfo

- (NSNumber)expirationTimestamp
{
  expirationDate = self->_expirationDate;
  if (expirationDate)
  {
    v4 = MEMORY[0x1E696AD98];
    [expirationDate timeIntervalSince1970];
    expirationDate = [v4 numberWithDouble:?];
    v2 = vars8;
  }

  return expirationDate;
}

- (NSNumber)lastModifiedTimestamp
{
  lastModifiedDate = self->_lastModifiedDate;
  if (lastModifiedDate)
  {
    v4 = MEMORY[0x1E696AD98];
    [lastModifiedDate timeIntervalSince1970];
    lastModifiedDate = [v4 numberWithDouble:?];
    v2 = vars8;
  }

  return lastModifiedDate;
}

- (NSNumber)purchaseTimestamp
{
  purchaseDate = self->_purchaseDate;
  if (purchaseDate)
  {
    v4 = MEMORY[0x1E696AD98];
    [purchaseDate timeIntervalSince1970];
    purchaseDate = [v4 numberWithDouble:?];
    v2 = vars8;
  }

  return purchaseDate;
}

- (id)description
{
  v2 = @"NO";
  if (self->_hasUsedFreeOffer)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_hasUsedIntroPricingOffer)
  {
    v4 = @"YES";
  }

  else
  {
    v4 = @"NO";
  }

  if (self->_autoRenewStatus)
  {
    v2 = @"YES";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"AdamID: %@, AppAdamID: %@, PurchaseDate: %@, LastModifiedDate: %@, ExpirationDate: %@, Type: %i, HasUsedFreeOffer: %@, HasUsedIntroPricingOffer: %@, Subscription Family ID: %@, AutoRenewStatus: %@", *&self->_adamId, self->_purchaseDate, self->_lastModifiedDate, self->_expirationDate, self->_type, v3, v4, self->_subscriptionFamilyId, v2];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      if (!self)
      {
        goto LABEL_34;
      }

      adamId = self->_adamId;
      v7 = v5->_adamId;
      if (adamId != v7)
      {
        v8 = 0;
        if (!adamId || !v7)
        {
          goto LABEL_35;
        }

        if (![(NSNumber *)adamId isEqual:?])
        {
          goto LABEL_34;
        }
      }

      appAdamId = self->_appAdamId;
      v10 = v5->_appAdamId;
      if (appAdamId != v10)
      {
        v8 = 0;
        if (!appAdamId || !v10)
        {
          goto LABEL_35;
        }

        if (![(NSNumber *)appAdamId isEqual:?])
        {
          goto LABEL_34;
        }
      }

      expirationDate = self->_expirationDate;
      v12 = v5->_expirationDate;
      if (expirationDate != v12)
      {
        v8 = 0;
        if (!expirationDate || !v12)
        {
          goto LABEL_35;
        }

        if (![(NSDate *)expirationDate isEqual:?])
        {
          goto LABEL_34;
        }
      }

      if (self->_hasUsedFreeOffer != v5->_hasUsedFreeOffer || self->_hasUsedIntroPricingOffer != v5->_hasUsedIntroPricingOffer)
      {
        goto LABEL_34;
      }

      lastModifiedDate = self->_lastModifiedDate;
      v14 = v5->_lastModifiedDate;
      if (lastModifiedDate != v14)
      {
        v8 = 0;
        if (!lastModifiedDate || !v14)
        {
          goto LABEL_35;
        }

        if (![(NSDate *)lastModifiedDate isEqual:?])
        {
          goto LABEL_34;
        }
      }

      purchaseDate = self->_purchaseDate;
      v16 = v5->_purchaseDate;
      if (purchaseDate != v16)
      {
        v8 = 0;
        if (!purchaseDate || !v16)
        {
          goto LABEL_35;
        }

        if (![(NSDate *)purchaseDate isEqual:?])
        {
          goto LABEL_34;
        }
      }

      subscriptionFamilyId = self->_subscriptionFamilyId;
      v18 = v5->_subscriptionFamilyId;
      if (subscriptionFamilyId != v18)
      {
        v8 = 0;
        if (!subscriptionFamilyId || !v18)
        {
          goto LABEL_35;
        }

        if (![(NSString *)subscriptionFamilyId isEqual:?])
        {
          goto LABEL_34;
        }
      }

      if (self->_type == v5->_type)
      {
        v8 = self->_autoRenewStatus == v5->_autoRenewStatus;
      }

      else
      {
LABEL_34:
        v8 = 0;
      }

LABEL_35:

      goto LABEL_36;
    }

    v8 = 0;
  }

LABEL_36:

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  if ([(ASDIAPInfo *)self isMemberOfClass:objc_opt_class()])
  {

    return self;
  }

  else
  {
    v5 = objc_opt_class();

    return [(ASDIAPInfo *)self _newCopyWithClass:v5 zone:a3];
  }
}

- (uint64_t)_newCopyWithClass:(uint64_t)a3 zone:
{
  if (!a1)
  {
    return 0;
  }

  v5 = [objc_msgSend(a2 "allocWithZone:"init"")];
  v6 = [*(a1 + 16) copyWithZone:a3];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [*(a1 + 24) copyWithZone:a3];
  v9 = *(v5 + 24);
  *(v5 + 24) = v8;

  v10 = [*(a1 + 48) copyWithZone:a3];
  v11 = *(v5 + 48);
  *(v5 + 48) = v10;

  v12 = [*(a1 + 40) copyWithZone:a3];
  v13 = *(v5 + 40);
  *(v5 + 40) = v12;

  v14 = [*(a1 + 32) copyWithZone:a3];
  v15 = *(v5 + 32);
  *(v5 + 32) = v14;

  *(v5 + 11) = *(a1 + 11);
  *(v5 + 9) = *(a1 + 9);
  *(v5 + 10) = *(a1 + 10);
  v16 = [*(a1 + 56) copyWithZone:a3];
  v17 = *(v5 + 56);
  *(v5 + 56) = v16;

  *(v5 + 8) = *(a1 + 8);
  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = objc_opt_class();

  return [(ASDIAPInfo *)self _newCopyWithClass:v5 zone:a3];
}

- (void)encodeWithCoder:(id)a3
{
  adamId = self->_adamId;
  v5 = a3;
  [v5 encodeObject:adamId forKey:@"ASDIAPInfoAdamIdCodingKey"];
  [v5 encodeObject:self->_appAdamId forKey:@"ASDIAPInfoAppAdamIdCodingKey"];
  [v5 encodeObject:self->_purchaseDate forKey:@"ASDIAPInfoPurchaseDateCodingKey"];
  [v5 encodeObject:self->_lastModifiedDate forKey:@"ASDIAPInfoLastModifiedDateCodingKey"];
  [v5 encodeObject:self->_expirationDate forKey:@"ASDIAPInfoExpirationDateCodingKey"];
  [v5 encodeInt:self->_type forKey:@"ASDIAPInfoTypeCodingKey"];
  [v5 encodeBool:self->_hasUsedFreeOffer forKey:@"ASDIAPInfoHasUsedFreeOfferCodingKey"];
  [v5 encodeBool:self->_hasUsedIntroPricingOffer forKey:@"ASDIAPInfoHasUsedIntroPricingOfferCodingKey"];
  [v5 encodeObject:self->_subscriptionFamilyId forKey:@"ASDIAPInfoSubscriptionFamilyIdCodingKey"];
  [v5 encodeBool:self->_autoRenewStatus forKey:@"ASDIAPInfoSubscriptionAutoRenewStatusCodingKey"];
}

- (ASDIAPInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = ASDIAPInfo;
  v5 = [(ASDIAPInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoAdamIdCodingKey"];
    adamId = v5->_adamId;
    v5->_adamId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoAppAdamIdCodingKey"];
    appAdamId = v5->_appAdamId;
    v5->_appAdamId = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoPurchaseDateCodingKey"];
    purchaseDate = v5->_purchaseDate;
    v5->_purchaseDate = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoLastModifiedDateCodingKey"];
    lastModifiedDate = v5->_lastModifiedDate;
    v5->_lastModifiedDate = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoExpirationDateCodingKey"];
    expirationDate = v5->_expirationDate;
    v5->_expirationDate = v14;

    v5->_type = [v4 decodeIntForKey:@"ASDIAPInfoTypeCodingKey"];
    v5->_hasUsedFreeOffer = [v4 decodeBoolForKey:@"ASDIAPInfoHasUsedFreeOfferCodingKey"];
    v5->_hasUsedIntroPricingOffer = [v4 decodeBoolForKey:@"ASDIAPInfoHasUsedIntroPricingOfferCodingKey"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ASDIAPInfoSubscriptionFamilyIdCodingKey"];
    subscriptionFamilyId = v5->_subscriptionFamilyId;
    v5->_subscriptionFamilyId = v16;

    v5->_autoRenewStatus = [v4 decodeBoolForKey:@"ASDIAPInfoSubscriptionAutoRenewStatusCodingKey"];
  }

  return v5;
}

@end