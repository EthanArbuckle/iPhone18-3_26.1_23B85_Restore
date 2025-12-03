@interface HKSecondaryDevicePairingAgent
- (HKSecondaryDevicePairingAgent)initWithHealthStore:(id)store;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion;
- (void)fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion;
- (void)performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion;
- (void)requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion;
- (void)setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion;
- (void)tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion;
- (void)tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion;
@end

@implementation HKSecondaryDevicePairingAgent

- (HKSecondaryDevicePairingAgent)initWithHealthStore:(id)store
{
  storeCopy = store;
  v13.receiver = self;
  v13.super_class = HKSecondaryDevicePairingAgent;
  v6 = [(HKSecondaryDevicePairingAgent *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_healthStore, store);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    identifier = v7->_identifier;
    v7->_identifier = uUID;

    v10 = [[HKTaskServerProxyProvider alloc] initWithHealthStore:v7->_healthStore taskIdentifier:@"HKSecondaryDevicePairingAgentServerIdentifier" exportedObject:v7 taskUUID:v7->_identifier];
    proxyProvider = v7->_proxyProvider;
    v7->_proxyProvider = v10;

    [(HKProxyProvider *)v7->_proxyProvider setShouldRetryOnInterruption:0];
  }

  return v7;
}

- (void)requestTinkerSharingOptInWithGuardianDisplayName:(id)name NRDeviceUUID:(id)d completion:(id)completion
{
  v35 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v12 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v13 = v12;
    v14 = NSStringFromSelector(a2);
    *buf = 138544130;
    selfCopy = self;
    v29 = 2114;
    v30 = v14;
    v31 = 2114;
    v32 = nameCopy;
    v33 = 2114;
    v34 = dCopy;
    _os_log_impl(&dword_19197B000, v13, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called with guardian display name: %{public}@, NRDevice UUID: %{public}@ (#t0)", buf, 0x2Au);
  }

  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke;
  v23[3] = &unk_1E7384848;
  v24 = nameCopy;
  v25 = dCopy;
  v26 = completionCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2;
  v20[3] = &unk_1E7379A58;
  v21 = v26;
  v22 = a2;
  v20[4] = self;
  v16 = v26;
  v17 = dCopy;
  v18 = nameCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)setupHealthSharingForSecondaryPairedDeviceWithConfiguration:(id)configuration completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138543874;
    selfCopy = self;
    v24 = 2114;
    v25 = v11;
    v26 = 2114;
    v27 = configurationCopy;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called with configuration: %{public}@ (#t0)", buf, 0x20u);
  }

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __104__HKSecondaryDevicePairingAgent_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke;
  v19[3] = &unk_1E7384870;
  v20 = configurationCopy;
  v21 = completionCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __104__HKSecondaryDevicePairingAgent_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke_2;
  v16[3] = &unk_1E7379A58;
  v17 = v21;
  v18 = a2;
  v16[4] = self;
  v13 = v21;
  v14 = configurationCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __104__HKSecondaryDevicePairingAgent_setupHealthSharingForSecondaryPairedDeviceWithConfiguration_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)performEndToEndCloudSyncWithNRDeviceUUID:(id)d syncParticipantFirst:(BOOL)first completion:(id)completion
{
  firstCopy = first;
  v35 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v11 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    v13 = NSStringFromSelector(a2);
    v14 = v13;
    v15 = @"NO";
    *buf = 138544130;
    selfCopy = self;
    if (firstCopy)
    {
      v15 = @"YES";
    }

    v29 = 2114;
    v30 = v13;
    v31 = 2114;
    v32 = dCopy;
    v33 = 2114;
    v34 = v15;
    _os_log_impl(&dword_19197B000, v12, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called with NRDevice UUID: %{public}@, syncParticipantFirst: %{public}@ (#t0)", buf, 0x2Au);
  }

  proxyProvider = self->_proxyProvider;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __106__HKSecondaryDevicePairingAgent_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke;
  v23[3] = &unk_1E7384898;
  v24 = dCopy;
  v26 = firstCopy;
  v25 = completionCopy;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __106__HKSecondaryDevicePairingAgent_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_2;
  v20[3] = &unk_1E7379A58;
  v21 = v25;
  v22 = a2;
  v20[4] = self;
  v17 = v25;
  v18 = dCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v23 errorHandler:v20];

  v19 = *MEMORY[0x1E69E9840];
}

