@interface GAXTimeRestrictionManager
- (GAXTimeRestrictionManager)initWithAssertedAccessQueue:(id)queue;
- (GAXTimeRestrictionManagerDelegate)delegate;
- (id)description;
- (int64_t)remainingTimeInSeconds;
- (void)_addAlarmForDuration:(int64_t)duration;
- (void)_removeAllAlarmTimers;
- (void)_removeAllTimers;
- (void)_removeExpirationTimer;
- (void)_scheduleTimers;
- (void)beginWithDuration:(int64_t)duration;
- (void)cancel;
- (void)pause;
- (void)remainingTimeInSeconds;
- (void)resume;
@end

@implementation GAXTimeRestrictionManager

- (GAXTimeRestrictionManager)initWithAssertedAccessQueue:(id)queue
{
  queueCopy = queue;
  if (([queueCopy canWriteInCurrentExecutionThread] & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager initWithAssertedAccessQueue:queueCopy];
    }
  }

  v11.receiver = self;
  v11.super_class = GAXTimeRestrictionManager;
  v6 = [(GAXTimeRestrictionManager *)&v11 init];
  v7 = v6;
  if (v6)
  {
    [(GAXTimeRestrictionManager *)v6 setAssertedAccessQueue:queueCopy];
    array = [MEMORY[0x1E695DF70] array];
    [(GAXTimeRestrictionManager *)v7 setAlarmTimers:array];

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

  startTime = [(GAXTimeRestrictionManager *)self startTime];
  [startTime timeIntervalSinceReferenceDate];
  v9 = v8;

  startTime2 = [(GAXTimeRestrictionManager *)self startTime];
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [v6 appendFormat:@"  start time:%@ s (absolute:%@ s)\n", startTime2, v11];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[GAXTimeRestrictionManager expirationDurationInSeconds](self, "expirationDurationInSeconds")}];
  v13 = [MEMORY[0x1E696AD98] numberWithDouble:{v9 + -[GAXTimeRestrictionManager expirationDurationInSeconds](self, "expirationDurationInSeconds")}];
  [v6 appendFormat:@"  expiration duration:%@ s (absolute:%@ s)\n", v12, v13];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  alarmDurationsInSeconds = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v15 = [alarmDurationsInSeconds countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(alarmDurationsInSeconds);
        }

        v19 = *(*(&v22 + 1) + 8 * i);
        v20 = [MEMORY[0x1E696AD98] numberWithDouble:{v9 + objc_msgSend(v19, "integerValue")}];
        [v6 appendFormat:@"  alarm:%@ s (absolute:%@ s)\n", v19, v20];
      }

      v16 = [alarmDurationsInSeconds countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v16);
  }

  return v6;
}

- (int64_t)remainingTimeInSeconds
{
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canReadInCurrentExecutionThread = [assertedAccessQueue canReadInCurrentExecutionThread];

  if ((canReadInCurrentExecutionThread & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(GAXTimeRestrictionManager *)self remainingTimeInSeconds];
    }
  }

  startTime = [(GAXTimeRestrictionManager *)self startTime];
  [startTime timeIntervalSinceNow];
  v8 = fabs(v7);

  expirationDurationInSeconds = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  return (expirationDurationInSeconds - v8) & ~((expirationDurationInSeconds - v8) >> 63);
}

