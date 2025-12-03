@interface TKTokenDriverHostContext
+ (id)_allowedItemPayloadClasses;
- (TKHostTokenDriver)driver;
- (TKHostTokenRegistry)registry;
- (TKSmartCardTokenRegistrationRegistry)smartCardRegistrationRegistry;
- (TKTokenDriverProtocol)tokenDriverProtocol;
- (TKVirtualTokenDelegate)virtualTokenDelegate;
- (id)tokenDriverConnection;
- (void)getTokenConfigurationEndpointWithReply:(id)reply;
@end

@implementation TKTokenDriverHostContext

+ (id)_allowedItemPayloadClasses
{
  if (qword_100043418 != -1)
  {
    sub_100020C44();
  }

  v3 = qword_100043410;

  return v3;
}

- (void)getTokenConfigurationEndpointWithReply:(id)reply
{
  replyCopy = reply;
  registry = [(TKTokenDriverHostContext *)self registry];
  v9 = registry;
  if (!registry)
  {
    sub_100020C58(a2, self);
    registry = 0;
  }

  listener = [registry listener];
  endpoint = [listener endpoint];
  replyCopy[2](replyCopy, endpoint);
}

- (id)tokenDriverConnection
{
  if (+[TKVirtualTokenExtension isAvailable])
  {
    virtualTokenDelegate = [(TKTokenDriverHostContext *)self virtualTokenDelegate];
    connection = [virtualTokenDelegate connection];
  }

  else
  {
    connection = [(TKTokenDriverHostContext *)self _auxiliaryConnection];
  }

  return connection;
}

- (TKTokenDriverProtocol)tokenDriverProtocol
{
  [(TKTokenDriverHostContext *)self setError:0];
  tokenDriverConnection = [(TKTokenDriverHostContext *)self tokenDriverConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018C88;
  v6[3] = &unk_100038CE0;
  v6[4] = self;
  v4 = [tokenDriverConnection synchronousRemoteObjectProxyWithErrorHandler:v6];

  return v4;
}

- (TKHostTokenDriver)driver
{
  WeakRetained = objc_loadWeakRetained(&self->_driver);

  return WeakRetained;
}

- (TKHostTokenRegistry)registry
{
  WeakRetained = objc_loadWeakRetained(&self->_registry);

  return WeakRetained;
}

- (TKSmartCardTokenRegistrationRegistry)smartCardRegistrationRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_smartCardRegistrationRegistry);

  return WeakRetained;
}

- (TKVirtualTokenDelegate)virtualTokenDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_virtualTokenDelegate);

  return WeakRetained;
}

@end