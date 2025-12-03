@interface TKXPCConnectionDefault
- (BOOL)hasEntitlement:(id)entitlement;
- (TKXPCConnectionDefault)initWithConnection:(id)connection;
- (TKXPCConnectionDefault)initWithListenerEndpoint:(id)endpoint;
- (TKXPCConnectionDefault)initWithMachServiceName:(id)name options:(unint64_t)options;
- (TKXPCConnectionDelegate)delegate;
- (void)activate;
- (void)configureWithConfiguration:(id)configuration;
@end

@implementation TKXPCConnectionDefault

- (TKXPCConnectionDefault)initWithMachServiceName:(id)name options:(unint64_t)options
{
  nameCopy = name;
  v7 = [[NSXPCConnection alloc] initWithMachServiceName:nameCopy options:options];

  v8 = [(TKXPCConnectionDefault *)self initWithConnection:v7];
  return v8;
}

- (TKXPCConnectionDefault)initWithListenerEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v5 = [[NSXPCConnection alloc] initWithListenerEndpoint:endpointCopy];

  v6 = [(TKXPCConnectionDefault *)self initWithConnection:v5];
  return v6;
}

- (TKXPCConnectionDefault)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = TKXPCConnectionDefault;
  v6 = [(TKXPCConnectionDefault *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)activate
{
  [(NSXPCConnection *)self->_connection activate];
  delegate = [(TKXPCConnectionDefault *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(TKXPCConnectionDefault *)self delegate];
    [delegate2 connectionDidActivate:self];
  }
}

- (void)configureWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = configurationCopy;
    remoteObjectInterface = [v5 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:remoteObjectInterface];

    exportedInterface = [v5 exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:exportedInterface];

    exportedObject = [v5 exportedObject];
    [(NSXPCConnection *)self->_connection setExportedObject:exportedObject];

    objc_initWeak(&location, self);
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001D1A8;
    v15[3] = &unk_1000389A0;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)self->_connection setInterruptionHandler:v15];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001D26C;
    v13[3] = &unk_1000389A0;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)self->_connection setInvalidationHandler:v13];
    replyQueue = [v5 replyQueue];

    if (replyQueue)
    {
      connection = self->_connection;
      replyQueue2 = [v5 replyQueue];
      [(NSXPCConnection *)connection _setQueue:replyQueue2];
    }

    objc_destroyWeak(&v14);
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  else
  {
    if (qword_100043440 != -1)
    {
      sub_100021B14();
    }

    v12 = qword_100043448;
    if (os_log_type_enabled(qword_100043448, OS_LOG_TYPE_ERROR))
    {
      sub_100021B28(self, configurationCopy, v12);
    }
  }
}

- (BOOL)hasEntitlement:(id)entitlement
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:entitlement];
  bOOLValue = [v3 BOOLValue];

  return bOOLValue;
}

- (TKXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end