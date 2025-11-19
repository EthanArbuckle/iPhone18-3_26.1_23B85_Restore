@interface APVisionOSDummyServer
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)dummyServiceConnectionForServiceName:(id)a3;
- (void)authenticateForBundle:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5;
- (void)authenticateForExtensionWithUUID:(id)a3 reasonDescription:(id)a4 completion:(id)a5;
- (void)authenticateUnconditionallyWithReason:(id)a3 completion:(id)a4;
- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)a3 transactionUUID:(id)a4 completion:(id)a5;
- (void)beginMonitoringForExtensionUUID:(id)a3 monitorUUID:(id)a4;
- (void)beginTransactionForAccessOfBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 transactionUUID:(id)a6 completion:(id)a7;
- (void)endMonitoringForMonitorUUID:(id)a3;
- (void)extensionRequiresAuthentication:(id)a3 completion:(id)a4;
- (void)getConfiguration:(id)a3;
- (void)getIsChallengeCurrentlyRequiredForBundle:(id)a3 completion:(id)a4;
- (void)getPerAppManagedProtectability:(id)a3;
- (void)getStateDumpWithCompletion:(id)a3;
- (void)initiateAuthenticationWithShieldingForBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6;
- (void)monitorTransactionWithUUID:(id)a3 invalidationBlock:(id)a4;
@end

@implementation APVisionOSDummyServer

+ (id)sharedInstance
{
  if (qword_1EA8CC3C8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA8D2350;

  return v3;
}

- (id)dummyServiceConnectionForServiceName:(id)a3
{
  v4 = sub_185B67E4C();
  result = sub_185AF4204(v4, v5);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    v12 = self;

    v13 = [v10 endpoint];
    v14 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_185AF4498(v6, v7);

  return v9;
}

- (void)getConfiguration:(id)a3
{
  v3 = _Block_copy(a3);
  v4 = [objc_allocWithZone(APClientState) init];
  v3[2](v3, v4, 0);
  _Block_release(v3);
}

- (void)getPerAppManagedProtectability:(id)a3
{
  v3 = _Block_copy(a3);
  sub_185B52F9C(MEMORY[0x1E69E7CC0]);
  v4 = objc_allocWithZone(APPerAppManagedProtectability);
  sub_185ADF590(0, &qword_1EA8CB630, off_1E6EE83A0);
  v5 = sub_185B67D7C();

  v6 = [v4 initWithPerAppProtectability_];

  v3[2](v3, v6, 0);
  _Block_release(v3);
}

- (void)initiateAuthenticationWithShieldingForBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 completion:(id)a6
{
  v6 = _Block_copy(a6);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)beginTransactionForAccessOfBundle:(id)a3 onBehalfOfProcessWithAuditToken:(id *)a4 accessGrantReason:(int64_t)a5 transactionUUID:(id)a6 completion:(id)a7
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(a7);
  sub_185B67ADC();
  v14[2](v14, 0);
  _Block_release(v14);
  (*(v9 + 8))(v13, v8);
}

- (void)getIsChallengeCurrentlyRequiredForBundle:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v5 = sub_185B6825C();
  v4[2](v4, v5, 0);
  _Block_release(v4);
}

- (void)authenticateUnconditionallyWithReason:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v4[2](v4, 1, 0);

  _Block_release(v4);
}

- (void)authenticateForBundle:(id)a3 interfacePresentationTarget:(id *)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)a3 transactionUUID:(id)a4 completion:(id)a5
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_185B67ADC();
  v12[2](v12, 0);
  _Block_release(v12);
  (*(v7 + 8))(v11, v6);
}

- (void)monitorTransactionWithUUID:(id)a3 invalidationBlock:(id)a4
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  (*(v5 + 8))(v9, v4);
}

- (void)getStateDumpWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_185AF59F8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)beginMonitoringForExtensionUUID:(id)a3 monitorUUID:(id)a4
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x1EEE9AC00](v4, v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - v12;
  sub_185B67ADC();
  sub_185B67ADC();
  v14 = *(v5 + 8);
  v14(v10, v4);
  v14(v13, v4);
}

- (void)endMonitoringForMonitorUUID:(id)a3
{
  v3 = sub_185B67AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  (*(v4 + 8))(v8, v3);
}

- (void)authenticateForExtensionWithUUID:(id)a3 reasonDescription:(id)a4 completion:(id)a5
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(a5);
  sub_185B67ADC();
  v12[2](v12, 1, 0);
  _Block_release(v12);
  (*(v7 + 8))(v11, v6);
}

- (void)extensionRequiresAuthentication:(id)a3 completion:(id)a4
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(a4);
  sub_185B67ADC();
  v11[2](v11, 1, 0);
  _Block_release(v11);
  (*(v6 + 8))(v10, v5);
}

@end