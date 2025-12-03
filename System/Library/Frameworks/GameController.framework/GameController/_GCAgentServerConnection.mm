@interface _GCAgentServerConnection
- (_GCAgentClientInterface)client;
- (_GCAgentServerConnection)initWithMachServiceName:(id)name;
- (void)setClient:(id)client;
@end

@implementation _GCAgentServerConnection

- (_GCAgentServerConnection)initWithMachServiceName:(id)name
{
  v4 = MEMORY[0x1E696B0B8];
  nameCopy = name;
  v6 = [[v4 alloc] initWithMachServiceName:nameCopy options:4096];

  v7 = GCAgentClientInterface();
  [v6 setExportedInterface:v7];

  v8 = GCAgentServerInterface();
  [v6 setRemoteObjectInterface:v8];

  v11.receiver = self;
  v11.super_class = _GCAgentServerConnection;
  v9 = [(GCIPCRemoteOutgoingConnection *)&v11 initWithConnection:v6];

  return v9;
}

- (_GCAgentClientInterface)client
{
  connection = [(GCIPCRemoteConnection *)self connection];
  exportedObject = [connection exportedObject];

  return exportedObject;
}

- (void)setClient:(id)client
{
  clientCopy = client;
  connection = [(GCIPCRemoteConnection *)self connection];
  [connection setExportedObject:clientCopy];
}

@end