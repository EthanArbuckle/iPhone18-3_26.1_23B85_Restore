@interface AMSPurchaseResult
- (AMSPurchaseResult)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPurchaseResult:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSPurchaseResult

- (unint64_t)hash
{
  v3 = [(AMSPurchaseResult *)self correlationID];
  v4 = [v3 hash];
  v5 = [(AMSPurchaseResult *)self error];
  v6 = [v5 hash] ^ v4;
  v7 = [(AMSPurchaseResult *)self purchase];
  v8 = [v7 hash];
  v9 = [(AMSPurchaseResult *)self responseDictionary];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [(AMSPurchaseResult *)self URLResponse];
  v12 = [v11 hash];
  v13 = v12 ^ [(AMSPurchaseResult *)self didShowPaymentSheet];

  return v10 ^ v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(AMSPurchaseResult *)self isEqualToPurchaseResult:v4];
  }

  return v5;
}

- (BOOL)isEqualToPurchaseResult:(id)a3
{
  v8 = a3;
  v9 = [(AMSPurchaseResult *)self correlationID];
  if (v9 || ([v8 correlationID], (v41 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = [(AMSPurchaseResult *)self correlationID];
    v5 = [v8 correlationID];
    if (![v4 isEqual:v5])
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

  v12 = [(AMSPurchaseResult *)self error];
  if (v12 || ([v8 error], (v36 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(AMSPurchaseResult *)self error];
    v6 = [v8 error];
    v40 = v3;
    if (![v3 isEqual:v6])
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

  v13 = [(AMSPurchaseResult *)self purchase];
  if (v13 || ([v8 purchase], (v31 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v14 = [(AMSPurchaseResult *)self purchase];
    v15 = [v8 purchase];
    v37 = v14;
    v16 = v14;
    v3 = v15;
    if (![v16 isEqual:v15])
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

  v34 = [(AMSPurchaseResult *)self responseDictionary];
  if (v34 || ([v8 responseDictionary], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v17 = v13;
    v18 = [(AMSPurchaseResult *)self responseDictionary];
    v32 = [v8 responseDictionary];
    v33 = v18;
    if (![v18 isEqual:v32])
    {
      LOBYTE(v11) = 0;
      v13 = v17;
LABEL_36:

      goto LABEL_39;
    }

    v30 = 1;
    v13 = v17;
  }

  else
  {
    v26 = 0;
    v30 = 0;
  }

  v29 = v3;
  v19 = [(AMSPurchaseResult *)self URLResponse];
  if (!v19)
  {
    v24 = [v8 URLResponse];
    if (!v24)
    {
      v24 = 0;
      v25 = 0;
LABEL_31:
      v21 = [(AMSPurchaseResult *)self didShowPaymentSheet];
      v11 = v21 ^ [v8 didShowPaymentSheet] ^ 1;
      if (!v25)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }
  }

  v28 = v19;
  v20 = [(AMSPurchaseResult *)self URLResponse];
  v3 = [v8 URLResponse];
  v27 = v20;
  if ([v20 isEqual:v3])
  {
    v25 = 1;
    v19 = v28;
    goto LABEL_31;
  }

  LOBYTE(v11) = 0;
  v19 = v28;
LABEL_32:

LABEL_33:
  if (v19)
  {

    v22 = v41;
    v3 = v29;
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
    v3 = v29;
    if (v30)
    {
      goto LABEL_35;
    }
  }

  v41 = v22;
LABEL_39:
  if (v34)
  {

    if (!v35)
    {
LABEL_44:
      if (v13)
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

  if (!v13)
  {
    goto LABEL_54;
  }

LABEL_45:

  if (v38)
  {
LABEL_46:
    v10 = v39;
LABEL_47:

    if (v12)
    {
      goto LABEL_48;
    }

    goto LABEL_56;
  }

LABEL_55:
  v10 = v39;
  if (v12)
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
  if (!v9)
  {
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = objc_alloc_init(AMSPurchaseResult);
  v6 = [(AMSPurchaseResult *)self correlationID];
  v7 = [v6 copyWithZone:a3];
  correlationID = v5->_correlationID;
  v5->_correlationID = v7;

  v9 = [(AMSPurchaseResult *)self error];
  v10 = [v9 copyWithZone:a3];
  error = v5->_error;
  v5->_error = v10;

  v12 = [(AMSPurchaseResult *)self loadURLEventDictionary];
  v13 = [v12 copyWithZone:a3];
  loadURLEventDictionary = v5->_loadURLEventDictionary;
  v5->_loadURLEventDictionary = v13;

  v15 = [(AMSPurchaseResult *)self purchase];
  v16 = [v15 copyWithZone:a3];
  purchase = v5->_purchase;
  v5->_purchase = v16;

  v18 = [(AMSPurchaseResult *)self responseDictionary];
  v19 = [v18 copyWithZone:a3];
  responseDictionary = v5->_responseDictionary;
  v5->_responseDictionary = v19;

  v21 = [(AMSPurchaseResult *)self URLResponse];
  v22 = [v21 copyWithZone:a3];
  URLResponse = v5->_URLResponse;
  v5->_URLResponse = v22;

  v5->_didShowPaymentSheet = self->_didShowPaymentSheet;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v12 = a3;
  v4 = [(AMSPurchaseResult *)self correlationID];
  [v12 encodeObject:v4 forKey:@"correlationID"];

  v5 = [(AMSPurchaseResult *)self error];
  [v12 encodeObject:v5 forKey:@"error"];

  v6 = [(AMSPurchaseResult *)self loadURLEventDictionary];

  if (v6)
  {
    v7 = [(AMSPurchaseResult *)self loadURLEventDictionary];
    [v12 ams_encodePropertyListDictionary:v7 format:200 forKey:@"loadURLEventDictionary"];
  }

  v8 = [(AMSPurchaseResult *)self purchase];
  [v12 encodeObject:v8 forKey:@"purchase"];

  v9 = [(AMSPurchaseResult *)self responseDictionary];

  if (v9)
  {
    v10 = [(AMSPurchaseResult *)self responseDictionary];
    [v12 ams_encodePropertyListDictionary:v10 format:200 forKey:@"responseDictionary"];
  }

  v11 = [(AMSPurchaseResult *)self URLResponse];
  [v12 encodeObject:v11 forKey:@"URLResponse"];

  [v12 encodeBool:-[AMSPurchaseResult didShowPaymentSheet](self forKey:{"didShowPaymentSheet"), @"didShowPaymentSheet"}];
}

- (AMSPurchaseResult)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = AMSPurchaseResult;
  v5 = [(AMSPurchaseResult *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"correlationID"];
    correlationID = v5->_correlationID;
    v5->_correlationID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"purchase"];
    purchase = v5->_purchase;
    v5->_purchase = v10;

    v12 = [v4 ams_decodePropertyListDictionaryForKey:@"responseDictionary"];
    responseDictionary = v5->_responseDictionary;
    v5->_responseDictionary = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URLResponse"];
    URLResponse = v5->_URLResponse;
    v5->_URLResponse = v14;

    v16 = [v4 ams_decodePropertyListDictionaryForKey:@"loadURLEventDictionary"];
    loadURLEventDictionary = v5->_loadURLEventDictionary;
    v5->_loadURLEventDictionary = v16;

    v5->_didShowPaymentSheet = [v4 decodeBoolForKey:@"didShowPaymentSheet"];
  }

  return v5;
}

@end