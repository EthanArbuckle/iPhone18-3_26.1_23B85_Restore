@interface HMAccessorySetupCoordinator
+ (BOOL)isCHIPSetupPayloadURL:(id)a3;
+ (BOOL)isHAPSetupPayloadURL:(id)a3;
+ (BOOL)isSetupPayloadURL:(id)a3;
+ (BOOL)isSetupPayloadURLString:(id)a3;
+ (NSUUID)UUID;
+ (id)communicationProtocolForSetupPayloadURLString:(id)a3;
+ (id)logCategory;
+ (id)setupPayloadURLFromSetupPayloadURLString:(id)a3;
- (HMAccessorySetupCoordinator)init;
- (HMAccessorySetupCoordinator)initWithContext:(id)a3;
- (NSUUID)messageTargetUUID;
- (void)_createCHIPSetupAccessoryPayloadWithMessagePayload:(void *)a3 activity:(void *)a4 completionHandler:;
- (void)cancelStagedCHIPAccessoryPairingWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)cancelStagingForStagingRequestUUID:(id)a3 completionHandler:(id)a4;
- (void)configure;
- (void)confirmDeviceCredentialForStagingRequestUUID:(id)a3;
- (void)createCHIPSetupPayloadStringForStagedPairingWithIdentifier:(id)a3 completionHandler:(id)a4;
- (void)createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:(id)a3 completionHandler:(id)a4;
- (void)createSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 completionHandler:(id)a4;
- (void)createSetupAccessoryPayloadWithSetupPayloadURLString:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)handleCommissioneeInfoMessage:(id)a3;
- (void)handleMultiStepStageResponseError:(void *)a3 payload:(void *)a4 activity:;
- (void)handleUpdateStagingProgressMessage:(id)a3;
- (void)rejectDeviceCredentialForStagingRequestUUID:(id)a3;
- (void)selectThreadNetworkAssociation:(id)a3 forStagingRequestUUID:(id)a4;
- (void)selectWiFiNetworkAssociation:(id)a3 forStagingRequestUUID:(id)a4;
@end

@implementation HMAccessorySetupCoordinator

- (HMAccessorySetupCoordinator)init
{
  v3 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc.accessory-setup"];
  v4 = HMDispatchQueueNameString(self, 0);
  v5 = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(v5, v6);
  [(HMXPCMessageTransportConfiguration *)v3 setQueue:v7];

  [(HMXPCMessageTransportConfiguration *)v3 setRequiresHomeDataAccess:0];
  v8 = [[_HMContext alloc] initWithXPCClientConfiguration:v3];
  v9 = [(HMAccessorySetupCoordinator *)self initWithContext:v8];

  return v9;
}

- (void)configure
{
  if (self)
  {
    v3 = [objc_getProperty(self a2];
    [v3 registerForMessage:@"HMASC.m.updateStagingProgress" receiver:self selector:sel_handleUpdateStagingProgressMessage_];
    [v3 registerForMessage:@"HMASC.m.commissioneeInfo" receiver:self selector:sel_handleCommissioneeInfoMessage_];
  }
}

- (NSUUID)messageTargetUUID
{
  v2 = objc_opt_class();

  return [v2 UUID];
}

- (void)handleCommissioneeInfoMessage:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];

  v7 = [v4 messagePayload];
  v28[0] = objc_opt_class();
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v9 = [v7 hmf_unarchivedObjectForKey:@"HMASC.mk.commissioneeInfo" ofClasses:v8];

  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (v6 && v9)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v25 = v14;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@Calling didReceiveCommissioneeInfo for staging request %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    if (v11)
    {
      objc_getProperty(v11, v15, 24, 1);
    }

    if (objc_opt_respondsToSelector())
    {
      if (v11)
      {
        Property = objc_getProperty(v11, v16, 8, 1);
      }

      else
      {
        Property = 0;
      }

      v18 = [Property delegateCaller];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __61__HMAccessorySetupCoordinator_handleCommissioneeInfoMessage___block_invoke;
      v21[3] = &unk_1E754E5E8;
      v21[4] = v11;
      v22 = v9;
      v23 = v6;
      [v18 invokeBlock:v21];
    }
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v25 = v19;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Ignoring Commissionee Info message without required parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __61__HMAccessorySetupCoordinator_handleCommissioneeInfoMessage___block_invoke(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveCommissioneeInfo:v4 forStagingRequestUUID:v5];
}

