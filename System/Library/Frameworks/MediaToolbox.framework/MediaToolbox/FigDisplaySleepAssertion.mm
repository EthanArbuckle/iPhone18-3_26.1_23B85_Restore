@interface FigDisplaySleepAssertion
- (FigDisplaySleepAssertion)initWithReason:(id)a3 queue:(id)a4 expirationHandler:(id)a5;
- (unsigned)resetIdleTimerOnBehalfOfSceneWithPID:(int)a3;
- (void)dealloc;
@end

@implementation FigDisplaySleepAssertion

- (FigDisplaySleepAssertion)initWithReason:(id)a3 queue:(id)a4 expirationHandler:(id)a5
{
  if (initWithReason_queue_expirationHandler__onceToken != -1)
  {
    [FigDisplaySleepAssertion initWithReason:queue:expirationHandler:];
  }

  v14.receiver = self;
  v14.super_class = FigDisplaySleepAssertion;
  v9 = [(FigDisplaySleepAssertion *)&v14 init];
  if (v9)
  {
    *(v9 + 2) = a3;
    v10 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, a4);
    *(v9 + 1) = v10;
    *(v9 + 3) = 0;
    *(v9 + 4) = 0;
    if (v10)
    {
      dispatch_source_set_timer(v10, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
      v11 = *(v9 + 1);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __67__FigDisplaySleepAssertion_initWithReason_queue_expirationHandler___block_invoke_2;
      handler[3] = &unk_1E7492498;
      handler[4] = a5;
      dispatch_source_set_event_handler(v11, handler);
      dispatch_activate(*(v9 + 1));
    }
  }

  return v9;
}

uint64_t __67__FigDisplaySleepAssertion_initWithReason_queue_expirationHandler___block_invoke()
{
  result = objc_opt_class();
  ITIdleTimerStateClass = result;
  return result;
}

- (void)dealloc
{
  timer = self->_timer;
  if (timer)
  {
    dispatch_release(timer);
  }

  idleTimerAssertion = self->_idleTimerAssertion;
  if (idleTimerAssertion)
  {
    [(BSInvalidatable *)idleTimerAssertion invalidate];

    self->_idleTimerAssertion = 0;
  }

  v5.receiver = self;
  v5.super_class = FigDisplaySleepAssertion;
  [(FigDisplaySleepAssertion *)&v5 dealloc];
}

- (unsigned)resetIdleTimerOnBehalfOfSceneWithPID:(int)a3
{
  if (self->_timer)
  {
    idleTimerAssertion = self->_idleTimerAssertion;
    if (idleTimerAssertion)
    {
      v5 = 1;
    }

    else
    {
      v5 = ITIdleTimerStateClass == 0;
    }

    if (!v5)
    {
      v6 = *&a3;
      v7 = [ITIdleTimerStateClass sharedInstance];
      if (v6 <= 0)
      {
        idleTimerAssertion = [v7 newAssertionToDisableIdleTimerForReason:self->_reason error:0];
      }

      else
      {
        idleTimerAssertion = [v7 newAssertionToDisableIdleTimerOnBehalfOfSceneWithPID:v6 forReason:self->_reason error:0];
      }

      self->_idleTimerAssertion = idleTimerAssertion;
    }

    if (idleTimerAssertion)
    {
      v8 = mach_absolute_time();
      if (FigHostTimeToNanoseconds() >= 0xFE502B)
      {
        timer = self->_timer;
        v10 = dispatch_time(0, 2000000000);
        dispatch_source_set_timer(timer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
        self->_lastIdleTimerResetTime = v8;
      }

      LOBYTE(idleTimerAssertion) = 1;
    }
  }

  else
  {
    LOBYTE(idleTimerAssertion) = 0;
  }

  return idleTimerAssertion;
}

@end