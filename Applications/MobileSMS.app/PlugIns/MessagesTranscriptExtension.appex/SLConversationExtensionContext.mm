@interface SLConversationExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteProxy;
- (void)openURL:(id)l completionHandler:(id)handler;
- (void)requestDismissal;
@end

@implementation SLConversationExtensionContext

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_100008B18 != -1)
  {
    sub_100001A08();
  }

  v3 = qword_100008B10;

  return v3;
}

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_100008B28 != -1)
  {
    sub_100001A1C();
  }

  v3 = qword_100008B20;

  return v3;
}

- (id)remoteProxy
{
  _auxiliaryConnection = [(SLConversationExtensionContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)requestDismissal
{
  remoteProxy = [(SLConversationExtensionContext *)self remoteProxy];
  [remoteProxy requestDismissal];
}

- (void)openURL:(id)l completionHandler:(id)handler
{
  handlerCopy = handler;
  lCopy = l;
  remoteProxy = [(SLConversationExtensionContext *)self remoteProxy];
  [remoteProxy openURL:lCopy completionHandler:handlerCopy];
}

@end