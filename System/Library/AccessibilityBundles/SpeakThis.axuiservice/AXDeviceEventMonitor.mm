@interface AXDeviceEventMonitor
- (AXDeviceEventMonitor)init;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)enumerateObservers:(id)observers;
- (void)enumerateObserversInQueue:(id)queue;
- (void)notifyObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation AXDeviceEventMonitor

- (AXDeviceEventMonitor)init
{
  v6.receiver = self;
  v6.super_class = AXDeviceEventMonitor;
  v2 = [(AXDeviceEventMonitor *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    [(AXDeviceEventMonitor *)v2 setObservers:v3];

    v4 = dispatch_queue_create("AXDeviceEventMonitor queue", 0);
    [(AXDeviceEventMonitor *)v2 setQueue:v4];
  }

  return v2;
}

- (void)dealloc
{
  [(AXDeviceEventMonitor *)self _stopMonitoring];
  v3.receiver = self;
  v3.super_class = AXDeviceEventMonitor;
  [(AXDeviceEventMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  queue = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2708;
  v7[3] = &unk_309A0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  queue = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_287C;
  v7[3] = &unk_309A0;
  v8 = observerCopy;
  selfCopy = self;
  v6 = observerCopy;
  dispatch_sync(queue, v7);
}

- (void)notifyObserver:(id)observer
{
  observerCopy = observer;
  if (objc_opt_respondsToSelector())
  {
    [observerCopy deviceEventMonitorDidReceiveEvent:self];
  }
}

- (void)enumerateObserversInQueue:(id)queue
{
  queueCopy = queue;
  queue = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2A20;
  v7[3] = &unk_309C8;
  v7[4] = self;
  v8 = queueCopy;
  v6 = queueCopy;
  dispatch_async(queue, v7);
}

- (void)enumerateObservers:(id)observers
{
  observersCopy = observers;
  queue = [(AXDeviceEventMonitor *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  observers = [(AXDeviceEventMonitor *)self observers];
  v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(observers);
        }

        if (observersCopy)
        {
          observersCopy[2](observersCopy, *(*(&v11 + 1) + 8 * v10));
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end