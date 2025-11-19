@interface HMUserCloudShareManager
+ (id)logCategory;
- (HMUserCloudShareManager)initWithDataSource:(id)a3;
- (HMUserCloudShareManager)initWithDataSource:(id)a3 context:(id)a4;
- (HMUserCloudShareManagerDataSource)dataSource;
- (HMUserCloudShareManagerDelegate)delegate;
- (id)messageDestination;
- (void)__registerForMessages;
- (void)_handleDidReceiveRepairRequest:(id)a3;
- (void)_handleDidReceiveShare:(id)a3;
- (void)_registerWithCompletion:(id)a3;
- (void)_unconfigure;
- (void)configure;
- (void)reconnect;
- (void)registerForContainerIDs:(id)a3 completion:(id)a4;
@end

@implementation HMUserCloudShareManager

- (void)configure
{
  v3 = [(HMUserCloudShareManager *)self context];
  v4 = [v3 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__HMUserCloudShareManager_configure__block_invoke;
  block[3] = &unk_1E754E2A8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __36__HMUserCloudShareManager_configure__block_invoke(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v2 = [*(a1 + 32) context];
  v3 = [v2 xpcClient];
  v4 = MEMORY[0x1E69E9820];
  v5 = 3221225472;
  v6 = __36__HMUserCloudShareManager_configure__block_invoke_2;
  v7 = &unk_1E754E540;
  objc_copyWeak(&v8, &location);
  [v3 registerReconnectionHandler:&v4];

  [*(a1 + 32) __registerForMessages];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)__registerForMessages
{
  v3 = [(HMUserCloudShareManager *)self context];
  v4 = [v3 messageDispatcher];
  [v4 registerForMessage:@"HMUCSM.rs" receiver:self selector:sel__handleDidReceiveShare_];

  v6 = [(HMUserCloudShareManager *)self context];
  v5 = [v6 messageDispatcher];
  [v5 registerForMessage:@"HMUCSM.rRep" receiver:self selector:sel__handleDidReceiveRepairRequest_];
}

- (HMUserCloudShareManagerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (HMUserCloudShareManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(HMUserCloudShareManager *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (void)_registerWithCompletion:(id)a3
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUserCloudShareManager *)self context];
  if (v5)
  {
    v6 = MEMORY[0x1E69A2A10];
    v7 = [(HMUserCloudShareManager *)self messageDestination];
    v22 = @"containerIds";
    v8 = [(HMUserCloudShareManager *)self containerIDs];
    v23 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v10 = [v6 messageWithName:@"HMUCSM.reg" destination:v7 payload:v9];

    objc_initWeak(location, self);
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__HMUserCloudShareManager__registerWithCompletion___block_invoke;
    v18[3] = &unk_1E754D058;
    objc_copyWeak(&v21, location);
    v11 = v5;
    v19 = v11;
    v20 = v4;
    [v10 setResponseHandler:v18];
    v12 = [v11 messageDispatcher];
    [v12 sendMessage:v10 completionHandler:0];

    objc_destroyWeak(&v21);
    objc_destroyWeak(location);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *location = 138543618;
      *&location[4] = v16;
      v25 = 2080;
      v26 = "[HMUserCloudShareManager _registerWithCompletion:]";
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", location, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __51__HMUserCloudShareManager__registerWithCompletion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [a1[4] queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __51__HMUserCloudShareManager__registerWithCompletion___block_invoke_2;
    block[3] = &unk_1E754E0F8;
    v7 = v3;
    v8 = WeakRetained;
    v9 = a1[5];
    dispatch_async(v5, block);
  }
}

void __51__HMUserCloudShareManager__registerWithCompletion___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = objc_autoreleasePoolPush();
  v4 = *(a1 + 40);
  v5 = HMFGetOSLogHandle();
  v6 = v5;
  if (v2)
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v8 = *(a1 + 32);
    v16 = 138543618;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    v9 = "%{public}@Failed to start with error: %@";
    v10 = v6;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
  }

  else
  {
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_7;
    }

    v7 = HMFGetLogIdentifier();
    v16 = 138543362;
    v17 = v7;
    v9 = "%{public}@Registered Successfully";
    v10 = v6;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
  }

  _os_log_impl(&dword_19BB39000, v10, v11, v9, &v16, v12);

