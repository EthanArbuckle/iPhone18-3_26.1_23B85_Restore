@interface ACRateLimiter
- (ACRateLimiter)initWithMaximum:(unint64_t)a3 inTimeInterval:(double)a4;
- (BOOL)_vacuumQueue_vacuumKey:(id)a3;
- (BOOL)reservePerformActionForKey:(id)a3;
- (id)simpleRateLimiterForKey:(id)a3;
- (void)_vacuumQueue_vacuum;
- (void)vacuumIfNeeded;
@end

@implementation ACRateLimiter

- (ACRateLimiter)initWithMaximum:(unint64_t)a3 inTimeInterval:(double)a4
{
  v21.receiver = self;
  v21.super_class = ACRateLimiter;
  v6 = [(ACRateLimiter *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_maximum = a3;
    v6->_timeInterval = a4;
    v8 = [MEMORY[0x1E695DF90] dictionary];
    keyToSimpleRateLimiter = v7->_keyToSimpleRateLimiter;
    v7->_keyToSimpleRateLimiter = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_UNSPECIFIED, 0);
    v12 = dispatch_queue_create("ACRateLimiter queue", v11);
    instanceQueue = v7->_instanceQueue;
    v7->_instanceQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_attr_make_with_qos_class(v14, 0xFFFF8000, 0);
    v16 = dispatch_queue_create("ACRateLimiter vacuum queue", v15);
    vacuumQueue = v7->_vacuumQueue;
    v7->_vacuumQueue = v16;

    v7->_vacuumTimeInterval = fmax(a4, 3600.0);
    v18 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceNow:?];
    nextVacuumDate = v7->_nextVacuumDate;
    v7->_nextVacuumDate = v18;
  }

  return v7;
}

- (BOOL)reservePerformActionForKey:(id)a3
{
  v4 = [(ACRateLimiter *)self simpleRateLimiterForKey:a3];
  v5 = [v4 reservePerformActionNow];
  [(ACRateLimiter *)self vacuumIfNeeded];

  return v5;
}

- (id)simpleRateLimiterForKey:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy__2;
  v16 = __Block_byref_object_dispose__2;
  v17 = 0;
  v5 = [(ACRateLimiter *)self instanceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__ACRateLimiter_simpleRateLimiterForKey___block_invoke;
  block[3] = &unk_1E7977290;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __41__ACRateLimiter_simpleRateLimiterForKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyToSimpleRateLimiter];
  v3 = [v2 objectForKeyedSubscript:*(a1 + 40)];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  if (!*(*(*(a1 + 48) + 8) + 40))
  {
    v6 = [ACSimpleRateLimiter alloc];
    v7 = [*(a1 + 32) maximum];
    [*(a1 + 32) timeInterval];
    v8 = [(ACSimpleRateLimiter *)v6 initWithMaximum:v7 inTimeInterval:?];
    v9 = *(*(a1 + 48) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = *(*(*(a1 + 48) + 8) + 40);
    v12 = [*(a1 + 32) keyToSimpleRateLimiter];
    [v12 setObject:v11 forKeyedSubscript:*(a1 + 40)];
  }
}

- (void)vacuumIfNeeded
{
  if (![(ACRateLimiter *)self isVacuumInProgress])
  {
    v3 = [(ACRateLimiter *)self nextVacuumDate];
    v4 = [MEMORY[0x1E695DF00] date];
    v5 = [v3 compare:v4];

    if (v5 == -1)
    {
      [(ACRateLimiter *)self setIsVacuumInProgress:1];
      vacuumQueue = self->_vacuumQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __31__ACRateLimiter_vacuumIfNeeded__block_invoke;
      block[3] = &unk_1E7975AD8;
      block[4] = self;
      dispatch_async(vacuumQueue, block);
    }
  }
}

uint64_t __31__ACRateLimiter_vacuumIfNeeded__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) nextVacuumDate];
  v3 = [MEMORY[0x1E695DF00] date];
  v4 = [v2 compare:v3];

  if (v4 == -1)
  {
    [*(a1 + 32) _vacuumQueue_vacuum];
    v5 = MEMORY[0x1E695DF00];
    [*(a1 + 32) vacuumTimeInterval];
    v6 = [v5 dateWithTimeIntervalSinceNow:?];
    [*(a1 + 32) setNextVacuumDate:v6];
  }

  v7 = *(a1 + 32);

  return [v7 setIsVacuumInProgress:0];
}

- (void)_vacuumQueue_vacuum
{
  v28 = *MEMORY[0x1E69E9840];
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v3 = [(ACRateLimiter *)self instanceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__ACRateLimiter__vacuumQueue_vacuum__block_invoke;
  block[3] = &unk_1E79772B8;
  block[4] = self;
  block[5] = &v19;
  dispatch_sync(v3, block);

  v4 = _ACLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v20[5], "count")}];
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&dword_1AC3CD000, v4, OS_LOG_TYPE_DEFAULT, "Started rate limiter vacuuming (%{public}@ keys)", buf, 0xCu);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = v20[5];
  v7 = 0;
  v8 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
  if (v8)
  {
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v7 += [(ACRateLimiter *)self _vacuumQueue_vacuumKey:*(*(&v14 + 1) + 8 * v10++), v14];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v25 count:16];
    }

    while (v8);
  }

  v11 = _ACLogSystem();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
    *buf = 138543362;
    v27 = v12;
    _os_log_impl(&dword_1AC3CD000, v11, OS_LOG_TYPE_DEFAULT, "Finished rate limiter vacuuming (removed %{public}@ keys)", buf, 0xCu);
  }

  _Block_object_dispose(&v19, 8);
  v13 = *MEMORY[0x1E69E9840];
}

void __36__ACRateLimiter__vacuumQueue_vacuum__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) keyToSimpleRateLimiter];
  v2 = [v5 allKeys];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (BOOL)_vacuumQueue_vacuumKey:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(ACRateLimiter *)self instanceQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __40__ACRateLimiter__vacuumQueue_vacuumKey___block_invoke;
  block[3] = &unk_1E79772E0;
  block[4] = self;
  v9 = v4;
  v10 = &v11;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

void __40__ACRateLimiter__vacuumQueue_vacuumKey___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keyToSimpleRateLimiter];
  v4 = [v2 objectForKeyedSubscript:*(a1 + 40)];

  if ([v4 isEmptyAfterFlushing])
  {
    v3 = [*(a1 + 32) keyToSimpleRateLimiter];
    [v3 setObject:0 forKeyedSubscript:*(a1 + 40)];

    *(*(*(a1 + 48) + 8) + 24) = 1;
  }
}

@end