@interface Reader
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC21automationmode_writer6Reader)init;
@end

@implementation Reader

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_100002250(connectionCopy);

  return v9 & 1;
}

- (_TtC21automationmode_writer6Reader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end