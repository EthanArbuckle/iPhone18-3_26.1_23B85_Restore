@interface BSWatchdog
- (BSWatchdog)initWithProvider:(id)a3 queue:(id)a4 completion:(id)a5;
- (BSWatchdog)initWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5;
- (id)description;
- (void)_completeWatchdogAfterFiring:(void *)a1;
- (void)_setupTimerWithInterval:(double)a3 handler:;
- (void)dealloc;
- (void)invalidate;
- (void)setDelegate:(id)a3;
- (void)start;
@end

@implementation BSWatchdog

- (void)start
{
  if (!self->_timer && !self->_invalidated && !self->_completed)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF00]);
    startDate = self->_startDate;
    self->_startDate = v3;

    if (objc_opt_respondsToSelector())
    {
      [(BSWatchdogDelegate *)self->_delegate watchdogStarted:self];
    }

    timeout = self->_timeout;
    if (timeout >= 1.0)
    {
      v6 = self->_timeout;
    }

    else
    {
      v6 = 1.0;
    }

    v7 = fmax(timeout + -1.0, 1.0);
    if (v6 <= v7)
    {
      v7 = v6;
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__BSWatchdog__startWatchdogTimer__block_invoke;
    v8[3] = &unk_1E72CADE8;
    v8[4] = self;
    [(BSWatchdog *)self _setupTimerWithInterval:v8 handler:v7];
  }
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_queue);
  if (!self->_invalidated)
  {
    self->_invalidated = 1;

    [(BSWatchdog *)self _completeWatchdogAfterFiring:?];
  }
}

- (void)dealloc
{
  if (!self->_invalidated)
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    [v4 handleFailureInMethod:a2 object:self file:@"BSWatchdog.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"_invalidated"}];
  }

  v5.receiver = self;
  v5.super_class = BSWatchdog;
  [(BSWatchdog *)&v5 dealloc];
}

- (BSWatchdog)initWithProvider:(id)a3 queue:(id)a4 completion:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"BSWatchdog.m" lineNumber:35 description:{@"Invalid parameter not satisfying: %@", @"provider"}];
  }

  [v10 watchdogTimeout];
  v13 = [(BSWatchdog *)self initWithTimeout:v11 queue:v12 completion:?];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_provider, a3);
  }

  return v14;
}

- (BSWatchdog)initWithTimeout:(double)a3 queue:(id)a4 completion:(id)a5
{
  v10 = a4;
  v11 = a5;
  if (!v10)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"BSWatchdog.m" lineNumber:48 description:{@"Invalid parameter not satisfying: %@", @"queue"}];
  }

  v12 = [(BSWatchdog *)self init];
  v13 = v12;
  if (v12)
  {
    v12->_timeout = a3;
    objc_storeStrong(&v12->_queue, a4);
    v14 = [v11 copy];
    completion = v13->_completion;
    v13->_completion = v14;
  }

  return v13;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [(BSWatchdog *)self timeout];
  v4 = [v3 appendFloat:@"timeout" withName:?];
  if (self->_completed)
  {
    v5 = [v3 appendObject:@"(completed)" withName:0];
  }

  else
  {
    if (self->_provider)
    {
      v6 = [BSDescriptionBuilder succinctDescriptionForObject:?];
      v7 = [v3 appendObject:v6 withName:@"provider"];
    }

    if (self->_delegate)
    {
      v8 = [BSDescriptionBuilder succinctDescriptionForObject:?];
      v9 = [v3 appendObject:v8 withName:@"delegate"];
    }
  }

  v10 = [v3 build];

  return v10;
}

- (void)setDelegate:(id)a3
{
  v8 = a3;
  dispatch_assert_queue_V2(self->_queue);
  delegate = self->_delegate;
  p_delegate = &self->_delegate;
  v7 = v8;
  if (delegate != v8)
  {
    objc_storeStrong(p_delegate, a3);
    v7 = v8;
  }
}

- (void)_completeWatchdogAfterFiring:(void *)a1
{
  if (a1)
  {
    v3 = a1;
    v10 = v3;
    if ((*(v3 + 25) & 1) == 0)
    {
      *(v3 + 25) = 1;
      if ((a2 & 1) == 0)
      {
        [v3 _watchdogInvalidated];
        if (objc_opt_respondsToSelector())
        {
          [v10[4] watchdogCancelled:?];
        }
      }

      v4 = v10;
      v5 = v10[2];
      if (v5)
      {
        v5[2](v5, a2);
        v6 = v10[2];
        v10[2] = 0;

        v4 = v10;
      }

      v7 = v4[4];
      v4[4] = 0;

      v8 = v10[5];
      v10[5] = 0;

      v3 = v10;
    }

    [v3[1] invalidate];
    v9 = v10[1];
    v10[1] = 0;
  }
}

- (void)_setupTimerWithInterval:(double)a3 handler:
{
  v5 = a2;
  [*(a1 + 8) invalidate];
  v6 = *(a1 + 8);
  *(a1 + 8) = 0;

  v7 = [BSAbsoluteMachTimer alloc];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<BSWatchdog:%@>", *(a1 + 32)];
  v9 = [(BSAbsoluteMachTimer *)v7 initWithIdentifier:v8];
  v10 = *(a1 + 8);
  *(a1 + 8) = v9;

  v11 = *(a1 + 8);
  v12 = *(a1 + 56);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __46__BSWatchdog__setupTimerWithInterval_handler___block_invoke;
  v14[3] = &unk_1E72CB7B0;
  v13 = v5;
  v15 = v13;
  [v11 scheduleWithFireInterval:v12 leewayInterval:v14 queue:a3 handler:0.0];
}

uint64_t __46__BSWatchdog__setupTimerWithInterval_handler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __33__BSWatchdog__startWatchdogTimer__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __33__BSWatchdog__stageOneTimerFired__block_invoke;
    v2[3] = &unk_1E72CADE8;
    v2[4] = v1;
    [(BSWatchdog *)v1 _setupTimerWithInterval:v2 handler:1.0];
  }
}

void __33__BSWatchdog__stageOneTimerFired__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    *(v1 + 26) = 1;
    [v1 _watchdogTimerFired];
    if (objc_opt_respondsToSelector())
    {
      [*(v1 + 32) watchdogFired:v1];
    }

    [(BSWatchdog *)v1 _completeWatchdogAfterFiring:?];
  }
}

@end