@interface NSBackgroundActivityScheduler
- (BOOL)shouldDefer;
- (NSBackgroundActivityScheduler)initWithIdentifier:(NSString *)identifier;
- (void)_setAdditionalXPCActivityProperties:(id)a3;
- (void)_updateCriteria:(id)a3;
- (void)_updateCriteriaForCompletedActivity:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleWithBlock:(void *)block;
- (void)setCurrentActivity:(id)a3;
- (void)setInterval:(NSTimeInterval)interval;
- (void)setTolerance:(NSTimeInterval)tolerance;
@end

@implementation NSBackgroundActivityScheduler

- (void)invalidate
{
  os_unfair_lock_lock(&self->_invalidateLock);
  xpc_activity_unregister([(NSString *)[(NSBackgroundActivityScheduler *)self identifier] UTF8String]);

  self->_activity = 0;

  os_unfair_lock_unlock(&self->_invalidateLock);
}

- (void)dealloc
{
  v6 = *MEMORY[0x1E69E9840];

  currentActivity = self->_currentActivity;
  if (currentActivity)
  {
    xpc_release(currentActivity);
  }

  additionalProperties = self->_additionalProperties;
  if (additionalProperties)
  {
    xpc_release(additionalProperties);
  }

  v5.receiver = self;
  v5.super_class = NSBackgroundActivityScheduler;
  [(NSBackgroundActivityScheduler *)&v5 dealloc];
}

- (NSBackgroundActivityScheduler)initWithIdentifier:(NSString *)identifier
{
  v8 = *MEMORY[0x1E69E9840];
  if (!identifier || ![(NSString *)identifier length])
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"The identifier should be a reverse-DNS style string userInfo:{for example com.mycompany.myapp.activity_name", 0}]);
  }

  v7.receiver = self;
  v7.super_class = NSBackgroundActivityScheduler;
  v5 = [(NSBackgroundActivityScheduler *)&v7 init];
  v5->_qualityOfService = 9;
  v5->_identifier = [(NSString *)identifier copy];
  v5->_invalidateLock._os_unfair_lock_opaque = 0;
  return v5;
}

- (void)setInterval:(NSTimeInterval)interval
{
  if (interval < 1.0)
  {
    v5 = [NSString stringWithFormat:@"%@: Invalid value for interval (%f). The value must be >= 1.", self, *&interval, v3, v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  self->_interval = interval;
  atomic_fetch_or_explicit(&self->_flags, 0x20u, memory_order_relaxed);
}

- (void)setTolerance:(NSTimeInterval)tolerance
{
  if (tolerance < 0.0)
  {
    v5 = [NSString stringWithFormat:@"%@: Invalid value for tolerance (%f). The value must be >= 0.", self, *&tolerance, v3, v4];
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v5 userInfo:0]);
  }

  self->_tolerance = tolerance;
  atomic_fetch_or_explicit(&self->_flags, 0x20u, memory_order_relaxed);
}

- (void)_setAdditionalXPCActivityProperties:(id)a3
{
  additionalProperties = self->_additionalProperties;
  if (additionalProperties != a3)
  {
    if (additionalProperties)
    {
      xpc_release(additionalProperties);
      self->_additionalProperties = 0;
    }

    if (a3)
    {
      self->_additionalProperties = xpc_retain(a3);
    }
  }
}

- (void)_updateCriteria:(id)a3
{
  applier[5] = *MEMORY[0x1E69E9840];
  [(NSBackgroundActivityScheduler *)self tolerance];
  v6 = v5;
  [(NSBackgroundActivityScheduler *)self interval];
  v8 = v7;
  if (v6 == 0.0 && v7 != 0.0)
  {
    v6 = v7 * 0.5;
    if (v7 * 0.5 < 1.0)
    {
      v6 = 0.0;
    }
  }

  if (v7 > 0.0)
  {
    [(NSBackgroundActivityScheduler *)self delay];
    v10 = llround(v9);
    if (!v10)
    {
      v10 = llround(v8 - v6);
      if (v10 <= 0)
      {
        v15 = [NSString stringWithFormat:@"%@: Invalid value for tolerance (%f). The value must be less than the interval.", self, *&v6];
        objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v15 userInfo:0]);
      }
    }

    xpc_dictionary_set_int64(a3, *MEMORY[0x1E69E9C68], v10);
    xpc_dictionary_set_BOOL(a3, *MEMORY[0x1E69E9D88], [(NSBackgroundActivityScheduler *)self repeats]);
    xpc_dictionary_set_int64(a3, *MEMORY[0x1E69E9CB0], llround(v8));
  }

  if ([(NSBackgroundActivityScheduler *)self _isAppRefresh])
  {
    xpc_dictionary_set_BOOL(a3, *MEMORY[0x1E69E9C48], 1);
    xpc_dictionary_set_BOOL(a3, *MEMORY[0x1E69E9D88], [(NSBackgroundActivityScheduler *)self repeats]);
  }

  if (v6 != 0.0)
  {
    xpc_dictionary_set_int64(a3, *MEMORY[0x1E69E9C98], llround(v6));
  }

  v11 = *MEMORY[0x1E69E9D68];
  v12 = __ROR8__([(NSBackgroundActivityScheduler *)self qualityOfService]- 9, 3);
  if (v12 > 3)
  {
    v13 = MEMORY[0x1E69E9D70];
  }

  else
  {
    v13 = qword_1E69F6048[v12];
  }

  xpc_dictionary_set_string(a3, v11, *v13);
  additionalProperties = self->_additionalProperties;
  if (additionalProperties)
  {
    if (object_getClass(additionalProperties) == MEMORY[0x1E69E9E80])
    {
      applier[0] = MEMORY[0x1E69E9820];
      applier[1] = 3221225472;
      applier[2] = __49__NSBackgroundActivityScheduler__updateCriteria___block_invoke;
      applier[3] = &unk_1E69F6000;
      applier[4] = a3;
      xpc_dictionary_apply(additionalProperties, applier);
    }
  }
}

