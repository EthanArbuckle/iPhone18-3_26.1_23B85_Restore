@interface _GCSystemButtonServerConnection
- (_GCSystemButtonClientInterface)client;
- (_GCSystemButtonServerConnection)initWithMachServiceName:(id)a3;
- (void)setClient:(id)a3;
@end

@implementation _GCSystemButtonServerConnection

- (_GCSystemButtonServerConnection)initWithMachServiceName:(id)a3
{
  v4 = MEMORY[0x1E696B0B8];
  v5 = a3;
  v6 = [[v4 alloc] initWithMachServiceName:v5 options:4096];

  v7 = _GCSystemButtonClientInterface();
  [v6 setExportedInterface:v7];

  v8 = _GCSystemButtonServerInterface();
  [v6 setRemoteObjectInterface:v8];

  v11.receiver = self;
  v11.super_class = _GCSystemButtonServerConnection;
  v9 = [(GCIPCRemoteOutgoingConnection *)&v11 initWithConnection:v6];
  [v6 _setQueue:MEMORY[0x1E69E96A0]];

  return v9;
}

- (_GCSystemButtonClientInterface)client
{
  v2 = [(GCIPCRemoteConnection *)self connection];
  v3 = [v2 exportedObject];

  return v3;
}

- (void)setClient:(id)a3
{
  v4 = a3;
  v5 = [(GCIPCRemoteConnection *)self connection];
  [v5 setExportedObject:v4];
}

@end