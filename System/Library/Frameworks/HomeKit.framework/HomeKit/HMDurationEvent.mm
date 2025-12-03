@interface HMDurationEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (HMDurationEvent)initWithCoder:(id)coder;
- (HMDurationEvent)initWithDict:(id)dict duration:(double)duration;
- (HMDurationEvent)initWithDuration:(NSTimeInterval)duration;
- (NSTimeInterval)duration;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setOffset:(double)offset;
- (void)updateDuration:(double)duration completionHandler:(id)handler;
@end

@implementation HMDurationEvent

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
    os_unfair_lock_lock_with_options();
    duration = self->_duration;
    [v6 duration];
    v9 = duration != v8;
    if (duration != v8)
    {
      [v6 duration];
      self->_duration = v10;
    }

    os_unfair_lock_unlock(&self->super.super._lock);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (HMDurationEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMDurationEvent;
  v5 = [(HMEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kDurationEventDuration"];
    [v6 doubleValue];
    v5->_duration = v7;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableDurationEvent alloc];
  [(HMDurationEvent *)self duration];

  return [(HMDurationEvent *)v4 initWithDuration:?];
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_numberForKey:@"kDurationEventDuration"];
  v6 = [HMDurationEvent alloc];
  [v5 doubleValue];
  v7 = [(HMDurationEvent *)v6 initWithDict:dictionaryCopy duration:?];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMDurationEvent alloc];
  [(HMDurationEvent *)self duration];

  return [(HMDurationEvent *)v4 initWithDuration:?];
}

- (void)updateDuration:(double)duration completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMDurationEvent updateDuration:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v28;
      v34 = 2112;
      v35 = v24;
      _os_log_impl(&dword_19BB39000, v27, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v25);
    v29 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v24 userInfo:0];
    objc_exception_throw(v29);
  }

  v8 = context;
  if (context)
  {
    [(HMDurationEvent *)self duration];
    if (vabdd_f64(v9, duration) >= 0.001)
    {
      v30 = @"kDurationEventDuration";
      delegateCaller = [MEMORY[0x1E696AD98] numberWithDouble:duration];
      v31 = delegateCaller;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [(HMEvent *)self _updateEventWithPayload:v22 completionHandler:handlerCopy];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
        v15 = MEMORY[0x1E696AD98];
        [(HMDurationEvent *)selfCopy2 duration];
        v16 = [v15 numberWithDouble:?];
        *buf = 138543874;
        v33 = v13;
        v34 = 2112;
        v35 = v14;
        v36 = 2112;
        v37 = v16;
        _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_INFO, "%{public}@Duration is already approximately %@ (%@)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v10);
      delegateCaller = [v8 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      *buf = 138543618;
      v33 = v21;
      v34 = 2080;
      v35 = "[HMDurationEvent updateDuration:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = HMDurationEvent;
  dictionaryCopy = dictionary;
  [(HMEvent *)&v6 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy hmf_numberForKey:{@"kDurationEventDuration", v6.receiver, v6.super_class}];

  if (v5)
  {
    [v5 doubleValue];
    [(HMDurationEvent *)self setDuration:?];
  }
}

- (id)_serializeForAdd
{
  v9.receiver = self;
  v9.super_class = HMDurationEvent;
  _serializeForAdd = [(HMEvent *)&v9 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  v5 = MEMORY[0x1E696AD98];
  [(HMDurationEvent *)self duration];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"kDurationEventDuration"];

  v7 = [v4 copy];

  return v7;
}

- (void)setOffset:(double)offset
{
  os_unfair_lock_lock_with_options();
  self->_duration = offset;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSTimeInterval)duration
{
  os_unfair_lock_lock_with_options();
  duration = self->_duration;
  os_unfair_lock_unlock(&self->super.super._lock);
  return duration;
}

- (HMDurationEvent)initWithDict:(id)dict duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = HMDurationEvent;
  result = [(HMEvent *)&v6 initWithDict:dict];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (HMDurationEvent)initWithDuration:(NSTimeInterval)duration
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"kEventUUIDKey";
  uUID = [MEMORY[0x1E696AFB0] UUID];
  v10[1] = @"kEventTriggerEndEvent";
  v11[0] = uUID;
  v11[1] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [(HMDurationEvent *)self initWithDict:v6 duration:duration];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end