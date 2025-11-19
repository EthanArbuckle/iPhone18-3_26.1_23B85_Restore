@interface AssetRequest
- (AssetRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAllowsCellularAccess:(BOOL)a3;
- (void)setAllowsConstrainedNetworkAccess:(BOOL)a3;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3;
@end

@implementation AssetRequest

- (AssetRequest)initWithURL:(id)a3 cachePolicy:(unint64_t)a4 timeoutInterval:(double)a5
{
  v6 = [NSURLRequest requestWithURL:a3 cachePolicy:a4 timeoutInterval:a5];
  v7 = sub_10030B7F0(self, v6, 0);

  return v7;
}

- (void)setAllowsCellularAccess:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsCellularAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsCellularAccess = a3;
  }
}

- (void)setAllowsConstrainedNetworkAccess:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsConstrainedNetworkAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsConstrainedNetworkAccess = a3;
  }
}

- (void)setAllowsExpensiveNetworkAccess:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsExpensiveNetworkAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsExpensiveNetworkAccess = a3;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v5 = [objc_opt_class() allocWithZone:a3];
  v6 = [(AssetRequestProperties *)self->_properties mutableCopyWithZone:a3];
  v7 = sub_10030B7F0(v5, self, v6);

  return v7;
}

@end