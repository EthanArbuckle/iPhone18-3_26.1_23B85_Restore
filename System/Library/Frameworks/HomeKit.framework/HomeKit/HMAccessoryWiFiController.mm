@interface HMAccessoryWiFiController
- (HMAccessoryWiFiController)initWithAccessory:(id)accessory;
- (HMAccessoryWiFiController)initWithContext:(id)context messageTargetUUID:(id)d;
- (void)_associateToNetworkWithSSID:(id)d password:(id)password completion:(id)completion;
- (void)_queryCurrentWiFiNetworkWithCompletion:(id)completion;
- (void)_scanAvailableNetworksWithCompletion:(id)completion;
@end

@implementation HMAccessoryWiFiController

- (void)_queryCurrentWiFiNetworkWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_context;
  if (v5)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:self->_messageTargetUUID];
    v8 = [v6 messageWithName:@"HM.wiFiPicker.WifiNetworkStatusMessage" destination:v7 payload:0];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __68__HMAccessoryWiFiController__queryCurrentWiFiNetworkWithCompletion___block_invoke;
    v18 = &unk_1E754DE00;
    selfCopy = self;
    v20 = completionCopy;
    [v8 setResponseHandler:&v15];
    v9 = [(_HMContext *)v5 messageDispatcher:v15];
    [v9 sendMessage:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2080;
      v24 = "[HMAccessoryWiFiController _queryCurrentWiFiNetworkWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __68__HMAccessoryWiFiController__queryCurrentWiFiNetworkWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 hmf_dataForKey:@"network"];
    v21 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v21];
    v8 = v21;
    v9 = [*(a1 + 32) context];
    v10 = [v9 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__HMAccessoryWiFiController__queryCurrentWiFiNetworkWithCompletion___block_invoke_3;
    v17[3] = &unk_1E754E0F8;
    v11 = *(a1 + 40);
    v19 = v5;
    v20 = v11;
    v18 = v7;
    v12 = v5;
    v13 = v7;
    [v10 invokeBlock:v17];
  }

  else
  {
    v14 = [*(a1 + 32) context];
    v15 = [v14 delegateCaller];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __68__HMAccessoryWiFiController__queryCurrentWiFiNetworkWithCompletion___block_invoke_2;
    v22[3] = &unk_1E754E458;
    v16 = *(a1 + 40);
    v23 = v5;
    v24 = v16;
    v6 = v5;
    [v15 invokeBlock:v22];

    v12 = v24;
  }
}

- (void)_associateToNetworkWithSSID:(id)d password:(id)password completion:(id)completion
{
  v34 = *MEMORY[0x1E69E9840];
  dCopy = d;
  passwordCopy = password;
  completionCopy = completion;
  v11 = self->_context;
  if (v11)
  {
    v12 = MEMORY[0x1E69A2A10];
    v13 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:self->_messageTargetUUID];
    v28[0] = @"ssid";
    v28[1] = @"password";
    v29[0] = dCopy;
    v29[1] = passwordCopy;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v15 = [v12 messageWithName:@"HM.wiFiPicker.JoinNetworkMessage" destination:v13 payload:v14];

    v22 = MEMORY[0x1E69E9820];
    v23 = 3221225472;
    v24 = __77__HMAccessoryWiFiController__associateToNetworkWithSSID_password_completion___block_invoke;
    v25 = &unk_1E754DE00;
    selfCopy = self;
    v27 = completionCopy;
    [v15 setResponseHandler:&v22];
    v16 = [(_HMContext *)v11 messageDispatcher:v22];
    [v16 sendMessage:v15];
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v20;
      v32 = 2080;
      v33 = "[HMAccessoryWiFiController _associateToNetworkWithSSID:password:completion:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
  }

  v21 = *MEMORY[0x1E69E9840];
}

