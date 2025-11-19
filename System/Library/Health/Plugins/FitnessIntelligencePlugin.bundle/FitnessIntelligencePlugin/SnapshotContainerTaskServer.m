@interface SnapshotContainerTaskServer
+ (id)taskIdentifier;
- (_TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)dealloc;
- (void)invalidateAfter:(int64_t)a3 completion:(id)a4;
- (void)invalidateDatabaseAssertionWithCompletion:(id)a3;
- (void)listIntermediateCheckpointsWithStep:(id)a3 completion:(id)a4;
- (void)mostRecentCheckpointsWithType:(id)a3 completion:(id)a4;
- (void)requestDatabaseAssertionWithCompletion:(id)a3;
- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4;
@end

@implementation SnapshotContainerTaskServer

- (void)mostRecentCheckpointsWithType:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_755A8();
  v8 = v7;
  _Block_copy(v5);
  v9 = self;
  sub_2DEF0(v6, v8, v9, v5);
  _Block_release(v5);
  _Block_release(v5);
}

- (void)listIntermediateCheckpointsWithStep:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_748C8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  SnapshotContainerTaskServer.listIntermediateCheckpoints(step:completion:)(v8, v10, sub_199A0, v11);

  sub_FB28(v8, v10);
}

- (void)invalidateAfter:(int64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  SnapshotContainerTaskServer.invalidate(after:completion:)(a3, sub_303D4, v7);
}

- (void)requestDatabaseAssertionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_2F7C4(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)invalidateDatabaseAssertionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = *(*&self->HDStandardTaskServer_opaque[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] + 40);
  v6 = self;

  sub_74CC8();

  v4[2](v4);

  _Block_release(v4);
}

- (_TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer)initWithUUID:(id)a3 configuration:(id)a4 client:(id)a5 delegate:(id)a6
{
  v9 = sub_749B8();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_74998();
  v13 = a4;
  v14 = a5;
  swift_unknownObjectRetain();
  return SnapshotContainerTaskServer.init(uuid:configuration:client:delegate:)(v12, a4, v14, a6);
}

- (void)dealloc
{
  v2 = self;
  v3 = [(SnapshotContainerTaskServer *)v2 client];
  v4 = [v3 profile];

  v5 = [v4 workoutManager];
  if (v5)
  {
    [v5 unregisterCurrentWorkoutObserver:v2];
  }

  v6.receiver = v2;
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

- (void)workoutManager:(id)a3 didUpdateCurrentWorkout:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_446DC(a4);
}

@end