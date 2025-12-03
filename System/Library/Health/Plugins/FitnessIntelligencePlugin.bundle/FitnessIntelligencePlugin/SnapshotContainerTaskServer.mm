@interface SnapshotContainerTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)dealloc;
- (void)invalidateAfter:(int64_t)after completion:(id)completion;
- (void)invalidateDatabaseAssertionWithCompletion:(id)completion;
- (void)listIntermediateCheckpointsWithStep:(id)step completion:(id)completion;
- (void)mostRecentCheckpointsWithType:(id)type completion:(id)completion;
- (void)requestDatabaseAssertionWithCompletion:(id)completion;
- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout;
@end

@implementation SnapshotContainerTaskServer

- (void)mostRecentCheckpointsWithType:(id)type completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_755A8();
  v8 = v7;
  _Block_copy(v5);
  selfCopy = self;
  sub_2DEF0(v6, v8, selfCopy, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)listIntermediateCheckpointsWithStep:(id)step completion:(id)completion
{
  v6 = _Block_copy(completion);
  stepCopy = step;
  selfCopy = self;
  v8 = sub_748C8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  SnapshotContainerTaskServer.listIntermediateCheckpoints(step:completion:)(v8, v10, sub_199A0, v11);

  sub_FB28(v8, v10);
}

- (void)invalidateAfter:(int64_t)after completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  SnapshotContainerTaskServer.invalidate(after:completion:)(after, sub_303D4, v7);
}

- (void)requestDatabaseAssertionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_2F7C4(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)invalidateDatabaseAssertionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(*&self->HDStandardTaskServer_opaque[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);
  selfCopy = self;

  sub_74CC8();

  v4[2](v4);

  _Block_release(v4);
}

- (_TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer)initWithUUID:(id)d configuration:(id)configuration client:(id)client delegate:(id)delegate
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  configurationCopy = configuration;
  clientCopy = client;
  swift_unknownObjectRetain();
  return SnapshotContainerTaskServer.init(uuid:configuration:client:delegate:)(v12, configuration, clientCopy, delegate);
}

- (void)dealloc
{
  selfCopy = self;
  client = [(SnapshotContainerTaskServer *)selfCopy client];
  profile = [client profile];

  workoutManager = [profile workoutManager];
  if (workoutManager)
  {
    [workoutManager unregisterCurrentWorkoutObserver:selfCopy];
  }

  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for SnapshotContainerTaskServer();
  [(SnapshotContainerTaskServer *)&v6 dealloc];
}

+ (id)taskIdentifier
{
  _s25FitnessIntelligencePlugin27SnapshotContainerTaskServerC14taskIdentifierSSyFZ_0();
  v2 = sub_75598();

  return v2;
}

- (id)exportedInterface
{
  v2 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence36SnapshotContainerTaskServerInterface_];

  return v2;
}

- (id)remoteInterface
{
  v2 = [objc_allocWithZone(NSXPCInterface) init];

  return v2;
}

- (void)workoutManager:(id)manager didUpdateCurrentWorkout:(id)workout
{
  managerCopy = manager;
  workoutCopy = workout;
  selfCopy = self;
  sub_446DC(workout);
}

@end