void __77__HMAccessoryWiFiController__associateToNetworkWithSSID_password_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a3)
  {
    v6 = [a3 hmf_dataForKey:@"network"];
    v21 = 0;
    v7 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v6 error:&v21];
    v8 = v21;
    v9 = [*(a1 + 32) context];
    v10 = [v9 delegateCaller];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __77__HMAccessoryWiFiController__associateToNetworkWithSSID_password_completion___block_invoke_3;
    v17[3] = &unk_1E754E0F8;
    v11 = *(a1 + 40);
    v19 = v5;
    v20 = v11;
    v18 = v7;
    v12 = v5;
    v13 = v7;
    [v10 invokeBlock:v17];
  }

  else
  {
    v14 = [*(a1 + 32) context];
    v15 = [v14 delegateCaller];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __77__HMAccessoryWiFiController__associateToNetworkWithSSID_password_completion___block_invoke_2;
    v22[3] = &unk_1E754E458;
    v16 = *(a1 + 40);
    v23 = v5;
    v24 = v16;
    v6 = v5;
    [v15 invokeBlock:v22];

    v12 = v24;
  }
}

- (void)_scanAvailableNetworksWithCompletion:(id)completion
{
  v25 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = self->_context;
  if (v5)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = [objc_alloc(MEMORY[0x1E69A2A00]) initWithTarget:self->_messageTargetUUID];
    v8 = [v6 messageWithName:@"HM.wiFiPicker.ScanNetworksMessage" destination:v7 payload:0];

    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke;
    v18 = &unk_1E754DE00;
    selfCopy = self;
    v20 = completionCopy;
    [v8 setResponseHandler:&v15];
    v9 = [(_HMContext *)v5 messageDispatcher:v15];
    [v9 sendMessage:v8];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v13;
      v23 = 2080;
      v24 = "[HMAccessoryWiFiController _scanAvailableNetworksWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v6 hmf_dataForKey:@"networks"];
    if (v8)
    {
      v29 = v5;
      v37 = 0;
      v9 = [MEMORY[0x1E696ACD0] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v8 error:&v37];
      v10 = v37;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v11 = v9;
      v12 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v34;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v34 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v16 = [*(*(&v33 + 1) + 8 * i) copy];
            [v7 addObject:v16];
          }

          v13 = [v11 countByEnumeratingWithState:&v33 objects:v43 count:16];
        }

        while (v13);
      }

      v17 = [*(a1 + 32) context];
      v18 = [v17 delegateCaller];
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke_2_26;
      v30[3] = &unk_1E754E458;
      v32 = *(a1 + 40);
      v31 = v7;
      [v18 invokeBlock:v30];

      v5 = v29;
    }

    else
    {
      if (*(a1 + 32))
      {
        v21 = objc_autoreleasePoolPush();
        v22 = *(a1 + 32);
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          v24 = HMFGetLogIdentifier();
          *buf = 138543618;
          v45 = v24;
          v46 = 2112;
          v47 = 0;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@Encoded networks are nil: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v21);
        v25 = *(a1 + 32);
      }

      else
      {
        v25 = 0;
      }

      v26 = [v25 context];
      v27 = [v26 delegateCaller];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke_22;
      v38[3] = &unk_1E754E430;
      v39 = *(a1 + 40);
      [v27 invokeBlock:v38];

      v10 = v39;
    }
  }

  else
  {
    v19 = [*(a1 + 32) context];
    v20 = [v19 delegateCaller];
    v40[0] = MEMORY[0x1E69E9820];
    v40[1] = 3221225472;
    v40[2] = __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke_2;
    v40[3] = &unk_1E754E458;
    v42 = *(a1 + 40);
    v41 = v5;
    [v20 invokeBlock:v40];

    v7 = v42;
  }

  v28 = *MEMORY[0x1E69E9840];
}

void __66__HMAccessoryWiFiController__scanAvailableNetworksWithCompletion___block_invoke_22(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:15];
  (*(v1 + 16))(v1, 0, v2);
}

- (HMAccessoryWiFiController)initWithContext:(id)context messageTargetUUID:(id)d
{
  contextCopy = context;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = HMAccessoryWiFiController;
  v9 = [(HMAccessoryWiFiController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_context, context);
    objc_storeStrong(&v10->_messageTargetUUID, d);
  }

  return v10;
}

- (HMAccessoryWiFiController)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  context = [accessoryCopy context];
  messageTargetUUID = [accessoryCopy messageTargetUUID];

  v7 = [(HMAccessoryWiFiController *)self initWithContext:context messageTargetUUID:messageTargetUUID];
  return v7;
}

@end