- (void)handleUpdateStagingProgressMessage:(id)a3
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];

  v7 = [v4 messagePayload];
  v8 = [v7 hmf_numberForKey:@"HMASC.mk.setupAccessoryProgress"];

  if (v6 && v8)
  {
    v9 = [v8 unsignedIntegerValue];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = HMSetupAccessoryProgressAsString(v9);
      *buf = 138543874;
      v28 = v13;
      v29 = 2112;
      v30 = v14;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Calling didUpdateProgress with '%@' for staging request %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    if (v11)
    {
      objc_getProperty(v11, v15, 24, 1);
    }

    if (objc_opt_respondsToSelector())
    {
      if (v11)
      {
        Property = objc_getProperty(v11, v16, 8, 1);
      }

      else
      {
        Property = 0;
      }

      v18 = [Property delegateCaller];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__HMAccessorySetupCoordinator_handleUpdateStagingProgressMessage___block_invoke;
      v24[3] = &unk_1E754E120;
      v24[4] = v11;
      v26 = v9;
      v25 = v6;
      [v18 invokeBlock:v24];
    }
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v22;
      _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Ignoring Update Staging Progress message without required parameters", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
  }

  v23 = *MEMORY[0x1E69E9840];
}

uint64_t __66__HMAccessorySetupCoordinator_handleUpdateStagingProgressMessage___block_invoke(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v5 = a1[5];
  v4 = a1[6];

  return [Property didUpdateProgress:v4 forStagingRequestUUID:v5];
}

- (void)cancelStagedCHIPAccessoryPairingWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Cancel staged CHIP accessory pairing"];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 identifier];
    v19 = [v18 shortDescription];
    *buf = 138543874;
    v32 = v17;
    v33 = 2114;
    v34 = v19;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Canceling staged CHIP accessory pairing with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  v21 = [objc_opt_class() UUID];
  v5 = [v20 initWithTarget:v21];

  v29 = @"HMASC.mk.chipAccessoryPairingIdentifier";
  v30 = v10;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.cancelStagedCHIPAccessoryPairing" destination:v5 payload:v6];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __96__HMAccessorySetupCoordinator_cancelStagedCHIPAccessoryPairingWithIdentifier_completionHandler___block_invoke;
  v26[3] = &unk_1E754E480;
  v26[4] = v15;
  v27 = v13;
  v28 = v12;
  a4 = v12;
  v4 = v13;
  [v7 setResponseHandler:v26];
  if (!v15)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(v15, v22, 8, 1);
LABEL_6:
  v24 = [Property messageDispatcher];
  [v24 sendMessage:v7];

  v25 = *MEMORY[0x1E69E9840];
}

void __96__HMAccessorySetupCoordinator_cancelStagedCHIPAccessoryPairingWithIdentifier_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v22 = 138543874;
    *&v22[4] = v11;
    *&v22[12] = 2114;
    *&v22[14] = v13;
    *&v22[22] = 2112;
    v23 = v5;
    v14 = "%{public}@[%{public}@] Failed to cancel CHIP accessory pairing: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v22 = 138543618;
    *&v22[4] = v11;
    *&v22[12] = 2114;
    *&v22[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully canceled CHIP accessory pairing";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v22, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)createCHIPSetupPayloadStringForStagedPairingWithIdentifier:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  a4 = v11;
  if (!v11)
  {
LABEL_9:
    _HMFPreconditionFailure();
LABEL_10:
    Property = 0;
    goto LABEL_7;
  }

  v12 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create CHIP setup code"];
  v13 = objc_autoreleasePoolPush();
  v14 = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    v17 = [v12 identifier];
    v18 = [v17 shortDescription];
    *buf = 138543874;
    v31 = v16;
    v32 = 2114;
    v33 = v18;
    v34 = 2112;
    v35 = v10;
    _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating CHIP setup payload string for staged accessory pairing with identifier: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  v19 = objc_alloc(MEMORY[0x1E69A2A00]);
  v20 = [objc_opt_class() UUID];
  v5 = [v19 initWithTarget:v20];

  v28 = @"HMASC.mk.chipAccessoryPairingIdentifier";
  v29 = v10;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.createCHIPSetupPayloadString" destination:v5 payload:v6];
  v25[0] = MEMORY[0x1E69E9820];
  v25[1] = 3221225472;
  v25[2] = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke;
  v25[3] = &unk_1E754E480;
  v25[4] = v14;
  v26 = v12;
  v27 = a4;
  a4 = a4;
  v4 = v12;
  [v7 setResponseHandler:v25];
  if (!v14)
  {
    goto LABEL_10;
  }

  Property = objc_getProperty(v14, v21, 8, 1);
LABEL_7:
  v23 = [Property messageDispatcher];
  [v23 sendMessage:v7];

  v24 = *MEMORY[0x1E69E9840];
}

