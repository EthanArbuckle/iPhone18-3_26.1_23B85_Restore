@interface InstallCoordinationInstallObserver.Delegate
- (_TtCC28ManagedAppDistributionDaemon34InstallCoordinationInstallObserverP33_B8C0BD49E46B9356C2E4FA5F73F7501B8Delegate)init;
- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client;
- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record;
- (void)shouldPrioritizeAppWithIdentity:(id)identity;
@end

@implementation InstallCoordinationInstallObserver.Delegate

- (void)coordinatorDidCompleteSuccessfully:(id)successfully forApplicationRecord:(id)record
{
  v7 = sub_1001F0C48(&unk_100783A20);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v17 - v9;
  successfullyCopy = successfully;
  recordCopy = record;
  selfCopy = self;
  identity = [successfullyCopy identity];
  v17[0] = successfully;
  v17[1] = identity;
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = record;
  v18 = 0;
  v15 = successfullyCopy;
  v16 = recordCopy;
  sub_1001F0C48(&unk_100783A00);
  AsyncStream.Continuation.yield(_:)();

  (*(v8 + 8))(v10, v7);
}

- (void)coordinator:(id)coordinator canceledWithReason:(id)reason client:(unint64_t)client
{
  coordinatorCopy = coordinator;
  reasonCopy = reason;
  selfCopy = self;
  sub_1003F9A64(coordinatorCopy, reasonCopy);
}

- (void)shouldPrioritizeAppWithIdentity:(id)identity
{
  v5 = sub_1001F0C48(&unk_100783A20);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - v7;
  v11[0] = 0;
  v11[1] = identity;
  v11[3] = 0;
  v11[4] = 0;
  v11[2] = 3;
  v12 = 4;
  identityCopy = identity;
  selfCopy = self;
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