- (void)beginWithDuration:(int64_t)duration
{
  v17 = *MEMORY[0x1E69E9840];
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isActive])
  {
    guidedAccessOverrideTimeRestrictionDuration = GAXLogTimeRestrictions();
    if (os_log_type_enabled(guidedAccessOverrideTimeRestrictionDuration, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_18B15E000, guidedAccessOverrideTimeRestrictionDuration, OS_LOG_TYPE_DEFAULT, "Can't begin time restriction, it's already active", &v15, 2u);
    }
  }

  else if (duration <= 0)
  {
    guidedAccessOverrideTimeRestrictionDuration = GAXLogTimeRestrictions();
    if (os_log_type_enabled(guidedAccessOverrideTimeRestrictionDuration, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [MEMORY[0x1E696AD98] numberWithInteger:duration];
      v15 = 138543362;
      v16 = v13;
      _os_log_impl(&dword_18B15E000, guidedAccessOverrideTimeRestrictionDuration, OS_LOG_TYPE_DEFAULT, "Can't begin time restriction, specified duration is too short: %{public}@", &v15, 0xCu);
    }
  }

  else
  {
    [(GAXTimeRestrictionManager *)self setExpirationDurationInSeconds:60 * duration];
    [(GAXTimeRestrictionManager *)self setActive:1];
    v9 = +[AXSettings sharedInstance];
    guidedAccessOverrideTimeRestrictionDuration = [v9 guidedAccessOverrideTimeRestrictionDuration];

    if (guidedAccessOverrideTimeRestrictionDuration)
    {
      [guidedAccessOverrideTimeRestrictionDuration doubleValue];
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

    [(GAXTimeRestrictionManager *)self _addAlarmForDuration:duration];
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
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  if ([(GAXTimeRestrictionManager *)self isActive])
  {
    delegate = [(GAXTimeRestrictionManager *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if (v7)
    {
      delegate2 = [(GAXTimeRestrictionManager *)self delegate];
      [delegate2 timeRestrictionWasCancelled:self];
    }
  }

  [(GAXTimeRestrictionManager *)self setActive:0];
  [(GAXTimeRestrictionManager *)self setPaused:0];
  [(GAXTimeRestrictionManager *)self _removeAllTimers];
  alarmDurationsInSeconds = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  [alarmDurationsInSeconds removeAllObjects];

  v10 = GAXLogTimeRestrictions();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [GAXTimeRestrictionManager cancel];
  }
}

- (void)pause
{
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
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
    expirationDurationInSeconds = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceReferenceDate];
    v9 = v8;
    startTime = [(GAXTimeRestrictionManager *)self startTime];
    [startTime timeIntervalSinceReferenceDate];
    [(GAXTimeRestrictionManager *)self setExpirationDurationInSeconds:(v11 - v9 + expirationDurationInSeconds)];

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
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
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

- (void)_addAlarmForDuration:(int64_t)duration
{
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
  {
    v7 = AXLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  v8 = -1.0;
  v9 = 30.0;
  if (duration >= 6)
  {
    if (duration >= 0xD)
    {
      if (duration >= 0x14)
      {
        v9 = dbl_18B2F87E0[duration < 0x1E];
        if (duration >= 0x1E)
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
  alarmDurationsInSeconds = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v12 = [MEMORY[0x1E696AD98] numberWithDouble:v9];
  [alarmDurationsInSeconds addObject:v12];

  if (v8 > 0.0)
  {
    alarmDurationsInSeconds2 = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
    v14 = [MEMORY[0x1E696AD98] numberWithDouble:v8];
    [alarmDurationsInSeconds2 addObject:v14];
  }
}

- (void)_scheduleTimers
{
  v31 = *MEMORY[0x1E69E9840];
  date = [MEMORY[0x1E695DF00] date];
  [(GAXTimeRestrictionManager *)self setStartTime:date];

  startTime = [(GAXTimeRestrictionManager *)self startTime];
  [startTime timeIntervalSinceReferenceDate];
  v6 = v5;

  expirationDurationInSeconds = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  v8 = objc_alloc(MEMORY[0x1E6988750]);
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  v10 = [v8 initWithTargetAccessQueue:assertedAccessQueue];

  expirationDurationInSeconds2 = [(GAXTimeRestrictionManager *)self expirationDurationInSeconds];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke;
  v29[3] = &unk_1E71E9B98;
  v29[4] = self;
  [v10 afterDelay:v29 processBlock:expirationDurationInSeconds2];
  [(GAXTimeRestrictionManager *)self setExpirationTimer:v10];
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  alarmDurationsInSeconds = [(GAXTimeRestrictionManager *)self alarmDurationsInSeconds];
  v13 = [alarmDurationsInSeconds countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = v6 + expirationDurationInSeconds;
    v16 = *v26;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(alarmDurationsInSeconds);
        }

        v18 = *(*(&v25 + 1) + 8 * i);
        v19 = v15 - [v18 integerValue];
        if (v19 > v6)
        {
          v20 = objc_alloc(MEMORY[0x1E6988750]);
          assertedAccessQueue2 = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
          v22 = [v20 initWithTargetAccessQueue:assertedAccessQueue2];

          v24[0] = MEMORY[0x1E69E9820];
          v24[1] = 3221225472;
          v24[2] = __44__GAXTimeRestrictionManager__scheduleTimers__block_invoke_2;
          v24[3] = &unk_1E71EA128;
          v24[4] = self;
          v24[5] = v18;
          [v22 afterDelay:v24 processBlock:v19 - v6];
          alarmTimers = [(GAXTimeRestrictionManager *)self alarmTimers];
          [alarmTimers addObject:v22];
        }
      }

      v14 = [alarmDurationsInSeconds countByEnumeratingWithState:&v25 objects:v30 count:16];
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
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
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
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
  {
    v5 = AXLogCommon();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [GAXTimeRestrictionManager beginWithDuration:?];
    }
  }

  expirationTimer = [(GAXTimeRestrictionManager *)self expirationTimer];
  [expirationTimer cancel];

  [(GAXTimeRestrictionManager *)self setExpirationTimer:0];
}

- (void)_removeAllAlarmTimers
{
  v17 = *MEMORY[0x1E69E9840];
  assertedAccessQueue = [(GAXTimeRestrictionManager *)self assertedAccessQueue];
  canWriteInCurrentExecutionThread = [assertedAccessQueue canWriteInCurrentExecutionThread];

  if ((canWriteInCurrentExecutionThread & 1) == 0)
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
  alarmTimers = [(GAXTimeRestrictionManager *)self alarmTimers];
  v7 = [alarmTimers countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(alarmTimers);
        }

        [*(*(&v12 + 1) + 8 * v10++) cancel];
      }

      while (v8 != v10);
      v8 = [alarmTimers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  alarmTimers2 = [(GAXTimeRestrictionManager *)self alarmTimers];
  [alarmTimers2 removeAllObjects];
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
  assertedAccessQueue = [self assertedAccessQueue];
  label = [assertedAccessQueue label];
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