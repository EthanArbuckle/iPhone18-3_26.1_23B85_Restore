@interface AMSChannelLinkResult
- (AMSChannelLinkResult)initWithCoder:(id)a3;
- (AMSChannelLinkResult)initWithResponse:(id)a3 linkParams:(id)a4 supplementaryFields:(id)a5;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSChannelLinkResult

- (AMSChannelLinkResult)initWithResponse:(id)a3 linkParams:(id)a4 supplementaryFields:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v33.receiver = self;
  v33.super_class = AMSChannelLinkResult;
  v12 = [(AMSChannelLinkResult *)&v33 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_response, a3);
    v14 = [v9 objectForKeyedSubscript:@"channelCustomerId"];
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

    v17 = [v9 objectForKeyedSubscript:@"productCode"];
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

    v20 = [v9 objectForKeyedSubscript:@"status"];
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

    v23 = [v9 objectForKeyedSubscript:@"subId"];
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

    objc_storeStrong(&v13->_linkParams, a4);
    objc_storeStrong(&v13->_supplementaryFields, a5);
    postLinkingFields = [v9 objectForKeyedSubscript:@"postLinkingFields"];
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
    error = [v9 objectForKeyedSubscript:@"error"];
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSChannelLinkResult *)self channelCustomerId];
  [v4 encodeObject:v5 forKey:@"channelCustomerId"];

  v6 = [(AMSChannelLinkResult *)self error];
  [v4 encodeObject:v6 forKey:@"error"];

  v7 = [(AMSChannelLinkResult *)self linkParams];
  [v4 encodeObject:v7 forKey:@"linkParams"];

  v8 = [(AMSChannelLinkResult *)self postLinkingFields];
  [v4 encodeObject:v8 forKey:@"postLinkingFields"];

  v9 = [(AMSChannelLinkResult *)self productCode];
  [v4 encodeObject:v9 forKey:@"productCode"];

  v10 = [(AMSChannelLinkResult *)self response];
  [v4 encodeObject:v10 forKey:@"response"];

  v11 = [(AMSChannelLinkResult *)self statusCode];
  [v4 encodeObject:v11 forKey:@"statusCode"];

  v12 = [(AMSChannelLinkResult *)self subscriptionId];
  [v4 encodeObject:v12 forKey:@"subscriptionId"];
}

- (AMSChannelLinkResult)initWithCoder:(id)a3
{
  v4 = a3;
  v27.receiver = self;
  v27.super_class = AMSChannelLinkResult;
  v5 = [(AMSChannelLinkResult *)&v27 init];
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

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"postLinkingFields"];
    postLinkingFields = v5->_postLinkingFields;
    v5->_postLinkingFields = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"productCode"];
    productCode = v5->_productCode;
    v5->_productCode = v17;

    v19 = [MEMORY[0x1E695DFD8] ams_JSONClasses];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"response"];
    response = v5->_response;
    v5->_response = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"statusCode"];
    statusCode = v5->_statusCode;
    v5->_statusCode = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subscriptionId"];
    subscriptionId = v5->_subscriptionId;
    v5->_subscriptionId = v24;
  }

  return v5;
}

@end