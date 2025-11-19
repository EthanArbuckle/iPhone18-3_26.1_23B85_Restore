@interface LNXPCListenerEndpointContainer
- (LNAction)resolvedAction;
- (NSData)auditTokenData;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (void)setAuditTokenData:(id)a3;
- (void)setListenerEndpoint:(id)a3;
- (void)setResolvedAction:(id)a3;
@end

@implementation LNXPCListenerEndpointContainer

- (NSXPCListenerEndpoint)listenerEndpoint
{
  v2 = XPCListenerEndpointContainer.listenerEndpoint.getter();

  return v2;
}

- (void)setListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = self;
  XPCListenerEndpointContainer.listenerEndpoint.setter(v4);
}

- (NSData)auditTokenData
{
  v2 = XPCListenerEndpointContainer.auditTokenData.getter();
  v4 = v3;
  v5 = sub_18F520D2C();
  sub_18F123A1C(v2, v4);

  return v5;
}

- (void)setAuditTokenData:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_18F520D4C();
  v7 = v6;

  XPCListenerEndpointContainer.auditTokenData.setter(v5, v7);
}

- (LNAction)resolvedAction
{
  v2 = XPCListenerEndpointContainer.resolvedAction.getter();

  return v2;
}

- (void)setResolvedAction:(id)a3
{
  v4 = a3;
  v5 = self;
  XPCListenerEndpointContainer.resolvedAction.setter(v4);
}

@end