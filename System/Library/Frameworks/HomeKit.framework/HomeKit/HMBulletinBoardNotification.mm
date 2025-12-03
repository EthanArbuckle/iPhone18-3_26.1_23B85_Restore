@interface HMBulletinBoardNotification
+ (id)logCategory;
- (BOOL)isEnabled;
- (BOOL)mergeFromNewObject:(id)object;
- (HMBulletinBoardNotification)initWithCoder:(id)coder;
- (HMBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition service:(id)service messageTargetUUID:(id)d;
- (HMService)service;
- (NSPredicate)condition;
- (NSUUID)uniqueIdentifier;
- (id)attributeDescriptions;
- (id)logIdentifier;
- (void)__configureWithContext:(id)context;
- (void)_callBulletinBoardNotificationUpdatedDelegate;
- (void)_commitWithCompletionHandler:(id)handler;
- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)commitWithCompletionHandler:(id)handler;
- (void)setCondition:(id)condition;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation HMBulletinBoardNotification

- (HMService)service
{
  WeakRetained = objc_loadWeakRetained(&self->_service);

  return WeakRetained;
}

- (HMBulletinBoardNotification)initWithCoder:(id)coder
{
  v37 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"service"];
  accessory = [v5 accessory];
  v7 = accessory;
  if (v5)
  {
    v8 = accessory == 0;
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
      v32 = v11;
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Could not initialize from decoded service: %@, accessory: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
    v26 = 0;
  }

  else
  {
    v12 = [coderCopy decodeBoolForKey:@"HM.BulletinBoardNotificationEnabled"];
    v13 = MEMORY[0x1E695DFD8];
    v30[0] = objc_opt_class();
    v30[1] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"HM.BulletinBoardNotificationCondition"];

    home = [v7 home];
    v18 = [HMPredicateUtilities rewritePredicateForClient:v16 home:home];

    instanceID = [v5 instanceID];
    stringValue = [instanceID stringValue];
    v29[0] = stringValue;
    v29[1] = @"HM.BulletinBoardNotification";
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:2];

    v22 = MEMORY[0x1E696AFB0];
    uuid = [v7 uuid];
    v24 = [v22 hm_deriveUUIDFromBaseUUID:uuid identifierSalt:0 withSalts:v21];

    selfCopy = [(HMBulletinBoardNotification *)self initWithEnabled:v12 condition:v18 service:v5 messageTargetUUID:v24];
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

- (id)attributeDescriptions
{
  v12[2] = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E69A29C8]);
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
  v5 = [v3 initWithName:@"Enabled" value:v4];
  v12[0] = v5;
  v6 = objc_alloc(MEMORY[0x1E69A29C8]);
  uniqueIdentifier = [(HMBulletinBoardNotification *)self uniqueIdentifier];
  v8 = [v6 initWithName:@"Unique ID" value:uniqueIdentifier];
  v12[1] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:2];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (id)logIdentifier
{
  v3 = MEMORY[0x1E696AEC0];
  service = [(HMBulletinBoardNotification *)self service];
  name = [service name];
  messageTargetUUID = [(HMBulletinBoardNotification *)self messageTargetUUID];
  v7 = [v3 stringWithFormat:@"%@/%@", name, messageTargetUUID];

  return v7;
}

