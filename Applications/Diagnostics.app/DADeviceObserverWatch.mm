@interface DADeviceObserverWatch
- (DADeviceObserverWatch)init;
- (id)_createDeviceWithNanoDevice:(id)a3;
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
- (void)_beginObserving;
- (void)_endObserving;
- (void)_nanoRegistryDevicePaired:(id)a3;
- (void)_nanoRegistryDeviceUnpaired:(id)a3;
- (void)_updateDevicesWithSerialNumber:(id)a3;
- (void)_updateHandlers;
- (void)_waitUntilFirstResponse;
- (void)discoverAllDevicesWithCompletionHandler:(id)a3;
- (void)endDiscoveringDevicesWithIdentifier:(id)a3;
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

- (void)discoverAllDevicesWithCompletionHandler:(id)a3
{
  v4 = a3;
  [(DADeviceObserverWatch *)self _updateDevicesWithSerialNumber:0];
  [(DADeviceObserverWatch *)self _waitUntilFirstResponse];
  v5 = [(DADeviceObserverWatch *)self devices];
  v4[2](v4, v5);
}

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v4 = a3;
  v5 = +[NSUUID UUID];
  v6 = [(DADeviceObserverWatch *)self handlers];
  objc_sync_enter(v6);
  v7 = [v4 copy];
  v8 = objc_retainBlock(v7);
  v9 = [(DADeviceObserverWatch *)self handlers];
  [v9 setObject:v8 forKeyedSubscript:v5];

  [(DADeviceObserverWatch *)self _beginObserving];
  objc_sync_exit(v6);

  return v5;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)a3
{
  v8 = a3;
  v4 = [(DADeviceObserverWatch *)self handlers];
  objc_sync_enter(v4);
  v5 = [(DADeviceObserverWatch *)self handlers];
  [v5 removeObjectForKey:v8];

  v6 = [(DADeviceObserverWatch *)self handlers];
  v7 = [v6 count];

  if (!v7)
  {
    [(DADeviceObserverWatch *)self _endObserving];
  }

  objc_sync_exit(v4);
}

- (void)_waitUntilFirstResponse
{
  v3 = [(DADeviceObserverWatch *)self firstResponseLock];
  [v3 lock];

  if (![(DADeviceObserverWatch *)self firstResponseSent])
  {
    do
    {
      v4 = [(DADeviceObserverWatch *)self firstResponseLock];
      [v4 wait];
    }

    while (![(DADeviceObserverWatch *)self firstResponseSent]);
  }

  v5 = [(DADeviceObserverWatch *)self firstResponseLock];
  [v5 unlock];
}

- (void)_beginObserving
{
  if (!self->_isObserving)
  {
    self->_isObserving = 1;
    v3 = [(DADeviceObserverWatch *)self nanoRegistrationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001B910;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_async(v3, block);
  }

  v4 = dispatch_get_global_queue(21, 0);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10001B9BC;
  v5[3] = &unk_1001BC580;
  v5[4] = self;
  dispatch_async(v4, v5);
}

- (void)_nanoRegistryDevicePaired:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceObserverWatch *)self nanoObservationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BA7C;
  v7[3] = &unk_1001BC5F8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_nanoRegistryDeviceUnpaired:(id)a3
{
  v4 = a3;
  v5 = [(DADeviceObserverWatch *)self nanoObservationQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001BC80;
  v7[3] = &unk_1001BC5F8;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (id)_createDeviceWithNanoDevice:(id)a3
{
  v3 = a3;
  v4 = NSClassFromString(@"DADeviceWatchProxy");
  if (v4)
  {
    v5 = [[v4 alloc] initWithNanoDevice:v3];
  }

  else
  {
    v6 = [v3 valueForProperty:NRDevicePropertySerialNumber];
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
    v5 = [(DADeviceObserverWatch *)self firstResponseLock];
    [v5 lock];

    [(DADeviceObserverWatch *)self setFirstResponseSent:0];
    v6 = [(DADeviceObserverWatch *)self firstResponseLock];
    [v6 unlock];

    v7 = [(DADeviceObserverWatch *)self nanoRegistrationQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10001BF54;
    block[3] = &unk_1001BC580;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (void)_updateDevicesWithSerialNumber:(id)a3
{
  v4 = [(DADeviceObserverWatch *)self nanoObservationQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001C034;
  block[3] = &unk_1001BC580;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)_updateHandlers
{
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = [(DADeviceObserverWatch *)self handlers];
  v4 = [v3 copy];

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
        v10 = [(DADeviceObserverWatch *)self handlers];
        v11 = [v10 objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = [(DADeviceObserverWatch *)self devices];
          (v11)[2](v11, v12);
        }

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v6);
  }

  v13 = [(DADeviceObserverWatch *)self firstResponseLock];
  [v13 lock];

  [(DADeviceObserverWatch *)self setFirstResponseSent:1];
  v14 = [(DADeviceObserverWatch *)self firstResponseLock];
  [v14 signal];

  v15 = [(DADeviceObserverWatch *)self firstResponseLock];
  [v15 unlock];
}

@end