@interface HMAccessorySetupManager
+ (NSUUID)UUID;
+ (id)logCategory;
- (HMAccessorySetupManager)init;
- (HMAccessorySetupManager)initWithContext:(id)context;
- (void)_finishAccessorySetupWithSetupCompletedInfo:(void *)info completionHandler:(void *)handler activity:;
- (void)failAccessorySetupWithError:(id)error completionHandler:(id)handler;
- (void)finishAccessorySetupWithCompletionHandler:(id)handler;
- (void)finishAccessorySetupWithSetupCompletedInfo:(id)info completionHandler:(id)handler;
- (void)performAccessorySetupUsingRequest:(HMAccessorySetupRequest *)request completionHandler:(void *)completion;
- (void)resumeAccessorySetupWithUserInfo:(id)info completionHandler:(id)handler;
@end

@implementation HMAccessorySetupManager

- (void)failAccessorySetupWithError:(id)error completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  handlerCopy = handler;
  if (!errorCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager failAccessorySetupWithError:completionHandler:]", @"error"];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v31;
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_12:
    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager failAccessorySetupWithError:completionHandler:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Failing accessory setup"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v39 = v13;
    v40 = 2114;
    v41 = shortDescription;
    v42 = 2112;
    v43 = errorCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Failing accessory setup with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v36 = @"HMASM.mk.error";
  v37 = errorCopy;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v17 = objc_alloc(MEMORY[0x1E69A2A00]);
  v18 = +[HMAccessorySetupManager UUID];
  v19 = [v17 initWithTarget:v18];

  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.failAccessorySetup" destination:v19 payload:v16];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __73__HMAccessorySetupManager_failAccessorySetupWithError_completionHandler___block_invoke;
  v33[3] = &unk_1E754E480;
  v33[4] = selfCopy3;
  v34 = v9;
  v35 = v8;
  v21 = v8;
  v22 = v9;
  [v20 setResponseHandler:v33];
  if (selfCopy3)
  {
    Property = objc_getProperty(selfCopy3, v23, 8, 1);
  }

  else
  {
    Property = 0;
  }

  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __73__HMAccessorySetupManager_failAccessorySetupWithError_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v14 = "%{public}@[%{public}@] Failed to fail accessory setup: %@";
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
    v14 = "%{public}@[%{public}@] Successfully failed accessory setup";
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

- (void)finishAccessorySetupWithSetupCompletedInfo:(id)info completionHandler:(id)handler
{
  v29 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithSetupCompletedInfo:completionHandler:]", @"setupCompletedInfo"];
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

LABEL_9:
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v24 = v21;
    v25 = 2112;
    v26 = v17;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_10:
    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithSetupCompletedInfo:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Finishing accessory setup with completed info"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v24 = v13;
    v25 = 2114;
    v26 = shortDescription;
    v27 = 2112;
    v28 = infoCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finishing accessory setup with setup completed info: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  [(HMAccessorySetupManager *)selfCopy3 _finishAccessorySetupWithSetupCompletedInfo:infoCopy completionHandler:v8 activity:v9];

  v16 = *MEMORY[0x1E69E9840];
}

- (void)_finishAccessorySetupWithSetupCompletedInfo:(void *)info completionHandler:(void *)handler activity:
{
  v33 = *MEMORY[0x1E69E9840];
  v7 = a2;
  infoCopy = info;
  handlerCopy = handler;
  v10 = handlerCopy;
  if (self)
  {
    if (!handlerCopy)
    {
      v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager _finishAccessorySetupWithSetupCompletedInfo:completionHandler:activity:]", @"activity"];
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v30 = v24;
        v31 = 2112;
        v32 = v20;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      v25 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v20 userInfo:0];
      objc_exception_throw(v25);
    }

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    if (v7)
    {
      v12 = encodeRootObject(v7);
      [dictionary setObject:v12 forKeyedSubscript:@"HMASM.mk.accessorySetupCompletedInfo"];
    }

    v13 = objc_alloc(MEMORY[0x1E69A2A00]);
    v14 = +[HMAccessorySetupManager UUID];
    v15 = [v13 initWithTarget:v14];

    v16 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.finishAccessorySetup" destination:v15 payload:dictionary];
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __98__HMAccessorySetupManager__finishAccessorySetupWithSetupCompletedInfo_completionHandler_activity___block_invoke;
    v26[3] = &unk_1E754E480;
    v26[4] = self;
    v27 = v10;
    v28 = infoCopy;
    [v16 setResponseHandler:v26];
    v18 = [objc_getProperty(self v17];
    [v18 sendMessage:v16];
  }

  v19 = *MEMORY[0x1E69E9840];
}

