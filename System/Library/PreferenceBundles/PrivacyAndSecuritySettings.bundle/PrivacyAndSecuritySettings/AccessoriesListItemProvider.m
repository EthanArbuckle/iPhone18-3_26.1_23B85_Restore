@interface AccessoriesListItemProvider
- (_TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider)init;
- (void)dealloc;
@end

@implementation AccessoriesListItemProvider

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR____TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider_session);
  v5 = self;
  [v4 invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(AccessoriesListItemProvider *)&v6 dealloc];
}

- (_TtC26PrivacyAndSecuritySettings27AccessoriesListItemProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end