@interface COSServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation COSServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = _LSAppRemovalServiceXPCInterface();
  [connectionCopy setExportedInterface:v5];

  v6 = objc_opt_new();
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end