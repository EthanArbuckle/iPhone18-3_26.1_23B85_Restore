@interface _HMCameraSnapshotControl
+ (id)logCategory;
- (HMCameraSnapshot)mostRecentSnapshot;
- (_HMCameraSnapshotControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 mostRecentSnapshot:(id)a5;
- (_HMCameraSnapshotControlDelegate)delegate;
- (void)__configureWithContext:(id)a3;
- (void)_fetchCameraSnapshotForBulletinContext:(id)a3 completionHandler:(id)a4;
- (void)_handleCreateSnapshotWithBulletinContext:(id)a3 error:(id)a4 completionHandler:(id)a5;
- (void)_handleMostRecentSnapshotUpdatedMessage:(id)a3;
- (void)_handleSnapshotDictionary:(id)a3 error:(id)a4 isMostRecent:(BOOL)a5;
- (void)_notifyDelegateOfDidTakeSnapshot:(id)a3 error:(id)a4;
- (void)_notifyDelegateOfMostRecentSnapshotUpdated;
- (void)_takeSnapshot;
- (void)fetchCameraSnapshotForBulletinContext:(id)a3 completionHandler:(id)a4;
- (void)mergeNewSnapshotControl:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setMostRecentSnapshot:(id)a3;
- (void)takeSnapshot;
@end

@implementation _HMCameraSnapshotControl

- (void)_handleMostRecentSnapshotUpdatedMessage:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 messagePayload];
    v12 = 138543618;
    v13 = v8;
    v14 = 2112;
    v15 = v9;
    _os_log_impl(&dword_19BB39000, v7, OS_LOG_TYPE_INFO, "%{public}@Received most recent snapshot updated message payload: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [v4 messagePayload];
  [(_HMCameraSnapshotControl *)v6 _handleMostRecentSnapshot:v10];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_handleCreateSnapshotWithBulletinContext:(id)a3 error:(id)a4 completionHandler:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(_HMCameraControl *)self context];
    v11 = [v10 delegateCaller];
    v12 = [v8 hmPublicError];
    [v11 callCompletion:v9 error:v12 snapshot:0];
  }

  else
  {
    v10 = [v19 hmf_numberForKey:@"kSlotIdentifierKey"];
    v11 = [v19 hmf_dateForKey:@"kSnapshotCaptureDate"];
    v12 = [v19 hmf_numberForKey:@"kSourceAspectRatioKey"];
    v13 = [HMCameraSnapshot alloc];
    v14 = [(_HMCameraControl *)self profileUniqueIdentifier];
    [v12 doubleValue];
    v15 = [(HMCameraSnapshot *)v13 initWithProfileUniqueIdentifier:v14 slotIdentifier:v10 aspectRatio:v11 captureDate:?];

    v16 = [(_HMCameraControl *)self context];
    [(HMCameraSource *)v15 setContext:v16];

    v17 = [(_HMCameraControl *)self context];
    v18 = [v17 delegateCaller];
    [v18 callCompletion:v9 error:0 snapshot:v15];

    v9 = v15;
  }
}

- (void)_notifyDelegateOfMostRecentSnapshotUpdated
{
  v3 = [(_HMCameraSnapshotControl *)self delegate];
  if ([v3 conformsToProtocol:&unk_1F0F3C560])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (objc_opt_respondsToSelector())
  {
    v6 = [(_HMCameraControl *)self context];
    v7 = [v6 delegateCaller];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __70___HMCameraSnapshotControl__notifyDelegateOfMostRecentSnapshotUpdated__block_invoke;
    v8[3] = &unk_1E754E5C0;
    v9 = v5;
    v10 = self;
    [v7 invokeBlock:v8];
  }
}

- (void)_notifyDelegateOfDidTakeSnapshot:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_HMCameraSnapshotControl *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v9 = [(_HMCameraControl *)self context];
    v10 = [v9 delegateCaller];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __67___HMCameraSnapshotControl__notifyDelegateOfDidTakeSnapshot_error___block_invoke;
    v11[3] = &unk_1E754DE30;
    v12 = v8;
    v13 = self;
    v14 = v6;
    v15 = v7;
    [v10 invokeBlock:v11];
  }
}

