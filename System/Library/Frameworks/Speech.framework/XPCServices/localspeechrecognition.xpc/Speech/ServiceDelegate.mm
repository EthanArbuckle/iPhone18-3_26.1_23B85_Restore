@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [[LSRConnection alloc] initWithXPCConnection:connectionCopy];
  v6 = SFLSRGetInterface();
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:v5];
  v7 = SFLSRDelegateGetInterface();
  [connectionCopy setRemoteObjectInterface:v7];

  [connectionCopy resume];
  return 1;
}

@end