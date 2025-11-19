@interface HMSignificantTimeEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMSignificantEvent)significantEvent;
- (HMSignificantTimeEvent)initWithCoder:(id)a3;
- (HMSignificantTimeEvent)initWithDict:(id)a3 significantEvent:(id)a4 offset:(id)a5;
- (HMSignificantTimeEvent)initWithSignificantEvent:(HMSignificantEvent)significantEvent offset:(NSDateComponents *)offset;
- (NSDateComponents)offset;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_updateFromDictionary:(id)a3;
- (void)setOffset:(id)a3;
- (void)setSignificantEvent:(id)a3;
- (void)updateOffset:(id)a3 completionHandler:(id)a4;
- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4;
@end

@implementation HMSignificantTimeEvent

- (HMSignificantTimeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = HMSignificantTimeEvent;
  v5 = [(HMEvent *)&v11 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSignificantTimeEventSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kSignificantTimeEventOffset"];
    offset = v5->_offset;
    v5->_offset = v8;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableSignificantTimeEvent alloc];
  v5 = [(HMSignificantTimeEvent *)self significantEvent];
  v6 = [(HMSignificantTimeEvent *)self offset];
  v7 = [(HMSignificantTimeEvent *)v4 initWithSignificantEvent:v5 offset:v6];

  return v7;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v4 = a3;
  v5 = [v4 hmf_stringForKey:@"kSignificantTimeEventSignificantEvent"];
  v6 = [v4 dateComponentsForKey:@"kSignificantTimeEventOffset"];
  v7 = [[HMSignificantTimeEvent alloc] initWithDict:v4 significantEvent:v5 offset:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMSignificantTimeEvent alloc];
  v5 = [(HMSignificantTimeEvent *)self significantEvent];
  v6 = [(HMSignificantTimeEvent *)self offset];
  v7 = [(HMSignificantTimeEvent *)v4 initWithSignificantEvent:v5 offset:v6];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = HMSignificantTimeEvent;
  v5 = [(HMEvent *)&v18 mergeFromNewObject:v4];
  v6 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [(HMSignificantTimeEvent *)self significantEvent];
    v10 = [v8 significantEvent];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 significantEvent];
      [(HMSignificantTimeEvent *)self setSignificantEvent:v12];

      v5 = 1;
    }

    v13 = [(HMSignificantTimeEvent *)self offset];
    v14 = [v8 offset];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      v16 = [v8 offset];
      [(HMSignificantTimeEvent *)self setOffset:v16];

      v5 = 1;
    }
  }

  return v5;
}

- (void)updateOffset:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSignificantTimeEvent updateOffset:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    v28 = self;
    v29 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v30;
      v36 = 2112;
      v37 = v26;
      _os_log_impl(&dword_19BB39000, v29, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v31 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v26 userInfo:0];
    objc_exception_throw(v31);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMSignificantTimeEvent *)self offset];
    v11 = [v10 isEqual:v6];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v15;
        v36 = 2112;
        v37 = v6;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Offset is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [v9 delegateCaller];
      [v16 callCompletion:v7 error:0];
    }

    else
    {
      v21 = encodeRootObject(v6);
      if (v21)
      {
        v16 = v21;
        v32 = @"kSignificantTimeEventOffset";
        v33 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [(HMEvent *)self _updateEventWithPayload:v22 completionHandler:v7];
      }

      else
      {
        v23 = [v9 delegateCaller];
        v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [v23 callCompletion:v7 error:v24];

        v16 = 0;
      }
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v35 = v20;
      v36 = 2080;
      v37 = "[HMSignificantTimeEvent updateOffset:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSignificantTimeEvent updateSignificantEvent:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    v24 = self;
    v25 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v26;
      v32 = 2112;
      v33 = v22;
      _os_log_impl(&dword_19BB39000, v25, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v23);
    v27 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v22 userInfo:0];
    objc_exception_throw(v27);
  }

  v9 = v8;
  if (v8)
  {
    v10 = [(HMSignificantTimeEvent *)self significantEvent];
    v11 = [v10 isEqualToString:v6];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v15;
        v32 = 2112;
        v33 = v6;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Significant event is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      v16 = [v9 delegateCaller];
      [v16 callCompletion:v7 error:0];
    }

    else
    {
      v28 = @"kSignificantTimeEventSignificantEvent";
      v29 = v6;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [(HMEvent *)self _updateEventWithPayload:v16 completionHandler:v7];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v31 = v20;
      v32 = 2080;
      v33 = "[HMSignificantTimeEvent updateSignificantEvent:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromDictionary:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = HMSignificantTimeEvent;
  [(HMEvent *)&v7 _updateFromDictionary:v4];
  v5 = [v4 hmf_stringForKey:@"kSignificantTimeEventSignificantEvent"];
  if (v5)
  {
    [(HMSignificantTimeEvent *)self setSignificantEvent:v5];
  }

  v6 = [v4 dateComponentsForKey:@"kSignificantTimeEventOffset"];
  if (v6)
  {
    [(HMSignificantTimeEvent *)self setOffset:v6];
  }
}

- (id)_serializeForAdd
{
  v11.receiver = self;
  v11.super_class = HMSignificantTimeEvent;
  v3 = [(HMEvent *)&v11 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = [(HMSignificantTimeEvent *)self significantEvent];
  [v4 setObject:v5 forKeyedSubscript:@"kSignificantTimeEventSignificantEvent"];

  v6 = [(HMSignificantTimeEvent *)self offset];

  if (v6)
  {
    v7 = [(HMSignificantTimeEvent *)self offset];
    v8 = encodeRootObject(v7);
    [v4 setObject:v8 forKeyedSubscript:@"kSignificantTimeEventOffset"];
  }

  v9 = [v4 copy];

  return v9;
}

- (void)setOffset:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  offset = self->_offset;
  self->_offset = v4;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSDateComponents)offset
{
  os_unfair_lock_lock_with_options();
  v3 = self->_offset;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)setSignificantEvent:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  significantEvent = self->_significantEvent;
  self->_significantEvent = v4;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (HMSignificantEvent)significantEvent
{
  os_unfair_lock_lock_with_options();
  v3 = self->_significantEvent;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (HMSignificantTimeEvent)initWithDict:(id)a3 significantEvent:(id)a4 offset:(id)a5
{
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMSignificantTimeEvent;
  v11 = [(HMEvent *)&v14 initWithDict:a3];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_significantEvent, a4);
    objc_storeStrong(&v12->_offset, a5);
  }

  return v12;
}

- (HMSignificantTimeEvent)initWithSignificantEvent:(HMSignificantEvent)significantEvent offset:(NSDateComponents *)offset
{
  v15[1] = *MEMORY[0x1E69E9840];
  v14 = @"kEventUUIDKey";
  v6 = MEMORY[0x1E696AFB0];
  v7 = offset;
  v8 = significantEvent;
  v9 = [v6 UUID];
  v15[0] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(HMSignificantTimeEvent *)self initWithDict:v10 significantEvent:v8 offset:v7];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end