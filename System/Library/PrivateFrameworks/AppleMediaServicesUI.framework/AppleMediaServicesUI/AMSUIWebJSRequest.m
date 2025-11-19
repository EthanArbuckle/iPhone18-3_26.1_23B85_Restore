@interface AMSUIWebJSRequest
- (AMSUIWebJSRequest)init;
- (AMSUIWebJSRequest)initWithCoder:(id)a3;
- (AMSUIWebJSRequest)initWithServiceName:(id)a3 logKey:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMSUIWebJSRequest

- (AMSUIWebJSRequest)init
{
  v3.receiver = self;
  v3.super_class = AMSUIWebJSRequest;
  return [(AMSUIWebJSRequest *)&v3 init];
}

- (AMSUIWebJSRequest)initWithServiceName:(id)a3 logKey:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = AMSUIWebJSRequest;
  v9 = [(AMSUIWebJSRequest *)&v13 init];
  if (v9)
  {
    if (v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = AMSGenerateLogCorrelationKey();
    }

    logKey = v9->_logKey;
    v9->_logKey = v10;

    objc_storeStrong(&v9->_service, a3);
  }

  return v9;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIWebJSRequest *)self logKey];
  [v4 encodeObject:v5 forKey:@"kCodingKeyLogKey"];

  v6 = [(AMSUIWebJSRequest *)self options];
  [v4 encodeObject:v6 forKey:@"kCodingKeyOptions"];

  v7 = [(AMSUIWebJSRequest *)self service];
  [v4 encodeObject:v7 forKey:@"kCodingKeyService"];
}

- (AMSUIWebJSRequest)initWithCoder:(id)a3
{
  v18[5] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = AMSUIWebJSRequest;
  v5 = [(AMSUIWebJSRequest *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v18[2] = objc_opt_class();
    v18[3] = objc_opt_class();
    v18[4] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:5];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v9;

    v11 = [v4 decodeObjectOfClasses:v8 forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyService"];
    service = v5->_service;
    v5->_service = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end