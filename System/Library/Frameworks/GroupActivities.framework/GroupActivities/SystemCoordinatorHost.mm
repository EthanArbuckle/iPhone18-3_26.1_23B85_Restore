@interface SystemCoordinatorHost
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC15GroupActivities21SystemCoordinatorHost)init;
- (void)dealloc;
@end

@implementation SystemCoordinatorHost

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener);
  v5 = self;
  [v4 invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(SystemCoordinatorHost *)&v6 dealloc];
}

- (_TtC15GroupActivities21SystemCoordinatorHost)init
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
  v9 = specialized SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(v7);

  return v9;
}

@end