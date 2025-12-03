@interface HMCalendarEvent
+ (id)createWithDictionary:(id)dictionary home:(id)home;
- (BOOL)mergeFromNewObject:(id)object;
- (HMCalendarEvent)initWithCoder:(id)coder;
- (HMCalendarEvent)initWithDict:(id)dict fireDateComponents:(id)components;
- (HMCalendarEvent)initWithFireDateComponents:(NSDateComponents *)fireDateComponents;
- (NSDateComponents)fireDateComponents;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)_updateFromDictionary:(id)dictionary;
- (void)setFireDateComponents:(id)components;
- (void)updateFireDateComponents:(id)components completionHandler:(id)handler;
@end

@implementation HMCalendarEvent

- (HMCalendarEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = HMCalendarEvent;
  v5 = [(HMEvent *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCalendarTimeEventFireDateComponents"];
    fireDateComponents = v5->_fireDateComponents;
    v5->_fireDateComponents = v6;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [HMMutableCalendarEvent alloc];
  fireDateComponents = [(HMCalendarEvent *)self fireDateComponents];
  v6 = [(HMCalendarEvent *)v4 initWithFireDateComponents:fireDateComponents];

  return v6;
}

+ (id)createWithDictionary:(id)dictionary home:(id)home
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy dateComponentsForKey:@"kCalendarTimeEventFireDateComponents"];
  v6 = [[HMCalendarEvent alloc] initWithDict:dictionaryCopy fireDateComponents:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [HMCalendarEvent alloc];
  fireDateComponents = [(HMCalendarEvent *)self fireDateComponents];
  v6 = [(HMCalendarEvent *)v4 initWithFireDateComponents:fireDateComponents];

  return v6;
}

- (BOOL)mergeFromNewObject:(id)object
{
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = HMCalendarEvent;
  v5 = [(HMEvent *)&v14 mergeFromNewObject:objectCopy];
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
    fireDateComponents = [(HMCalendarEvent *)self fireDateComponents];
    fireDateComponents2 = [v8 fireDateComponents];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      fireDateComponents3 = [v8 fireDateComponents];
      [(HMCalendarEvent *)self setFireDateComponents:fireDateComponents3];

      v5 = 1;
    }
  }

  return v5;
}

- (void)_updateFromDictionary:(id)dictionary
{
  v6.receiver = self;
  v6.super_class = HMCalendarEvent;
  dictionaryCopy = dictionary;
  [(HMEvent *)&v6 _updateFromDictionary:dictionaryCopy];
  v5 = [dictionaryCopy dateComponentsFromDataForKey:{@"kCalendarTimeEventFireDateComponents", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(HMCalendarEvent *)self setFireDateComponents:v5];
  }
}

- (void)updateFireDateComponents:(id)components completionHandler:(id)handler
{
  v38 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  handlerCopy = handler;
  context = [(HMEvent *)self context];
  if (!handlerCopy)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCalendarEvent updateFireDateComponents:completionHandler:]", @"completion"];
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
    fireDateComponents = [(HMCalendarEvent *)self fireDateComponents];
    v11 = [fireDateComponents isEqual:componentsCopy];

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
        v37 = componentsCopy;
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Fire date is already %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v12);
      delegateCaller = [v9 delegateCaller];
      [delegateCaller callCompletion:handlerCopy error:0];
    }

    else
    {
      v21 = encodeRootObject(componentsCopy);
      if (v21)
      {
        delegateCaller = v21;
        v32 = @"kCalendarTimeEventFireDateComponents";
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
      v37 = "[HMCalendarEvent updateFireDateComponents:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    delegateCaller = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    handlerCopy[2](handlerCopy, delegateCaller);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v10.receiver = self;
  v10.super_class = HMCalendarEvent;
  _serializeForAdd = [(HMEvent *)&v10 _serializeForAdd];
  v4 = [_serializeForAdd mutableCopy];

  v5 = MEMORY[0x1E696ACC8];
  fireDateComponents = [(HMCalendarEvent *)self fireDateComponents];
  v7 = [v5 archivedDataWithRootObject:fireDateComponents requiringSecureCoding:1 error:0];
  [v4 setObject:v7 forKeyedSubscript:@"kCalendarTimeEventFireDateComponents"];

  v8 = [v4 copy];

  return v8;
}

- (void)setFireDateComponents:(id)components
{
  componentsCopy = components;
  os_unfair_lock_lock_with_options();
  fireDateComponents = self->_fireDateComponents;
  self->_fireDateComponents = componentsCopy;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSDateComponents)fireDateComponents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDateComponents;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (HMCalendarEvent)initWithDict:(id)dict fireDateComponents:(id)components
{
  componentsCopy = components;
  v11.receiver = self;
  v11.super_class = HMCalendarEvent;
  v7 = [(HMEvent *)&v11 initWithDict:dict];
  if (v7)
  {
    v8 = [componentsCopy copy];
    fireDateComponents = v7->_fireDateComponents;
    v7->_fireDateComponents = v8;
  }

  return v7;
}

- (HMCalendarEvent)initWithFireDateComponents:(NSDateComponents *)fireDateComponents
{
  v12[1] = *MEMORY[0x1E69E9840];
  v11 = @"kEventUUIDKey";
  v4 = MEMORY[0x1E696AFB0];
  v5 = fireDateComponents;
  uUID = [v4 UUID];
  v12[0] = uUID;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [(HMCalendarEvent *)self initWithDict:v7 fireDateComponents:v5];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end