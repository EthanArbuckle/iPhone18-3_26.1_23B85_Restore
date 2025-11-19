@interface AXAccessQueue
+ (id)backgroundAccessQueue;
+ (id)mainAccessQueue;
- (BOOL)canReadInCurrentExecutionThread;
- (BOOL)canWriteInCurrentExecutionThread;
- (NSString)label;
- (id)_initWithLabel:(id)a3 appendUUIDToLabel:(BOOL)a4 specialBehaviors:(unint64_t)a5;
- (id)description;
- (unint64_t)_accessQueueContextInCurrentExecutionThread;
- (void)_accessQueueContextInCurrentExecutionThread;
- (void)_performBlock:(id)a3 withDispatchFunction:(void *)a4 synchronously:(BOOL)a5 accessQueueContext:(unint64_t)a6;
- (void)afterDelay:(double)a3 processReadingBlock:(id)a4;
- (void)afterDelay:(double)a3 processWritingBlock:(id)a4;
- (void)performAsynchronousReadingBlock:(id)a3;
- (void)performAsynchronousWritingBlock:(id)a3;
- (void)performSynchronousReadingBlock:(id)a3;
- (void)performSynchronousWritingBlock:(id)a3;
@end

@implementation AXAccessQueue

+ (id)mainAccessQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AXAccessQueue_mainAccessQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (mainAccessQueue__AXMainAccessQueueOnceToken != -1)
  {
    dispatch_once(&mainAccessQueue__AXMainAccessQueueOnceToken, block);
  }

  v2 = mainAccessQueue__AXMainAccessQueue;

  return v2;
}

- (unint64_t)_accessQueueContextInCurrentExecutionThread
{
  if (![(AXAccessQueue *)self behavesWithoutErrorReporting]&& [(AXAccessQueue *)self behavesAsMainQueue])
  {
    v4 = AXLogCommon();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      [(AXAccessQueue *)a2 _accessQueueContextInCurrentExecutionThread];
    }
  }

  v5 = [MEMORY[0x1E696AF00] currentThread];
  v6 = [v5 threadDictionary];
  v7 = [(AXAccessQueue *)self threadLocalStorageKey];
  v8 = [v6 objectForKey:v7];
  v9 = [v8 unsignedIntegerValue];

  return v9;
}

+ (id)backgroundAccessQueue
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __38__AXAccessQueue_backgroundAccessQueue__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (backgroundAccessQueue__AXBackgroundAccessQueueOnceToken != -1)
  {
    dispatch_once(&backgroundAccessQueue__AXBackgroundAccessQueueOnceToken, block);
  }

  v2 = backgroundAccessQueue__AXBackgroundAccessQueue;

  return v2;
}

uint64_t __38__AXAccessQueue_backgroundAccessQueue__block_invoke(uint64_t a1)
{
  backgroundAccessQueue__AXBackgroundAccessQueue = [objc_alloc(*(a1 + 32)) initWithParentClass:*(a1 + 32) description:@"GlobalBackgroundQueue" appendUUIDToLabel:0];

  return MEMORY[0x1EEE66BB8]();
}

- (BOOL)canReadInCurrentExecutionThread
{
  if (![(AXAccessQueue *)self behavesAsMainQueue])
  {
    return [(AXAccessQueue *)self _accessQueueContextInCurrentExecutionThread]- 1 < 2;
  }

  v3 = MEMORY[0x1E696AF00];

  return [v3 isMainThread];
}

uint64_t __32__AXAccessQueue_mainAccessQueue__block_invoke(uint64_t a1)
{
  mainAccessQueue__AXMainAccessQueue = [objc_alloc(*(a1 + 32)) _initWithLabel:0 appendUUIDToLabel:0 specialBehaviors:1];

  return MEMORY[0x1EEE66BB8]();
}

- (id)_initWithLabel:(id)a3 appendUUIDToLabel:(BOOL)a4 specialBehaviors:(unint64_t)a5
{
  v6 = a4;
  v8 = a3;
  v25.receiver = self;
  v25.super_class = AXAccessQueue;
  v9 = [(AXAccessQueue *)&v25 init];
  v10 = v9;
  if (v9)
  {
    if ((a5 & 1) == 0)
    {
      v11 = [MEMORY[0x1E696AFB0] UUID];
      v12 = [v11 UUIDString];

      if (v8)
      {
        if (v6)
        {
          v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@-%@", v8, v12];
        }

        else
        {
          v13 = [v8 copy];
        }
      }

      else
      {
        v13 = v12;
      }

      v14 = v13;
      v15 = [v13 UTF8String];
      v16 = dispatch_queue_create(v15, MEMORY[0x1E69E96A8]);
      if (v16)
      {
        v17 = objc_alloc(MEMORY[0x1E696AEC0]);
        v18 = objc_opt_class();
        v19 = NSStringFromClass(v18);
        v20 = v19;
        if (!v8 || v6)
        {
          v21 = [v17 initWithFormat:@"%@-%@", v19, v14, v24];
        }

        else
        {
          v21 = [v17 initWithFormat:@"%@-%@-%@", v19, v14, v12];
        }

        v22 = v21;

        if (v22 && v12)
        {
          [(AXAccessQueue *)v10 setThreadLocalStorageKey:v22];
          [(AXAccessQueue *)v10 setConcurrentQueue:v16];
          [(AXAccessQueue *)v10 setSpecialBehaviors:a5];
LABEL_20:

          goto LABEL_21;
        }
      }

      else
      {
        v22 = v10;
      }

      v10 = 0;
      goto LABEL_20;
    }

    [(AXAccessQueue *)v9 setSpecialBehaviors:a5];
  }

LABEL_21:

  return v10;
}

