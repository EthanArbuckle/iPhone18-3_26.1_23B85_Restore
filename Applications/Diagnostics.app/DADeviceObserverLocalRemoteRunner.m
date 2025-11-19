@interface DADeviceObserverLocalRemoteRunner
- (DADeviceObserverLocalRemoteRunner)init;
- (id)_devices;
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
- (void)_updateHandlers;
- (void)createDeviceNotification:(id)a3;
- (void)destroyDeviceNotification:(id)a3;
- (void)discoverAllDevicesWithCompletionHandler:(id)a3;
- (void)endDiscoveringDevicesWithIdentifier:(id)a3;
@end

@implementation DADeviceObserverLocalRemoteRunner

- (DADeviceObserverLocalRemoteRunner)init
{
  v10.receiver = self;
  v10.super_class = DADeviceObserverLocalRemoteRunner;
  v2 = [(DADeviceObserverLocalRemoteRunner *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v5;

    v7 = +[NSNotificationCenter defaultCenter];
    [v7 addObserver:v2 selector:"createDeviceNotification:" name:@"DARemoteRunnerDeviceCreatedNotification" object:0];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"destroyDeviceNotification:" name:@"DARemoteRunnerDeviceDestroyedNotification" object:0];
  }

  return v2;
}

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  objc_sync_enter(v6);
  v7 = objc_retainBlock(v4);
  v8 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  [v8 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(v6);
  [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];

  return v5;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSSet set];
  (*(a3 + 2))(v4, v5);
}

- (void)endDiscoveringDevicesWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  objc_sync_enter(v4);
  v5 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  [v5 removeObjectForKey:v6];

  objc_sync_exit(v4);
}

- (void)createDeviceNotification:(id)a3
{
  v14 = a3;
  v4 = [v14 object];
  if (v4)
  {
    v5 = v4;
    v6 = [v14 object];
    v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___DADevice];

    if (v7)
    {
      v8 = [v14 object];
      v9 = [DADeviceDecoratorWithUI decorateWithDevice:v8];
      v10 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      objc_sync_enter(v10);
      v11 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      v12 = [v8 state];
      v13 = [v12 serialNumber];
      [v11 setObject:v9 forKeyedSubscript:v13];

      objc_sync_exit(v10);
      [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];
    }
  }
}

- (void)destroyDeviceNotification:(id)a3
{
  v17 = a3;
  v4 = [v17 object];
  if (v4)
  {
    v5 = v4;
    v6 = [v17 object];
    v7 = [v6 conformsToProtocol:&OBJC_PROTOCOL___DADevice];

    if (v7)
    {
      v8 = [v17 object];
      v9 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      objc_sync_enter(v9);
      v10 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      v11 = [v8 state];
      v12 = [v11 serialNumber];
      v13 = [v10 objectForKeyedSubscript:v12];

      if (v13)
      {
        v14 = [(DADeviceObserverLocalRemoteRunner *)self devices];
        v15 = [v8 state];
        v16 = [v15 serialNumber];
        [v14 removeObjectForKey:v16];

        objc_sync_exit(v9);
        [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];
      }

      else
      {
        objc_sync_exit(v9);
      }
    }
  }
}

- (id)_devices
{
  v2 = [(DADeviceObserverLocalRemoteRunner *)self devices];
  v3 = [v2 allValues];
  v4 = [NSSet setWithArray:v3];

  return v4;
}

- (void)_updateHandlers
{
  v3 = [(DADeviceObserverLocalRemoteRunner *)self _devices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  v5 = [v4 copy];

  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        v11 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
        v12 = [v11 objectForKeyedSubscript:v10];

        if (v12)
        {
          (v12)[2](v12, v3);
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

@end