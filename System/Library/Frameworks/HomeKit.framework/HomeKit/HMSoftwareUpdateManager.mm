@interface HMSoftwareUpdateManager
+ (id)logCategory;
- (HMSoftwareUpdate)availableUpdate;
- (HMSoftwareUpdateManager)init;
- (HMSoftwareUpdateManager)initWithContext:(id)a3;
- (HMSoftwareUpdateManagerDelegate)delegate;
- (id)messageDestination;
- (void)__registerForMessages;
- (void)_handleFetch:(id)a3;
- (void)_handleStartUpdate:(id)a3;
- (void)_handleUpdatedAvailableUpdate:(id)a3;
- (void)_reallyStartWithCompletionHandler:(id)a3;
- (void)reconnect;
- (void)setAvailableUpdate:(id)a3;
- (void)startWithCompletionHandler:(id)a3;
- (void)stop;
- (void)updateAvailableUpdate:(id)a3 completionHandler:(id)a4;
@end

@implementation HMSoftwareUpdateManager

- (HMSoftwareUpdateManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMSoftwareUpdateManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_handleStartUpdate:(id)a3
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    *buf = 138543362;
    v38 = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received start update request", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMSoftwareUpdateManager *)v6 delegate];
  if (v9)
  {
    v10 = [v4 dataForKey:@"update"];
    if (v10)
    {
      v36 = 0;
      v11 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v10 error:&v36];
      v12 = v36;
      if (v11)
      {
        objc_initWeak(buf, v6);
        v13 = [(HMSoftwareUpdateManager *)v6 context];
        v14 = [v13 delegateCaller];
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 3221225472;
        v30[2] = __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke;
        v30[3] = &unk_1E7548790;
        v31 = v9;
        v32 = v6;
        v33 = v11;
        objc_copyWeak(&v35, buf);
        v34 = v4;
        [v14 invokeBlock:v30];

        objc_destroyWeak(&v35);
        objc_destroyWeak(buf);
      }

      else
      {
        v24 = objc_autoreleasePoolPush();
        v25 = v6;
        v26 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
        {
          v27 = HMFGetLogIdentifier();
          *buf = 138543618;
          v38 = v27;
          v39 = 2112;
          v40 = v12;
          _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from update data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v24);
        v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v4 respondWithError:v28];
      }
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = v6;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = HMFGetLogIdentifier();
        v23 = [v4 messagePayload];
        *buf = 138543618;
        v38 = v22;
        v39 = 2112;
        v40 = v23;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_ERROR, "%{public}@Missing update from message payload: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v19);
      v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v4 respondWithError:v12];
    }
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    v16 = v6;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v38 = v18;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
    [v4 respondWithError:v10];
  }

  v29 = *MEMORY[0x1E69E9840];
}

void __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke_2;
  v5[3] = &unk_1E7548768;
  objc_copyWeak(&v7, (a1 + 64));
  v6 = *(a1 + 56);
  [v2 softwareUpdateManager:v3 didReceiveRequestToInstallUpdate:v4 completionHandler:v5];

  objc_destroyWeak(&v7);
}

void __46__HMSoftwareUpdateManager__handleStartUpdate___block_invoke_2(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = objc_autoreleasePoolPush();
  v6 = WeakRetained;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received response to install update request with error: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [*(a1 + 32) responseHandler];

  if (v9)
  {
    v10 = [*(a1 + 32) responseHandler];
    (v10)[2](v10, v3, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleFetch:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received fetch request", &buf, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  v9 = [(HMSoftwareUpdateManager *)v6 delegate];
  if (v9)
  {
    objc_initWeak(&location, v6);
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __40__HMSoftwareUpdateManager__handleFetch___block_invoke;
    v24[3] = &unk_1E7548740;
    objc_copyWeak(&v26, &location);
    v25 = v4;
    v10 = v6;
    v11 = v9;
    v12 = v24;
    v13 = [(HMSoftwareUpdateManager *)v10 context];
    v14 = [v13 delegateCaller];
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v29 = ____requestFetch_block_invoke;
    v30 = &unk_1E754E0F8;
    v31 = v11;
    v32 = v10;
    v33 = v12;
    v15 = v12;
    v16 = v10;
    v17 = v11;
    [v14 invokeBlock:&buf];

    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = v6;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      v21 = HMFGetLogIdentifier();
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v21;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEFAULT, "%{public}@Missing delegate", &buf, 0xCu);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E696ABC0] hmErrorWithCode:21];
    [v4 respondWithError:v22];
  }

  v23 = *MEMORY[0x1E69E9840];
}

