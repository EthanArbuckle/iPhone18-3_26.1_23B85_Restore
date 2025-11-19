@interface DCDeviceMetadataDaemonConnection
- (DCDeviceMetadataDaemonConnection)init;
- (id)connection;
- (id)remoteObjectProxy:(id)a3;
- (id)synchronousRemoteObjectProxy:(id)a3;
@end

@implementation DCDeviceMetadataDaemonConnection

- (DCDeviceMetadataDaemonConnection)init
{
  v6.receiver = self;
  v6.super_class = DCDeviceMetadataDaemonConnection;
  v2 = [(DCDeviceMetadataDaemonConnection *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAAF8]);
    connLock = v2->_connLock;
    v2->_connLock = v3;
  }

  return v2;
}

- (id)connection
{
  [(NSLock *)self->_connLock lock];
  conn = self->_conn;
  if (!conn)
  {
    v4 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.devicecheckd" options:0];
    v5 = self->_conn;
    self->_conn = v4;

    objc_initWeak(&location, self);
    v6 = self->_conn;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __46__DCDeviceMetadataDaemonConnection_connection__block_invoke;
    v14[3] = &unk_278A462B8;
    objc_copyWeak(&v15, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v14];
    v7 = self->_conn;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__DCDeviceMetadataDaemonConnection_connection__block_invoke_2;
    v12[3] = &unk_278A462B8;
    objc_copyWeak(&v13, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v12];
    v8 = self->_conn;
    v9 = +[DCDeviceMetadataInterface XPCInterface];
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_conn resume];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(&location);
    conn = self->_conn;
  }

  v10 = conn;
  [(NSLock *)self->_connLock unlock];

  return v10;
}

void __46__DCDeviceMetadataDaemonConnection_connection__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] lock];
    v2 = v3[1];
    v3[1] = 0;

    [v3[2] unlock];
    WeakRetained = v3;
  }
}

void __46__DCDeviceMetadataDaemonConnection_connection__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained[2] lock];
    v2 = v3[1];
    v3[1] = 0;

    [v3[2] unlock];
    WeakRetained = v3;
  }
}

- (id)remoteObjectProxy:(id)a3
{
  v4 = a3;
  v5 = [(DCDeviceMetadataDaemonConnection *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:v4];

  return v6;
}

- (id)synchronousRemoteObjectProxy:(id)a3
{
  v4 = a3;
  v5 = [(DCDeviceMetadataDaemonConnection *)self connection];
  v6 = [v5 synchronousRemoteObjectProxyWithErrorHandler:v4];

  return v6;
}

@end