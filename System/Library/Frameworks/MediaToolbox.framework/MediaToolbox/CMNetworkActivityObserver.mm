@interface CMNetworkActivityObserver
+ (id)registeredObserverForActivityMonitor:(id)monitor;
- (id)initForActivityMonitor:(id)monitor;
- (void)_pollWithInterval:(double)interval networkActivityDidCompleteBlock:(id)block;
- (void)dealloc;
- (void)registerObservations;
- (void)unregisterObservations;
@end

@implementation CMNetworkActivityObserver

- (id)initForActivityMonitor:(id)monitor
{
  v7.receiver = self;
  v7.super_class = CMNetworkActivityObserver;
  v4 = [(CMNetworkActivityObserver *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_activityMonitor, monitor);
    v5->_valid = 1;
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_activityMonitor, 0);
  [(CMNetworkActivityObserver *)self invalidate];
  v3.receiver = self;
  v3.super_class = CMNetworkActivityObserver;
  [(CMNetworkActivityObserver *)&v3 dealloc];
}

- (void)unregisterObservations
{
  self->_registered = 0;
  cmActivityToken = self->_cmActivityToken;
  if (cmActivityToken)
  {
    notify_cancel(cmActivityToken);
    self->_cmActivityToken = 0;
  }

  cmActivityPollingToken = self->_cmActivityPollingToken;
  if (cmActivityPollingToken)
  {
    notify_cancel(cmActivityPollingToken);
    self->_cmActivityPollingToken = 0;
  }
}

- (void)_pollWithInterval:(double)interval networkActivityDidCompleteBlock:(id)block
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __79__CMNetworkActivityObserver__pollWithInterval_networkActivityDidCompleteBlock___block_invoke;
  block[3] = &unk_1E7483F00;
  *&block[6] = interval;
  block[4] = self;
  block[5] = block;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __79__CMNetworkActivityObserver__pollWithInterval_networkActivityDidCompleteBlock___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v4 = *(v2 + 16);
  v3 = (v2 + 16);
  if (v4 || !notify_register_check("com.apple.coremedia.network_activity", v3))
  {
    v5 = dispatch_time(0, 500000000);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __79__CMNetworkActivityObserver__pollWithInterval_networkActivityDidCompleteBlock___block_invoke_2;
    block[3] = &unk_1E7483F00;
    v9 = *(a1 + 48);
    v8 = *(a1 + 32);
    dispatch_after(v5, MEMORY[0x1E69E96A0], block);
  }

  else
  {
    v6 = *(a1 + 32);

    [v6 unregisterObservations];
  }
}

uint64_t __79__CMNetworkActivityObserver__pollWithInterval_networkActivityDidCompleteBlock___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) activityMonitor])
  {
    check = 0;
    notify_check(*(*(a1 + 32) + 16), &check);
    v2 = *(a1 + 32);
    if (check)
    {
      return [v2 _pollWithInterval:*(a1 + 40) networkActivityDidCompleteBlock:*(a1 + 48)];
    }

    else
    {
      notify_cancel(v2[4]);
      *(*(a1 + 32) + 16) = 0;
      return (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v4 = *(a1 + 32);

    return [v4 unregisterObservations];
  }
}

- (void)registerObservations
{
  if (!self->_registered)
  {
    valid = self->_valid;
    if (valid)
    {
      handler[5] = v2;
      handler[6] = v3;
      self->_registered = valid;
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __49__CMNetworkActivityObserver_registerObservations__block_invoke;
      handler[3] = &unk_1E7479BE0;
      handler[4] = self;
      notify_register_dispatch("com.apple.coremedia.network_activity", &self->_cmActivityToken, MEMORY[0x1E69E96A0], handler);
    }
  }
}

uint64_t __49__CMNetworkActivityObserver_registerObservations__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) activityMonitor];
  if (v2)
  {
    v3 = v2;
    [v2 setNetworkIsActive:1];
    [*(a1 + 32) unregisterObservations];
    v4 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __49__CMNetworkActivityObserver_registerObservations__block_invoke_2;
    v7[3] = &unk_1E7483A30;
    v7[4] = v3;
    v7[5] = v4;
    return [v4 _pollWithInterval:v7 networkActivityDidCompleteBlock:0.5];
  }

  else
  {
    v6 = *(a1 + 32);

    return [v6 unregisterObservations];
  }
}

uint64_t __49__CMNetworkActivityObserver_registerObservations__block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) setNetworkIsActive:0];
  v2 = *(a1 + 40);

  return [v2 registerObservations];
}

+ (id)registeredObserverForActivityMonitor:(id)monitor
{
  v3 = [objc_alloc(objc_opt_class()) initForActivityMonitor:monitor];
  [v3 registerObservations];

  return v3;
}

@end