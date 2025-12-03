@interface AVTUIRemoteRenderServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation AVTUIRemoteRenderServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___AVTUIImageRenderServiceProtocol];
  [connectionCopy setExportedInterface:v5];

  v6 = +[AVTUIImageRenderService sharedInstance];
  [connectionCopy setExportedObject:v6];
  [connectionCopy resume];

  return 1;
}

@end