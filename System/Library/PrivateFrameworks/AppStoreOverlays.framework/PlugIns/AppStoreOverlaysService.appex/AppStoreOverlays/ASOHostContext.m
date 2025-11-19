@interface ASOHostContext
+ (id)_extensionAuxiliaryHostProtocol;
+ (id)_extensionAuxiliaryVendorProtocol;
- (id)serviceContext;
- (void)dismissOverlayWithReply:(id)a3;
- (void)presentOverlayWithConfiguration:(id)a3 delegate:(id)a4 reply:(id)a5;
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
  v2 = [(ASOHostContext *)self _auxiliaryConnection];
  v3 = [v2 remoteObjectProxy];

  return v3;
}

- (void)presentOverlayWithConfiguration:(id)a3 delegate:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(ASOHostContext *)self serviceContext];
  [v11 presentOverlayWithConfiguration:v10 delegate:v9 reply:v8];
}

- (void)dismissOverlayWithReply:(id)a3
{
  v4 = a3;
  v5 = [(ASOHostContext *)self serviceContext];
  [v5 dismissOverlayWithReply:v4];
}

@end