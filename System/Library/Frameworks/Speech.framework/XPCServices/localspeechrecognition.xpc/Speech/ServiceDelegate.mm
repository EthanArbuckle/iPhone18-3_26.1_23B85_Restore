@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [[LSRConnection alloc] initWithXPCConnection:v4];
  v6 = SFLSRGetInterface();
  [v4 setExportedInterface:v6];

  [v4 setExportedObject:v5];
  v7 = SFLSRDelegateGetInterface();
  [v4 setRemoteObjectInterface:v7];

  [v4 resume];
  return 1;
}

@end