void __40__HMSoftwareUpdateManager__handleFetch___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = v6;
  v9 = objc_autoreleasePoolPush();
  v10 = WeakRetained;
  v11 = HMFGetOSLogHandle();
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
  if (v8)
  {
    if (v12)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v13;
      v29 = 2114;
      v30 = v8;
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed fetch request with error: %{public}@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v14 = 0;
    v15 = v8;
    goto LABEL_15;
  }

  if (v12)
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v16;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received response to fetch request: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v9);
  if (!v5)
  {
    v14 = 0;
    goto LABEL_11;
  }

  if ([v5 downloadSize])
  {
    v25 = @"update";
    v17 = encodeRootObject(v5);
    v26 = v17;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

LABEL_11:
    v15 = 0;
    goto LABEL_15;
  }

  v18 = objc_autoreleasePoolPush();
  v19 = v10;
  v20 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    v21 = HMFGetLogIdentifier();
    *buf = 138543618;
    v28 = v21;
    v29 = 2112;
    v30 = v5;
    _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Cannot accept fetched update of download size 0 : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v18);
  v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
  v14 = 0;
LABEL_15:
  v22 = [*(a1 + 32) responseHandler];

  if (v22)
  {
    v23 = [*(a1 + 32) responseHandler];
    (v23)[2](v23, v15, v14);
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)updateAvailableUpdate:(id)a3 completionHandler:(id)a4
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMSoftwareUpdateManager *)self context];
  if (!v7)
  {
    v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateManager updateAvailableUpdate:completionHandler:]", @"completionHandler"];
    v24 = objc_autoreleasePoolPush();
    v25 = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v27;
      v35 = 2112;
      v36 = v23;
      _os_log_impl(&dword_19BB39000, v26, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v28 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v23 userInfo:0];
    objc_exception_throw(v28);
  }

  v9 = v8;
  if (!v8)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v14;
      v35 = 2080;
      v36 = "[HMSoftwareUpdateManager updateAvailableUpdate:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 12;
    goto LABEL_12;
  }

  if (v6 && ![v6 downloadSize])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v34 = v20;
      v35 = 2112;
      v36 = v6;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Cannot accept available update of download size 0 : %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 3;
LABEL_12:
    v21 = [v15 hmErrorWithCode:v16];
    v7[2](v7, v21);

    goto LABEL_13;
  }

  v10 = [v9 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke;
  block[3] = &unk_1E754D208;
  block[4] = self;
  v30 = v6;
  v32 = v7;
  v31 = v9;
  dispatch_async(v10, block);

LABEL_13:
  v22 = *MEMORY[0x1E69E9840];
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke(id *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = a1[4];
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = a1[5];
    *buf = 138543618;
    v38 = v5;
    v39 = 2112;
    v40 = v6;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Updating available update to: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v2);
  v7 = a1[5];
  if (v7)
  {
    v35 = @"update";
    v8 = encodeRootObject(v7);
    v36 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
  }

  else
  {
    v33 = @"update";
    v8 = [MEMORY[0x1E695DFB0] null];
    v34 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
  }

  v10 = v9;

  v11 = MEMORY[0x1E69A2A10];
  v12 = [a1[4] messageDestination];
  v13 = [v11 messageWithName:@"HMSUM.ua" destination:v12 payload:v10];

  objc_initWeak(buf, a1[4]);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_49;
  aBlock[3] = &unk_1E754D988;
  objc_copyWeak(&v32, buf);
  v30 = a1[5];
  v31 = a1[7];
  v14 = _Block_copy(aBlock);
  v15 = [a1[4] context];
  v16 = [v15 pendingRequests];

  v17 = [v13 identifier];
  v18 = _Block_copy(v14);
  [v16 addCompletionBlock:v18 forIdentifier:v17];

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_2;
  v24[3] = &unk_1E754D030;
  v19 = v16;
  v25 = v19;
  v20 = v17;
  v26 = v20;
  v27 = a1[5];
  v21 = v14;
  v28 = v21;
  [v13 setResponseHandler:v24];
  v22 = [a1[6] messageDispatcher];
  [v22 sendMessage:v13 completionHandler:0];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);

  v23 = *MEMORY[0x1E69E9840];
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setAvailableUpdate:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __67__HMSoftwareUpdateManager_updateAvailableUpdate_completionHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v6)
  {
    if (!v8)
    {
      v7 = [v5 hmf_UUIDForKey:@"identifier"];
      if (v7)
      {
        [*(a1 + 48) setIdentifier:v7];
      }
    }

    (*(*(a1 + 56) + 16))();
  }
}