void __106__HKSecondaryDevicePairingAgent_performEndToEndCloudSyncWithNRDeviceUUID_syncParticipantFirst_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)tearDownHealthSharingWithPairedGuardianWithCompletion:(id)completion
{
  v21 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called (#t0)", buf, 0x16u);
  }

  proxyProvider = self->_proxyProvider;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __87__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke;
  v15[3] = &unk_1E73848C0;
  v16 = completionCopy;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __87__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke_2;
  v12[3] = &unk_1E7379A58;
  v13 = v16;
  v14 = a2;
  v12[4] = self;
  v10 = v16;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v15 errorHandler:v12];

  v11 = *MEMORY[0x1E69E9840];
}

void __87__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithPairedGuardianWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)tearDownHealthSharingWithTinkerDeviceWithNRUUID:(id)d completion:(id)completion
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_DEFAULT))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v24 = 2114;
    v25 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_DEFAULT, "[sharing-setup] %{public}@ %{public}@ called (#t0)", buf, 0x16u);
  }

  proxyProvider = self->_proxyProvider;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __92__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke;
  v19[3] = &unk_1E7384870;
  v20 = dCopy;
  v21 = completionCopy;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __92__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_2;
  v16[3] = &unk_1E7379A58;
  v17 = v21;
  v18 = a2;
  v16[4] = self;
  v13 = v21;
  v14 = dCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v19 errorHandler:v16];

  v15 = *MEMORY[0x1E69E9840];
}

void __92__HKSecondaryDevicePairingAgent_tearDownHealthSharingWithTinkerDeviceWithNRUUID_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSharingStatusWithPairedGuardianWithCompletion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  _HKInitializeLogging();
  v6 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_INFO))
  {
    v7 = v6;
    v8 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&dword_19197B000, v7, OS_LOG_TYPE_INFO, "[sharing-setup] %{public}@ %{public}@", buf, 0x16u);
  }

  v9 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke;
  v16[3] = &unk_1E73848C0;
  v17 = v9;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke_2;
  v13[3] = &unk_1E7379A58;
  v14 = v17;
  v15 = a2;
  v13[4] = self;
  v11 = v17;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v16 errorHandler:v13];

  v12 = *MEMORY[0x1E69E9840];
}

void __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (void)fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress:(id)address completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  addressCopy = address;
  completionCopy = completion;
  _HKInitializeLogging();
  v9 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    v11 = NSStringFromSelector(a2);
    *buf = 138543618;
    selfCopy = self;
    v25 = 2114;
    v26 = v11;
    _os_log_impl(&dword_19197B000, v10, OS_LOG_TYPE_INFO, "[sharing-setup] %{public}@ %{public}@", buf, 0x16u);
  }

  v12 = [(HKProxyProvider *)self->_proxyProvider clientQueueActionHandlerWithCompletion:completionCopy];

  proxyProvider = self->_proxyProvider;
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __101__HKSecondaryDevicePairingAgent_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke;
  v20[3] = &unk_1E7384870;
  v21 = addressCopy;
  v22 = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __101__HKSecondaryDevicePairingAgent_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke_2;
  v17[3] = &unk_1E7379A58;
  v18 = v22;
  v19 = a2;
  v17[4] = self;
  v14 = v22;
  v15 = addressCopy;
  [(HKProxyProvider *)proxyProvider fetchProxyWithHandler:v20 errorHandler:v17];

  v16 = *MEMORY[0x1E69E9840];
}

void __101__HKSecondaryDevicePairingAgent_fetchSharingStatusForCurrentAppleIDWithOwnerEmailAddress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  _HKInitializeLogging();
  v4 = HKLogSync;
  if (os_log_type_enabled(HKLogSync, OS_LOG_TYPE_ERROR))
  {
    __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke_2_cold_1(a1, v4);
  }

  (*(*(a1 + 40) + 16))();
}

- (id)exportedInterface
{
  v2 = objc_opt_class();

  return [v2 clientInterface];
}

- (id)remoteInterface
{
  v2 = objc_opt_class();

  return [v2 serverInterface];
}

void __106__HKSecondaryDevicePairingAgent_requestTinkerSharingOptInWithGuardianDisplayName_NRDeviceUUID_completion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_11(a1, a2);
  v4 = OUTLINED_FUNCTION_4_2();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v6, v7, "[sharing-setup] %{public}@: %{public}@ call failed: %{public}@ (#t0)", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void __84__HKSecondaryDevicePairingAgent_fetchSharingStatusWithPairedGuardianWithCompletion___block_invoke_2_cold_1(uint64_t a1, void *a2)
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_11(a1, a2);
  v4 = OUTLINED_FUNCTION_4_2();
  v5 = NSStringFromSelector(v4);
  OUTLINED_FUNCTION_0_30();
  OUTLINED_FUNCTION_2_7(&dword_19197B000, v6, v7, "%{public}@: %{public}@ call failed: %{public}@ (#t0)", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

@end