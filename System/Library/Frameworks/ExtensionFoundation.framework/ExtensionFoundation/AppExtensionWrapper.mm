@interface AppExtensionWrapper
- (BOOL)shouldAcceptConnection:(id)connection;
- (_TtC19ExtensionFoundation19AppExtensionWrapper)init;
@end

@implementation AppExtensionWrapper

- (BOOL)shouldAcceptConnection:(id)connection
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept);
  v4 = *(&self->super._hasSwiftEntryPoint + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept);
  connectionCopy = connection;
  selfCopy = self;
  LOBYTE(v4) = v5(connectionCopy);

  return v4 & 1;
}

- (_TtC19ExtensionFoundation19AppExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end