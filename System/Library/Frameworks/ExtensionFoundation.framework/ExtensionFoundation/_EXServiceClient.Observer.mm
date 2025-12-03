@interface _EXServiceClient.Observer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC19ExtensionFoundation16_EXServiceClient8Observer)init;
- (int64_t)hash;
- (void)observer:(id)observer reply:(id)reply;
@end

@implementation _EXServiceClient.Observer

- (int64_t)hash
{
  Hasher.init()();
  selfCopy = self;
  UUID.hash(into:)();
  v4 = Hasher.finalize()();

  return v4;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized _EXServiceClient.Observer.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (void)observer:(id)observer reply:(id)reply
{
  v6 = _Block_copy(reply);
  _Block_copy(v6);
  observerCopy = observer;
  selfCopy = self;
  specialized _EXServiceClient.Observer.observer(_:reply:)(observerCopy, selfCopy, v6);
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