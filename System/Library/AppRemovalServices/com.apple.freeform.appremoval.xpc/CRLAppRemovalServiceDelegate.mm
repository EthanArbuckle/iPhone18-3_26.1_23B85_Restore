@interface CRLAppRemovalServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation CRLAppRemovalServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___LSAppRemovalServiceProtocol];
  [v4 setExportedInterface:v5];

  v6 = objc_alloc_init(CRLAppRemovalService);
  [v4 setExportedObject:v6];
  [v4 resume];

  return 1;
}

@end