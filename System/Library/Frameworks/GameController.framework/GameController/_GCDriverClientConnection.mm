@interface _GCDriverClientConnection
- (_GCDriverClientConnection)initWithConnection:(id)connection fromProcess:(id)process;
- (_GCDriverServerInterface)exportedObject;
- (id)connectToDeviceService:(id)service withClient:(id)client;
- (void)connectToDeviceService:(id)service withClient:(id)client reply:(id)reply;
- (void)setExportedObject:(id)object;
@end

@implementation _GCDriverClientConnection

- (_GCDriverClientConnection)initWithConnection:(id)connection fromProcess:(id)process
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _GCDriverClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:connectionCopy fromProcess:process];
  if (v7)
  {
    v8 = GCDriverServerInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = GCDriverClientInterface();
    [connectionCopy setRemoteObjectInterface:v9];
  }

  return v7;
}

- (_GCDriverServerInterface)exportedObject
{
  connection = [(GCIPCRemoteConnection *)self connection];
  exportedObject = [connection exportedObject];

  return exportedObject;
}

- (void)setExportedObject:(id)object
{
  objectCopy = object;
  connection = [(GCIPCRemoteConnection *)self connection];
  [connection setExportedObject:objectCopy];
}

- (void)connectToDeviceService:(id)service withClient:(id)client reply:(id)reply
{
  replyCopy = reply;
  clientCopy = client;
  serviceCopy = service;
  remoteProxy = [(GCIPCRemoteIncomingConnection *)self remoteProxy];
  ConnectToDriverService(serviceCopy, remoteProxy, clientCopy, replyCopy);
}

- (id)connectToDeviceService:(id)service withClient:(id)client
{
  serviceCopy = service;
  clientCopy = client;
  v8 = [objc_alloc(MEMORY[0x1E69A06F8]) initOnQueue:0 withOptions:0];
  v9 = MEMORY[0x1E696AEC0];
  v10 = NSStringFromProtocol(serviceCopy);
  v11 = [v9 stringWithFormat:@"Connect to '%@'.", v10];
  [v8 setLabel:v11];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __63___GCDriverClientConnection_connectToDeviceService_withClient___block_invoke;
  v21[3] = &unk_1E8419E80;
  v21[4] = self;
  v12 = serviceCopy;
  v22 = v12;
  v13 = clientCopy;
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
  activate = [v8 activate];

  return activate;
}

@end