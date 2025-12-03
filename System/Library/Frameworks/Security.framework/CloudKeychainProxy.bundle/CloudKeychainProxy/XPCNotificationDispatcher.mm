@interface XPCNotificationDispatcher
+ (id)dispatcher;
- (XPCNotificationDispatcher)init;
- (void)addListener:(id)listener;
- (void)notification:(const char *)notification;
- (void)removeListener:(id)listener;
@end

@implementation XPCNotificationDispatcher

- (void)removeListener:(id)listener
{
  listenerCopy = listener;
  queue = [(XPCNotificationDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000176C;
  v7[3] = &unk_100018D68;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)addListener:(id)listener
{
  listenerCopy = listener;
  queue = [(XPCNotificationDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001874;
  v7[3] = &unk_100018D68;
  v7[4] = self;
  v8 = listenerCopy;
  v6 = listenerCopy;
  dispatch_sync(queue, v7);
}

- (void)notification:(const char *)notification
{
  listeners = [(XPCNotificationDispatcher *)self listeners];
  [listeners compact];

  listeners2 = [(XPCNotificationDispatcher *)self listeners];
  allObjects = [listeners2 allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000199C;
  v8[3] = &unk_100018850;
  v8[4] = notification;
  [allObjects enumerateObjectsUsingBlock:v8];
}

- (XPCNotificationDispatcher)init
{
  v10.receiver = self;
  v10.super_class = XPCNotificationDispatcher;
  v2 = [(XPCNotificationDispatcher *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_create("XPC Notification Dispatch", 0);
    [(XPCNotificationDispatcher *)v2 setQueue:v3];

    v4 = +[NSPointerArray weakObjectsPointerArray];
    [(XPCNotificationDispatcher *)v2 setListeners:v4];

    objc_initWeak(&location, v2);
    queue = [(XPCNotificationDispatcher *)v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100000F90;
    v7[3] = &unk_100018830;
    objc_copyWeak(&v8, &location);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", queue, v7);

    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }

  return v2;
}

+ (id)dispatcher
{
  if (qword_10001DE20 != -1)
  {
    dispatch_once(&qword_10001DE20, &stru_100018808);
  }

  v3 = qword_10001DE28;

  return v3;
}

@end