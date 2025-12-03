@interface _HMEventTriggerBuilder
+ (void)initialize;
- (BOOL)_with:(id)_with addEvent:(id)event;
- (BOOL)_with:(id)_with removeEvent:(id)event;
- (BOOL)executeOnce;
- (NSArray)endEvents;
- (NSArray)events;
- (NSPredicate)predicate;
- (_HMEventTriggerBuilder)initWithContext:(id)context home:(id)home;
- (_HMEventTriggerBuilder)initWithEventTrigger:(id)trigger;
- (id)copyAsBuilder;
- (void)_with:(id)_with addEvent:(id)event completion:(id)completion;
- (void)_with:(id)_with removeEvent:(id)event completion:(id)completion;
- (void)_with:(id)_with setEvents:(id)events;
- (void)_with:(id)_with updateEvents:(id)events completion:(id)completion;
- (void)addEndEvent:(id)event;
- (void)addEndEvent:(id)event completionHandler:(id)handler;
- (void)addEvent:(id)event;
- (void)addEvent:(id)event completionHandler:(id)handler;
- (void)removeEndEvent:(id)event;
- (void)removeEndEvent:(id)event completionHandler:(id)handler;
- (void)removeEvent:(id)event;
- (void)removeEvent:(id)event completionHandler:(id)handler;
- (void)setExecuteOnce:(BOOL)once;
- (void)setPredicate:(id)predicate;
- (void)updateEndEvents:(id)events completionHandler:(id)handler;
- (void)updateEvents:(id)events completionHandler:(id)handler;
- (void)updatePredicate:(id)predicate completionHandler:(id)handler;
@end

@implementation _HMEventTriggerBuilder

- (void)_with:(id)_with updateEvents:(id)events completion:(id)completion
{
  completionCopy = completion;
  [(_HMEventTriggerBuilder *)self _with:_with setEvents:events];
  if (self)
  {
    context = self->super.super.super._context;
  }

  else
  {
    context = 0;
  }

  v11 = context;
  delegateCaller = [(_HMContext *)v11 delegateCaller];
  [delegateCaller callCompletion:completionCopy error:0];
}

- (void)_with:(id)_with removeEvent:(id)event completion:(id)completion
{
  _withCopy = _with;
  eventCopy = event;
  completionCopy = completion;
  if (eventCopy)
  {
    v10 = [(_HMEventTriggerBuilder *)self _with:_withCopy removeEvent:eventCopy];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v12 = context;
    delegateCaller = [(_HMContext *)v12 delegateCaller];
    delegateCaller2 = delegateCaller;
    if (v10)
    {
      [delegateCaller callCompletion:completionCopy error:0];
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
    delegateCaller2 = [(_HMContext *)v12 delegateCaller];
    v16 = MEMORY[0x1E696ABC0];
    v17 = 20;
  }

  v18 = [v16 hmErrorWithCode:v17];
  [delegateCaller2 callCompletion:completionCopy error:v18];

LABEL_11:
}

- (void)_with:(id)_with addEvent:(id)event completion:(id)completion
{
  _withCopy = _with;
  eventCopy = event;
  completionCopy = completion;
  if (eventCopy)
  {
    v10 = [(_HMEventTriggerBuilder *)self _with:_withCopy addEvent:eventCopy];
    if (self)
    {
      context = self->super.super.super._context;
    }

    else
    {
      context = 0;
    }

    v12 = context;
    delegateCaller = [(_HMContext *)v12 delegateCaller];
    delegateCaller2 = delegateCaller;
    if (v10)
    {
      [delegateCaller callCompletion:completionCopy error:0];
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
    delegateCaller2 = [(_HMContext *)v12 delegateCaller];
    v16 = MEMORY[0x1E696ABC0];
    v17 = 20;
  }

  v18 = [v16 hmErrorWithCode:v17];
  [delegateCaller2 callCompletion:completionCopy error:v18];

LABEL_11:
}

- (void)updateEndEvents:(id)events completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updateEndEvents:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents updateEvents:eventsCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)updateEvents:(id)events completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventsCopy = events;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updateEvents:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_events updateEvents:eventsCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeEndEvent:(id)event completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEndEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents removeEvent:eventCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:(id)event completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_events removeEvent:eventCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addEndEvent:(id)event completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEndEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents addEvent:eventCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)addEvent:(id)event completionHandler:(id)handler
{
  v20 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEvent:completionHandler:]", @"completion"];
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v7 = handlerCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_events addEvent:eventCopy completion:handlerCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)_with:(id)_with setEvents:(id)events
{
  v38 = *MEMORY[0x1E69E9840];
  _withCopy = _with;
  eventsCopy = events;
  selfCopy = self;
  os_unfair_lock_lock_with_options();
  v8 = [_withCopy mutableCopy];
  [_withCopy removeAllObjects];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = eventsCopy;
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
          if (([_withCopy containsObject:v14] & 1) == 0)
          {
            if (selfCopy)
            {
              context = selfCopy->super.super.super._context;
            }

            else
            {
              context = 0;
            }

            v17 = context;
            v18 = selfCopy;
            [v14 __configureWithContext:v17 eventTrigger:v18];

            [_withCopy addObject:v14];
          }
        }

        else
        {
          v19 = [v8 objectAtIndex:v15];
          [_withCopy addObject:v19];

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

  os_unfair_lock_unlock(&selfCopy->super.super.super._lock);
  v25 = *MEMORY[0x1E69E9840];
}

