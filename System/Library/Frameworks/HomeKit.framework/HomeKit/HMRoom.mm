@interface HMRoom
- (BOOL)mergeFromNewObject:(id)a3;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMRoom)initWithCoder:(id)a3;
- (HMRoom)initWithName:(id)a3;
- (NSArray)accessories;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)assistantIdentifier;
- (void)__configureWithContext:(id)a3 home:(id)a4;
- (void)_unconfigure;
- (void)_updateName:(id)a3 completionHandler:(id)a4;
- (void)setApplicationData:(id)a3;
- (void)setHome:(id)a3;
- (void)setName:(id)a3;
- (void)setUuid:(id)a3;
- (void)updateApplicationData:(id)a3 completionHandler:(id)a4;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMRoom

- (BOOL)mergeFromNewObject:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [(HMRoom *)self home];
    v8 = [(HMRoom *)self name];
    v9 = [v6 name];
    v10 = [v8 isEqualToString:v9];

    if ((v10 & 1) == 0)
    {
      v11 = [v6 name];
      [(HMRoom *)self setName:v11];

      v12 = [v7 delegate];
      if (objc_opt_respondsToSelector())
      {
        v13 = [(HMRoom *)self context];
        v14 = [v13 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMRoom_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E5E8;
        block[4] = self;
        v27 = v12;
        v28 = v7;
        dispatch_async(v14, block);
      }
    }

    v15 = [(HMRoom *)self applicationData];
    v16 = [v6 applicationData];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = v10 ^ 1;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      v20 = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating room application data via merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      v23 = [v6 applicationData];
      [(HMRoom *)v20 setApplicationData:v23];

      [v7 notifyDelegateOfAppDataUpdateForRoom:v20];
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];
  return v18;
}

void __29__HMRoom_mergeFromNewObject___block_invoke(id *a1)
{
  v2 = [a1[4] context];
  v3 = [v2 delegateCaller];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__HMRoom_mergeFromNewObject___block_invoke_2;
  v6[3] = &unk_1E754E5E8;
  v7 = a1[5];
  v4 = a1[6];
  v5 = a1[4];
  v8 = v4;
  v9 = v5;
  [v3 invokeBlock:v6];
}

- (HMRoom)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
  v6 = [(HMRoom *)self initWithName:v5];
  if (v6)
  {
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v6->_home, v7);

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"roomUUID"];
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    uuid = v6->_uuid;
    v6->_uuid = v9;

    v11 = [[HMApplicationData alloc] initWithDictionaryFromCoder:v4 key:@"HM.appData"];
    applicationData = v6->_applicationData;
    v6->_applicationData = v11;
  }

  return v6;
}

