@interface APSUserDependencies
- (APSClientIdentityProvider)clientIdentityProvider;
- (APSSystemTokenStorage)systemTokenStorage;
- (APSUserAppIDManager)userAppIDManager;
- (APSUserDependencies)init;
- (APSUserDependencies)initWithClientIdentityProvider:(id)provider systemTokenStorage:(id)storage userPreferences:(id)preferences userAppIDManager:(id)manager;
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

- (APSUserDependencies)initWithClientIdentityProvider:(id)provider systemTokenStorage:(id)storage userPreferences:(id)preferences userAppIDManager:(id)manager
{
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_clientIdentityProvider) = provider;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_systemTokenStorage) = storage;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userPreferences) = preferences;
  *(&self->super.isa + OBJC_IVAR___APSUserDependencies_userAppIDManager) = manager;
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
  selfCopy = self;
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