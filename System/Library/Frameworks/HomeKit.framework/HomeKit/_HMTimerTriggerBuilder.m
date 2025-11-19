@interface _HMTimerTriggerBuilder
+ (void)initialize;
- (NSDate)fireDate;
- (NSDate)fireDateIfSet;
- (NSDateComponents)recurrence;
- (NSDateComponents)significantEventOffset;
- (NSString)significantEvent;
- (NSTimeZone)timeZone;
- (void)_setSignificantEventOffset:(id)a3;
- (void)setFireDate:(id)a3;
- (void)setRecurrence:(id)a3;
- (void)setSignificantEvent:(id)a3;
- (void)setSignificantEventOffset:(id)a3;
- (void)setTimeZone:(id)a3;
- (void)updateFireDate:(id)a3 completionHandler:(id)a4;
- (void)updateRecurrence:(id)a3 completionHandler:(id)a4;
- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4;
- (void)updateSignificantEventOffset:(id)a3 completionHandler:(id)a4;
- (void)updateTimeZone:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMTimerTriggerBuilder

- (void)updateSignificantEventOffset:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = a4;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateSignificantEventOffset:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

  v7 = v6;
  [(_HMTimerTriggerBuilder *)self _setSignificantEventOffset:v18];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  v10 = [(_HMContext *)v9 delegateCaller];
  [v10 callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_setSignificantEventOffset:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  significantEventOffset = self->_significantEventOffset;
  self->_significantEventOffset = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (void)setSignificantEventOffset:(id)a3
{
  v4 = a3;
  v5 = v4;
  v9 = v4;
  if (v4 && (valid = HMIsValidSignificantEventOffset(v4), v5 = v9, !valid))
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

- (void)updateSignificantEvent:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateSignificantEvent:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v7 = v6;
  if (v20)
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
    v10 = [(_HMContext *)v9 delegateCaller];
    [v10 callCompletion:v7 error:0];
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
    v10 = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v10 callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setSignificantEvent:(id)a3
{
  v9 = a3;
  os_unfair_lock_lock_with_options();
  if (v9)
  {
    v4 = [v9 copy];
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

- (void)updateRecurrence:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = a4;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateRecurrence:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

  v7 = v6;
  [(_HMTimerTriggerBuilder *)self setRecurrence:v18];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  v10 = [(_HMContext *)v9 delegateCaller];
  [v10 callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setRecurrence:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)updateTimeZone:(id)a3 completionHandler:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = a3;
  v6 = a4;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateTimeZone:completionHandler:]", @"completion"];
    v13 = objc_autoreleasePoolPush();
    v14 = self;
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

  v7 = v6;
  [(_HMTimerTriggerBuilder *)self setTimeZone:v18];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v9 = context;
  v10 = [(_HMContext *)v9 delegateCaller];
  [v10 callCompletion:v7 error:0];

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setTimeZone:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
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

- (void)updateFireDate:(id)a3 completionHandler:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v6 = a4;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMTimerTriggerBuilder updateFireDate:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
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

  v7 = v6;
  if (v20)
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
    v10 = [(_HMContext *)v9 delegateCaller];
    [v10 callCompletion:v7 error:0];
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
    v10 = [(_HMContext *)v9 delegateCaller];
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:20];
    [v10 callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setFireDate:(id)a3
{
  v10 = a3;
  os_unfair_lock_lock_with_options();
  if (v10)
  {
    v4 = [v10 copy];
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
  v2 = [(_HMTimerTriggerBuilder *)self fireDateIfSet];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF00] distantFuture];
  }

  v5 = v4;

  return v5;
}

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    v3 = objc_opt_class();
    [a1 adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end