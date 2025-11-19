@interface SandboxExtendedURL
- (NSString)description;
- (_TtC20LiveCommunicationKit18SandboxExtendedURL)init;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SandboxExtendedURL

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  if (self->url[OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle])
  {
    v4 = self;
  }

  else
  {
    v5 = *(&self->super.isa + OBJC_IVAR____TtC20LiveCommunicationKit18SandboxExtendedURL_sandboxExtensionHandle);
    v6 = self;
    sandbox_extension_release();
  }

  v7.receiver = self;
  v7.super_class = ObjectType;
  [(SandboxExtendedURL *)&v7 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = self;
  SandboxExtendedURL.encode(with:)(v4);
}

- (NSString)description
{
  v2 = self;
  SandboxExtendedURL.description.getter();

  v3 = sub_238B6C844();

  return v3;
}

- (_TtC20LiveCommunicationKit18SandboxExtendedURL)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end