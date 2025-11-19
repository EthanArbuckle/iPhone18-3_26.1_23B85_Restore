@interface HMDurationEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMDurationEvent)initWithCoder:(id)a3;
- (HMDurationEvent)initWithDict:(id)a3 duration:(double)a4;
- (HMDurationEvent)initWithDuration:(NSTimeInterval)duration;
- (NSTimeInterval)duration;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_updateFromDictionary:(id)a3;
- (void)setOffset:(double)a3;
- (void)updateDuration:(double)a3 completionHandler:(id)a4;
@end

@implementation HMDurationEvent

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

- (HMDurationEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMDurationEvent;
  v5 = [(HMEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kDurationEventDuration"];
    [v6 doubleValue];
    v5->_duration = v7;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableDurationEvent alloc];
  [(HMDurationEvent *)self duration];

  return [(HMDurationEvent *)v4 initWithDuration:?];
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v4 = a3;
  v5 = [v4 hmf_numberForKey:@"kDurationEventDuration"];
  v6 = [HMDurationEvent alloc];
  [v5 doubleValue];
  v7 = [(HMDurationEvent *)v6 initWithDict:v4 duration:?];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMDurationEvent alloc];
  [(HMDurationEvent *)self duration];

  return [(HMDurationEvent *)v4 initWithDuration:?];
}

- (void)updateDuration:(double)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [(HMEvent *)self context];
  if (!v6)
  {
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMDurationEvent updateDuration:completionHandler:]", @"completion"];
    v25 = objc_autoreleasePoolPush();
    v26 = self;
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

  v8 = v7;
  if (v7)
  {
    [(HMDurationEvent *)self duration];
    if (vabdd_f64(v9, a3) >= 0.001)
    {
      v30 = @"kDurationEventDuration";
      v17 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
      v31 = v17;
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      [(HMEvent *)self _updateEventWithPayload:v22 completionHandler:v6];
    }

    else
    {
      v10 = objc_autoreleasePoolPush();
      v11 = self;
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [MEMORY[0x1E696AD98] numberWithDouble:a3];
        v15 = MEMORY[0x1E696AD98];
        [(HMDurationEvent *)v11 duration];
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
      v17 = [v8 delegateCaller];
      [v17 callCompletion:v6 error:0];
    }
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
      v33 = v21;
      v34 = 2080;
      v35 = "[HMDurationEvent updateDuration:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v20, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
    v17 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v6[2](v6, v17);
  }

  v23 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMDurationEvent;
  v4 = a3;
  [(HMEvent *)&v6 _updateFromDictionary:v4];
  v5 = [v4 hmf_numberForKey:{@"kDurationEventDuration", v6.receiver, v6.super_class}];

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
  v3 = [(HMEvent *)&v9 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696AD98];
  [(HMDurationEvent *)self duration];
  v6 = [v5 numberWithDouble:?];
  [v4 setObject:v6 forKeyedSubscript:@"kDurationEventDuration"];

  v7 = [v4 copy];

  return v7;
}

- (void)setOffset:(double)a3
{
  os_unfair_lock_lock_with_options();
  self->_duration = a3;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSTimeInterval)duration
{
  os_unfair_lock_lock_with_options();
  duration = self->_duration;
  os_unfair_lock_unlock(&self->super.super._lock);
  return duration;
}

- (HMDurationEvent)initWithDict:(id)a3 duration:(double)a4
{
  v6.receiver = self;
  v6.super_class = HMDurationEvent;
  result = [(HMEvent *)&v6 initWithDict:a3];
  if (result)
  {
    result->_duration = a4;
  }

  return result;
}

- (HMDurationEvent)initWithDuration:(NSTimeInterval)duration
{
  v11[2] = *MEMORY[0x1E69E9840];
  v10[0] = @"kEventUUIDKey";
  v5 = [MEMORY[0x1E696AFB0] UUID];
  v10[1] = @"kEventTriggerEndEvent";
  v11[0] = v5;
  v11[1] = MEMORY[0x1E695E118];
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:2];
  v7 = [(HMDurationEvent *)self initWithDict:v6 duration:duration];

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end