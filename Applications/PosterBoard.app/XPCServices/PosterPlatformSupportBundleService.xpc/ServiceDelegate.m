@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC34PosterPlatformSupportBundleService15ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = objc_opt_self();
  v6 = a4;
  v7 = [v5 interfaceWithProtocol:&OBJC_PROTOCOL___PPSBundleServiceProtocol];
  [v6 setExportedInterface:v7];

  v8 = [objc_allocWithZone(type metadata accessor for PPSBundleService()) init];
  [v6 setExportedObject:v8];

  [v6 resume];
  return 1;
}

- (_TtC34PosterPlatformSupportBundleService15ServiceDelegate)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ServiceDelegate();
  return [(ServiceDelegate *)&v3 init];
}

@end