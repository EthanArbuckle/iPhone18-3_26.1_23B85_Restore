@interface ALServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC5ALXPC17ALServiceDelegate)init;
- (void)onData:(id)data;
@end

@implementation ALServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized ALServiceDelegate.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (void)onData:(id)data
{
  dataCopy = data;
  selfCopy = self;
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  ALServiceDelegate.onData(_:)(v5, v7);
  outlined consume of Data._Representation(v5, v7);
}

- (_TtC5ALXPC17ALServiceDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end