LABEL_7:
  objc_autoreleasePoolPop(v3);
  if (*(a1 + 48))
  {
    v13 = [*(a1 + 40) context];
    v14 = [v13 delegateCaller];
    [v14 callCompletion:*(a1 + 48) error:*(a1 + 32)];
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)reconnect
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(HMUserCloudShareManager *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __36__HMUserCloudShareManager_reconnect__block_invoke;
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
      v15 = "[HMUserCloudShareManager reconnect]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

uint64_t __36__HMUserCloudShareManager_reconnect__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [*(a1 + 32) isRegistered];
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
      _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_INFO, "%{public}@Re-registering", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    result = [*(a1 + 32) _registerWithCompletion:0];
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)registerForContainerIDs:(id)a3 completion:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMUserCloudShareManager *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMUserCloudShareManager registerForContainerIDs:completion:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    v19 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v21;
      v28 = 2112;
      v29 = v17;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v17 userInfo:0];
    objc_exception_throw(v22);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [v8 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __62__HMUserCloudShareManager_registerForContainerIDs_completion___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v25 = v7;
    v24 = v6;
    dispatch_async(v10, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v14;
      v28 = 2080;
      v29 = "[HMUserCloudShareManager registerForContainerIDs:completion:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __62__HMUserCloudShareManager_registerForContainerIDs_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  if ([*(a1 + 32) isRegistered])
  {
    v2 = *(a1 + 48);
    v9 = [MEMORY[0x1E696ABC0] hmErrorWithCode:1 description:@"Already registered" reason:@"Cannot register more than once" suggestion:0];
    (*(v2 + 16))(v2);
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    [*(a1 + 32) setRegistered:1];
    [*(a1 + 32) setContainerIDs:*(a1 + 40)];
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v11 = v7;
      _os_log_impl(&dword_19BB39000, v6, OS_LOG_TYPE_INFO, "%{public}@Starting", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _registerWithCompletion:*(a1 + 48)];
    v8 = *MEMORY[0x1E69E9840];
  }
}

- (void)_handleDidReceiveRepairRequest:(id)a3
{
  v35 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 messagePayload];
  v6 = [v5 hmf_UUIDForKey:@"HM.u.homeuuid"];

  v7 = MEMORY[0x1E696ACD0];
  v8 = objc_opt_class();
  v9 = [v4 messagePayload];
  v10 = [v9 objectForKeyedSubscript:@"HM.u.repairInfo"];
  v28 = 0;
  v11 = [v7 unarchivedObjectOfClass:v8 fromData:v10 error:&v28];
  v12 = v28;

  v13 = [(HMUserCloudShareManager *)self dataSource];
  v14 = [v13 shareManager:self homeWithUUID:v6];

  if (v14 && v11)
  {
    v15 = [(HMUserCloudShareManager *)self delegate];
    v16 = objc_opt_respondsToSelector();
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    v20 = os_log_type_enabled(v19, OS_LOG_TYPE_INFO);
    if (v16)
    {
      if (v20)
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v21;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Calling repair delegate.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
      [v15 shareManager:v18 didReceiveRepairInfo:v11 home:v14];
    }

    else
    {
      if (v20)
      {
        v26 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v26;
        _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_INFO, "%{public}@Client does not respond to repair.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v17);
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543874;
      v30 = v25;
      v31 = 2112;
      v32 = v6;
      v33 = 2112;
      v34 = v12;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@Did not find home %@ or repairInfo %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v22);
  }

  v27 = *MEMORY[0x1E69E9840];
}

- (void)_handleDidReceiveShare:(id)a3
{
  v139 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(HMUserCloudShareManager *)self delegate];
  v6 = objc_autoreleasePoolPush();
  v7 = self;
  v8 = HMFGetOSLogHandle();
  v9 = v8;
  if (v5)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543362;
      v136 = v10;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_INFO, "%{public}@Decoding share message.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
    v11 = objc_autoreleasePoolPush();
    v12 = v7;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v136 = v14;
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Decoding user.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x1E696ACD0];
    v16 = objc_opt_class();
    v17 = [v4 messagePayload];
    v18 = [v17 objectForKeyedSubscript:@"HM.u.to"];
    v132 = 0;
    v19 = [v15 unarchivedObjectOfClass:v16 fromData:v18 error:&v132];
    v20 = v132;

    if (v20)
    {
      context = v20;
      v121 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v122 = 0;
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = v12;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        v136 = v29;
        _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_DEBUG, "%{public}@Decoding share URL.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v30 = MEMORY[0x1E696ACD0];
      v31 = objc_opt_class();
      v32 = [v4 messagePayload];
      v33 = [v32 objectForKeyedSubscript:@"HM.u.url"];
      v131 = 0;
      v114 = [v30 unarchivedObjectOfClass:v31 fromData:v33 error:&v131];
      v34 = v131;

      if (v34)
      {
        context = v34;
        v121 = 0;
        v22 = 0;
        v23 = 0;
        v122 = 0;
        v21 = v114;
      }

      else
      {
        v35 = objc_autoreleasePoolPush();
        v36 = v27;
        v37 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
        {
          v38 = HMFGetLogIdentifier();
          *buf = 138543362;
          v136 = v38;
          _os_log_impl(&dword_19BB39000, v37, OS_LOG_TYPE_DEBUG, "%{public}@Decoding encoded share Token.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v35);
        v39 = [v4 messagePayload];
        v113 = [v39 objectForKeyedSubscript:@"HM.u.token"];

        v40 = objc_autoreleasePoolPush();
        v41 = v36;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543362;
          v136 = v43;
          _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_DEBUG, "%{public}@Decoding containerID.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v40);
        v44 = [v4 messagePayload];
        v23 = [v44 objectForKeyedSubscript:@"HM.u.container"];

        v45 = objc_autoreleasePoolPush();
        v46 = v41;
        v47 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEBUG))
        {
          v48 = HMFGetLogIdentifier();
          *buf = 138543362;
          v136 = v48;
          _os_log_impl(&dword_19BB39000, v47, OS_LOG_TYPE_DEBUG, "%{public}@Decoding fromUser.", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v45);
        v49 = MEMORY[0x1E696ACD0];
        v50 = objc_opt_class();
        v51 = [v4 messagePayload];
        v52 = [v51 objectForKeyedSubscript:@"HM.u.from"];
        v130 = 0;
        v122 = [v49 unarchivedObjectOfClass:v50 fromData:v52 error:&v130];
        v53 = v130;

        if (v53)
        {
          context = v53;
          v121 = 0;
          v21 = v114;
        }

        else
        {
          v54 = objc_autoreleasePoolPush();
          v55 = v46;
          v56 = HMFGetOSLogHandle();
          v21 = v114;
          contexta = v55;
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEBUG))
          {
            v57 = HMFGetLogIdentifier();
            *buf = 138543362;
            v136 = v57;
            _os_log_impl(&dword_19BB39000, v56, OS_LOG_TYPE_DEBUG, "%{public}@Decoding token.", buf, 0xCu);

            v55 = contexta;
          }

          objc_autoreleasePoolPop(v54);
          v58 = objc_alloc(MEMORY[0x1E696ACD0]);
          v59 = [v4 messagePayload];
          v60 = [v59 objectForKeyedSubscript:@"HM.u.home"];
          v129 = 0;
          v61 = [v58 initForReadingFromData:v60 error:&v129];
          v62 = v129;

          [v61 _allowDecodingCyclesInSecureMode];
          v63 = objc_opt_class();
          v64 = *MEMORY[0x1E696A508];
          v128 = v62;
          v121 = [v61 decodeTopLevelObjectOfClass:v63 forKey:v64 error:&v128];
          v65 = v128;

          if (!v65)
          {
            v110 = v61;
            v82 = objc_autoreleasePoolPush();
            v83 = contexta;
            v84 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v84, OS_LOG_TYPE_DEBUG))
            {
              v85 = HMFGetLogIdentifier();
              *buf = 138543362;
              v136 = v85;
              _os_log_impl(&dword_19BB39000, v84, OS_LOG_TYPE_DEBUG, "%{public}@Decoding share token.", buf, 0xCu);
            }

            v111 = v83;
            objc_autoreleasePoolPop(v82);
            v86 = MEMORY[0x1E696ACD0];
            v87 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
            v127 = 0;
            v76 = [v86 _strictlyUnarchivedObjectOfClasses:v87 fromData:v113 error:&v127];
            v88 = v127;

            if (v88)
            {
              v89 = v76;
              v90 = objc_autoreleasePoolPush();
              v91 = v111;
              v92 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v92, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v93 = contextd = v90;
                *buf = 138543362;
                v136 = v93;
                _os_log_impl(&dword_19BB39000, v92, OS_LOG_TYPE_INFO, "%{public}@Skipping shareToken check.", buf, 0xCu);

                v90 = contextd;
              }

              objc_autoreleasePoolPop(v90);
              v76 = v89;
            }

            v77 = [[HMUserCloudShareInvitation alloc] initWithUser:v19 URL:v114 shareToken:v76 containerID:v23 forHome:v121 fromUser:v122];
            if (objc_opt_respondsToSelector())
            {
              contextb = v76;
              v94 = objc_autoreleasePoolPush();
              v95 = v111;
              v96 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v96, OS_LOG_TYPE_INFO))
              {
                HMFGetLogIdentifier();
                v97 = v112 = v95;
                *buf = 138543362;
                v136 = v97;
                _os_log_impl(&dword_19BB39000, v96, OS_LOG_TYPE_INFO, "%{public}@Calling share invitation delegate.", buf, 0xCu);

                v95 = v112;
              }

              objc_autoreleasePoolPop(v94);
              v125[0] = MEMORY[0x1E69E9820];
              v125[1] = 3221225472;
              v125[2] = __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke;
              v125[3] = &unk_1E754C6C8;
              v125[4] = v95;
              v126 = v4;
              [v5 shareManager:v95 didReceiveShareInvitation:v77 completionHandler:v125];

              v22 = v113;
              v76 = contextb;
            }

            else
            {
              v98 = objc_opt_respondsToSelector();
              contextc = objc_autoreleasePoolPush();
              v99 = v111;
              v100 = HMFGetOSLogHandle();
              if (v98)
              {
                v101 = v100;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_INFO))
                {
                  v102 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v136 = v102;
                  v103 = v102;
                  _os_log_impl(&dword_19BB39000, v101, OS_LOG_TYPE_INFO, "%{public}@Calling legacy share invitation delegate.", buf, 0xCu);
                }

                objc_autoreleasePoolPop(contextc);
                v123[0] = MEMORY[0x1E69E9820];
                v123[1] = 3221225472;
                v123[2] = __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke_60;
                v123[3] = &unk_1E754C6F0;
                v123[4] = v99;
                v124 = v4;
                [v5 shareManager:v99 didReceiveShareInvitation:v77 completion:v123];
              }

              else
              {
                v104 = v100;
                if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
                {
                  v105 = HMFGetLogIdentifier();
                  *buf = 138543362;
                  v136 = v105;
                  v106 = v105;
                  _os_log_impl(&dword_19BB39000, v104, OS_LOG_TYPE_ERROR, "%{public}@Delegate does not implement any of the methods to accept a share", buf, 0xCu);
                }

                objc_autoreleasePoolPop(contextc);
                v107 = [v4 responseHandler];

                if (v107)
                {
                  v108 = [v4 responseHandler];
                  v109 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Delegate does implement method to accept shares" reason:@"Need a delegate implements method to accept shares" suggestion:0];
                  (v108)[2](v108, v109, 0);
                }
              }

              v22 = v113;
            }

            goto LABEL_33;
          }

          context = v65;
        }

        v22 = v113;
      }
    }

    v66 = objc_autoreleasePoolPush();
    v67 = v12;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      [v4 messagePayload];
      v115 = v23;
      v70 = v4;
      v71 = v5;
      v72 = v22;
      v73 = v19;
      v75 = v74 = v21;
      *buf = 138543618;
      v136 = v69;
      v137 = 2112;
      v138 = v75;
      _os_log_impl(&dword_19BB39000, v68, OS_LOG_TYPE_ERROR, "%{public}@Could not decode all items in payload: %@", buf, 0x16u);

      v21 = v74;
      v19 = v73;
      v22 = v72;
      v5 = v71;
      v4 = v70;
      v23 = v115;
    }

    objc_autoreleasePoolPop(v66);
    v76 = context;
    v77 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Unable to decode payload" reason:@"Could not decode all items in payload" suggestion:0 underlyingError:context];
    v78 = [v4 responseHandler];

    if (v78)
    {
      v79 = [v4 responseHandler];
      v133 = @"didAccept";
      v134 = MEMORY[0x1E695E110];
      v80 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v134 forKeys:&v133 count:1];
      (v79)[2](v79, v77, v80);
    }

