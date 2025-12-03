@interface SRAuthExtensionContext
- (id)remoteProxy;
- (void)openURL:(id)l completionHandler:(id)handler;
@end

@implementation SRAuthExtensionContext

- (id)remoteProxy
{
  _auxiliaryConnection = [(SRAuthExtensionContext *)self _auxiliaryConnection];

  return [_auxiliaryConnection remoteObjectProxy];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  remoteProxy = [(SRAuthExtensionContext *)self remoteProxy];

  [remoteProxy openURL:l completionHandler:handler];
}

@end