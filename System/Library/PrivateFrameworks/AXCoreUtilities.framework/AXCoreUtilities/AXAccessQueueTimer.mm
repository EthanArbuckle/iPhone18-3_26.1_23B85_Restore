@interface AXAccessQueueTimer
+ (id)timerTargettingMainAccessQueue;
- (AXAccessQueueTimer)initWithTargetAccessQueue:(id)queue;
- (NSString)description;
- (void)_afterDelay:(double)delay processBlock:(id)block shouldTreatAsWritingBlock:(BOOL)writingBlock;
- (void)_didFinishProcessingBlock;
- (void)_performEnqueuedWritingBlock:(id)block asynchronousExecutionWarningHandler:(SEL)handler;
- (void)_reallyCancel;
- (void)_warnAboutAsynchronousCancelling;
- (void)_warnAboutAsynchronousScheduling;
- (void)cancel;
- (void)dealloc;
@end

@implementation AXAccessQueueTimer

+ (id)timerTargettingMainAccessQueue
{
  v2 = [self alloc];
  v3 = +[AXAccessQueue mainAccessQueue];
  v4 = [v2 initWithTargetAccessQueue:v3];

  return v4;
}

- (AXAccessQueueTimer)initWithTargetAccessQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AXAccessQueueTimer;
  v5 = [(AXAccessQueueTimer *)&v9 init];
  v6 = v5;
  if (v5)
  {
    [(AXAccessQueueTimer *)v5 setState:0];
    if (queueCopy)
    {
      [(AXAccessQueueTimer *)v6 setAccessQueue:queueCopy];
      [(AXAccessQueueTimer *)v6 setAccessQueueIsExternal:1];
    }

    else
    {
      v7 = [[AXAccessQueue alloc] initWithParentClass:objc_opt_class() description:@"TimerAccessQueue" appendUUIDToLabel:1];
      if (v7)
      {
        [(AXAccessQueueTimer *)v6 setAccessQueue:v7];
      }

      else
      {

        v6 = 0;
      }
    }
  }

  return v6;
}

- (void)dealloc
{
  accessQueue = [(AXAccessQueueTimer *)self accessQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __29__AXAccessQueueTimer_dealloc__block_invoke;
  v5[3] = &unk_1E735AD18;
  v5[4] = self;
  [accessQueue performSynchronousWritingBlock:v5];

  v4.receiver = self;
  v4.super_class = AXAccessQueueTimer;
  [(AXAccessQueueTimer *)&v4 dealloc];
}

- (void)_performEnqueuedWritingBlock:(id)block asynchronousExecutionWarningHandler:(SEL)handler
{
  blockCopy = block;
  accessQueue = [(AXAccessQueueTimer *)self accessQueue];
  if ([accessQueue canOnlyReadInCurrentExecutionThread])
  {
    if (objc_opt_respondsToSelector())
    {
      ([(AXAccessQueueTimer *)self methodForSelector:handler])(self, handler);
    }

    [accessQueue performAsynchronousWritingBlock:blockCopy];
  }

  else
  {
    [accessQueue performSynchronousWritingBlock:blockCopy];
  }
}

- (void)_afterDelay:(double)delay processBlock:(id)block shouldTreatAsWritingBlock:(BOOL)writingBlock
{
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x3032000000;
  v13[3] = __Block_byref_object_copy_;
  v13[4] = __Block_byref_object_dispose_;
  v14 = [blockCopy copy];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__4;
  v11[4] = __Block_byref_object_dispose__5;
  selfCopy = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke;
  v9[3] = &unk_1E735AEB0;
  *&v9[6] = delay;
  writingBlockCopy = writingBlock;
  v9[4] = v11;
  v9[5] = v13;
  [(AXAccessQueueTimer *)selfCopy _performEnqueuedWritingBlock:v9 asynchronousExecutionWarningHandler:sel__warnAboutAsynchronousScheduling];
  _Block_object_dispose(v11, 8);

  _Block_object_dispose(v13, 8);
}

void __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke(uint64_t a1)
{
  v2 = a1 + 32;
  if ([*(*(*(a1 + 32) + 8) + 40) automaticallyCancelPendingBlockUponSchedulingNewBlock] && objc_msgSend(*(*(*v2 + 8) + 40), "state"))
  {
    [*(*(*v2 + 8) + 40) _reallyCancel];
  }

  if ([*(*(*v2 + 8) + 40) state])
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_cold_1(v2, a1);
    }
  }

  else
  {
    [*(*(*v2 + 8) + 40) setState:1];
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, 0);
    if (v3)
    {
      v4 = dispatch_time(0, (*(a1 + 48) * 1000000000.0));
      dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2;
      handler[3] = &unk_1E735AE88;
      v12 = *(a1 + 56);
      v11 = *(a1 + 32);
      dispatch_source_set_event_handler(v3, handler);
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_4;
      v9[3] = &unk_1E735AD40;
      v9[4] = *(a1 + 32);
      dispatch_source_set_cancel_handler(v3, v9);
      dispatch_resume(v3);
      [*(*(*(a1 + 32) + 8) + 40) setDispatchTimer:v3];
    }

    else
    {
      v5 = *(*(a1 + 40) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = 0;

      v7 = *(*(a1 + 32) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = 0;
    }
  }
}

