@interface RPBroadcastActivityExtensionContext
- (id)extensionObjectProxy;
@end

@implementation RPBroadcastActivityExtensionContext

- (id)extensionObjectProxy
{
  _auxiliaryConnection = [(RPBroadcastActivityExtensionContext *)self _auxiliaryConnection];
  v3 = [_auxiliaryConnection remoteObjectProxyWithErrorHandler:&stru_10000C720];

  return v3;
}

@end