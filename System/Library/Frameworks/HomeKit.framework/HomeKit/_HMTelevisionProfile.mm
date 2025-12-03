@interface _HMTelevisionProfile
- (BOOL)isMediaSourceDisplayOrderModifiable;
- (NSArray)mediaSourceDisplayOrder;
- (_HMTelevisionProfile)initWithTelevisionService:(id)service linkedServices:(id)services;
- (_HMTelevisionProfileDelegate)delegate;
- (id)messageDestination;
- (id)messageTargetUUID;
- (void)_handleSourceDisplayOrderUpdated:(id)updated;
- (void)_notifyDelegateOfUpdatedSourceDisplayOrder:(id)order;
- (void)_registerNotificationHandlers;
- (void)setMediaSourceDisplayOrder:(id)order;
- (void)updateMediaSourceDisplayOrder:(id)order completionHandler:(id)handler;
@end

@implementation _HMTelevisionProfile

- (_HMTelevisionProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSourceDisplayOrderUpdated:(id)updated
{
  updatedCopy = updated;
  context = [(_HMAccessoryProfile *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v7 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v8 = [updatedCopy arrayForKey:@"source-display-order"];

  mediaSourceDisplayOrder = [(_HMTelevisionProfile *)self mediaSourceDisplayOrder];
  [(_HMTelevisionProfile *)self setMediaSourceDisplayOrder:v8];
  if (v7)
  {
    context2 = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context2 delegateCaller];
    [delegateCaller callCompletion:v7 error:0];
  }

  else if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMTelevisionProfile *)self _notifyDelegateOfUpdatedSourceDisplayOrder:v8];
  }
}

- (void)_notifyDelegateOfUpdatedSourceDisplayOrder:(id)order
{
  delegate = [(_HMTelevisionProfile *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_HMTelevisionProfile *)self delegate];
    context = [(_HMAccessoryProfile *)self context];
    delegateCaller = [context delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___HMTelevisionProfile__notifyDelegateOfUpdatedSourceDisplayOrder___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = delegate2;
    selfCopy = self;
    v9 = delegate2;
    [delegateCaller invokeBlock:v10];
  }
}

- (void)updateMediaSourceDisplayOrder:(id)order completionHandler:(id)handler
{
  v36 = *MEMORY[0x1E69E9840];
  orderCopy = order;
  handlerCopy = handler;
  context = [(_HMAccessoryProfile *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTelevisionProfile updateMediaSourceDisplayOrder:completionHandler:]", @"completionHandler"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v26;
      v34 = 2112;
      v35 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = context;
  if (!context)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v14;
      v34 = 2080;
      v35 = "[_HMTelevisionProfile updateMediaSourceDisplayOrder:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 12;
    goto LABEL_11;
  }

  if (![orderCopy count])
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v33 = v19;
      _os_log_impl(&dword_19BB39000, v18, OS_LOG_TYPE_ERROR, "%{public}@Zero entries in mediaSourceDisplayOrder", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v15 = MEMORY[0x1E696ABC0];
    v16 = 3;
LABEL_11:
    v20 = [v15 hmErrorWithCode:v16];
    handlerCopy[2](handlerCopy, v20);

    goto LABEL_12;
  }

  queue = [v9 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___HMTelevisionProfile_updateMediaSourceDisplayOrder_completionHandler___block_invoke;
  block[3] = &unk_1E754D208;
  block[4] = self;
  v31 = handlerCopy;
  v29 = orderCopy;
  v30 = v9;
  dispatch_async(queue, block);

LABEL_12:
  v21 = *MEMORY[0x1E69E9840];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  messageTargetUUID = [(_HMTelevisionProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (id)messageTargetUUID
{
  accessory = [(_HMAccessoryProfile *)self accessory];
  uuid = [accessory uuid];

  return uuid;
}

- (BOOL)isMediaSourceDisplayOrderModifiable
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_mediaSourceDisplayOrderModifiable + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setMediaSourceDisplayOrder:(id)order
{
  orderCopy = order;
  os_unfair_lock_lock_with_options();
  mediaSourceDisplayOrder = self->_mediaSourceDisplayOrder;
  self->_mediaSourceDisplayOrder = orderCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSArray)mediaSourceDisplayOrder
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSArray *)self->_mediaSourceDisplayOrder copy];
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAccessoryProfile *)self context];
  messageDispatcher = [context messageDispatcher];

  [messageDispatcher registerForMessage:@"HMTP.sdoUpdated" receiver:self selector:sel__handleSourceDisplayOrderUpdated_];
}

- (_HMTelevisionProfile)initWithTelevisionService:(id)service linkedServices:(id)services
{
  serviceCopy = service;
  v7 = MEMORY[0x1E696AFB0];
  servicesCopy = services;
  uniqueIdentifier = [serviceCopy uniqueIdentifier];
  v10 = [v7 hm_deriveUUIDFromBaseUUID:uniqueIdentifier];

  v11 = [servicesCopy arrayByAddingObject:serviceCopy];

  v16.receiver = self;
  v16.super_class = _HMTelevisionProfile;
  v12 = [(_HMAccessoryProfile *)&v16 initWithUUID:v10 services:v11];
  if (v12)
  {
    mediaSourceDisplayOrder = [serviceCopy mediaSourceDisplayOrder];
    mediaSourceDisplayOrder = v12->_mediaSourceDisplayOrder;
    v12->_mediaSourceDisplayOrder = mediaSourceDisplayOrder;

    *(&v12->_mediaSourceDisplayOrderModifiable + 4) = [serviceCopy mediaSourceDisplayOrderModifiable];
  }

  return v12;
}

@end