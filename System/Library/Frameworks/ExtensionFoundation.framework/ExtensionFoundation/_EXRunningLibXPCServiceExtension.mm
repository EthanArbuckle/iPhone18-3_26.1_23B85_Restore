@interface _EXRunningLibXPCServiceExtension
- (_TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension)init;
- (void)resume;
@end

@implementation _EXRunningLibXPCServiceExtension

- (_TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension)init
{
  v2 = self + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension____lazy_storage____extensionIdentity;
  *(v2 + 4) = 0;
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v3 = self + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_launchArguments;
  v3[24] = 0;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionConnectionHandler);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.isa + OBJC_IVAR____TtC19ExtensionFoundation32_EXRunningLibXPCServiceExtension_sessionListener) = 0;
  v6.receiver = self;
  v6.super_class = type metadata accessor for _EXRunningLibXPCServiceExtension();
  return [(_EXRunningExtension *)&v6 init];
}

- (void)resume
{
  selfCopy = self;
  _EXRunningLibXPCServiceExtension.resume()();
}

@end