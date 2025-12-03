@interface SystemCoordinatorHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC15GroupActivities21SystemCoordinatorHost)init;
- (void)dealloc;
@end

@implementation SystemCoordinatorHost

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC15GroupActivities21SystemCoordinatorHost_listener);
  selfCopy = self;
  [v4 invalidate];
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(SystemCoordinatorHost *)&v6 dealloc];
}

- (_TtC15GroupActivities21SystemCoordinatorHost)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = specialized SystemCoordinatorHost.listener(_:shouldAcceptNewConnection:)(connectionCopy);

  return v9;
}

@end