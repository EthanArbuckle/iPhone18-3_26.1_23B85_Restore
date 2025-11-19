@interface ASXListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ASXListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.siri.acousticsignature"];

  if (v5)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ASXSignatureExtracting];
    [v4 setExportedInterface:v6];

    v7 = objc_alloc_init(ASXConnection);
    [v4 setExportedObject:v7];

    [v4 resume];
  }

  return v5 != 0;
}

@end