- (void)_handleUpdatedAvailableUpdate:(id)a3
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdateManager *)self context];
  v6 = [v5 pendingRequests];
  v7 = [v4 identifier];
  v8 = [v6 retrieveCompletionBlockForIdentifier:v7];

  if (v8)
  {
LABEL_9:
    [v4 respondWithPayload:0];
    goto LABEL_10;
  }

  v9 = [v4 nullForKey:@"update"];

  if (v9)
  {
    v10 = 0;
LABEL_4:
    v11 = [(HMSoftwareUpdateManager *)self availableUpdate];
    v12 = HMFEqualObjects();

    if ((v12 & 1) == 0)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v16;
        v36 = 2112;
        v37 = v10;
        _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating available software update to: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
      [(HMSoftwareUpdateManager *)v14 setAvailableUpdate:v10];
    }

    goto LABEL_9;
  }

  v18 = [v4 dataForKey:@"update"];
  if (v18)
  {
    v19 = v18;
    v33 = 0;
    v10 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v18 error:&v33];
    v20 = v33;
    v21 = v20;
    if (v10)
    {

      goto LABEL_4;
    }

    v28 = objc_autoreleasePoolPush();
    v29 = self;
    v30 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v31;
      v36 = 2112;
      v37 = v21;
      _os_log_impl(&dword_19BB39000, v30, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from update data: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v28);
    v32 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v32];
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      v26 = [v4 messagePayload];
      *buf = 138543618;
      v35 = v25;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Missing update from message payload: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v27 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v4 respondWithError:v27];
  }

LABEL_10:

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setAvailableUpdate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeStrong(&self->_availableUpdate, a3);
  v5 = [(HMSoftwareUpdateManager *)self context];
  [v6 configureWithContext:v5];

  os_unfair_lock_unlock(&self->_lock);
}

- (HMSoftwareUpdate)availableUpdate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_availableUpdate;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)stop
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(HMSoftwareUpdateManager *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __31__HMSoftwareUpdateManager_stop__block_invoke;
    v11[3] = &unk_1E754E5C0;
    v11[4] = self;
    v12 = v4;
    dispatch_async(v5, v11);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v9;
      v15 = 2080;
      v16 = "[HMSoftwareUpdateManager stop]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void __31__HMSoftwareUpdateManager_stop__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    *buf = 138543362;
    v14 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Stopping", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) setStarted:0];
  v6 = MEMORY[0x1E69A2A10];
  v7 = [*(a1 + 32) messageDestination];
  v8 = [v6 messageWithName:@"HMSUM.cl" destination:v7 payload:0];

  objc_initWeak(buf, *(a1 + 32));
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __31__HMSoftwareUpdateManager_stop__block_invoke_46;
  v11[3] = &unk_1E754CD70;
  objc_copyWeak(&v12, buf);
  [v8 setResponseHandler:v11];
  v9 = [*(a1 + 40) messageDispatcher];
  [v9 sendMessage:v8 completionHandler:0];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);

  v10 = *MEMORY[0x1E69E9840];
}

void __31__HMSoftwareUpdateManager_stop__block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      v17 = 138543618;
      v18 = v12;
      v19 = 2112;
      v20 = v5;
      v13 = "%{public}@Failed to stop with error: %@";
      v14 = v10;
      v15 = 22;
LABEL_6:
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_DEFAULT, v13, &v17, v15);
    }
  }

  else if (v11)
  {
    v12 = HMFGetLogIdentifier();
    v17 = 138543362;
    v18 = v12;
    v13 = "%{public}@Stopped";
    v14 = v10;
    v15 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v8);
  v16 = *MEMORY[0x1E69E9840];
}

