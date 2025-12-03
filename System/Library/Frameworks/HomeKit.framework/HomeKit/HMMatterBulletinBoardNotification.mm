@interface HMMatterBulletinBoardNotification
+ (id)logCategory;
- (BOOL)mergeFromNewObject:(id)object;
- (HMAccessory)accessory;
- (HMMatterBulletinBoardNotification)initWithCoder:(id)coder;
- (NSArray)attributeDescriptions;
- (id)logIdentifier;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_commitWithCompletionHandler:(id)handler;
- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)commitWithCompletionHandler:(id)handler;
- (void)setAccessory:(id)accessory;
@end

@implementation HMMatterBulletinBoardNotification

- (HMMatterBulletinBoardNotification)initWithCoder:(id)coder
{
  v38 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"accessory"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"serviceMatterEndpointID"];
  v7 = v6;
  if (v5)
  {
    v8 = v6 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543874;
      v33 = v11;
      v34 = 2112;
      v35 = v5;
      v36 = 2112;
      v37 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded accessory: %@, endpointID: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = 0;
  }

  else
  {
    v29 = [coderCopy decodeBoolForKey:@"HM.BulletinBoardNotificationEnabled"];
    v12 = MEMORY[0x1E695DFD8];
    v31[0] = objc_opt_class();
    v31[1] = objc_opt_class();
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:2];
    v14 = [v12 setWithArray:v13];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"HM.BulletinBoardNotificationCondition"];

    home = [v5 home];
    v17 = [HMPredicateUtilities rewritePredicateForClient:v15 home:home];

    uuid = [v5 uuid];
    uUIDString = [uuid UUIDString];
    v30[0] = uUIDString;
    stringValue = [v7 stringValue];
    v30[1] = stringValue;
    v30[2] = @"HM.BulletinBoardNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];

    v22 = MEMORY[0x1E696AFB0];
    uuid2 = [v5 uuid];
    v24 = [v22 hm_deriveUUIDFromBaseUUID:uuid2 identifierSalt:0 withSalts:v21];

    selfCopy = [(HMMatterBulletinBoardNotification *)self initWithEnabled:v29 condition:v17 accessory:v5 endpointID:v7 messageTargetUUID:v24];
    v26 = selfCopy;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v26;
}

- (BOOL)mergeFromNewObject:(id)object
{
  v32 = *MEMORY[0x1E69E9840];
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

  condition = [(HMBulletinBoardNotification *)self condition];
  condition2 = [v6 condition];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      condition3 = [(HMBulletinBoardNotification *)selfCopy condition];
      condition4 = [v6 condition];
      v26 = 138543874;
      v27 = v13;
      v28 = 2112;
      v29 = condition3;
      v30 = 2112;
      v31 = condition4;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Merging due to condition value change from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    condition5 = [v6 condition];
    [(HMBulletinBoardNotification *)selfCopy setCondition:condition5];
  }

  isEnabled = [(HMBulletinBoardNotification *)self isEnabled];
  if (isEnabled != [v6 isEnabled])
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      [(HMBulletinBoardNotification *)selfCopy2 isEnabled];
      v22 = HMFBooleanToString();
      [v6 isEnabled];
      v23 = HMFBooleanToString();
      v26 = 138543874;
      v27 = v21;
      v28 = 2112;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_INFO, "%{public}@Merging due to enabled value change from %@ to %@", &v26, 0x20u);
    }

    objc_autoreleasePoolPop(v18);
    -[HMBulletinBoardNotification setEnabled:](selfCopy2, "setEnabled:", [v6 isEnabled]);
  }

  v24 = *MEMORY[0x1E69E9840];
  return v9 ^ 1;
}

- (NSArray)attributeDescriptions
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11.receiver = self;
  v11.super_class = HMMatterBulletinBoardNotification;
  attributeDescriptions = [(HMBulletinBoardNotification *)&v11 attributeDescriptions];
  v4 = objc_alloc(MEMORY[0x1E69A29C8]);
  endpointID = [(HMMatterBulletinBoardNotification *)self endpointID];
  v6 = [v4 initWithName:@"Endpoint ID" value:endpointID];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v8 = [v7 arrayByAddingObjectsFromArray:attributeDescriptions];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  accessory = [(HMMatterBulletinBoardNotification *)self accessory];
  name = [accessory name];
  endpointID = [(HMMatterBulletinBoardNotification *)self endpointID];
  messageTargetUUID = [(HMMatterBulletinBoardNotification *)self messageTargetUUID];
  v8 = [v3 stringWithFormat:@"%@/%@%@", name, endpointID, messageTargetUUID];

  return v8;
}

