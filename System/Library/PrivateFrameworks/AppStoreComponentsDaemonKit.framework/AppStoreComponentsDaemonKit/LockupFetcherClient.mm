@interface LockupFetcherClient
- (_TtC27AppStoreComponentsDaemonKit19LockupFetcherClient)init;
- (void)buildLockupFromMediaAPIResponse:(id)a3 withContext:(id)a4 withReplyHandler:(id)a5;
- (void)getLockupForBundleID:(id)a3 withContext:(id)a4 enableAppDistribution:(BOOL)a5 withReplyHandler:(id)a6;
@end

@implementation LockupFetcherClient

- (void)getLockupForBundleID:(id)a3 withContext:(id)a4 enableAppDistribution:(BOOL)a5 withReplyHandler:(id)a6
{
  v6 = a5;
  v9 = _Block_copy(a6);
  v10 = sub_22273919C();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = a4;
  v15 = self;
  sub_22271B1C8(v10, v12, v14, v6, sub_22272506C, v13);
}

- (void)buildLockupFromMediaAPIResponse:(id)a3 withContext:(id)a4 withReplyHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_22273910C();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v10 = a4;
  v11 = self;
  sub_22271F818(v8, v10, sub_222724250, v9);
}

- (_TtC27AppStoreComponentsDaemonKit19LockupFetcherClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end