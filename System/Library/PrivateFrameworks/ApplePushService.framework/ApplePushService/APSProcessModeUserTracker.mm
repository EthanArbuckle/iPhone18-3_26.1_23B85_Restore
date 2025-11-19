@interface APSProcessModeUserTracker
- (APSProcessModeUserTracker)init;
- (APSUserTrackerResponder)responder;
- (NSArray)sortedLoggedInUsers;
- (id)dependenciesForUser:(id)a3 environment:(id)a4 mainIdentityProvider:(id)a5;
- (id)dependenciesWithNoIdentityForUser:(id)a3;
- (id)userForConnection:(id)a3;
- (void)startup;
@end

@implementation APSProcessModeUserTracker

- (id)userForConnection:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  v5 = sub_100004BF8();
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();

  return v5;
}

- (id)dependenciesForUser:(id)a3 environment:(id)a4 mainIdentityProvider:(id)a5
{
  swift_unknownObjectRetain();
  v9 = a4;
  swift_unknownObjectRetain();
  v10 = self;
  sub_100004D60(a3, v9, a5);
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
  v2 = self;
  sub_1000CDDFC();

  sub_1000C8C30(&qword_1001BCCD8, &qword_10015D330);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)startup
{
  v2 = self;
  sub_1000CDED8();
}

- (id)dependenciesWithNoIdentityForUser:(id)a3
{
  type metadata accessor for UserDependencies();
  v4 = objc_allocWithZone(APSProcessModeTokenStorage);
  swift_unknownObjectRetain();
  v5 = sub_1000075F0(0, [v4 initWithUser:a3], objc_msgSend(objc_allocWithZone(APSProcessModePreferences), "initWithUser:", a3), objc_msgSend(objc_allocWithZone(APSHashingAppIDManager), "init"));
  swift_unknownObjectRelease();

  return v5;
}

@end