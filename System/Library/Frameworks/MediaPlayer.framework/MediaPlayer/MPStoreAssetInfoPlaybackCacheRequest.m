@interface MPStoreAssetInfoPlaybackCacheRequest
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation MPStoreAssetInfoPlaybackCacheRequest

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v6 = 1;
    goto LABEL_19;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_18;
  }

  if (self->_accountID != v4->_accountID)
  {
    goto LABEL_18;
  }

  if (self->_delegatedAccountID != v4->_delegatedAccountID)
  {
    goto LABEL_18;
  }

  requestType = self->_requestType;
  if (requestType != v4->_requestType)
  {
    goto LABEL_18;
  }

  v6 = 1;
  if (requestType > 2)
  {
    if (requestType == 3)
    {
      storeRadioAdamID = self->_storeRadioAdamID;
      storeSubscriptionAdamID = v4->_storeRadioAdamID;
      goto LABEL_23;
    }

    if (requestType != 4)
    {
      goto LABEL_19;
    }

    if (self->_storeCloudID == v4->_storeCloudID && self->_storePurchasedAdamID == v4->_storePurchasedAdamID && self->_storeSubscriptionAdamID == v4->_storeSubscriptionAdamID)
    {
      cloudUniversalLibraryID = self->_cloudUniversalLibraryID;
      if (cloudUniversalLibraryID == v4->_cloudUniversalLibraryID)
      {
        goto LABEL_19;
      }

      goto LABEL_9;
    }

LABEL_18:
    v6 = 0;
    goto LABEL_19;
  }

  if (requestType >= 2)
  {
    if (requestType != 2)
    {
      goto LABEL_19;
    }

    storeRadioAdamID = self->_storeSubscriptionAdamID;
    storeSubscriptionAdamID = v4->_storeSubscriptionAdamID;
LABEL_23:
    v6 = storeRadioAdamID == storeSubscriptionAdamID;
    goto LABEL_19;
  }

  cloudUniversalLibraryID = self->_redownloadParameters;
  if (cloudUniversalLibraryID != v4->_redownloadParameters)
  {
LABEL_9:
    v6 = [(NSString *)cloudUniversalLibraryID isEqual:?];
  }

LABEL_19:

  return v6;
}

- (unint64_t)hash
{
  requestType = self->_requestType;
  v3 = self->_delegatedAccountID ^ self->_accountID ^ requestType;
  if (requestType > 2)
  {
    if (requestType == 3)
    {
      storeRadioAdamID = self->_storeRadioAdamID;
    }

    else
    {
      if (requestType != 4)
      {
        return v3;
      }

      storeCloudID = self->_storeCloudID;
      storePurchasedAdamID = self->_storePurchasedAdamID;
      storeSubscriptionAdamID = self->_storeSubscriptionAdamID;
      storeRadioAdamID = storeSubscriptionAdamID ^ storeCloudID ^ storePurchasedAdamID ^ [(NSString *)self->_cloudUniversalLibraryID hash];
    }

LABEL_10:
    v3 ^= storeRadioAdamID;
    return v3;
  }

  if (requestType >= 2)
  {
    if (requestType != 2)
    {
      return v3;
    }

    storeRadioAdamID = self->_storeSubscriptionAdamID;
    goto LABEL_10;
  }

  v3 ^= [(NSString *)self->_redownloadParameters hash];
  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = v4;
  if (v4)
  {
    *(v4 + 8) = self->_accountID;
    objc_storeStrong((v4 + 40), self->_cloudUniversalLibraryID);
    *(v5 + 16) = self->_delegatedAccountID;
    objc_storeStrong((v5 + 32), self->_redownloadParameters);
    *(v5 + 24) = self->_requestType;
    *(v5 + 72) = self->_storeRadioAdamID;
    *(v5 + 56) = self->_storeCloudID;
    *(v5 + 64) = self->_storePurchasedAdamID;
    *(v5 + 48) = self->_storeSubscriptionAdamID;
  }

  return v5;
}

@end