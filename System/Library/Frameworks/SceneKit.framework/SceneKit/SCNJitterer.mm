@interface SCNJitterer
- (SCNJitterer)initWithDelegate:(id)delegate;
- (void)dealloc;
- (void)delegateWillDie;
- (void)jitter;
- (void)restart;
- (void)setEnabled:(BOOL)enabled;
- (void)stopIfNeeded;
- (void)update;
@end

@implementation SCNJitterer

- (void)restart
{
  if (self->_enabled)
  {
    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __22__SCNJitterer_restart__block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = self;
    dispatch_async(_updateQueue, block);
  }
}

void __22__SCNJitterer_restart__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 48);
    v4 = dispatch_time(0, 100000000);
    dispatch_source_set_timer(v3, v4, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(*(*(a1 + 32) + 48));
    *(*(a1 + 32) + 32) = 0;
  }
}

- (void)stopIfNeeded
{
  if (self->_enabled)
  {
    if (self->_state <= 1)
    {
      self->_state = 2;
    }

    block[5] = v2;
    block[6] = v3;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __27__SCNJitterer_stopIfNeeded__block_invoke;
    block[3] = &unk_2782FB608;
    block[4] = self;
    dispatch_async(_updateQueue, block);
  }
}

void __27__SCNJitterer_stopIfNeeded__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 32) & 1) == 0)
  {
    dispatch_suspend(*(v1 + 48));
    *(*(a1 + 32) + 32) = 1;
  }
}

- (SCNJitterer)initWithDelegate:(id)delegate
{
  v10.receiver = self;
  v10.super_class = SCNJitterer;
  v4 = [(SCNJitterer *)&v10 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_delegate, delegate);
    v5->_restartSourceIsSuspended = 1;
    v5->_state = 3;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x3052000000;
    v9[3] = __Block_byref_object_copy__0;
    v9[4] = __Block_byref_object_dispose__0;
    v9[5] = v5;
    v6 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _updateQueue);
    v5->_restartSource = v6;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __32__SCNJitterer_initWithDelegate___block_invoke;
    handler[3] = &unk_2782FB300;
    handler[4] = v9;
    dispatch_source_set_event_handler(v6, handler);
    _Block_object_dispose(v9, 8);
  }

  return v5;
}

- (void)dealloc
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__SCNJitterer_dealloc__block_invoke;
  block[3] = &unk_2782FB608;
  block[4] = self;
  dispatch_sync(_updateQueue, block);
  v3 = dispatch_semaphore_create(0);
  restartSource = self->_restartSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __22__SCNJitterer_dealloc__block_invoke_2;
  handler[3] = &unk_2782FB608;
  handler[4] = v3;
  dispatch_source_set_cancel_handler(restartSource, handler);
  dispatch_source_cancel(self->_restartSource);
  dispatch_release(self->_restartSource);
  dispatch_semaphore_wait(v3, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v3);
  objc_storeWeak(&self->_delegate, 0);
  v5.receiver = self;
  v5.super_class = SCNJitterer;
  [(SCNJitterer *)&v5 dealloc];
}

void __22__SCNJitterer_dealloc__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 32) == 1)
  {
    dispatch_resume(*(v1 + 48));
  }
}

- (void)delegateWillDie
{
  objc_storeWeak(&self->_delegate, 0);
  if (self->_state <= 1)
  {
    self->_state = 2;
  }

  v3 = _updateQueue;

  dispatch_sync(v3, &__block_literal_global_12);
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    if (enabled)
    {
      self->_enabled = 1;

      [(SCNJitterer *)self restart];
    }

    else
    {
      [(SCNJitterer *)self stopIfNeeded];
      self->_enabled = 0;
    }
  }
}

- (void)update
{
  Weak = objc_loadWeak(&self->_delegate);
  state = self->_state;
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    self->_iteration = 0;
    if (![Weak _canJitter])
    {
      return;
    }

    self->_state = 0;
  }

  [(SCNJitterer *)self jitter];
}

- (void)jitter
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_iteration <= C3DJitteringIterationCount";
  _os_log_fault_impl(&dword_21BEF7000, log, OS_LOG_TYPE_FAULT, "Assertion '%s' failed. invalid iteration count", &v1, 0xCu);
}

@end