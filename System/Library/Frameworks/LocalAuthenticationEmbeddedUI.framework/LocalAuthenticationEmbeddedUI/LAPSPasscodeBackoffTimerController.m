@interface LAPSPasscodeBackoffTimerController
- (LAPSPasscodeBackoffTimerController)initWithTimeout:(int64_t)a3 updateHandler:(id)a4 completionHandler:(id)a5;
- (void)_startTimerWithTimeout:(int64_t)a3;
- (void)start;
@end

@implementation LAPSPasscodeBackoffTimerController

- (LAPSPasscodeBackoffTimerController)initWithTimeout:(int64_t)a3 updateHandler:(id)a4 completionHandler:(id)a5
{
  v8 = a4;
  v9 = a5;
  v17.receiver = self;
  v17.super_class = LAPSPasscodeBackoffTimerController;
  v10 = [(LAPSPasscodeBackoffTimerController *)&v17 init];
  v11 = v10;
  if (v10)
  {
    v10->_timeout = a3;
    v12 = MEMORY[0x23EE74B30](v8);
    updateHandler = v11->_updateHandler;
    v11->_updateHandler = v12;

    v14 = MEMORY[0x23EE74B30](v9);
    completionHandler = v11->_completionHandler;
    v11->_completionHandler = v14;
  }

  return v11;
}

- (void)start
{
  timer = self->_timer;
  if (!timer || dispatch_source_testcancel(timer))
  {
    timeout = self->_timeout;

    [(LAPSPasscodeBackoffTimerController *)self _startTimerWithTimeout:timeout];
  }
}

- (void)_startTimerWithTimeout:(int64_t)a3
{
  if (a3 <= 0)
  {
    dispatch_source_cancel(self->_timer);
    timer = self->_timer;
    self->_timer = 0;

    v12 = *(self->_completionHandler + 2);

    v12();
  }

  else
  {
    updateHandler = self->_updateHandler;
    (*(self->_updateHandler + 2))();
    if (a3 % 0x3CuLL)
    {
      v6 = (a3 % 0x3CuLL);
    }

    else
    {
      v6 = 60.0;
    }

    v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, MEMORY[0x277D85CD0]);
    v8 = self->_timer;
    self->_timer = v7;

    v9 = dispatch_time(0, (v6 * 1000000000.0));
    dispatch_source_set_timer(self->_timer, v9, 0xFFFFFFFFFFFFFFFFLL, 0);
    objc_initWeak(&location, self);
    v10 = self->_timer;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __61__LAPSPasscodeBackoffTimerController__startTimerWithTimeout___block_invoke;
    v13[3] = &unk_278A66028;
    objc_copyWeak(v14, &location);
    v14[1] = a3;
    v14[2] = *&v6;
    dispatch_source_set_event_handler(v10, v13);
    dispatch_activate(self->_timer);
    objc_destroyWeak(v14);
    objc_destroyWeak(&location);
  }
}

void __61__LAPSPasscodeBackoffTimerController__startTimerWithTimeout___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _startTimerWithTimeout:{fmax(*(a1 + 40) - *(a1 + 48), 0.0)}];
    WeakRetained = v3;
  }
}

@end