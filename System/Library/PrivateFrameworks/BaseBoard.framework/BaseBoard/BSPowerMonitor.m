@interface BSPowerMonitor
+ (id)sharedInstance;
- (BSPowerMonitor)init;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)removeObserver:(id)a3;
@end

@implementation BSPowerMonitor

+ (id)sharedInstance
{
  if (qword_1ED44FE58 != -1)
  {
    dispatch_once(&qword_1ED44FE58, &__block_literal_global_18);
  }

  v3 = _MergedGlobals_17;

  return v3;
}

void __32__BSPowerMonitor_sharedInstance__block_invoke()
{
  v0 = [BSPowerMonitor alloc];
  if (v0)
  {
    v10.receiver = v0;
    v10.super_class = BSPowerMonitor;
    v1 = objc_msgSendSuper2(&v10, sel_init);
    if (v1)
    {
      v2 = BSDispatchQueueCreateWithQualityOfService("com.apple.baseboard.powermonitor", 0, QOS_CLASS_USER_INITIATED, 0);
      v3 = *(v1 + 4);
      *(v1 + 4) = v2;

      *(v1 + 10) = 0;
      v4 = [MEMORY[0x1E696AC70] hashTableWithOptions:517];
      v5 = *(v1 + 6);
      *(v1 + 6) = v4;

      v6 = [BSZeroingWeakReference referenceWithObject:v1];
      v7 = *(v1 + 3);
      *(v1 + 3) = v6;

      v8 = IORegisterForSystemPower(*(v1 + 3), v1 + 1, _BSPowerChanged, v1 + 4);
      *(v1 + 14) = v8;
      if (v8)
      {
        IONotificationPortSetDispatchQueue(*(v1 + 1), *(v1 + 4));
      }
    }
  }

  else
  {
    v1 = 0;
  }

  v9 = _MergedGlobals_17;
  _MergedGlobals_17 = v1;
}

- (BSPowerMonitor)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"BSPowerMonitor.m" lineNumber:153 description:@"Please use the shared instance."];

  return 0;
}

- (void)dealloc
{
  if (self->_rootDomainConnect)
  {
    IODeregisterForSystemPower(&self->_notifier);
    IONotificationPortDestroy(self->_notificationPort);
    IOServiceClose(self->_rootDomainConnect);
  }

  v3 = self->_weakSelfWrapper;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__BSPowerMonitor_dealloc__block_invoke;
  block[3] = &unk_1E72CADE8;
  v8 = v3;
  v5 = v3;
  dispatch_async(queue, block);

  v6.receiver = self;
  v6.super_class = BSPowerMonitor;
  [(BSPowerMonitor *)&v6 dealloc];
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_lock_observers addObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    v4 = v5;
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_lock_observers removeObject:v5];
    os_unfair_lock_unlock(&self->_observersLock);
    v4 = v5;
  }
}

@end