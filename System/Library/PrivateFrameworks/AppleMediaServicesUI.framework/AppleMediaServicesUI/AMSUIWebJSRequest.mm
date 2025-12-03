@interface AMSUIWebJSRequest
- (AMSUIWebJSRequest)init;
- (AMSUIWebJSRequest)initWithCoder:(id)coder;
- (AMSUIWebJSRequest)initWithServiceName:(id)name logKey:(id)key;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMSUIWebJSRequest

- (AMSUIWebJSRequest)init
{
  v3.receiver = self;
  v3.super_class = AMSUIWebJSRequest;
  return [(AMSUIWebJSRequest *)&v3 init];
}

- (AMSUIWebJSRequest)initWithServiceName:(id)name logKey:(id)key
{
  nameCopy = name;
  keyCopy = key;
  v13.receiver = self;
  v13.super_class = AMSUIWebJSRequest;
  v9 = [(AMSUIWebJSRequest *)&v13 init];
  if (v9)
  {
    if (keyCopy)
    {
      v10 = keyCopy;
    }

    else
    {
      v10 = AMSGenerateLogCorrelationKey();
    }

    logKey = v9->_logKey;
    v9->_logKey = v10;

    objc_storeStrong(&v9->_service, name);
  }

  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  logKey = [(AMSUIWebJSRequest *)self logKey];
  [coderCopy encodeObject:logKey forKey:@"kCodingKeyLogKey"];

  options = [(AMSUIWebJSRequest *)self options];
  [coderCopy encodeObject:options forKey:@"kCodingKeyOptions"];

  service = [(AMSUIWebJSRequest *)self service];
  [coderCopy encodeObject:service forKey:@"kCodingKeyService"];
}

- (AMSUIWebJSRequest)initWithCoder:(id)coder
{
  v18[5] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyLogKey"];
    logKey = v5->_logKey;
    v5->_logKey = v9;

    v11 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCodingKeyOptions"];
    options = v5->_options;
    v5->_options = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCodingKeyService"];
    service = v5->_service;
    v5->_service = v13;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

@end