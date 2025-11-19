@interface SLConversationExtensionContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)remoteProxy;
- (void)openURL:(id)a3 completionHandler:(id)a4;
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
  v2 = [(SLConversationExtensionContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)requestDismissal
{
  v2 = [(SLConversationExtensionContext *)self remoteProxy];
  [v2 requestDismissal];
}

- (void)openURL:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SLConversationExtensionContext *)self remoteProxy];
  [v8 openURL:v7 completionHandler:v6];
}

@end