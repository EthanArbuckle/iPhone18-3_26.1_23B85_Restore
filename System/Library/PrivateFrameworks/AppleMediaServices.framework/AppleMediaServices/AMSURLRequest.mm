@interface AMSURLRequest
+ (id)logableDescriptionForRequest:(id)a3;
- (AMSURLRequest)initWithRequest:(id)a3;
- (AMSURLRequest)initWithRequest:(id)a3 bag:(id)a4;
- (AMSURLRequest)initWithRequest:(id)a3 properties:(id)a4;
- (AMSURLRequest)initWithRequest:(id)a3 purchaseType:(int64_t)a4 buyParams:(id)a5;
- (AMSURLRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5;
- (NSURLRequest)urlRequest;
- (id)_initWithCFURLRequest:(_CFURLRequest *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
@end

@implementation AMSURLRequest

- (id)_initWithCFURLRequest:(_CFURLRequest *)a3
{
  v7.receiver = self;
  v7.super_class = AMSURLRequest;
  v3 = [(AMSURLRequest *)&v7 _initWithCFURLRequest:a3];
  if (v3)
  {
    v4 = objc_alloc_init(AMSURLRequestProperties);
    v5 = v3[3];
    v3[3] = v4;
  }

  return v3;
}

- (AMSURLRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5
{
  v9.receiver = self;
  v9.super_class = AMSURLRequest;
  v5 = [(AMSURLRequest *)&v9 initWithURL:a3 cachePolicy:a4 timeoutInterval:a5];
  if (v5)
  {
    v6 = objc_alloc_init(AMSURLRequestProperties);
    properties = v5->_properties;
    v5->_properties = v6;
  }

  return v5;
}

- (AMSURLRequest)initWithRequest:(id)a3
{
  v5 = a3;
  v6 = [a3 _CFURLRequest];

  return [(AMSURLRequest *)self _initWithCFURLRequest:v6];
}

- (AMSURLRequest)initWithRequest:(id)a3 properties:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = AMSURLRequest;
  v7 = -[AMSURLRequest _initWithCFURLRequest:](&v11, sel__initWithCFURLRequest_, [a3 _CFURLRequest]);
  if (v7)
  {
    v8 = [v6 copy];
    properties = v7->_properties;
    v7->_properties = v8;
  }

  return v7;
}

- (AMSURLRequest)initWithRequest:(id)a3 purchaseType:(int64_t)a4 buyParams:(id)a5
{
  v8 = a5;
  v15.receiver = self;
  v15.super_class = AMSURLRequest;
  v9 = -[AMSURLRequest _initWithCFURLRequest:](&v15, sel__initWithCFURLRequest_, [a3 _CFURLRequest]);
  if (v9)
  {
    v10 = [[AMSPurchase alloc] initWithPurchaseType:a4 buyParams:v8];
    v11 = [[AMSPurchaseInfo alloc] initWithPurchase:v10];
    v12 = objc_alloc_init(AMSURLRequestProperties);
    [(AMSURLRequestProperties *)v12 setPurchaseInfo:v11];
    properties = v9->_properties;
    v9->_properties = v12;
  }

  return v9;
}

- (AMSURLRequest)initWithRequest:(id)a3 bag:(id)a4
{
  v6 = a4;
  v7 = [(AMSURLRequest *)self initWithRequest:a3];
  v8 = v7;
  if (v7)
  {
    [(AMSURLRequestProperties *)v7->_properties setBag:v6];
  }

  return v8;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [AMSURLRequest allocWithZone:?];
  v10.receiver = self;
  v10.super_class = AMSURLRequest;
  v6 = [(AMSURLRequest *)&v10 mutableCopyWithZone:a3];
  v7 = [(AMSURLRequest *)self properties];
  v8 = [(AMSURLRequest *)v5 initWithRequest:v6 properties:v7];

  return v8;
}

+ (id)logableDescriptionForRequest:(id)a3
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = [v4 URL];
  v8 = AMSLogableURL(v7);
  v9 = [v3 stringWithFormat:@"<%@: %p> { URL: %@ }", v6, v4, v8];

  return v9;
}

- (NSURLRequest)urlRequest
{
  v2 = [objc_alloc(MEMORY[0x1E695AC68]) _initWithCFURLRequest:{-[AMSURLRequest _CFURLRequest](self, "_CFURLRequest")}];

  return v2;
}

@end