void __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v44 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = [v6 hmf_stringForKey:@"HMASC.mk.setupPayloadString"];
  v8 = objc_autoreleasePoolPush();
  v9 = a1[4];
  v10 = HMFGetOSLogHandle();
  v11 = v10;
  if (v7)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [a1[5] identifier];
      v14 = [v13 shortDescription];
      *buf = 138543874;
      v37 = v12;
      v38 = 2114;
      v39 = v14;
      v40 = 2112;
      v41 = v7;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully created CHIP setup payload string: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v15, 8, 1);
    }

    v17 = [Property delegateCaller];
    v27 = MEMORY[0x1E69E9820];
    v28 = 3221225472;
    v29 = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke_143;
    v30 = &unk_1E754E458;
    v18 = &v32;
    v32 = a1[6];
    v19 = &v31;
    v31 = v7;
    v20 = &v27;
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138544130;
      v37 = v21;
      v38 = 2114;
      v39 = v23;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = v5;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find CHIP setup payload string in response payload %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v8);
    v25 = a1[4];
    if (v25)
    {
      v25 = objc_getProperty(v25, v24, 8, 1);
    }

    v17 = [v25 delegateCaller];
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = __108__HMAccessorySetupCoordinator_createCHIPSetupPayloadStringForStagedPairingWithIdentifier_completionHandler___block_invoke_142;
    v33[3] = &unk_1E754E458;
    v18 = &v35;
    v35 = a1[6];
    v19 = &v34;
    v34 = v5;
    v20 = v33;
  }

  [v17 invokeBlock:{v20, v27, v28, v29, v30, v31}];

  v26 = *MEMORY[0x1E69E9840];
}

- (void)cancelStagingForStagingRequestUUID:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  if (!v10)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Cancel staging"];
  v14 = objc_autoreleasePoolPush();
  v15 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = [v13 identifier];
    v19 = [v18 shortDescription];
    *buf = 138543874;
    v32 = v17;
    v33 = 2114;
    v34 = v19;
    v35 = 2112;
    v36 = v10;
    _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Cancelling staging with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v14);
  v20 = objc_alloc(MEMORY[0x1E69A2A00]);
  v21 = [objc_opt_class() UUID];
  v5 = [v20 initWithTarget:v21];

  v29 = @"HMASC.mk.stagingRequestUUID";
  v30 = v10;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.cancelStaging" destination:v5 payload:v6];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __84__HMAccessorySetupCoordinator_cancelStagingForStagingRequestUUID_completionHandler___block_invoke;
  v26[3] = &unk_1E754E480;
  v26[4] = v15;
  v27 = v13;
  v28 = v12;
  a4 = v12;
  v4 = v13;
  [v7 setResponseHandler:v26];
  if (!v15)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(v15, v22, 8, 1);
LABEL_6:
  v24 = [Property messageDispatcher];
  [v24 sendMessage:v7];

  v25 = *MEMORY[0x1E69E9840];
}

void __84__HMAccessorySetupCoordinator_cancelStagingForStagingRequestUUID_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 32);
  v9 = HMFGetOSLogHandle();
  v10 = v9;
  if (v5)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v22 = 138543874;
    *&v22[4] = v11;
    *&v22[12] = 2114;
    *&v22[14] = v13;
    *&v22[22] = 2112;
    v23 = v5;
    v14 = "%{public}@[%{public}@] Failed to cancel staging: %@";
    v15 = v10;
    v16 = OS_LOG_TYPE_ERROR;
    v17 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_7;
    }

    v11 = HMFGetLogIdentifier();
    v12 = [*(a1 + 40) identifier];
    v13 = [v12 shortDescription];
    *v22 = 138543618;
    *&v22[4] = v11;
    *&v22[12] = 2114;
    *&v22[14] = v13;
    v14 = "%{public}@[%{public}@] Successfully cancelled staging";
    v15 = v10;
    v16 = OS_LOG_TYPE_INFO;
    v17 = 22;
  }

  _os_log_impl(&dword_19BB39000, v15, v16, v14, v22, v17);

