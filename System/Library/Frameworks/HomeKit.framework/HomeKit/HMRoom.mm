@interface HMRoom
- (BOOL)mergeFromNewObject:(id)object;
- (HMApplicationData)applicationData;
- (HMHome)home;
- (HMRoom)initWithCoder:(id)coder;
- (HMRoom)initWithName:(id)name;
- (NSArray)accessories;
- (NSString)name;
- (NSUUID)uniqueIdentifier;
- (NSUUID)uuid;
- (id)assistantIdentifier;
- (void)__configureWithContext:(id)context home:(id)home;
- (void)_unconfigure;
- (void)_updateName:(id)name completionHandler:(id)handler;
- (void)setApplicationData:(id)data;
- (void)setHome:(id)home;
- (void)setName:(id)name;
- (void)setUuid:(id)uuid;
- (void)updateApplicationData:(id)data completionHandler:(id)handler;
- (void)updateName:(NSString *)name completionHandler:(void *)completion;
@end

@implementation HMRoom

- (BOOL)mergeFromNewObject:(id)object
{
  v31 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = objectCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    home = [(HMRoom *)self home];
    name = [(HMRoom *)self name];
    name2 = [v6 name];
    v10 = [name isEqualToString:name2];

    if ((v10 & 1) == 0)
    {
      name3 = [v6 name];
      [(HMRoom *)self setName:name3];

      delegate = [home delegate];
      if (objc_opt_respondsToSelector())
      {
        context = [(HMRoom *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __29__HMRoom_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E754E5E8;
        block[4] = self;
        v27 = delegate;
        v28 = home;
        dispatch_async(queue, block);
      }
    }

    applicationData = [(HMRoom *)self applicationData];
    applicationData2 = [v6 applicationData];
    v17 = HMFEqualObjects();

    if (v17)
    {
      v18 = v10 ^ 1;
    }

    else
    {
      v19 = objc_autoreleasePoolPush();
      selfCopy = self;
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v30 = v22;
        _os_log_impl(&dword_19BB39000, v21, OS_LOG_TYPE_INFO, "%{public}@Updating room application data via merge", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      applicationData3 = [v6 applicationData];
      [(HMRoom *)selfCopy setApplicationData:applicationData3];

      [home notifyDelegateOfAppDataUpdateForRoom:selfCopy];
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

- (HMRoom)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomName"];
  v6 = [(HMRoom *)self initWithName:v5];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v6->_home, v7);

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"roomUUID"];
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    uuid = v6->_uuid;
    v6->_uuid = v9;

    v11 = [[HMApplicationData alloc] initWithDictionaryFromCoder:coderCopy key:@"HM.appData"];
    applicationData = v6->_applicationData;
    v6->_applicationData = v11;
  }

  return v6;
}

- (void)updateApplicationData:(id)data completionHandler:(id)handler
{
  v31 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  handlerCopy = handler;
  context = [(HMRoom *)self context];
  if (!handlerCopy)
  {
    v21 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRoom updateApplicationData:completionHandler:]", @"completion"];
    v22 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    home = [(HMRoom *)self home];
    v11 = home;
    if (home)
    {
      [home updateApplicationData:dataCopy forRoom:self completionHandler:handlerCopy];
    }

    else
    {
      context2 = [(HMRoom *)self context];
      delegateCaller = [context2 delegateCaller];
      v19 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v19];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    handlerCopy[2](handlerCopy, v16);
  }

  v20 = *MEMORY[0x1E69E9840];
}

