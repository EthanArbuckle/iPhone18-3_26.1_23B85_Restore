@interface AVRunLoopCondition
+ (void)initialize;
- (AVRunLoopCondition)init;
- (BOOL)_waitInMode:(id)mode untilDate:(id)date;
- (void)_signalRunLoopWithState:(id)state;
- (void)broadcast;
- (void)dealloc;
- (void)signal;
@end

@implementation AVRunLoopCondition

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

- (AVRunLoopCondition)init
{
  v4.receiver = self;
  v4.super_class = AVRunLoopCondition;
  v2 = [(NSCondition *)&v4 init];
  if (v2)
  {
    v2->_runLoopStateList = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  return v2;
}

- (void)signal
{
  if ([(NSMutableArray *)self->_runLoopStateList count])
  {
    v3 = [(NSMutableArray *)self->_runLoopStateList objectAtIndex:0];

    [(AVRunLoopCondition *)self _signalRunLoopWithState:v3];
  }
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVRunLoopCondition;
  [(NSCondition *)&v3 dealloc];
}

- (BOOL)_waitInMode:(id)mode untilDate:(id)date
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = objc_autoreleasePoolPush();
  if (!mode)
  {
    mode = @"AVRunLoopConditionSignalRunLoopMode";
  }

  Current = CFRunLoopGetCurrent();
  v9 = [AVRunLoopConditionRunLoopState runLoopStateWithRunLoop:Current];
  context.version = 0;
  context.info = v9;
  context.retain = MEMORY[0x1E695D7C8];
  context.release = MEMORY[0x1E695D7C0];
  memset(&context.copyDescription, 0, 40);
  context.perform = AVRunLoopConditionSignal;
  v10 = CFRunLoopSourceCreate(*MEMORY[0x1E695E480], 0, &context);
  v11 = v10;
  [(NSMutableArray *)self->_runLoopStateList addObject:v9];
  CFRunLoopAddSource(Current, v10, mode);
  [(AVRunLoopConditionRunLoopState *)v9 setSignalSource:v10];
  [(NSCondition *)self unlock];
  if (![(AVRunLoopConditionRunLoopState *)v9 signaled])
  {
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = 1000000000.0;
      if (date)
      {
        if ([date compare:{objc_msgSend(MEMORY[0x1E695DF00], "date", 1000000000.0)}] != 1)
        {
          if (dword_1ED5AC178)
          {
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          objc_autoreleasePoolPop(v12);
          break;
        }

        [date timeIntervalSinceNow];
      }

      CFRunLoopRunInMode(mode, v13, 1u);
      objc_autoreleasePoolPop(v12);
    }

    while (![(AVRunLoopConditionRunLoopState *)v9 signaled]);
  }

  [(NSCondition *)self lock:v16];
  [(AVRunLoopConditionRunLoopState *)v9 setSignalSource:0];
  CFRunLoopRemoveSource(Current, v10, mode);
  [(NSMutableArray *)self->_runLoopStateList removeObject:v9];
  signaled = [(AVRunLoopConditionRunLoopState *)v9 signaled];
  objc_autoreleasePoolPop(v7);
  return signaled;
}

- (void)broadcast
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  runLoopStateList = self->_runLoopStateList;
  v4 = [(NSMutableArray *)runLoopStateList countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(runLoopStateList);
        }

        [(AVRunLoopCondition *)self _signalRunLoopWithState:*(*(&v8 + 1) + 8 * i)];
      }

      v5 = [(NSMutableArray *)runLoopStateList countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)_signalRunLoopWithState:(id)state
{
  CFRunLoopSourceSignal([state signalSource]);
  runLoop = [state runLoop];

  CFRunLoopWakeUp(runLoop);
}

@end