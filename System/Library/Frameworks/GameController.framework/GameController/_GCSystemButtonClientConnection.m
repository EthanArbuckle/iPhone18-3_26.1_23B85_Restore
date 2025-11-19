@interface _GCSystemButtonClientConnection
- (_GCSystemButtonClientConnection)initWithConnection:(id)a3;
- (_GCSystemButtonServerInterface)exportedObject;
- (void)setExportedObject:(id)a3;
@end

@implementation _GCSystemButtonClientConnection

- (_GCSystemButtonClientConnection)initWithConnection:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = _GCSystemButtonClientConnection;
  v5 = [(GCIPCRemoteIncomingConnection *)&v9 initWithConnection:v4];
  if (v5)
  {
    v6 = _GCSystemButtonServerInterface();
    [v4 setExportedInterface:v6];

    v7 = _GCSystemButtonClientInterface();
    [v4 setRemoteObjectInterface:v7];
  }

  return v5;
}

- (_GCSystemButtonServerInterface)exportedObject
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

@end