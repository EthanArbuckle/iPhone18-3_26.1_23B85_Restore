@interface NETransparentProxyProviderProtocol
- (NETransparentProxyProviderProtocol)init;
- (NETransparentProxyProviderProtocol)initWithCoder:(id)a3;
- (NETransparentProxyProviderProtocol)initWithPluginType:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NETransparentProxyProviderProtocol

- (NETransparentProxyProviderProtocol)initWithPluginType:(id)a3
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v3 = [(NETunnelProviderProtocol *)&v6 initWithPluginType:a3];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NETransparentProxyProviderProtocol;
  v4 = [(NETunnelProviderProtocol *)&v6 copyWithZone:a3];
  if (v4)
  {
    [v4 setOrder:{-[NETransparentProxyProviderProtocol order](self, "order")}];
  }

  return v4;
}

- (NETransparentProxyProviderProtocol)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NETransparentProxyProviderProtocol;
  v5 = [(NETunnelProviderProtocol *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_order = [v4 decodeIntegerForKey:@"Order"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = NETransparentProxyProviderProtocol;
  v4 = a3;
  [(NETunnelProviderProtocol *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[NETransparentProxyProviderProtocol order](self forKey:{"order", v5.receiver, v5.super_class), @"Order"}];
}

@end