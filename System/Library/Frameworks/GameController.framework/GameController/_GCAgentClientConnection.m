@interface _GCAgentClientConnection
- (_GCAgentClientConnection)initWithConnection:(id)a3 fromProcess:(id)a4;
- (_GCAgentServerInterface)server;
- (void)setServer:(id)a3;
@end

@implementation _GCAgentClientConnection

- (_GCAgentClientConnection)initWithConnection:(id)a3 fromProcess:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = _GCAgentClientConnection;
  v7 = [(_GCIPCRemoteIncomingConnection *)&v11 initWithConnection:v6 fromProcess:a4];
  if (v7)
  {
    v8 = GCAgentServerInterface();
    [v6 setExportedInterface:v8];

    v9 = GCAgentClientInterface();
    [v6 setRemoteObjectInterface:v9];
  }

  return v7;
}

- (_GCAgentServerInterface)server
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 exportedObject];

  return v3;
}

- (void)setServer:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  [v5 setExportedObject:v4];
}

@end