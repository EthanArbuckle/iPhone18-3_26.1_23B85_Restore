@interface AMSCarrierLinkResult
- (AMSCarrierLinkResult)initWithChannelLinkResult:(id)a3;
- (AMSCarrierLinkResult)initWithCoder:(id)a3;
- (AMSCarrierLinkResult)initWithLinkParams:(id)a3 channelCustomerId:(id)a4 productCode:(id)a5 statusCode:(id)a6 error:(id)a7;
- (AMSCarrierLinkResult)initWithResponse:(id)a3 linkParams:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSCarrierLinkResult

- (AMSCarrierLinkResult)initWithResponse:(id)a3 linkParams:(id)a4
{
  v7 = a3;
  v8 = a4;
  v24.receiver = self;
  v24.super_class = AMSCarrierLinkResult;
  v9 = [(AMSCarrierLinkResult *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, a3);
    v11 = [v7 objectForKeyedSubscript:@"channelCustomerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    channelCustomerId = v10->_channelCustomerId;
    v10->_channelCustomerId = v12;

    v14 = [v7 objectForKeyedSubscript:@"productCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    productCode = v10->_productCode;
    v10->_productCode = v15;

    v17 = [v7 objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    statusCode = v10->_statusCode;
    v10->_statusCode = v18;

    objc_storeStrong(&v10->_linkParams, a4);
    error = [v7 objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = error;

      if (!v21)
      {
LABEL_16:

        goto LABEL_17;
      }

      v22 = AMSError(12, @"Carrier link failure", v21, 0);
      error = v10->_error;
      v10->_error = v22;
    }

    else
    {
      v21 = 0;
    }

    goto LABEL_16;
  }

LABEL_17:

  return v10;
}

- (AMSCarrierLinkResult)initWithChannelLinkResult:(id)a3
{
  v4 = a3;
  v5 = [v4 response];
  v6 = [AMSCarrierLinkParams alloc];
  v7 = [v4 linkParams];

  v8 = [v7 linkParamsString];
  v9 = [(AMSCarrierLinkParams *)v6 initWithString:v8];

  v10 = [(AMSCarrierLinkResult *)self initWithResponse:v5 linkParams:v9];
  return v10;
}

- (AMSCarrierLinkResult)initWithLinkParams:(id)a3 channelCustomerId:(id)a4 productCode:(id)a5 statusCode:(id)a6 error:(id)a7
{
  v21 = a3;
  v22 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v23.receiver = self;
  v23.super_class = AMSCarrierLinkResult;
  v16 = [(AMSCarrierLinkResult *)&v23 init];
  if (v16)
  {
    v17 = objc_opt_new();
    objc_storeStrong(&v16->_channelCustomerId, a4);
    [(NSDictionary *)v17 setObject:v22 forKeyedSubscript:@"channelCustomerId", v21];
    objc_storeStrong(&v16->_productCode, a5);
    [(NSDictionary *)v17 setObject:v13 forKeyedSubscript:@"productCode"];
    objc_storeStrong(&v16->_statusCode, a6);
    [(NSDictionary *)v17 setObject:v14 forKeyedSubscript:@"status"];
    objc_storeStrong(&v16->_linkParams, a3);
    objc_storeStrong(&v16->_error, a7);
    v18 = [v15 localizedDescription];
    [(NSDictionary *)v17 setObject:v18 forKeyedSubscript:@"error"];

    response = v16->_response;
    v16->_response = v17;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSCarrierLinkResult *)self channelCustomerId];
  [v4 encodeObject:v5 forKey:@"channelCustomerId"];

  v6 = [(AMSCarrierLinkResult *)self error];
  [v4 encodeObject:v6 forKey:@"error"];

  v7 = [(AMSCarrierLinkResult *)self linkParams];
  [v4 encodeObject:v7 forKey:@"linkParams"];

  v8 = [(AMSCarrierLinkResult *)self productCode];
  [v4 encodeObject:v8 forKey:@"productCode"];

  v9 = [(AMSCarrierLinkResult *)self response];
  [v4 encodeObject:v9 forKey:@"response"];

  v10 = [(AMSCarrierLinkResult *)self statusCode];
  [v4 encodeObject:v10 forKey:@"statusCode"];
}

- (AMSCarrierLinkResult)initWithCoder:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AMSCarrierLinkResult;
  v5 = [(AMSCarrierLinkResult *)&v20 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"channelCustomerId"];
    channelCustomerId = v5->_channelCustomerId;
    v5->_channelCustomerId = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"linkParams"];
    linkParams = v5->_linkParams;
    v5->_linkParams = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productCode"];
    productCode = v5->_productCode;
    v5->_productCode = v12;

    v14 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"response"];
    response = v5->_response;
    v5->_response = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v17;
  }

  return v5;
}

@end