LABEL_33:

    goto LABEL_34;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v136 = v24;
    _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@Do not have a delegate that responds to shares", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v25 = [v4 responseHandler];

  if (v25)
  {
    v19 = [v4 responseHandler];
    v21 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2 description:@"Delegate does not respond to shares" reason:@"Need a delegate that responds to shares" suggestion:0];
    (v19)[2](v19, v21, 0);
LABEL_34:
  }

  v81 = *MEMORY[0x1E69E9840];
}

void __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 32);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v12;
      v13 = "%{public}@Client accepted share";
LABEL_7:
      _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, v13, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *(a1 + 32);
  v14 = HMFGetOSLogHandle();
  v11 = v14;
  if (v8)
  {
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543362;
      v35 = v12;
      v13 = "%{public}@Client rejected share.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v9);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543362;
    v35 = v24;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_ERROR, "%{public}@Client did not accept share but no error specified.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  v8 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Required error not specified" reason:@"Need error when share is not accepted" suggestion:0];
LABEL_9:
  v15 = [*(a1 + 40) responseHandler];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v17 = [MEMORY[0x1E696AD98] numberWithBool:a2];
    [v16 setObject:v17 forKeyedSubscript:@"didAccept"];

    if (v7)
    {
      v18 = objc_autoreleasePoolPush();
      v19 = *(a1 + 32);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        v21 = HMFGetLogIdentifier();
        *buf = 138543362;
        v35 = v21;
        _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_DEBUG, "%{public}@Forwarding received clientInfo.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v18);
      v33 = 0;
      v22 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v7 requiringSecureCoding:1 error:&v33];
      v23 = v33;
      if (v22)
      {
        [v16 setObject:v22 forKeyedSubscript:@"clientInfo"];
      }

      else
      {
        v25 = objc_autoreleasePoolPush();
        v26 = *(a1 + 32);
        v27 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = HMFGetLogIdentifier();
          *buf = 138543618;
          v35 = v28;
          v36 = 2112;
          v37 = v23;
          _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Error encoding client Info. %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v25);
        v29 = v23;

        v16 = 0;
        v8 = v29;
      }
    }

    v30 = [*(a1 + 40) responseHandler];
    v31 = [v16 copy];
    (v30)[2](v30, v8, v31);
  }

  v32 = *MEMORY[0x1E69E9840];
}

