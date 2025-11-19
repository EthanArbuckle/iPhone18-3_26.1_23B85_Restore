@interface PostbackProxyServiceListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate)init;
@end

@implementation PostbackProxyServiceListenerDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10017E4B8(v7);

  return v9 & 1;
}

- (_TtC20AttributionKitDaemon36PostbackProxyServiceListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end