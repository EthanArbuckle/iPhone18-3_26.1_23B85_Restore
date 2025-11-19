@interface AXRuntimeClient
- (_TtC23AccessibilityReaderData15AXRuntimeClient)init;
- (void)dealloc;
@end

@implementation AXRuntimeClient

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver);
  *(&self->super.isa + OBJC_IVAR____TtC23AccessibilityReaderData15AXRuntimeClient_axObserver) = 0;
  v5 = self;

  sub_23D799584();
  sub_23D798DBC(0);
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AXRuntimeClient *)&v6 dealloc];
}

- (_TtC23AccessibilityReaderData15AXRuntimeClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end