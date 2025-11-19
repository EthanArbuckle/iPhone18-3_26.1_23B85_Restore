@interface HMClientConnection
+ (NSURL)siriHomeIdentifier;
+ (NSUUID)UUID;
+ (id)logCategory;
+ (id)sharedInstance;
+ (id)siriCurrentHome;
- (HMClientConnection)init;
- (HMClientConnection)initWithContext:(id)a3 areHomesConfigured:(BOOL)a4;
- (void)fetchHH1EOLStatusForResidentDevice:(id)a3 completion:(id)a4;
- (void)requestSiriSyncDataWithValidity:(id)a3 completion:(id)a4;
- (void)sendIntentRequestCommand:(id)a3 withPayload:(id)a4 completionHandler:(id)a5;
- (void)sendSiriCommand:(id)a3 completionHandler:(id)a4;
@end

@implementation HMClientConnection

- (void)fetchHH1EOLStatusForResidentDevice:(id)a3 completion:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMClientConnection fetchHH1EOLStatusForResidentDevice:completion:]", @"completion"];
    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v24;
      v32 = 2112;
      v33 = v20;
      _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v21);
    v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
    objc_exception_throw(v25);
  }

  v8 = v7;
  v9 = MEMORY[0x1E69A2A10];
  v10 = objc_alloc(MEMORY[0x1E69A2A00]);
  v11 = [objc_opt_class() UUID];
  v12 = [v10 initWithTarget:v11];
  v28 = @"version";
  v13 = [v6 versionString];
  v29 = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v15 = [v9 messageWithName:@"HMCC.hh1EOLStatus" destination:v12 payload:v14];

  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__HMClientConnection_fetchHH1EOLStatusForResidentDevice_completion___block_invoke;
  v26[3] = &unk_1E754C0F0;
  v27 = v8;
  v16 = v8;
  [v15 setResponseHandler:v26];
  v17 = [(HMClientConnection *)self context];
  v18 = [v17 messageDispatcher];
  [v18 sendMessage:v15];

  v19 = *MEMORY[0x1E69E9840];
}

