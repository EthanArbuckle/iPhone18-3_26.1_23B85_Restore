@interface SHConnectionHandle
- (SHConnectionHandle)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteInterface:(id)a5;
- (id)exportedObject;
- (id)remoteObject;
- (void)dealloc;
- (void)setExportedObject:(id)a3;
@end

@implementation SHConnectionHandle

- (void)dealloc
{
  v3 = sh_log_object();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Deallocating the XPC connection", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = SHConnectionHandle;
  [(SHConnectionHandle *)&v4 dealloc];
}

- (SHConnectionHandle)initWithConnection:(id)a3 exportedInterface:(id)a4 remoteInterface:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SHConnectionHandle;
  v12 = [(SHConnectionHandle *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_connection, a3);
    [(NSXPCConnection *)v13->_connection setExportedInterface:v10];
    [(NSXPCConnection *)v13->_connection setRemoteObjectInterface:v11];
  }

  return v13;
}

- (id)exportedObject
{
  v2 = [(SHConnectionHandle *)self connection];
  v3 = [v2 exportedObject];

  return v3;
}

- (void)setExportedObject:(id)a3
{
  v4 = a3;
  v5 = [(SHConnectionHandle *)self connection];
  [v5 setExportedObject:v4];
}

- (id)remoteObject
{
  remoteObject = self->_remoteObject;
  if (!remoteObject)
  {
    objc_initWeak(&location, self);
    v4 = [(SHConnectionHandle *)self connection];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100003040;
    v8[3] = &unk_10007CDA0;
    objc_copyWeak(&v9, &location);
    v5 = [v4 remoteObjectProxyWithErrorHandler:v8];
    v6 = self->_remoteObject;
    self->_remoteObject = v5;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    remoteObject = self->_remoteObject;
  }

  return remoteObject;
}

@end