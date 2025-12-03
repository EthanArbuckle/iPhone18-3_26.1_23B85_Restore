@interface SanityTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin16SanityTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)queryMismatchingCheckpointsWithCompletion:(id)completion;
@end

@implementation SanityTaskServer

- (_TtC25FitnessIntelligencePlugin16SanityTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  v15 = sub_16F58(v12, configuration, clientCopy, delegate);

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

- (void)queryMismatchingCheckpointsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  SanityTaskServer.queryMismatchingCheckpoints(completion:)(sub_199A0, v5);
}

@end