void __68__HMClientConnection_fetchHH1EOLStatusForResidentDevice_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (!v5)
  {
    [a3 hmf_BOOLForKey:@"enabled"];
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestSiriSyncDataWithValidity:(id)a3 completion:(id)a4
{
  v45 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(HMClientConnection *)self areHomesConfigured])
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C0]);
    v10 = MEMORY[0x1E696AEC0];
    v11 = MEMORY[0x19EAEB2A0](self, a2);
    v12 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/ClientConnection/HMClientConnection.m", 332];
    v38 = [v9 initWithName:v12];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v38 identifier];
      v18 = [v17 shortDescription];
      *buf = 138543874;
      v40 = v16;
      v41 = 2114;
      v42 = v18;
      v43 = 2112;
      v44 = v7;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Requesting Siri sync data with validity: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v19 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    [v19 setObject:v7 forKeyedSubscript:@"kSiriSyncDataValidityKey"];
    v20 = objc_alloc(MEMORY[0x1E69A2A10]);
    v21 = objc_alloc(MEMORY[0x1E69A2A00]);
    v22 = [objc_opt_class() UUID];
    v23 = [v21 initWithTarget:v22];
    v24 = [v20 initWithName:@"HMCC.m.siriSyncData" destination:v23 payload:v19];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __65__HMClientConnection_requestSiriSyncDataWithValidity_completion___block_invoke;
    v35[3] = &unk_1E754E480;
    v35[4] = v14;
    v36 = v38;
    v37 = v8;
    [v24 setResponseHandler:v35];
    v25 = [(HMClientConnection *)v14 context];
    v26 = [v25 messageDispatcher];
    [v26 sendMessage:v24];

    __HMFActivityScopeLeave();
  }

  else
  {
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v30;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Reporting send Siri sync data failure since there are no homes configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v27);
    v31 = objc_alloc_init(MEMORY[0x1E69C7810]);
    [v31 setCommandOutcome:*MEMORY[0x1E69C7D88]];
    v32 = [MEMORY[0x1E695DEC8] array];
    [v31 setActionResults:v32];

    v33 = [v31 dictionary];
    (*(v8 + 2))(v8, 0, v33);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __65__HMClientConnection_requestSiriSyncDataWithValidity_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[%{public}@] Siri sync data request failed: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543618;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v14 = "%{public}@[%{public}@] Siri sync data request succeeded";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendIntentRequestCommand:(id)a3 withPayload:(id)a4 completionHandler:(id)a5
{
  v45 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if ([(HMClientConnection *)self areHomesConfigured])
  {
    v12 = objc_alloc(MEMORY[0x1E69A29C0]);
    v13 = MEMORY[0x1E696AEC0];
    v14 = MEMORY[0x19EAEB2A0](self, a2);
    v15 = [v13 stringWithFormat:@"%@, %s:%ld", v14, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/ClientConnection/HMClientConnection.m", 296];
    v38 = [v12 initWithName:v15];

    v16 = objc_autoreleasePoolPush();
    v17 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v38 identifier];
      v21 = [v20 shortDescription];
      *buf = 138543874;
      v40 = v19;
      v41 = 2114;
      v42 = v21;
      v43 = 2112;
      v44 = v9;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending control home intent: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v16);
    v22 = objc_alloc(MEMORY[0x1E69A2A10]);
    v23 = objc_alloc(MEMORY[0x1E69A2A00]);
    v24 = [objc_opt_class() UUID];
    v25 = [v23 initWithTarget:v24];
    v26 = [v22 initWithName:@"kSiriIntentRequestKey" destination:v25 payload:v10];

    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __77__HMClientConnection_sendIntentRequestCommand_withPayload_completionHandler___block_invoke;
    v35[3] = &unk_1E754E480;
    v35[4] = v17;
    v36 = v38;
    v37 = v11;
    [v26 setResponseHandler:v35];
    v27 = [(HMClientConnection *)v17 context];
    v28 = [v27 messageDispatcher];
    [v28 sendMessage:v26];

    __HMFActivityScopeLeave();
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v40 = v32;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Reporting send intent request failure since there are no homes configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
    (*(v11 + 2))(v11, v33, 0);
  }

  v34 = *MEMORY[0x1E69E9840];
}

void __77__HMClientConnection_sendIntentRequestCommand_withPayload_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[%{public}@] Control home intent failed: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543618;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v14 = "%{public}@[%{public}@] Control home intent succeeded";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (void)sendSiriCommand:(id)a3 completionHandler:(id)a4
{
  v50[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([(HMClientConnection *)self areHomesConfigured])
  {
    v9 = objc_alloc(MEMORY[0x1E69A29C0]);
    v10 = MEMORY[0x1E696AEC0];
    v11 = MEMORY[0x19EAEB2A0](self, a2);
    v12 = [v10 stringWithFormat:@"%@, %s:%ld", v11, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/HomeKit/ClientConnection/HMClientConnection.m", 262];
    v41 = [v9 initWithName:v12];

    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [v41 identifier];
      v18 = [v17 shortDescription];
      v19 = [v7 actionRequests];
      *buf = 138543874;
      v45 = v16;
      v46 = 2114;
      v47 = v18;
      v48 = 2048;
      v49 = [v19 count];
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Sending Siri command with %lu action requests", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
    v20 = objc_alloc(MEMORY[0x1E69A2A10]);
    v21 = objc_alloc(MEMORY[0x1E69A2A00]);
    v22 = [objc_opt_class() UUID];
    v23 = [v21 initWithTarget:v22];
    v42 = @"kSiriCommandKey";
    v24 = encodeRootObject(v7);
    v43 = v24;
    v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v43 forKeys:&v42 count:1];
    v26 = [v20 initWithName:@"HMCC.m.siriCommand" destination:v23 payload:v25];

    [v26 setActivity:v41];
    v38[0] = MEMORY[0x1E69E9820];
    v38[1] = 3221225472;
    v38[2] = __56__HMClientConnection_sendSiriCommand_completionHandler___block_invoke;
    v38[3] = &unk_1E754E480;
    v38[4] = v14;
    v39 = v41;
    v40 = v8;
    [v26 setResponseHandler:v38];
    v27 = [(HMClientConnection *)v14 context];
    v28 = [v27 messageDispatcher];
    [v28 sendMessage:v26];

    __HMFActivityScopeLeave();
  }

  else
  {
    v29 = objc_autoreleasePoolPush();
    v30 = self;
    v31 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v32 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v32;
      _os_log_impl(&dword_19BB39000, v31, OS_LOG_TYPE_ERROR, "%{public}@Reporting send Siri command failure since no homes are configured", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    v33 = objc_alloc_init(MEMORY[0x1E69C7810]);
    [v33 setCommandOutcome:*MEMORY[0x1E69C7D80]];
    v34 = objc_alloc_init(MEMORY[0x1E69C7808]);
    [v34 setOutcome:*MEMORY[0x1E69C7CE8]];
    v50[0] = v34;
    v35 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:1];
    [v33 setActionResults:v35];

    v36 = [v33 dictionary];
    (*(v8 + 2))(v8, 0, v36);
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __56__HMClientConnection_sendSiriCommand_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      v12 = [*(a1 + 40) identifier];
      v13 = [v12 shortDescription];
      v20 = 138543874;
      v21 = v11;
      v22 = 2114;
      v23 = v13;
      v24 = 2112;
      v25 = v5;
      v14 = "%{public}@[%{public}@] Siri command failed: %@";
      v15 = v10;
      v16 = OS_LOG_TYPE_ERROR;
      v17 = 32;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v15, v16, v14, &v20, v17);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    v20 = 138543618;
    v21 = v11;
    v22 = 2114;
    v23 = v13;
    v14 = "%{public}@[%{public}@] Siri command succeeded";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v7);
  (*(*(a1 + 48) + 16))(*(a1 + 48), v5, v6, v18);

  v19 = *MEMORY[0x1E69E9840];
}

