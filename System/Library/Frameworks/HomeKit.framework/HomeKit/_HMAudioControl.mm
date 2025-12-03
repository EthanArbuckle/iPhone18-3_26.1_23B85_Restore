@interface _HMAudioControl
- (BOOL)isMuted;
- (BOOL)mergeFromNewObject:(id)object;
- (HMMediaSession)mediaSession;
- (NSUUID)messageTargetUUID;
- (NSUUID)uniqueIdentifier;
- (_HMAudioControl)initWithMediaSession:(id)session;
- (_HMAudioControlDelegate)delegate;
- (float)volume;
- (id)messageDestination;
- (void)__configureWithContext:(id)context;
- (void)_handleAudioControlUpdated:(id)updated;
- (void)_registerNotificationHandlers;
- (void)_unconfigure;
- (void)setMuted:(BOOL)muted;
- (void)setVolume:(float)volume;
- (void)updateMuted:(BOOL)muted completionHandler:(id)handler;
- (void)updateVolume:(float)volume completionHandler:(id)handler;
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

- (void)_handleAudioControlUpdated:(id)updated
{
  v48 = *MEMORY[0x1E69E9840];
  updatedCopy = updated;
  context = [(_HMAudioControl *)self context];
  pendingRequests = [context pendingRequests];

  identifier = [updatedCopy identifier];
  v8 = [pendingRequests removeCompletionBlockForIdentifier:identifier];

  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v13 = _Block_copy(v8);
    *buf = 138543874;
    v43 = v12;
    v44 = 2112;
    v45 = updatedCopy;
    v46 = 2112;
    v47 = v13;
    _os_log_impl(&dword_19BB39000, v11, OS_LOG_TYPE_INFO, "%{public}@Received notification that audio controls got updated : %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  delegate = [(_HMAudioControl *)selfCopy delegate];
  v15 = [updatedCopy numberForKey:@"volume"];
  if (v15)
  {
    [(_HMAudioControl *)selfCopy volume];
    v17 = v16;
    [v15 floatValue];
    v19 = v18;
    [(_HMAudioControl *)selfCopy setVolume:?];
    if (!v8 && v17 != v19 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      delegate2 = [(_HMAudioControl *)selfCopy delegate];
      context2 = [(_HMAudioControl *)selfCopy context];
      delegateCaller = [context2 delegateCaller];
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __46___HMAudioControl__handleAudioControlUpdated___block_invoke;
      v38[3] = &unk_1E7547B40;
      v39 = delegate2;
      v40 = selfCopy;
      v41 = v19;
      v23 = delegate2;
      [delegateCaller invokeBlock:v38];
    }
  }

  v24 = [updatedCopy numberForKey:@"muted"];
  v25 = v24;
  if (v24 && (v26 = [v24 BOOLValue], v27 = -[_HMAudioControl isMuted](selfCopy, "isMuted"), -[_HMAudioControl setMuted:](selfCopy, "setMuted:", v26), !v8) && v26 != v27)
  {
    if (objc_opt_respondsToSelector())
    {
      delegate3 = [(_HMAudioControl *)selfCopy delegate];
      context3 = [(_HMAudioControl *)selfCopy context];
      delegateCaller2 = [context3 delegateCaller];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __46___HMAudioControl__handleAudioControlUpdated___block_invoke_2;
      v34[3] = &unk_1E754DC70;
      v35 = delegate3;
      v36 = selfCopy;
      v37 = v26;
      context4 = delegate3;
      [delegateCaller2 invokeBlock:v34];

      delegateCaller3 = v35;
LABEL_15:
    }
  }

  else if (v8)
  {
    context4 = [(_HMAudioControl *)selfCopy context];
    delegateCaller3 = [context4 delegateCaller];
    [delegateCaller3 callCompletion:v8 error:0];
    goto LABEL_15;
  }

  v32 = *MEMORY[0x1E69E9840];
}

- (void)updateMuted:(BOOL)muted completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAudioControl *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAudioControl updateMuted:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49___HMAudioControl_updateMuted_completionHandler___block_invoke;
    block[3] = &unk_1E754A040;
    mutedCopy = muted;
    block[4] = self;
    v24 = handlerCopy;
    v23 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)updateVolume:(float)volume completionHandler:(id)handler
{
  v30 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(_HMAudioControl *)self context];
  if (!handlerCopy)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMAudioControl updateVolume:completionHandler:]", @"completionHandler"];
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v8 = context;
  if (context)
  {
    queue = [context queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __50___HMAudioControl_updateVolume_completionHandler___block_invoke;
    block[3] = &unk_1E7547950;
    volumeCopy = volume;
    block[4] = self;
    v24 = handlerCopy;
    v23 = v8;
    dispatch_async(queue, block);
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy2 = self;
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
    (*(handlerCopy + 2))(handlerCopy, v14);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (BOOL)mergeFromNewObject:(id)object
{
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
    delegate = [(_HMAudioControl *)self delegate];
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
        context = [(_HMAudioControl *)self context];
        queue = [context queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke;
        block[3] = &unk_1E7547B40;
        block[4] = self;
        v23 = v9;
        v22 = delegate;
        dispatch_async(queue, block);
      }
    }

    isMuted = [v6 isMuted];
    if (isMuted != [(_HMAudioControl *)self isMuted])
    {
      [(_HMAudioControl *)self setMuted:isMuted];
      if (objc_opt_respondsToSelector())
      {
        context2 = [(_HMAudioControl *)self context];
        queue2 = [context2 queue];
        v18[0] = MEMORY[0x1E69E9820];
        v18[1] = 3221225472;
        v18[2] = __38___HMAudioControl_mergeFromNewObject___block_invoke_27;
        v18[3] = &unk_1E754DC70;
        v18[4] = self;
        v19 = delegate;
        v20 = isMuted;
        dispatch_async(queue2, v18);
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
  messageTargetUUID = [(_HMAudioControl *)self messageTargetUUID];
  v5 = [v3 initWithTarget:messageTargetUUID];

  return v5;
}

- (NSUUID)messageTargetUUID
{
  mediaSession = [(_HMAudioControl *)self mediaSession];
  messageTargetUUID = [mediaSession messageTargetUUID];

  return messageTargetUUID;
}

- (void)setMuted:(BOOL)muted
{
  os_unfair_lock_lock_with_options();
  self->_muted = muted;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isMuted
{
  os_unfair_lock_lock_with_options();
  muted = self->_muted;
  os_unfair_lock_unlock(&self->_lock);
  return muted;
}

- (void)setVolume:(float)volume
{
  os_unfair_lock_lock_with_options();
  self->_volume = volume;

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
    uniqueIdentifier = [WeakRetained uniqueIdentifier];
    v7 = [v4 hm_deriveUUIDFromBaseUUID:uniqueIdentifier];
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
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = HMFGetLogIdentifier();
    v11 = 138543362;
    v12 = v6;
    _os_log_impl(&dword_19BB39000, v5, OS_LOG_TYPE_DEBUG, "%{public}@Unconfiguring audioControl", &v11, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  context = [(_HMAudioControl *)selfCopy context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher deregisterReceiver:selfCopy];

  [(_HMAudioControl *)selfCopy setContext:0];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:selfCopy];

  v10 = *MEMORY[0x1E69E9840];
}

- (void)__configureWithContext:(id)context
{
  [(_HMAudioControl *)self setContext:context];

  [(_HMAudioControl *)self _registerNotificationHandlers];
}

- (void)_registerNotificationHandlers
{
  context = [(_HMAudioControl *)self context];
  messageDispatcher = [context messageDispatcher];
  [messageDispatcher registerForMessage:@"HMAC.ua" receiver:self selector:sel__handleAudioControlUpdated_];
}

- (_HMAudioControl)initWithMediaSession:(id)session
{
  sessionCopy = session;
  v8.receiver = self;
  v8.super_class = _HMAudioControl;
  v5 = [(_HMAudioControl *)&v8 init];
  v6 = v5;
  if (v5)
  {
    v5->_muted = 0;
    v5->_volume = 0.0;
    objc_storeWeak(&v5->_mediaSession, sessionCopy);
  }

  return v6;
}

@end