@interface JSMediaCatalogSync
- (id)fetchPages:(id)a3 :(id)a4;
- (void)resetState:(id)a3;
@end

@implementation JSMediaCatalogSync

- (id)fetchPages:(id)a3 :(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a4;
  v10 = self;
  v11 = sub_10012446C(v6, v8, v9);

  return v11;
}

- (void)resetState:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = self;
  sub_100125EF8(v4, v6);
}

@end