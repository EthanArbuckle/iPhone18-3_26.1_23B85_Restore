@interface SRAuthExtensionContext
- (id)remoteProxy;
- (void)openURL:(id)a3 completionHandler:(id)a4;
@end

@implementation SRAuthExtensionContext

- (id)remoteProxy
{
  v2 = [(SRAuthExtensionContext *)self _auxiliaryConnection];

  return [v2 remoteObjectProxy];
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = [(SRAuthExtensionContext *)self remoteProxy];

  [v6 openURL:a3 completionHandler:a4];
}

@end