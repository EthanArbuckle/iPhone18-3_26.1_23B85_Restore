@interface _EXServiceClient.ActiveClientQuery
- (BOOL)isEqual:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtCC19ExtensionFoundation16_EXServiceClientP33_591406279EDD09BF7033B88E7B83DCFD17ActiveClientQuery)init;
- (void)query:(id)a3 resultDidUpdate:(id)a4 reply:(id)a5;
@end

@implementation _EXServiceClient.ActiveClientQuery

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = specialized _EXServiceClient.ActiveClientQuery.listener(_:shouldAcceptNewConnection:)(v7);

  return v9 & 1;
}

- (void)query:(id)a3 resultDidUpdate:(id)a4 reply:(id)a5
{
  v8 = _Block_copy(a5);
  _Block_copy(v8);
  v9 = a3;
  v10 = a4;
  v11 = self;
  specialized _EXServiceClient.ActiveClientQuery.query(_:resultDidUpdate:reply:)(v9, v10, v11, v8);
  _Block_release(v8);
  _Block_release(v8);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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