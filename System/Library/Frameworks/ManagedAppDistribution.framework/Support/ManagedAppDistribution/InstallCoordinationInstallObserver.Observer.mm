@interface InstallCoordinationInstallObserver.Observer
- (BOOL)isEqual:(id)a3;
- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Observer)init;
- (int64_t)hash;
- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6;
- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4;
@end

@implementation InstallCoordinationInstallObserver.Observer

- (void)coordinatorDidInstallPlaceholder:(id)a3 forApplicationRecord:(id)a4
{
  v7 = sub_1001F0C48(&unk_100783A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  if (a4)
  {
    v11 = a4;
    v12 = a3;
    v13 = self;
    v14 = [v12 identity];
    v17[0] = a3;
    v17[1] = v14;
    v17[3] = 0;
    v17[4] = 0;
    v17[2] = a4;
    v18 = 3;
    v15 = v11;
    v16 = v12;
    sub_1001F0C48(&unk_100783A00);
    AsyncStream.Continuation.yield(_:)();

    (*(v8 + 8))(v10, v7);
  }
}

- (void)coordinator:(id)a3 didUpdateProgress:(double)a4 forPhase:(unint64_t)a5 overallProgress:(double)a6
{
  v11 = sub_1001F0C48(&unk_100783A20);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v19 - v13;
  v15 = a3;
  v16 = self;
  v17 = [v15 identity];
  v19[0] = a3;
  v19[1] = v17;
  *&v19[2] = a4;
  v19[3] = a5;
  *&v19[4] = a6;
  v20 = 2;
  v18 = v15;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  (*(v12 + 8))(v14, v11);
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
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
  v8 = self;
  v9 = [v7 uniqueIdentifier];
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