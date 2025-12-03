@interface AMSEngagementResult
+ (id)_updatedBodyFromValue:(id)value request:(id)request;
- (AMSEngagementResult)initWithCoder:(id)coder;
- (AMSEngagementResult)initWithModel:(id)model;
- (NSString)ams_buyParams;
- (id)ams_requestActionFromRequest:(id)request;
- (id)expressCheckoutCardSelection;
- (id)modelForClass:(Class)class error:(id *)error;
- (int64_t)expressCheckoutPath;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSEngagementResult

- (int64_t)expressCheckoutPath
{
  selfCopy = self;
  v3 = AMSEngagementResult.expressCheckoutPath()();

  return v3;
}

- (id)expressCheckoutCardSelection
{
  selfCopy = self;
  v3 = AMSEngagementResult.expressCheckoutCardSelection()();

  return v3;
}

- (NSString)ams_buyParams
{
  userInfo = [(AMSEngagementResult *)self userInfo];
  v3 = [userInfo objectForKeyedSubscript:@"buyParams"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)ams_requestActionFromRequest:(id)request
{
  v31 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  userInfo = [(AMSEngagementResult *)self userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"requestAction"];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v7 = 0;
    goto LABEL_7;
  }

  v7 = v6;

  if (!v7)
  {
LABEL_7:
    v11 = 0;
    goto LABEL_30;
  }

  v8 = [v7 objectForKeyedSubscript:@"url"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    v9 = 0;
    goto LABEL_9;
  }

  v9 = v8;

  if (!v9)
  {
LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = [MEMORY[0x1E695DFF8] URLWithString:v9];
LABEL_10:
  v12 = [v7 objectForKeyedSubscript:@"type"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if ([v13 isEqualToString:@"retry"])
  {
    if (v10)
    {
      [AMSURLAction redirectActionWithURL:v10];
    }

    else
    {
      +[AMSURLAction retryAction];
    }
    v14 = ;
  }

  else
  {
    v14 = +[AMSURLAction proceedAction];
  }

  v11 = v14;
  ams_buyParams = [(AMSEngagementResult *)self ams_buyParams];

  if (ams_buyParams)
  {
    v16 = +[AMSLogConfig sharedConfig];
    if (!v16)
    {
      v16 = +[AMSLogConfig sharedConfig];
    }

    oSLogObject = [v16 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v18 = objc_opt_class();
      AMSLogKey();
      v19 = v9;
      v21 = v20 = v10;
      v27 = 138543618;
      v28 = v18;
      v29 = 2114;
      v30 = v21;
      _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_DEFAULT, "%{public}@: [%{public}@] Dropping updated body because buy params exist", &v27, 0x16u);

      v10 = v20;
      v9 = v19;
    }
  }

  else
  {
    v22 = objc_opt_class();
    v16 = [v7 objectForKeyedSubscript:@"body"];
    v23 = [v22 _updatedBodyFromValue:v16 request:requestCopy];
    [v11 setUpdatedBody:v23];
  }

  v24 = [v7 objectForKeyedSubscript:@"headers"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v25 = v24;
  }

  else
  {
    v25 = 0;
  }

  [v11 setUpdatedHeaders:v25];
LABEL_30:

  return v11;
}

+ (id)_updatedBodyFromValue:(id)value request:(id)request
{
  v23 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  requestCopy = request;
  if (valueCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [valueCopy dataUsingEncoding:4];
    }

    else
    {
      allHTTPHeaderFields = [requestCopy allHTTPHeaderFields];
      v9 = [allHTTPHeaderFields objectForKeyedSubscript:@"Content-Type"];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = 0;
        v7 = [AMSData dataWithObject:valueCopy encoding:[AMSData dataEncodingFromContentType:v9] error:&v16];
        v10 = v16;
        if (v10)
        {
          v11 = +[AMSLogConfig sharedConfig];
          if (!v11)
          {
            v11 = +[AMSLogConfig sharedConfig];
          }

          oSLogObject = [v11 OSLogObject];
          if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
          {
            v13 = objc_opt_class();
            v14 = AMSLogKey();
            *buf = 138543874;
            v18 = v13;
            v19 = 2114;
            v20 = v14;
            v21 = 2114;
            v22 = v10;
            _os_log_impl(&dword_192869000, oSLogObject, OS_LOG_TYPE_ERROR, "%{public}@: [%{public}@] Failed to encode data from engagement request. %{public}@", buf, 0x20u);
          }
        }
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (AMSEngagementResult)initWithModel:(id)model
{
  modelCopy = model;
  v5 = [(AMSEngagementResult *)self init];
  if (v5)
  {
    v6 = [AMSEngagementUtils encodeModel:modelCopy];
    modelData = v5->_modelData;
    v5->_modelData = v6;
  }

  return v5;
}

- (id)modelForClass:(Class)class error:(id *)error
{
  modelData = [(AMSEngagementResult *)self modelData];
  v7 = [AMSEngagementUtils modelFromData:modelData class:class error:error];

  return v7;
}

- (AMSEngagementResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = AMSEngagementResult;
  v5 = [(AMSEngagementResult *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyCarrierLinkResult"];
    carrierLinkResult = v5->_carrierLinkResult;
    v5->_carrierLinkResult = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyModelData"];
    modelData = v5->_modelData;
    v5->_modelData = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyPurchaseResult"];
    purchaseResult = v5->_purchaseResult;
    v5->_purchaseResult = v10;

    ams_PLISTClasses = [MEMORY[0x1E695DFD8] ams_PLISTClasses];
    v13 = [coderCopy decodeObjectOfClasses:ams_PLISTClasses forKey:@"kCodingKeyUserInfo"];
    userInfo = v5->_userInfo;
    v5->_userInfo = v13;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  carrierLinkResult = [(AMSEngagementResult *)self carrierLinkResult];
  [coderCopy encodeObject:carrierLinkResult forKey:@"kCodingKeyCarrierLinkResult"];

  purchaseResult = [(AMSEngagementResult *)self purchaseResult];
  [coderCopy encodeObject:purchaseResult forKey:@"kCodingKeyPurchaseResult"];

  modelData = [(AMSEngagementResult *)self modelData];
  [coderCopy encodeObject:modelData forKey:@"kCodingKeyModelData"];

  userInfo = [(AMSEngagementResult *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"kCodingKeyUserInfo"];
}

@end