void __50__HMUserCloudShareManager__handleDidReceiveShare___block_invoke_60(uint64_t a1, uint64_t a2, void *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      v10 = "%{public}@Client accepted share";
LABEL_7:
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, v10, buf, 0xCu);

      goto LABEL_8;
    }

    goto LABEL_8;
  }

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 32);
  v11 = HMFGetOSLogHandle();
  v8 = v11;
  if (v5)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v9;
      v10 = "%{public}@Client rejected share.";
      goto LABEL_7;
    }

LABEL_8:

    objc_autoreleasePoolPop(v6);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v21 = v17;
    _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Client did not accept share but no error specified.", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v5 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3 description:@"Required error not specified" reason:@"Need error when share is not accepted" suggestion:0];
LABEL_9:
  v12 = [*(a1 + 40) responseHandler];

  if (v12)
  {
    v13 = [*(a1 + 40) responseHandler];
    v14 = [MEMORY[0x1E696AD98] numberWithBool:{a2, @"didAccept"}];
    v19 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v19 forKeys:&v18 count:1];
    (v13)[2](v13, v5, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

void __36__HMUserCloudShareManager_configure__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained reconnect];
}

- (void)_unconfigure
{
  v4 = [(HMUserCloudShareManager *)self context];
  v3 = [v4 messageDispatcher];
  [v3 deregisterReceiver:self];
}

- (HMUserCloudShareManager)initWithDataSource:(id)a3 context:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = HMUserCloudShareManager;
  v8 = [(HMUserCloudShareManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_dataSource, v6);
    objc_storeStrong(&v9->_context, a4);
    v10 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:@"4BEBFE01-79E8-4433-8EAA-D41948E39F02"];
    identifier = v9->_identifier;
    v9->_identifier = v10;
  }

  return v9;
}

- (HMUserCloudShareManager)initWithDataSource:(id)a3
{
  v4 = a3;
  v5 = [[_HMContext alloc] initWithName:@"com.apple.HomeKit.UserCSManager"];
  v6 = [(HMUserCloudShareManager *)self initWithDataSource:v4 context:v5];

  return v6;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t33 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t33, &__block_literal_global_50092);
  }

  v3 = logCategory__hmf_once_v34;

  return v3;
}

uint64_t __38__HMUserCloudShareManager_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v34;
  logCategory__hmf_once_v34 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end