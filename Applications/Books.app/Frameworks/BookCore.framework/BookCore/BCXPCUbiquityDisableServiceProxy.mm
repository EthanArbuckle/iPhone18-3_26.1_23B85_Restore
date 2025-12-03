@interface BCXPCUbiquityDisableServiceProxy
- (BCXPCUbiquityDisableServiceProxy)init;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)syncIsLiverpoolAndUbiquityEnabledWithReply:(id)reply;
@end

@implementation BCXPCUbiquityDisableServiceProxy

- (BCXPCUbiquityDisableServiceProxy)init
{
  v7.receiver = self;
  v7.super_class = BCXPCUbiquityDisableServiceProxy;
  v2 = [(BCXPCUbiquityDisableServiceProxy *)&v7 init];
  if (v2)
  {
    v3 = [[NSXPCConnection alloc] initWithServiceName:@"com.apple.ibooks.XPCUbiquityDisableService"];
    connection = v2->_connection;
    v2->_connection = v3;

    v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BCSyncICloudSettingsProtocol];
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v5];

    [(NSXPCConnection *)v2->_connection resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = BCXPCUbiquityDisableServiceProxy;
  [(BCXPCUbiquityDisableServiceProxy *)&v3 dealloc];
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(BCXPCUbiquityDisableServiceProxy *)self connection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5C500;
  v9[3] = &unk_2C8548;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (void)syncIsLiverpoolAndUbiquityEnabledWithReply:(id)reply
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_5C614;
  v6[3] = &unk_2C8548;
  replyCopy = reply;
  v4 = replyCopy;
  v5 = [(BCXPCUbiquityDisableServiceProxy *)self synchronousRemoteObjectProxyWithErrorHandler:v6];
  [v5 isLiverpoolAndUbiquityEnabledWithReply:v4];
}

@end