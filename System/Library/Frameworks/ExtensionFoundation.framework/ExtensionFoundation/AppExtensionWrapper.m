@interface AppExtensionWrapper
- (BOOL)shouldAcceptConnection:(id)a3;
- (_TtC19ExtensionFoundation19AppExtensionWrapper)init;
@end

@implementation AppExtensionWrapper

- (BOOL)shouldAcceptConnection:(id)a3
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept);
  v4 = *(&self->super._hasSwiftEntryPoint + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept);
  v6 = a3;
  v7 = self;
  LOBYTE(v4) = v5(v6);

  return v4 & 1;
}

- (_TtC19ExtensionFoundation19AppExtensionWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end