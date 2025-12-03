@interface ASOHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)serviceContext;
- (void)dismissOverlayWithReply:(id)reply;
- (void)presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate reply:(id)reply;
@end

@implementation ASOHostContext

+ (id)_extensionAuxiliaryHostProtocol
{
  if (qword_10002C7B0 != -1)
  {
    sub_10001800C();
  }

  v3 = qword_10002C7B8;

  return v3;
}

+ (id)_extensionAuxiliaryVendorProtocol
{
  if (qword_10002C7C0 != -1)
  {
    sub_100018020();
  }

  v3 = qword_10002C7C8;

  return v3;
}

- (id)serviceContext
{
  _auxiliaryConnection = [(ASOHostContext *)self _auxiliaryConnection];
  remoteObjectProxy = [_auxiliaryConnection remoteObjectProxy];

  return remoteObjectProxy;
}

- (void)presentOverlayWithConfiguration:(id)configuration delegate:(id)delegate reply:(id)reply
{
  replyCopy = reply;
  delegateCopy = delegate;
  configurationCopy = configuration;
  serviceContext = [(ASOHostContext *)self serviceContext];
  [serviceContext presentOverlayWithConfiguration:configurationCopy delegate:delegateCopy reply:replyCopy];
}

- (void)dismissOverlayWithReply:(id)reply
{
  replyCopy = reply;
  serviceContext = [(ASOHostContext *)self serviceContext];
  [serviceContext dismissOverlayWithReply:replyCopy];
}

@end