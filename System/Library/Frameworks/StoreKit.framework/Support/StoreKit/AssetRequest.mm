@interface AssetRequest
- (AssetRequest)initWithRequest:(id)request properties:(id)properties;
- (AssetRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval;
- (AssetRequest)initWithURL:(id)l properties:(id)properties;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAllowsCellularAccess:(BOOL)access;
- (void)setAllowsConstrainedNetworkAccess:(BOOL)access;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)access;
@end

@implementation AssetRequest

- (AssetRequest)initWithRequest:(id)request properties:(id)properties
{
  requestCopy = request;
  propertiesCopy = properties;
  v14.receiver = self;
  v14.super_class = AssetRequest;
  v8 = -[AssetRequest _initWithCFURLRequest:](&v14, "_initWithCFURLRequest:", [requestCopy _CFURLRequest]);
  if (v8)
  {
    v9 = [propertiesCopy copy];
    properties = v8->_properties;
    v8->_properties = v9;

    if (!v8->_properties)
    {
      v11 = objc_alloc_init(AssetRequestProperties);
      v12 = v8->_properties;
      v8->_properties = v11;
    }

    if (![requestCopy allowsCellularAccess] || (objc_msgSend(propertiesCopy, "allowsCellularAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsCellularAccess:0];
    }

    if (![requestCopy allowsConstrainedNetworkAccess] || (objc_msgSend(propertiesCopy, "allowsConstrainedNetworkAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsConstrainedNetworkAccess:0];
    }

    if (![requestCopy allowsExpensiveNetworkAccess] || (objc_msgSend(propertiesCopy, "allowsExpensiveNetworkAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsExpensiveNetworkAccess:0];
    }
  }

  return v8;
}

- (AssetRequest)initWithURL:(id)l properties:(id)properties
{
  propertiesCopy = properties;
  v7 = [NSURLRequest requestWithURL:l];
  v8 = [(AssetRequest *)self initWithRequest:v7 properties:propertiesCopy];

  return v8;
}

- (AssetRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval
{
  v6 = [NSURLRequest requestWithURL:l cachePolicy:policy timeoutInterval:interval];
  v7 = [(AssetRequest *)self initWithRequest:v6 properties:0];

  return v7;
}

- (void)setAllowsCellularAccess:(BOOL)access
{
  accessCopy = access;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsCellularAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsCellularAccess:accessCopy];
}

- (void)setAllowsConstrainedNetworkAccess:(BOOL)access
{
  accessCopy = access;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsConstrainedNetworkAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsConstrainedNetworkAccess:accessCopy];
}

- (void)setAllowsExpensiveNetworkAccess:(BOOL)access
{
  accessCopy = access;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsExpensiveNetworkAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsExpensiveNetworkAccess:accessCopy];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(AssetRequestProperties *)self->_properties mutableCopyWithZone:zone];
  v7 = [v5 initWithRequest:self properties:v6];

  return v7;
}

@end