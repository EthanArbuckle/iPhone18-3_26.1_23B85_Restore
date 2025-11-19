@interface TKTokenDriverHostContext
+ (id)_allowedItemPayloadClasses;
- (TKHostTokenDriver)driver;
- (TKHostTokenRegistry)registry;
- (TKSmartCardTokenRegistrationRegistry)smartCardRegistrationRegistry;
- (TKTokenDriverProtocol)tokenDriverProtocol;
- (TKVirtualTokenDelegate)virtualTokenDelegate;
- (id)tokenDriverConnection;
- (void)getTokenConfigurationEndpointWithReply:(id)a3;
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

- (void)getTokenConfigurationEndpointWithReply:(id)a3
{
  v5 = a3;
  v6 = [(TKTokenDriverHostContext *)self registry];
  v9 = v6;
  if (!v6)
  {
    sub_100020C58(a2, self);
    v6 = 0;
  }

  v7 = [v6 listener];
  v8 = [v7 endpoint];
  v5[2](v5, v8);
}

- (id)tokenDriverConnection
{
  if (+[TKVirtualTokenExtension isAvailable])
  {
    v3 = [(TKTokenDriverHostContext *)self virtualTokenDelegate];
    v4 = [v3 connection];
  }

  else
  {
    v4 = [(TKTokenDriverHostContext *)self _auxiliaryConnection];
  }

  return v4;
}

- (TKTokenDriverProtocol)tokenDriverProtocol
{
  [(TKTokenDriverHostContext *)self setError:0];
  v3 = [(TKTokenDriverHostContext *)self tokenDriverConnection];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100018C88;
  v6[3] = &unk_100038CE0;
  v6[4] = self;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v6];

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