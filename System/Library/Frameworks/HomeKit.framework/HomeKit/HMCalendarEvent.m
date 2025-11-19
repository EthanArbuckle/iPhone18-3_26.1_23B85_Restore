@interface HMCalendarEvent
+ (id)createWithDictionary:(id)a3 home:(id)a4;
- (BOOL)mergeFromNewObject:(id)a3;
- (HMCalendarEvent)initWithCoder:(id)a3;
- (HMCalendarEvent)initWithDict:(id)a3 fireDateComponents:(id)a4;
- (HMCalendarEvent)initWithFireDateComponents:(NSDateComponents *)fireDateComponents;
- (NSDateComponents)fireDateComponents;
- (id)_serializeForAdd;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)_updateFromDictionary:(id)a3;
- (void)setFireDateComponents:(id)a3;
- (void)updateFireDateComponents:(id)a3 completionHandler:(id)a4;
@end

@implementation HMCalendarEvent

- (HMCalendarEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HMCalendarEvent;
  v5 = [(HMEvent *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCalendarTimeEventFireDateComponents"];
    fireDateComponents = v5->_fireDateComponents;
    v5->_fireDateComponents = v6;
  }

  return v5;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [HMMutableCalendarEvent alloc];
  v5 = [(HMCalendarEvent *)self fireDateComponents];
  v6 = [(HMCalendarEvent *)v4 initWithFireDateComponents:v5];

  return v6;
}

+ (id)createWithDictionary:(id)a3 home:(id)a4
{
  v4 = a3;
  v5 = [v4 dateComponentsForKey:@"kCalendarTimeEventFireDateComponents"];
  v6 = [[HMCalendarEvent alloc] initWithDict:v4 fireDateComponents:v5];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [HMCalendarEvent alloc];
  v5 = [(HMCalendarEvent *)self fireDateComponents];
  v6 = [(HMCalendarEvent *)v4 initWithFireDateComponents:v5];

  return v6;
}

- (BOOL)mergeFromNewObject:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = HMCalendarEvent;
  v5 = [(HMEvent *)&v14 mergeFromNewObject:v4];
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
    v9 = [(HMCalendarEvent *)self fireDateComponents];
    v10 = [v8 fireDateComponents];
    v11 = HMFEqualObjects();

    if ((v11 & 1) == 0)
    {
      v12 = [v8 fireDateComponents];
      [(HMCalendarEvent *)self setFireDateComponents:v12];

      v5 = 1;
    }
  }

  return v5;
}

- (void)_updateFromDictionary:(id)a3
{
  v6.receiver = self;
  v6.super_class = HMCalendarEvent;
  v4 = a3;
  [(HMEvent *)&v6 _updateFromDictionary:v4];
  v5 = [v4 dateComponentsFromDataForKey:{@"kCalendarTimeEventFireDateComponents", v6.receiver, v6.super_class}];

  if (v5)
  {
    [(HMCalendarEvent *)self setFireDateComponents:v5];
  }
}

- (void)updateFireDateComponents:(id)a3 completionHandler:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [(HMEvent *)self context];
  if (!v7)
  {
    v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[HMCalendarEvent updateFireDateComponents:completionHandler:]", @"completion"];
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
    v10 = [(HMCalendarEvent *)self fireDateComponents];
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
        _os_log_impl(&dword_19BB39000, v14, OS_LOG_TYPE_INFO, "%{public}@Fire date is already %@", buf, 0x16u);
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
        v32 = @"kCalendarTimeEventFireDateComponents";
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
      v37 = "[HMCalendarEvent updateFireDateComponents:completionHandler:]";
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@Nil context, invoking completion - %s", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v16 = [MEMORY[0x1E696ABC0] hmErrorWithCode:12];
    v7[2](v7, v16);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (id)_serializeForAdd
{
  v10.receiver = self;
  v10.super_class = HMCalendarEvent;
  v3 = [(HMEvent *)&v10 _serializeForAdd];
  v4 = [v3 mutableCopy];

  v5 = MEMORY[0x1E696ACC8];
  v6 = [(HMCalendarEvent *)self fireDateComponents];
  v7 = [v5 archivedDataWithRootObject:v6 requiringSecureCoding:1 error:0];
  [v4 setObject:v7 forKeyedSubscript:@"kCalendarTimeEventFireDateComponents"];

  v8 = [v4 copy];

  return v8;
}

- (void)setFireDateComponents:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock_with_options();
  fireDateComponents = self->_fireDateComponents;
  self->_fireDateComponents = v4;

  os_unfair_lock_unlock(&self->super.super._lock);
}

- (NSDateComponents)fireDateComponents
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDateComponents;
  os_unfair_lock_unlock(&self->super.super._lock);

  return v3;
}

- (HMCalendarEvent)initWithDict:(id)a3 fireDateComponents:(id)a4
{
  v6 = a4;
  v11.receiver = self;
  v11.super_class = HMCalendarEvent;
  v7 = [(HMEvent *)&v11 initWithDict:a3];
  if (v7)
  {
    v8 = [v6 copy];
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
  v6 = [v4 UUID];
  v12[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v8 = [(HMCalendarEvent *)self initWithDict:v7 fireDateComponents:v5];

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

@end