@interface AXAuditThrottler
- (NSObject)_target;
- (OS_dispatch_queue)_fireQueue;
- (SEL)_selector;
- (void)_fire;
- (void)_scheduleTimerAfterDelay:(double)a3;
- (void)scheduleNow;
- (void)set_selector:(SEL)a3;
@end

@implementation AXAuditThrottler

- (OS_dispatch_queue)_fireQueue
{
  fireQueue = self->__fireQueue;
  if (fireQueue)
  {
    v3 = fireQueue;
  }

  else
  {
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
  }

  return v3;
}

- (void)_scheduleTimerAfterDelay:(double)a3
{
  v5 = [(AXAuditThrottler *)self _dispatchTimer];

  if (v5)
  {
    source = [(AXAuditThrottler *)self _dispatchTimer];
    v6 = dispatch_time(0, (a3 * 1000000000.0));
    [(AXAuditThrottler *)self _interval];
    dispatch_source_set_timer(source, v6, 0xFFFFFFFFFFFFFFFFLL, (v7 * 0.1 * 1000000000.0));
  }

  else
  {
    v8 = [(AXAuditThrottler *)self _fireQueue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    [(AXAuditThrottler *)self set_dispatchTimer:v9];

    v10 = [(AXAuditThrottler *)self _dispatchTimer];
    v11 = dispatch_time(0, (a3 * 1000000000.0));
    [(AXAuditThrottler *)self _interval];
    dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, (v12 * 0.1 * 1000000000.0));

    v13 = [(AXAuditThrottler *)self _dispatchTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__AXAuditThrottler__scheduleTimerAfterDelay___block_invoke;
    handler[3] = &unk_278BE2CD0;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);

    v14 = [(AXAuditThrottler *)self _dispatchTimer];
    dispatch_activate(v14);
  }
}

- (void)_fire
{
  v5 = [(AXAuditThrottler *)self _target];
  v3 = [(AXAuditThrottler *)self _selector];
  if (objc_opt_respondsToSelector())
  {
    v4 = [MEMORY[0x277CBEAA8] date];
    [(AXAuditThrottler *)self set_lastFireTime:v4];

    ([v5 methodForSelector:v3])(v5, v3);
  }

  [(AXAuditThrottler *)self set_pendingFire:0];
}

- (void)scheduleNow
{
  v3 = [(AXAuditThrottler *)self _target];
  if (!v3)
  {
    return;
  }

  v20 = v3;
  v4 = [(AXAuditThrottler *)self _target];
  if (![v4 isEqual:self])
  {
    v5 = [(AXAuditThrottler *)self _selector];

    if (!v5)
    {
      return;
    }

    v6 = [MEMORY[0x277CBEAA8] date];
    v7 = [(AXAuditThrottler *)self _lastFireTime];
    [v6 timeIntervalSinceDate:v7];
    v9 = v8;

    [(AXAuditThrottler *)self _interval];
    v11 = v10;
    if ([(AXAuditThrottler *)self _alwaysReschedule])
    {
      [(AXAuditThrottler *)self _interval];
      v12 = self;
    }

    else
    {
      if ([(AXAuditThrottler *)self _pendingFire])
      {
        goto LABEL_18;
      }

      v13 = [(AXAuditThrottler *)self _lastFireTime];
      if (!v13 || (v14 = v13, [(AXAuditThrottler *)self _interval], v16 = v15, v14, v9 >= v16))
      {
        v19 = [(AXAuditThrottler *)self _fireQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__AXAuditThrottler_scheduleNow__block_invoke;
        block[3] = &unk_278BE2CD0;
        block[4] = self;
        dispatch_async(v19, block);

        goto LABEL_18;
      }

      v17 = v11 - v9;
      [(AXAuditThrottler *)self set_pendingFire:1];
      [(AXAuditThrottler *)self _interval];
      if (v17 < 0.0 || v17 > v18)
      {
        [(AXAuditThrottler *)self _interval];
      }

      v12 = self;
    }

    [(AXAuditThrottler *)v12 _scheduleTimerAfterDelay:?];
LABEL_18:

    return;
  }
}

- (SEL)_selector
{
  if (self->__selector)
  {
    return self->__selector;
  }

  else
  {
    return 0;
  }
}

- (void)set_selector:(SEL)a3
{
  if (a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = 0;
  }

  self->__selector = v3;
}

- (NSObject)_target
{
  WeakRetained = objc_loadWeakRetained(&self->__target);

  return WeakRetained;
}

@end