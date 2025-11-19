@interface SKServiceBroker
+ (id)_serviceConnectionWithName:(id)a3;
+ (id)defaultBroker;
- (SKServiceBroker)init;
- (id)_serviceConnection;
- (id)externalGatewayServiceWithErrorHandler:(id)a3;
- (id)inAppBindingServiceWithErrorHandler:(id)a3;
- (id)inAppEngagementServiceWithErrorHandler:(id)a3;
- (id)messageServiceWithErrorHandler:(id)a3;
- (id)offerEligibilityServiceWithErrorHandler:(id)a3;
- (id)policyServiceWithErrorHandler:(id)a3;
- (id)productLookupServiceWithErrorHandler:(id)a3;
- (id)productServiceWithErrorHandler:(id)a3;
- (id)purchaseIntentServiceWithErrorHandler:(id)a3;
- (id)storeKitServiceWithErrorHandler:(id)a3;
- (id)storeKitSynchronousServiceWithErrorHandler:(id)a3;
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
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    serviceConnectionLock = v2->_serviceConnectionLock;
    v2->_serviceConnectionLock = v3;
  }

  return v2;
}

+ (id)defaultBroker
{
  if (defaultBroker_onceToken_0 != -1)
  {
    +[SKServiceBroker defaultBroker];
  }

  v3 = defaultBroker__defaultServiceBroker;

  return v3;
}

uint64_t __32__SKServiceBroker_defaultBroker__block_invoke()
{
  v0 = objc_alloc_init(SKServiceBroker);
  v1 = defaultBroker__defaultServiceBroker;
  defaultBroker__defaultServiceBroker = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)externalGatewayServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SKServiceBroker_externalGatewayServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __58__SKServiceBroker_externalGatewayServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)inAppBindingServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__SKServiceBroker_inAppBindingServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __55__SKServiceBroker_inAppBindingServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)inAppEngagementServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__SKServiceBroker_inAppEngagementServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __58__SKServiceBroker_inAppEngagementServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)messageServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SKServiceBroker_messageServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __50__SKServiceBroker_messageServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)policyServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__SKServiceBroker_policyServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __49__SKServiceBroker_policyServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)productLookupServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__SKServiceBroker_productLookupServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __56__SKServiceBroker_productLookupServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)productServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __50__SKServiceBroker_productServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __50__SKServiceBroker_productServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)purchaseIntentServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__SKServiceBroker_purchaseIntentServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __57__SKServiceBroker_purchaseIntentServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)offerEligibilityServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__SKServiceBroker_offerEligibilityServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __59__SKServiceBroker_offerEligibilityServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)storeKitServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __51__SKServiceBroker_storeKitServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __51__SKServiceBroker_storeKitServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (id)storeKitSynchronousServiceWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceBroker *)self _serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __62__SKServiceBroker_storeKitSynchronousServiceWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __62__SKServiceBroker_storeKitSynchronousServiceWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
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
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __37__SKServiceBroker__serviceConnection__block_invoke;
    v13[3] = &unk_1E7B28BE0;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v13];
    v8 = *p_serviceConnection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__SKServiceBroker__serviceConnection__block_invoke_2;
    v11[3] = &unk_1E7B28BE0;
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

void __37__SKServiceBroker__serviceConnection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

void __37__SKServiceBroker__serviceConnection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _serviceConnectionInvalidated];
}

+ (id)_serviceConnectionWithName:(id)a3
{
  v3 = MEMORY[0x1E696B0B8];
  v4 = a3;
  v5 = [[v3 alloc] initWithMachServiceName:v4 options:0];

  v6 = +[XPCInterface service];
  [v5 setRemoteObjectInterface:v6];

  v7 = +[XPCInterface client];
  [v5 setExportedInterface:v7];

  v8 = +[SKClientBroker defaultBroker];
  [v5 setExportedObject:v8];

  return v5;
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