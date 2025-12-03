@interface SKServiceBroker
+ (id)_serviceConnectionWithName:(id)name;
+ (id)defaultBroker;
- (SKServiceBroker)init;
- (id)_serviceConnection;
- (id)externalGatewayServiceWithErrorHandler:(id)handler;
- (id)inAppBindingServiceWithErrorHandler:(id)handler;
- (id)inAppEngagementServiceWithErrorHandler:(id)handler;
- (id)messageServiceWithErrorHandler:(id)handler;
- (id)offerEligibilityServiceWithErrorHandler:(id)handler;
- (id)policyServiceWithErrorHandler:(id)handler;
- (id)productLookupServiceWithErrorHandler:(id)handler;
- (id)productServiceWithErrorHandler:(id)handler;
- (id)purchaseIntentServiceWithErrorHandler:(id)handler;
- (id)storeKitServiceWithErrorHandler:(id)handler;
- (id)storeKitSynchronousServiceWithErrorHandler:(id)handler;
- (void)_serviceConnectionInvalidated;
@end

@implementation SKServiceBroker

- (SKServiceBroker)init
{
  v6.receiver = self;
  v6.super_class = SKServiceBroker;
  v2 = [(SKServiceBroker *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSLock);
    serviceConnectionLock = v2->_serviceConnectionLock;
    v2->_serviceConnectionLock = v3;
  }

  return v2;
}

+ (id)defaultBroker
{
  if (qword_1000D5308[0] != -1)
  {
    sub_10008E19C();
  }

  v3 = qword_1000D5300;

  return v3;
}

- (id)externalGatewayServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008B9C;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)inAppBindingServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008C84;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)inAppEngagementServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008D6C;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)messageServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008E54;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)policyServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100008F3C;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)productLookupServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100009024;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)productServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000910C;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)purchaseIntentServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000091F4;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)offerEligibilityServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000092DC;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)storeKitServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000093C4;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)storeKitSynchronousServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _serviceConnection = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000094AC;
  v9[3] = &unk_1000BE4F0;
  v10 = handlerCopy;
  v6 = handlerCopy;
  v7 = [_serviceConnection synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

- (id)_serviceConnection
{
  [(NSLock *)self->_serviceConnectionLock lock];
  p_serviceConnection = &self->_serviceConnection;
  serviceConnection = self->_serviceConnection;
  if (!serviceConnection)
  {
    v5 = +[XPCInterface serviceName];
    v6 = [SKServiceBroker _serviceConnectionWithName:v5];

    [v6 resume];
    objc_storeStrong(&self->_serviceConnection, v6);
    objc_initWeak(&location, self);
    v7 = self->_serviceConnection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100009694;
    v13[3] = &unk_1000BE518;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v13];
    v8 = *p_serviceConnection;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000096D4;
    v11[3] = &unk_1000BE518;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v8 setInvalidationHandler:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);

    serviceConnection = *p_serviceConnection;
  }

  v9 = serviceConnection;
  [(NSLock *)self->_serviceConnectionLock unlock];

  return v9;
}

+ (id)_serviceConnectionWithName:(id)name
{
  nameCopy = name;
  v4 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:0];

  v5 = +[XPCInterface service];
  [v4 setRemoteObjectInterface:v5];

  v6 = +[XPCInterface client];
  [v4 setExportedInterface:v6];

  v7 = +[SKClientBroker defaultBroker];
  [v4 setExportedObject:v7];

  return v4;
}

- (void)_serviceConnectionInvalidated
{
  [(NSLock *)self->_serviceConnectionLock lock];
  serviceConnection = self->_serviceConnection;
  self->_serviceConnection = 0;

  serviceConnectionLock = self->_serviceConnectionLock;

  [(NSLock *)serviceConnectionLock unlock];
}

@end