- (void)_commitWithCompletionHandler:(id)handler
{
  v56 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMBulletinBoardNotification *)self context];
  if (!handlerCopy)
  {
    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification _commitWithCompletionHandler:]", @"completion"];
    v41 = objc_autoreleasePoolPush();
    selfCopy = self;
    v43 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v44;
      v54 = 2112;
      v55 = v40;
      _os_log_impl(&dword_19BB39000, v43, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v41);
    v45 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v40 userInfo:0];
    objc_exception_throw(v45);
  }

  v6 = context;
  if (context)
  {
    service = [(HMBulletinBoardNotification *)self service];
    accessory = [service accessory];
    home = [accessory home];

    if (home)
    {
      v50 = @"HM.BulletinBoardNotificationEnabled";
      v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[HMBulletinBoardNotification isEnabled](self, "isEnabled")}];
      v51 = v10;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
      v12 = [v11 mutableCopy];

      condition = [(HMBulletinBoardNotification *)self condition];

      if (condition)
      {
        condition2 = [(HMBulletinBoardNotification *)self condition];
        v15 = [HMPredicateUtilities validatePredicate:condition2];

        if (!v15)
        {
          context2 = [(HMBulletinBoardNotification *)self context];
          delegateCaller = [context2 delegateCaller];
          v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
          [delegateCaller callCompletion:handlerCopy error:v29];
          goto LABEL_15;
        }

        buf[0] = 0;
        condition3 = [(HMBulletinBoardNotification *)self condition];
        v17 = [HMPredicateUtilities rewritePredicateForDaemon:condition3 characteristicIsInvalid:buf];

        if (v17)
        {
          v18 = encodeRootObject(v17);
          [v12 setObject:v18 forKeyedSubscript:@"HM.BulletinBoardNotificationCondition"];
        }
      }

      v19 = objc_alloc(MEMORY[0x1E69A2A10]);
      v20 = objc_alloc(MEMORY[0x1E69A2A00]);
      messageTargetUUID = [(HMBulletinBoardNotification *)self messageTargetUUID];
      v22 = [v20 initWithTarget:messageTargetUUID];
      context2 = [v19 initWithName:@"kBulletinBoardNotificationCommitRequestKey" destination:v22 payload:v12];

      context3 = [(HMBulletinBoardNotification *)self context];
      pendingRequests = [context3 pendingRequests];

      identifier = [context2 identifier];
      v27 = _Block_copy(handlerCopy);
      [pendingRequests addCompletionBlock:v27 forIdentifier:identifier];

      v46[0] = MEMORY[0x1E69E9820];
      v46[1] = 3221225472;
      v46[2] = __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke;
      v46[3] = &unk_1E754E0A8;
      v47 = pendingRequests;
      v48 = identifier;
      v28 = v6;
      v49 = v28;
      v29 = identifier;
      delegateCaller = pendingRequests;
      [context2 setResponseHandler:v46];
      messageDispatcher = [v28 messageDispatcher];
      [messageDispatcher sendMessage:context2];

LABEL_15:
      goto LABEL_16;
    }

    context4 = [(HMBulletinBoardNotification *)self context];
    delegateCaller2 = [context4 delegateCaller];
    v38 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    [delegateCaller2 callCompletion:handlerCopy error:v38];

    home = 0;
  }

  else
  {
    v32 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v34 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v35 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v35;
      v54 = 2080;
      v55 = "[HMBulletinBoardNotification _commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v34, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v32);
    home = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, home);
  }

LABEL_16:

  v39 = *MEMORY[0x1E69E9840];
}

