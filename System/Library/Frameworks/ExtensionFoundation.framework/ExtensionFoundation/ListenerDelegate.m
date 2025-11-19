@interface ListenerDelegate
- (_TtC19ExtensionFoundation16ListenerDelegate)init;
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
@end

@implementation ListenerDelegate

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  specialized ListenerDelegate.listener(_:didReceive:withContext:)(v8);

  swift_unknownObjectRelease();
}

- (_TtC19ExtensionFoundation16ListenerDelegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end