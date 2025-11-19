@interface ServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC20AttributionKitDaemon23ServiceListenerDelegate)init;
@end

@implementation ServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10015AB64(v7);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon23ServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end