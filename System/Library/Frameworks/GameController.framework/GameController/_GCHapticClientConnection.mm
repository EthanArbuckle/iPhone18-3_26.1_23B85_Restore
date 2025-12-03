@interface _GCHapticClientConnection
- (CHHapticServerInterface)server;
- (_GCHapticClientConnection)initWithConnection:(id)connection fromProcess:(id)process;
- (void)setServer:(id)server;
@end

@implementation _GCHapticClientConnection

- (_GCHapticClientConnection)initWithConnection:(id)connection fromProcess:(id)process
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _GCHapticClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:connectionCopy fromProcess:process];
  if (v7)
  {
    v8 = GCHapticServerInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = GCHapticClientInterface();
    [connectionCopy setRemoteObjectInterface:v9];
  }

  return v7;
}

- (CHHapticServerInterface)server
{
  connection = [(GCIPCRemoteConnection *)self connection];
  exportedObject = [connection exportedObject];

  return exportedObject;
}

- (void)setServer:(id)server
{
  serverCopy = server;
  connection = [(GCIPCRemoteConnection *)self connection];
  [connection setExportedObject:serverCopy];
}

@end