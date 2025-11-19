@interface APSUserDependencies
- (APSClientIdentityProvider)clientIdentityProvider;
- (APSSystemTokenStorage)systemTokenStorage;
- (APSUserAppIDManager)userAppIDManager;
- (APSUserDependencies)init;
- (APSUserDependencies)initWithClientIdentityProvider:(id)a3 systemTokenStorage:(id)a4 userPreferences:(id)a5 userAppIDManager:(id)a6;
- (APSUserPreferences)userPreferences;
- (NSString)description;
@end

@implementation APSUserDependencies

- (APSUserPreferences)userPreferences
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userPreferences);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (APSClientIdentityProvider)clientIdentityProvider
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSUserDependencies_clientIdentityProvider);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (APSSystemTokenStorage)systemTokenStorage
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSUserDependencies_systemTokenStorage);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (APSUserAppIDManager)userAppIDManager
{
  v2 = *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userAppIDManager);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (APSUserDependencies)initWithClientIdentityProvider:(id)a3 systemTokenStorage:(id)a4 userPreferences:(id)a5 userAppIDManager:(id)a6
{
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_clientIdentityProvider) = a3;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_systemTokenStorage) = a4;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userPreferences) = a5;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userAppIDManager) = a6;
  v7.receiver = self;
  v7.super_class = type metadata accessor for UserDependencies();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(APSUserDependencies *)&v7 init];
}

- (NSString)description
{
  v2 = self;
  sub_1000CB798();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (APSUserDependencies)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end