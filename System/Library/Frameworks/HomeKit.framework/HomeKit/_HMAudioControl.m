@interface _HMAudioControl
- (BOOL)isMuted;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMMediaSession)mediaSession;
- (NSUUID)messageTargetUUID;
- (NSUUID)uniqueIdentifier;
- (_HMAudioControl)initWithMediaSession:(id)a3;
- (_HMAudioControlDelegate)delegate;
- (float)volume;
- (id)messageDestination;
- (void)__configureWithContext:(id)a3;
- (void)_handleAudioControlUpdated:(id)a3;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)setMuted:(BOOL)a3;
- (void)setVolume:(float)a3;
- (void)updateMuted:(BOOL)a3 completionHandler:(id)a4;
- (void)updateVolume:(float)a3 completionHandler:(id)a4;
@end

@implementation _HMAudioControl

- (_HMAudioControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (HMMediaSession)mediaSession
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaSession);

  return WeakRetained;
}

- (void)_handleAudioControlUpdated:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_HMAudioControl *)self context];
  v6 = [v5 pendingRequests];

  v7 = [v4 identifier];
  v8 = [v6 removeCompletionBlockForIdentifier:v7];

  v9 = objc_autoreleasePoolPush();
  v10 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = _Block_copy(v8);
    *buf = 138543874;
    v43 = v12;
    v44 = 2112;
    v45 = v4;
    v46 = 2112;
    v47 = v13;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that audio controls got updated : %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  v14 = [(_HMAudioControl *)v10 delegate];
  v15 = [v4 numberForKey:@"volume"];
  if (v15)
  {
    [(_HMAudioControl *)v10 volume];
    v17 = v16;
    [v15 floatValue];
    v19 = v18;
    [(_HMAudioControl *)v10 setVolume:?];
    if (!v8 && v17 != v19 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v20 = [(_HMAudioControl *)v10 delegate];
      v21 = [(_HMAudioControl *)v10 context];
      v22 = [v21 delegateCaller];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __46___HMAudioControl__handleAudioControlUpdated___block_invoke;
      v38[3] = &unk_1E7547B40;
      v39 = v20;
      v40 = v10;
      v41 = v19;
      v23 = v20;
      [v22 invokeBlock:v38];
    }
  }

  v24 = [v4 numberForKey:@"muted"];
  v25 = v24;
  if (v24 && (v26 = [v24 BOOLValue], v27 = -[_HMAudioControl isMuted](v10, "isMuted"), -[_HMAudioControl setMuted:](v10, "setMuted:", v26), !v8) && v26 != v27)
  {
    if (objc_opt_respondsToSelector())
    {
      v28 = [(_HMAudioControl *)v10 delegate];
      v33 = [(_HMAudioControl *)v10 context];
      v29 = [v33 delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __46___HMAudioControl__handleAudioControlUpdated___block_invoke_2;
      v34[3] = &unk_1E754DC70;
      v35 = v28;
      v36 = v10;
      v37 = v26;
      v30 = v28;
      [v29 invokeBlock:v34];

      v31 = v35;
LABEL_15:
    }
  }

  else if (v8)
  {
    v30 = [(_HMAudioControl *)v10 context];
    v31 = [v30 delegateCaller];
    [v31 callCompletion:v8 error:0];
    goto LABEL_15;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)updateMuted:(BOOL)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_HMAudioControl *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAudioControl updateMuted:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49___HMAudioControl_updateMuted_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    v25 = a3;
    block[4] = self;
    v24 = v6;
    v23 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v13;
      v28 = 2080;
      v29 = "[_HMAudioControl updateMuted:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateVolume:(float)a3 completionHandler:(id)a4
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(_HMAudioControl *)self context];
  if (!v6)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAudioControl updateVolume:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v20;
      v28 = 2112;
      v29 = v16;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v16 userInfo:0];
    objc_exception_throw(v21);
  }

  v8 = v7;
  if (v7)
  {
    v9 = [v7 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___HMAudioControl_updateVolume_completionHandler___block_invoke;
    block[3] = &unk_1E7547950;
    v25 = a3;
    block[4] = self;
    v24 = v6;
    v23 = v8;
    dispatch_async(v9, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v27 = v13;
      v28 = 2080;
      v29 = "[_HMAudioControl updateVolume:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    (*(v6 + 2))(v6, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)a3
{
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
    v7 = [(_HMAudioControl *)self delegate];
    [v6 volume];
    v9 = v8;
    [(_HMAudioControl *)self volume];
    v11 = *&v10 != v9;
    if (*&v10 != v9)
    {
      *&v10 = v9;
      [(_HMAudioControl *)self setVolume:v10];
      if (objc_opt_respondsToSelector())
      {
        v12 = [(_HMAudioControl *)self context];
        v13 = [v12 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E7547B40;
        block[4] = self;
        v23 = v9;
        v22 = v7;
        dispatch_async(v13, block);
      }
    }

    v14 = [v6 isMuted];
    if (v14 != [(_HMAudioControl *)self isMuted])
    {
      [(_HMAudioControl *)self setMuted:v14];
      if (objc_opt_respondsToSelector())
      {
        v15 = [(_HMAudioControl *)self context];
        v16 = [v15 queue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_27;
        v18[3] = &unk_1E754DC70;
        v18[4] = self;
        v19 = v7;
        v20 = v14;
        dispatch_async(v16, v18);
      }

      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)messageDestination
{
  v3 = objc_alloc(MEMORY[0x1E69A2A00]);
  v4 = [(_HMAudioControl *)self messageTargetUUID];
  v5 = [v3 initWithTarget:v4];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  v2 = [(_HMAudioControl *)self mediaSession];
  v3 = [v2 messageTargetUUID];

  return v3;
}

- (void)setMuted:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_muted = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isMuted
{
  os_unfair_lock_lock_with_options();
  muted = self->_muted;
  os_unfair_lock_unlock(&self->_lock);
  return muted;
}

- (void)setVolume:(float)a3
{
  os_unfair_lock_lock_with_options();
  self->_volume = a3;

  os_unfair_lock_unlock(&self->_lock);
}

- (float)volume
{
  os_unfair_lock_lock_with_options();
  volume = self->_volume;
  os_unfair_lock_unlock(&self->_lock);
  return volume;
}

- (NSUUID)uniqueIdentifier
{
  os_unfair_lock_lock_with_options();
  uniqueIdentifier = self->_uniqueIdentifier;
  if (!uniqueIdentifier)
  {
    v4 = MEMORY[0x1E696AFB0];
    WeakRetained = objc_loadWeakRetained(&self->_mediaSession);
    v6 = [WeakRetained uniqueIdentifier];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:v6];
    v8 = self->_uniqueIdentifier;
    self->_uniqueIdentifier = v7;

    uniqueIdentifier = self->_uniqueIdentifier;
  }

  v9 = uniqueIdentifier;
  os_unfair_lock_unlock(&self->_lock);

  return v9;
}

- (void)_unconfigure
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = objc_autoreleasePoolPush();
  v4 = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring audioControl", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v7 = [(_HMAudioControl *)v4 context];
  v8 = [v7 messageDispatcher];
  [v8 deregisterReceiver:v4];

  [(_HMAudioControl *)v4 setContext:0];
  v9 = [MEMORY[0x1E696AD88] defaultCenter];
  [v9 removeObserver:v4];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)a3
{
  [(_HMAudioControl *)self setContext:a3];

  [(_HMAudioControl *)self _registerNotificationHandlers];
}

- (void)_registerNotificationHandlers
{
  v4 = [(_HMAudioControl *)self context];
  v3 = [v4 messageDispatcher];
  [v3 registerForMessage:@"HMAC.ua" receiver:self selector:sel__handleAudioControlUpdated_];
}

- (_HMAudioControl)initWithMediaSession:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = _HMAudioControl;
  v5 = [(_HMAudioControl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_muted = 0;
    v5->_volume = 0.0;
    objc_storeWeak(&v5->_mediaSession, v4);
  }

  return v6;
}

@end