- (void)_updateCriteriaForCompletedActivity:(id)a3
{
  if ((atomic_fetch_and_explicit(&self->_flags, 0xDFu, memory_order_relaxed) & 0x20) != 0)
  {
    v6 = xpc_activity_copy_criteria(a3);
    [(NSBackgroundActivityScheduler *)self _updateCriteria:v6];
    xpc_activity_set_criteria(a3, v6);

    xpc_release(v6);
  }
}

- (void)setCurrentActivity:(id)a3
{
  currentActivity = self->_currentActivity;
  if (currentActivity != a3)
  {
    if (currentActivity)
    {
      xpc_release(currentActivity);
      self->_currentActivity = 0;
    }

    if (a3)
    {
      self->_currentActivity = xpc_retain(a3);
    }
  }
}

- (void)scheduleWithBlock:(void *)block
{
  handler[5] = *MEMORY[0x1E69E9840];
  if (!block)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: The argument may not be nil", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v8);
  }

  activity = self->_activity;
  if (activity != block)
  {

    self->_activity = [block copy];
  }

  if ([(NSBackgroundActivityScheduler *)self isPreregistered])
  {
    v6 = *MEMORY[0x1E69E9C50];
    xpc_retain(*MEMORY[0x1E69E9C50]);
  }

  else
  {
    v6 = xpc_dictionary_create(0, 0, 0);
    [(NSBackgroundActivityScheduler *)self _updateCriteria:v6];
  }

  atomic_fetch_and_explicit(&self->_flags, 0xDFu, memory_order_relaxed);
  v7 = [(NSString *)[(NSBackgroundActivityScheduler *)self identifier] UTF8String];
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__NSBackgroundActivityScheduler_scheduleWithBlock___block_invoke;
  handler[3] = &unk_1E69F5440;
  handler[4] = self;
  xpc_activity_register(v7, v6, handler);
  xpc_release(v6);
}

void __51__NSBackgroundActivityScheduler_scheduleWithBlock___block_invoke(uint64_t a1, xpc_activity_t activity)
{
  state = xpc_activity_get_state(activity);
  if (state == 2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 88));
    v14 = *(*(a1 + 32) + 40);
    os_unfair_lock_unlock((*(a1 + 32) + 88));
    if (v14)
    {
      [*(a1 + 32) setCurrentActivity:activity];
      if (!xpc_activity_set_state(activity, 4))
      {
        NSLog(@"Unknown error: state transition to CONTINUE failed");
      }

      __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(v14);
    }
  }

  else if (!state)
  {
    v5 = xpc_activity_copy_criteria(activity);
    if (v5)
    {
      v6 = v5;
      int64 = xpc_dictionary_get_int64(v5, *MEMORY[0x1E69E9CB0]);
      v8 = int64 != 0;
      if (int64)
      {
        [*(a1 + 32) setInterval:int64];
      }

      v9 = xpc_dictionary_get_int64(v6, *MEMORY[0x1E69E9C68]);
      if (v9)
      {
        [*(a1 + 32) setDelay:v9];
      }

      v10 = xpc_dictionary_get_int64(v6, *MEMORY[0x1E69E9C98]);
      if (v10)
      {
        [*(a1 + 32) setTolerance:v10];
      }

      v11 = *MEMORY[0x1E69E9D88];
      if (xpc_dictionary_get_value(v6, *MEMORY[0x1E69E9D88]))
      {
        v8 = xpc_dictionary_get_BOOL(v6, v11);
      }

      [*(a1 + 32) setRepeats:v8];
      string = xpc_dictionary_get_string(v6, *MEMORY[0x1E69E9D68]);
      if (*MEMORY[0x1E69E9D78] == string || string && !strcmp(*MEMORY[0x1E69E9D78], string))
      {
        v13 = 17;
      }

      else
      {
        v13 = 9;
      }

      [*(a1 + 32) setQualityOfService:v13];
      xpc_release(v6);
      atomic_fetch_and_explicit((*(a1 + 32) + 80), 0xDFu, memory_order_relaxed);
    }

    v15 = *(*(a1 + 32) + 48);
    if (v15)
    {
      (*(v15 + 16))();
      v16 = *(a1 + 32);

      [v16 _updateCriteriaForCompletedActivity:activity];
    }
  }
}

void __51__NSBackgroundActivityScheduler_scheduleWithBlock___block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCurrentActivity:0];
  if (a2 == 2)
  {
    if (!xpc_activity_set_state(*(a1 + 40), 3))
    {
      NSLog(@"Unknown error: state transition to DEFER failed");
    }

    v4 = *(a1 + 32);
    v5 = *(a1 + 40);

    [v4 _updateCriteriaForCompletedActivity:v5];
  }

  else if (a2 == 1 && !xpc_activity_set_state(*(a1 + 40), 5))
  {
    NSLog(@"Unknown error: state transition to DONE failed");
  }
}

- (BOOL)shouldDefer
{
  v4 = [(NSBackgroundActivityScheduler *)self currentActivity];
  if (!v4)
  {
    v6 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA20] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: This method may only be called during the invocation of the activity block or asynchronous activity", _NSMethodExceptionProem(self, a2)), 0}];
    objc_exception_throw(v6);
  }

  return xpc_activity_should_defer(v4);
}

@end