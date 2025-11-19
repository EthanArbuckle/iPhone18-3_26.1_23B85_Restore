@interface TKXPCConnectionDefault
- (BOOL)hasEntitlement:(id)a3;
- (TKXPCConnectionDefault)initWithConnection:(id)a3;
- (TKXPCConnectionDefault)initWithListenerEndpoint:(id)a3;
- (TKXPCConnectionDefault)initWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (TKXPCConnectionDelegate)delegate;
- (void)activate;
- (void)configureWithConfiguration:(id)a3;
@end

@implementation TKXPCConnectionDefault

- (TKXPCConnectionDefault)initWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [[NSXPCConnection alloc] initWithMachServiceName:v6 options:a4];

  v8 = [(TKXPCConnectionDefault *)self initWithConnection:v7];
  return v8;
}

- (TKXPCConnectionDefault)initWithListenerEndpoint:(id)a3
{
  v4 = a3;
  v5 = [[NSXPCConnection alloc] initWithListenerEndpoint:v4];

  v6 = [(TKXPCConnectionDefault *)self initWithConnection:v5];
  return v6;
}

- (TKXPCConnectionDefault)initWithConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TKXPCConnectionDefault;
  v6 = [(TKXPCConnectionDefault *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)activate
{
  [(NSXPCConnection *)self->_connection activate];
  v3 = [(TKXPCConnectionDefault *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(TKXPCConnectionDefault *)self delegate];
    [v5 connectionDidActivate:self];
  }
}

- (void)configureWithConfiguration:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 remoteObjectInterface];
    [(NSXPCConnection *)self->_connection setRemoteObjectInterface:v6];

    v7 = [v5 exportedInterface];
    [(NSXPCConnection *)self->_connection setExportedInterface:v7];

    v8 = [v5 exportedObject];
    [(NSXPCConnection *)self->_connection setExportedObject:v8];

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
    v9 = [v5 replyQueue];

    if (v9)
    {
      connection = self->_connection;
      v11 = [v5 replyQueue];
      [(NSXPCConnection *)connection _setQueue:v11];
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
      sub_100021B28(self, v4, v12);
    }
  }
}

- (BOOL)hasEntitlement:(id)a3
{
  v3 = [(NSXPCConnection *)self->_connection valueForEntitlement:a3];
  v4 = [v3 BOOLValue];

  return v4;
}

- (TKXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end