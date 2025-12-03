@interface AssetRequest
- (AssetRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAllowsCellularAccess:(BOOL)access;
- (void)setAllowsConstrainedNetworkAccess:(BOOL)access;
- (void)setAllowsExpensiveNetworkAccess:(BOOL)access;
@end

@implementation AssetRequest

- (AssetRequest)initWithURL:(id)l cachePolicy:(unint64_t)policy timeoutInterval:(double)interval
{
  v6 = [NSURLRequest requestWithURL:l cachePolicy:policy timeoutInterval:interval];
  v7 = sub_10030B7F0(self, v6, 0);

  return v7;
}

- (void)setAllowsCellularAccess:(BOOL)access
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsCellularAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsCellularAccess = access;
  }
}

- (void)setAllowsConstrainedNetworkAccess:(BOOL)access
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsConstrainedNetworkAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsConstrainedNetworkAccess = access;
  }
}

- (void)setAllowsExpensiveNetworkAccess:(BOOL)access
{
  v6.receiver = self;
  v6.super_class = AssetRequest;
  [(AssetRequest *)&v6 setAllowsExpensiveNetworkAccess:?];
  properties = self->_properties;
  if (properties)
  {
    properties->_allowsExpensiveNetworkAccess = access;
  }
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v5 = [objc_opt_class() allocWithZone:zone];
  v6 = [(AssetRequestProperties *)self->_properties mutableCopyWithZone:zone];
  v7 = sub_10030B7F0(v5, self, v6);

  return v7;
}

@end