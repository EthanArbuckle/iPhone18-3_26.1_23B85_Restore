@interface _HMEventTriggerBuilder
+ (void)initialize;
- (BOOL)_with:(id)a3 addEvent:(id)a4;
- (BOOL)_with:(id)a3 removeEvent:(id)a4;
- (BOOL)executeOnce;
- (NSArray)endEvents;
- (NSArray)events;
- (NSPredicate)predicate;
- (_HMEventTriggerBuilder)initWithContext:(id)a3 home:(id)a4;
- (_HMEventTriggerBuilder)initWithEventTrigger:(id)a3;
- (id)copyAsBuilder;
- (void)_with:(id)a3 addEvent:(id)a4 completion:(id)a5;
- (void)_with:(id)a3 removeEvent:(id)a4 completion:(id)a5;
- (void)_with:(id)a3 setEvents:(id)a4;
- (void)_with:(id)a3 updateEvents:(id)a4 completion:(id)a5;
- (void)addEndEvent:(id)a3;
- (void)addEndEvent:(id)a3 completionHandler:(id)a4;
- (void)addEvent:(id)a3;
- (void)addEvent:(id)a3 completionHandler:(id)a4;
- (void)removeEndEvent:(id)a3;
- (void)removeEndEvent:(id)a3 completionHandler:(id)a4;
- (void)removeEvent:(id)a3;
- (void)removeEvent:(id)a3 completionHandler:(id)a4;
- (void)setExecuteOnce:(BOOL)a3;
- (void)setPredicate:(id)a3;
- (void)updateEndEvents:(id)a3 completionHandler:(id)a4;
- (void)updateEvents:(id)a3 completionHandler:(id)a4;
- (void)updatePredicate:(id)a3 completionHandler:(id)a4;
@end

@implementation _HMEventTriggerBuilder

- (void)_with:(id)a3 updateEvents:(id)a4 completion:(id)a5
{
  v8 = a5;
  [(_HMEventTriggerBuilder *)self _with:a3 setEvents:a4];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v11 = context;
  v10 = [(_HMContext *)v11 delegateCaller];
  [v10 callCompletion:v8 error:0];
}

- (void)_with:(id)a3 removeEvent:(id)a4 completion:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(_HMEventTriggerBuilder *)self _with:v19 removeEvent:v8];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v12 = context;
    v13 = [(_HMContext *)v12 delegateCaller];
    v14 = v13;
    if (v10)
    {
      [v13 callCompletion:v9 error:0];
      goto LABEL_11;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = 2;
  }

  else
  {
    if (self)
    {
      v15 = self->super.super.super._context;
    }

    else
    {
      v15 = 0;
    }

    v12 = v15;
    v14 = [(_HMContext *)v12 delegateCaller];
    v16 = MEMORY[0x1E696ABC0];
    v17 = 20;
  }

  v18 = [v16 hmErrorWithCode:v17];
  [v14 callCompletion:v9 error:v18];

LABEL_11:
}

- (void)_with:(id)a3 addEvent:(id)a4 completion:(id)a5
{
  v19 = a3;
  v8 = a4;
  v9 = a5;
  if (v8)
  {
    v10 = [(_HMEventTriggerBuilder *)self _with:v19 addEvent:v8];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v12 = context;
    v13 = [(_HMContext *)v12 delegateCaller];
    v14 = v13;
    if (v10)
    {
      [v13 callCompletion:v9 error:0];
      goto LABEL_11;
    }

    v16 = MEMORY[0x1E696ABC0];
    v17 = 1;
  }

  else
  {
    if (self)
    {
      v15 = self->super.super.super._context;
    }

    else
    {
      v15 = 0;
    }

    v12 = v15;
    v14 = [(_HMContext *)v12 delegateCaller];
    v16 = MEMORY[0x1E696ABC0];
    v17 = 20;
  }

  v18 = [v16 hmErrorWithCode:v17];
  [v14 callCompletion:v9 error:v18];

LABEL_11:
}

