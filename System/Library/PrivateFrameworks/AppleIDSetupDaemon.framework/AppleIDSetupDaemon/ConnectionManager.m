@interface ConnectionManager
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC18AppleIDSetupDaemon17ConnectionManager)init;
@end

@implementation ConnectionManager

- (_TtC18AppleIDSetupDaemon17ConnectionManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2408C3810(v7);

  return v9 & 1;
}

@end