- (void)_updateName:(id)name completionHandler:(id)handler
{
  v65 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  handlerCopy = handler;
  context = [(HMRoom *)self context];
  if (context)
  {
    if (!nameCopy)
    {
      context2 = [(HMRoom *)self context];
      delegateCaller = [context2 delegateCaller];
      v22 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:20 userInfo:0];
      [delegateCaller callCompletion:handlerCopy error:v22];

      goto LABEL_20;
    }

    v9 = [nameCopy length];
    if (HMMaxLengthForNaming__hmf_once_t8[0] != -1)
    {
      dispatch_once(HMMaxLengthForNaming__hmf_once_t8, &__block_literal_global_70);
    }

    if (v9 > HMMaxLengthForNaming__hmf_once_v9)
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v62 = v13;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v10);
      delegateCaller2 = [context delegateCaller];
      v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:46];
      [delegateCaller2 callCompletion:handlerCopy error:v15];

      goto LABEL_20;
    }

    v23 = [nameCopy copy];
    home = [(HMRoom *)self home];
    if (home)
    {
      uuid = [(HMRoom *)self uuid];
      roomForEntireHome = [home roomForEntireHome];
      uuid2 = [roomForEntireHome uuid];
      v28 = [uuid isEqual:uuid2];

      if (!v28)
      {
        name = [(HMRoom *)self name];
        v35 = [name isEqualToString:v23];

        if (!v35)
        {
          v36 = objc_alloc(MEMORY[0x1E69A2A00]);
          uuid3 = [(HMRoom *)self uuid];
          v50 = [v36 initWithTarget:uuid3];

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
          v57 = handlerCopy;
          v41 = _Block_copy(aBlock);
          context3 = [(HMRoom *)self context];
          pendingRequests = [context3 pendingRequests];

          identifier = [v40 identifier];
          v45 = _Block_copy(v41);
          [pendingRequests addCompletionBlock:v45 forIdentifier:identifier];

          v51[0] = MEMORY[0x1E69E9820];
          v51[1] = 3221225472;
          v51[2] = __40__HMRoom__updateName_completionHandler___block_invoke_2;
          v51[3] = &unk_1E754E480;
          v46 = pendingRequests;
          v52 = v46;
          v47 = identifier;
          v53 = v47;
          v48 = v41;
          v54 = v48;
          [v40 setResponseHandler:v51];
          messageDispatcher = [context messageDispatcher];
          [messageDispatcher sendMessage:v40 completionHandler:0];

          objc_destroyWeak(&v58);
          objc_destroyWeak(buf);

          goto LABEL_19;
        }

        context4 = [(HMRoom *)self context];
        delegateCaller3 = [context4 delegateCaller];
        [delegateCaller3 callCompletion:handlerCopy error:0];
LABEL_18:

LABEL_19:
        goto LABEL_20;
      }

      context4 = [(HMRoom *)self context];
      delegateCaller3 = [context4 delegateCaller];
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:29 userInfo:0];
    }

    else
    {
      context4 = [(HMRoom *)self context];
      delegateCaller3 = [context4 delegateCaller];
      v31 = [MEMORY[0x1E696ABC0] errorWithDomain:@"HMErrorDomain" code:12 userInfo:0];
    }

    v32 = v31;
    [delegateCaller3 callCompletion:handlerCopy error:v31];

    goto LABEL_18;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
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
  context = [(HMRoom *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMRoom updateName:completionHandler:]", @"completion"];
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __39__HMRoom_updateName_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = v6;
    v25 = v7;
    dispatch_async(queue, block);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
  uuid = [(HMRoom *)self uuid];
  v3 = hm_assistantIdentifierWithSalts(@"RM", uuid, 0);

  return v3;
}

- (void)setApplicationData:(id)data
{
  dataCopy = data;
  os_unfair_lock_lock_with_options();
  applicationData = self->_applicationData;
  self->_applicationData = dataCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMApplicationData)applicationData
{
  os_unfair_lock_lock_with_options();
  v3 = self->_applicationData;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setHome:(id)home
{
  homeCopy = home;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_home, homeCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMHome)home
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_home);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)setUuid:(id)uuid
{
  uuidCopy = uuid;
  os_unfair_lock_lock_with_options();
  uuid = self->_uuid;
  self->_uuid = uuidCopy;

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
  array = [MEMORY[0x1E695DF70] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  home = [(HMRoom *)self home];
  accessories = [home accessories];

  v5 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(accessories);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        uuid = [(HMRoom *)self uuid];
        room = [v9 room];
        uuid2 = [room uuid];
        v13 = [uuid isEqual:uuid2];

        if (v13)
        {
          [array addObject:v9];
        }
      }

      v6 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  v4 = [nameCopy copy];
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

- (void)__configureWithContext:(id)context home:(id)home
{
  contextCopy = context;
  [(HMRoom *)self setHome:home];
  v6 = contextCopy;
  if (contextCopy)
  {
    [(HMRoom *)self setContext:contextCopy];
    v6 = contextCopy;
  }
}

- (HMRoom)initWithName:(id)name
{
  nameCopy = name;
  v11.receiver = self;
  v11.super_class = HMRoom;
  v5 = [(HMRoom *)&v11 init];
  if (v5)
  {
    v6 = [nameCopy copy];
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
  selfCopy = self;
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
    [(HMRoom *)selfCopy setHome:0];
    [(HMRoom *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
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