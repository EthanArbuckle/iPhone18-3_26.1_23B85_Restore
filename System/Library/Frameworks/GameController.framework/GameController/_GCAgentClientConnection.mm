@interface _GCAgentClientConnection
- (_GCAgentClientConnection)initWithConnection:(id)connection fromProcess:(id)process;
- (_GCAgentServerInterface)server;
- (void)setServer:(id)server;
@end

@implementation _GCAgentClientConnection

- (_GCAgentClientConnection)initWithConnection:(id)connection fromProcess:(id)process
{
  connectionCopy = connection;
  v11.receiver = self;
  v11.super_class = _GCAgentClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:connectionCopy fromProcess:process];
  if (v7)
  {
    v8 = GCAgentServerInterface();
    [connectionCopy setExportedInterface:v8];

    v9 = GCAgentClientInterface();
    [connectionCopy setRemoteObjectInterface:v9];
  }

  return v7;
}

- (_GCAgentServerInterface)server
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