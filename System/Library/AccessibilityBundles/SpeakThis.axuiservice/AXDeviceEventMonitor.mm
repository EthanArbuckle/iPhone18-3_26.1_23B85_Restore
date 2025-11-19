@interface AXDeviceEventMonitor
- (AXDeviceEventMonitor)init;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)enumerateObservers:(id)a3;
- (void)enumerateObserversInQueue:(id)a3;
- (void)notifyObserver:(id)a3;
- (void)removeObserver:(id)a3;
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2708;
  v7[3] = &unk_309A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_287C;
  v7[3] = &unk_309A0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)notifyObserver:(id)a3
{
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 deviceEventMonitorDidReceiveEvent:self];
  }
}

- (void)enumerateObserversInQueue:(id)a3
{
  v4 = a3;
  v5 = [(AXDeviceEventMonitor *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_2A20;
  v7[3] = &unk_309C8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)enumerateObservers:(id)a3
{
  v4 = a3;
  v5 = [(AXDeviceEventMonitor *)self queue];
  dispatch_assert_queue_V2(v5);

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(AXDeviceEventMonitor *)self observers];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        if (v4)
        {
          v4[2](v4, *(*(&v11 + 1) + 8 * v10));
        }

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end