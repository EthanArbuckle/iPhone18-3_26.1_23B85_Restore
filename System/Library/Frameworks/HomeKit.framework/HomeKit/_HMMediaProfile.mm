@interface _HMMediaProfile
- (HMMediaSession)mediaSession;
- (NSString)routeUID;
- (_HMMediaProfile)initWithCoder:(id)coder;
- (_HMMediaProfileDelegate)delegate;
- (unint64_t)capability;
- (void)__configureWithContext:(id)context accessory:(id)accessory;
- (void)_notifyDelegateOfUpdatedMediaSession:(id)session;
- (void)encodeWithCoder:(id)coder;
- (void)handleRuntimeStateUpdate:(id)update;
- (void)setCapability:(unint64_t)capability;
- (void)setMediaSession:(id)session;
- (void)setRouteUID:(id)d;
@end

@implementation _HMMediaProfile

- (_HMMediaProfileDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)handleRuntimeStateUpdate:(id)update
{
  v6.receiver = self;
  v6.super_class = _HMMediaProfile;
  updateCopy = update;
  [(_HMAccessoryProfile *)&v6 handleRuntimeStateUpdate:updateCopy];
  v5 = [(_HMMediaProfile *)self mediaSession:v6.receiver];
  [v5 updateMediaState:updateCopy];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = MEMORY[0x1E695DF30];
  v6 = *MEMORY[0x1E695D930];
  v7 = MEMORY[0x1E696AEC0];
  v8 = NSStringFromSelector(a2);
  v9 = [v7 stringWithFormat:@"%@ is unavailable", v8];
  v10 = [v5 exceptionWithName:v6 reason:v9 userInfo:0];
  v11 = v10;

  objc_exception_throw(v10);
}

- (_HMMediaProfile)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = _HMMediaProfile;
  v5 = [(_HMAccessoryProfile *)&v17 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMP.route-uid"];
    routeUID = v5->_routeUID;
    v5->_routeUID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMP.sessionUUID"];
    v9 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v8];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HMMP.session"];
    mediaSession = v5->_mediaSession;
    v5->_mediaSession = v10;

    v12 = v5->_mediaSession;
    if (v12)
    {
      [(HMMediaSession *)v12 setUuid:v9];
    }

    else
    {
      v13 = [[HMMediaSession alloc] initWithUUID:v9 routeUID:0 playbackState:0 shuffleState:0 repeatState:0 mediaUniqueIdentifier:0 sleepWakeState:0];
      v14 = v5->_mediaSession;
      v5->_mediaSession = v13;
    }

    if ([coderCopy containsValueForKey:@"HMMP.capabilities"])
    {
      v15 = [coderCopy decodeIntegerForKey:@"HMMP.capabilities"];
    }

    else
    {
      v15 = 0;
    }

    v5->_capability = v15;
  }

  return v5;
}

- (void)setCapability:(unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  self->_capability = capability;

  os_unfair_lock_unlock(&self->super._lock);
}

- (unint64_t)capability
{
  os_unfair_lock_lock_with_options();
  capability = self->_capability;
  os_unfair_lock_unlock(&self->super._lock);
  return capability;
}

- (void)setRouteUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  routeUID = self->_routeUID;
  self->_routeUID = dCopy;

  os_unfair_lock_unlock(&self->super._lock);
}

- (NSString)routeUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_routeUID;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)_notifyDelegateOfUpdatedMediaSession:(id)session
{
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  context = [(_HMAccessoryProfile *)self context];
  v6 = context;
  if (context)
  {
    queue = [context queue];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __56___HMMediaProfile__notifyDelegateOfUpdatedMediaSession___block_invoke;
    v13[3] = &unk_1E754E5C0;
    v13[4] = self;
    v14 = sessionCopy;
    dispatch_async(queue, v13);
  }

  else
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v16 = v11;
      v17 = 2080;
      v18 = "[_HMMediaProfile _notifyDelegateOfUpdatedMediaSession:]";
      _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_ERROR, "%{public}@Nil context - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)setMediaSession:(id)session
{
  sessionCopy = session;
  os_unfair_lock_lock_with_options();
  mediaSession = self->_mediaSession;
  if ((HMFEqualObjects() & 1) == 0)
  {
    objc_storeStrong(&self->_mediaSession, session);
    [(_HMMediaProfile *)self _notifyDelegateOfUpdatedMediaSession:sessionCopy];
  }

  os_unfair_lock_unlock(&self->super._lock);
}

- (HMMediaSession)mediaSession
{
  os_unfair_lock_lock_with_options();
  v3 = self->_mediaSession;
  os_unfair_lock_unlock(&self->super._lock);

  return v3;
}

- (void)__configureWithContext:(id)context accessory:(id)accessory
{
  v20 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  accessoryCopy = accessory;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v11;
    v18 = 2112;
    v19 = contextCopy;
    _os_log_impl(&dword_19BB39000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Configuring with context: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v15.receiver = selfCopy;
  v15.super_class = _HMMediaProfile;
  [(_HMAccessoryProfile *)&v15 __configureWithContext:contextCopy accessory:accessoryCopy];
  mediaSession = [(_HMMediaProfile *)selfCopy mediaSession];
  messageTargetUUID = [(_HMAccessoryProfile *)selfCopy messageTargetUUID];
  [mediaSession configure:contextCopy messageTargetUUID:messageTargetUUID];

  v14 = *MEMORY[0x1E69E9840];
}

@end