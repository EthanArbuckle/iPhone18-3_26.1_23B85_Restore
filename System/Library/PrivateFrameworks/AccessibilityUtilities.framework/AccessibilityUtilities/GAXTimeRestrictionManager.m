@interface GAXTimeRestrictionManager
- (GAXTimeRestrictionManager)initWithAssertedAccessQueue:(id)a3;
- (GAXTimeRestrictionManagerDelegate)delegate;
- (id)description;
- (int64_t)remainingTimeInSeconds;
- (void)_addAlarmForDuration:(int64_t)a3;
- (void)_removeAllAlarmTimers;
- (void)_removeAllTimers;
- (void)_removeExpirationTimer;
- (void)_scheduleTimers;
- (void)beginWithDuration:(int64_t)a3;
- (void)cancel;
- (void)pause;
- (void)remainingTimeInSeconds;
- (void)resume;
@end

@implementation GAXTimeRestrictionManager

- (GAXTimeRestrictionManager)initWithAssertedAccessQueue:(id)a3
{
  v4 = a3;
  if (([v4 canWriteInCurrentExecutionThread] & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager initWithAssertedAccessQueue:v4];
    }
  }

  v11.receiver = self;
  v11.super_class = GAXTimeRestrictionManager;
  v6 = [(GAXTimeRestrictionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(GAXTimeRestrictionManager *)v6 setAssertedAccessQueue:v4];
    v8 = [MEMORY[0x1E695DF70] array];
    [(GAXTimeRestrictionManager *)v7 setAlarmTimers:v8];

    v9 = [MEMORY[0x1E695DFA8] set];
    [(GAXTimeRestrictionManager *)v7 setAlarmDurationsInSeconds:v9];
  }

  return v7;
}

- (id)description
{
  v27 = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696AD60];
  v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[GAXTimeRestrictionManager isActive](self, "isActive")}];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[GAXTimeRestrictionManager isPaused](self, "isPaused")}];
  v6 = [v3 stringWithFormat:@"GAXTimeRestrictionManager<%p>. active:%@ paused:%@\n", self, v4, v5];

  v7 = [(GAXTimeRestrictionManager *)self startTime];
  [v7 timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = [(GAXTimeRestrictionManager *)self startTime];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v6 appendFormat:@"  start time:%@ s (absolute:%@ s)\n", v10, v11];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[GAXTimeRestrictionManager expirationDurationInSeconds](self, "expirationDurationInSeconds")}];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:{v9 + -[GAXTimeRestrictionManager expirationDurationInSeconds](self, "expirationDurationInSeconds")}];
  [v6 appendFormat:@"  expiration duration:%@ s (absolute:%@ s)\n", v12, v13];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v14 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v23;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:{v9 + objc_msgSend(v19, "integerValue")}];
        [v6 appendFormat:@"  alarm:%@ s (absolute:%@ s)\n", v19, v20];
      }

      v16 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  return v6;
}

- (int64_t)remainingTimeInSeconds
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canReadInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(GAXTimeRestrictionManager *)self remainingTimeInSeconds];
    }
  }

  v6 = [(GAXTimeRestrictionManager *)self startTime];
  [v6 timeIntervalSinceNow];
  v8 = fabs(v7);

  v9 = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  return (v9 - v8) & ~((v9 - v8) >> 63);
}

- (void)beginWithDuration:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v6 = [v5 canWriteInCurrentExecutionThread];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isActive])
  {
    v8 = GAXLogTimeRestrictions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "Can't begin time restriction, it's already active", &v15, 2u);
    }
  }

  else if (a3 <= 0)
  {
    v8 = GAXLogTimeRestrictions();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_18B15E000, v8, OS_LOG_TYPE_DEFAULT, "Can't begin time restriction, specified duration is too short: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    [(GAXTimeRestrictionManager *)self setExpirationDurationInSeconds:60 * a3];
    [(GAXTimeRestrictionManager *)self setActive:1];
    v9 = +[AXSettings sharedInstance];
    v8 = [v9 guidedAccessOverrideTimeRestrictionDuration];

    if (v8)
    {
      [v8 doubleValue];
      [(GAXTimeRestrictionManager *)self setExpirationDurationInSeconds:v10];
      v11 = GAXLogTimeRestrictions();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[GAXTimeRestrictionManager expirationDurationInSeconds](self, "expirationDurationInSeconds")}];
        v15 = 138543362;
        v16 = v12;
        _os_log_impl(&dword_18B15E000, v11, OS_LOG_TYPE_INFO, "App Time restriction is being overridden with internal value: %{public}@", &v15, 0xCu);
      }
    }

    [(GAXTimeRestrictionManager *)self _addAlarmForDuration:a3];
    [(GAXTimeRestrictionManager *)self _scheduleTimers];
  }

  v14 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
  {
    [GAXTimeRestrictionManager beginWithDuration:];
  }
}

- (void)cancel
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isActive])
  {
    v6 = [(GAXTimeRestrictionManager *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      v8 = [(GAXTimeRestrictionManager *)self delegate];
      [v8 timeRestrictionWasCancelled:self];
    }
  }

  [(GAXTimeRestrictionManager *)self setActive:0];
  [(GAXTimeRestrictionManager *)self setPaused:0];
  [(GAXTimeRestrictionManager *)self _removeAllTimers];
  v9 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  [v9 removeAllObjects];

  v10 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [GAXTimeRestrictionManager cancel];
  }
}

