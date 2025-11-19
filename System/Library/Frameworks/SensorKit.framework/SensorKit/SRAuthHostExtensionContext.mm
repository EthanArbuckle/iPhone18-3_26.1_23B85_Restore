@interface SRAuthHostExtensionContext
- (id)remoteProxy;
- (void)openURL:(id)a3 completionHandler:(id)a4;
@end

@implementation SRAuthHostExtensionContext

- (id)remoteProxy
{
  v2 = [(SRAuthHostExtensionContext *)self _auxiliaryConnection];

  return [v2 remoteObjectProxy];
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v5 = [objc_msgSend(MEMORY[0x1E6963608] "defaultWorkspace")];
  v6 = *(a4 + 2);

  v6(a4, v5);
}

@end