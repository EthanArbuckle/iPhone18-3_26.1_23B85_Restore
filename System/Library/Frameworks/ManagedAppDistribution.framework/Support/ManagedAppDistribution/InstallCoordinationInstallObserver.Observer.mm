@interface InstallCoordinationInstallObserver.Observer
- (BOOL)isEqual:(id)equal;
- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer)init;
- (int64_t)hash;
- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress;
- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record;
@end

@implementation InstallCoordinationInstallObserver.Observer

- (void)coordinatorDidInstallPlaceholder:(id)placeholder forApplicationRecord:(id)record
{
  v7 = sub_1001F0C48(&unk_100783A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  if (record)
  {
    recordCopy = record;
    placeholderCopy = placeholder;
    selfCopy = self;
    identity = [placeholderCopy identity];
    v17[0] = placeholder;
    v17[1] = identity;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = record;
    v18 = 3;
    v15 = recordCopy;
    v16 = placeholderCopy;
    sub_1001F0C48(&unk_100783A00);
    AsyncStream.Continuation.yield(_:)();

    (*(v8 + 8))(v10, v7);
  }
}

- (void)coordinator:(id)coordinator didUpdateProgress:(double)progress forPhase:(unint64_t)phase overallProgress:(double)overallProgress
{
  v11 = sub_1001F0C48(&unk_100783A20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  coordinatorCopy = coordinator;
  selfCopy = self;
  identity = [coordinatorCopy identity];
  v19[0] = coordinator;
  v19[1] = identity;
  *&v19[2] = progress;
  v19[3] = phase;
  *&v19[4] = overallProgress;
  v20 = 2;
  v18 = coordinatorCopy;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  (*(v12 + 8))(v14, v11);
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_1003F01A8(v8);

  sub_1000032A8(v8, &qword_100783A30);
  return v6 & 1;
}

- (int64_t)hash
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init()();
  v7 = *(&self->super.isa + OBJC_IVAR____TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer_coordinator);
  selfCopy = self;
  uniqueIdentifier = [v7 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1003F9C4C(&qword_100781FF8, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  (*(v4 + 8))(v6, v3);
  v10 = Hasher.finalize()();

  return v10;
}

- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end