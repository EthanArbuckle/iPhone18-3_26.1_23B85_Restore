@interface DADeviceObserverLocalRemoteRunner
- (DADeviceObserverLocalRemoteRunner)init;
- (id)_devices;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)_updateHandlers;
- (void)createDeviceNotification:(id)notification;
- (void)destroyDeviceNotification:(id)notification;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
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

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSUUID UUID];
  handlers = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  objc_sync_enter(handlers);
  v7 = objc_retainBlock(handlerCopy);
  handlers2 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  [handlers2 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(handlers);
  [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];

  return v5;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSSet set];
  (*(handler + 2))(handlerCopy, v5);
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlers = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  objc_sync_enter(handlers);
  handlers2 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  [handlers2 removeObjectForKey:identifierCopy];

  objc_sync_exit(handlers);
}

- (void)createDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    v5 = object;
    object2 = [notificationCopy object];
    v7 = [object2 conformsToProtocol:&OBJC_PROTOCOL___DADevice];

    if (v7)
    {
      object3 = [notificationCopy object];
      v9 = [DADeviceDecoratorWithUI decorateWithDevice:object3];
      devices = [(DADeviceObserverLocalRemoteRunner *)self devices];
      objc_sync_enter(devices);
      devices2 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      state = [object3 state];
      serialNumber = [state serialNumber];
      [devices2 setObject:v9 forKeyedSubscript:serialNumber];

      objc_sync_exit(devices);
      [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];
    }
  }
}

- (void)destroyDeviceNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    v5 = object;
    object2 = [notificationCopy object];
    v7 = [object2 conformsToProtocol:&OBJC_PROTOCOL___DADevice];

    if (v7)
    {
      object3 = [notificationCopy object];
      devices = [(DADeviceObserverLocalRemoteRunner *)self devices];
      objc_sync_enter(devices);
      devices2 = [(DADeviceObserverLocalRemoteRunner *)self devices];
      state = [object3 state];
      serialNumber = [state serialNumber];
      v13 = [devices2 objectForKeyedSubscript:serialNumber];

      if (v13)
      {
        devices3 = [(DADeviceObserverLocalRemoteRunner *)self devices];
        state2 = [object3 state];
        serialNumber2 = [state2 serialNumber];
        [devices3 removeObjectForKey:serialNumber2];

        objc_sync_exit(devices);
        [(DADeviceObserverLocalRemoteRunner *)self _updateHandlers];
      }

      else
      {
        objc_sync_exit(devices);
      }
    }
  }
}

- (id)_devices
{
  devices = [(DADeviceObserverLocalRemoteRunner *)self devices];
  allValues = [devices allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (void)_updateHandlers
{
  _devices = [(DADeviceObserverLocalRemoteRunner *)self _devices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  handlers = [(DADeviceObserverLocalRemoteRunner *)self handlers];
  v5 = [handlers copy];

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
        handlers2 = [(DADeviceObserverLocalRemoteRunner *)self handlers];
        v12 = [handlers2 objectForKeyedSubscript:v10];

        if (v12)
        {
          (v12)[2](v12, _devices);
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