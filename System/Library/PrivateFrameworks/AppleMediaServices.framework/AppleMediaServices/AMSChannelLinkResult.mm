@interface AMSChannelLinkResult
- (AMSChannelLinkResult)initWithCoder:(id)coder;
- (AMSChannelLinkResult)initWithResponse:(id)response linkParams:(id)params supplementaryFields:(id)fields;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSChannelLinkResult

- (AMSChannelLinkResult)initWithResponse:(id)response linkParams:(id)params supplementaryFields:(id)fields
{
  responseCopy = response;
  paramsCopy = params;
  fieldsCopy = fields;
  v33.receiver = self;
  v33.super_class = AMSChannelLinkResult;
  v12 = [(AMSChannelLinkResult *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_response, response);
    v14 = [responseCopy objectForKeyedSubscript:@"channelCustomerId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    channelCustomerId = v13->_channelCustomerId;
    v13->_channelCustomerId = v15;

    v17 = [responseCopy objectForKeyedSubscript:@"productCode"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    productCode = v13->_productCode;
    v13->_productCode = v18;

    v20 = [responseCopy objectForKeyedSubscript:@"status"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    statusCode = v13->_statusCode;
    v13->_statusCode = v21;

    v23 = [responseCopy objectForKeyedSubscript:@"subId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    subscriptionId = v13->_subscriptionId;
    v13->_subscriptionId = v24;

    objc_storeStrong(&v13->_linkParams, params);
    objc_storeStrong(&v13->_supplementaryFields, fields);
    postLinkingFields = [responseCopy objectForKeyedSubscript:@"postLinkingFields"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = postLinkingFields;

      if (!v27)
      {
        goto LABEL_19;
      }

      v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v27];
      postLinkingFields = v13->_postLinkingFields;
      v13->_postLinkingFields = v28;
    }

    else
    {
      v27 = 0;
    }

LABEL_19:
    error = [responseCopy objectForKeyedSubscript:@"error"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v30 = error;

      if (!v30)
      {
LABEL_24:

        goto LABEL_25;
      }

      v31 = AMSError(12, @"Channel link failure", v30, 0);
      error = v13->_error;
      v13->_error = v31;
    }

    else
    {
      v30 = 0;
    }

    goto LABEL_24;
  }

LABEL_25:

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  channelCustomerId = [(AMSChannelLinkResult *)self channelCustomerId];
  [coderCopy encodeObject:channelCustomerId forKey:@"channelCustomerId"];

  error = [(AMSChannelLinkResult *)self error];
  [coderCopy encodeObject:error forKey:@"error"];

  linkParams = [(AMSChannelLinkResult *)self linkParams];
  [coderCopy encodeObject:linkParams forKey:@"linkParams"];

  postLinkingFields = [(AMSChannelLinkResult *)self postLinkingFields];
  [coderCopy encodeObject:postLinkingFields forKey:@"postLinkingFields"];

  productCode = [(AMSChannelLinkResult *)self productCode];
  [coderCopy encodeObject:productCode forKey:@"productCode"];

  response = [(AMSChannelLinkResult *)self response];
  [coderCopy encodeObject:response forKey:@"response"];

  statusCode = [(AMSChannelLinkResult *)self statusCode];
  [coderCopy encodeObject:statusCode forKey:@"statusCode"];

  subscriptionId = [(AMSChannelLinkResult *)self subscriptionId];
  [coderCopy encodeObject:subscriptionId forKey:@"subscriptionId"];
}

- (AMSChannelLinkResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v27.receiver = self;
  v27.super_class = AMSChannelLinkResult;
  v5 = [(AMSChannelLinkResult *)&v27 init];
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

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"postLinkingFields"];
    postLinkingFields = v5->_postLinkingFields;
    v5->_postLinkingFields = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"productCode"];
    productCode = v5->_productCode;
    v5->_productCode = v17;

    ams_JSONClasses = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v20 = [coderCopy decodeObjectOfClasses:ams_JSONClasses forKey:@"response"];
    response = v5->_response;
    v5->_response = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionId"];
    subscriptionId = v5->_subscriptionId;
    v5->_subscriptionId = v24;
  }

  return v5;
}

@end