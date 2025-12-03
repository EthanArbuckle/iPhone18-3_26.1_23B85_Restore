@interface _EXServiceClient.ActiveClientQuery
- (BOOL)isEqual:(id)equal;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery)init;
- (void)query:(id)query resultDidUpdate:(id)update reply:(id)reply;
@end

@implementation _EXServiceClient.ActiveClientQuery

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9 & 1;
}

- (void)query:(id)query resultDidUpdate:(id)update reply:(id)reply
{
  v8 = _Block_copy(reply);
  _Block_copy(v8);
  queryCopy = query;
  updateCopy = update;
  selfCopy = self;
  specialized _EXServiceClient.ActiveClientQuery.query(_:resultDidUpdate:reply:)(queryCopy, updateCopy, selfCopy, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = _EXServiceClient.ActiveClientQuery.isEqual(_:)(v8);

  outlined destroy of NSObject?(v8, &_sypSgMd, &_sypSgMR);
  return v6 & 1;
}

- (_TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end