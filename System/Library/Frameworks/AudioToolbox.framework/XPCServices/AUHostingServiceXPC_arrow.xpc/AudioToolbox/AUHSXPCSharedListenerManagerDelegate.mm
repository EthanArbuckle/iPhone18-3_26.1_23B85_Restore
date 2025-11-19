@interface AUHSXPCSharedListenerManagerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation AUHSXPCSharedListenerManagerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AUHSXPCSharedListenerManager];
  [v4 setExportedInterface:v5];

  v6 = objc_alloc_init(AUHSXPCSharedListenerManager);
  [v4 setExportedObject:v6];

  [v4 resume];
  return 1;
}

@end