void __60__HMBulletinBoardNotification__commitWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
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
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMBulletinBoardNotification commitWithCompletionHandler:]", @"completion"];
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
    block[2] = __59__HMBulletinBoardNotification_commitWithCompletionHandler___block_invoke;
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
      v25 = "[HMBulletinBoardNotification commitWithCompletionHandler:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)_callBulletinBoardNotificationUpdatedDelegate
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Calling service notification delegate", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  service = [(HMBulletinBoardNotification *)selfCopy service];
  accessory = [service accessory];
  delegate = [accessory delegate];
  if ([delegate conformsToProtocol:&unk_1F0F63E80])
  {
    v10 = delegate;
    if (objc_opt_respondsToSelector())
    {
      context = [(HMBulletinBoardNotification *)selfCopy context];
      delegateCaller = [context delegateCaller];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __76__HMBulletinBoardNotification__callBulletinBoardNotificationUpdatedDelegate__block_invoke;
      v14[3] = &unk_1E754E5E8;
      v15 = v10;
      v16 = accessory;
      v17 = service;
      [delegateCaller invokeBlock:v14];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setCondition:(id)condition
{
  conditionCopy = condition;
  os_unfair_lock_lock_with_options();
  condition = self->_condition;
  self->_condition = conditionCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSPredicate)condition
{
  os_unfair_lock_lock_with_options();
  v3 = self->_condition;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  os_unfair_lock_lock_with_options();
  self->_enabled = enabled;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isEnabled
{
  os_unfair_lock_lock_with_options();
  enabled = self->_enabled;
  os_unfair_lock_unlock(&self->_lock);
  return enabled;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = [MEMORY[0x1E696AFB0] hm_deriveUUIDFromBaseUUID:self->_messageTargetUUID];
    v5 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v4;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v6 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v6;
}

- (void)_handleBulletinBoardNotificationUpdateNotification:(id)notification
{
  v30 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [notificationCopy messagePayload];
    v26 = 138543618;
    v27 = v8;
    v28 = 2112;
    v29 = messagePayload;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Received bulletin board update notification with message %@", &v26, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [notificationCopy BOOLForKey:@"HM.BulletinBoardNotificationEnabled"];
  v11 = [notificationCopy predicateForKey:@"HM.BulletinBoardNotificationCondition"];
  service = [(HMBulletinBoardNotification *)selfCopy service];
  accessory = [service accessory];
  home = [accessory home];
  v15 = [HMPredicateUtilities rewritePredicateForClient:v11 home:home];

  context = [(HMBulletinBoardNotification *)selfCopy context];
  pendingRequests = [context pendingRequests];

  identifier = [notificationCopy identifier];
  v19 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v20 = v10 ^ [(HMBulletinBoardNotification *)selfCopy isEnabled];
  if (v20 == 1)
  {
    [(HMBulletinBoardNotification *)selfCopy setEnabled:v10];
  }

  condition = [(HMBulletinBoardNotification *)selfCopy condition];
  v22 = HMFEqualObjects();

  if (v22)
  {
    if (!v19)
    {
      if (!v20)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  else
  {
    [(HMBulletinBoardNotification *)selfCopy setCondition:v15];
    if (!v19)
    {
LABEL_11:
      [(HMBulletinBoardNotification *)selfCopy _callBulletinBoardNotificationUpdatedDelegate];
      goto LABEL_12;
    }
  }

  context2 = [(HMBulletinBoardNotification *)selfCopy context];
  delegateCaller = [context2 delegateCaller];
  [delegateCaller callCompletion:v19 error:0];

LABEL_12:
  v25 = *MEMORY[0x1E69E9840];
}

- (void)_unconfigure
{
  v16 = *MEMORY[0x1E69E9840];
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
      v14 = 138543362;
      v15 = v8;
      _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring bulletinBoard notification", &v14, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    context = [(HMBulletinBoardNotification *)selfCopy context];
    messageDispatcher = [context messageDispatcher];
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

- (void)__configureWithContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543618;
    v11 = v8;
    v12 = 2112;
    v13 = contextCopy;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", &v10, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  [(HMBulletinBoardNotification *)selfCopy setContext:contextCopy];
  [(HMBulletinBoardNotification *)selfCopy _registerNotificationHandlers];

  v9 = *MEMORY[0x1E69E9840];
}

- (void)_registerNotificationHandlers
{
  context = [(HMBulletinBoardNotification *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"kBulletinBoardNotificationUpdateNotificationKey" receiver:self selector:sel__handleBulletinBoardNotificationUpdateNotification_];
}

- (HMBulletinBoardNotification)initWithEnabled:(BOOL)enabled condition:(id)condition service:(id)service messageTargetUUID:(id)d
{
  conditionCopy = condition;
  serviceCopy = service;
  dCopy = d;
  v17.receiver = self;
  v17.super_class = HMBulletinBoardNotification;
  v14 = [(HMBulletinBoardNotification *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_enabled = enabled;
    objc_storeStrong(&v14->_condition, condition);
    objc_storeWeak(&v15->_service, serviceCopy);
    objc_storeStrong(&v15->_messageTargetUUID, d);
  }

  return v15;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t14 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t14, &__block_literal_global_63213);
  }

  v3 = logCategory__hmf_once_v15;

  return v3;
}

uint64_t __42__HMBulletinBoardNotification_logCategory__block_invoke()
{
  v0 = *MEMORY[0x1E69A2980];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v15;
  logCategory__hmf_once_v15 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

@end