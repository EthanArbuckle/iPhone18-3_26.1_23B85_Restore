@interface SRAuthHostExtensionContext
- (id)remoteProxy;
- (void)openURL:(id)l completionHandler:(id)handler;
@end

@implementation SRAuthHostExtensionContext

- (id)remoteProxy
{
  _auxiliaryConnection = [(SRAuthHostExtensionContext *)self _auxiliaryConnection];

  return [_auxiliaryConnection remoteObjectProxy];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  v5 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
  v6 = *(handler + 2);

  v6(handler, v5);
}

@end