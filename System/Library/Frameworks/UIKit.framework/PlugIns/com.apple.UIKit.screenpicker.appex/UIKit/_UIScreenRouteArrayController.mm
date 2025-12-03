@interface _UIScreenRouteArrayController
- (BOOL)objectAttributeModified:(id)modified newObject:(id)object;
- (_UIScreenRouteArrayController)initWithDelegate:(id)delegate;
- (void)_teardownBlockDidFireWithBackgroundTask:(unint64_t)task;
- (void)armTimer;
- (void)dealloc;
- (void)invalidate;
- (void)scheduleTeardownEndingBackgroundTask:(unint64_t)task;
- (void)selectRoute:(id)route;
- (void)updateDevices;
@end

@implementation _UIScreenRouteArrayController

- (_UIScreenRouteArrayController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v24.receiver = self;
  v24.super_class = _UIScreenRouteArrayController;
  v5 = [(_UIScreenRouteArrayController *)&v24 initWithDelegate:delegateCopy];
  if (v5)
  {
    v6 = dispatch_queue_create("screen route update queue", 0);
    v7 = *(v5 + 5);
    *(v5 + 5) = v6;

    v8 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v5 + 5));
    v9 = *(v5 + 4);
    *(v5 + 4) = v8;

    objc_initWeak(&location, v5);
    v10 = *(v5 + 4);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100001024;
    handler[3] = &unk_100008280;
    v11 = v5;
    v21 = v11;
    objc_copyWeak(&v22, &location);
    dispatch_source_set_event_handler(v10, handler);
    v12 = [NSSortDescriptor sortDescriptorWithKey:@"sortTitle" ascending:1 comparator:&stru_1000082C0];
    v25 = v12;
    v13 = [NSArray arrayWithObjects:&v25 count:1];
    [v11 setSortDescriptors:v13];

    v14 = +[NSNotificationCenter defaultCenter];
    v15 = [[AVOutputDeviceDiscoverySession alloc] initWithDeviceFeatures:2];
    v16 = v11[1];
    v11[1] = v15;

    [v11[1] setDiscoveryMode:2];
    v17 = +[AVOutputContext outputContext];
    v18 = v11[2];
    v11[2] = v17;

    [v14 addObserver:v11 selector:"availableOutputDevicesDidChange:" name:AVOutputDeviceDiscoverySessionAvailableOutputDevicesDidChangeNotification object:v11[1]];
    [v11 armTimer];
    [v14 addObserver:v11 selector:"_applicationWillResignActive:" name:UIApplicationWillResignActiveNotification object:0];
    [v14 addObserver:v11 selector:"_applicationDidBecomeActive:" name:UIApplicationDidBecomeActiveNotification object:0];

    objc_destroyWeak(&v22);
    objc_destroyWeak(&location);
  }

  return v5;
}

- (void)invalidate
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = [UIApp _beginBackgroundTaskWithName:@"discovery invalidation" expirationHandler:0];

  [(_UIScreenRouteArrayController *)self scheduleTeardownEndingBackgroundTask:v4];
}

- (void)_teardownBlockDidFireWithBackgroundTask:(unint64_t)task
{
  v5 = +[NSDate date];
  v6 = [v5 compare:self->_discoveryShutdownDate];

  discoveryShutdownDate = self->_discoveryShutdownDate;
  if (v6 == -1)
  {
    [(NSDate *)discoveryShutdownDate timeIntervalSinceNow];
    v10 = dispatch_time(0, ((v9 + 0.1) * 1000000000.0));
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000012F4;
    v11[3] = &unk_1000082E8;
    v11[4] = self;
    v11[5] = task;
    dispatch_after(v10, &_dispatch_main_q, v11);
  }

  else
  {
    self->_discoveryShutdownDate = 0;

    [(AVOutputDeviceDiscoverySession *)self->_outputDevices setDiscoveryMode:0];
    v8 = UIApp;

    [v8 endBackgroundTask:task];
  }
}

- (void)scheduleTeardownEndingBackgroundTask:(unint64_t)task
{
  v5 = self->_discoveryShutdownDate;
  v6 = [NSDate dateWithTimeIntervalSinceNow:10.0];
  discoveryShutdownDate = self->_discoveryShutdownDate;
  self->_discoveryShutdownDate = v6;

  if (v5)
  {
    [UIApp endBackgroundTask:task];
  }

  else
  {
    v8 = dispatch_time(0, 10100000000);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000013F4;
    v9[3] = &unk_1000082E8;
    v9[4] = self;
    v9[5] = task;
    dispatch_after(v8, &_dispatch_main_q, v9);
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(AVOutputDeviceDiscoverySession *)self->_outputDevices setDiscoveryMode:0];
  dispatch_source_cancel(self->_updateSource);
  v4.receiver = self;
  v4.super_class = _UIScreenRouteArrayController;
  [(_UIScreenRouteArrayController *)&v4 dealloc];
}

- (void)armTimer
{
  updateQueue = self->_updateQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001528;
  block[3] = &unk_100008310;
  block[4] = self;
  dispatch_async(updateQueue, block);
}

- (void)updateDevices
{
  v3 = +[NSMutableArray array];
  outputDevice = [(AVOutputContext *)self->_outputContext outputDevice];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  availableOutputDevices = [(AVOutputDeviceDiscoverySession *)self->_outputDevices availableOutputDevices];
  v6 = [availableOutputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(availableOutputDevices);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        if (outputDevice || ([*(*(&v14 + 1) + 8 * v9) ID], v11 = objc_claimAutoreleasedReturnValue(), v11, v11))
        {
          v12 = [[_UIScreenRoute alloc] initWithDevice:v10];
          if ([outputDevice isEqual:v10])
          {
            [(_UIScreenRoute *)v12 setSelected:1];
          }

          [v3 addObject:v12];
        }

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [availableOutputDevices countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  [(_UIScreenRouteArrayController *)self processUpdate:v3 changedObjects:0];
  +[NSDate timeIntervalSinceReferenceDate];
  self->_lastUpdate = v13;
}

- (BOOL)objectAttributeModified:(id)modified newObject:(id)object
{
  modifiedCopy = modified;
  objectCopy = object;
  sortTitle = [modifiedCopy sortTitle];
  sortTitle2 = [objectCopy sortTitle];
  if ([sortTitle isEqual:sortTitle2])
  {
    isSelected = [modifiedCopy isSelected];
    v10 = isSelected ^ [objectCopy isSelected];
  }

  else
  {
    LOBYTE(v10) = 1;
  }

  return v10;
}

- (void)selectRoute:(id)route
{
  routeCopy = route;
  v5 = [UIApp _beginBackgroundTaskWithName:@"route selection" expirationHandler:0];
  v6 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001968;
  block[3] = &unk_100008360;
  block[4] = self;
  v9 = routeCopy;
  v10 = v5;
  v7 = routeCopy;
  dispatch_async(v6, block);
}

@end