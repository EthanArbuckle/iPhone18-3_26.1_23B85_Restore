@interface XPCNotificationDispatcher
+ (id)dispatcher;
- (XPCNotificationDispatcher)init;
- (void)addListener:(id)a3;
- (void)notification:(const char *)a3;
- (void)removeListener:(id)a3;
@end

@implementation XPCNotificationDispatcher

- (void)removeListener:(id)a3
{
  v4 = a3;
  v5 = [(XPCNotificationDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000176C;
  v7[3] = &unk_100018D68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)addListener:(id)a3
{
  v4 = a3;
  v5 = [(XPCNotificationDispatcher *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100001874;
  v7[3] = &unk_100018D68;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)notification:(const char *)a3
{
  v5 = [(XPCNotificationDispatcher *)self listeners];
  [v5 compact];

  v6 = [(XPCNotificationDispatcher *)self listeners];
  v7 = [v6 allObjects];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10000199C;
  v8[3] = &unk_100018850;
  v8[4] = a3;
  [v7 enumerateObjectsUsingBlock:v8];
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
    v5 = [(XPCNotificationDispatcher *)v2 queue];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100000F90;
    v7[3] = &unk_100018830;
    objc_copyWeak(&v8, &location);
    xpc_set_event_stream_handler("com.apple.notifyd.matching", v5, v7);

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