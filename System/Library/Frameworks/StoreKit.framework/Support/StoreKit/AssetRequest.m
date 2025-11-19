@interface AssetRequest
- (AssetRequest)initWithRequest:(id)a3 properties:(id)a4;
- (AssetRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5;
- (AssetRequest)initWithURL:(id)a3 properties:(id)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAllowsCellularAccess:(BOOL)a3;
- (void)setAllowsConstrainedNetworkAccess:(BOOL)a3;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3;
@end

@implementation AssetRequest

- (AssetRequest)initWithRequest:(id)a3 properties:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = AssetRequest;
  v8 = -[AssetRequest _initWithCFURLRequest:](&v14, "_initWithCFURLRequest:", [v6 _CFURLRequest]);
  if (v8)
  {
    v9 = [v7 copy];
    properties = v8->_properties;
    v8->_properties = v9;

    if (!v8->_properties)
    {
      v11 = objc_alloc_init(AssetRequestProperties);
      v12 = v8->_properties;
      v8->_properties = v11;
    }

    if (![v6 allowsCellularAccess] || (objc_msgSend(v7, "allowsCellularAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsCellularAccess:0];
    }

    if (![v6 allowsConstrainedNetworkAccess] || (objc_msgSend(v7, "allowsConstrainedNetworkAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsConstrainedNetworkAccess:0];
    }

    if (![v6 allowsExpensiveNetworkAccess] || (objc_msgSend(v7, "allowsExpensiveNetworkAccess") & 1) == 0)
    {
      [(AssetRequest *)v8 setAllowsExpensiveNetworkAccess:0];
    }
  }

  return v8;
}

- (AssetRequest)initWithURL:(id)a3 properties:(id)a4
{
  v6 = a4;
  v7 = [NSURLRequest requestWithURL:a3];
  v8 = [(AssetRequest *)self initWithRequest:v7 properties:v6];

  return v8;
}

- (AssetRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5
{
  v6 = [NSURLRequest requestWithURL:a3 cachePolicy:a4 timeoutInterval:a5];
  v7 = [(AssetRequest *)self initWithRequest:v6 properties:0];

  return v7;
}

- (void)setAllowsCellularAccess:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsCellularAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsCellularAccess:v3];
}

- (void)setAllowsConstrainedNetworkAccess:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsConstrainedNetworkAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsConstrainedNetworkAccess:v3];
}

- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = AssetRequest;
  [(AssetRequest *)&v5 setAllowsExpensiveNetworkAccess:?];
  [(AssetRequestProperties *)self->_properties setAllowsExpensiveNetworkAccess:v3];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(AssetRequestProperties *)self->_properties mutableCopyWithZone:a3];
  v7 = [v5 initWithRequest:self properties:v6];

  return v7;
}

@end