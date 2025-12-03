@interface APSProcessModeUserTracker
- (APSProcessModeUserTracker)init;
- (APSUserTrackerResponder)responder;
- (NSArray)sortedLoggedInUsers;
- (id)dependenciesForUser:(id)user environment:(id)environment mainIdentityProvider:(id)provider;
- (id)dependenciesWithNoIdentityForUser:(id)user;
- (id)userForConnection:(id)connection;
- (void)startup;
@end

@implementation APSProcessModeUserTracker

- (id)userForConnection:(id)connection
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v5 = sub_100004BF8();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return v5;
}

- (id)dependenciesForUser:(id)user environment:(id)environment mainIdentityProvider:(id)provider
{
  swift_unknownObjectRetain();
  environmentCopy = environment;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100004D60(user, environmentCopy, provider);
  v12 = v11;
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return v12;
}

- (APSUserTrackerResponder)responder
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (APSProcessModeUserTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSArray)sortedLoggedInUsers
{
  selfCopy = self;
  sub_1000CDDFC();

  sub_1000C8C30(&qword_1001BCCD8, &qword_10015D330);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)startup
{
  selfCopy = self;
  sub_1000CDED8();
}

- (id)dependenciesWithNoIdentityForUser:(id)user
{
  type metadata accessor for UserDependencies();
  v4 = objc_allocWithZone(APSProcessModeTokenStorage);
  swift_unknownObjectRetain();
  v5 = sub_1000075F0(0, [v4 initWithUser:user], objc_msgSend(objc_allocWithZone(APSProcessModePreferences), "initWithUser:", user), objc_msgSend(objc_allocWithZone(APSHashingAppIDManager), "init"));
  swift_unknownObjectRelease();

  return v5;
}

@end