@interface ASXListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ASXListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.siri.acousticsignature"];

  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASXSignatureExtracting];
    [connectionCopy setExportedInterface:v6];

    v7 = objc_alloc_init(ASXConnection);
    [connectionCopy setExportedObject:v7];

    [connectionCopy resume];
  }

  return v5 != 0;
}

@end