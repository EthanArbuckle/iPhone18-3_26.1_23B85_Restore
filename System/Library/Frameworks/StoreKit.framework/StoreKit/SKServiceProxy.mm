@interface SKServiceProxy
+ (id)inAppClientInterface;
+ (id)serviceProxy;
- (SKServiceProxy)init;
- (id)objectProxyWithErrorHandler:(id)a3;
- (id)serviceConnection;
- (void)_serviceConnectionInvalidated;
@end

@implementation SKServiceProxy

+ (id)inAppClientInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F29D6A10];
  v3 = MEMORY[0x1E695DFD8];
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v4, v5, v6, v7, v8, objc_opt_class(), 0}];
  [v2 setClasses:v9 forSelector:sel_downloadStatusChanged_ argumentIndex:0 ofReply:0];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = [v10 setWithObjects:{v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
  [v2 setClasses:v18 forSelector:sel_updatedTransactions_ argumentIndex:0 ofReply:0];

  return v2;
}

+ (id)serviceProxy
{
  if (serviceProxy_onceToken != -1)
  {
    +[SKServiceProxy serviceProxy];
  }

  v3 = serviceProxy__sharedServiceProxy;

  return v3;
}

uint64_t __30__SKServiceProxy_serviceProxy__block_invoke()
{
  v0 = objc_alloc_init(SKServiceProxy);
  v1 = serviceProxy__sharedServiceProxy;
  serviceProxy__sharedServiceProxy = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (SKServiceProxy)init
{
  v6.receiver = self;
  v6.super_class = SKServiceProxy;
  v2 = [(SKServiceProxy *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AD10]);
    serviceConnectionLock = v2->_serviceConnectionLock;
    v2->_serviceConnectionLock = v3;
  }

  return v2;
}

- (id)serviceConnection
{
  [(NSLock *)self->_serviceConnectionLock lock];
  if (!self->_serviceConnection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.storeagent.storekit" options:0];
    serviceConnection = self->_serviceConnection;
    self->_serviceConnection = v3;

    v5 = +[SKServiceProxy inAppServiceInterface];
    [(NSXPCConnection *)self->_serviceConnection setRemoteObjectInterface:v5];

    v6 = +[SKServiceProxy inAppClientInterface];
    [(NSXPCConnection *)self->_serviceConnection setExportedInterface:v6];

    v7 = +[SKClientBroker defaultBroker];
    [(NSXPCConnection *)self->_serviceConnection setExportedObject:v7];

    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x3032000000;
    v14[3] = __Block_byref_object_copy__2;
    v14[4] = __Block_byref_object_dispose__2;
    v15 = self;
    v8 = self->_serviceConnection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __35__SKServiceProxy_serviceConnection__block_invoke;
    v13[3] = &unk_1E7B279A8;
    v13[4] = v14;
    [(NSXPCConnection *)v8 setInterruptionHandler:v13];
    v9 = self->_serviceConnection;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __35__SKServiceProxy_serviceConnection__block_invoke_2;
    v12[3] = &unk_1E7B279A8;
    v12[4] = v14;
    [(NSXPCConnection *)v9 setInvalidationHandler:v12];
    [(NSXPCConnection *)self->_serviceConnection resume];
    _Block_object_dispose(v14, 8);
  }

  [(NSLock *)self->_serviceConnectionLock unlock];
  v10 = self->_serviceConnection;

  return v10;
}

- (void)_serviceConnectionInvalidated
{
  [(NSLock *)self->_serviceConnectionLock lock];
  serviceConnection = self->_serviceConnection;
  self->_serviceConnection = 0;

  serviceConnectionLock = self->_serviceConnectionLock;

  [(NSLock *)serviceConnectionLock unlock];
}

- (id)objectProxyWithErrorHandler:(id)a3
{
  v4 = a3;
  v5 = [(SKServiceProxy *)self serviceConnection];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __46__SKServiceProxy_objectProxyWithErrorHandler___block_invoke;
  v9[3] = &unk_1E7B27DA8;
  v10 = v4;
  v6 = v4;
  v7 = [v5 remoteObjectProxyWithErrorHandler:v9];

  return v7;
}

uint64_t __46__SKServiceProxy_objectProxyWithErrorHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end