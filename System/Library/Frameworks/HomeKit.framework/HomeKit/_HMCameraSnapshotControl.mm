@interface _HMCameraSnapshotControl
+ (id)logCategory;
- (HMCameraSnapshot)mostRecentSnapshot;
- (_HMCameraSnapshotControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier mostRecentSnapshot:(id)snapshot;
- (_HMCameraSnapshotControlDelegate)delegate;
- (void)__configureWithContext:(id)context;
- (void)_fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler;
- (void)_handleCreateSnapshotWithBulletinContext:(id)context error:(id)error completionHandler:(id)handler;
- (void)_handleMostRecentSnapshotUpdatedMessage:(id)message;
- (void)_handleSnapshotDictionary:(id)dictionary error:(id)error isMostRecent:(BOOL)recent;
- (void)_notifyDelegateOfDidTakeSnapshot:(id)snapshot error:(id)error;
- (void)_notifyDelegateOfMostRecentSnapshotUpdated;
- (void)_takeSnapshot;
- (void)fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler;
- (void)mergeNewSnapshotControl:(id)control;
- (void)setDelegate:(id)delegate;
- (void)setMostRecentSnapshot:(id)snapshot;
- (void)takeSnapshot;
@end

@implementation _HMCameraSnapshotControl

- (void)_handleMostRecentSnapshotUpdatedMessage:(id)message
{
  v16 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [messageCopy messagePayload];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = messagePayload;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received most recent snapshot updated message payload: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  messagePayload2 = [messageCopy messagePayload];
  [(_HMCameraSnapshotControl *)selfCopy _handleMostRecentSnapshot:messagePayload2];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleCreateSnapshotWithBulletinContext:(id)context error:(id)error completionHandler:(id)handler
{
  contextCopy = context;
  errorCopy = error;
  handlerCopy = handler;
  if (errorCopy)
  {
    context = [(_HMCameraControl *)self context];
    delegateCaller = [context delegateCaller];
    hmPublicError = [errorCopy hmPublicError];
    [delegateCaller callCompletion:handlerCopy error:hmPublicError snapshot:0];
  }

  else
  {
    context = [contextCopy hmf_numberForKey:@"kSlotIdentifierKey"];
    delegateCaller = [contextCopy hmf_dateForKey:@"kSnapshotCaptureDate"];
    hmPublicError = [contextCopy hmf_numberForKey:@"kSourceAspectRatioKey"];
    v13 = [HMCameraSnapshot alloc];
    profileUniqueIdentifier = [(_HMCameraControl *)self profileUniqueIdentifier];
    [hmPublicError doubleValue];
    v15 = [(HMCameraSnapshot *)v13 initWithProfileUniqueIdentifier:profileUniqueIdentifier slotIdentifier:context aspectRatio:delegateCaller captureDate:?];

    context2 = [(_HMCameraControl *)self context];
    [(HMCameraSource *)v15 setContext:context2];

    context3 = [(_HMCameraControl *)self context];
    delegateCaller2 = [context3 delegateCaller];
    [delegateCaller2 callCompletion:handlerCopy error:0 snapshot:v15];

    handlerCopy = v15;
  }
}

- (void)_notifyDelegateOfMostRecentSnapshotUpdated
{
  delegate = [(_HMCameraSnapshotControl *)self delegate];
  if ([delegate conformsToProtocol:&unk_1F0F3C560])
  {
    v4 = delegate;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    context = [(_HMCameraControl *)self context];
    delegateCaller = [context delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___HMCameraSnapshotControl__notifyDelegateOfMostRecentSnapshotUpdated__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    selfCopy = self;
    [delegateCaller invokeBlock:v8];
  }
}

- (void)_notifyDelegateOfDidTakeSnapshot:(id)snapshot error:(id)error
{
  snapshotCopy = snapshot;
  errorCopy = error;
  delegate = [(_HMCameraSnapshotControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    context = [(_HMCameraControl *)self context];
    delegateCaller = [context delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67___HMCameraSnapshotControl__notifyDelegateOfDidTakeSnapshot_error___block_invoke;
    v11[3] = &unk_1E754DE30;
    v12 = delegate;
    selfCopy = self;
    v14 = snapshotCopy;
    v15 = errorCopy;
    [delegateCaller invokeBlock:v11];
  }
}

- (void)_handleSnapshotDictionary:(id)dictionary error:(id)error isMostRecent:(BOOL)recent
{
  recentCopy = recent;
  v40 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  errorCopy = error;
  if (errorCopy)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v36 = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = errorCopy;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received error handling snapshot: %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(_HMCameraSnapshotControl *)selfCopy _notifyDelegateOfDidTakeSnapshot:0 error:errorCopy];
  }

  else
  {
    v14 = [dictionaryCopy hmf_numberForKey:@"kSlotIdentifierKey"];
    v15 = [dictionaryCopy hmf_dateForKey:@"kSnapshotCaptureDate"];
    v16 = [dictionaryCopy hmf_numberForKey:@"kSourceAspectRatioKey"];
    v17 = v16;
    if (v14 && v15 && v16)
    {
      if (recentCopy && (-[_HMCameraSnapshotControl mostRecentSnapshot](self, "mostRecentSnapshot"), v18 = objc_claimAutoreleasedReturnValue(), [v18 slotIdentifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v19, v18, v20))
      {
        v21 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v23 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          v24 = HMFGetLogIdentifier();
          v36 = 138543362;
          v37 = v24;
          _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Most recent snapshot is already equal", &v36, 0xCu);
        }

        objc_autoreleasePoolPop(v21);
      }

      else
      {
        v30 = [HMCameraSnapshot alloc];
        profileUniqueIdentifier = [(_HMCameraControl *)self profileUniqueIdentifier];
        [v17 doubleValue];
        v32 = [(HMCameraSnapshot *)v30 initWithProfileUniqueIdentifier:profileUniqueIdentifier slotIdentifier:v14 aspectRatio:v15 captureDate:?];

        context = [(_HMCameraControl *)self context];
        [(HMCameraSource *)v32 setContext:context];

        [(_HMCameraSnapshotControl *)self setMostRecentSnapshot:v32];
        if (recentCopy)
        {
          [(_HMCameraSnapshotControl *)self _notifyDelegateOfMostRecentSnapshotUpdated];
        }

        else
        {
          mostRecentSnapshot = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];
          [(_HMCameraSnapshotControl *)self _notifyDelegateOfDidTakeSnapshot:mostRecentSnapshot error:0];
        }
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = dictionaryCopy;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Snapshot dictionary did not contain required values: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [(_HMCameraSnapshotControl *)selfCopy3 _notifyDelegateOfDidTakeSnapshot:0 error:v29];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler
{
  v53 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  context = [(_HMCameraControl *)self context];
  if (!handlerCopy)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMCameraSnapshotControl _fetchCameraSnapshotForBulletinContext:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    selfCopy = self;
    v39 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v40 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v40;
      v51 = 2112;
      v52 = v36;
      _os_log_impl(&dword_19BB39000, v39, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v37);
    v41 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v36 userInfo:0];
    objc_exception_throw(v41);
  }

  v9 = context;
  if (context)
  {
    v10 = [contextCopy hmf_stringForKey:@"kCameraSessionID"];
    v11 = [contextCopy hmf_stringForKey:@"kSnapshotFilePath"];
    v12 = [contextCopy hmf_dateForKey:@"kSnapshotCaptureDate"];
    v13 = v12;
    if (v10 && v11 && v12)
    {
      v44 = v9;
      v42 = handlerCopy;
      v14 = objc_alloc(MEMORY[0x1E69A2A10]);
      v43 = contextCopy;
      v15 = objc_alloc(MEMORY[0x1E69A2A00]);
      profileUniqueIdentifier = [(_HMCameraControl *)self profileUniqueIdentifier];
      v17 = [v15 initWithTarget:profileUniqueIdentifier];
      v47[0] = @"kCameraSessionID";
      v47[1] = @"kSnapshotFilePath";
      v48[0] = v10;
      v48[1] = v11;
      v47[2] = @"kSnapshotCaptureDate";
      v48[2] = v13;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v19 = v14;
      handlerCopy = v42;
      delegateCaller = [v19 initWithName:@"HMCameraSnapshotCreateSnapshotFromBulletinContextMessage" destination:v17 payload:v18];

      contextCopy = v43;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __85___HMCameraSnapshotControl__fetchCameraSnapshotForBulletinContext_completionHandler___block_invoke;
      v45[3] = &unk_1E754DE00;
      v45[4] = self;
      v46 = v42;
      [delegateCaller setResponseHandler:v45];
      v21 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v24;
        v51 = 2112;
        v52 = v43;
        _os_log_impl(&dword_19BB39000, v23, OS_LOG_TYPE_INFO, "%{public}@Sending create snapshot message for bulletin context: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v21);
      messageDispatcher = [v44 messageDispatcher];
      [messageDispatcher sendMessage:delegateCaller];

      v9 = v44;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v33;
        v51 = 2112;
        v52 = contextCopy;
        _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch camera snapshot for bulletin context: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      delegateCaller = [v9 delegateCaller];
      v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [delegateCaller callCompletion:handlerCopy error:v34 snapshot:0];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543618;
      v50 = v29;
      v51 = 2080;
      v52 = "[_HMCameraSnapshotControl _fetchCameraSnapshotForBulletinContext:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v28, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v26);
    v10 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v10);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_takeSnapshot
{
  v33 = *MEMORY[0x1E69E9840];
  context = [(_HMCameraControl *)self context];
  if (context)
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E69A2A10]);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    profileUniqueIdentifier = [(_HMCameraControl *)self profileUniqueIdentifier];
    v9 = [v7 initWithTarget:profileUniqueIdentifier];
    v27 = @"kCameraSessionID";
    v28 = uUIDString;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v11 = [v6 initWithName:@"HMCameraSnapshotTakeSnapshotMessage" destination:v9 payload:v10];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41___HMCameraSnapshotControl__takeSnapshot__block_invoke;
    v23[3] = &unk_1E754BC90;
    objc_copyWeak(&v25, &location);
    v12 = uUIDString;
    v24 = v12;
    [v11 setResponseHandler:v23];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v16;
      v31 = 2112;
      v32 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_INFO, "%{public}@Sending take snapshot message with session ID: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    messageDispatcher = [context messageDispatcher];
    [messageDispatcher sendMessage:v11];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v30 = v21;
      v31 = 2080;
      v32 = "[_HMCameraSnapshotControl _takeSnapshot]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

  v22 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)context
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = _HMCameraSnapshotControl;
  [(_HMCameraControl *)&v15 __configureWithContext:contextCopy];
  mostRecentSnapshot = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];

  if (mostRecentSnapshot)
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      mostRecentSnapshot2 = [(_HMCameraSnapshotControl *)selfCopy mostRecentSnapshot];
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = mostRecentSnapshot2;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing with most recent snapshot: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    mostRecentSnapshot3 = [(_HMCameraSnapshotControl *)selfCopy mostRecentSnapshot];
    [mostRecentSnapshot3 setContext:contextCopy];
  }

  context = [(_HMCameraControl *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMCameraSnapshotMostRecentSnapshotUpdatedMessage" receiver:self selector:sel__handleMostRecentSnapshotUpdatedMessage_];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)mergeNewSnapshotControl:(id)control
{
  v23 = *MEMORY[0x1E69E9840];
  controlCopy = control;
  mostRecentSnapshot = [controlCopy mostRecentSnapshot];
  mostRecentSnapshot2 = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];
  slotIdentifier = [mostRecentSnapshot2 slotIdentifier];
  slotIdentifier2 = [mostRecentSnapshot slotIdentifier];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = mostRecentSnapshot;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating most recent snapshot to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    context = [(_HMCameraControl *)selfCopy context];
    [mostRecentSnapshot setContext:context];

    [(_HMCameraSnapshotControl *)selfCopy setMostRecentSnapshot:mostRecentSnapshot];
    context2 = [(_HMCameraControl *)selfCopy context];
    queue = [context2 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___HMCameraSnapshotControl_mergeNewSnapshotControl___block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = selfCopy;
    dispatch_async(queue, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchCameraSnapshotForBulletinContext:(id)context completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  handlerCopy = handler;
  context = [(_HMCameraControl *)self context];
  if (!handlerCopy)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMCameraSnapshotControl fetchCameraSnapshotForBulletinContext:completionHandler:]", @"completion"];
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
    block[2] = __84___HMCameraSnapshotControl_fetchCameraSnapshotForBulletinContext_completionHandler___block_invoke;
    block[3] = &unk_1E754E0F8;
    block[4] = self;
    v24 = contextCopy;
    v25 = handlerCopy;
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
      v29 = "[_HMCameraSnapshotControl fetchCameraSnapshotForBulletinContext:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(handlerCopy + 2))(handlerCopy, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)takeSnapshot
{
  v16 = *MEMORY[0x1E69E9840];
  context = [(_HMCameraControl *)self context];
  v4 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40___HMCameraSnapshotControl_takeSnapshot__block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = self;
    dispatch_async(queue, block);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v13 = v9;
      v14 = 2080;
      v15 = "[_HMCameraSnapshotControl takeSnapshot]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setMostRecentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  os_unfair_lock_lock_with_options();
  mostRecentSnapshot = self->_mostRecentSnapshot;
  self->_mostRecentSnapshot = snapshotCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCameraSnapshot)mostRecentSnapshot
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mostRecentSnapshot;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, delegateCopy);

  os_unfair_lock_unlock(&self->super._lock);
}

- (_HMCameraSnapshotControlDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->super._lock);

  return WeakRetained;
}

- (_HMCameraSnapshotControl)initWithCameraProfile:(id)profile profileUniqueIdentifier:(id)identifier mostRecentSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v12.receiver = self;
  v12.super_class = _HMCameraSnapshotControl;
  v9 = [(_HMCameraControl *)&v12 initWithCameraProfile:profile profileUniqueIdentifier:identifier];
  v10 = v9;
  if (snapshotCopy && v9)
  {
    [(_HMCameraSnapshotControl *)v9 _handleMostRecentSnapshot:snapshotCopy];
  }

  return v10;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t21 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t21, &__block_literal_global_6565);
  }

  v3 = logCategory__hmf_once_v22;

  return v3;
}

@end