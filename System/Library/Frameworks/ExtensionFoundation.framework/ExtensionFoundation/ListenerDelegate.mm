@interface ListenerDelegate
- (_TtC19ExtensionFoundation16ListenerDelegate)init;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
@end

@implementation ListenerDelegate

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  listenerCopy = listener;
  connectionCopy = connection;
  swift_unknownObjectRetain();
  selfCopy = self;
  specialized ListenerDelegate.listener(_:didReceive:withContext:)(connectionCopy);

  swift_unknownObjectRelease();
}

- (_TtC19ExtensionFoundation16ListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end