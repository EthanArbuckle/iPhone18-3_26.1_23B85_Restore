@interface AXAuditThrottler
- (NSObject)_target;
- (OS_dispatch_queue)_fireQueue;
- (SEL)_selector;
- (void)_fire;
- (void)_scheduleTimerAfterDelay:(double)delay;
- (void)scheduleNow;
- (void)set_selector:(SEL)set_selector;
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

- (void)_scheduleTimerAfterDelay:(double)delay
{
  _dispatchTimer = [(AXAuditThrottler *)self _dispatchTimer];

  if (_dispatchTimer)
  {
    source = [(AXAuditThrottler *)self _dispatchTimer];
    v6 = dispatch_time(0, (delay * 1000000000.0));
    [(AXAuditThrottler *)self _interval];
    dispatch_source_set_timer(source, v6, 0xFFFFFFFFFFFFFFFFLL, (v7 * 0.1 * 1000000000.0));
  }

  else
  {
    _fireQueue = [(AXAuditThrottler *)self _fireQueue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, _fireQueue);
    [(AXAuditThrottler *)self set_dispatchTimer:v9];

    _dispatchTimer2 = [(AXAuditThrottler *)self _dispatchTimer];
    v11 = dispatch_time(0, (delay * 1000000000.0));
    [(AXAuditThrottler *)self _interval];
    dispatch_source_set_timer(_dispatchTimer2, v11, 0xFFFFFFFFFFFFFFFFLL, (v12 * 0.1 * 1000000000.0));

    _dispatchTimer3 = [(AXAuditThrottler *)self _dispatchTimer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __45__AXAuditThrottler__scheduleTimerAfterDelay___block_invoke;
    handler[3] = &unk_278BE2CD0;
    handler[4] = self;
    dispatch_source_set_event_handler(_dispatchTimer3, handler);

    _dispatchTimer4 = [(AXAuditThrottler *)self _dispatchTimer];
    dispatch_activate(_dispatchTimer4);
  }
}

- (void)_fire
{
  _target = [(AXAuditThrottler *)self _target];
  _selector = [(AXAuditThrottler *)self _selector];
  if (objc_opt_respondsToSelector())
  {
    date = [MEMORY[0x277CBEAA8] date];
    [(AXAuditThrottler *)self set_lastFireTime:date];

    ([_target methodForSelector:_selector])(_target, _selector);
  }

  [(AXAuditThrottler *)self set_pendingFire:0];
}

- (void)scheduleNow
{
  _target = [(AXAuditThrottler *)self _target];
  if (!_target)
  {
    return;
  }

  v20 = _target;
  _target2 = [(AXAuditThrottler *)self _target];
  if (![_target2 isEqual:self])
  {
    _selector = [(AXAuditThrottler *)self _selector];

    if (!_selector)
    {
      return;
    }

    date = [MEMORY[0x277CBEAA8] date];
    _lastFireTime = [(AXAuditThrottler *)self _lastFireTime];
    [date timeIntervalSinceDate:_lastFireTime];
    v9 = v8;

    [(AXAuditThrottler *)self _interval];
    v11 = v10;
    if ([(AXAuditThrottler *)self _alwaysReschedule])
    {
      [(AXAuditThrottler *)self _interval];
      selfCopy2 = self;
    }

    else
    {
      if ([(AXAuditThrottler *)self _pendingFire])
      {
        goto LABEL_18;
      }

      _lastFireTime2 = [(AXAuditThrottler *)self _lastFireTime];
      if (!_lastFireTime2 || (v14 = _lastFireTime2, [(AXAuditThrottler *)self _interval], v16 = v15, v14, v9 >= v16))
      {
        _fireQueue = [(AXAuditThrottler *)self _fireQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __31__AXAuditThrottler_scheduleNow__block_invoke;
        block[3] = &unk_278BE2CD0;
        block[4] = self;
        dispatch_async(_fireQueue, block);

        goto LABEL_18;
      }

      v17 = v11 - v9;
      [(AXAuditThrottler *)self set_pendingFire:1];
      [(AXAuditThrottler *)self _interval];
      if (v17 < 0.0 || v17 > v18)
      {
        [(AXAuditThrottler *)self _interval];
      }

      selfCopy2 = self;
    }

    [(AXAuditThrottler *)selfCopy2 _scheduleTimerAfterDelay:?];
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

- (void)set_selector:(SEL)set_selector
{
  if (set_selector)
  {
    set_selectorCopy = set_selector;
  }

  else
  {
    set_selectorCopy = 0;
  }

  self->__selector = set_selectorCopy;
}

- (NSObject)_target
{
  WeakRetained = objc_loadWeakRetained(&self->__target);

  return WeakRetained;
}

@end