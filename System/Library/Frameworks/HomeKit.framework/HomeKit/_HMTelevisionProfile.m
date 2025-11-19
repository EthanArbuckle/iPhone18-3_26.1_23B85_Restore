@interface _HMTelevisionProfile
- (BOOL)isMediaSourceDisplayOrderModifiable;
- (NSArray)mediaSourceDisplayOrder;
- (_HMTelevisionProfile)initWithTelevisionService:(id)a3 linkedServices:(id)a4;
- (_HMTelevisionProfileDelegate)delegate;
- (id)messageDestination;
- (id)messageTargetUUID;
- (void)_handleSourceDisplayOrderUpdated:(id)a3;
- (void)_notifyDelegateOfUpdatedSourceDisplayOrder:(id)a3;
- (void)_registerNotificationHandlers;
- (void)setMediaSourceDisplayOrder:(id)a3;
- (void)updateMediaSourceDisplayOrder:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMTelevisionProfile

- (_HMTelevisionProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSourceDisplayOrderUpdated:(id)a3
{
  v4 = a3;
  v5 = [(_HMAccessoryProfile *)self context];
  v12 = [v5 pendingRequests];

  v6 = [v4 identifier];
  v7 = [v12 removeCompletionBlockForIdentifier:v6];

  v8 = [v4 arrayForKey:@"source-display-order"];

  v9 = [(_HMTelevisionProfile *)self mediaSourceDisplayOrder];
  [(_HMTelevisionProfile *)self setMediaSourceDisplayOrder:v8];
  if (v7)
  {
    v10 = [(_HMAccessoryProfile *)self context];
    v11 = [v10 delegateCaller];
    [v11 callCompletion:v7 error:0];
  }

  else if ((HMFEqualObjects() & 1) == 0)
  {
    [(_HMTelevisionProfile *)self _notifyDelegateOfUpdatedSourceDisplayOrder:v8];
  }
}

- (void)_notifyDelegateOfUpdatedSourceDisplayOrder:(id)a3
{
  v4 = [(_HMTelevisionProfile *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_HMTelevisionProfile *)self delegate];
    v7 = [(_HMAccessoryProfile *)self context];
    v8 = [v7 delegateCaller];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___HMTelevisionProfile__notifyDelegateOfUpdatedSourceDisplayOrder___block_invoke;
    v10[3] = &unk_1E754E5C0;
    v11 = v6;
    v12 = self;
    v9 = v6;
    [v8 invokeBlock:v10];
  }
}

- (void)updateMediaSourceDisplayOrder:(id)a3 completionHandler:(id)a4
{
  v36 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HMAccessoryProfile *)self context];
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTelevisionProfile updateMediaSourceDisplayOrder:completionHandler:]", @"completionHandler"];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
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

  if (![v6 count])
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
    v7[2](v7, v20);

    goto LABEL_12;
  }

  v10 = [v9 queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __72___HMTelevisionProfile_updateMediaSourceDisplayOrder_completionHandler___block_invoke;
  block[3] = &unk_1E754D208;
  block[4] = self;
  v31 = v7;
  v29 = v6;
  v30 = v9;
  dispatch_async(v10, block);

LABEL_12:
  v21 = *MEMORY[0x1E69E9840];
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMTelevisionProfile *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (id)messageTargetUUID
{
  v2 = [(_HMAccessoryProfile *)self accessory];
  v3 = [v2 uuid];

  return v3;
}

- (BOOL)isMediaSourceDisplayOrderModifiable
{
  os_unfair_lock_lock_with_options();
  v3 = *(&self->_mediaSourceDisplayOrderModifiable + 4);
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)setMediaSourceDisplayOrder:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  mediaSourceDisplayOrder = self->_mediaSourceDisplayOrder;
  self->_mediaSourceDisplayOrder = v4;

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
  v3 = [(_HMAccessoryProfile *)self context];
  v4 = [v3 messageDispatcher];

  [v4 registerForMessage:@"HMTP.sdoUpdated" receiver:self selector:sel__handleSourceDisplayOrderUpdated_];
}

- (_HMTelevisionProfile)initWithTelevisionService:(id)a3 linkedServices:(id)a4
{
  v6 = a3;
  v7 = MEMORY[0x1E696AFB0];
  v8 = a4;
  v9 = [v6 uniqueIdentifier];
  v10 = [v7 hm_deriveUUIDFromBaseUUID:v9];

  v11 = [v8 arrayByAddingObject:v6];

  v16.receiver = self;
  v16.super_class = _HMTelevisionProfile;
  v12 = [(_HMAccessoryProfile *)&v16 initWithUUID:v10 services:v11];
  if (v12)
  {
    v13 = [v6 mediaSourceDisplayOrder];
    mediaSourceDisplayOrder = v12->_mediaSourceDisplayOrder;
    v12->_mediaSourceDisplayOrder = v13;

    *(&v12->_mediaSourceDisplayOrderModifiable + 4) = [v6 mediaSourceDisplayOrderModifiable];
  }

  return v12;
}

@end