- (void)_commitWithCompletionHandler:(id)handler
{
  v55 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v39 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMatterBulletinBoardNotification _commitWithCompletionHandler:]", @"completion"];
    v40 = objc_autoreleasePoolPush();
    selfCopy = self;
    v42 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v43 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v43;
      v53 = 2112;
      v54 = v39;
      _os_log_impl(&dword_19BB39000, v42, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v40);
    v44 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v39 userInfo:0];
    objc_exception_throw(v44);
  }

  v6 = context;
  if (context)
  {
    accessory = [(HMMatterBulletinBoardNotification *)self accessory];
    home = [accessory home];

    if (home)
    {
      v49 = @"HM.BulletinBoardNotificationEnabled";
      v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
      v50 = v9;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      v11 = [v10 mutableCopy];

      condition = [(HMBulletinBoardNotification *)self condition];

      if (condition)
      {
        condition2 = [(HMBulletinBoardNotification *)self condition];
        v14 = [HMPredicateUtilities validatePredicate:condition2];

        if (!v14)
        {
          context2 = [(HMBulletinBoardNotification *)self context];
          delegateCaller = [context2 delegateCaller];
          v28 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          [delegateCaller callCompletion:handlerCopy error:v28];
          goto LABEL_15;
        }

        condition3 = [(HMBulletinBoardNotification *)self condition];
        v16 = [HMPredicateUtilities rewritePredicateForDaemon:condition3];

        if (v16)
        {
          v17 = encodeRootObject(v16);
          [v11 setObject:v17 forKeyedSubscript:@"HM.BulletinBoardNotificationCondition"];
        }
      }

      v18 = objc_alloc(MEMORY[0x1E69A2A10]);
      v19 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMMatterBulletinBoardNotification *)self messageTargetUUID];
      v21 = [v19 initWithTarget:messageTargetUUID];
      context2 = [v18 initWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v21 payload:v11];

      context3 = [(HMBulletinBoardNotification *)self context];
      pendingRequests = [context3 pendingRequests];

      identifier = [context2 identifier];
      v26 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v26 forIdentifier:identifier];

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __66__HMMatterBulletinBoardNotification__commitWithCompletionHandler___block_invoke;
      v45[3] = &unk_1E754E0A8;
      v46 = pendingRequests;
      v47 = identifier;
      v27 = v6;
      v48 = v27;
      v28 = identifier;
      delegateCaller = pendingRequests;
      [context2 setResponseHandler:v45];
      messageDispatcher = [v27 messageDispatcher];
      [messageDispatcher sendMessage:context2];

LABEL_15:
      goto LABEL_16;
    }

    context4 = [(HMBulletinBoardNotification *)self context];
    delegateCaller2 = [context4 delegateCaller];
    v37 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v37];

    home = 0;
  }

  else
  {
    v31 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v33 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v34 = HMFGetLogIdentifier();
      *buf = 138543618;
      v52 = v34;
      v53 = 2080;
      v54 = "[HMMatterBulletinBoardNotification _commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v33, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v31);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
  }

LABEL_16:

  v38 = *MEMORY[0x1E69E9840];
}

void __66__HMMatterBulletinBoardNotification__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = a2;
    v7 = [v3 removeCompletionBlockForIdentifier:v4];
    v6 = [*(a1 + 48) delegateCaller];
    [v6 callCompletion:v7 error:v5];
  }
}

- (void)commitWithCompletionHandler:(id)handler
{
  v26 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMMatterBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v6 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __65__HMMatterBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
    block[3] = &unk_1E754E458;
    block[4] = self;
    v21 = handlerCopy;
    dispatch_async(queue, block);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v11;
      v24 = 2080;
      v25 = "[HMMatterBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification
{
  v28 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [notificationCopy messagePayload];
    v24 = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = messagePayload;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received Matter bulletin board update notification with message %@", &v24, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [notificationCopy BOOLForKey:@"HM.BulletinBoardNotificationEnabled"];
  v11 = [notificationCopy predicateForKey:@"HM.BulletinBoardNotificationCondition"];
  accessory = [(HMMatterBulletinBoardNotification *)selfCopy accessory];
  home = [accessory home];
  v14 = [HMPredicateUtilities rewritePredicateForClient:v11 home:home];

  context = [(HMBulletinBoardNotification *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v18 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  if (v10 != [(HMBulletinBoardNotification *)selfCopy isEnabled])
  {
    [(HMBulletinBoardNotification *)selfCopy setEnabled:v10];
  }

  condition = [(HMBulletinBoardNotification *)selfCopy condition];
  v20 = HMFEqualObjects();

  if ((v20 & 1) == 0)
  {
    [(HMBulletinBoardNotification *)selfCopy setCondition:v14];
  }

  if (v18)
  {
    context2 = [(HMBulletinBoardNotification *)selfCopy context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v18 error:0];
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(HMBulletinBoardNotification *)self context];

  v4 = objc_autoreleasePoolPush();
  selfCopy = self;
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (context)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring Matter bulletinBoard notification", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    context2 = [(HMBulletinBoardNotification *)selfCopy context];
    messageDispatcher = [context2 messageDispatcher];
    [messageDispatcher deregisterReceiver:selfCopy];

    [(HMBulletinBoardNotification *)selfCopy setContext:0];
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter removeObserver:selfCopy];
  }

  else
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v14 = 138543362;
      v15 = v12;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Skipping unconfigure on already unconfigured object", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v17 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    v13 = 138543618;
    v14 = v11;
    v15 = 2112;
    v16 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  [(HMBulletinBoardNotification *)selfCopy setContext:contextCopy];
  [(HMMatterBulletinBoardNotification *)selfCopy setAccessory:accessoryCopy];
  [(HMMatterBulletinBoardNotification *)selfCopy _registerNotificationHandlers];

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_accessory, accessoryCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (HMAccessory)accessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_accessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (void)_registerNotificationHandlers
{
  context = [(HMBulletinBoardNotification *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kBulletinBoardNotificationUpdateNotificationKey" receiver:self selector:sel__handleBulletinBoardNotificationUpdateNotification_];
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t10_23423 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t10_23423, &__block_literal_global_23424);
  }

  v3 = logCategory__hmf_once_v11_23425;

  return v3;
}

uint64_t __48__HMMatterBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v11_23425;
  logCategory__hmf_once_v11_23425 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end