- (void)_handleSnapshotDictionary:(id)a3 error:(id)a4 isMostRecent:(BOOL)a5
{
  v5 = a5;
  v40 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v36 = 138543618;
      v37 = v13;
      v38 = 2112;
      v39 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Received error handling snapshot: %@", &v36, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(_HMCameraSnapshotControl *)v11 _notifyDelegateOfDidTakeSnapshot:0 error:v9];
  }

  else
  {
    v14 = [v8 hmf_numberForKey:@"kSlotIdentifierKey"];
    v15 = [v8 hmf_dateForKey:@"kSnapshotCaptureDate"];
    v16 = [v8 hmf_numberForKey:@"kSourceAspectRatioKey"];
    v17 = v16;
    if (v14 && v15 && v16)
    {
      if (v5 && (-[_HMCameraSnapshotControl mostRecentSnapshot](self, "mostRecentSnapshot"), v18 = objc_claimAutoreleasedReturnValue(), [v18 slotIdentifier], v19 = objc_claimAutoreleasedReturnValue(), v20 = HMFEqualObjects(), v19, v18, v20))
      {
        v21 = objc_autoreleasePoolPush();
        v22 = self;
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
        v31 = [(_HMCameraControl *)self profileUniqueIdentifier];
        [v17 doubleValue];
        v32 = [(HMCameraSnapshot *)v30 initWithProfileUniqueIdentifier:v31 slotIdentifier:v14 aspectRatio:v15 captureDate:?];

        v33 = [(_HMCameraControl *)self context];
        [(HMCameraSource *)v32 setContext:v33];

        [(_HMCameraSnapshotControl *)self setMostRecentSnapshot:v32];
        if (v5)
        {
          [(_HMCameraSnapshotControl *)self _notifyDelegateOfMostRecentSnapshotUpdated];
        }

        else
        {
          v34 = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];
          [(_HMCameraSnapshotControl *)self _notifyDelegateOfDidTakeSnapshot:v34 error:0];
        }
      }
    }

    else
    {
      v25 = objc_autoreleasePoolPush();
      v26 = self;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        v36 = 138543618;
        v37 = v28;
        v38 = 2112;
        v39 = v8;
        _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@Snapshot dictionary did not contain required values: %@", &v36, 0x16u);
      }

      objc_autoreleasePoolPop(v25);
      v29 = [MEMORY[0x1E696ABC0] hmErrorWithCode:2];
      [(_HMCameraSnapshotControl *)v26 _notifyDelegateOfDidTakeSnapshot:0 error:v29];
    }
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_fetchCameraSnapshotForBulletinContext:(id)a3 completionHandler:(id)a4
{
  v53 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HMCameraControl *)self context];
  if (!v7)
  {
    v36 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMCameraSnapshotControl _fetchCameraSnapshotForBulletinContext:completionHandler:]", @"completion"];
    v37 = objc_autoreleasePoolPush();
    v38 = self;
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

  v9 = v8;
  if (v8)
  {
    v10 = [v6 hmf_stringForKey:@"kCameraSessionID"];
    v11 = [v6 hmf_stringForKey:@"kSnapshotFilePath"];
    v12 = [v6 hmf_dateForKey:@"kSnapshotCaptureDate"];
    v13 = v12;
    if (v10 && v11 && v12)
    {
      v44 = v9;
      v42 = v7;
      v14 = objc_alloc(MEMORY[0x1E69A2A10]);
      v43 = v6;
      v15 = objc_alloc(MEMORY[0x1E69A2A00]);
      v16 = [(_HMCameraControl *)self profileUniqueIdentifier];
      v17 = [v15 initWithTarget:v16];
      v47[0] = @"kCameraSessionID";
      v47[1] = @"kSnapshotFilePath";
      v48[0] = v10;
      v48[1] = v11;
      v47[2] = @"kSnapshotCaptureDate";
      v48[2] = v13;
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:3];
      v19 = v14;
      v7 = v42;
      v20 = [v19 initWithName:@"HMCameraSnapshotCreateSnapshotFromBulletinContextMessage" destination:v17 payload:v18];

      v6 = v43;
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __85___HMCameraSnapshotControl__fetchCameraSnapshotForBulletinContext_completionHandler___block_invoke;
      v45[3] = &unk_1E754DE00;
      v45[4] = self;
      v46 = v42;
      [v20 setResponseHandler:v45];
      v21 = objc_autoreleasePoolPush();
      v22 = self;
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
      v25 = [v44 messageDispatcher];
      [v25 sendMessage:v20];

      v9 = v44;
    }

    else
    {
      v30 = objc_autoreleasePoolPush();
      v31 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v50 = v33;
        v51 = 2112;
        v52 = v6;
        _os_log_impl(&dword_19BB39000, v32, OS_LOG_TYPE_ERROR, "%{public}@Cannot fetch camera snapshot for bulletin context: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v30);
      v20 = [v9 delegateCaller];
      v34 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
      [v20 callCompletion:v7 error:v34 snapshot:0];
    }
  }

  else
  {
    v26 = objc_autoreleasePoolPush();
    v27 = self;
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
    (*(v7 + 2))(v7, 0, v10);
  }

  v35 = *MEMORY[0x1E69E9840];
}

