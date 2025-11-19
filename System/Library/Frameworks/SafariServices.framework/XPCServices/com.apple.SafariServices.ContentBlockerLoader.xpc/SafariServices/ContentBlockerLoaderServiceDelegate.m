@interface ContentBlockerLoaderServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ContentBlockerLoaderServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ContentBlockerLoading];
  [v4 setExportedInterface:v5];

  v6 = objc_alloc_init(ContentBlockerLoader);
  [v4 setExportedObject:v6];

  [v4 resume];
  return 1;
}

@end