- (NSString)label
{
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    v3 = @"Main access queue";
  }

  else
  {
    v4 = [(AXAccessQueue *)self concurrentQueue];
    label = dispatch_queue_get_label(v4);

    if (label)
    {
      v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:label];
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (void)performSynchronousReadingBlock:(id)a3
{
  v4 = a3;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockSynchronouslyOnMainThread(v4);
  }

  else
  {
    [(AXAccessQueue *)self _performBlock:v4 withDispatchFunction:MEMORY[0x1E69E97D0] synchronously:1 accessQueueContext:1];
  }
}

- (void)performSynchronousWritingBlock:(id)a3
{
  v4 = a3;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockSynchronouslyOnMainThread(v4);
  }

  else
  {
    [(AXAccessQueue *)self _performBlock:v4 withDispatchFunction:MEMORY[0x1E69E9770] synchronously:1 accessQueueContext:2];
  }
}

- (void)performAsynchronousReadingBlock:(id)a3
{
  block = a3;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockAsynchronouslyOnMainThread(block);
  }

  else
  {
    [(AXAccessQueue *)self _performBlock:block withDispatchFunction:MEMORY[0x1E69E9750] synchronously:0 accessQueueContext:1];
  }
}

- (void)performAsynchronousWritingBlock:(id)a3
{
  block = a3;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockAsynchronouslyOnMainThread(block);
  }

  else
  {
    [(AXAccessQueue *)self _performBlock:block withDispatchFunction:MEMORY[0x1E69E9768] synchronously:0 accessQueueContext:2];
  }
}

- (void)afterDelay:(double)a3 processReadingBlock:(id)a4
{
  v6 = a4;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockOnMainThreadAfterDelay(v6, a3);
  }

  else
  {
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    v8 = [(AXAccessQueue *)self concurrentQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AXAccessQueue_afterDelay_processReadingBlock___block_invoke;
    v9[3] = &unk_1E735B690;
    v9[4] = self;
    v10 = v6;
    dispatch_after(v7, v8, v9);
  }
}

- (void)afterDelay:(double)a3 processWritingBlock:(id)a4
{
  v6 = a4;
  if ([(AXAccessQueue *)self behavesAsMainQueue])
  {
    AXPerformBlockOnMainThreadAfterDelay(v6, a3);
  }

  else
  {
    v7 = dispatch_time(0, (a3 * 1000000000.0));
    v8 = dispatch_get_global_queue(0, 0);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __48__AXAccessQueue_afterDelay_processWritingBlock___block_invoke;
    v9[3] = &unk_1E735B690;
    v9[4] = self;
    v10 = v6;
    dispatch_after(v7, v8, v9);
  }
}

- (BOOL)canWriteInCurrentExecutionThread
{
  if (![(AXAccessQueue *)self behavesAsMainQueue])
  {
    return [(AXAccessQueue *)self _accessQueueContextInCurrentExecutionThread]== 2;
  }

  v3 = MEMORY[0x1E696AF00];

  return [v3 isMainThread];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(AXAccessQueue *)self label];
  v7 = [v3 stringWithFormat:@"<%@: %p label = %@>", v5, self, v6];;

  return v7;
}

- (void)_performBlock:(id)a3 withDispatchFunction:(void *)a4 synchronously:(BOOL)a5 accessQueueContext:(unint64_t)a6
{
  v7 = a5;
  v11 = a3;
  v12 = v11;
  if (!v11)
  {
    v13 = AXLogUI();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      [AXAccessQueue _performBlock:v13 withDispatchFunction:? synchronously:? accessQueueContext:?];
    }

    v11 = &__block_literal_global_24;
  }

  v14 = _Block_copy(v11);

  if (![(AXAccessQueue *)self behavesWithoutErrorReporting]&& [(AXAccessQueue *)self behavesAsMainQueue])
  {
    v15 = AXLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [(AXAccessQueue *)a2 _accessQueueContextInCurrentExecutionThread];
    }
  }

  if (!v7)
  {
    goto LABEL_15;
  }

  v16 = [(AXAccessQueue *)self _accessQueueContextInCurrentExecutionThread];
  if (v16 != 2)
  {
    if (v16 == 1)
    {
      if (a6 != 1)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D930] format:@"Trying to synchronously execute a writing block from within a reading block. This is illegal."];
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_15:
    v17 = [(AXAccessQueue *)self concurrentQueue];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __85__AXAccessQueue__performBlock_withDispatchFunction_synchronously_accessQueueContext___block_invoke_27;
    v18[3] = &unk_1E735BC48;
    v18[4] = self;
    v20 = a6;
    v19 = v14;
    (a4)(v17, v18);

    goto LABEL_16;
  }

LABEL_14:
  v14[2](v14);
LABEL_16:
}

void __85__AXAccessQueue__performBlock_withDispatchFunction_synchronously_accessQueueContext___block_invoke_27(uint64_t a1)
{
  v5 = [MEMORY[0x1E696AF00] currentThread];
  v2 = [v5 threadDictionary];
  v3 = [*(a1 + 32) threadLocalStorageKey];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 48)];
  [v2 setObject:v4 forKey:v3];
  (*(*(a1 + 40) + 16))();
  [v2 removeObjectForKey:v3];
}

- (void)_accessQueueContextInCurrentExecutionThread
{
  v8 = *MEMORY[0x1E69E9840];
  sel_getName(a1);
  OUTLINED_FUNCTION_0_5(&dword_19159B000, v1, v2, "%s makes no sense with the main access queue.", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x1E69E9840];
}

@end