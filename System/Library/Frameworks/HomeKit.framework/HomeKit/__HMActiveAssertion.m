@interface __HMActiveAssertion
- (BOOL)acquire:(id *)a3;
- (__HMActiveAssertion)initWithName:(id)a3 context:(id)a4 messageTargetUUID:(id)a5;
- (void)_setAssertionActive:(void *)a1;
- (void)dealloc;
- (void)invalidate;
@end

@implementation __HMActiveAssertion

- (void)invalidate
{
  if ([(HMFAssertion *)self isValid])
  {
    [(__HMActiveAssertion *)self _setAssertionActive:?];
  }

  v3.receiver = self;
  v3.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v3 invalidate];
}

- (void)_setAssertionActive:(void *)a1
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = objc_alloc(MEMORY[0x1E69A2A00]);
    v5 = [a1 messageTargetUUID];
    v6 = [v4 initWithTarget:v5];

    v16[0] = @"HMAA.mk.state";
    v7 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    v16[1] = @"HMAA.mk.uuid";
    v17[0] = v7;
    v8 = [a1 UUID];
    v17[1] = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

    v10 = [objc_alloc(MEMORY[0x1E69A2A10]) initWithName:@"HMAA.m.updateState" destination:v6 payload:v9];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __43____HMActiveAssertion__setAssertionActive___block_invoke;
    v14[3] = &__block_descriptor_33_e34_v24__0__NSError_8__NSDictionary_16l;
    v15 = a2;
    [v10 setResponseHandler:v14];
    v11 = [a1 context];
    v12 = [v11 messageDispatcher];
    [v12 sendMessage:v10];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)acquire:(id *)a3
{
  v10.receiver = self;
  v10.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v10 acquire:a3];
  objc_initWeak(&location, self);
  v4 = [(__HMActiveAssertion *)self context];
  v5 = [v4 xpcClient];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31____HMActiveAssertion_acquire___block_invoke;
  v7[3] = &unk_1E754E540;
  objc_copyWeak(&v8, &location);
  [v5 registerReconnectionHandler:v7];

  [(__HMActiveAssertion *)self _setAssertionActive:?];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
  return 1;
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  if ([(HMFAssertion *)self isValid])
  {
    v3 = objc_autoreleasePoolPush();
    v4 = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543618;
      v10 = v6;
      v11 = 2112;
      v12 = v4;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_FAULT, "%{public}@Active assertion unexpectedly deallocated: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
  }

  v8.receiver = self;
  v8.super_class = __HMActiveAssertion;
  [(HMFAssertion *)&v8 dealloc];
  v7 = *MEMORY[0x1E69E9840];
}

- (__HMActiveAssertion)initWithName:(id)a3 context:(id)a4 messageTargetUUID:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (!v8)
  {
    _HMFPreconditionFailure();
    goto LABEL_8;
  }

  if (!v9)
  {
LABEL_8:
    _HMFPreconditionFailure();
    goto LABEL_9;
  }

  v11 = v10;
  if (!v10)
  {
LABEL_9:
    v19 = _HMFPreconditionFailure();
    [(HMDeviceSetupOperationBase *)v19 .cxx_destruct];
    return result;
  }

  v21.receiver = self;
  v21.super_class = __HMActiveAssertion;
  v12 = [(HMFAssertion *)&v21 initWithName:v8];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_context, a4);
    v14 = [v11 copy];
    messageTargetUUID = v13->_messageTargetUUID;
    v13->_messageTargetUUID = v14;

    v16 = [MEMORY[0x1E696AFB0] UUID];
    UUID = v13->_UUID;
    v13->_UUID = v16;
  }

  return v13;
}

@end