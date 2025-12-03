@interface _GCAppClientConnection
- (_GCAppClientConnection)initWithConnection:(id)connection fromProcess:(id)process;
- (_GCAppServerInterface)server;
- (void)setServer:(id)server;
@end

@implementation _GCAppClientConnection

- (_GCAppClientConnection)initWithConnection:(id)connection fromProcess:(id)process
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _GCAppClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:connectionCopy fromProcess:process];
  if (v7)
  {
    v8 = GCAppServerInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = GCAppClientInterface();
    [connectionCopy setRemoteObjectInterface:v9];
  }

  return v7;
}

- (_GCAppServerInterface)server
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