void __98__HMAccessorySetupManager__finishAccessorySetupWithSetupCompletedInfo_completionHandler_activity___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v14 = "%{public}@[%{public}@] Failed to finish accessory setup: %@";
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
    v14 = "%{public}@[%{public}@] Successfully finished accessory setup";
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

- (void)finishAccessorySetupWithCompletionHandler:(id)handler
{
  v24 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager finishAccessorySetupWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v18;
      v22 = 2112;
      v23 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v5 = handlerCopy;
  v6 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Finishing accessory setup"];
  v7 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    identifier = [v6 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543618;
    v21 = v10;
    v22 = 2114;
    v23 = shortDescription;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Finishing accessory setup", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  [(HMAccessorySetupManager *)selfCopy2 _finishAccessorySetupWithSetupCompletedInfo:v5 completionHandler:v6 activity:?];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)resumeAccessorySetupWithUserInfo:(id)info completionHandler:(id)handler
{
  v44 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  handlerCopy = handler;
  if (!infoCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager resumeAccessorySetupWithUserInfo:completionHandler:]", @"userInfo"];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

LABEL_11:
    v31 = HMFGetLogIdentifier();
    *buf = 138543618;
    v39 = v31;
    v40 = 2112;
    v41 = v27;
    _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_12:
    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0];
    objc_exception_throw(v32);
  }

  v8 = handlerCopy;
  if (!handlerCopy)
  {
    v27 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager resumeAccessorySetupWithUserInfo:completionHandler:]", @"completion"];
    v28 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v30 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v9 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Resuming accessory setup"];
  v10 = objc_autoreleasePoolPush();
  selfCopy3 = self;
  v12 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    identifier = [v9 identifier];
    shortDescription = [identifier shortDescription];
    *buf = 138543874;
    v39 = v13;
    v40 = 2114;
    v41 = shortDescription;
    v42 = 2112;
    v43 = infoCopy;
    _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Launching HomeUIService with userInfo: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v10);
  v16 = objc_alloc(MEMORY[0x1E69A2A00]);
  v17 = +[HMAccessorySetupManager UUID];
  v18 = [v16 initWithTarget:v17];

  v36 = @"HMASM.mk.resumeAccessorySetupUserInfo";
  v37 = infoCopy;
  v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  v20 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.resumeAccessorySetup" destination:v18 payload:v19];
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = __78__HMAccessorySetupManager_resumeAccessorySetupWithUserInfo_completionHandler___block_invoke;
  v33[3] = &unk_1E754E480;
  v33[4] = selfCopy3;
  v34 = v9;
  v35 = v8;
  v21 = v8;
  v22 = v9;
  [v20 setResponseHandler:v33];
  if (selfCopy3)
  {
    Property = objc_getProperty(selfCopy3, v23, 8, 1);
  }

  else
  {
    Property = 0;
  }

  messageDispatcher = [Property messageDispatcher];
  [messageDispatcher sendMessage:v20];

  v26 = *MEMORY[0x1E69E9840];
}

void __78__HMAccessorySetupManager_resumeAccessorySetupWithUserInfo_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
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
    v14 = "%{public}@[%{public}@] Failed to resume accessory setup: %@";
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
    v14 = "%{public}@[%{public}@] Successfully resumed accessory setup";
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

- (void)performAccessorySetupUsingRequest:(HMAccessorySetupRequest *)request completionHandler:(void *)completion
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = request;
  v7 = completion;
  if (!v6)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager performAccessorySetupUsingRequest:completionHandler:]", @"request"];
    v39 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v41 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

LABEL_20:
    v42 = HMFGetLogIdentifier();
    *buf = 138543618;
    v52 = v42;
    v53 = 2112;
    v54 = v38;
    _os_log_impl(&dword_19BB39000, v41, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);