- (HMClientConnection)initWithContext:(id)a3 areHomesConfigured:(BOOL)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = HMClientConnection;
  v8 = [(HMClientConnection *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a3);
    v9->_homesConfigured = a4;
  }

  return v9;
}

- (HMClientConnection)init
{
  v3 = [objc_opt_class() areHomesConfigured];

  return [(HMClientConnection *)self initWithAreHomesConfigured:v3];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t13_43186 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t13_43186, &__block_literal_global_101_43187);
  }

  v3 = logCategory__hmf_once_v14_43188;

  return v3;
}

uint64_t __33__HMClientConnection_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v14_43188;
  logCategory__hmf_once_v14_43188 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (NSURL)siriHomeIdentifier
{
  v2 = +[HMClientConnection siriCurrentHome];
  v3 = [v2 currentHomeIdentifier];

  v4 = [MEMORY[0x1E695DFF8] URLWithString:v3];

  return v4;
}

+ (id)siriCurrentHome
{
  v2 = CFPreferencesCopyAppValue(@"kAssistantCurrentHomeIdentifierKey", @"com.apple.homed.notbackedup");
  v3 = CFPreferencesCopyAppValue(@"kAssistantCurrentHomeNameKey", @"com.apple.homed.notbackedup");
  v4 = objc_alloc_init(MEMORY[0x1E69C7818]);
  [v4 setCurrentHomeName:v3];
  [v4 setCurrentHomeIdentifier:v2];

  return v4;
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_43196 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_43196, &__block_literal_global_74);
  }

  v3 = sharedInstance_singletonClientConnection;

  return v3;
}

uint64_t __36__HMClientConnection_sharedInstance__block_invoke()
{
  v0 = [[HMClientConnection alloc] initWithNoValidation];
  v1 = sharedInstance_singletonClientConnection;
  sharedInstance_singletonClientConnection = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

+ (NSUUID)UUID
{
  if (UUID_onceToken != -1)
  {
    dispatch_once(&UUID_onceToken, &__block_literal_global_43197);
  }

  v3 = UUID_UUID;

  return v3;
}

uint64_t __26__HMClientConnection_UUID__block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"0BE06C66-413E-4DCC-8506-8DCE342DEFE4"];
  v1 = UUID_UUID;
  UUID_UUID = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end