@interface AMSCarrierLinkResult
- (AMSCarrierLinkResult)initWithChannelLinkResult:(id)result;
- (AMSCarrierLinkResult)initWithCoder:(id)coder;
- (AMSCarrierLinkResult)initWithLinkParams:(id)params channelCustomerId:(id)id productCode:(id)code statusCode:(id)statusCode error:(id)error;
- (AMSCarrierLinkResult)initWithResponse:(id)response linkParams:(id)params;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSCarrierLinkResult

- (AMSCarrierLinkResult)initWithResponse:(id)response linkParams:(id)params
{
  responseCopy = response;
  paramsCopy = params;
  v24.receiver = self;
  v24.super_class = AMSCarrierLinkResult;
  v9 = [(AMSCarrierLinkResult *)&v24 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_response, response);
    v11 = [responseCopy objectForKeyedSubscript:@"channelCustomerId"];
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

    v14 = [responseCopy objectForKeyedSubscript:@"productCode"];
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

    v17 = [responseCopy objectForKeyedSubscript:@"status"];
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

    objc_storeStrong(&v10->_linkParams, params);
    error = [responseCopy objectForKeyedSubscript:@"error"];
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

- (AMSCarrierLinkResult)initWithChannelLinkResult:(id)result
{
  resultCopy = result;
  response = [resultCopy response];
  v6 = [AMSCarrierLinkParams alloc];
  linkParams = [resultCopy linkParams];

  linkParamsString = [linkParams linkParamsString];
  v9 = [(AMSCarrierLinkParams *)v6 initWithString:linkParamsString];

  v10 = [(AMSCarrierLinkResult *)self initWithResponse:response linkParams:v9];
  return v10;
}

- (AMSCarrierLinkResult)initWithLinkParams:(id)params channelCustomerId:(id)id productCode:(id)code statusCode:(id)statusCode error:(id)error
{
  paramsCopy = params;
  idCopy = id;
  codeCopy = code;
  statusCodeCopy = statusCode;
  errorCopy = error;
  v23.receiver = self;
  v23.super_class = AMSCarrierLinkResult;
  v16 = [(AMSCarrierLinkResult *)&v23 init];
  if (v16)
  {
    v17 = objc_opt_new();
    objc_storeStrong(&v16->_channelCustomerId, id);
    [(NSDictionary *)v17 setObject:idCopy forKeyedSubscript:@"channelCustomerId", paramsCopy];
    objc_storeStrong(&v16->_productCode, code);
    [(NSDictionary *)v17 setObject:codeCopy forKeyedSubscript:@"productCode"];
    objc_storeStrong(&v16->_statusCode, statusCode);
    [(NSDictionary *)v17 setObject:statusCodeCopy forKeyedSubscript:@"status"];
    objc_storeStrong(&v16->_linkParams, params);
    objc_storeStrong(&v16->_error, error);
    localizedDescription = [errorCopy localizedDescription];
    [(NSDictionary *)v17 setObject:localizedDescription forKeyedSubscript:@"error"];

    response = v16->_response;
    v16->_response = v17;
  }

  return v16;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelCustomerId = [(AMSCarrierLinkResult *)self channelCustomerId];
  [coderCopy encodeObject:channelCustomerId forKey:@"channelCustomerId"];

  error = [(AMSCarrierLinkResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  linkParams = [(AMSCarrierLinkResult *)self linkParams];
  [coderCopy encodeObject:linkParams forKey:@"linkParams"];

  productCode = [(AMSCarrierLinkResult *)self productCode];
  [coderCopy encodeObject:productCode forKey:@"productCode"];

  response = [(AMSCarrierLinkResult *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  statusCode = [(AMSCarrierLinkResult *)self statusCode];
  [coderCopy encodeObject:statusCode forKey:@"statusCode"];
}

- (AMSCarrierLinkResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = AMSCarrierLinkResult;
  v5 = [(AMSCarrierLinkResult *)&v20 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"channelCustomerId"];
    channelCustomerId = v5->_channelCustomerId;
    v5->_channelCustomerId = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"error"];
    error = v5->_error;
    v5->_error = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"linkParams"];
    linkParams = v5->_linkParams;
    v5->_linkParams = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCode"];
    productCode = v5->_productCode;
    v5->_productCode = v12;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v15 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"response"];
    response = v5->_response;
    v5->_response = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v17;
  }

  return v5;
}

@end