- (BOOL)_with:(id)_with removeEvent:(id)event
{
  _withCopy = _with;
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  v8 = [_withCopy indexOfObject:eventCopy];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = [_withCopy objectAtIndex:v8];
    [v9 _unconfigure];

    [_withCopy removeObjectAtIndex:v8];
  }

  os_unfair_lock_unlock(&self->super.super.super._lock);

  return v8 != 0x7FFFFFFFFFFFFFFFLL;
}

- (BOOL)_with:(id)_with addEvent:(id)event
{
  _withCopy = _with;
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  v9 = objc_opt_class();
  if (v9 == objc_opt_class())
  {
    _HMFPreconditionFailure();
    __break(1u);
    goto LABEL_8;
  }

  v4 = [eventCopy copy];
  LOBYTE(v9) = [_withCopy containsObject:v4];
  if ((v9 & 1) == 0)
  {
    if (self)
    {
      context = self->super.super.super._context;
LABEL_5:
      v11 = context;
      selfCopy = self;
      [v4 __configureWithContext:v11 eventTrigger:selfCopy];

      [_withCopy addObject:v4];
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

- (void)removeEndEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEndEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = eventCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents removeEvent:eventCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)removeEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder removeEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = eventCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_events removeEvent:eventCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addEndEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEndEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = eventCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_endEvents addEvent:eventCopy];
  v5 = *MEMORY[0x1E69E9840];
}

- (void)addEvent:(id)event
{
  v17 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  if (!eventCopy)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder addEvent:]", @"event"];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
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

  v12 = eventCopy;
  [(_HMEventTriggerBuilder *)self _with:self->_events addEvent:eventCopy];
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

- (void)updatePredicate:(id)predicate completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  predicateCopy = predicate;
  handlerCopy = handler;
  if (!handlerCopy)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: %@ cannot be nil", "-[_HMEventTriggerBuilder updatePredicate:completionHandler:]", @"completion"];
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = v15;
    v18 = selfCopy;
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

  v7 = handlerCopy;
  if ([HMPredicateUtilities validatePredicate:predicateCopy])
  {
    [(_HMEventTriggerBuilder *)self setPredicate:predicateCopy];
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
    v12 = [MEMORY[0x1E696ABC0] hmErrorWithCode:3];
    [delegateCaller callCompletion:v7 error:v12];
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  os_unfair_lock_lock_with_options();
  v4 = [predicateCopy copy];
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

- (void)setExecuteOnce:(BOOL)once
{
  os_unfair_lock_lock_with_options();
  self->_executeOnce = once;

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
  selfCopy = self;
  v5 = [(HMEventTriggerBuilder *)v3 initWithEventTrigger:selfCopy];

  return v5;
}

- (_HMEventTriggerBuilder)initWithEventTrigger:(id)trigger
{
  v48 = *MEMORY[0x1E69E9840];
  triggerCopy = trigger;
  home = [triggerCopy home];
  context = [home context];
  v7 = context;
  selfCopy = 0;
  if (home && context)
  {
    if ([home areAutomationBuildersSupported])
    {
      context2 = [home context];
      v45.receiver = self;
      v45.super_class = _HMEventTriggerBuilder;
      v10 = [(_HMTriggerBuilder *)&v45 initWithContext:context2 home:home];

      if (v10)
      {
        v36 = v7;
        recurrences = [triggerCopy recurrences];
        [(_HMEventOrTimerTriggerBuilder *)v10 setRecurrences:recurrences];

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
        events = [triggerCopy events];
        v17 = [events countByEnumeratingWithState:&v41 objects:v47 count:16];
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
                objc_enumerationMutation(events);
              }

              v21 = [*(*(&v41 + 1) + 8 * v20) copy];
              context3 = [home context];
              [v21 __configureWithContext:context3 eventTrigger:triggerCopy];

              [(NSMutableArray *)v10->_events addObject:v21];
              ++v20;
            }

            while (v18 != v20);
            v18 = [events countByEnumeratingWithState:&v41 objects:v47 count:16];
          }

          while (v18);
        }

        v39 = 0u;
        v40 = 0u;
        v37 = 0u;
        v38 = 0u;
        endEvents = [triggerCopy endEvents];
        v24 = [endEvents countByEnumeratingWithState:&v37 objects:v46 count:16];
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
                objc_enumerationMutation(endEvents);
              }

              v29 = [*(*(&v37 + 1) + 8 * v28) copy];
              context4 = [home context];
              [v29 __configureWithContext:context4 eventTrigger:triggerCopy];

              [*(&v10->super.super.super.super.isa + v25) addObject:v29];
              ++v28;
            }

            while (v26 != v28);
            v26 = [endEvents countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v26);
        }

        predicate = [triggerCopy predicate];
        predicate = v10->_predicate;
        v10->_predicate = predicate;

        v7 = v36;
      }

      self = v10;
      selfCopy = self;
    }

    else
    {
      selfCopy = 0;
    }
  }

  v33 = *MEMORY[0x1E69E9840];
  return selfCopy;
}

- (_HMEventTriggerBuilder)initWithContext:(id)context home:(id)home
{
  v10.receiver = self;
  v10.super_class = _HMEventTriggerBuilder;
  v4 = [(_HMTriggerBuilder *)&v10 initWithContext:context home:home];
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
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_class();
    [self adoptExternalCategoriesFromClasses:{v3, objc_opt_class(), 0}];
  }
}

@end