- (void)updateEndEvents:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updateEndEvents:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents updateEvents:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateEvents:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updateEvents:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_events updateEvents:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeEndEvent:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEndEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents removeEvent:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_events removeEvent:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addEndEvent:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEndEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents addEvent:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addEvent:(id)a3 completionHandler:(id)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v15 = a3;
  v6 = a4;
  if (!v6)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v13;
      v18 = 2112;
      v19 = v9;
      _os_log_impl(&dword_19BB39000, v12, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v14 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v9 userInfo:0];
    objc_exception_throw(v14);
  }

  v7 = v6;
  [(_HMEventTriggerBuilder *)self _with:self->_events addEvent:v15 completion:v6];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_with:(id)a3 setEvents:(id)a4
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v26 = self;
  os_unfair_lock_lock_with_options();
  v8 = [v6 mutableCopy];
  [v6 removeAllObjects];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = v7;
  v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v9)
  {
    v10 = *v33;
    do
    {
      v11 = 0;
      do
      {
        if (*v33 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v32 + 1) + 8 * v11);
        v13 = objc_opt_class();
        if (v13 == objc_opt_class())
        {
          _HMFPreconditionFailure();
          __break(1u);
        }

        v14 = [v12 copy];
        v15 = [v8 indexOfObject:v14];
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (([v6 containsObject:v14] & 1) == 0)
          {
            if (v26)
            {
              context = v26->super.super.super._context;
            }

            else
            {
              context = 0;
            }

            v17 = context;
            v18 = v26;
            [v14 __configureWithContext:v17 eventTrigger:v18];

            [v6 addObject:v14];
          }
        }

        else
        {
          v19 = [v8 objectAtIndex:v15];
          [v6 addObject:v19];

          [v8 removeObjectAtIndex:v15];
        }

        ++v11;
      }

      while (v9 != v11);
      v20 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      v9 = v20;
    }

    while (v20);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v21 = v8;
  v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = *v29;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v29 != v23)
        {
          objc_enumerationMutation(v21);
        }

        [*(*(&v28 + 1) + 8 * i) _unconfigure];
      }

      v22 = [v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v22);
  }

  os_unfair_lock_unlock(&v26->super.super.super._lock);
  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)_with:(id)a3 removeEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  os_unfair_lock_lock_with_options();
  v8 = [v6 indexOfObject:v7];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [v6 objectAtIndex:v8];
    [v9 _unconfigure];

    [v6 removeObjectAtIndex:v8];
  }

  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v8 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_with:(id)a3 addEvent:(id)a4
{
  v7 = a3;
  v8 = a4;
  os_unfair_lock_lock_with_options();
  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    _HMFPreconditionFailure();
    __break(1u);
    goto LABEL_8;
  }

  v4 = [v8 copy];
  LOBYTE(v9) = [v7 containsObject:v4];
  if ((v9 & 1) == 0)
  {
    if (self)
    {
      context = self->super.super.super._context;
LABEL_5:
      v11 = context;
      v12 = self;
      [v4 __configureWithContext:v11 eventTrigger:v12];

      [v7 addObject:v4];
      goto LABEL_6;
    }

LABEL_8:
    context = 0;
    goto LABEL_5;
  }

LABEL_6:

  os_unfair_lock_unlock(&self->super.super.super._lock);
  return v9 ^ 1;
}

- (void)removeEndEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEndEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents removeEvent:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMEventTriggerBuilder *)self _with:self->_events removeEvent:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addEndEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEndEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents addEvent:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addEvent:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (!v4)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    v8 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v14 = v10;
      v15 = 2112;
      v16 = v6;
      _os_log_impl(&dword_19BB39000, v9, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    v11 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v6 userInfo:0];
    objc_exception_throw(v11);
  }

  v12 = v4;
  [(_HMEventTriggerBuilder *)self _with:self->_events addEvent:v4];
  v5 = *MEMORY[0x1E69E9840];
}

