@interface InstallCoordinationInstallObserver.Delegate
- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Delegate)init;
- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5;
- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4;
- (void)shouldPrioritizeAppWithIdentity:(id)a3;
@end

@implementation InstallCoordinationInstallObserver.Delegate

- (void)coordinatorDidCompleteSuccessfully:(id)a3 forApplicationRecord:(id)a4
{
  v7 = sub_1001F0C48(&unk_100783A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  v11 = a3;
  v12 = a4;
  v13 = self;
  v14 = [v11 identity];
  v17[0] = a3;
  v17[1] = v14;
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = a4;
  v18 = 0;
  v15 = v11;
  v16 = v12;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  (*(v8 + 8))(v10, v7);
}

- (void)coordinator:(id)a3 canceledWithReason:(id)a4 client:(unint64_t)a5
{
  v7 = a3;
  v9 = a4;
  v8 = self;
  sub_1003F9A64(v7, v9);
}

- (void)shouldPrioritizeAppWithIdentity:(id)a3
{
  v5 = sub_1001F0C48(&unk_100783A20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v11[0] = 0;
  v11[1] = a3;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 3;
  v12 = 4;
  v9 = a3;
  v10 = self;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  (*(v6 + 8))(v8, v5);
}

- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Delegate)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end