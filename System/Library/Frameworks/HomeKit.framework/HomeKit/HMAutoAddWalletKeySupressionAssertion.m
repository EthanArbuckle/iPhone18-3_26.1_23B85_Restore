@interface HMAutoAddWalletKeySupressionAssertion
- (HMAutoAddWalletKeySupressionAssertion)initWithHomeManager:(id)a3 homeUUID:(id)a4;
- (HMHomeManager)homeManager;
- (void)acquireWithCompletion:(id)a3;
- (void)invalidate;
@end

@implementation HMAutoAddWalletKeySupressionAssertion

- (HMHomeManager)homeManager
{
  WeakRetained = objc_loadWeakRetained(&self->_homeManager);

  return WeakRetained;
}

- (void)invalidate
{
  v22 = *MEMORY[0x1E69E9840];
  v17.receiver = self;
  v17.super_class = HMAutoAddWalletKeySupressionAssertion;
  [(HMFAssertion *)&v17 invalidate];
  v3 = [(HMAutoAddWalletKeySupressionAssertion *)self homeManager];
  if (v3)
  {
    v18 = @"HMHomeManagerMessageKeyHomeUUID";
    v4 = [(HMAutoAddWalletKeySupressionAssertion *)self homeUUID];
    v19 = v4;
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v6 = objc_alloc(MEMORY[0x1E69A2A00]);
    v7 = [v3 uuid];
    v8 = [v6 initWithTarget:v7];

    v9 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeManagerAutoAddWalletKeySupressionAssertionReleaseMessage" destination:v8 payload:v5];
    [v9 setResponseHandler:&__block_literal_global_61820];
    v10 = [v3 context];
    v11 = [v10 messageDispatcher];
    [v11 sendMessage:v9];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Cannot release auto add wallet key suppression assertion, home manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __51__HMAutoAddWalletKeySupressionAssertion_invalidate__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = HMFGetOSLogHandle();
  v8 = v7;
  if (v4)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v4;
      v10 = "%{public}@Failed to release auto add wallet key suppression assertion: %@";
      v11 = v8;
      v12 = OS_LOG_TYPE_ERROR;
      v13 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v11, v12, v10, &v15, v13);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v15 = 138543362;
    v16 = v9;
    v10 = "%{public}@Successfully released auto add wallet key suppression assertion";
    v11 = v8;
    v12 = OS_LOG_TYPE_INFO;
    v13 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x1E69E9840];
}

- (void)acquireWithCompletion:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMAutoAddWalletKeySupressionAssertion *)self homeManager];
  if (v5)
  {
    v25.receiver = self;
    v25.super_class = HMAutoAddWalletKeySupressionAssertion;
    [(HMFAssertion *)&v25 acquire:0];
    v26 = @"HMHomeManagerMessageKeyHomeUUID";
    v6 = [(HMAutoAddWalletKeySupressionAssertion *)self homeUUID];
    v27 = v6;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v27 forKeys:&v26 count:1];

    v8 = objc_alloc(MEMORY[0x1E69A2A00]);
    v9 = [v5 uuid];
    v10 = [v8 initWithTarget:v9];

    v11 = [MEMORY[0x1E69A2A10] messageWithName:@"HMHomeManagerAutoAddWalletKeySupressionAssertionAcquireMessage" destination:v10 payload:v7];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __63__HMAutoAddWalletKeySupressionAssertion_acquireWithCompletion___block_invoke;
    v22 = &unk_1E754DE00;
    v23 = self;
    v24 = v4;
    [v11 setResponseHandler:&v19];
    v12 = [v5 context];
    v13 = [v12 messageDispatcher];
    [v13 sendMessage:v11];
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v16, OS_LOG_TYPE_ERROR, "%{public}@Cannot acquire auto add wallet key suppression assertion, home manager is nil", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v7 = [MEMORY[0x1E696ABC0] hmfErrorWithCode:2];
    (*(v4 + 2))(v4, v7);
  }

  v18 = *MEMORY[0x1E69E9840];
}

void __63__HMAutoAddWalletKeySupressionAssertion_acquireWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4.receiver = *(a1 + 32);
    v4.super_class = HMAutoAddWalletKeySupressionAssertion;
    objc_msgSendSuper2(&v4, sel_invalidate);
  }

  (*(*(a1 + 40) + 16))();
}

- (HMAutoAddWalletKeySupressionAssertion)initWithHomeManager:(id)a3 homeUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  v14.receiver = self;
  v14.super_class = HMAutoAddWalletKeySupressionAssertion;
  v10 = [(HMFAssertion *)&v14 initWithName:v9];

  if (v10)
  {
    objc_storeWeak(&v10->_homeManager, v6);
    v11 = [v7 copy];
    homeUUID = v10->_homeUUID;
    v10->_homeUUID = v11;
  }

  return v10;
}

@end