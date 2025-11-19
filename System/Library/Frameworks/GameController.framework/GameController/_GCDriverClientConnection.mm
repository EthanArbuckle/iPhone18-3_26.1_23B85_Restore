@interface _GCDriverClientConnection
- (_GCDriverClientConnection)initWithConnection:(id)a3 fromProcess:(id)a4;
- (_GCDriverServerInterface)exportedObject;
- (id)connectToDeviceService:(id)a3 withClient:(id)a4;
- (void)connectToDeviceService:(id)a3 withClient:(id)a4 reply:(id)a5;
- (void)setExportedObject:(id)a3;
@end

@implementation _GCDriverClientConnection

- (_GCDriverClientConnection)initWithConnection:(id)a3 fromProcess:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _GCDriverClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:v6 fromProcess:a4];
  if (v7)
  {
    v8 = GCDriverServerInterface();
    [v6 setExportedInterface:v8];

    v9 = GCDriverClientInterface();
    [v6 setRemoteObjectInterface:v9];
  }

  return v7;
}

- (_GCDriverServerInterface)exportedObject
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 exportedObject];

  return v3;
}

- (void)setExportedObject:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  [v5 setExportedObject:v4];
}

- (void)connectToDeviceService:(id)a3 withClient:(id)a4 reply:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(GCIPCRemoteIncomingConnection *)self remoteProxy];
  ConnectToDriverService(v10, v11, v9, v8);
}

- (id)connectToDeviceService:(id)a3 withClient:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x1E69A06F8]) initOnQueue:0 withOptions:0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromProtocol(v6);
  v11 = [v9 stringWithFormat:@"Connect to '%@'.", v10];
  [v8 setLabel:v11];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke;
  v21[3] = &unk_1E8419E80;
  v21[4] = self;
  v12 = v6;
  v22 = v12;
  v13 = v7;
  v23 = v13;
  [v8 setSyncBlock:v21];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke_3;
  v18[3] = &unk_1E8419EF8;
  v18[4] = self;
  v19 = v12;
  v20 = v13;
  v14 = v13;
  v15 = v12;
  [v8 setAsyncBlock:v18];
  v16 = [v8 activate];

  return v16;
}

@end