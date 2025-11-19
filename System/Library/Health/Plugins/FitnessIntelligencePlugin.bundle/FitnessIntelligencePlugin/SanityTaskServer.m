@interface SanityTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin16SanityTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)queryMismatchingCheckpointsWithCompletion:(id)a3;
@end

@implementation SanityTaskServer

- (_TtC25FitnessIntelligencePlugin16SanityTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  v15 = sub_16F58(v12, a4, v14, a6);

  swift_unknownObjectRelease();
  return v15;
}

+ (id)taskIdentifier
{
  _s25FitnessIntelligencePlugin16SanityTaskServerC14taskIdentifierSSyFZ_0();
  v2 = sub_75598();

  return v2;
}

- (id)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence25SanityTaskServerInterface_];

  return v2;
}

- (id)remoteInterface
{
  v2 = [objc_allocWithZone(NSXPCInterface) init];

  return v2;
}

- (void)queryMismatchingCheckpointsWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  SanityTaskServer.queryMismatchingCheckpoints(completion:)(sub_199A0, v5);
}

@end