LABEL_7:
  objc_autoreleasePoolPop(v7);
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, v18, 8, 1);
  }

  v20 = [Property delegateCaller];
  [v20 callCompletion:*(a1 + 48) error:v5];

  v21 = *MEMORY[0x1E69E9840];
}

- (void)selectWiFiNetworkAssociation:(id)a3 forStagingRequestUUID:(id)a4
{
  v50 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Select WiFi network association"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    *buf = 138544130;
    v43 = v13;
    v44 = 2114;
    v45 = v15;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v8;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Selecting WiFi network association %@ for request UUID: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v41 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v41];
  v17 = v41;
  v18 = v17;
  if (v16)
  {

LABEL_8:
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    v20 = [objc_opt_class() UUID];
    v21 = [v19 initWithTarget:v20];

    v22 = [MEMORY[0x1E695DF90] dictionary];
    [v22 setObject:v8 forKeyedSubscript:@"HMASC.mk.stagingRequestUUID"];
    [v22 setObject:v16 forKeyedSubscript:@"HMASC.mk.wifiNetworkAssociation"];
    v23 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.selectWiFiNetworkAssociation" destination:v21 payload:v22];
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke_2;
    v37[3] = &unk_1E754E570;
    v37[4] = v11;
    v38 = v9;
    [v23 setResponseHandler:v37];
    if (v11)
    {
      Property = objc_getProperty(v11, v24, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v26 = [Property messageDispatcher];
    [v26 sendMessage:v23];

    goto LABEL_16;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = v11;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    v31 = [v9 identifier];
    v32 = [v31 shortDescription];
    *buf = 138544130;
    v43 = v30;
    v44 = 2114;
    v45 = v32;
    v46 = 2112;
    v47 = v6;
    v48 = 2112;
    v49 = v18;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to encode WiFi network association %@: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v27);
  if (v28)
  {
    v34 = objc_getProperty(v28, v33, 8, 1);
  }

  else
  {
    v34 = 0;
  }

  v35 = [v34 delegateCaller];
  v39[0] = MEMORY[0x1E69E9820];
  v39[1] = 3221225472;
  v39[2] = __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke;
  v39[3] = &unk_1E754E5C0;
  v39[4] = v28;
  v40 = v18;
  v16 = v18;
  [v35 invokeBlock:v39];

LABEL_16:
  v36 = *MEMORY[0x1E69E9840];
}

uint64_t __82__HMAccessorySetupCoordinator_selectWiFiNetworkAssociation_forStagingRequestUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

- (void)handleMultiStepStageResponseError:(void *)a3 payload:(void *)a4 activity:
{
  v92[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v57 = [v8 hmf_UUIDForKey:@"HMASC.mk.stagingRequestUUID"];
    v92[0] = NSClassFromString(&cfstr_Mtsdevicecrede.isa);
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v92 count:1];
    v11 = [v8 hmf_unarchivedObjectForKey:@"HMASC.mk.deviceCredential" ofClasses:v10];

    v91[0] = objc_opt_class();
    v91[1] = NSClassFromString(&cfstr_Mtswifiscanres.isa);
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:2];
    v13 = [v8 hmf_unarchivedObjectForKey:@"HMASC.mk.wifiScanResults" ofClasses:v12];

    v90[0] = objc_opt_class();
    v90[1] = NSClassFromString(&cfstr_Mtsthreadscanr.isa);
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v90 count:2];
    v15 = [v8 hmf_unarchivedObjectForKey:@"HMASC.mk.threadScanResults" ofClasses:v14];

    v16 = [v8 hmf_stringForKey:@"HMASC.mk.chipAccessoryPairingIdentifier"];
    v54 = [v8 hmf_UUIDForKey:@"HMASC.mk.devicePairingUUID"];
    v17 = objc_autoreleasePoolPush();
    v18 = a1;
    v19 = HMFGetOSLogHandle();
    v20 = v19;
    v55 = v13;
    v56 = v11;
    if (v11 || v13 || v15 || v16)
    {
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        HMFGetLogIdentifier();
        v36 = v53 = v7;
        v37 = [v9 identifier];
        [v37 shortDescription];
        v38 = v16;
        v40 = v39 = v15;
        *buf = 138545154;
        v75 = v36;
        v76 = 2114;
        v77 = v40;
        v78 = 2112;
        v79 = v57;
        v80 = 2112;
        v81 = v56;
        v82 = 2112;
        v83 = v55;
        v84 = 2112;
        v85 = v39;
        v86 = 2112;
        v87 = v38;
        v88 = 2112;
        v89 = v54;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully completed a step in staged CHIP accessory pairing with response staging request UUID: %@, device credential: %@, WiFi scan results: %@, Thread scan results: %@, pairing identifier: %@, device pairing UUID: %@", buf, 0x52u);

        v15 = v39;
        v16 = v38;

        v7 = v53;
      }

      objc_autoreleasePoolPop(v17);
      if (v56)
      {
        v42 = [objc_getProperty(v18 v41];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_175;
        v68[3] = &unk_1E754E5E8;
        v68[4] = v18;
        v69 = v56;
        v70 = v57;
        [v42 invokeBlock:v68];
      }

      v35 = v54;
      v43 = v55;
      if (v55)
      {
        v44 = [objc_getProperty(v18 v41];
        v65[0] = MEMORY[0x1E69E9820];
        v65[1] = 3221225472;
        v65[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_2;
        v65[3] = &unk_1E754E5E8;
        v65[4] = v18;
        v66 = v55;
        v67 = v57;
        [v44 invokeBlock:v65];
      }

      if (v15)
      {
        v45 = [objc_getProperty(v18 v41];
        v62[0] = MEMORY[0x1E69E9820];
        v62[1] = 3221225472;
        v62[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_3;
        v62[3] = &unk_1E754E5E8;
        v62[4] = v18;
        v63 = v15;
        v64 = v57;
        [v45 invokeBlock:v62];
      }

      if (!v16)
      {
        goto LABEL_20;
      }

      v52 = v15;
      v46 = objc_getProperty(v18, v41, 16, 1);
      objc_setProperty_atomic_copy(v18, v47, 0, 16);
      objc_setProperty_atomic(v18, v48, 0, 24);
      v50 = [objc_getProperty(v18 v49];
      v58[0] = MEMORY[0x1E69E9820];
      v58[1] = 3221225472;
      v58[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_4;
      v58[3] = &unk_1E754E0F8;
      v32 = &v61;
      v61 = v46;
      v33 = &v59;
      v59 = v16;
      v60 = v54;
      v34 = v46;
      [v50 invokeBlock:v58];

      v31 = v60;
    }

    else
    {
      v52 = 0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        HMFGetLogIdentifier();
        v21 = v9;
        v23 = v22 = v7;
        v24 = [v21 identifier];
        v25 = [v24 shortDescription];
        *buf = 138543874;
        v75 = v23;
        v76 = 2114;
        v77 = v25;
        v78 = 2112;
        v79 = v22;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to stage CHIP accessory pairing in steps: %@", buf, 0x20u);

        v7 = v22;
        v9 = v21;
        v16 = 0;
      }

      objc_autoreleasePoolPop(v17);
      v27 = objc_getProperty(v18, v26, 16, 1);
      objc_setProperty_atomic_copy(v18, v28, 0, 16);
      objc_setProperty_atomic(v18, v29, 0, 24);
      v31 = [objc_getProperty(v18 v30];
      v71[0] = MEMORY[0x1E69E9820];
      v71[1] = 3221225472;
      v71[2] = __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke;
      v71[3] = &unk_1E754E458;
      v32 = &v73;
      v73 = v27;
      v33 = &v72;
      v72 = v7;
      v34 = v27;
      [v31 invokeBlock:v71];
      v35 = v54;
    }

    v43 = v55;
    v15 = v52;
LABEL_20:
  }

  v51 = *MEMORY[0x1E69E9840];
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_175(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveDeviceCredential:v4 forStagingRequestUUID:v5];
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_2(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveWiFiScanResults:v4 forStagingRequestUUID:v5];
}

uint64_t __82__HMAccessorySetupCoordinator_handleMultiStepStageResponseError_payload_activity___block_invoke_3(void *a1, const char *a2)
{
  Property = a1[4];
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 24, 1);
  }

  v4 = a1[5];
  v5 = a1[6];

  return [Property didReceiveThreadScanResults:v4 forStagingRequestUUID:v5];
}

- (void)selectThreadNetworkAssociation:(id)a3 forStagingRequestUUID:(id)a4
{
  v46 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    _HMFPreconditionFailure();
  }

  v8 = v7;
  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Select Thread network association"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    *buf = 138543874;
    v41 = v13;
    v42 = 2114;
    v43 = v15;
    v44 = 2112;
    v45 = v8;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Select Thread network association with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  if (!v6)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v39 = 0;
  v16 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v6 requiringSecureCoding:1 error:&v39];
  v17 = v39;
  v18 = v17;
  if (v16)
  {

LABEL_8:
    v19 = objc_alloc(MEMORY[0x1E69A2A00]);
    v20 = [objc_opt_class() UUID];
    v21 = [v19 initWithTarget:v20];

    v22 = [MEMORY[0x1E695DF90] dictionary];
    [v22 setObject:v8 forKeyedSubscript:@"HMASC.mk.stagingRequestUUID"];
    [v22 setObject:v16 forKeyedSubscript:@"HMASC.mk.threadNetworkAssociation"];
    v23 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.selectThreadNetworkAssociation" destination:v21 payload:v22];
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 3221225472;
    v35[2] = __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke_2;
    v35[3] = &unk_1E754E570;
    v35[4] = v11;
    v36 = v9;
    [v23 setResponseHandler:v35];
    if (v11)
    {
      Property = objc_getProperty(v11, v24, 8, 1);
    }

    else
    {
      Property = 0;
    }

    v26 = [Property messageDispatcher];
    [v26 sendMessage:v23];

    goto LABEL_16;
  }

  v27 = objc_autoreleasePoolPush();
  v28 = v11;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v30 = HMFGetLogIdentifier();
    *buf = 138543874;
    v41 = v30;
    v42 = 2112;
    v43 = v6;
    v44 = 2112;
    v45 = v18;
    _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to encode Thread network association %@: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v27);
  if (v28)
  {
    v32 = objc_getProperty(v28, v31, 8, 1);
  }

  else
  {
    v32 = 0;
  }

  v33 = [v32 delegateCaller];
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke;
  v37[3] = &unk_1E754E5C0;
  v37[4] = v28;
  v38 = v18;
  v16 = v18;
  [v33 invokeBlock:v37];

