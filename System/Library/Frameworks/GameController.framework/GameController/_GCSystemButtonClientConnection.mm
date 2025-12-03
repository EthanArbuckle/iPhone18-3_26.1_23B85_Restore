@interface _GCSystemButtonClientConnection
- (_GCSystemButtonClientConnection)initWithConnection:(id)connection;
- (_GCSystemButtonServerInterface)exportedObject;
- (void)setExportedObject:(id)object;
@end

@implementation _GCSystemButtonClientConnection

- (_GCSystemButtonClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = _GCSystemButtonClientConnection;
  v5 = [(GCIPCRemoteIncomingConnection *)&v9 initWithConnection:connectionCopy];
  if (v5)
  {
    v6 = _GCSystemButtonServerInterface();
    [connectionCopy setExportedInterface:v6];

    v7 = _GCSystemButtonClientInterface();
    [connectionCopy setRemoteObjectInterface:v7];
  }

  return v5;
}

- (_GCSystemButtonServerInterface)exportedObject
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

@end