LABEL_21:
    objc_autoreleasePoolPop(v39);
    v43 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v38 userInfo:0];
    objc_exception_throw(v43);
  }

  v8 = v7;
  if (!v7)
  {
    v38 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMAccessorySetupManager performAccessorySetupUsingRequest:completionHandler:]", @"completion"];
    v39 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v41 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  suggestedAccessoryName = [(HMAccessorySetupRequest *)v6 suggestedAccessoryName];
  v10 = [suggestedAccessoryName length];
  if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
  {
    dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
  }

  v11 = HMMaxLengthForNaming__hmf_once_v9;

  if (v10 <= v11)
  {
    v21 = [objc_alloc(MEMORY[0x1E69A29C0]) initWithName:@"Performing accessory setup using request"];
    v22 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      identifier = [v21 identifier];
      shortDescription = [identifier shortDescription];
      *buf = 138543874;
      v52 = v25;
      v53 = 2114;
      v54 = shortDescription;
      v55 = 2112;
      v56 = v6;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Performing accessory setup using request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
    v28 = objc_alloc(MEMORY[0x1E69A2A00]);
    uUID = [objc_opt_class() UUID];
    v19 = [v28 initWithTarget:uUID];

    v49 = @"HMASM.mk.request";
    v30 = encodeRootObject(v6);
    v50 = v30;
    v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];

    v31 = [MEMORY[0x1E69A2A10] messageWithName:@"HMASM.m.performAccessorySetup" destination:v19 payload:v20];
    [v31 hm_setXPCTimeoutDisabled:1];
    v44[0] = MEMORY[0x1E69E9820];
    v44[1] = 3221225472;
    v44[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_46;
    v44[3] = &unk_1E754E480;
    v44[4] = selfCopy3;
    v45 = v21;
    v46 = v8;
    v32 = v8;
    v33 = v21;
    [v31 setResponseHandler:v44];
    if (selfCopy3)
    {
      Property = objc_getProperty(selfCopy3, v34, 8, 1);
    }

    else
    {
      Property = 0;
    }

    messageDispatcher = [Property messageDispatcher];
    [messageDispatcher sendMessage:v31 completionHandler:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v52 = v15;
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Suggested accessory name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    if (selfCopy4)
    {
      v17 = objc_getProperty(selfCopy4, v16, 8, 1);
    }

    else
    {
      v17 = 0;
    }

    delegateCaller = [v17 delegateCaller];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke;
    v47[3] = &unk_1E754E430;
    v48 = v8;
    v19 = v8;
    [delegateCaller invokeBlock:v47];

    v20 = v48;
  }

  v37 = *MEMORY[0x1E69E9840];
}

void __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
  (*(v1 + 16))(v1, 0, v2);
}

void __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_46(id *a1, void *a2, void *a3)
{
  v43[1] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v43[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:1];
  v8 = [v6 hmf_unarchivedObjectForKey:@"HMASM.mk.result" ofClasses:v7];

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
      v38 = v13;
      v39 = 2114;
      v40 = v15;
      v41 = 2112;
      v42 = v8;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@[%{public}@] Successfully performed accessory setup using request with result: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    Property = a1[4];
    if (Property)
    {
      Property = objc_getProperty(Property, v16, 8, 1);
    }

    v18 = [Property delegateCaller];
    v28 = MEMORY[0x1E69E9820];
    v29 = 3221225472;
    v30 = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_50;
    v31 = &unk_1E754E458;
    v19 = &v33;
    v33 = a1[6];
    v20 = &v32;
    v32 = v8;
    v21 = &v28;
  }

  else
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [a1[5] identifier];
      v24 = [v23 shortDescription];
      *buf = 138543874;
      v38 = v22;
      v39 = 2114;
      v40 = v24;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@[%{public}@] Failed to perform accessory setup using request: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = a1[4];
    if (v26)
    {
      v26 = objc_getProperty(v26, v25, 8, 1);
    }

    v18 = [v26 delegateCaller];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __79__HMAccessorySetupManager_performAccessorySetupUsingRequest_completionHandler___block_invoke_49;
    v34[3] = &unk_1E754E458;
    v19 = &v36;
    v36 = a1[6];
    v20 = &v35;
    v35 = v5;
    v21 = v34;
  }

  [v18 invokeBlock:{v21, v28, v29, v30, v31, v32}];

  v27 = *MEMORY[0x1E69E9840];
}

- (HMAccessorySetupManager)initWithContext:(id)context
{
  contextCopy = context;
  v9.receiver = self;
  v9.super_class = HMAccessorySetupManager;
  v6 = [(HMAccessorySetupManager *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, context);
  }

  return v7;
}

- (HMAccessorySetupManager)init
{
  v3 = [(HMXPCMessageTransportConfiguration *)[HMMutableXPCMessageTransportConfiguration alloc] initWithMachServiceName:@"com.apple.homed.xpc.accessory-setup"];
  v4 = HMDispatchQueueNameString(self, 0);
  uTF8String = [v4 UTF8String];
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create(uTF8String, v6);
  [(HMXPCMessageTransportConfiguration *)v3 setQueue:v7];

  [(HMXPCMessageTransportConfiguration *)v3 setRequiresHomeDataAccess:0];
  v8 = [[_HMContext alloc] initWithXPCClientConfiguration:v3];
  v9 = [(HMAccessorySetupManager *)self initWithContext:v8];

  return v9;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25_66223 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25_66223, &__block_literal_global_66224);
  }

  v3 = logCategory__hmf_once_v26_66225;

  return v3;
}

uint64_t __38__HMAccessorySetupManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v26_66225;
  logCategory__hmf_once_v26_66225 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (NSUUID)UUID
{
  v2 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"9FB82AF6-B949-4E55-B8B0-BEF7E1544816"];

  return v2;
}

@end