LABEL_16:
  v34 = *MEMORY[0x1E69E9840];
}

uint64_t __84__HMAccessorySetupCoordinator_selectThreadNetworkAssociation_forStagingRequestUUID___block_invoke(uint64_t a1, const char *a2)
{
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 16, 1);
  }

  v4 = *(a1 + 40);
  v5 = Property[2];

  return v5();
}

- (void)rejectDeviceCredentialForStagingRequestUUID:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v3 = v9;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Reject device credential"];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 identifier];
    v16 = [v15 shortDescription];
    *buf = 138543874;
    v32 = v14;
    v33 = 2114;
    v34 = v16;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Rejecting device credential with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  v18 = [objc_opt_class() UUID];
  v5 = [v17 initWithTarget:v18];

  v29 = @"HMASC.mk.stagingRequestUUID";
  v30 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.rejectDeviceCredential" destination:v5 payload:v6];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __75__HMAccessorySetupCoordinator_rejectDeviceCredentialForStagingRequestUUID___block_invoke;
  v26 = &unk_1E754E570;
  v27 = v12;
  v28 = v10;
  v4 = v10;
  [v7 setResponseHandler:&v23];
  if (!v12)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(v12, v19, 8, 1);
LABEL_6:
  v21 = [Property messageDispatcher];
  [v21 sendMessage:v7];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)confirmDeviceCredentialForStagingRequestUUID:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v9 = a3;
  if (!v9)
  {
    _HMFPreconditionFailure();
LABEL_8:
    Property = 0;
    goto LABEL_6;
  }

  v3 = v9;
  v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Confirm device credential"];
  v11 = objc_autoreleasePoolPush();
  v12 = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    v15 = [v10 identifier];
    v16 = [v15 shortDescription];
    *buf = 138543874;
    v32 = v14;
    v33 = 2114;
    v34 = v16;
    v35 = 2112;
    v36 = v3;
    _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Confirm device credential with request UUID: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v11);
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  v18 = [objc_opt_class() UUID];
  v5 = [v17 initWithTarget:v18];

  v29 = @"HMASC.mk.stagingRequestUUID";
  v30 = v3;
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
  v7 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.confirmDeviceCredential" destination:v5 payload:v6];
  v23 = MEMORY[0x1E69E9820];
  v24 = 3221225472;
  v25 = __76__HMAccessorySetupCoordinator_confirmDeviceCredentialForStagingRequestUUID___block_invoke;
  v26 = &unk_1E754E570;
  v27 = v12;
  v28 = v10;
  v4 = v10;
  [v7 setResponseHandler:&v23];
  if (!v12)
  {
    goto LABEL_8;
  }

  Property = objc_getProperty(v12, v19, 8, 1);
