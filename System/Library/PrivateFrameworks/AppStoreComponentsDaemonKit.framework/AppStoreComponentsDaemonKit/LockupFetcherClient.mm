@interface LockupFetcherClient
- (_TtC27AppStoreComponentsDaemonKit19LockupFetcherClient)init;
- (void)buildLockupFromMediaAPIResponse:(id)response withContext:(id)context withReplyHandler:(id)handler;
- (void)getLockupForBundleID:(id)d withContext:(id)context enableAppDistribution:(BOOL)distribution withReplyHandler:(id)handler;
@end

@implementation LockupFetcherClient

- (void)getLockupForBundleID:(id)d withContext:(id)context enableAppDistribution:(BOOL)distribution withReplyHandler:(id)handler
{
  distributionCopy = distribution;
  v9 = _Block_copy(handler);
  v10 = sub_22273919C();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  contextCopy = context;
  selfCopy = self;
  sub_22271B1C8(v10, v12, contextCopy, distributionCopy, sub_22272506C, v13);
}

- (void)buildLockupFromMediaAPIResponse:(id)response withContext:(id)context withReplyHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_22273910C();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  contextCopy = context;
  selfCopy = self;
  sub_22271F818(v8, contextCopy, sub_222724250, v9);
}

- (_TtC27AppStoreComponentsDaemonKit19LockupFetcherClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end