@interface _EXRunningExtension
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (_TtC19ExtensionFoundation19_EXRunningExtension)init;
@end

@implementation _EXRunningExtension

- (_TtC19ExtensionFoundation19_EXRunningExtension)init
{
  *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension____lazy_storage___bsConnectionListenerDelegate) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension_sessionListener) = 0;
  v2 = self + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__extensionIdentity;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 4) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = 0;
  v3 = self + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  v5.receiver = self;
  v5.super_class = type metadata accessor for _EXRunningExtension();
  return [(_EXRunningExtension *)&v5 init];
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (v3)
  {
    LOBYTE(v3) = [v3 shouldAcceptConnection_];
  }

  else
  {
    __break(1u);
  }

  return v3;
}

@end