void __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(*(a1 + 32) + 8) + 40) accessQueue];
  if (!v2)
  {
    v3 = AXLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2_cold_1(v3);
    }
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_6;
  v5[3] = &unk_1E735AE60;
  v8 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6 = v2;
  v4 = v2;
  [v4 performSynchronousWritingBlock:v5];
}

void __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_6(uint64_t a1)
{
  if ([*(*(*(a1 + 40) + 8) + 40) state] == 1)
  {
    [*(*(*(a1 + 40) + 8) + 40) _reallyCancel];
    [*(*(*(a1 + 40) + 8) + 40) setState:2];
    v2 = *(a1 + 56);
    v3 = [*(*(*(a1 + 40) + 8) + 40) isActive];
    if (v2 == 1)
    {
      [*(*(*(a1 + 40) + 8) + 40) setActive:1];
      (*(*(*(*(a1 + 48) + 8) + 40) + 16))();
      [*(*(*(a1 + 40) + 8) + 40) setActive:v3];
      v4 = *(*(*(a1 + 40) + 8) + 40);

      [v4 _didFinishProcessingBlock];
    }

    else
    {
      [*(*(*(a1 + 40) + 8) + 40) setActive:1];
      v5 = *(a1 + 32);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2_7;
      v8[3] = &unk_1E735AE38;
      v10 = *(a1 + 48);
      v6 = v5;
      v7 = *(a1 + 40);
      v9 = v6;
      v11 = v7;
      v12 = v3;
      [v6 performAsynchronousReadingBlock:v8];
    }
  }
}

uint64_t __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2_7(uint64_t a1)
{
  (*(*(*(*(a1 + 40) + 8) + 40) + 16))();
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_3;
  v4[3] = &unk_1E735AE10;
  v4[4] = *(a1 + 48);
  v5 = *(a1 + 56);
  return [v2 performAsynchronousWritingBlock:v4];
}

uint64_t __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_3(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 40) setActive:*(a1 + 40)];
  v2 = *(*(*(a1 + 32) + 8) + 40);

  return [v2 _didFinishProcessingBlock];
}

void __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_4(uint64_t a1)
{
  v1 = [*(*(*(a1 + 32) + 8) + 40) accessQueue];
  if (!v1)
  {
    v2 = AXLogCommon();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_2_cold_1(v2);
    }
  }
}

- (void)_didFinishProcessingBlock
{
  v8 = *MEMORY[0x1E69E9840];
  accessQueue = [self accessQueue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_warnAboutAsynchronousScheduling
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sel_getName(a2);
  accessQueue = [self accessQueue];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_19159B000, v7, v8, "Can't schedule timer %@ synchronously; scheduling it asynchronously instead. To avoid this, break on [%@ %s], find the call site initiating a reading block onto %@, and change that to a writing block.", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (void)cancel
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __28__AXAccessQueueTimer_cancel__block_invoke;
  v2[3] = &unk_1E735AD18;
  v2[4] = self;
  [(AXAccessQueueTimer *)self _performEnqueuedWritingBlock:v2 asynchronousExecutionWarningHandler:sel__warnAboutAsynchronousCancelling];
}

- (void)_reallyCancel
{
  v8 = *MEMORY[0x1E69E9840];
  accessQueue = [self accessQueue];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_warnAboutAsynchronousCancelling
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sel_getName(a2);
  accessQueue = [self accessQueue];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_19159B000, v7, v8, "Can't cancel timer %@ synchronously; cancelling it asynchronously instead. To avoid this, break on [%@ %s], find the call site initiating a reading block onto %@, and change that to a writing block.", v9, v10, v11, v12, v14);

  v13 = *MEMORY[0x1E69E9840];
}

- (NSString)description
{
  state = [(AXAccessQueueTimer *)self state];
  if (state > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E735AED0[state];
  }

  label = [(AXAccessQueueTimer *)self label];
  v6 = MEMORY[0x1E696AEC0];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  if (label)
  {
    v9 = @"; label = ";
  }

  else
  {
    v9 = &stru_1F0579798;
  }

  if (label)
  {
    v10 = label;
  }

  else
  {
    v10 = &stru_1F0579798;
  }

  if (label)
  {
    v11 = @"";
  }

  else
  {
    v11 = &stru_1F0579798;
  }

  if ([(AXAccessQueueTimer *)self isActive])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  automaticallyCancelPendingBlockUponSchedulingNewBlock = [(AXAccessQueueTimer *)self automaticallyCancelPendingBlockUponSchedulingNewBlock];
  v14 = @"; automaticallyCancelPendingBlockUponSchedulingNewBlock = YES";
  if (!automaticallyCancelPendingBlockUponSchedulingNewBlock)
  {
    v14 = &stru_1F0579798;
  }

  v15 = [v6 stringWithFormat:@"<%@: %p%@%@%@ state = %@; active = %@%@>", v8, self, v9, v10, v11, v4, v12, v14];;

  return v15;
}

void __73__AXAccessQueueTimer__afterDelay_processBlock_shouldTreatAsWritingBlock___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 48);
  v4 = &stru_1F0579798;
  [*(*(*a1 + 8) + 40) accessQueueIsExternal];
  v5 = [*(*(*a1 + 8) + 40) accessQueueIsExternal];
  if (v5)
  {
    v4 = [*(*(*a1 + 8) + 40) accessQueue];
  }

  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v6, v7, v8, v9, v10, 0x2Au);
  if (v5)
  {
  }

  v11 = *MEMORY[0x1E69E9840];
}

@end