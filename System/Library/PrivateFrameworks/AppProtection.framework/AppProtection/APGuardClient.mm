@interface APGuardClient
- (_TtC13AppProtection13APGuardClient)init;
- (void)abortOngoingAuthWithCompletion:(id)a3;
- (void)authenticateForBundle:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5;
- (void)authenticateUnconditionallyWithCompletion:(id)a3;
- (void)authenticateUnconditionallyWithReason:(id)a3 completion:(id)a4;
- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)a3 transactionUUID:(id)a4 completion:(id)a5;
- (void)beginTransactionForAccessOfBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 transactionUUID:(id)a6 completion:(id)a7;
- (void)endAuthTimeoutExtensionTransactionWithUUID:(id)a3 completion:(id)a4;
- (void)endTransactionWithUUID:(id)a3 completion:(id)a4;
- (void)initiateAuthenticationWithShieldingForBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6;
- (void)monitorTransactionWithUUID:(id)a3 invalidationBlock:(id)a4;
- (void)noteAllScenesDismissedForBundleID:(id)a3 completion:(id)a4;
@end

@implementation APGuardClient

- (void)initiateAuthenticationWithShieldingForBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_185B67E4C();
  v12 = v11;
  _Block_copy(v9);
  v13 = self;
  sub_185B0604C(v10, v12, a4, a5, v13, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)beginTransactionForAccessOfBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 transactionUUID:(id)a6 completion:(id)a7
{
  v11 = sub_185B67AFC();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _Block_copy(a7);
  v18 = sub_185B67E4C();
  v20 = v19;
  sub_185B67ADC();
  _Block_copy(v17);
  v21 = self;
  sub_185B063B8(v18, v20, a4, a5, v16, v21, v17);
  _Block_release(v17);
  _Block_release(v17);

  (*(v12 + 8))(v16, v11);
}

- (void)endTransactionWithUUID:(id)a3 completion:(id)a4
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a4);
  sub_185B67ADC();
  _Block_copy(v12);
  v13 = self;
  sub_185B06590(v11, v13, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v7 + 8))(v11, v6);
}

- (void)authenticateUnconditionallyWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_185B06738(0, 0, v5, v4);
  _Block_release(v4);

  _Block_release(v4);
}

- (void)authenticateUnconditionallyWithReason:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (a3)
  {
    v7 = sub_185B67E4C();
    a3 = v8;
  }

  else
  {
    v7 = 0;
  }

  _Block_copy(v6);
  v9 = self;
  sub_185B06738(v7, a3, v9, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)authenticateForBundle:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_185B67E4C();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_185B06AA4(v8, v10, a4, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)abortOngoingAuthWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v7[2] = sub_185B077AC;
  v7[3] = v5;
  v6 = self;
  sub_185AFC774(sub_185B077A8, v7, sub_185AFEBA8);
}

- (void)noteAllScenesDismissedForBundleID:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  sub_185B67E4C();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v9 = sub_185B077AC;
  v10 = v6;
  v7 = self;
  sub_185AFC774(sub_185B077A8, v8, sub_185B05CB0);
}

- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)a3 transactionUUID:(id)a4 completion:(id)a5
{
  v7 = sub_185B67AFC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = _Block_copy(a5);
  v14 = sub_185B67E4C();
  v16 = v15;
  sub_185B67ADC();
  v17 = swift_allocObject();
  *(v17 + 16) = v13;
  v20 = v14;
  v21 = v16;
  v22 = self;
  v23 = v12;
  v24 = sub_185B077AC;
  v25 = v17;
  v18 = self;
  sub_185B05910(sub_185B05CA0, v19, v18, sub_185B077AC);

  (*(v8 + 8))(v12, v7);
}

- (void)endAuthTimeoutExtensionTransactionWithUUID:(id)a3 completion:(id)a4
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v16[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(a4);
  sub_185B67ADC();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = v14;
  v18 = v11;
  v19 = sub_185B077AC;
  v20 = v13;
  v15 = self;
  sub_185B05910(sub_185B05BF0, v16, v15, sub_185B077AC);

  (*(v7 + 8))(v11, v6);
}

- (void)monitorTransactionWithUUID:(id)a3 invalidationBlock:(id)a4
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = _Block_copy(a4);
  sub_185B67ADC();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v16 = v11;
  v17 = self;
  v18 = sub_185B040F8;
  v19 = v13;
  v14 = self;
  sub_185B05910(sub_185B04100, v15, v14, sub_185B040F8);

  (*(v7 + 8))(v11, v6);
}

- (_TtC13AppProtection13APGuardClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end