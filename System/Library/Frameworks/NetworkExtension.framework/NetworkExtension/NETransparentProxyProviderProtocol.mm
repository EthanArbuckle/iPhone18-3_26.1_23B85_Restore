@interface NETransparentProxyProviderProtocol
- (NETransparentProxyProviderProtocol)init;
- (NETransparentProxyProviderProtocol)initWithCoder:(id)coder;
- (NETransparentProxyProviderProtocol)initWithPluginType:(id)type;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NETransparentProxyProviderProtocol

- (NETransparentProxyProviderProtocol)initWithPluginType:(id)type
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v3 = [(NETunnelProviderProtocol *)&v6 initWithPluginType:type];
  v4 = v3;
  if (v3)
  {
    [(NETransparentProxyProviderProtocol *)v3 setOrder:0x7FFFFFFFLL];
  }

  return v4;
}

- (NETransparentProxyProviderProtocol)init
{
  v5.receiver = self;
  v5.super_class = NETransparentProxyProviderProtocol;
  v2 = [(NETunnelProviderProtocol *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(NETransparentProxyProviderProtocol *)v2 setOrder:0x7FFFFFFFLL];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v4 = [(NETunnelProviderProtocol *)&v6 copyWithZone:zone];
  if (v4)
  {
    [v4 setOrder:{-[NETransparentProxyProviderProtocol order](self, "order")}];
  }

  return v4;
}

- (NETransparentProxyProviderProtocol)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = NETransparentProxyProviderProtocol;
  v5 = [(NETunnelProviderProtocol *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_order = [coderCopy decodeIntegerForKey:@"Order"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = NETransparentProxyProviderProtocol;
  coderCopy = coder;
  [(NETunnelProviderProtocol *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[NETransparentProxyProviderProtocol order](self forKey:{"order", v5.receiver, v5.super_class), @"Order"}];
}

@end