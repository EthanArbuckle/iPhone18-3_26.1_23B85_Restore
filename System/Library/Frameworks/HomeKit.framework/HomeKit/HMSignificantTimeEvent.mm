@interface HMSignificantTimeEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (HMSignificantEvent)significantEvent;
- (HMSignificantTimeEvent)initWithCoder:(id)coder;
- (HMSignificantTimeEvent)initWithDict:(id)dict significantEvent:(id)event offset:(id)offset;
- (HMSignificantTimeEvent)initWithSignificantEvent:(HMSignificantEvent)significantEvent offset:(NSDateComponents *)offset;
- (NSDateComponents)offset;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setOffset:(id)offset;
- (void)setSignificantEvent:(id)event;
- (void)updateOffset:(id)offset completionHandler:(id)handler;
- (void)updateSignificantEvent:(id)event completionHandler:(id)handler;
@end

@implementation HMSignificantTimeEvent

- (HMSignificantTimeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = HMSignificantTimeEvent;
  v5 = [(HMEvent *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSignificantTimeEventSignificantEvent"];
    significantEvent = v5->_significantEvent;
    v5->_significantEvent = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kSignificantTimeEventOffset"];
    offset = v5->_offset;
    v5->_offset = v8;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableSignificantTimeEvent alloc];
  significantEvent = [(HMSignificantTimeEvent *)self significantEvent];
  offset = [(HMSignificantTimeEvent *)self offset];
  v7 = [(HMSignificantTimeEvent *)v4 initWithSignificantEvent:significantEvent offset:offset];

  return v7;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy hmf_stringForKey:@"kSignificantTimeEventSignificantEvent"];
  v6 = [dictionaryCopy dateComponentsForKey:@"kSignificantTimeEventOffset"];
  v7 = [[HMSignificantTimeEvent alloc] initWithDict:dictionaryCopy significantEvent:v5 offset:v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMSignificantTimeEvent alloc];
  significantEvent = [(HMSignificantTimeEvent *)self significantEvent];
  offset = [(HMSignificantTimeEvent *)self offset];
  v7 = [(HMSignificantTimeEvent *)v4 initWithSignificantEvent:significantEvent offset:offset];

  return v7;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v18.receiver = self;
  v18.super_class = HMSignificantTimeEvent;
  v5 = [(HMEvent *)&v18 mergeFromNewObject:objectCopy];
  v6 = objectCopy;
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
    significantEvent = [(HMSignificantTimeEvent *)self significantEvent];
    significantEvent2 = [v8 significantEvent];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      significantEvent3 = [v8 significantEvent];
      [(HMSignificantTimeEvent *)self setSignificantEvent:significantEvent3];

      v5 = 1;
    }

    offset = [(HMSignificantTimeEvent *)self offset];
    offset2 = [v8 offset];
    v15 = HMFEqualObjects();

    if ((v15 & 1) == 0)
    {
      offset3 = [v8 offset];
      [(HMSignificantTimeEvent *)self setOffset:offset3];

      v5 = 1;
    }
  }

  return v5;
}

- (void)updateOffset:(id)offset completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSignificantTimeEvent updateOffset:completionHandler:]", @"completion"];
    v27 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    offset = [(HMSignificantTimeEvent *)self offset];
    v11 = [offset isEqual:offsetCopy];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v35 = v15;
        v36 = 2112;
        v37 = offsetCopy;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Offset is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      v21 = encodeRootObject(offsetCopy);
      if (v21)
      {
        delegateCaller = v21;
        v32 = @"kSignificantTimeEventOffset";
        v33 = v21;
        v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
        [(HMEvent *)self _updateEventWithPayload:v22 completionHandler:handlerCopy];
      }

      else
      {
        delegateCaller2 = [v9 delegateCaller];
        v24 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
        [delegateCaller2 callCompletion:handlerCopy error:v24];

        delegateCaller = 0;
      }
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)updateSignificantEvent:(id)event completionHandler:(id)handler
{
  v34 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v22 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMSignificantTimeEvent updateSignificantEvent:completionHandler:]", @"completion"];
    v23 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v9 = context;
  if (context)
  {
    significantEvent = [(HMSignificantTimeEvent *)self significantEvent];
    v11 = [significantEvent isEqualToString:eventCopy];

    if (v11)
    {
      v12 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138543618;
        v31 = v15;
        v32 = 2112;
        v33 = eventCopy;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Significant event is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      v28 = @"kSignificantTimeEventSignificantEvent";
      v29 = eventCopy;
      delegateCaller = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      [(HMEvent *)self _updateEventWithPayload:delegateCaller completionHandler:handlerCopy];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)_updateFromDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v7.receiver = self;
  v7.super_class = HMSignificantTimeEvent;
  [(HMEvent *)&v7 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy hmf_stringForKey:@"kSignificantTimeEventSignificantEvent"];
  if (v5)
  {
    [(HMSignificantTimeEvent *)self setSignificantEvent:v5];
  }

  v6 = [dictionaryCopy dateComponentsForKey:@"kSignificantTimeEventOffset"];
  if (v6)
  {
    [(HMSignificantTimeEvent *)self setOffset:v6];
  }
}

- (id)_serializeForAdd
{
  v11.receiver = self;
  v11.super_class = HMSignificantTimeEvent;
  _serializeForAdd = [(HMEvent *)&v11 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  significantEvent = [(HMSignificantTimeEvent *)self significantEvent];
  [v4 setObject:significantEvent forKeyedSubscript:@"kSignificantTimeEventSignificantEvent"];

  offset = [(HMSignificantTimeEvent *)self offset];

  if (offset)
  {
    offset2 = [(HMSignificantTimeEvent *)self offset];
    v8 = encodeRootObject(offset2);
    [v4 setObject:v8 forKeyedSubscript:@"kSignificantTimeEventOffset"];
  }

  v9 = [v4 copy];

  return v9;
}

- (void)setOffset:(id)offset
{
  offsetCopy = offset;
  os_unfair_lock_lock_with_options();
  offset = self->_offset;
  self->_offset = offsetCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSDateComponents)offset
{
  os_unfair_lock_lock_with_options();
  v3 = self->_offset;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (void)setSignificantEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  significantEvent = self->_significantEvent;
  self->_significantEvent = eventCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (HMSignificantEvent)significantEvent
{
  os_unfair_lock_lock_with_options();
  v3 = self->_significantEvent;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (HMSignificantTimeEvent)initWithDict:(id)dict significantEvent:(id)event offset:(id)offset
{
  eventCopy = event;
  offsetCopy = offset;
  v14.receiver = self;
  v14.super_class = HMSignificantTimeEvent;
  v11 = [(HMEvent *)&v14 initWithDict:dict];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_significantEvent, event);
    objc_storeStrong(&v12->_offset, offset);
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
  uUID = [v6 UUID];
  v15[0] = uUID;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:&v14 count:1];
  v11 = [(HMSignificantTimeEvent *)self initWithDict:v10 significantEvent:v8 offset:v7];

  v12 = *MEMORY[0x1E69E9840];
  return v11;
}

@end