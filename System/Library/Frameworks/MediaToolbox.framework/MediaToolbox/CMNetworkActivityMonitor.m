@interface CMNetworkActivityMonitor
+ (id)sharedActivityMonitor;
- (CMNetworkActivityMonitor)init;
- (void)beginMonitoring;
- (void)dealloc;
- (void)endMonitoring;
- (void)setCMObserver:(id)a3;
- (void)setNetworkIsActive:(BOOL)a3;
@end

@implementation CMNetworkActivityMonitor

+ (id)sharedActivityMonitor
{
  if (sharedActivityMonitor_onceToken != -1)
  {
    +[CMNetworkActivityMonitor sharedActivityMonitor];
  }

  return sharedActivityMonitor_sharedInstance;
}

CMNetworkActivityMonitor *__49__CMNetworkActivityMonitor_sharedActivityMonitor__block_invoke()
{
  result = objc_alloc_init(CMNetworkActivityMonitor);
  sharedActivityMonitor_sharedInstance = result;
  return result;
}

- (CMNetworkActivityMonitor)init
{
  v4.receiver = self;
  v4.super_class = CMNetworkActivityMonitor;
  v2 = [(CMNetworkActivityMonitor *)&v4 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create("CMNetworkActivityMonitor-instanceQueue", 0);
  }

  return v2;
}

- (void)dealloc
{
  [(CMNetworkActivityMonitor *)self setCMObserver:0];
  dispatch_release(self->_queue);
  v3.receiver = self;
  v3.super_class = CMNetworkActivityMonitor;
  [(CMNetworkActivityMonitor *)&v3 dealloc];
}

- (void)setCMObserver:(id)a3
{
  cmObserver = self->_cmObserver;
  if (cmObserver != a3)
  {
    [(CMNetworkActivityObserver *)cmObserver invalidate];

    self->_cmObserver = a3;
  }
}

- (void)beginMonitoring
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__CMNetworkActivityMonitor_beginMonitoring__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __43__CMNetworkActivityMonitor_beginMonitoring__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMonitoringActiveCount:{objc_msgSend(*(a1 + 32), "monitoringActiveCount") + 1}];
  result = [*(a1 + 32) monitoringActiveCount];
  if (result == 1)
  {
    v3 = *(a1 + 32);
    v4 = [CMNetworkActivityObserver registeredObserverForActivityMonitor:v3];

    return [v3 setCMObserver:v4];
  }

  return result;
}

- (void)endMonitoring
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__CMNetworkActivityMonitor_endMonitoring__block_invoke;
  block[3] = &unk_1E7482608;
  block[4] = self;
  dispatch_sync(queue, block);
}

uint64_t __41__CMNetworkActivityMonitor_endMonitoring__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMonitoringActiveCount:{objc_msgSend(*(a1 + 32), "monitoringActiveCount") - 1}];
  result = [*(a1 + 32) monitoringActiveCount];
  if (!result)
  {
    [objc_msgSend(*(a1 + 32) "cmObserver")];
    v3 = *(a1 + 32);

    return [v3 setCMObserver:0];
  }

  return result;
}

- (void)setNetworkIsActive:(BOOL)a3
{
  queue = self->_queue;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__CMNetworkActivityMonitor_setNetworkIsActive___block_invoke;
  v4[3] = &unk_1E7483B70;
  v5 = a3;
  v4[4] = self;
  dispatch_sync(queue, v4);
}

uint64_t __47__CMNetworkActivityMonitor_setNetworkIsActive___block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  v2 = *(result + 32);
  if (v1 != *(v2 + 16))
  {
    *(v2 + 16) = v1;
    return MEMORY[0x1EEE42640](*(*(result + 32) + 16), 1000);
  }

  return result;
}

@end