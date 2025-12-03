@interface LNXPCListenerEndpointContainer
- (LNAction)resolvedAction;
- (NSData)auditTokenData;
- (NSXPCListenerEndpoint)listenerEndpoint;
- (void)setAuditTokenData:(id)data;
- (void)setListenerEndpoint:(id)endpoint;
- (void)setResolvedAction:(id)action;
@end

@implementation LNXPCListenerEndpointContainer

- (NSXPCListenerEndpoint)listenerEndpoint
{
  v2 = XPCListenerEndpointContainer.listenerEndpoint.getter();

  return v2;
}

- (void)setListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  selfCopy = self;
  XPCListenerEndpointContainer.listenerEndpoint.setter(endpointCopy);
}

- (NSData)auditTokenData
{
  v2 = XPCListenerEndpointContainer.auditTokenData.getter();
  v4 = v3;
  v5 = sub_18F520D2C();
  sub_18F123A1C(v2, v4);

  return v5;
}

- (void)setAuditTokenData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = sub_18F520D4C();
  v7 = v6;

  XPCListenerEndpointContainer.auditTokenData.setter(v5, v7);
}

- (LNAction)resolvedAction
{
  v2 = XPCListenerEndpointContainer.resolvedAction.getter();

  return v2;
}

- (void)setResolvedAction:(id)action
{
  actionCopy = action;
  selfCopy = self;
  XPCListenerEndpointContainer.resolvedAction.setter(actionCopy);
}

@end