@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC34PosterPlatformSupportBundleService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v5 = objc_opt_self();
  connectionCopy = connection;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL___PPSBundleServiceProtocol];
  [connectionCopy setExportedInterface:v7];

  v8 = [objc_allocWithZone(type metadata accessor for PPSBundleService()) init];
  [connectionCopy setExportedObject:v8];

  [connectionCopy resume];
  return 1;
}

- (_TtC34PosterPlatformSupportBundleService15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end