- (void)_reallyStartWithCompletionHandler:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdateManager *)self context];
  if (v5)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = [(HMSoftwareUpdateManager *)self messageDestination];
    v8 = [v6 messageWithName:@"HMSUM.op" destination:v7 payload:0];

    objc_initWeak(location, self);
    v15 = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __61__HMSoftwareUpdateManager__reallyStartWithCompletionHandler___block_invoke;
    v18 = &unk_1E754CFF8;
    objc_copyWeak(&v20, location);
    v19 = v4;
    [v8 setResponseHandler:&v15];
    v9 = [v5 messageDispatcher];
    [v9 sendMessage:v8 completionHandler:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(location);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v13;
      v22 = 2080;
      v23 = "[HMSoftwareUpdateManager _reallyStartWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __61__HMSoftwareUpdateManager__reallyStartWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v11)
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v29 = v12;
      v30 = 2112;
      v31 = v5;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to start with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    if (v11)
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v13;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [v9 setStarted:1];
    v14 = [v6 hmf_dataForKey:@"update"];
    if (v14)
    {
      v27 = 0;
      v15 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v14 error:&v27];
      v16 = v27;
      v17 = objc_autoreleasePoolPush();
      v18 = v9;
      v19 = HMFGetOSLogHandle();
      v20 = v19;
      if (v15)
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          HMFGetLogIdentifier();
          v21 = v25 = v16;
          *buf = 138543618;
          v29 = v21;
          v30 = 2112;
          v31 = v15;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Initial available software update: %@", buf, 0x16u);

          v16 = v25;
        }

        objc_autoreleasePoolPop(v17);
        [v18 setAvailableUpdate:v15];
      }

      else
      {
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          v26 = HMFGetLogIdentifier();
          *buf = 138543618;
          v29 = v26;
          v30 = 2112;
          v31 = v16;
          _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Failed to unarchive software update from software update data: %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
      }
    }
  }

  if (*(a1 + 32))
  {
    v22 = [v9 context];
    v23 = [v22 delegateCaller];
    [v23 callCompletion:*(a1 + 32) error:v5];
  }

  v24 = *MEMORY[0x1E69E9840];
}

- (void)reconnect
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMSoftwareUpdateManager *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HMSoftwareUpdateManager_reconnect__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(v5, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2080;
      v15 = "[HMSoftwareUpdateManager reconnect]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __36__HMSoftwareUpdateManager_reconnect__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isStarted];
  if (result)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 32);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Restarting on reconnect", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _reallyStartWithCompletionHandler:0];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)startWithCompletionHandler:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMSoftwareUpdateManager *)self context];
  if (!v4)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSoftwareUpdateManager startWithCompletionHandler:]", @"completionHandler"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v18;
      v24 = 2112;
      v25 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v6 = v5;
  if (v5)
  {
    v7 = [v5 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__HMSoftwareUpdateManager_startWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = v4;
    dispatch_async(v7, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    v9 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMSoftwareUpdateManager startWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v4 + 2))(v4, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t __54__HMSoftwareUpdateManager_startWithCompletionHandler___block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v5;
    _os_log_impl(&dword_19BB39000, v4, OS_LOG_TYPE_INFO, "%{public}@Starting", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v2);
  result = [*(a1 + 32) _reallyStartWithCompletionHandler:*(a1 + 40)];
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)__registerForMessages
{
  v3 = [(HMSoftwareUpdateManager *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMSUM.ua" receiver:self selector:sel__handleUpdatedAvailableUpdate_];

  v5 = [(HMSoftwareUpdateManager *)self context];
  v6 = [v5 messageDispatcher];
  [v6 registerForMessage:@"HMSUM.fu" receiver:self selector:sel__handleFetch_];

  v8 = [(HMSoftwareUpdateManager *)self context];
  v7 = [v8 messageDispatcher];
  [v7 registerForMessage:@"HMSUM.su" receiver:self selector:sel__handleStartUpdate_];
}

- (HMSoftwareUpdateManager)init
{
  v3 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.SUManager"];
  v4 = [(HMSoftwareUpdateManager *)self initWithContext:v3];

  return v4;
}

- (HMSoftwareUpdateManager)initWithContext:(id)a3
{
  v5 = a3;
  v18.receiver = self;
  v18.super_class = HMSoftwareUpdateManager;
  v6 = [(HMSoftwareUpdateManager *)&v18 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_context, a3);
    v8 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"08DA0D15-4D5F-4E74-89B6-A4201BC50F72"];
    identifier = v7->_identifier;
    v7->_identifier = v8;

    objc_initWeak(&location, v7);
    v10 = [(_HMContext *)v7->_context xpcClient];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __43__HMSoftwareUpdateManager_initWithContext___block_invoke;
    v15 = &unk_1E754E540;
    objc_copyWeak(&v16, &location);
    [v10 registerReconnectionHandler:&v12];

    [(HMSoftwareUpdateManager *)v7 __registerForMessages:v12];
    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  return v7;
}

void __43__HMSoftwareUpdateManager_initWithContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t34_20981 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t34_20981, &__block_literal_global_20982);
  }

  v3 = logCategory__hmf_once_v35_20983;

  return v3;
}

uint64_t __38__HMSoftwareUpdateManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v35_20983;
  logCategory__hmf_once_v35_20983 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end