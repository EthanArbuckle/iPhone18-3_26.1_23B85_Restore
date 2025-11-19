@interface RPBroadcastActivityExtensionContext
- (id)extensionObjectProxy;
@end

@implementation RPBroadcastActivityExtensionContext

- (id)extensionObjectProxy
{
  v2 = [(RPBroadcastActivityExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxyWithErrorHandler:&stru_10000C720];

  return v3;
}

@end