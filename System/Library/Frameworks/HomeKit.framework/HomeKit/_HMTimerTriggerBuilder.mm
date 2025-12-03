@interface _HMTimerTriggerBuilder
+ (void)initialize;
- (NSDate)fireDate;
- (NSDate)fireDateIfSet;
- (NSDateComponents)recurrence;
- (NSDateComponents)significantEventOffset;
- (NSString)significantEvent;
- (NSTimeZone)timeZone;
- (void)_setSignificantEventOffset:(id)offset;
- (void)setFireDate:(id)date;
- (void)setRecurrence:(id)recurrence;
- (void)setSignificantEvent:(id)event;
- (void)setSignificantEventOffset:(id)offset;
- (void)setTimeZone:(id)zone;
- (void)updateFireDate:(id)date completionHandler:(id)handler;
- (void)updateRecurrence:(id)recurrence completionHandler:(id)handler;
- (void)updateSignificantEvent:(id)event completionHandler:(id)handler;
- (void)updateSignificantEventOffset:(id)offset completionHandler:(id)handler;
- (void)updateTimeZone:(id)zone completionHandler:(id)handler;
@end

@implementation _HMTimerTriggerBuilder

- (void)updateSignificantEventOffset:(id)offset completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  offsetCopy = offset;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateSignificantEventOffset:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
    objc_exception_throw(v17);
  }

  v7 = handlerCopy;
  [(_HMTimerTriggerBuilder *)self _setSignificantEventOffset:offsetCopy];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  delegateCaller = [(_HMContext *)v9 delegateCaller];
  [delegateCaller callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_setSignificantEventOffset:(id)offset
{
  offsetCopy = offset;
  os_unfair_lock_lock_with_options();
  v4 = [offsetCopy copy];
  significantEventOffset = self->_significantEventOffset;
  self->_significantEventOffset = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (void)setSignificantEventOffset:(id)offset
{
  offsetCopy = offset;
  v5 = offsetCopy;
  v9 = offsetCopy;
  if (offsetCopy && (valid = HMIsValidSignificantEventOffset(offsetCopy), v5 = v9, !valid))
  {
    v7 = _HMFPreconditionFailure();
    [(_HMTimerTriggerBuilder *)v7 significantEventOffset];
  }

  else
  {
    [(_HMTimerTriggerBuilder *)self _setSignificantEventOffset:v5];
  }
}

- (NSDateComponents)significantEventOffset
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDateComponents *)self->_significantEventOffset copy];
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)updateSignificantEvent:(id)event completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateSignificantEvent:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v7 = handlerCopy;
  if (eventCopy)
  {
    [(_HMTimerTriggerBuilder *)self setSignificantEvent:?];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v9 = context;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    [delegateCaller callCompletion:v7 error:0];
  }

  else
  {
    if (self)
    {
      v11 = self->super.super.super._context;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSignificantEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  if (eventCopy)
  {
    v4 = [eventCopy copy];
    v5 = &OBJC_IVAR____HMTimerTriggerBuilder__significantEvent;
  }

  else
  {
    significantEvent = self->_significantEvent;
    self->_significantEvent = 0;

    v4 = 0;
    v5 = &OBJC_IVAR____HMTimerTriggerBuilder__significantEventOffset;
  }

  v7 = *v5;
  v8 = *(&self->super.super.super.super.isa + v7);
  *(&self->super.super.super.super.isa + v7) = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (NSString)significantEvent
{
  os_unfair_lock_lock_with_options();
  v3 = self->_significantEvent;
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)updateRecurrence:(id)recurrence completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  recurrenceCopy = recurrence;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateRecurrence:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
    objc_exception_throw(v17);
  }

  v7 = handlerCopy;
  [(_HMTimerTriggerBuilder *)self setRecurrence:recurrenceCopy];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  delegateCaller = [(_HMContext *)v9 delegateCaller];
  [delegateCaller callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrence:(id)recurrence
{
  recurrenceCopy = recurrence;
  os_unfair_lock_lock_with_options();
  v4 = [recurrenceCopy copy];
  recurrence = self->_recurrence;
  self->_recurrence = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (NSDateComponents)recurrence
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSDateComponents *)self->_recurrence copy];
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)updateTimeZone:(id)zone completionHandler:(id)handler
{
  v23 = *MEMORY[0x1E69E9840];
  zoneCopy = zone;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateTimeZone:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    selfCopy = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543618;
      v20 = v16;
      v21 = 2112;
      v22 = v12;
      _os_log_impl(&dword_19BB39000, v15, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v17 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v12 userInfo:0];
    objc_exception_throw(v17);
  }

  v7 = handlerCopy;
  [(_HMTimerTriggerBuilder *)self setTimeZone:zoneCopy];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  delegateCaller = [(_HMContext *)v9 delegateCaller];
  [delegateCaller callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setTimeZone:(id)zone
{
  zoneCopy = zone;
  os_unfair_lock_lock_with_options();
  v4 = [zoneCopy copy];
  timeZone = self->_timeZone;
  self->_timeZone = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (NSTimeZone)timeZone
{
  os_unfair_lock_lock_with_options();
  v3 = self->_timeZone;
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)updateFireDate:(id)date completionHandler:(id)handler
{
  v25 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateFireDate:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543618;
      v22 = v18;
      v23 = 2112;
      v24 = v14;
      _os_log_impl(&dword_19BB39000, v17, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    v19 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v19);
  }

  v7 = handlerCopy;
  if (dateCopy)
  {
    [(_HMTimerTriggerBuilder *)self setFireDate:?];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v9 = context;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    [delegateCaller callCompletion:v7 error:0];
  }

  else
  {
    if (self)
    {
      v11 = self->super.super.super._context;
    }

    else
    {
      v11 = 0;
    }

    v9 = v11;
    delegateCaller = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [delegateCaller callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setFireDate:(id)date
{
  dateCopy = date;
  os_unfair_lock_lock_with_options();
  if (dateCopy)
  {
    v4 = [dateCopy copy];
    v5 = &OBJC_IVAR____HMTimerTriggerBuilder__fireDate;
  }

  else
  {
    fireDate = self->_fireDate;
    self->_fireDate = 0;

    timeZone = self->_timeZone;
    self->_timeZone = 0;

    v4 = 0;
    v5 = &OBJC_IVAR____HMTimerTriggerBuilder__recurrence;
  }

  v8 = *v5;
  v9 = *(&self->super.super.super.super.isa + v8);
  *(&self->super.super.super.super.isa + v8) = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (NSDate)fireDateIfSet
{
  os_unfair_lock_lock_with_options();
  v3 = self->_fireDate;
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (NSDate)fireDate
{
  fireDateIfSet = [(_HMTimerTriggerBuilder *)self fireDateIfSet];
  v3 = fireDateIfSet;
  if (fireDateIfSet)
  {
    distantFuture = fireDateIfSet;
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  }

  v5 = distantFuture;

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_class();
    [self adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end