- (void)pause
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isActive]&& ![(GAXTimeRestrictionManager *)self isPaused])
  {
    [(GAXTimeRestrictionManager *)self _removeAllTimers];
    v6 = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
    v7 = [MEMORY[0x1E695DF00] date];
    [v7 timeIntervalSinceReferenceDate];
    v9 = v8;
    v10 = [(GAXTimeRestrictionManager *)self startTime];
    [v10 timeIntervalSinceReferenceDate];
    [(GAXTimeRestrictionManager *)self setExpirationDurationInSeconds:(v11 - v9 + v6)];

    [(GAXTimeRestrictionManager *)self setPaused:1];
  }

  v12 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [GAXTimeRestrictionManager pause];
  }
}

- (void)resume
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isPaused])
  {
    [(GAXTimeRestrictionManager *)self _scheduleTimers];
    [(GAXTimeRestrictionManager *)self setPaused:0];
  }

  v6 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [GAXTimeRestrictionManager resume];
  }
}

- (void)_addAlarmForDuration:(int64_t)a3
{
  v5 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v6 = [v5 canWriteInCurrentExecutionThread];

  if ((v6 & 1) == 0)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  v8 = -1.0;
  v9 = 30.0;
  if (a3 >= 6)
  {
    if (a3 >= 0xD)
    {
      if (a3 >= 0x14)
      {
        v9 = dbl_18B2F87E0[a3 < 0x1E];
        if (a3 >= 0x1E)
        {
          v8 = 60.0;
        }

        else
        {
          v8 = 30.0;
        }

        goto LABEL_14;
      }

      v8 = 30.0;
      v10 = 0x405E000000000000;
    }

    else
    {
      v10 = 0x404E000000000000;
    }

    v9 = *&v10;
  }

LABEL_14:
  v11 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v11 addObject:v12];

  if (v8 > 0.0)
  {
    v13 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [v13 addObject:v14];
  }
}

- (void)_scheduleTimers
{
  v31 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF00] date];
  [(GAXTimeRestrictionManager *)self setStartTime:v3];

  v4 = [(GAXTimeRestrictionManager *)self startTime];
  [v4 timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  v8 = objc_alloc(MEMORY[0x1E6988750]);
  v9 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v10 = [v8 initWithTargetAccessQueue:v9];

  v11 = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke;
  v29[3] = &unk_1E71E9B98;
  v29[4] = self;
  [v10 afterDelay:v29 processBlock:v11];
  [(GAXTimeRestrictionManager *)self setExpirationTimer:v10];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v12 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v13 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v6 + v7;
    v16 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(v12);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = v15 - [v18 integerValue];
        if (v19 > v6)
        {
          v20 = objc_alloc(MEMORY[0x1E6988750]);
          v21 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
          v22 = [v20 initWithTargetAccessQueue:v21];

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke_2;
          v24[3] = &unk_1E71EA128;
          v24[4] = self;
          v24[5] = v18;
          [v22 afterDelay:v24 processBlock:v19 - v6];
          v23 = [(GAXTimeRestrictionManager *)self alarmTimers];
          [v23 addObject:v22];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v14);
  }
}

void __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) alarmDurationsInSeconds];
  [v2 removeAllObjects];

  [*(a1 + 32) _removeAllTimers];
  [*(a1 + 32) setActive:0];
  v3 = [*(a1 + 32) delegate];
  [v3 timeDidExpireForTimeRestriction:*(a1 + 32)];
}

void __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 timeAlarmDidOccurForTimeRestriction:*(a1 + 32)];

  v3 = [*(a1 + 32) alarmDurationsInSeconds];
  [v3 removeObject:*(a1 + 40)];
}

- (void)_removeAllTimers
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  [(GAXTimeRestrictionManager *)self _removeAllAlarmTimers];
  [(GAXTimeRestrictionManager *)self _removeExpirationTimer];
}

- (void)_removeExpirationTimer
{
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  v6 = [(GAXTimeRestrictionManager *)self expirationTimer];
  [v6 cancel];

  [(GAXTimeRestrictionManager *)self setExpirationTimer:0];
}

- (void)_removeAllAlarmTimers
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v4 = [v3 canWriteInCurrentExecutionThread];

  if ((v4 & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [(GAXTimeRestrictionManager *)self alarmTimers];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = [(GAXTimeRestrictionManager *)self alarmTimers];
  [v11 removeAllObjects];
}

- (GAXTimeRestrictionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)initWithAssertedAccessQueue:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 label];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(&dword_18B15E000, v2, v3, "This code must execute in a writing block on AXAccessQueue: %@", v4, v5, v6, v7, v8);
}

- (void)remainingTimeInSeconds
{
  v1 = [a1 assertedAccessQueue];
  v2 = [v1 label];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(&dword_18B15E000, v3, v4, "This code must execute in a reading (or writing) block on AXAccessQueue: %@", v5, v6, v7, v8, v9);
}

- (void)beginWithDuration:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 assertedAccessQueue];
  v2 = [v1 label];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_8(&dword_18B15E000, v3, v4, "This code must execute in a writing block on AXAccessQueue: %@", v5, v6, v7, v8, v9);
}

@end