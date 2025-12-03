@interface DADeviceObserverWatch
- (DADeviceObserverWatch)init;
- (id)_createDeviceWithNanoDevice:(id)device;
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)_beginObserving;
- (void)_endObserving;
- (void)_nanoRegistryDevicePaired:(id)paired;
- (void)_nanoRegistryDeviceUnpaired:(id)unpaired;
- (void)_updateDevicesWithSerialNumber:(id)number;
- (void)_updateHandlers;
- (void)_waitUntilFirstResponse;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
@end

@implementation DADeviceObserverWatch

- (DADeviceObserverWatch)init
{
  v14.receiver = self;
  v14.super_class = DADeviceObserverWatch;
  v2 = [(DADeviceObserverWatch *)&v14 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.Diagnostics.nanoObservationQueue", 0);
    nanoObservationQueue = v2->_nanoObservationQueue;
    v2->_nanoObservationQueue = v3;

    v5 = dispatch_queue_create("com.apple.Diagnostics.nanoRegistrationQueue", 0);
    nanoRegistrationQueue = v2->_nanoRegistrationQueue;
    v2->_nanoRegistrationQueue = v5;

    v7 = objc_opt_new();
    firstResponseLock = v2->_firstResponseLock;
    v2->_firstResponseLock = v7;

    *&v2->_isObserving = 0;
    v9 = +[NSMutableSet set];
    devices = v2->_devices;
    v2->_devices = v9;

    v11 = +[NSMutableDictionary dictionary];
    handlers = v2->_handlers;
    v2->_handlers = v11;
  }

  return v2;
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  [(DADeviceObserverWatch *)self _updateDevicesWithSerialNumber:0];
  [(DADeviceObserverWatch *)self _waitUntilFirstResponse];
  devices = [(DADeviceObserverWatch *)self devices];
  handlerCopy[2](handlerCopy, devices);
}

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[NSUUID UUID];
  handlers = [(DADeviceObserverWatch *)self handlers];
  objc_sync_enter(handlers);
  v7 = [handlerCopy copy];
  v8 = objc_retainBlock(v7);
  handlers2 = [(DADeviceObserverWatch *)self handlers];
  [handlers2 setObject:v8 forKeyedSubscript:v5];

  [(DADeviceObserverWatch *)self _beginObserving];
  objc_sync_exit(handlers);

  return v5;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  handlers = [(DADeviceObserverWatch *)self handlers];
  objc_sync_enter(handlers);
  handlers2 = [(DADeviceObserverWatch *)self handlers];
  [handlers2 removeObjectForKey:identifierCopy];

  handlers3 = [(DADeviceObserverWatch *)self handlers];
  v7 = [handlers3 count];

  if (!v7)
  {
    [(DADeviceObserverWatch *)self _endObserving];
  }

  objc_sync_exit(handlers);
}

- (void)_waitUntilFirstResponse
{
  firstResponseLock = [(DADeviceObserverWatch *)self firstResponseLock];
  [firstResponseLock lock];

  if (![(DADeviceObserverWatch *)self firstResponseSent])
  {
    do
    {
      firstResponseLock2 = [(DADeviceObserverWatch *)self firstResponseLock];
      [firstResponseLock2 wait];
    }

    while (![(DADeviceObserverWatch *)self firstResponseSent]);
  }

  firstResponseLock3 = [(DADeviceObserverWatch *)self firstResponseLock];
  [firstResponseLock3 unlock];
}

- (void)_beginObserving
{
  if (!self->_isObserving)
  {
    self->_isObserving = 1;
    nanoRegistrationQueue = [(DADeviceObserverWatch *)self nanoRegistrationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B910;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_async(nanoRegistrationQueue, block);
  }

  v4 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B9BC;
  v5[3] = &unk_1001BC580;
  v5[4] = self;
  dispatch_async(v4, v5);
}

- (void)_nanoRegistryDevicePaired:(id)paired
{
  pairedCopy = paired;
  nanoObservationQueue = [(DADeviceObserverWatch *)self nanoObservationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BA7C;
  v7[3] = &unk_1001BC5F8;
  v8 = pairedCopy;
  selfCopy = self;
  v6 = pairedCopy;
  dispatch_async(nanoObservationQueue, v7);
}

- (void)_nanoRegistryDeviceUnpaired:(id)unpaired
{
  unpairedCopy = unpaired;
  nanoObservationQueue = [(DADeviceObserverWatch *)self nanoObservationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BC80;
  v7[3] = &unk_1001BC5F8;
  v8 = unpairedCopy;
  selfCopy = self;
  v6 = unpairedCopy;
  dispatch_async(nanoObservationQueue, v7);
}

- (id)_createDeviceWithNanoDevice:(id)device
{
  deviceCopy = device;
  v4 = NSClassFromString(@"DADeviceWatchProxy");
  if (v4)
  {
    v5 = [[v4 alloc] initWithNanoDevice:deviceCopy];
  }

  else
  {
    v6 = [deviceCopy valueForProperty:NRDevicePropertySerialNumber];
    v5 = [[DADeviceRepresentation alloc] initWithSerialNumber:v6 isLocal:0 attributes:&__NSDictionary0__struct];
  }

  return v5;
}

- (void)_endObserving
{
  if (self->_isObserving)
  {
    block[7] = v2;
    block[8] = v3;
    self->_isObserving = 0;
    firstResponseLock = [(DADeviceObserverWatch *)self firstResponseLock];
    [firstResponseLock lock];

    [(DADeviceObserverWatch *)self setFirstResponseSent:0];
    firstResponseLock2 = [(DADeviceObserverWatch *)self firstResponseLock];
    [firstResponseLock2 unlock];

    nanoRegistrationQueue = [(DADeviceObserverWatch *)self nanoRegistrationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BF54;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_async(nanoRegistrationQueue, block);
  }
}

- (void)_updateDevicesWithSerialNumber:(id)number
{
  nanoObservationQueue = [(DADeviceObserverWatch *)self nanoObservationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C034;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(nanoObservationQueue, block);
}

- (void)_updateHandlers
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  handlers = [(DADeviceObserverWatch *)self handlers];
  v4 = [handlers copy];

  v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v17;
    do
    {
      v8 = 0;
      do
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v16 + 1) + 8 * v8);
        handlers2 = [(DADeviceObserverWatch *)self handlers];
        v11 = [handlers2 objectForKeyedSubscript:v9];

        if (v11)
        {
          devices = [(DADeviceObserverWatch *)self devices];
          (v11)[2](v11, devices);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  firstResponseLock = [(DADeviceObserverWatch *)self firstResponseLock];
  [firstResponseLock lock];

  [(DADeviceObserverWatch *)self setFirstResponseSent:1];
  firstResponseLock2 = [(DADeviceObserverWatch *)self firstResponseLock];
  [firstResponseLock2 signal];

  firstResponseLock3 = [(DADeviceObserverWatch *)self firstResponseLock];
  [firstResponseLock3 unlock];
}

@end