- (void)updateApplicationData:(id)a3 completionHandler:(id)a4
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRoom *)self context];
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRoom updateApplicationData:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    v23 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v25;
      v29 = 2112;
      v30 = v21;
      _os_log_impl(&dword_19BB39000, v24, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v22);
    v26 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v21 userInfo:0];
    objc_exception_throw(v26);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMRoom *)self home];
    v11 = v10;
    if (v10)
    {
      [v10 updateApplicationData:v6 forRoom:self completionHandler:v7];
    }

    else
    {
      v17 = [(HMRoom *)self context];
      v18 = [v17 delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [v18 callCompletion:v7 error:v19];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v15;
      v29 = 2080;
      v30 = "[HMRoom updateApplicationData:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateName:(id)a3 completionHandler:(id)a4
{
  v65 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMRoom *)self context];
  if (v8)
  {
    if (!v6)
    {
      v20 = [(HMRoom *)self context];
      v21 = [v20 delegateCaller];
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [v21 callCompletion:v7 error:v22];

      goto LABEL_20;
    }

    v9 = [v6 length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v9 > HMMaxLengthForNaming__hmf_once_v9)
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      v14 = [v8 delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [v14 callCompletion:v7 error:v15];

      goto LABEL_20;
    }

    v23 = [v6 copy];
    v24 = [(HMRoom *)self home];
    if (v24)
    {
      v25 = [(HMRoom *)self uuid];
      v26 = [v24 roomForEntireHome];
      v27 = [v26 uuid];
      v28 = [v25 isEqual:v27];

      if (!v28)
      {
        v34 = [(HMRoom *)self name];
        v35 = [v34 isEqualToString:v23];

        if (!v35)
        {
          v36 = objc_alloc(MEMORY[0x1E69A2A00]);
          v37 = [(HMRoom *)self uuid];
          v50 = [v36 initWithTarget:v37];

          v38 = MEMORY[0x1E69A2A10];
          v59 = @"kRoomName";
          v60 = v23;
          v39 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
          v40 = [v38 messageWithName:@"kRenameRoomRequestKey" destination:v50 payload:v39];

          objc_initWeak(buf, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __40__HMRoom__updateName_completionHandler___block_invoke;
          aBlock[3] = &unk_1E754D988;
          objc_copyWeak(&v58, buf);
          v56 = v23;
          v57 = v7;
          v41 = _Block_copy(aBlock);
          v42 = [(HMRoom *)self context];
          v43 = [v42 pendingRequests];

          v44 = [v40 identifier];
          v45 = _Block_copy(v41);
          [v43 addCompletionBlock:v45 forIdentifier:v44];

          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __40__HMRoom__updateName_completionHandler___block_invoke_2;
          v51[3] = &unk_1E754E480;
          v46 = v43;
          v52 = v46;
          v47 = v44;
          v53 = v47;
          v48 = v41;
          v54 = v48;
          [v40 setResponseHandler:v51];
          v49 = [v8 messageDispatcher];
          [v49 sendMessage:v40 completionHandler:0];

          objc_destroyWeak(&v58);
          objc_destroyWeak(buf);

          goto LABEL_19;
        }

        v29 = [(HMRoom *)self context];
        v30 = [v29 delegateCaller];
        [v30 callCompletion:v7 error:0];
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      v29 = [(HMRoom *)self context];
      v30 = [v29 delegateCaller];
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:29 userInfo:0];
    }

    else
    {
      v29 = [(HMRoom *)self context];
      v30 = [v29 delegateCaller];
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    }

    v32 = v31;
    [v30 callCompletion:v7 error:v31];

    goto LABEL_18;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v62 = v19;
    v63 = 2080;
    v64 = "[HMRoom _updateName:completionHandler:]";
    _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
LABEL_20:

  v33 = *MEMORY[0x1E69E9840];
}

void __40__HMRoom__updateName_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v7 = WeakRetained;
  if (!v3)
  {
    [WeakRetained setName:*(a1 + 32)];
    WeakRetained = v7;
  }

  v5 = [WeakRetained context];
  v6 = [v5 delegateCaller];
  [v6 callCompletion:*(a1 + 40) error:v3];
}

void __40__HMRoom__updateName_completionHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = [*(a1 + 32) removeCompletionBlockForIdentifier:*(a1 + 40)];
  if (v3)
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (void)updateName:(NSString *)name completionHandler:(void *)completion
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = name;
  v7 = completion;
  v8 = [(HMRoom *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRoom updateName:completionHandler:]", @"completion"];
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
    block[2] = __39__HMRoom_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
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
      v29 = "[HMRoom updateName:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)assistantIdentifier
{
  v2 = [(HMRoom *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"RM", v2, 0);

  return v3;
}

- (void)setApplicationData:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, v4);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setUuid:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  uuid = self->_uuid;
  self->_uuid = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)uuid
{
  os_unfair_lock_lock_with_options();
  v3 = self->_uuid;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_uuid];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (NSArray)accessories
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = [(HMRoom *)self home];
  v4 = [v3 accessories];

  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [(HMRoom *)self uuid];
        v11 = [v9 room];
        v12 = [v11 uuid];
        v13 = [v10 isEqual:v12];

        if (v13)
        {
          [v16 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return v16;
}

- (void)setName:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  name = self->_name;
  self->_name = v4;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)__configureWithContext:(id)a3 home:(id)a4
{
  v7 = a3;
  [(HMRoom *)self setHome:a4];
  v6 = v7;
  if (v7)
  {
    [(HMRoom *)self setContext:v7];
    v6 = v7;
  }
}

- (HMRoom)initWithName:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMRoom;
  v5 = [(HMRoom *)&v11 init];
  if (v5)
  {
    v6 = [v4 copy];
    name = v5->_name;
    v5->_name = v6;

    v8 = objc_alloc_init(HMApplicationData);
    applicationData = v5->_applicationData;
    v5->_applicationData = v8;
  }

  return v5;
}

- (void)_unconfigure
{
  v14 = *MEMORY[0x1E69E9840];
  context = self->_context;
  v4 = objc_autoreleasePoolPush();
  v5 = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring room", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(HMRoom *)v5 setHome:0];
    [(HMRoom *)v5 setContext:0];
    v9 = [MEMORY[0x1E696AD88] defaultCenter];
    [v9 removeObserver:v5];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v12, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end