LABEL_6:
  v21 = [Property messageDispatcher];
  [v21 sendMessage:v7];

  v22 = *MEMORY[0x1E69E9840];
}

- (void)createSetupAccessoryPayloadWithCHIPDecimalStringRepresentation:(id)a3 completionHandler:(id)a4
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_7:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_7;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create setup accessory payload with CHIP decimal string representation"];
  v10 = objc_autoreleasePoolPush();
  v11 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = [v9 identifier];
    v15 = [v14 shortDescription];
    *buf = 138543874;
    v21 = v13;
    v22 = 2114;
    v23 = v15;
    v24 = 2112;
    v25 = v6;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating setup accessory payload with CHIP decimal string representation: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v18 = @"HMASC.mk.chipSetupPayloadDecimalStringRepresentation";
  v19 = v6;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
  [(HMAccessorySetupCoordinator *)v11 _createCHIPSetupAccessoryPayloadWithMessagePayload:v16 activity:v9 completionHandler:v8];

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_createCHIPSetupAccessoryPayloadWithMessagePayload:(void *)a3 activity:(void *)a4 completionHandler:
{
  v7 = a3;
  v8 = a4;
  if (a1)
  {
    v9 = MEMORY[0x1E69A2A00];
    v10 = a2;
    v11 = [v9 alloc];
    v12 = [objc_opt_class() UUID];
    v13 = [v11 initWithTarget:v12];

    v14 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASC.m.createCHIPSetupAccessoryPayload" destination:v13 payload:v10];

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke;
    v17[3] = &unk_1E754E480;
    v17[4] = a1;
    v18 = v7;
    v19 = v8;
    [v14 setResponseHandler:v17];
    v16 = [objc_getProperty(a1 v15];
    [v16 sendMessage:v14];
  }
}

void __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke(id *a1, void *a2, void *a3)
{
  v40[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v40[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMASC.mk.setupAccessoryPayload" ofClasses:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = a1[4];
  v11 = HMFGetOSLogHandle();
  v12 = v11;
  if (v8)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      v14 = [a1[5] identifier];
      v15 = [v14 shortDescription];
      *buf = 138543874;
      v33 = v13;
      v34 = 2114;
      v35 = v15;
      v36 = 2112;
      v37 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully created setup accessory payload: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 8, 1);
    }

    v18 = [Property delegateCaller];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_177;
    v27[3] = &unk_1E754E458;
    v19 = &v29;
    v29 = a1[6];
    v28 = v8;
    [v18 invokeBlock:v27];

    v20 = v28;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [a1[5] identifier];
      v23 = [v22 shortDescription];
      *buf = 138544130;
      v33 = v21;
      v34 = 2114;
      v35 = v23;
      v36 = 2112;
      v37 = v6;
      v38 = 2112;
      v39 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Could not find setup accessory payload in response payload %@: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v9);
    v25 = a1[4];
    if (v25)
    {
      v25 = objc_getProperty(v25, v24, 8, 1);
    }

    v20 = [v25 delegateCaller];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_176;
    v30[3] = &unk_1E754E430;
    v19 = &v31;
    v31 = a1[6];
    [v20 invokeBlock:v30];
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __109__HMAccessorySetupCoordinator__createCHIPSetupAccessoryPayloadWithMessagePayload_activity_completionHandler___block_invoke_176(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
  (*(v1 + 16))(v1, 0, v2);
}

- (void)createSetupAccessoryPayloadWithSetupPayloadURL:(id)a3 completionHandler:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_14:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_14;
  }

  if ([objc_opt_class() isHAPSetupPayloadURL:v6])
  {
    v24 = 0;
    v9 = [[HMSetupAccessoryPayload alloc] initWithHAPSetupPayloadURL:v6 error:&v24];
    v10 = v24;
    (v8)[2](v8, v9, v10);
  }

  else if ([objc_opt_class() isCHIPSetupPayloadURL:v6])
  {
    v10 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Create setup accessory payload for CHIP setup payload URL"];
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = [v10 identifier];
      v16 = [v15 shortDescription];
      *buf = 138543874;
      v28 = v14;
      v29 = 2114;
      v30 = v16;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Creating setup accessory payload for CHIP setup payload URL: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v25 = @"HMASC.mk.setupPayloadURL";
    v26 = v6;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
    [(HMAccessorySetupCoordinator *)v12 _createCHIPSetupAccessoryPayloadWithMessagePayload:v17 activity:v10 completionHandler:v8];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v22 = [v6 scheme];
      *buf = 138543874;
      v28 = v21;
      v29 = 2112;
      v30 = v22;
      v31 = 2112;
      v32 = v6;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Unsupported URL scheme %@ in setupPayloadURL: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (v8)[2](v8, 0, v10);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)createSetupAccessoryPayloadWithSetupPayloadURLString:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  if (!v6)
  {
    _HMFPreconditionFailure();
LABEL_10:
    _HMFPreconditionFailure();
  }

  v8 = v7;
  if (!v7)
  {
    goto LABEL_10;
  }

  v9 = [HMAccessorySetupCoordinator setupPayloadURLFromSetupPayloadURLString:v6];
  if (v9)
  {
    [(HMAccessorySetupCoordinator *)self createSetupAccessoryPayloadWithSetupPayloadURL:v9 completionHandler:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to create setup payload URL from string: %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    (v8)[2](v8, 0, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  v2 = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 8, 1);
  }

  v3 = [(HMAccessorySetupCoordinator *)self messageDispatcher];
  [v3 deregisterReceiver:v2];

  v4.receiver = v2;
  v4.super_class = HMAccessorySetupCoordinator;
  [(HMAccessorySetupCoordinator *)&v4 dealloc];
}

