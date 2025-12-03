@interface APGuardClient
- (_TtC13AppProtection13APGuardClient)init;
- (void)abortOngoingAuthWithCompletion:(id)completion;
- (void)authenticateForBundle:(id)bundle interfacePresentationTarget:(id *)target completion:(id)completion;
- (void)authenticateUnconditionallyWithCompletion:(id)completion;
- (void)authenticateUnconditionallyWithReason:(id)reason completion:(id)completion;
- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)bundle transactionUUID:(id)d completion:(id)completion;
- (void)beginTransactionForAccessOfBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason transactionUUID:(id)d completion:(id)completion;
- (void)endAuthTimeoutExtensionTransactionWithUUID:(id)d completion:(id)completion;
- (void)endTransactionWithUUID:(id)d completion:(id)completion;
- (void)initiateAuthenticationWithShieldingForBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion;
- (void)monitorTransactionWithUUID:(id)d invalidationBlock:(id)block;
- (void)noteAllScenesDismissedForBundleID:(id)d completion:(id)completion;
@end

@implementation APGuardClient

- (void)initiateAuthenticationWithShieldingForBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_185B67E4C();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  sub_185B0604C(v10, v12, token, reason, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)beginTransactionForAccessOfBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason transactionUUID:(id)d completion:(id)completion
{
  v11 = sub_185B67AFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(completion);
  v18 = sub_185B67E4C();
  v20 = v19;
  sub_185B67ADC();
  _Block_copy(v17);
  selfCopy = self;
  sub_185B063B8(v18, v20, token, reason, v16, selfCopy, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v12 + 8))(v16, v11);
}

- (void)endTransactionWithUUID:(id)d completion:(id)completion
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_185B67ADC();
  _Block_copy(v12);
  selfCopy = self;
  sub_185B06590(v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v7 + 8))(v11, v6);
}

- (void)authenticateUnconditionallyWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_185B06738(0, 0, selfCopy, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (void)authenticateUnconditionallyWithReason:(id)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (reason)
  {
    v7 = sub_185B67E4C();
    reason = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  selfCopy = self;
  sub_185B06738(v7, reason, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)authenticateForBundle:(id)bundle interfacePresentationTarget:(id *)target completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_185B67E4C();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_185B06AA4(v8, v10, target, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)abortOngoingAuthWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v7[2] = sub_185B077AC;
  v7[3] = v5;
  selfCopy = self;
  sub_185AFC774(sub_185B077A8, v7, sub_185AFEBA8);
}

- (void)noteAllScenesDismissedForBundleID:(id)d completion:(id)completion
{
  v5 = _Block_copy(completion);
  sub_185B67E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v9 = sub_185B077AC;
  v10 = v6;
  selfCopy = self;
  sub_185AFC774(sub_185B077A8, v8, sub_185B05CB0);
}

- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)bundle transactionUUID:(id)d completion:(id)completion
{
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _Block_copy(completion);
  v14 = sub_185B67E4C();
  v16 = v15;
  sub_185B67ADC();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v20 = v14;
  v21 = v16;
  selfCopy = self;
  v23 = v12;
  v24 = sub_185B077AC;
  v25 = v17;
  selfCopy2 = self;
  sub_185B05910(sub_185B05CA0, v19, selfCopy2, sub_185B077AC);

  (*(v8 + 8))(v12, v7);
}

- (void)endAuthTimeoutExtensionTransactionWithUUID:(id)d completion:(id)completion
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(completion);
  sub_185B67ADC();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v14;
  v18 = v11;
  v19 = sub_185B077AC;
  v20 = v13;
  selfCopy = self;
  sub_185B05910(sub_185B05BF0, v16, selfCopy, sub_185B077AC);

  (*(v7 + 8))(v11, v6);
}

- (void)monitorTransactionWithUUID:(id)d invalidationBlock:(id)block
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(block);
  sub_185B67ADC();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v16 = v11;
  selfCopy = self;
  v18 = sub_185B040F8;
  v19 = v13;
  selfCopy2 = self;
  sub_185B05910(sub_185B04100, v15, selfCopy2, sub_185B040F8);

  (*(v7 + 8))(v11, v6);
}

- (_TtC13AppProtection13APGuardClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end