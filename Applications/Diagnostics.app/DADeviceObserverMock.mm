@interface DADeviceObserverMock
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DADeviceObserverMock)init;
- (id)_devices;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)_updateHandlers;
- (void)createDeviceWithSerialNumber:(id)number attributes:(id)attributes completion:(id)completion;
- (void)destroyDeviceWithSerialNumber:(id)number completion:(id)completion;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
- (void)getDeviceStateWithSerialNumber:(id)number completion:(id)completion;
- (void)updateDeviceState:(id)state completion:(id)completion;
@end

@implementation DADeviceObserverMock

- (DADeviceObserverMock)init
{
  v10.receiver = self;
  v10.super_class = DADeviceObserverMock;
  v2 = [(DADeviceObserverMock *)&v10 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v5;

    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.diagnostics.mock-device-service"];
    listener = v2->_listener;
    v2->_listener = v7;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)createDeviceWithSerialNumber:(id)number attributes:(id)attributes completion:(id)completion
{
  numberCopy = number;
  attributesCopy = attributes;
  completionCopy = completion;
  devices = [(DADeviceObserverMock *)self devices];
  objc_sync_enter(devices);
  devices2 = [(DADeviceObserverMock *)self devices];
  v12 = [devices2 objectForKeyedSubscript:numberCopy];

  objc_sync_exit(devices);
  v13 = v12;
  if (!v12)
  {
    v13 = [(DADeviceRepresentation *)[DADeviceMock alloc] initWithSerialNumber:numberCopy isLocal:1 attributes:attributesCopy];
    devices3 = [(DADeviceObserverMock *)self devices];
    objc_sync_enter(devices3);
    devices4 = [(DADeviceObserverMock *)self devices];
    [devices4 setObject:v13 forKeyedSubscript:numberCopy];

    objc_sync_exit(devices3);
    [(DADeviceObserverMock *)self _updateHandlers];
  }

  v16 = [NSNumber numberWithBool:v12 == 0];
  completionCopy[2](completionCopy, v16);
}

- (void)getDeviceStateWithSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  devices = [(DADeviceObserverMock *)self devices];
  objc_sync_enter(devices);
  devices2 = [(DADeviceObserverMock *)self devices];
  v9 = [devices2 objectForKeyedSubscript:numberCopy];

  objc_sync_exit(devices);
  state = [v9 state];
  completionCopy[2](completionCopy, state);
}

- (void)updateDeviceState:(id)state completion:(id)completion
{
  stateCopy = state;
  completionCopy = completion;
  devices = [(DADeviceObserverMock *)self devices];
  objc_sync_enter(devices);
  devices2 = [(DADeviceObserverMock *)self devices];
  serialNumber = [stateCopy serialNumber];
  v10 = [devices2 objectForKeyedSubscript:serialNumber];

  objc_sync_exit(devices);
  if (v10)
  {
    state = [v10 state];
    [state updateWithDeviceState:stateCopy];
  }

  v12 = [NSNumber numberWithBool:v10 != 0];
  completionCopy[2](completionCopy, v12);
}

- (void)destroyDeviceWithSerialNumber:(id)number completion:(id)completion
{
  numberCopy = number;
  completionCopy = completion;
  devices = [(DADeviceObserverMock *)self devices];
  objc_sync_enter(devices);
  devices2 = [(DADeviceObserverMock *)self devices];
  v9 = [devices2 objectForKeyedSubscript:numberCopy];

  if (v9)
  {
    devices3 = [(DADeviceObserverMock *)self devices];
    [devices3 removeObjectForKey:numberCopy];

    objc_sync_exit(devices);
    [(DADeviceObserverMock *)self _updateHandlers];
  }

  else
  {
    objc_sync_exit(devices);
  }

  v11 = [NSNumber numberWithBool:v9 != 0];
  completionCopy[2](completionCopy, v11);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [connectionCopy valueForEntitlement:@"com.apple.diagnostics.mock-device-service"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DADeviceObserverMockProtocol];
    v8 = [NSSet setWithObject:objc_opt_class()];
    [v7 setClasses:v8 forSelector:"updateDeviceState:completion:" argumentIndex:0 ofReply:0];

    v9 = [NSSet setWithObject:objc_opt_class()];
    [v7 setClasses:v9 forSelector:"getDeviceStateWithSerialNumber:completion:" argumentIndex:0 ofReply:1];

    [connectionCopy setExportedObject:self];
    [connectionCopy setExportedInterface:v7];
    [connectionCopy setRemoteObjectInterface:0];
    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
  }

  return 1;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSSet set];
  (*(handler + 2))(handlerCopy, v5);
}

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSUUID UUID];
  handlers = [(DADeviceObserverMock *)self handlers];
  objc_sync_enter(handlers);
  v7 = objc_retainBlock(handlerCopy);
  handlers2 = [(DADeviceObserverMock *)self handlers];
  [handlers2 setObject:v7 forKeyedSubscript:v5];

  objc_sync_exit(handlers);
  [(DADeviceObserverMock *)self _updateHandlers];

  return v5;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlers = [(DADeviceObserverMock *)self handlers];
  objc_sync_enter(handlers);
  handlers2 = [(DADeviceObserverMock *)self handlers];
  [handlers2 removeObjectForKey:identifierCopy];

  objc_sync_exit(handlers);
}

- (id)_devices
{
  devices = [(DADeviceObserverMock *)self devices];
  allValues = [devices allValues];
  v4 = [NSSet setWithArray:allValues];

  return v4;
}

- (void)_updateHandlers
{
  _devices = [(DADeviceObserverMock *)self _devices];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  handlers = [(DADeviceObserverMock *)self handlers];
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
        handlers2 = [(DADeviceObserverMock *)self handlers];
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