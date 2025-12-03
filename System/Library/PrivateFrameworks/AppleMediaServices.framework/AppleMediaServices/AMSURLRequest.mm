@interface AMSURLRequest
+ (id)logableDescriptionForRequest:(id)request;
- (AMSURLRequest)initWithRequest:(id)request;
- (AMSURLRequest)initWithRequest:(id)request bag:(id)bag;
- (AMSURLRequest)initWithRequest:(id)request properties:(id)properties;
- (AMSURLRequest)initWithRequest:(id)request purchaseType:(int64_t)type buyParams:(id)params;
- (AMSURLRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval;
- (NSURLRequest)urlRequest;
- (id)_initWithCFURLRequest:(_CFURLRequest *)request;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation AMSURLRequest

- (id)_initWithCFURLRequest:(_CFURLRequest *)request
{
  v7.receiver = self;
  v7.super_class = AMSURLRequest;
  v3 = [(AMSURLRequest *)&v7 _initWithCFURLRequest:request];
  if (v3)
  {
    v4 = objc_alloc_init(AMSURLRequestProperties);
    v5 = v3[3];
    v3[3] = v4;
  }

  return v3;
}

- (AMSURLRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval
{
  v9.receiver = self;
  v9.super_class = AMSURLRequest;
  v5 = [(AMSURLRequest *)&v9 initWithURL:l cachePolicy:policy timeoutInterval:interval];
  if (v5)
  {
    v6 = objc_alloc_init(AMSURLRequestProperties);
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (AMSURLRequest)initWithRequest:(id)request
{
  requestCopy = request;
  _CFURLRequest = [request _CFURLRequest];

  return [(AMSURLRequest *)self _initWithCFURLRequest:_CFURLRequest];
}

- (AMSURLRequest)initWithRequest:(id)request properties:(id)properties
{
  propertiesCopy = properties;
  v11.receiver = self;
  v11.super_class = AMSURLRequest;
  v7 = -[AMSURLRequest _initWithCFURLRequest:](&v11, sel__initWithCFURLRequest_, [request _CFURLRequest]);
  if (v7)
  {
    v8 = [propertiesCopy copy];
    properties = v7->_properties;
    v7->_properties = v8;
  }

  return v7;
}

- (AMSURLRequest)initWithRequest:(id)request purchaseType:(int64_t)type buyParams:(id)params
{
  paramsCopy = params;
  v15.receiver = self;
  v15.super_class = AMSURLRequest;
  v9 = -[AMSURLRequest _initWithCFURLRequest:](&v15, sel__initWithCFURLRequest_, [request _CFURLRequest]);
  if (v9)
  {
    v10 = [[AMSPurchase alloc] initWithPurchaseType:type buyParams:paramsCopy];
    v11 = [[AMSPurchaseInfo alloc] initWithPurchase:v10];
    v12 = objc_alloc_init(AMSURLRequestProperties);
    [(AMSURLRequestProperties *)v12 setPurchaseInfo:v11];
    properties = v9->_properties;
    v9->_properties = v12;
  }

  return v9;
}

- (AMSURLRequest)initWithRequest:(id)request bag:(id)bag
{
  bagCopy = bag;
  v7 = [(AMSURLRequest *)self initWithRequest:request];
  v8 = v7;
  if (v7)
  {
    [(AMSURLRequestProperties *)v7->_properties setBag:bagCopy];
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [AMSURLRequest allocWithZone:?];
  v10.receiver = self;
  v10.super_class = AMSURLRequest;
  v6 = [(AMSURLRequest *)&v10 mutableCopyWithZone:zone];
  properties = [(AMSURLRequest *)self properties];
  v8 = [(AMSURLRequest *)v5 initWithRequest:v6 properties:properties];

  return v8;
}

+ (id)logableDescriptionForRequest:(id)request
{
  v3 = MEMORY[0x1E696AEC0];
  requestCopy = request;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [requestCopy URL];
  v8 = AMSLogableURL(v7);
  v9 = [v3 stringWithFormat:@"<%@: %p> { URL: %@ }", v6, requestCopy, v8];

  return v9;
}

- (NSURLRequest)urlRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695AC68]) _initWithCFURLRequest:{-[AMSURLRequest _CFURLRequest](self, "_CFURLRequest")}];

  return v2;
}

@end