- (void)_takeSnapshot
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(_HMCameraControl *)self context];
  if (v3)
  {
    v4 = [MEMORY[0x1E696AFB0] UUID];
    v5 = [v4 UUIDString];

    objc_initWeak(&location, self);
    v6 = objc_alloc(MEMORY[0x1E69A2A10]);
    v7 = objc_alloc(MEMORY[0x1E69A2A00]);
    v8 = [(_HMCameraControl *)self profileUniqueIdentifier];
    v9 = [v7 initWithTarget:v8];
    v27 = @"kCameraSessionID";
    v28 = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v11 = [v6 initWithName:@"HMCameraSnapshotTakeSnapshotMessage" destination:v9 payload:v10];

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __41___HMCameraSnapshotControl__takeSnapshot__block_invoke;
    v23[3] = &unk_1E754BC90;
    objc_copyWeak(&v25, &location);
    v12 = v5;
    v24 = v12;
    [v11 setResponseHandler:v23];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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
    v17 = [v3 messageDispatcher];
    [v17 sendMessage:v11];

    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    v19 = self;
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

- (void)__configureWithContext:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = _HMCameraSnapshotControl;
  [(_HMCameraControl *)&v15 __configureWithContext:v4];
  v5 = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = [(_HMCameraSnapshotControl *)v7 mostRecentSnapshot];
      *buf = 138543618;
      v17 = v9;
      v18 = 2112;
      v19 = v10;
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_INFO, "%{public}@Initializing with most recent snapshot: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v11 = [(_HMCameraSnapshotControl *)v7 mostRecentSnapshot];
    [v11 setContext:v4];
  }

  v12 = [(_HMCameraControl *)self context];
  v13 = [v12 messageDispatcher];
  [v13 registerForMessage:@"HMCameraSnapshotMostRecentSnapshotUpdatedMessage" receiver:self selector:sel__handleMostRecentSnapshotUpdatedMessage_];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)mergeNewSnapshotControl:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 mostRecentSnapshot];
  v6 = [(_HMCameraSnapshotControl *)self mostRecentSnapshot];
  v7 = [v6 slotIdentifier];
  v8 = [v5 slotIdentifier];
  v9 = HMFEqualObjects();

  if ((v9 & 1) == 0)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v13;
      v21 = 2112;
      v22 = v5;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Updating most recent snapshot to %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [(_HMCameraControl *)v11 context];
    [v5 setContext:v14];

    [(_HMCameraSnapshotControl *)v11 setMostRecentSnapshot:v5];
    v15 = [(_HMCameraControl *)v11 context];
    v16 = [v15 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __52___HMCameraSnapshotControl_mergeNewSnapshotControl___block_invoke;
    block[3] = &unk_1E754E2A8;
    block[4] = v11;
    dispatch_async(v16, block);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)fetchCameraSnapshotForBulletinContext:(id)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(_HMCameraControl *)self context];
  if (!v7)
  {
    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMCameraSnapshotControl fetchCameraSnapshotForBulletinContext:completionHandler:]", @"completion"];
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
    block[2] = __84___HMCameraSnapshotControl_fetchCameraSnapshotForBulletinContext_completionHandler___block_invoke;
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
      v29 = "[_HMCameraSnapshotControl fetchCameraSnapshotForBulletinContext:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v13, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v15 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v7 + 2))(v7, 0, v15);
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (void)takeSnapshot
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [(_HMCameraControl *)self context];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __40___HMCameraSnapshotControl_takeSnapshot__block_invoke;
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
      v15 = "[_HMCameraSnapshotControl takeSnapshot]";
      _os_log_impl(&dword_19BB39000, v8, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setMostRecentSnapshot:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  mostRecentSnapshot = self->_mostRecentSnapshot;
  self->_mostRecentSnapshot = v4;

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMCameraSnapshot)mostRecentSnapshot
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mostRecentSnapshot;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_delegate, v4);

  os_unfair_lock_unlock(&self->super._lock);
}

- (_HMCameraSnapshotControlDelegate)delegate
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  os_unfair_lock_unlock(&self->super._lock);

  return WeakRetained;
}

- (_HMCameraSnapshotControl)initWithCameraProfile:(id)a3 profileUniqueIdentifier:(id)a4 mostRecentSnapshot:(id)a5
{
  v8 = a5;
  v12.receiver = self;
  v12.super_class = _HMCameraSnapshotControl;
  v9 = [(_HMCameraControl *)&v12 initWithCameraProfile:a3 profileUniqueIdentifier:a4];
  v10 = v9;
  if (v8 && v9)
  {
    [(_HMCameraSnapshotControl *)v9 _handleMostRecentSnapshot:v8];
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