@interface APVisionOSDummyServer
+ (id)sharedInstance;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)dummyServiceConnectionForServiceName:(id)name;
- (void)authenticateForBundle:(id)bundle interfacePresentationTarget:(id *)target completion:(id)completion;
- (void)authenticateForExtensionWithUUID:(id)d reasonDescription:(id)description completion:(id)completion;
- (void)authenticateUnconditionallyWithReason:(id)reason completion:(id)completion;
- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)bundle transactionUUID:(id)d completion:(id)completion;
- (void)beginMonitoringForExtensionUUID:(id)d monitorUUID:(id)iD;
- (void)beginTransactionForAccessOfBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason transactionUUID:(id)d completion:(id)completion;
- (void)endMonitoringForMonitorUUID:(id)d;
- (void)extensionRequiresAuthentication:(id)authentication completion:(id)completion;
- (void)getConfiguration:(id)configuration;
- (void)getIsChallengeCurrentlyRequiredForBundle:(id)bundle completion:(id)completion;
- (void)getPerAppManagedProtectability:(id)protectability;
- (void)getStateDumpWithCompletion:(id)completion;
- (void)initiateAuthenticationWithShieldingForBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion;
- (void)monitorTransactionWithUUID:(id)d invalidationBlock:(id)block;
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

- (id)dummyServiceConnectionForServiceName:(id)name
{
  v4 = sub_185B67E4C();
  result = sub_185AF4204(v4, v5);
  if (v9)
  {
    v10 = v7;
    v11 = v8;
    selfCopy = self;

    endpoint = [v10 endpoint];
    initWithListenerEndpoint_ = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];

    return initWithListenerEndpoint_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_185AF4498(listenerCopy, connectionCopy);

  return v9;
}

- (void)getConfiguration:(id)configuration
{
  v3 = _Block_copy(configuration);
  v4 = [objc_allocWithZone(APClientState) init];
  v3[2](v3, v4, 0);
  _Block_release(v3);
}

- (void)getPerAppManagedProtectability:(id)protectability
{
  v3 = _Block_copy(protectability);
  sub_185B52F9C(MEMORY[0x1E69E7CC0]);
  v4 = objc_allocWithZone(APPerAppManagedProtectability);
  sub_185ADF590(0, &qword_1EA8CB630, off_1E6EE83A0);
  v5 = sub_185B67D7C();

  initWithPerAppProtectability_ = [v4 initWithPerAppProtectability_];

  v3[2](v3, initWithPerAppProtectability_, 0);
  _Block_release(v3);
}

- (void)initiateAuthenticationWithShieldingForBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)beginTransactionForAccessOfBundle:(id)bundle onBehalfOfProcessWithAuditToken:(id *)token accessGrantReason:(int64_t)reason transactionUUID:(id)d completion:(id)completion
{
  v8 = sub_185B67AFC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _Block_copy(completion);
  sub_185B67ADC();
  v14[2](v14, 0);
  _Block_release(v14);
  (*(v9 + 8))(v13, v8);
}

- (void)getIsChallengeCurrentlyRequiredForBundle:(id)bundle completion:(id)completion
{
  v4 = _Block_copy(completion);
  sub_185ADF590(0, &qword_1EA8CC020, 0x1E696AD98);
  v5 = sub_185B6825C();
  v4[2](v4, v5, 0);
  _Block_release(v4);
}

- (void)authenticateUnconditionallyWithReason:(id)reason completion:(id)completion
{
  v4 = _Block_copy(completion);
  v4[2](v4, 1, 0);

  _Block_release(v4);
}

- (void)authenticateForBundle:(id)bundle interfacePresentationTarget:(id *)target completion:(id)completion
{
  v5 = _Block_copy(completion);
  v5[2](v5, 0);

  _Block_release(v5);
}

- (void)beginAuthTimeoutExtensionTransactionForBundle:(id)bundle transactionUUID:(id)d completion:(id)completion
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_185B67ADC();
  v12[2](v12, 0);
  _Block_release(v12);
  (*(v7 + 8))(v11, v6);
}

- (void)monitorTransactionWithUUID:(id)d invalidationBlock:(id)block
{
  v4 = sub_185B67AFC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  (*(v5 + 8))(v9, v4);
}

- (void)getStateDumpWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_185AF59F8(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)beginMonitoringForExtensionUUID:(id)d monitorUUID:(id)iD
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

- (void)endMonitoringForMonitorUUID:(id)d
{
  v3 = sub_185B67AFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_185B67ADC();
  (*(v4 + 8))(v8, v3);
}

- (void)authenticateForExtensionWithUUID:(id)d reasonDescription:(id)description completion:(id)completion
{
  v6 = sub_185B67AFC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_185B67ADC();
  v12[2](v12, 1, 0);
  _Block_release(v12);
  (*(v7 + 8))(v11, v6);
}

- (void)extensionRequiresAuthentication:(id)authentication completion:(id)completion
{
  v5 = sub_185B67AFC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _Block_copy(completion);
  sub_185B67ADC();
  v11[2](v11, 1, 0);
  _Block_release(v11);
  (*(v6 + 8))(v10, v5);
}

@end