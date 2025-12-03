@interface ARServerConnection
- (ARServerConnection)initWithListenerEndpoint:(id)endpoint;
- (ARServerConnection)initWithServiceName:(id)name options:(unint64_t)options queue:(id)queue;
- (ARServerConnectionDelegate)delegate;
- (NSXPCConnection)connection;
- (id)interruptionHandler;
- (id)invalidationHandler;
- (id)remoteObjectProxy;
- (id)remoteObjectProxyWithErrorHandler:(id)handler;
- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler;
- (void)dealloc;
- (void)serverConnectionInterrupted;
- (void)serverConnectionInvalidated;
- (void)setExportedInterface:(id)interface;
- (void)setExportedObject:(id)object;
- (void)setInterruptionHandler:(id)handler;
- (void)setInvalidationHandler:(id)handler;
- (void)setRemoteObjectInterface:(id)interface;
@end

@implementation ARServerConnection

- (ARServerConnection)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v13.receiver = self;
  v13.super_class = ARServerConnection;
  v6 = [(ARServerConnection *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listenerEndpoint, endpoint);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __47__ARServerConnection_initWithListenerEndpoint___block_invoke;
    v11[3] = &unk_1E817EA58;
    v12 = endpointCopy;
    v8 = [v11 copy];
    connectionCreationBlock = v7->_connectionCreationBlock;
    v7->_connectionCreationBlock = v8;
  }

  return v7;
}

id __47__ARServerConnection_initWithListenerEndpoint___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:*(a1 + 32)];

  return v1;
}

- (ARServerConnection)initWithServiceName:(id)name options:(unint64_t)options queue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v18.receiver = self;
  v18.super_class = ARServerConnection;
  v10 = [(ARServerConnection *)&v18 init];
  if (v10)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __56__ARServerConnection_initWithServiceName_options_queue___block_invoke;
    v14[3] = &unk_1E817EA80;
    v15 = nameCopy;
    optionsCopy = options;
    v16 = queueCopy;
    v11 = [v14 copy];
    connectionCreationBlock = v10->_connectionCreationBlock;
    v10->_connectionCreationBlock = v11;
  }

  return v10;
}

id __56__ARServerConnection_initWithServiceName_options_queue___block_invoke(void *a1)
{
  v2 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:a1[4] options:a1[6]];
  v3 = v2;
  if (a1[5])
  {
    [v2 _setQueue:?];
  }

  return v3;
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  if (_ARLogGeneral_onceToken_49 != -1)
  {
    [ARServerConnection dealloc];
  }

  v3 = _ARLogGeneral_logObj_49;
  if (os_log_type_enabled(_ARLogGeneral_logObj_49, OS_LOG_TYPE_DEBUG))
  {
    v4 = v3;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    *buf = 138543618;
    v9 = v6;
    v10 = 2048;
    selfCopy = self;
    _os_log_impl(&dword_1C241C000, v4, OS_LOG_TYPE_DEBUG, "%{public}@ <%p>: dealloc", buf, 0x16u);
  }

  [(ARServerConnection *)self invalidate];
  v7.receiver = self;
  v7.super_class = ARServerConnection;
  [(ARServerConnection *)&v7 dealloc];
}

- (NSXPCConnection)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = (*(self->_connectionCreationBlock + 2))();
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection setExportedInterface:self->_exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedObject:self->_exportedObjectWeakReference];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:self->_remoteObjectInterface];
    objc_initWeak(&location, self);
    v6 = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __32__ARServerConnection_connection__block_invoke;
    v11[3] = &unk_1E817BD88;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v6 setInterruptionHandler:v11];
    v7 = self->_connection;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__ARServerConnection_connection__block_invoke_2;
    v9[3] = &unk_1E817BD88;
    objc_copyWeak(&v10, &location);
    [(NSXPCConnection *)v7 setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

void __32__ARServerConnection_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained serverConnectionInterrupted];
}

void __32__ARServerConnection_connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained serverConnectionInvalidated];
}

- (void)setExportedInterface:(id)interface
{
  objc_storeStrong(&self->_exportedInterface, interface);

  [(ARServerConnection *)self invalidate];
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = objectCopy;
  }

  else
  {
    v4 = [ARWeakReference weakReferenceWithObject:objectCopy];
  }

  exportedObjectWeakReference = self->_exportedObjectWeakReference;
  self->_exportedObjectWeakReference = v4;

  [(ARServerConnection *)self invalidate];
}

- (void)setRemoteObjectInterface:(id)interface
{
  objc_storeStrong(&self->_remoteObjectInterface, interface);

  [(ARServerConnection *)self invalidate];
}

- (void)serverConnectionInterrupted
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = objc_loadWeakRetained(&self->_delegate);
    [v5 serverConnectionInterrupted:self];
  }
}

- (void)serverConnectionInvalidated
{
  connection = self->_connection;
  self->_connection = 0;

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 serverConnectionInvalidated:self];
  }
}

- (id)remoteObjectProxy
{
  connection = [(ARServerConnection *)self connection];
  remoteObjectProxy = [connection remoteObjectProxy];

  return remoteObjectProxy;
}

- (id)remoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(ARServerConnection *)self connection];
  v6 = [connection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)synchronousRemoteObjectProxyWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(ARServerConnection *)self connection];
  v6 = [connection synchronousRemoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (id)interruptionHandler
{
  connection = [(ARServerConnection *)self connection];
  interruptionHandler = [connection interruptionHandler];

  return interruptionHandler;
}

- (void)setInterruptionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(ARServerConnection *)self connection];
  [connection setInterruptionHandler:handlerCopy];
}

- (id)invalidationHandler
{
  connection = [(ARServerConnection *)self connection];
  invalidationHandler = [connection invalidationHandler];

  return invalidationHandler;
}

- (void)setInvalidationHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(ARServerConnection *)self connection];
  [connection setInvalidationHandler:handlerCopy];
}

- (ARServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end