- (HMAccessorySetupCoordinator)initWithContext:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = HMAccessorySetupCoordinator;
  v6 = [(HMAccessorySetupCoordinator *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
  }

  return v7;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t28 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t28, &__block_literal_global_48313);
  }

  v3 = logCategory__hmf_once_v29;

  return v3;
}

uint64_t __42__HMAccessorySetupCoordinator_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v29;
  logCategory__hmf_once_v29 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)setupPayloadURLFromSetupPayloadURLString:(id)a3
{
  v3 = MEMORY[0x1E696AB08];
  v4 = a3;
  v5 = [v3 whitespaceCharacterSet];
  v6 = [v5 invertedSet];
  v7 = [v4 stringByAddingPercentEncodingWithAllowedCharacters:v6];

  v8 = [MEMORY[0x1E695DFF8] URLWithString:v7];

  return v8;
}

+ (BOOL)isCHIPSetupPayloadURL:(id)a3
{
  v3 = a3;
  v4 = [v3 scheme];
  if ([v4 isEqualToString:@"CH"])
  {
    v5 = 1;
  }

  else
  {
    v6 = [v3 scheme];
    v5 = [v6 isEqualToString:@"MT"];
  }

  return v5;
}

+ (BOOL)isHAPSetupPayloadURL:(id)a3
{
  v3 = [a3 scheme];
  v4 = [v3 isEqualToString:@"X-HM"];

  return v4;
}

+ (id)communicationProtocolForSetupPayloadURLString:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() setupPayloadURLFromSetupPayloadURLString:v3];

  if ([objc_opt_class() isHAPSetupPayloadURL:v4])
  {
    v5 = &unk_1F0EFD268;
  }

  else if ([objc_opt_class() isCHIPSetupPayloadURL:v4])
  {
    v5 = &unk_1F0EFD280;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"188914BD-5163-425C-9E59-CAE9BFA1A288"];

  return v2;
}

+ (BOOL)isSetupPayloadURL:(id)a3
{
  v4 = a3;
  if ([a1 isHAPSetupPayloadURL:v4])
  {
    v5 = 1;
  }

  else
  {
    v5 = [a1 isCHIPSetupPayloadURL:v4];
  }

  return v5;
}

+ (BOOL)isSetupPayloadURLString:(id)a3
{
  v3 = a1;
  v4 = [a1 setupPayloadURLFromSetupPayloadURLString:a3];
  LOBYTE(v3) = [v3 isSetupPayloadURL:v4];

  return v3;
}

@end