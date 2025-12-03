@interface AMSPurchaseResult
- (AMSPurchaseResult)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPurchaseResult:(id)result;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSPurchaseResult

- (unint64_t)hash
{
  correlationID = [(AMSPurchaseResult *)self correlationID];
  v4 = [correlationID hash];
  error = [(AMSPurchaseResult *)self error];
  v6 = [error hash] ^ v4;
  purchase = [(AMSPurchaseResult *)self purchase];
  v8 = [purchase hash];
  responseDictionary = [(AMSPurchaseResult *)self responseDictionary];
  v10 = v6 ^ v8 ^ [responseDictionary hash];
  uRLResponse = [(AMSPurchaseResult *)self URLResponse];
  v12 = [uRLResponse hash];
  v13 = v12 ^ [(AMSPurchaseResult *)self didShowPaymentSheet];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSPurchaseResult *)self isEqualToPurchaseResult:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToPurchaseResult:(id)result
{
  resultCopy = result;
  correlationID = [(AMSPurchaseResult *)self correlationID];
  if (correlationID || ([resultCopy correlationID], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    correlationID2 = [(AMSPurchaseResult *)self correlationID];
    correlationID3 = [resultCopy correlationID];
    if (![correlationID2 isEqual:correlationID3])
    {
      LOBYTE(v11) = 0;
LABEL_49:

      goto LABEL_50;
    }

    v10 = 1;
  }

  else
  {
    v41 = 0;
    v10 = 0;
  }

  error = [(AMSPurchaseResult *)self error];
  if (error || ([resultCopy error], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    error2 = [(AMSPurchaseResult *)self error];
    error3 = [resultCopy error];
    v40 = error2;
    if (![error2 isEqual:error3])
    {
      LOBYTE(v11) = 0;
      goto LABEL_47;
    }

    v38 = 1;
    v39 = v10;
  }

  else
  {
    v39 = v10;
    v36 = 0;
    v38 = 0;
  }

  purchase = [(AMSPurchaseResult *)self purchase];
  if (purchase || ([resultCopy purchase], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    purchase2 = [(AMSPurchaseResult *)self purchase];
    purchase3 = [resultCopy purchase];
    v37 = purchase2;
    v16 = purchase2;
    error2 = purchase3;
    if (![v16 isEqual:purchase3])
    {
      LOBYTE(v11) = 0;
      goto LABEL_43;
    }

    v35 = 1;
  }

  else
  {
    v31 = 0;
    v35 = 0;
  }

  responseDictionary = [(AMSPurchaseResult *)self responseDictionary];
  if (responseDictionary || ([resultCopy responseDictionary], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = purchase;
    responseDictionary2 = [(AMSPurchaseResult *)self responseDictionary];
    responseDictionary3 = [resultCopy responseDictionary];
    v33 = responseDictionary2;
    if (![responseDictionary2 isEqual:responseDictionary3])
    {
      LOBYTE(v11) = 0;
      purchase = v17;
LABEL_36:

      goto LABEL_39;
    }

    v30 = 1;
    purchase = v17;
  }

  else
  {
    v26 = 0;
    v30 = 0;
  }

  v29 = error2;
  uRLResponse = [(AMSPurchaseResult *)self URLResponse];
  if (!uRLResponse)
  {
    uRLResponse2 = [resultCopy URLResponse];
    if (!uRLResponse2)
    {
      uRLResponse2 = 0;
      v25 = 0;
LABEL_31:
      didShowPaymentSheet = [(AMSPurchaseResult *)self didShowPaymentSheet];
      v11 = didShowPaymentSheet ^ [resultCopy didShowPaymentSheet] ^ 1;
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v28 = uRLResponse;
  uRLResponse3 = [(AMSPurchaseResult *)self URLResponse];
  error2 = [resultCopy URLResponse];
  v27 = uRLResponse3;
  if ([uRLResponse3 isEqual:error2])
  {
    v25 = 1;
    uRLResponse = v28;
    goto LABEL_31;
  }

  LOBYTE(v11) = 0;
  uRLResponse = v28;
LABEL_32:

LABEL_33:
  if (uRLResponse)
  {

    v22 = v41;
    error2 = v29;
    if (v30)
    {
LABEL_35:
      v41 = v22;
      goto LABEL_36;
    }
  }

  else
  {

    v22 = v41;
    error2 = v29;
    if (v30)
    {
      goto LABEL_35;
    }
  }

  v41 = v22;
LABEL_39:
  if (responseDictionary)
  {

    if (!v35)
    {
LABEL_44:
      if (purchase)
      {
        goto LABEL_45;
      }

LABEL_54:

      if (v38)
      {
        goto LABEL_46;
      }

      goto LABEL_55;
    }

LABEL_43:

    goto LABEL_44;
  }

  if (v35)
  {
    goto LABEL_43;
  }

  if (!purchase)
  {
    goto LABEL_54;
  }

LABEL_45:

  if (v38)
  {
LABEL_46:
    v10 = v39;
LABEL_47:

    if (error)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

LABEL_55:
  v10 = v39;
  if (error)
  {
LABEL_48:

    if (!v10)
    {
      goto LABEL_50;
    }

    goto LABEL_49;
  }

LABEL_56:

  if (v10)
  {
    goto LABEL_49;
  }

LABEL_50:
  if (!correlationID)
  {
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_alloc_init(AMSPurchaseResult);
  correlationID = [(AMSPurchaseResult *)self correlationID];
  v7 = [correlationID copyWithZone:zone];
  correlationID = v5->_correlationID;
  v5->_correlationID = v7;

  error = [(AMSPurchaseResult *)self error];
  v10 = [error copyWithZone:zone];
  error = v5->_error;
  v5->_error = v10;

  loadURLEventDictionary = [(AMSPurchaseResult *)self loadURLEventDictionary];
  v13 = [loadURLEventDictionary copyWithZone:zone];
  loadURLEventDictionary = v5->_loadURLEventDictionary;
  v5->_loadURLEventDictionary = v13;

  purchase = [(AMSPurchaseResult *)self purchase];
  v16 = [purchase copyWithZone:zone];
  purchase = v5->_purchase;
  v5->_purchase = v16;

  responseDictionary = [(AMSPurchaseResult *)self responseDictionary];
  v19 = [responseDictionary copyWithZone:zone];
  responseDictionary = v5->_responseDictionary;
  v5->_responseDictionary = v19;

  uRLResponse = [(AMSPurchaseResult *)self URLResponse];
  v22 = [uRLResponse copyWithZone:zone];
  URLResponse = v5->_URLResponse;
  v5->_URLResponse = v22;

  v5->_didShowPaymentSheet = self->_didShowPaymentSheet;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  correlationID = [(AMSPurchaseResult *)self correlationID];
  [coderCopy encodeObject:correlationID forKey:@"correlationID"];

  error = [(AMSPurchaseResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  loadURLEventDictionary = [(AMSPurchaseResult *)self loadURLEventDictionary];

  if (loadURLEventDictionary)
  {
    loadURLEventDictionary2 = [(AMSPurchaseResult *)self loadURLEventDictionary];
    [coderCopy ams_encodePropertyListDictionary:loadURLEventDictionary2 format:200 forKey:@"loadURLEventDictionary"];
  }

  purchase = [(AMSPurchaseResult *)self purchase];
  [coderCopy encodeObject:purchase forKey:@"purchase"];

  responseDictionary = [(AMSPurchaseResult *)self responseDictionary];

  if (responseDictionary)
  {
    responseDictionary2 = [(AMSPurchaseResult *)self responseDictionary];
    [coderCopy ams_encodePropertyListDictionary:responseDictionary2 format:200 forKey:@"responseDictionary"];
  }

  uRLResponse = [(AMSPurchaseResult *)self URLResponse];
  [coderCopy encodeObject:uRLResponse forKey:@"URLResponse"];

  [coderCopy encodeBool:-[AMSPurchaseResult didShowPaymentSheet](self forKey:{"didShowPaymentSheet"), @"didShowPaymentSheet"}];
}

- (AMSPurchaseResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = AMSPurchaseResult;
  v5 = [(AMSPurchaseResult *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"correlationID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"purchase"];
    purchase = v5->_purchase;
    v5->_purchase = v10;

    v12 = [coderCopy ams_decodePropertyListDictionaryForKey:@"responseDictionary"];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URLResponse"];
    URLResponse = v5->_URLResponse;
    v5->_URLResponse = v14;

    v16 = [coderCopy ams_decodePropertyListDictionaryForKey:@"loadURLEventDictionary"];
    loadURLEventDictionary = v5->_loadURLEventDictionary;
    v5->_loadURLEventDictionary = v16;

    v5->_didShowPaymentSheet = [coderCopy decodeBoolForKey:@"didShowPaymentSheet"];
  }

  return v5;
}

@end