- (NSArray)endEvents
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_endEvents copy];
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (NSArray)events
{
  os_unfair_lock_lock_with_options();
  v3 = [(NSMutableArray *)self->_events copy];
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)updatePredicate:(id)a3 completionHandler:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v22 = a3;
  v6 = a4;
  if (!v6)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updatePredicate:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    v16 = self;
    v17 = v15;
    v18 = v16;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v20;
      v25 = 2112;
      v26 = v14;
      _os_log_impl(&dword_19BB39000, v19, OS_LOG_TYPE_ERROR, "%{public}@%@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v21 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v14 userInfo:0];
    objc_exception_throw(v21);
  }

  v7 = v6;
  if ([HMPredicateUtilities validatePredicate:v22])
  {
    [(_HMEventTriggerBuilder *)self setPredicate:v22];
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
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [v10 callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPredicate:(id)a3
{
  v6 = a3;
  os_unfair_lock_lock_with_options();
  v4 = [v6 copy];
  predicate = self->_predicate;
  self->_predicate = v4;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (NSPredicate)predicate
{
  os_unfair_lock_lock_with_options();
  v3 = self->_predicate;
  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v3;
}

- (void)setExecuteOnce:(BOOL)a3
{
  os_unfair_lock_lock_with_options();
  self->_executeOnce = a3;

  os_unfair_lock_unlock(&self->super.super.super._lock);
}

- (BOOL)executeOnce
{
  os_unfair_lock_lock_with_options();
  executeOnce = self->_executeOnce;
  os_unfair_lock_unlock(&self->super.super.super._lock);
  return executeOnce;
}

- (id)copyAsBuilder
{
  v3 = [HMEventTriggerBuilder alloc];
  v4 = self;
  v5 = [(HMEventTriggerBuilder *)v3 initWithEventTrigger:v4];

  return v5;
}

- (_HMEventTriggerBuilder)initWithEventTrigger:(id)a3
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 home];
  v6 = [v5 context];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    if ([v5 areAutomationBuildersSupported])
    {
      v9 = [v5 context];
      v45.receiver = self;
      v45.super_class = _HMEventTriggerBuilder;
      v10 = [(_HMTriggerBuilder *)&v45 initWithContext:v9 home:v5];

      if (v10)
      {
        v36 = v7;
        v11 = [v4 recurrences];
        [(_HMEventOrTimerTriggerBuilder *)v10 setRecurrences:v11];

        v12 = objc_alloc_init(MEMORY[0x1E695DF70]);
        events = v10->_events;
        v10->_events = v12;

        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        endEvents = v10->_endEvents;
        v35 = 112;
        v10->_endEvents = v14;

        v43 = 0u;
        v44 = 0u;
        v41 = 0u;
        v42 = 0u;
        v16 = [v4 events];
        v17 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v42;
          do
          {
            v20 = 0;
            do
            {
              if (*v42 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = [*(*(&v41 + 1) + 8 * v20) copy];
              v22 = [v5 context];
              [v21 __configureWithContext:v22 eventTrigger:v4];

              [(NSMutableArray *)v10->_events addObject:v21];
              ++v20;
            }

            while (v18 != v20);
            v18 = [v16 countByEnumeratingWithState:&v41 objects:v47 count:16];
          }

          while (v18);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        v23 = [v4 endEvents];
        v24 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
        v25 = v35;
        if (v24)
        {
          v26 = v24;
          v27 = *v38;
          do
          {
            v28 = 0;
            do
            {
              if (*v38 != v27)
              {
                objc_enumerationMutation(v23);
              }

              v29 = [*(*(&v37 + 1) + 8 * v28) copy];
              v30 = [v5 context];
              [v29 __configureWithContext:v30 eventTrigger:v4];

              [*(&v10->super.super.super.super.isa + v25) addObject:v29];
              ++v28;
            }

            while (v26 != v28);
            v26 = [v23 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v26);
        }

        v31 = [v4 predicate];
        predicate = v10->_predicate;
        v10->_predicate = v31;

        v7 = v36;
      }

      self = v10;
      v8 = self;
    }

    else
    {
      v8 = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return v8;
}

- (_HMEventTriggerBuilder)initWithContext:(id)a3 home:(id)a4
{
  v10.receiver = self;
  v10.super_class = _HMEventTriggerBuilder;
  v4 = [(_HMTriggerBuilder *)&v10 initWithContext:a3 home:a4];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    events = v4->_events;
    v4->_events = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    endEvents = v4->_endEvents;
    v4->_endEvents = v7;
  }

  return v4;
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