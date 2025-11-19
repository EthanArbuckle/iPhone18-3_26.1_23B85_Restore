@interface _EXServiceClient.Observer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC19ExtensionFoundation16_EXServiceClient8Observer)init;
- (int64_t)hash;
- (void)observer:(id)a3 reply:(id)a4;
@end

@implementation _EXServiceClient.Observer

- (int64_t)hash
{
  Hasher.init()();
  v3 = self;
  UUID.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (void)observer:(id)a3 reply:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  specialized _EXServiceClient.Observer.observer(_:reply:)(v7, v8, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtCC19ExtensionFoundation16_EXServiceClient8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end